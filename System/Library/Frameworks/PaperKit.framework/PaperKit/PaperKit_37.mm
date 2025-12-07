void Array<A>.applyFrames(_:lineIndex:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = a3 & 0xFFFFFFFFFFFFFF8;
    if (a3 >> 62)
    {
      goto LABEL_16;
    }

    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (1)
    {
      v7 = 0;
      v8 = a2;
      v9 = (a1 + 48);
      while (v3 != v7)
      {
        if (v6 == v7)
        {
          return;
        }

        v14 = *v9;
        v15 = *(v9 - 1);
        if ((a3 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1DA6CE0C0](v7, a3);
        }

        else
        {
          if (v7 >= *(v5 + 16))
          {
            goto LABEL_15;
          }
        }

        ++v7;
        *(v10 + 48) = v15;
        *(v10 + 64) = v14;
        *(v10 + 80) = v8;

        v9 += 2;
        if (v3 == v7)
        {
          return;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      v11 = a1;
      v12 = a2;
      v13 = __CocoaSet.count.getter();
      a2 = v12;
      v6 = v13;
      a1 = v11;
    }
  }
}

unint64_t _ss10ArraySliceV12arrayLiteralAByxGxd_tcfC8PaperKit13ReflowElementC_Tt0g5(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = __CocoaSet.count.getter();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC8PaperKit20AnyCanvasElementViewC_Tt1g5();
  specialized Array._copyContents(initializing:)(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void ReflowTextLine.addWithSpacingAdjustment(_:textScalePercentage:spacingAdjustment:maxWidth:previousLine:adjustment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v10 = v6;
  v446 = a5;
  v449 = a2;
  v15 = *v10;
  *&v16 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR));
  *&v17 = COERCE_DOUBLE(swift_initStackObject());
  v466 = xmmword_1D405CEB0;
  *(v17 + 16) = xmmword_1D405CEB0;
  *(v17 + 32) = a1;
  *&v467 = v15;
  v448 = v15;

  v445 = a1;

  specialized Array.append<A>(contentsOf:)(v17);
  v18 = v15;
  v19 = v15 >> 62;
  if (v15 >> 62)
  {
    goto LABEL_312;
  }

  v20 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  *&v21 = COERCE_DOUBLE(&v467);
  v461 = v10;
  if (*&v20 != 0.0)
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      goto LABEL_313;
    }

    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v17 = *(v18 + 32);

      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_315;
  }

  v10 = *a3;
  outlined init with copy of ReflowSpacingAdjustment(a3, &v467);
LABEL_16:
  v17 = *(v461 + 8);
  if (*&v17 != 0.0)
  {
    v7 = v17 & 0xFFFFFFFFFFFFFF8;
    if (v17 >> 62)
    {
LABEL_315:
      v25 = __CocoaSet.count.getter();
      if (v25)
      {
LABEL_19:
        v26 = __OFSUB__(v25, 1);
        v27 = v25 - 1;
        if (v26)
        {
          goto LABEL_537;
        }

        if ((v17 & 0xC000000000000001) != 0)
        {
          goto LABEL_538;
        }

        if ((v27 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v27 < *(v7 + 16))
        {
          v17 = *(v17 + 8 * v27 + 32);
          goto LABEL_24;
        }

        __break(1u);
LABEL_541:
        __break(1u);
LABEL_542:
        __break(1u);
LABEL_543:
        __break(1u);
LABEL_544:
        __break(1u);
LABEL_545:
        __break(1u);
        goto LABEL_546;
      }
    }

    else
    {
      v25 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v25)
      {
        goto LABEL_19;
      }
    }
  }

  outlined destroy of ReflowSpacingAdjustment(a3);
  while (1)
  {
    if (*(a3 + 56))
    {
      goto LABEL_329;
    }

    v249 = *(a3 + 48);
    v250 = *(*a3 + 120);
    if (v249 != v250)
    {
      break;
    }

    a6 = *(a3 + 32);
    v9 = *(a3 + 16);
    if (a6 >= v9)
    {
      break;
    }

    v251 = specialized Collection<>.firstIndex(of:)(v10, v18);
    if (v252)
    {
      goto LABEL_587;
    }

    v253 = *(a3 + 8);
    v7 = v251 + v253;
    if (__OFADD__(v251, v253))
    {
      goto LABEL_553;
    }

    *&v465 = a4;
    v459 = v16;
    if (v7 < 0)
    {
      goto LABEL_554;
    }

    specialized Array._checkIndex(_:)(0, v18);
    specialized Array._checkIndex(_:)(v7, v18);
    specialized _ArrayBuffer.subscript.getter(0, v7, v18);
    v17 = v254;
    v256 = v255;
    v21 = v257;
    v16 = v258;
    v260 = specialized _SliceBuffer.requestNativeBuffer()(v254, v259, v255, v257, v258);
    if (!v260)
    {
      specialized _copyCollectionToContiguousArray<A>(_:)(v17, v256, v21, v16, v261);
    }

    a4 = v260;
    swift_unknownObjectRelease();
    if (*&v19 == 0.0)
    {
      if (v7 < *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_393;
      }
    }

    else if (v7 < __CocoaSet.count.getter())
    {
LABEL_393:
      if (v20 < v7)
      {
        goto LABEL_566;
      }

      specialized Array._checkIndex(_:)(v20, v18);
      specialized _ArrayBuffer.subscript.getter(v7, v20, v18);
      v17 = v301;
      v303 = v302;
      v305 = v304;
      v307 = v306;

      v308 = swift_unknownObjectRetain();
      v10 = specialized _SliceBuffer.requestNativeBuffer()(v308, v309, v303, v305, v307);
      swift_unknownObjectRelease();
      if (!v10)
      {
        specialized _copyCollectionToContiguousArray<A>(_:)(v17, v303, v305, v307, v310);
        v10 = v311;
      }

      *&v27 = COERCE_DOUBLE(swift_unknownObjectRelease());
      goto LABEL_397;
    }

    *&v27 = COERCE_DOUBLE();
    v10 = MEMORY[0x1E69E7CC0];
LABEL_397:
    v21 = v10 & 0xFFFFFFFFFFFFFF8;
    if (v10 >> 62)
    {
      goto LABEL_555;
    }

    v16 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_399:
    *&v20 = 0.0;
    v19 = v10 & 0xC000000000000001;
    while (v16 != v20)
    {
      if (*&v19 == 0.0)
      {
        if (v20 >= *(v21 + 16))
        {
          goto LABEL_534;
        }

        v18 = *(v10 + 8 * v20 + 32);
        *&v312 = COERCE_DOUBLE();
      }

      else
      {
        *&v312 = COERCE_DOUBLE(MEMORY[0x1DA6CE0C0](v20, v10));
        v18 = v312;
      }

      *&v17 = COERCE_DOUBLE((*(*v18 + 144))(v312));
      *&v27 = COERCE_DOUBLE();
      if ((v17 & 1) == 0)
      {
        goto LABEL_410;
      }

      v26 = __OFADD__(v20++, 1);
      if (v26)
      {
        goto LABEL_535;
      }
    }

    v20 = v16;
LABEL_410:
    if (v16 < v20)
    {
      __break(1u);
LABEL_557:
      __break(1u);
LABEL_558:
      __break(1u);
      goto LABEL_559;
    }

    specialized Array._checkIndex(_:)(v20, v10);
    specialized Array._checkIndex(_:)(v16, v10);
    specialized _ArrayBuffer.subscript.getter(v20, v16, v10);
    v17 = v313;
    v315 = v314;
    v317 = v316;
    v319 = v318;

    v320 = swift_unknownObjectRetain();
    v322 = specialized _SliceBuffer.requestNativeBuffer()(v320, v321, v315, v317, v319);
    swift_unknownObjectRelease();
    if (v322)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      specialized _copyCollectionToContiguousArray<A>(_:)(v17, v315, v317, v319, v323);

      swift_unknownObjectRelease();
    }

    v21 = v459;
    v325 = v461;
    v20 = *(v461 + 160);
    v8 = *(v461 + 40);
    v326 = *(v461 + 48);
    v327 = *(v461 + 56);
    v328 = *(v461 + 64);
    v324.n128_f64[0] = v8;
    specialized static ReflowTextLine.layoutTextAdjustingBackwards(_:textScalePercentage:spacingAdjustment:lineIndex:baseline:previousLine:)(a4, v449, a3, v20, v465, v324, v326, v327, v328);

    a3 = v448;
    if (specialized Array._getCount()(v448) < v7)
    {
      *&a3 = COERCE_DOUBLE(swift_allocObject());
      *(a3 + 16) = v466;
      *(a3 + 32) = v445;

      goto LABEL_510;
    }

    v329 = specialized Array._getCount()(a3);
    if (v329 < v7)
    {
      goto LABEL_567;
    }

    v330 = v329;
    specialized Array._checkIndex(_:)(v7, a3);
    specialized Array._checkIndex(_:)(v330, a3);
    specialized _ArrayBuffer.subscript.getter(v7, v330, a3);
    v332 = v331;
    v334 = v333;
    v336 = v335;
    v338 = v337;
    inited = swift_initStackObject();
    *(inited + 16) = v466;
    *(inited + 32) = v445;
    *&v467 = v332;
    *(&v467 + 1) = v334;
    *&v468 = v336;
    *(&v468 + 1) = v338;

    *&v18 = COERCE_DOUBLE(&v467);
    specialized ArraySlice.append<A>(contentsOf:)(inited, v340);
    v21 = *(&v467 + 1);
    v10 = v467;
    v7 = *(&v468 + 1);
    v17 = *&v468;
    v16 = *(&v468 + 1) >> 1;
    if (v468 == *(&v468 + 1) >> 1)
    {
      a3 = *&v468;
LABEL_419:
      v153 = v16 < a3;
      v16 = a3;
      if (v153)
      {
        __break(1u);
        goto LABEL_422;
      }

LABEL_506:
      if (v16 >= v17)
      {
        v405 = swift_unknownObjectRetain();
        *&a3 = COERCE_DOUBLE(specialized _SliceBuffer.requestNativeBuffer()(v405, v406, v21, v16, v7));
        swift_unknownObjectRelease();
        if (*&a3 == 0.0)
        {
          specialized _copyCollectionToContiguousArray<A>(_:)(v10, v21, v16, v7, v407);
          a3 = v408;
        }

        swift_unknownObjectRelease();
        v325 = v461;
LABEL_510:
        if (!specialized Array._getCount()(a3))
        {
          goto LABEL_524;
        }

        v409 = vabdd_f64(v9, a6);
        v17 = a3 & 0xC000000000000001;
        specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (a3 & 0xC000000000000001) == 0, a3);
        *&v464 = v326;
        v463 = v327;
        v462 = v328;
        v410 = v8;
        if ((a3 & 0xC000000000000001) != 0)
        {
          v411 = MEMORY[0x1DA6CE0C0](0, a3);
        }

        else
        {
        }

        v412 = v411[2];
        v413 = v411[3];
        v414 = v411[4];
        v415 = v411[5];

        v490.origin.x = v412;
        v490.origin.y = v413;
        v490.size.width = v414;
        v490.size.height = v415;
        v416 = v409 / (CGRectGetMinX(v490) - v9);
        if (v416 >= 0.0)
        {
          v417 = fmin(v416, 1.0);
          if (*&v17 == 0.0)
          {
            goto LABEL_517;
          }

LABEL_515:
          v418 = MEMORY[0x1DA6CE0C0](0, a3);
        }

        else
        {
          v417 = 0.0;
          if (*&v17 != 0.0)
          {
            goto LABEL_515;
          }

LABEL_517:
        }

        v8 = *(v418 + 16);
        v419 = *(v418 + 24);
        v420 = *(v418 + 32);
        v421 = *(v418 + 40);

        v491.origin.x = v8;
        v491.origin.y = v419;
        v491.size.width = v420;
        v491.size.height = v421;
        MinX = CGRectGetMinX(v491);
        v423 = MinX + v417 * (a6 + 15.0 - MinX);
        if (v423 < 0.0)
        {
          v423 = 0.0;
        }

        v424 = v446 - *(v325 + 32);
        if (v423 <= v424)
        {
          v425 = specialized static ReflowTextLine.layout(_:textScalePercentage:span:lineIndex:baseline:hardHeadIndent:softHeadIndent:canCompress:canOverflow:isWholeLine:isReversed:)(a3, v449, v20, 1, 1, 1, 0, v423, v424, v410, *&v464, v463, v462, 0.0, 0.0);
          v427 = specialized Array._getCount()(v426);

          if (v427)
          {

            goto LABEL_329;
          }

          specialized Array.append(_:)(v428);
          Array<A>.applyFrames(_:lineIndex:)(v425, v20, a3);

          goto LABEL_524;
        }

        __break(1u);
LABEL_565:
        __break(1u);
LABEL_566:
        __break(1u);
LABEL_567:
        __break(1u);
      }

      __break(1u);
LABEL_569:
      __break(1u);
LABEL_570:
      v399 = MEMORY[0x1DA6CE0C0](0, v20);
LABEL_494:
      a6 = *(v399 + 16);
      v9 = *(v399 + 24);
      v48 = *(v399 + 32);
      v400 = *(v399 + 40);

      v489.origin.x = a6;
      v489.origin.y = v9;
      v489.size.width = v48;
      v489.size.height = v400;
      v401 = CGRectGetMinX(v489);
      if (v401 <= v437)
      {
        v401 = v437;
      }

      if (v401 <= v8)
      {
        v402 = specialized static ReflowTextLine.layout(_:textScalePercentage:span:lineIndex:baseline:hardHeadIndent:softHeadIndent:canCompress:canOverflow:isWholeLine:isReversed:)(v20, v449, v16, 1, 1, 0, 0, v401, v8, v441, v440, v439, v438, 0.0, 0.0);
        v404 = specialized Array._getCount()(v403);

        if (v404)
        {
          goto LABEL_296;
        }

        specialized Array.append(_:)(v429);
        Array<A>.applyFrames(_:lineIndex:)(v402, v16, v20);

        goto LABEL_524;
      }

      __break(1u);
LABEL_572:
      __break(1u);
LABEL_573:
      __break(1u);
      goto LABEL_574;
    }

    if (v468 <= *(&v468 + 1) >> 1)
    {
      a4 = *(&v468 + 1) >> 1;
    }

    else
    {
      a4 = *&v468;
    }

    a3 = *&v468;
    while (a4 != a3)
    {
      v18 = *(v21 + 8 * a3);
      *&v27 = COERCE_DOUBLE((*(*v18 + 144))());
      if ((v27 & 1) == 0)
      {
        goto LABEL_419;
      }

      if (v16 == ++a3)
      {
        goto LABEL_506;
      }
    }

LABEL_536:
    __break(1u);
LABEL_537:
    __break(1u);
LABEL_538:
    *&v17 = COERCE_DOUBLE(MEMORY[0x1DA6CE0C0](v27, v17));
    swift_unknownObjectRelease();
LABEL_24:
    outlined destroy of ReflowSpacingAdjustment(a3);
    if (v17 == v10 && *(a3 + 8) == 1)
    {

      v29 = v448;
      v19 = a4;
      v18 = v448 & 0xFFFFFFFFFFFFFF8;
      if (v448 >> 62)
      {
        goto LABEL_562;
      }

      v17 = *((v448 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_28:
      *&v20 = 0.0;
      a4 = v29 & 0xC000000000000001;
      v444 = v29 & 0xC000000000000001;
      while (2)
      {
        if (v17 == v20)
        {
          *(v21 + 43) = 0u;
          v468 = 0u;
          v469 = 0u;
          v467 = 0u;
          ReflowTextLine.add(_:textScalePercentage:spacingAdjustment:maxWidth:previousLine:adjustment:)(v445, v449, &v467, v19, v446, a6);
          return;
        }

        v7 = v29 + 8 * v20;
        if (*&a4 == 0.0)
        {
          if (v20 >= *(v18 + 16))
          {
            goto LABEL_311;
          }

          if (*(v7 + 32) != v10)
          {
            goto LABEL_33;
          }

LABEL_38:
          v32 = *(a3 + 16);
          v440 = *(a3 + 32);
          if (v32 <= v440 && ((*(*v445 + 144))(v28) & 1) == 0)
          {
            return;
          }

          v17 = v448;
          specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v20, a4 == 0, v448);
          v438 = v32;
          if (*&a4 == 0.0)
          {
          }

          else
          {
            v33 = MEMORY[0x1DA6CE0C0](v20, v17);
          }

          v8 = *(v33 + 16);
          a6 = *(v33 + 24);
          v9 = *(v33 + 32);
          v34 = *(v33 + 40);

          v470.origin.x = v8;
          v470.origin.y = a6;
          v470.size.width = v9;
          v470.size.height = v34;
          MaxX = CGRectGetMaxX(v470);
          v7 = v20 + 1;
          v36 = __OFADD__(v20, 1);
          LODWORD(v437) = v36;
          if (MaxX > v440)
          {
            if (!v36)
            {
              v37 = v448;
              specialized Array._checkIndex(_:)(0, v448);
              specialized Array._checkIndex(_:)(v20 + 1, v37);
              specialized _ArrayBuffer.subscript.getter(0, v20 + 1, v37);
              v39 = v38;
              v41 = v40;
              v43 = v42;
              v21 = v44;
              v46 = specialized _SliceBuffer.requestNativeBuffer()(v38, v45, v40, v42, v44);
              v48 = v438;
              if (!v46)
              {
                specialized _copyCollectionToContiguousArray<A>(_:)(v39, v41, v43, v21, v47);
              }

              v17 = v46;
              swift_unknownObjectRelease();
              v49.n128_u64[0] = *(v461 + 40);
              v50 = *(v461 + 48);
              v51 = *(v461 + 56);
              v52 = *(v461 + 64);
              v463 = *(v461 + 160);
              v436 = v49.n128_f64[0];
              v435 = v50;
              v434 = v51;
              v433 = v52;
              specialized static ReflowTextLine.layoutTextAdjustingBackwards(_:textScalePercentage:spacingAdjustment:lineIndex:baseline:previousLine:)(v17, v449, a3, *&v463, v19, v49, v50, v51, v52);

              *&a3 = 0.0;
              goto LABEL_167;
            }

            __break(1u);
LABEL_581:
            __break(1u);
            goto LABEL_582;
          }

          v439 = *&v18;
          if (v36)
          {
            goto LABEL_581;
          }

          v53 = v448;
          specialized Array._checkIndex(_:)(0, v448);
          specialized Array._checkIndex(_:)(v20 + 1, v53);
          specialized _ArrayBuffer.subscript.getter(0, v20 + 1, v53);
          v17 = v54;
          v18 = v55;
          v57 = v56;
          v59 = v58;
          v61 = specialized _SliceBuffer.requestNativeBuffer()(v54, v60, v55, v56, v58);
          if (v61)
          {
            v63 = v61;
            swift_unknownObjectRelease();
            a3 = v63;
          }

          else
          {
            specialized _copyCollectionToContiguousArray<A>(_:)(v17, v18, v57, v59, v62);
            a3 = v64;
            swift_unknownObjectRelease();
          }

          v441 = v446 - *(v461 + 32);
          if (v441 < 0.0)
          {
LABEL_582:
            __break(1u);
          }

          else
          {
            v463 = *(v461 + 160);
            v65 = *(v461 + 48);
            v436 = *(v461 + 40);
            v435 = v65;
            v66 = *(v461 + 64);
            v434 = *(v461 + 56);
            v433 = v66;
            a6 = *(v461 + 24);
            v442 = *(v461 + 16);
            *&v67 = COERCE_DOUBLE(specialized Array._getCount()(a3));
            v19 = v67;
            v457 = a3;
            if (*&v67 == 0.0)
            {

              goto LABEL_65;
            }

            v17 = v67 - 1;
            if (!__OFSUB__(v67, 1))
            {
              specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v67 - 1, (a3 & 0xC000000000000001) == 0, a3);
              if ((a3 & 0xC000000000000001) == 0)
              {
                v18 = *(a3 + 8 * v17 + 32);

                *&v68 = COERCE_DOUBLE();
                goto LABEL_62;
              }

LABEL_584:

              *&v68 = COERCE_DOUBLE(MEMORY[0x1DA6CE0C0](v17, a3));
              v18 = v68;
LABEL_62:
              *&v17 = COERCE_DOUBLE((*(*v18 + 144))(v68));

              if (v17)
              {

                *&a3 = COERCE_DOUBLE(specialized Sequence.dropLast(_:)(1, a3));
                goto LABEL_66;
              }

LABEL_65:

LABEL_66:
              v69 = specialized Array._getCount()(a3);
              v458 = 0.0;
              v9 = 0.0;
              v70 = 0.0;
              if (!v69)
              {
                goto LABEL_86;
              }

              v10 = v69;
              v71 = v7;
              *&v17 = 0.0;
              v21 = a3 & 0xC000000000000001;
              v7 = a3 & 0xFFFFFFFFFFFFFF8;
              while (2)
              {
                if (*&v21 != 0.0)
                {
                  v72 = MEMORY[0x1DA6CE0C0](v17, a3);
                  v18 = v17 + 1;
                  if (__OFADD__(v17, 1))
                  {
                    break;
                  }

                  goto LABEL_71;
                }

                if (v17 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_543;
                }

                v18 = v17 + 1;
                if (!__OFADD__(v17, 1))
                {
LABEL_71:
                  v8 = *(v72 + 32);

                  v9 = v9 + v8;
                  ++v17;
                  if (v18 == v10)
                  {
                    goto LABEL_76;
                  }

                  continue;
                }

                break;
              }

              __break(1u);
LABEL_76:
              v73 = 0;
              v70 = 0.0;
              while (2)
              {
                if (*&v21 != 0.0)
                {
                  *&v18 = COERCE_DOUBLE(MEMORY[0x1DA6CE0C0](v73, a3));
                  v17 = v73 + 1;
                  if (__OFADD__(v73, 1))
                  {
                    break;
                  }

                  goto LABEL_80;
                }

                if (v73 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_545;
                }

                v18 = *(a3 + 8 * v73 + 32);

                v17 = v73 + 1;
                if (!__OFADD__(v73, 1))
                {
LABEL_80:
                  v8 = (*(*v18 + 152))();

                  v70 = v70 + v8;
                  ++v73;
                  if (v17 == v10)
                  {
                    goto LABEL_85;
                  }

                  continue;
                }

                break;
              }

              __break(1u);
LABEL_85:
              v7 = v71;
              a4 = v444;
LABEL_86:
              *&v465 = v449 / 100.0;
              v8 = *&v465 * (v442 + a6 + v9);

              if (v441 >= v8)
              {
                v10 = v457;
              }

              else
              {
                v10 = v457;
                if (v8 - v441 <= a6)
                {
                  a6 = a6 - (v8 - v441);
                }

                else
                {
                  v458 = fmin((v8 - a6 - v441) / (v8 - a6 - *&v465 * (v442 + v70)), 1.0);
                  a6 = 0.0;
                }
              }

              v432 = v7;
              if (*&v19 != 0.0)
              {
                v74 = 1.0 - v458;
                v8 = *&v465;
                v454 = *&v465 * v436;
                v453 = *&v465 * v435;
                v75 = sqrt((v434 - v436) * (v434 - v436) + (v433 - v435) * (v433 - v435));
                v451 = (v433 - v435) / v75;
                sinval = (v434 - v436) / v75;
                v76 = atan2(v451, sinval);
                v455 = v74;
                v9 = v74 * (v8 * a6) + 0.0;
                *&v456 = v10 & 0xC000000000000001;
                *&v446 = v10 + 32;
                v77 = __sincos_stret(v76);
                v450 = *&v77.__sinval;
                cosval = v77.__cosval;
                v78 = 0;
                *&a3 = 0.0;
                *&v7 = MEMORY[0x1E69E7CC0];
                v443 = *&v19;
                v459 = v16;
                while (1)
                {
                  if (v456 == 0.0)
                  {
                    if (v78 >= *(v10 + 16))
                    {
                      goto LABEL_548;
                    }

                    v18 = *(*&v446 + 8 * v78);

                    v19 = v78 + 1;
                    if (__OFADD__(v78, 1))
                    {
                      goto LABEL_547;
                    }
                  }

                  else
                  {
                    *&v18 = COERCE_DOUBLE(MEMORY[0x1DA6CE0C0](v78, v10));
                    v19 = v78 + 1;
                    if (__OFADD__(v78, 1))
                    {
                      goto LABEL_547;
                    }
                  }

                  v79 = *(v18 + 40);
                  v80 = *&v465;
                  v81 = v455 * (*&v465 * *(v18 + 32));
                  v82 = v81 + v458 * (v80 * (*(*v18 + 152))());
                  if (!v78)
                  {
                    v83 = v441 - v82;
                    if (v441 - v82 >= v442)
                    {
                      v83 = v442;
                    }

                    if (v83 < 0.0)
                    {
                      v83 = 0.0;
                    }

                    v9 = v9 + v83;
                  }

                  v84 = *(v18 + 120);
                  v85 = *v18;
                  *&v464 = v82;
                  if (*&v463 == v84)
                  {
                    (*(v85 + 240))();
                  }

                  else
                  {
                    v86 = (*(v85 + 272))();
                  }

                  v88 = v86;
                  v462 = v87;
                  v460 = v9;
                  v89 = v454 + sinval * (v9 / cosval);
                  v90 = v453 + v451 * (v9 / cosval);
                  v91 = *&v465;
                  v9 = *&v465 * v79;
                  v92 = *(v18 + 32);
                  v93 = *(v18 + 40);
                  v471.origin.x = 0.0;
                  v471.origin.y = 0.0;
                  v471.size.width = v92;
                  v471.size.height = v93;
                  v94 = CGRectGetMinX(v471);
                  v472.origin.x = 0.0;
                  v472.origin.y = 0.0;
                  v472.size.width = v92;
                  v472.size.height = v93;
                  v95 = v94 + v88 * CGRectGetWidth(v472);
                  v473.origin.x = 0.0;
                  v473.origin.y = 0.0;
                  v473.size.width = v92;
                  v473.size.height = v93;
                  MinY = CGRectGetMinY(v473);
                  v474.origin.x = 0.0;
                  v474.origin.y = 0.0;
                  v474.size.width = v92;
                  v474.size.height = v93;
                  v97 = v91 * (MinY + v462 * CGRectGetHeight(v474));
                  v98 = v89 - v91 * v95;
                  v99 = v90 - (v97 - *&v450 * (v91 * v95));
                  v101 = *(v18 + 16);
                  v100 = *(v18 + 24);
                  v103 = *(v18 + 32);
                  v102 = *(v18 + 40);
                  v475.origin.x = v98;
                  v475.origin.y = v99;
                  v104 = *&v464;
                  *&v475.size.width = v464;
                  v475.size.height = v9;
                  IsNull = CGRectIsNull(v475);
                  v476.origin.x = v101;
                  v476.origin.y = v100;
                  v476.size.width = v103;
                  v476.size.height = v102;
                  v106 = CGRectIsNull(v476);
                  if (IsNull)
                  {
                    v107 = v106 == 0;
                  }

                  else
                  {
                    v107 = 1;
                  }

                  if (!v107 || ((v108 = vabdd_f64(v98, v101), IsNull == v106) ? (v109 = v108 < 2.0) : (v109 = 0), (v110 = vabdd_f64(v99, v100), v109) ? (v111 = v110 < 2.0) : (v111 = 0), (v112 = vabdd_f64(v104, v103), v111) ? (v113 = v112 < 2.0) : (v113 = 0), (v114 = vabdd_f64(v9, v102), v113) ? (v115 = v114 < 2.0) : (v115 = 0), v115))
                  {
                    v98 = *(v18 + 16);
                    v99 = *(v18 + 24);
                    v104 = *(v18 + 32);
                    v9 = *(v18 + 40);
                  }

                  v116 = floor(v98 + v98);
                  v117 = ceil(v98 + v98);
                  if (v98 + v98 - v116 < 0.49)
                  {
                    a6 = v116;
                  }

                  else
                  {
                    a6 = v117;
                  }

                  v118 = floor(v99 + v99);
                  v119 = ceil(v99 + v99);
                  if (v99 + v99 - v118 < 0.49)
                  {
                    v8 = v118;
                  }

                  else
                  {
                    v8 = v119;
                  }

                  if (v78)
                  {
                    specialized Array._checkIndex(_:)(0, v10);
                    specialized Array._checkIndex(_:)(v78, v10);
                    specialized _ArrayBuffer.subscript.getter(0, v78, v10);
                    v10 = v120;
                    v17 = v121;
                    v16 = v122;
                    *&v467 = v120;
                    *(&v467 + 1) = v121;
                    *&v468 = v122;
                    *(&v468 + 1) = v123;
                    a4 = v123 >> 1;
                    while (1)
                    {
                      v124 = a4;
                      if (v16 == a4)
                      {
                        break;
                      }

                      --a4;
                      if (__OFSUB__(v124, 1))
                      {
LABEL_309:
                        __break(1u);
LABEL_310:
                        __break(1u);
LABEL_311:
                        __break(1u);
LABEL_312:
                        *&v20 = COERCE_DOUBLE(__CocoaSet.count.getter());
                        goto LABEL_3;
                      }

                      if (a4 < v16)
                      {
                        goto LABEL_310;
                      }

                      type metadata accessor for ReflowWord();
                      v120 = swift_dynamicCastClass();
                      if (v120)
                      {
                        goto LABEL_140;
                      }
                    }

                    *&a4 = 0.0;
LABEL_140:
                    v125 = v9;
                    *&v21 = COERCE_DOUBLE(&v432);
                    MEMORY[0x1EEE9AC00](v120);
                    v431 = &v467;
                    v127 = _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8PaperKit13ReflowElementCTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v430, a4, v126);
                    swift_unknownObjectRelease();
                    if (v127)
                    {
                      type metadata accessor for ReflowWord();
                      v128 = swift_dynamicCastClass();
                      v16 = v459;
                      a4 = v444;
                      v129 = v460;
                      if (!v128)
                      {
                      }

                      goto LABEL_145;
                    }

                    v16 = v459;
                    a4 = v444;
                  }

                  else
                  {
                    v125 = v9;
                  }

                  v129 = v460;
LABEL_145:
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    *&v7 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1, v7));
                  }

                  v131 = *(v7 + 16);
                  v130 = *(v7 + 24);
                  v17 = v131 + 1;
                  if (v131 >= v130 >> 1)
                  {
                    *&v7 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v130 > 1), v131 + 1, 1, v7));
                  }

                  *(v7 + 16) = *&v17;
                  v132 = v7 + 32 * v131;
                  *(v132 + 32) = a6 * 0.5;
                  *(v132 + 40) = v8 * 0.5;
                  *(v132 + 48) = v104;
                  *(v132 + 56) = v125;
                  v9 = v129 + v104;
                  v78 = v19;
                  v10 = v457;
                  if (v19 == *&v443)
                  {
                    goto LABEL_155;
                  }
                }
              }

              *&a3 = 0.0;
              *&v7 = MEMORY[0x1E69E7CC0];
LABEL_155:

              v17 = *(v7 + 16);
              if (*&v17 == 0.0)
              {

                v48 = v438;
              }

              else
              {
                v133 = specialized Array._getCount()(v448);
                v134 = 0;
                v8 = *&v463;
                v20 = v7 + 48;
                v48 = v438;
                do
                {
                  if (v134 >= *(v7 + 16))
                  {
                    goto LABEL_557;
                  }

                  if (v133 == v134)
                  {
                    break;
                  }

                  v137 = *v20;
                  v465 = *(v20 - 16);
                  v464 = v137;
                  if (*&a4 == 0.0)
                  {
                    if (v134 >= *(*&v439 + 16))
                    {
                      goto LABEL_572;
                    }
                  }

                  else
                  {
                    v135 = MEMORY[0x1DA6CE0C0](v134, v448);
                  }

                  ++v134;
                  v136 = v464;
                  *(v135 + 48) = v465;
                  *(v135 + 64) = v136;
                  *(v135 + 80) = v8;

                  v20 += 32;
                }

                while (v17 != v134);
              }

              v7 = v432;
LABEL_167:
              v138 = v440 + 15.0;
              if (v440 + 15.0 >= v48)
              {
                v138 = v48;
              }

              if (v138 < 0.0)
              {
                a6 = 0.0;
              }

              else
              {
                a6 = v138;
              }

              if (a6 > v48)
              {
                goto LABEL_573;
              }

              v139 = v448;
              if (LOBYTE(v437))
              {
LABEL_574:
                __break(1u);
              }

              else
              {
                v140 = specialized Array._getCount()(v448);
                if (v140 >= v7)
                {
                  v141 = v140;
                  specialized Array._checkIndex(_:)(v7, v139);
                  specialized Array._checkIndex(_:)(v141, v139);
                  specialized _ArrayBuffer.subscript.getter(v7, v141, v139);
                  v143 = v142;
                  v145 = v144;
                  v147 = v146;
                  v149 = v148;
                  v150 = swift_initStackObject();
                  *(v150 + 16) = v466;
                  *(v150 + 32) = v445;
                  *&v467 = v143;
                  *(&v467 + 1) = v145;
                  *&v468 = v147;
                  *(&v468 + 1) = v149;

                  *&v18 = COERCE_DOUBLE(&v467);
                  specialized ArraySlice.append<A>(contentsOf:)(v150, v151);
                  v152 = *(&v467 + 1);
                  v10 = v467;
                  v7 = *(&v468 + 1);
                  v17 = *&v468;
                  v16 = *(&v468 + 1) >> 1;
                  v153 = v468 <= *(&v468 + 1) >> 1;
                  if (v468 == *(&v468 + 1) >> 1)
                  {
                    v21 = *&v468;
LABEL_177:
                    v153 = v16 < v21;
                    v16 = v21;
                    if (!v153)
                    {
LABEL_187:
                      if (v16 >= v17)
                      {
                        v155 = swift_unknownObjectRetain();
                        *&v19 = COERCE_DOUBLE(specialized _SliceBuffer.requestNativeBuffer()(v155, v156, v152, v16, v7));
                        swift_unknownObjectRelease();
                        if (*&v19 == 0.0)
                        {
                          specialized _copyCollectionToContiguousArray<A>(_:)(v10, v152, v16, v7, v157);
                          v19 = v158;
                        }

                        swift_unknownObjectRelease();
                        *&v159 = COERCE_DOUBLE(specialized Array._getCount()(v19));
                        if (*&v159 == 0.0)
                        {
LABEL_490:

                          return;
                        }

                        v21 = v159;
                        v17 = v159 - 1;
                        if (!__OFSUB__(v159, 1))
                        {
                          specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v159 - 1, (v19 & 0xC000000000000001) == 0, v19);
                          *&v460 = v19 & 0xC000000000000001;
                          if ((v19 & 0xC000000000000001) == 0)
                          {
                            v18 = *(v19 + 8 * v17 + 32);

                            *&v160 = COERCE_DOUBLE();
LABEL_194:
                            *&v17 = COERCE_DOUBLE((*(*v18 + 144))(v160));

                            if (v17)
                            {

                              v10 = specialized Sequence.dropLast(_:)(1, v19);
                            }

                            else
                            {

                              v10 = v19;
                            }

                            v161 = specialized Array._getCount()(v10);
                            v450 = v21;
                            if (!v161)
                            {
                              v9 = 0.0;
                              v8 = 0.0;
                              goto LABEL_219;
                            }

                            v162 = v161;
                            *&v18 = 0.0;
                            v17 = v10 & 0xC000000000000001;
                            v21 = v10 & 0xFFFFFFFFFFFFFF8;
                            v8 = 0.0;
                            while (1)
                            {
                              if (*&v17 == 0.0)
                              {
                                if (v18 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
                                {
                                  goto LABEL_541;
                                }

                                v7 = v18 + 1;
                                if (__OFADD__(v18, 1))
                                {
LABEL_207:
                                  __break(1u);
LABEL_208:
                                  v164 = v48;
                                  *&v7 = 0.0;
                                  v165 = 0.0;
                                  v9 = v8 + 0.0;
                                  while (1)
                                  {
                                    if (*&v17 == 0.0)
                                    {
                                      if (v7 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
                                      {
                                        goto LABEL_542;
                                      }

                                      v18 = *(v10 + 8 * v7 + 32);

                                      v16 = v7 + 1;
                                      if (__OFADD__(v7, 1))
                                      {
LABEL_216:
                                        __break(1u);
LABEL_217:
                                        v8 = v165 + 0.0;
                                        v48 = v164;
LABEL_219:
                                        v166 = v449 / 100.0;
                                        v167 = v166 * v9;

                                        v168 = v48 - a6;
                                        v169 = v167 - (v48 - a6);
                                        v153 = v169 > 0.0;
                                        v170 = fmin(v169 / (v167 - v166 * v8), 1.0);
                                        v171 = 0.0 - v169;
                                        if (v153)
                                        {
                                          v171 = 0.0;
                                        }

                                        else
                                        {
                                          v170 = 0.0;
                                        }

                                        v172 = v168 < v167;
                                        if (v168 < v167)
                                        {
                                          v173 = v170;
                                        }

                                        else
                                        {
                                          v173 = 0.0;
                                        }

                                        if (v172)
                                        {
                                          v174 = v171;
                                        }

                                        else
                                        {
                                          v174 = 0.0;
                                        }

                                        v458 = v173;
                                        *&v457 = 1.0 - v173;
                                        v9 = a6 + (1.0 - v173) * (v166 * v174);
                                        v456 = v166 * v436;
                                        *&v459 = v166;
                                        v455 = v166 * v435;
                                        v175 = sqrt((v433 - v435) * (v433 - v435) + (v434 - v436) * (v434 - v436));
                                        v453 = (v433 - v435) / v175;
                                        v454 = (v434 - v436) / v175;
                                        v176 = atan2(v453, v454);
                                        v449 = v19 + 32;
                                        v177 = __sincos_stret(v176);
                                        sinval = v177.__sinval;
                                        v451 = v177.__cosval;
                                        *&a4 = 0.0;
                                        *&v7 = MEMORY[0x1E69E7CC0];
                                        cosval = v48 + 0.1;
                                        v448 = v19;
                                        while (1)
                                        {
                                          if (v460 == 0.0)
                                          {
                                            if (a4 >= *(v19 + 16))
                                            {
                                              __break(1u);
LABEL_561:
                                              __break(1u);
LABEL_562:
                                              v28 = __CocoaSet.count.getter();
                                              v17 = v28;
                                              v29 = v448;
                                              goto LABEL_28;
                                            }

                                            v18 = *(v449 + 8 * a4);

                                            v21 = a4 + 1;
                                            if (__OFADD__(a4, 1))
                                            {
                                              goto LABEL_544;
                                            }
                                          }

                                          else
                                          {
                                            *&v18 = COERCE_DOUBLE(MEMORY[0x1DA6CE0C0](a4, v19));
                                            v21 = a4 + 1;
                                            if (__OFADD__(a4, 1))
                                            {
                                              goto LABEL_544;
                                            }
                                          }

                                          v179 = *(v18 + 32);
                                          v178 = *(v18 + 40);
                                          v180 = (*(*v18 + 152))();
                                          if (*&a4 == 0.0)
                                          {
                                            v181 = v9 + 0.0;
                                          }

                                          else
                                          {
                                            v181 = v9;
                                          }

                                          v182 = *(v18 + 120);
                                          v183 = *v18;
                                          v462 = v9;
                                          if (*&v463 == v182)
                                          {
                                            (*(v183 + 240))();
                                          }

                                          else
                                          {
                                            v184 = (*(v183 + 272))();
                                          }

                                          v186 = v184;
                                          *&v465 = v185;
                                          v187 = *&v459;
                                          *&v464 = *&v457 * (v187 * v179) + v458 * (v187 * v180);
                                          *&v466 = v181;
                                          v188 = v181 / v451;
                                          v189 = v456 + v454 * (v181 / v451);
                                          v190 = v455 + v453 * v188;
                                          v191 = *&v459 * v178;
                                          v192 = *(v18 + 32);
                                          v193 = *(v18 + 40);
                                          v477.origin.x = 0.0;
                                          v477.origin.y = 0.0;
                                          v477.size.width = v192;
                                          v477.size.height = v193;
                                          v194 = CGRectGetMinX(v477);
                                          v478.origin.x = 0.0;
                                          v478.origin.y = 0.0;
                                          v478.size.width = v192;
                                          v478.size.height = v193;
                                          v195 = v194 + v186 * CGRectGetWidth(v478);
                                          v479.origin.x = 0.0;
                                          v479.origin.y = 0.0;
                                          v479.size.width = v192;
                                          v479.size.height = v193;
                                          v196 = CGRectGetMinY(v479);
                                          v480.origin.x = 0.0;
                                          v480.origin.y = 0.0;
                                          v480.size.width = v192;
                                          v480.size.height = v193;
                                          Height = CGRectGetHeight(v480);
                                          v198 = v187 * v195;
                                          v199 = v189 - v187 * v195;
                                          v200 = v190 - (v187 * (v196 + *&v465 * Height) - sinval * v198);
                                          v201 = *&v464;
                                          v203 = *(v18 + 16);
                                          v202 = *(v18 + 24);
                                          v205 = *(v18 + 32);
                                          v204 = *(v18 + 40);
                                          v481.origin.x = v199;
                                          v481.origin.y = v200;
                                          *&v481.size.width = v464;
                                          v481.size.height = v191;
                                          v206 = CGRectIsNull(v481);
                                          v482.origin.x = v203;
                                          v482.origin.y = v202;
                                          v482.size.width = v205;
                                          v482.size.height = v204;
                                          v207 = CGRectIsNull(v482);
                                          if (v206)
                                          {
                                            v208 = v207 == 0;
                                          }

                                          else
                                          {
                                            v208 = 1;
                                          }

                                          if (!v208 || ((v209 = vabdd_f64(v199, v203), v206 == v207) ? (v210 = v209 < 2.0) : (v210 = 0), (v211 = vabdd_f64(v200, v202), v210) ? (v212 = v211 < 2.0) : (v212 = 0), (v213 = vabdd_f64(v201, v205), v212) ? (v214 = v213 < 2.0) : (v214 = 0), (v215 = vabdd_f64(v191, v204), v214) ? (v216 = v215 < 2.0) : (v216 = 0), v216))
                                          {
                                            v199 = *(v18 + 16);
                                            v200 = *(v18 + 24);
                                            v201 = *(v18 + 32);
                                            v191 = *(v18 + 40);
                                          }

                                          v217 = floor(v199 + v199);
                                          v218 = ceil(v199 + v199);
                                          if (v199 + v199 - v217 < 0.49)
                                          {
                                            v8 = v217;
                                          }

                                          else
                                          {
                                            v8 = v218;
                                          }

                                          v219 = floor(v200 + v200);
                                          v220 = ceil(v200 + v200);
                                          if (v200 + v200 - v219 < 0.49)
                                          {
                                            a6 = v219;
                                          }

                                          else
                                          {
                                            a6 = v220;
                                          }

                                          if (*&a4 == 0.0)
                                          {
                                            v10 = 0;
                                            v48 = *&v466;
                                          }

                                          else
                                          {
                                            *&v465 = v7;
                                            specialized Array._checkIndex(_:)(0, v19);
                                            specialized Array._checkIndex(_:)(a4, v19);
                                            specialized _ArrayBuffer.subscript.getter(0, a4, v19);
                                            v10 = v221;
                                            v17 = v222;
                                            v7 = v223;
                                            *&v467 = v221;
                                            *(&v467 + 1) = v222;
                                            *&v468 = v223;
                                            *(&v468 + 1) = v224;
                                            v225 = v224 >> 1;
                                            v9 = v462;
                                            v48 = *&v466;
                                            while (1)
                                            {
                                              v19 = v225;
                                              if (v7 == v225)
                                              {
                                                break;
                                              }

                                              --v225;
                                              if (__OFSUB__(v19, 1))
                                              {
                                                __break(1u);
LABEL_308:
                                                __break(1u);
                                                goto LABEL_309;
                                              }

                                              if (v225 < v7)
                                              {
                                                goto LABEL_308;
                                              }

                                              v16 = *(v17 + 8 * v225);
                                              type metadata accessor for ReflowWord();
                                              v221 = swift_dynamicCastClass();
                                              if (v221)
                                              {
                                                goto LABEL_276;
                                              }
                                            }

                                            *&v225 = 0.0;
LABEL_276:
                                            *&v16 = COERCE_DOUBLE(&v432);
                                            MEMORY[0x1EEE9AC00](v221);
                                            v431 = &v467;
                                            v227 = _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8PaperKit13ReflowElementCTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v430, v225, v226);
                                            v228 = swift_unknownObjectRelease();
                                            if (v227)
                                            {
                                              type metadata accessor for ReflowWord();
                                              v228 = swift_dynamicCastClass();
                                              v10 = v228;
                                              v7 = *&v465;
                                              if (!v228)
                                              {
                                              }

                                              v19 = v448;
                                            }

                                            else
                                            {
                                              v10 = 0;
                                              v19 = v448;
                                              v7 = *&v465;
                                            }

                                            if (((*(*v18 + 144))(v228) & 1) == 0 && (cosval < v9 + *(v18 + 64) || v10 && *(v10 + 136) == 1))
                                            {

                                              v21 = v450;
                                              if (v450 >= a4)
                                              {
                                                specialized Array._checkIndex(_:)(a4, v19);
                                                specialized Array._checkIndex(_:)(v21, v19);
                                                specialized _ArrayBuffer.subscript.getter(a4, v21, v19);
                                                v232 = v231;
                                                v234 = v233;
                                                v20 = v235;
                                                v237 = v236;

                                                v238 = swift_unknownObjectRetain();
                                                *&v16 = COERCE_DOUBLE(specialized _SliceBuffer.requestNativeBuffer()(v238, v239, v234, v20, v237));
                                                swift_unknownObjectRelease();
                                                if (*&v16 == 0.0)
                                                {
                                                  specialized _copyCollectionToContiguousArray<A>(_:)(v232, v234, v20, v237, v240);
                                                  v16 = v241;
                                                }

                                                swift_unknownObjectRelease();

                                                *&v7 = MEMORY[0x1E69E7CC0];
LABEL_295:

                                                v242 = specialized Array._getCount()(v16);

                                                if (v242)
                                                {
LABEL_296:

LABEL_329:

                                                  return;
                                                }

                                                v244 = v461;
                                                MEMORY[0x1DA6CD190](v243);
                                                specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(*((*v244 & 0xFFFFFFFFFFFFFF8) + 0x10));
                                                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                                                v245 = *(v7 + 16);
                                                if (v245)
                                                {
                                                  *&v17 = 0.0;
                                                  v8 = *&v463;
                                                  a3 = v7 + 48;
                                                  while (v17 < *(v7 + 16))
                                                  {
                                                    if (v21 == v17)
                                                    {
                                                      goto LABEL_306;
                                                    }

                                                    v248 = *a3;
                                                    v466 = *(a3 - 16);
                                                    v465 = v248;
                                                    if (v460 == 0.0)
                                                    {
                                                      if (v17 >= *(v19 + 16))
                                                      {
                                                        goto LABEL_577;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v246 = MEMORY[0x1DA6CE0C0](v17, v19);
                                                    }

                                                    ++v17;
                                                    v247 = v465;
                                                    *(v246 + 48) = v466;
                                                    *(v246 + 64) = v247;
                                                    *(v246 + 80) = v8;

                                                    a3 += 32;
                                                    if (v245 == v17)
                                                    {
                                                      goto LABEL_306;
                                                    }
                                                  }

                                                  goto LABEL_569;
                                                }

LABEL_306:

LABEL_524:

                                                return;
                                              }

                                              __break(1u);
LABEL_586:
                                              __break(1u);
LABEL_587:
                                              __break(1u);
                                              return;
                                            }
                                          }

                                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                          {
                                            *&v7 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1, v7));
                                          }

                                          v20 = *(v7 + 16);
                                          v229 = *(v7 + 24);
                                          v17 = v20 + 1;
                                          if (v20 >= v229 >> 1)
                                          {
                                            *&v7 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v229 > 1), v20 + 1, 1, v7));
                                          }

                                          *(v7 + 16) = *&v17;
                                          v230 = (v7 + 32 * v20);
                                          v230[4] = v8 * 0.5;
                                          v230[5] = a6 * 0.5;
                                          v230[6] = v201;
                                          v230[7] = v191;
                                          v9 = v48 + v201;
                                          a4 = v21;
                                          if (v21 == v450)
                                          {
                                            v21 = v450;
                                            *&v16 = MEMORY[0x1E69E7CC0];
                                            goto LABEL_295;
                                          }
                                        }
                                      }
                                    }

                                    else
                                    {
                                      *&v18 = COERCE_DOUBLE(MEMORY[0x1DA6CE0C0](v7, v10));
                                      v16 = v7 + 1;
                                      if (__OFADD__(v7, 1))
                                      {
                                        goto LABEL_216;
                                      }
                                    }

                                    v8 = (*(*v18 + 152))();

                                    v165 = v165 + v8;
                                    ++v7;
                                    if (v16 == v162)
                                    {
                                      goto LABEL_217;
                                    }
                                  }
                                }
                              }

                              else
                              {
                                v163 = MEMORY[0x1DA6CE0C0](v18, v10);
                                v7 = v18 + 1;
                                if (__OFADD__(v18, 1))
                                {
                                  goto LABEL_207;
                                }
                              }

                              v9 = *(v163 + 32);

                              v8 = v8 + v9;
                              ++v18;
                              if (v7 == v162)
                              {
                                goto LABEL_208;
                              }
                            }
                          }

LABEL_579:

                          *&v160 = COERCE_DOUBLE(MEMORY[0x1DA6CE0C0](v17, v19));
                          v18 = v160;
                          goto LABEL_194;
                        }

LABEL_578:
                        __break(1u);
                        goto LABEL_579;
                      }

LABEL_576:
                      __break(1u);
LABEL_577:
                      __break(1u);
                      goto LABEL_578;
                    }

                    __break(1u);
                  }

                  if (v153)
                  {
                    v154 = v16;
                  }

                  else
                  {
                    v154 = v17;
                  }

                  v21 = v17;
                  while (v154 != v21)
                  {
                    v18 = *(v152 + 8 * v21);
                    if (((*(*v18 + 144))() & 1) == 0)
                    {
                      goto LABEL_177;
                    }

                    if (v16 == ++v21)
                    {
                      goto LABEL_187;
                    }
                  }

LABEL_546:
                  __break(1u);
LABEL_547:
                  __break(1u);
LABEL_548:
                  __break(1u);
LABEL_549:
                  __break(1u);
                  goto LABEL_550;
                }
              }

              __break(1u);
              goto LABEL_576;
            }
          }

          __break(1u);
          goto LABEL_584;
        }

        v30 = v18;
        v31 = MEMORY[0x1DA6CE0C0](v20, v448);
        v28 = swift_unknownObjectRelease();
        v29 = v448;
        v107 = v31 == v10;
        v18 = v30;
        a4 = v444;
        if (v107)
        {
          goto LABEL_38;
        }

LABEL_33:
        v26 = __OFADD__(v20++, 1);
        if (!v26)
        {
          continue;
        }

        break;
      }

      __break(1u);
LABEL_313:
      *&v17 = COERCE_DOUBLE(MEMORY[0x1DA6CE0C0](0, v18));
LABEL_7:
      v10 = *a3;
      outlined init with copy of ReflowSpacingAdjustment(a3, &v467);
      outlined init with copy of ReflowSpacingAdjustment(a3, &v467);

      outlined destroy of ReflowSpacingAdjustment(a3);
      if (v17 == v10 && (*(a3 + 8) & 1) == 0)
      {
        outlined destroy of ReflowSpacingAdjustment(a3);

        v22 = *(a3 + 32);
        v23 = v446 - *(v461 + 32);
        if (v23 <= v22)
        {
          return;
        }

        v24 = *(v461 + 16);
        if (v24 > v22)
        {
          v22 = *(v461 + 16);
        }

        if (v22 <= v23)
        {
          if (v24 >= v22)
          {
            *(v21 + 43) = 0u;
            v468 = 0u;
            v469 = 0u;
            v467 = 0u;
            ReflowTextLine.add(_:textScalePercentage:spacingAdjustment:maxWidth:previousLine:adjustment:)(v445, v449, &v467, a4, v446, a6);
          }

          else
          {
            specialized ReflowTextLine.addLayoutAndApply(_:textScalePercentage:span:hardHeadIndent:softHeadIndent:canCompress:canOverflow:isWholeLine:)(v445, v449, v22, v23, 0.0, 0.0);
          }

          return;
        }

        goto LABEL_565;
      }

      goto LABEL_16;
    }
  }

  if (v249 < v250)
  {
    goto LABEL_329;
  }

  v262 = specialized Collection<>.firstIndex(of:)(v10, v18);
  if (v263)
  {
    goto LABEL_586;
  }

  v264 = *(a3 + 8);
  v10 = v262 + v264;
  if (__OFADD__(v262, v264))
  {
    goto LABEL_549;
  }

  if (v10 < 0)
  {
LABEL_550:
    __break(1u);
LABEL_551:
    *&v27 = COERCE_DOUBLE(__CocoaSet.count.getter());
    v20 = v27;
    goto LABEL_346;
  }

  specialized Array._checkIndex(_:)(0, v18);
  specialized Array._checkIndex(_:)(v10, v18);
  specialized _ArrayBuffer.subscript.getter(0, v10, v18);
  v17 = v265;
  v21 = v266;
  v16 = v267;
  v269 = v268;
  *&v271 = COERCE_DOUBLE(specialized _SliceBuffer.requestNativeBuffer()(v265, v270, v266, v267, v268));
  if (*&v271 == 0.0)
  {
    specialized _copyCollectionToContiguousArray<A>(_:)(v17, v21, v16, v269, v272);
  }

  v7 = v271;
  swift_unknownObjectRelease();
  if (*&v19 == 0.0)
  {
    if (v10 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_338;
    }

LABEL_340:
    if (v20 < v10)
    {
      goto LABEL_561;
    }

    specialized Array._checkIndex(_:)(v20, v18);

    specialized _ArrayBuffer.subscript.getter(v10, v20, v18);
    v17 = v273;
    v275 = v274;
    v277 = v276;
    v279 = v278;

    v280 = swift_unknownObjectRetain();
    v10 = specialized _SliceBuffer.requestNativeBuffer()(v280, v281, v275, v277, v279);
    swift_unknownObjectRelease();
    if (!v10)
    {
      specialized _copyCollectionToContiguousArray<A>(_:)(v17, v275, v277, v279, v282);
      v10 = v283;
    }

    *&v27 = COERCE_DOUBLE(swift_unknownObjectRelease());
  }

  else
  {
    if (v10 < __CocoaSet.count.getter())
    {
      goto LABEL_340;
    }

LABEL_338:

    *&v27 = COERCE_DOUBLE();
    v10 = MEMORY[0x1E69E7CC0];
  }

  v21 = v10 & 0xFFFFFFFFFFFFFF8;
  if (v10 >> 62)
  {
    goto LABEL_551;
  }

  v20 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_346:
  *&v16 = 0.0;
  a4 = v10 & 0xC000000000000001;
  while (v20 != v16)
  {
    if (*&a4 == 0.0)
    {
      if (v16 >= *(v21 + 16))
      {
        goto LABEL_530;
      }

      v18 = *(v10 + 8 * v16 + 32);
      *&v284 = COERCE_DOUBLE();
    }

    else
    {
      *&v284 = COERCE_DOUBLE(MEMORY[0x1DA6CE0C0](v16, v10));
      v18 = v284;
    }

    *&v17 = COERCE_DOUBLE((*(*v18 + 144))(v284));
    *&v27 = COERCE_DOUBLE();
    if ((v17 & 1) == 0)
    {
      goto LABEL_357;
    }

    v26 = __OFADD__(v16++, 1);
    if (v26)
    {
      goto LABEL_531;
    }
  }

  v16 = v20;
LABEL_357:
  if (v20 < v16)
  {
    __break(1u);
LABEL_553:
    __break(1u);
LABEL_554:
    __break(1u);
LABEL_555:
    *&v27 = COERCE_DOUBLE(__CocoaSet.count.getter());
    v16 = v27;
    goto LABEL_399;
  }

  specialized Array._checkIndex(_:)(v16, v10);
  specialized Array._checkIndex(_:)(v20, v10);
  specialized _ArrayBuffer.subscript.getter(v16, v20, v10);
  v17 = v285;
  v18 = v286;
  v20 = v287;
  v21 = v288;

  v289 = swift_unknownObjectRetain();
  *&v291 = COERCE_DOUBLE(specialized _SliceBuffer.requestNativeBuffer()(v289, v290, v18, v20, v21));
  swift_unknownObjectRelease();
  v442 = *&v291;
  if (*&v291 == 0.0)
  {
    specialized _copyCollectionToContiguousArray<A>(_:)(v17, v18, v20, v21, v292);
    v442 = *&v293;
  }

  swift_unknownObjectRelease();
  v294 = 0.0;
  v437 = *(a3 + 32);
  if (v437 >= 0.0)
  {
    v294 = v437;
  }

  v443 = v294;
  v16 = *(v461 + 160);
  v295 = *(v461 + 48);
  v441 = *(v461 + 40);
  v440 = v295;
  v296 = *(v461 + 64);
  v439 = *(v461 + 56);
  v438 = v296;
  a6 = *(v461 + 24);
  v444 = *(v461 + 16);
  v462 = COERCE_DOUBLE(specialized Array._getCount()(v7));
  if (v462 == 0.0)
  {
    goto LABEL_368;
  }

  v17 = *&v462 - 1;
  if (__OFSUB__(*&v462, 1))
  {
    goto LABEL_558;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(*&v462 - 1, (v7 & 0xC000000000000001) == 0, v7);
  if ((v7 & 0xC000000000000001) == 0)
  {
    v18 = *(v7 + 8 * v17 + 32);
    *&v297 = COERCE_DOUBLE();
    goto LABEL_366;
  }

LABEL_559:
  *&v297 = COERCE_DOUBLE(MEMORY[0x1DA6CE0C0](v17, v7));
  v18 = v297;
LABEL_366:
  *&v17 = COERCE_DOUBLE((*(*v18 + 144))(v297));

  if (v17)
  {

    *&a3 = COERCE_DOUBLE(specialized Sequence.dropLast(_:)(1, v7));
    goto LABEL_369;
  }

LABEL_368:

  a3 = v7;
LABEL_369:
  *&v27 = COERCE_DOUBLE(specialized Array._getCount()(a3));
  v460 = 0.0;
  v9 = 0.0;
  v298 = 0.0;
  v450 = v16;
  if (*&v27 == 0.0)
  {
    goto LABEL_389;
  }

  v10 = v27;
  *&v17 = 0.0;
  v21 = a3 & 0xC000000000000001;
  v16 = a3 & 0xFFFFFFFFFFFFFF8;
  while (2)
  {
    if (*&v21 == 0.0)
    {
      if (v17 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_528:
        __break(1u);
LABEL_529:
        __break(1u);
LABEL_530:
        __break(1u);
LABEL_531:
        __break(1u);
LABEL_532:
        __break(1u);
LABEL_533:
        __break(1u);
LABEL_534:
        __break(1u);
LABEL_535:
        __break(1u);
        goto LABEL_536;
      }

      *&v27 = COERCE_DOUBLE();
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      goto LABEL_374;
    }

    *&v27 = COERCE_DOUBLE(MEMORY[0x1DA6CE0C0](v17, a3));
    v18 = v17 + 1;
    if (!__OFADD__(v17, 1))
    {
LABEL_374:
      v8 = *(v27 + 32);
      *&v27 = COERCE_DOUBLE();
      v9 = v9 + v8;
      ++v17;
      if (v18 == v10)
      {
        goto LABEL_379;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_379:
  *&v20 = 0.0;
  v298 = 0.0;
  while (2)
  {
    if (*&v21 != 0.0)
    {
      *&v18 = COERCE_DOUBLE(MEMORY[0x1DA6CE0C0](v20, a3));
      v17 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      goto LABEL_383;
    }

    if (v20 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_529;
    }

    v18 = *(a3 + 8 * v20 + 32);

    v17 = v20 + 1;
    if (!__OFADD__(v20, 1))
    {
LABEL_383:
      v8 = (*(*v18 + 152))();
      *&v27 = COERCE_DOUBLE();
      v298 = v298 + v8;
      ++v20;
      if (v17 == v10)
      {
        goto LABEL_388;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_388:
  v16 = v450;
LABEL_389:
  *&v466 = v449 / 100.0;
  v299 = *&v466 * (*&v444 + a6 + v9);

  if (v443 < v299)
  {
    v300 = v299 - v443;
    if (v299 - v443 > a6)
    {
      v460 = fmin((v299 - a6 - v443) / (v299 - a6 - *&v466 * (*&v444 + v298)), 1.0);
      a6 = 0.0;
      goto LABEL_423;
    }

LABEL_422:
    a6 = a6 - v300;
  }

LABEL_423:
  if (v462 != 0.0)
  {
    v9 = 1.0 - v460;
    v8 = *&v466;
    *&v457 = *&v466 * v441;
    v456 = *&v466 * v440;
    v341 = sqrt((v439 - v441) * (v439 - v441) + (v438 - v440) * (v438 - v440));
    v454 = (v438 - v440) / v341;
    v455 = (v439 - v441) / v341;
    v342 = atan2(v454, v455);
    v458 = v9;
    a6 = v9 * (v8 * a6) + 0.0;
    v459 = v7 & 0xC000000000000001;
    *&v451 = v7 + 32;
    v343 = __sincos_stret(v342);
    v453 = v343.__sinval;
    sinval = v343.__cosval;
    v10 = 0;
    *&a3 = 0.0;
    *&v20 = MEMORY[0x1E69E7CC0];
    cosval = *&v7;
    while (1)
    {
      if (*&v459 == 0.0)
      {
        if (v10 >= *(v7 + 16))
        {
          goto LABEL_533;
        }

        v18 = *(*&v451 + 8 * v10);
        *&v27 = COERCE_DOUBLE();
        v19 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_532;
        }
      }

      else
      {
        *&v27 = COERCE_DOUBLE(MEMORY[0x1DA6CE0C0](v10, v7));
        v18 = v27;
        v19 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_532;
        }
      }

      v344 = *(v18 + 40);
      v345 = *&v466;
      v346 = v458 * (*&v466 * *(v18 + 32));
      v347 = v346 + v460 * (v345 * (*(*v18 + 152))());
      if (!v10)
      {
        v348 = v443 - v347;
        if (v443 - v347 >= *&v444)
        {
          v348 = *&v444;
        }

        if (v348 < 0.0)
        {
          v348 = 0.0;
        }

        a6 = a6 + v348;
      }

      v349 = *(v18 + 120);
      v350 = *v18;
      *&v465 = v347;
      if (v16 == v349)
      {
        (*(v350 + 240))();
      }

      else
      {
        v351 = (*(v350 + 272))();
      }

      v353 = v351;
      *&v464 = v352;
      v463 = a6;
      v354 = *&v457 + v455 * (a6 / sinval);
      v355 = v456 + v454 * (a6 / sinval);
      v356 = *&v466;
      v357 = *&v466 * v344;
      v358 = *(v18 + 32);
      v359 = *(v18 + 40);
      v483.origin.x = 0.0;
      v483.origin.y = 0.0;
      v483.size.width = v358;
      v483.size.height = v359;
      v360 = CGRectGetMinX(v483);
      v484.origin.x = 0.0;
      v484.origin.y = 0.0;
      v484.size.width = v358;
      v484.size.height = v359;
      v361 = v360 + v353 * CGRectGetWidth(v484);
      v485.origin.x = 0.0;
      v485.origin.y = 0.0;
      v485.size.width = v358;
      v485.size.height = v359;
      v362 = CGRectGetMinY(v485);
      v486.origin.x = 0.0;
      v486.origin.y = 0.0;
      v486.size.width = v358;
      v486.size.height = v359;
      v363 = CGRectGetHeight(v486);
      v364 = v356 * v361;
      v365 = v356 * (v362 + *&v464 * v363);
      a6 = v357;
      v366 = v354 - v364;
      v367 = v355 - (v365 - v453 * v364);
      v368 = *(v18 + 16);
      v369 = *(v18 + 24);
      v371 = *(v18 + 32);
      v370 = *(v18 + 40);
      v487.origin.x = v366;
      v487.origin.y = v367;
      v372 = *&v465;
      *&v487.size.width = v465;
      v487.size.height = a6;
      v373 = CGRectIsNull(v487);
      v488.origin.x = v368;
      v488.origin.y = v369;
      v488.size.width = v371;
      v488.size.height = v370;
      v374 = CGRectIsNull(v488);
      if (v373)
      {
        v375 = v374 == 0;
      }

      else
      {
        v375 = 1;
      }

      if (!v375 || ((v376 = vabdd_f64(v366, v368), v373 == v374) ? (v377 = v376 < 2.0) : (v377 = 0), (v378 = vabdd_f64(v367, v369), v377) ? (v379 = v378 < 2.0) : (v379 = 0), (v380 = vabdd_f64(v372, v371), v379) ? (v381 = v380 < 2.0) : (v381 = 0), (v382 = vabdd_f64(a6, v370), v381) ? (v383 = v382 < 2.0) : (v383 = 0), v383))
      {
        v366 = *(v18 + 16);
        v367 = *(v18 + 24);
        v372 = *(v18 + 32);
        a6 = *(v18 + 40);
      }

      v384 = floor(v366 + v366);
      v385 = ceil(v366 + v366);
      if (v366 + v366 - v384 < 0.49)
      {
        v8 = v384;
      }

      else
      {
        v8 = v385;
      }

      v386 = floor(v367 + v367);
      v387 = ceil(v367 + v367);
      if (v367 + v367 - v386 < 0.49)
      {
        v9 = v386;
      }

      else
      {
        v9 = v387;
      }

      if (v10)
      {
        specialized Array._checkIndex(_:)(0, v7);
        specialized Array._checkIndex(_:)(v10, v7);
        specialized _ArrayBuffer.subscript.getter(0, v10, v7);
        v10 = v27;
        v21 = v388;
        v17 = v389;
        *&v467 = v27;
        *(&v467 + 1) = v388;
        *&v468 = v389;
        *(&v468 + 1) = v390;
        v7 = v390 >> 1;
        while (1)
        {
          v16 = v7;
          if (v17 == v7)
          {
            break;
          }

          --v7;
          if (__OFSUB__(v16, 1))
          {
            __break(1u);
LABEL_527:
            __break(1u);
            goto LABEL_528;
          }

          if (v7 < v17)
          {
            goto LABEL_527;
          }

          a4 = *(v21 + 8 * v7);
          type metadata accessor for ReflowWord();
          *&v27 = COERCE_DOUBLE(swift_dynamicCastClass());
          if (*&v27 != 0.0)
          {
            goto LABEL_472;
          }
        }

        *&v7 = 0.0;
LABEL_472:
        v391 = a6;
        MEMORY[0x1EEE9AC00](v27);
        v431 = &v467;
        v393 = _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8PaperKit13ReflowElementCTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v430, v7, v392);
        swift_unknownObjectRelease();
        if (!v393)
        {
          *&v7 = cosval;
          v16 = v450;
          goto LABEL_477;
        }

        type metadata accessor for ReflowWord();
        v394 = swift_dynamicCastClass();
        *&v7 = cosval;
        v395 = v463;
        if (!v394)
        {
        }

        v16 = v450;
      }

      else
      {
        v391 = a6;
LABEL_477:
        v395 = v463;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        *&v20 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 16) + 1, 1, v20));
      }

      v21 = *(v20 + 16);
      v396 = *(v20 + 24);
      v17 = v21 + 1;
      if (v21 >= v396 >> 1)
      {
        *&v20 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v396 > 1), v21 + 1, 1, v20));
      }

      *&v27 = COERCE_DOUBLE();
      *(v20 + 16) = *&v17;
      v397 = (v20 + 32 * v21);
      v397[4] = v8 * 0.5;
      v397[5] = v9 * 0.5;
      v397[6] = v372;
      v397[7] = v391;
      a6 = v395 + v372;
      v10 = v19;
      if (v19 == *&v462)
      {
        goto LABEL_488;
      }
    }
  }

  *&v20 = MEMORY[0x1E69E7CC0];
LABEL_488:

  Array<A>.applyFrames(_:lineIndex:)(v20, v16, v448);

  *&v20 = v442;
  if (specialized Array._getCount()(*&v442))
  {
    v8 = v446 - *(v461 + 32);
    if (v8 < v437)
    {
      goto LABEL_490;
    }

    v17 = v20 & 0xC000000000000001;
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v20 & 0xC000000000000001) == 0, v20);
    if ((v20 & 0xC000000000000001) == 0)
    {

      goto LABEL_494;
    }

    goto LABEL_570;
  }

  specialized Array.append(_:)(v398);
}

uint64_t outlined destroy of ReflowSpacingAdjustment?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit23ReflowSpacingAdjustmentVSgMd, &_s8PaperKit23ReflowSpacingAdjustmentVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL specialized ReflowTextLine.addLayoutAndApply(_:textScalePercentage:span:hardHeadIndent:softHeadIndent:canCompress:canOverflow:isWholeLine:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5, CGFloat a6)
{
  v8 = v6;
  v133 = a5;
  v134 = a4;
  *&v152 = a3;
  v12 = *v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D405CEB0;
  *(inited + 32) = a1;
  v154[0] = v12;

  v129[5] = a1;

  v14 = v154;
  specialized Array.append<A>(contentsOf:)(inited);
  v15 = v154[0];
  v147 = *(v8 + 160);
  v16 = *(v8 + 40);
  v17 = *(v8 + 48);
  v19 = *(v8 + 56);
  v18 = *(v8 + 64);
  v130 = v8;
  v20 = v154[0] >> 62;
  if (v154[0] >> 62)
  {
    v21 = __CocoaSet.count.getter();
    if (!v21)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v21 = *((v154[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v21)
    {
LABEL_11:

      v26 = v15;
      goto LABEL_12;
    }
  }

  v22 = v21 - 1;
  if (__OFSUB__(v21, 1))
  {
LABEL_175:
    __break(1u);
    goto LABEL_176;
  }

  if ((v15 & 0xC000000000000001) == 0)
  {
    if ((v22 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v22 < *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v23 = *(v15 + 8 * v22 + 32);

      goto LABEL_8;
    }

    __break(1u);
LABEL_179:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_160:
    v22 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v15 = *(v7 + 2);
    if (!v15)
    {
      goto LABEL_172;
    }

    v20 = v7;
    v96 = *v14;
    v21 = *v14 & 0xFFFFFFFFFFFFFF8;
    if (*v14 >> 62)
    {
      goto LABEL_183;
    }

    v121 = *((*v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_163:
    v122 = 0;
    v123 = v147;
    v124 = (v20 + 48);
    while (v122 < *(v20 + 16))
    {
      if (v121 == v122)
      {
        goto LABEL_172;
      }

      v125 = *v124;
      v153 = *(v124 - 1);
      v152 = v125;
      if ((*&v96 & 0xC000000000000001) != 0)
      {
        v126 = MEMORY[0x1DA6CE0C0](v122, *&v96);
      }

      else
      {
        if (v122 >= *(v21 + 16))
        {
          goto LABEL_174;
        }
      }

      ++v122;
      v127 = v152;
      *(v126 + 48) = v153;
      *(v126 + 64) = v127;
      *(v126 + 80) = v123;

      v124 += 2;
      if (v15 == v122)
      {
        goto LABEL_172;
      }
    }

    __break(1u);
LABEL_174:
    __break(1u);
    goto LABEL_175;
  }

LABEL_176:
  v24 = MEMORY[0x1DA6CE0C0](v22, v15);
  v23 = v24;
LABEL_8:
  v25 = (*(*v23 + 144))(v24);

  if ((v25 & 1) == 0)
  {
    goto LABEL_11;
  }

  v26 = specialized Sequence.dropLast(_:)(1, v15);
LABEL_12:
  if (v26 >> 62)
  {
LABEL_157:
    v27 = __CocoaSet.count.getter();
  }

  else
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v137 = v21;
  v136 = v20;
  if (!v27)
  {
    v35 = 0.0;
    v34 = a6 + 0.0;
    goto LABEL_35;
  }

  v28 = 0;
  v21 = v26 & 0xC000000000000001;
  v20 = v26 & 0xFFFFFFFFFFFFFF8;
  v29 = 0.0;
  while (!v21)
  {
    if (v28 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
      goto LABEL_157;
    }

    v31 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      goto LABEL_23;
    }

LABEL_19:
    v32 = *(v30 + 32);

    v29 = v29 + v32;
    ++v28;
    if (v31 == v27)
    {
      goto LABEL_24;
    }
  }

  v30 = MEMORY[0x1DA6CE0C0](v28, v26);
  v31 = v28 + 1;
  if (!__OFADD__(v28, 1))
  {
    goto LABEL_19;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  v33 = 0;
  v34 = v29 + a6;
  v35 = 0.0;
  while (2)
  {
    if (v21)
    {
      v36 = MEMORY[0x1DA6CE0C0](v33, v26);
      v37 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      goto LABEL_28;
    }

    if (v33 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_152;
    }

    v36 = *(v26 + 8 * v33 + 32);

    v37 = v33 + 1;
    if (!__OFADD__(v33, 1))
    {
LABEL_28:
      v38 = (*(*v36 + 152))();

      v35 = v35 + v38;
      ++v33;
      if (v37 == v27)
      {
        goto LABEL_33;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_33:
  v21 = v137;
  v20 = v136;
LABEL_35:
  *&v153 = a2 / 100.0;
  v39 = *&v153 * (v34 + v133);

  v40 = v134 - *&v152;
  v148 = 0.0;
  if (v134 - *&v152 >= v39)
  {
LABEL_38:
    if (!v21)
    {
      goto LABEL_121;
    }
  }

  else
  {
    if (v39 - v40 > a6)
    {
      v148 = fmin((v39 - a6 - v40) / (v39 - a6 - *&v153 * (v35 + v133)), 1.0);
      a6 = 0.0;
      goto LABEL_38;
    }

    a6 = a6 - (v39 - v40);
    if (!v21)
    {
LABEL_121:
      *&v7 = MEMORY[0x1E69E7CC0];
LABEL_122:

      v107 = MEMORY[0x1E69E7CC0];
      goto LABEL_146;
    }
  }

  v41 = 1.0 - v148;
  v42 = *&v153;
  v144 = *&v153 * v16;
  v143 = *&v153 * v17;
  v43 = sqrt((v19 - v16) * (v19 - v16) + (v18 - v17) * (v18 - v17));
  v141 = (v18 - v17) / v43;
  v142 = (v19 - v16) / v43;
  v44 = atan2(v141, v142);
  v145 = v41;
  v45 = v41 * (v42 * a6) + *&v152;
  v149 = v15 & 0xC000000000000001;
  v46 = v15 & 0xFFFFFFFFFFFFFF8;
  v138 = v15 + 32;
  v47 = __sincos_stret(v44);
  sinval = v47.__sinval;
  cosval = v47.__cosval;
  v48 = 0;
  a2 = 0;
  if (v15 < 0)
  {
    v49 = v15;
  }

  else
  {
    v49 = v15 & 0xFFFFFFFFFFFFFF8;
  }

  v135 = v49;
  v131 = v46 + 32;
  v132 = v134 + 0.1;
  *&v7 = MEMORY[0x1E69E7CC0];
  v146 = v15 & 0xFFFFFFFFFFFFFF8;
  while (2)
  {
    if (v149)
    {
      v50 = MEMORY[0x1DA6CE0C0](v48, v15);
      if (__OFADD__(v48, 1))
      {
        goto LABEL_153;
      }
    }

    else
    {
      if (v48 >= *(v46 + 16))
      {
        goto LABEL_154;
      }

      v50 = *(v138 + 8 * v48);

      if (__OFADD__(v48, 1))
      {
        goto LABEL_153;
      }
    }

    v51 = v50[5];
    v52 = *&v153;
    v53 = v145 * (*&v153 * v50[4]);
    v54 = v53 + v148 * (v52 * (*(*v50 + 152))());
    if (!v48)
    {
      v55 = v134 - v54;
      if (v134 - v54 >= v133)
      {
        v55 = v133;
      }

      if (v55 < 0.0)
      {
        v55 = 0.0;
      }

      v45 = v45 + v55;
    }

    v56 = *(v50 + 15);
    v57 = *v50;
    v151 = v54;
    if (v147 == v56)
    {
      (*(v57 + 240))();
    }

    else
    {
      v58 = (*(v57 + 272))();
    }

    v60 = v58;
    v150 = v59;
    *&v152 = v45;
    v61 = v144 + v142 * (v45 / cosval);
    v62 = v143 + v141 * (v45 / cosval);
    v63 = *&v153;
    v64 = *&v153 * v51;
    v65 = v50[4];
    v66 = v50[5];
    v155.origin.x = 0.0;
    v155.origin.y = 0.0;
    v155.size.width = v65;
    v155.size.height = v66;
    MinX = CGRectGetMinX(v155);
    v156.origin.x = 0.0;
    v156.origin.y = 0.0;
    v156.size.width = v65;
    v156.size.height = v66;
    v68 = MinX + v60 * CGRectGetWidth(v156);
    v157.origin.x = 0.0;
    v157.origin.y = 0.0;
    v157.size.width = v65;
    v157.size.height = v66;
    MinY = CGRectGetMinY(v157);
    v158.origin.x = 0.0;
    v158.origin.y = 0.0;
    v158.size.width = v65;
    v158.size.height = v66;
    Height = CGRectGetHeight(v158);
    v71 = v63 * v68;
    v72 = v63 * (MinY + v150 * Height);
    v73 = v64;
    v74 = v61 - v71;
    v75 = v62 - (v72 - sinval * v71);
    v76 = v50[2];
    v16 = v50[3];
    a6 = v50[4];
    v17 = v50[5];
    v159.origin.x = v74;
    v159.origin.y = v75;
    v19 = v151;
    v159.size.width = v151;
    v159.size.height = v73;
    IsNull = CGRectIsNull(v159);
    v160.origin.x = v76;
    v160.origin.y = v16;
    v160.size.width = a6;
    v160.size.height = v17;
    v78 = CGRectIsNull(v160);
    if (IsNull)
    {
      v79 = v78 == 0;
    }

    else
    {
      v79 = 1;
    }

    if (!v79 || ((v80 = vabdd_f64(v74, v76), IsNull == v78) ? (v81 = v80 < 2.0) : (v81 = 0), (v82 = vabdd_f64(v75, v16), v81) ? (v83 = v82 < 2.0) : (v83 = 0), (v84 = vabdd_f64(v19, a6), v83) ? (v85 = v84 < 2.0) : (v85 = 0), (v86 = vabdd_f64(v73, v17), v85) ? (v87 = v86 < 2.0) : (v87 = 0), v87))
    {
      v74 = v50[2];
      v75 = v50[3];
      v19 = v50[4];
      v73 = v50[5];
    }

    v88 = floor(v74 + v74);
    v89 = ceil(v74 + v74);
    if (v74 + v74 - v88 < 0.49)
    {
      v90 = v88;
    }

    else
    {
      v90 = v89;
    }

    v91 = floor(v75 + v75);
    v92 = ceil(v75 + v75);
    if (v75 + v75 - v91 < 0.49)
    {
      v18 = v91;
    }

    else
    {
      v18 = v92;
    }

    if (!v48)
    {
      v95 = 0;
      v96 = *&v7;
      v93 = *&v152;
      goto LABEL_107;
    }

    v93 = *&v152;
    if (v20)
    {
      v21 = v135;
      if (__CocoaSet.count.getter() < 0)
      {
        goto LABEL_156;
      }

      v94 = __CocoaSet.count.getter();
    }

    else
    {
      v94 = *(v46 + 16);
      v21 = v135;
    }

    if (v94 < v48)
    {
      goto LABEL_155;
    }

    v151 = *&v7;
    if (!v149)
    {

      if (!v20)
      {
        goto LABEL_92;
      }

      goto LABEL_94;
    }

    type metadata accessor for ReflowElement();

    v97 = 0;
    do
    {
      v98 = v97 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v97);
      v97 = v98;
    }

    while (v48 != v98);
    if (v20)
    {
LABEL_94:

      v97 = _CocoaArrayWrapper.subscript.getter();
      v46 = v97;
      v26 = v101;
      v99 = v102;
      goto LABEL_95;
    }

LABEL_92:
    v99 = 0;
    v26 = v131;
    v100 = (2 * v48) | 1;
LABEL_95:
    v154[0] = v46;
    v154[1] = v26;
    v20 = v100 >> 1;
    v154[2] = v99;
    v154[3] = v100;
    while (1)
    {
      v21 = v20;
      if (v99 == v20)
      {
        break;
      }

      --v20;
      if (__OFSUB__(v21, 1))
      {
        __break(1u);
LABEL_150:
        __break(1u);
        goto LABEL_151;
      }

      if (v20 < v99)
      {
        goto LABEL_150;
      }

      type metadata accessor for ReflowWord();
      v97 = swift_dynamicCastClass();
      if (v97)
      {
        goto LABEL_102;
      }
    }

    v20 = 0;
LABEL_102:
    MEMORY[0x1EEE9AC00](v97);
    v129[2] = v154;
    v104 = _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8PaperKit13ReflowElementCTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v129, v20, v103);
    swift_unknownObjectRelease();
    if (v104)
    {
      type metadata accessor for ReflowWord();
      v95 = swift_dynamicCastClass();
      v21 = v137;
      v20 = v136;
      if (!v95)
      {
      }
    }

    else
    {
      v95 = 0;
      v21 = v137;
      v20 = v136;
    }

    v96 = v151;
LABEL_107:
    if (((*(*v50 + 144))() & 1) != 0 || v132 >= v93 + v50[8] && (!v95 || *(v95 + 136) != 1))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v96 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(*&v96 + 16) + 1, 1, *&v96));
      }

      v26 = *(*&v96 + 16);
      v105 = *(*&v96 + 24);
      *&v7 = v96;
      if (v26 >= v105 >> 1)
      {
        *&v7 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v105 > 1), v26 + 1, 1, *&v96));
      }

      ++v48;

      *(v7 + 2) = v26 + 1;
      v106 = &v7[32 * v26];
      v106[4] = v90 * 0.5;
      v106[5] = v18 * 0.5;
      v106[6] = v19;
      v106[7] = v73;
      v45 = v93 + v19;
      v46 = v146;
      if (v48 == v21)
      {
        goto LABEL_122;
      }

      continue;
    }

    break;
  }

  if (v21 < v48)
  {
    __break(1u);
    goto LABEL_181;
  }

  if (v20)
  {
    if (__CocoaSet.count.getter() < v48)
    {
      goto LABEL_181;
    }

    v108 = __CocoaSet.count.getter();
  }

  else
  {
    v108 = *(v146 + 16);
    if (v108 < v48)
    {
LABEL_181:
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      v22 = __CocoaSet.count.getter();
      v121 = v22;
      goto LABEL_163;
    }
  }

  if (v108 < v21)
  {
    goto LABEL_182;
  }

  if (v149)
  {
    type metadata accessor for ReflowElement();

    v109 = v48;
    do
    {
      v110 = v109 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v109);
      v109 = v110;
    }

    while (v21 != v110);
    if (!v20)
    {
LABEL_134:
      v111 = (2 * v21) | 1;
      goto LABEL_138;
    }
  }

  else
  {

    if (!v20)
    {
      goto LABEL_134;
    }
  }

  v146 = _CocoaArrayWrapper.subscript.getter();
  v131 = v113;
  v48 = v114;
  v111 = v115;
  if ((v115 & 1) == 0)
  {
LABEL_137:
    specialized _copyCollectionToContiguousArray<A>(_:)(v146, v131, v48, v111, v112);
    v117 = v116;

    swift_unknownObjectRelease();

    goto LABEL_145;
  }

LABEL_138:
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v118 = swift_dynamicCastClass();
  if (!v118)
  {
    swift_unknownObjectRelease();
    v118 = MEMORY[0x1E69E7CC0];
  }

  v119 = *(v118 + 16);

  if (__OFSUB__(v111 >> 1, v48))
  {
    __break(1u);
    goto LABEL_185;
  }

  if (v119 != (v111 >> 1) - v48)
  {
LABEL_185:
    swift_unknownObjectRelease();
    goto LABEL_137;
  }

  v117 = swift_dynamicCastClass();

  if (!v117)
  {
    swift_unknownObjectRelease();
    v117 = MEMORY[0x1E69E7CC0];
  }

  swift_unknownObjectRelease();
LABEL_145:
  v107 = v117;
  *&v7 = MEMORY[0x1E69E7CC0];
LABEL_146:
  v14 = v130;
  if (v107 >> 62)
  {
    a2 = __CocoaSet.count.getter();

    if (a2)
    {
      goto LABEL_172;
    }

LABEL_159:

    MEMORY[0x1DA6CD190](v120);
    if (*((*v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_179;
    }

    goto LABEL_160;
  }

  a2 = *((v107 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!a2)
  {
    goto LABEL_159;
  }

LABEL_172:

  return a2 == 0;
}

char *specialized static ReflowTextLine.layoutBackwards(_:textScalePercentage:span:lineIndex:baseline:)(double a1, double a2, double a3, double a4, CGFloat a5, double a6, unint64_t *a7, unint64_t a8, uint64_t a9)
{
  v149 = a9;
  v137 = a2;
  v155 = a1;
  v16 = specialized _copyCollectionToContiguousArray<A>(_:)(a7);
  v17 = v16;
  LODWORD(v18) = v16 < 0 || (v16 & 0x4000000000000000) != 0;
  if (v18 == 1)
  {
    goto LABEL_160;
  }

  v19 = *(v16 + 16);
  if (!v19)
  {
    goto LABEL_161;
  }

LABEL_6:
  v151 = v17 & 0xC000000000000001;
  if ((v17 & 0xC000000000000001) == 0)
  {
    if (*(v17 + 16))
    {
      v20 = *(v17 + 32);

      goto LABEL_9;
    }

    goto LABEL_164;
  }

LABEL_162:

  v20 = MEMORY[0x1DA6CE0C0](0, v17);
LABEL_9:
  v21 = v20[2];
  v22 = v20[3];
  v24 = v20[4];
  v23 = v20[5];

  v157.origin.x = v21;
  v157.origin.y = v22;
  v157.size.width = v24;
  v157.size.height = v23;
  v25 = v137 - CGRectGetMaxX(v157);
  if (v25 < 0.0)
  {
    v25 = 0.0;
  }

  v135 = v25;
  v26 = v19 - 1;
  if (__OFSUB__(v19, 1))
  {
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    v10 = __CocoaSet.count.getter();
    goto LABEL_22;
  }

  if (v151)
  {
    v27 = MEMORY[0x1DA6CE0C0](v26, v17);
  }

  else
  {
    if ((v26 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
      goto LABEL_169;
    }

    if (v26 >= *(v17 + 16))
    {
      goto LABEL_167;
    }

    v27 = *(v17 + 8 * v26 + 32);
  }

  v139 = v19;
  v28 = (*(*v27 + 144))();

  if (v28)
  {

    v9 = specialized Sequence.dropLast(_:)(1, v17);
  }

  else
  {

    v9 = v17;
  }

  if (v9 >> 62)
  {
    goto LABEL_165;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_22:
  v29 = 0.0;
  v30 = 0.0;
  if (!v10)
  {
    goto LABEL_41;
  }

  v31 = 0;
  v32 = v9 & 0xC000000000000001;
  v33 = 0.0;
  while (1)
  {
    if (!v32)
    {
      if (v31 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {

        v35 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        goto LABEL_27;
      }

LABEL_154:
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
      v19 = __CocoaSet.count.getter();
      if (v19)
      {
        goto LABEL_6;
      }

LABEL_161:
      __break(1u);
      goto LABEL_162;
    }

    v34 = MEMORY[0x1DA6CE0C0](v31, v9);
    v35 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

LABEL_27:
    v36 = *(v34 + 32);

    v33 = v33 + v36;
    ++v31;
    if (v35 == v10)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_32:
  v37 = 0;
  v30 = 0.0;
  v29 = v33 + 0.0;
  while (2)
  {
    if (v32)
    {
      v38 = MEMORY[0x1DA6CE0C0](v37, v9);
      v39 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      goto LABEL_36;
    }

    if (v37 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_155;
    }

    v38 = *(v9 + 8 * v37 + 32);

    v39 = v37 + 1;
    if (!__OFADD__(v37, 1))
    {
LABEL_36:
      v40 = (*(*v38 + 152))();

      v30 = v30 + v40;
      ++v37;
      if (v39 == v10)
      {
        goto LABEL_41;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_41:
  v41 = sqrt((a5 - a3) * (a5 - a3) + (a6 - a4) * (a6 - a4));
  v42 = (a5 - a3) / v41;
  v43 = (a6 - a4) / v41;
  v44 = v137;
  v45 = v42 * v137 + a3;
  a5 = v43 * v137 + a4;
  v153 = a4 - v43;
  v154 = a3 - v42;
  a4 = a8 / 100.0;
  a3 = v155;
  a6 = v135;
  v46 = a4 * (v135 + v29);

  v47 = v44 - a3;
  v48 = v46 - (v44 - a3);
  v49 = v48 > 0.0;
  v50 = fmin(v48 / (v46 - a4 * (a6 + v30)), 1.0);
  v51 = 0.0 - v48;
  if (v49)
  {
    v51 = 0.0;
  }

  else
  {
    v50 = 0.0;
  }

  v52 = v47 < v46;
  if (v47 < v46)
  {
    v53 = v50;
  }

  else
  {
    v53 = 0.0;
  }

  if (v52)
  {
    v54 = v51;
  }

  else
  {
    v54 = 0.0;
  }

  v148 = v53;
  v147 = 1.0 - v53;
  v55 = (1.0 - v53) * (a4 * v54) + a3;
  v146 = a4 * v45;
  v155 = a8 / 100.0;
  v145 = a4 * a5;
  v56 = v154;
  v57 = sqrt((v56 - v45) * (v56 - v45) + (v153 - a5) * (v153 - a5));
  v144 = (v154 - v45) / v57;
  v143 = (v153 - a5) / v57;
  v58 = sqrt((v45 - v56) * (v45 - v56) + (a5 - v153) * (a5 - v153));
  v59 = atan2((a5 - v153) / v58, (v45 - v154) / v58);
  v140 = v17 + 32;
  v60 = __sincos_stret(v59);
  sinval = v60.__sinval;
  cosval = v60.__cosval;
  v10 = 0;
  a8 = 0;
  v61 = MEMORY[0x1E69E7CC0];
  v136 = v44 + 0.1;
  v9 = v139;
  v138 = v18;
  while (2)
  {
    if (v151)
    {
      v62 = MEMORY[0x1DA6CE0C0](v10, v17);
      if (__OFADD__(v10, 1))
      {
        goto LABEL_156;
      }
    }

    else
    {
      if (v10 >= *(v17 + 16))
      {
        goto LABEL_158;
      }

      v62 = *(v140 + 8 * v10);

      if (__OFADD__(v10, 1))
      {
        goto LABEL_156;
      }
    }

    v63 = v62[5];
    v64 = v155;
    v65 = v147 * (v155 * v62[4]);
    v66 = v65 + v148 * (v64 * (*(*v62 + 152))());
    if (!v10)
    {
      v67 = v137 - v66;
      if (v137 - v66 >= v135)
      {
        v67 = v135;
      }

      if (v67 < 0.0)
      {
        v67 = 0.0;
      }

      v55 = v55 + v67;
    }

    v68 = *(v62 + 15);
    v69 = *v62;
    v153 = v66;
    if (v68 == v149)
    {
      (*(v69 + 240))();
    }

    else
    {
      (*(v69 + 272))();
    }

    v72 = v70;
    v152 = v71;
    v154 = v55;
    v73 = v146 + v144 * (v55 / cosval);
    v74 = v145 + v143 * (v55 / cosval);
    v75 = v155;
    v76 = v155 * v63;
    v77 = v62[4];
    v78 = v62[5];
    v158.origin.x = 0.0;
    v158.origin.y = 0.0;
    v158.size.width = v77;
    v158.size.height = v78;
    MinX = CGRectGetMinX(v158);
    v159.origin.x = 0.0;
    v159.origin.y = 0.0;
    v159.size.width = v77;
    v159.size.height = v78;
    v80 = MinX + v72 * CGRectGetWidth(v159);
    v160.origin.x = 0.0;
    v160.origin.y = 0.0;
    v160.size.width = v77;
    v160.size.height = v78;
    MinY = CGRectGetMinY(v160);
    v161.origin.x = 0.0;
    v161.origin.y = 0.0;
    v161.size.width = v77;
    v161.size.height = v78;
    Height = CGRectGetHeight(v161);
    v83 = v75 * v80;
    v84 = v75 * (MinY + v152 * Height);
    v85 = v76;
    v86 = v73 - v83;
    a5 = v74 - (v84 - sinval * v83);
    v88 = v62[2];
    v87 = v62[3];
    v89 = v62[4];
    v90 = v62[5];
    v162.origin.x = v86;
    v162.origin.y = a5;
    a3 = v153;
    v162.size.width = v153;
    v162.size.height = v85;
    IsNull = CGRectIsNull(v162);
    v163.origin.x = v88;
    v163.origin.y = v87;
    v163.size.width = v89;
    v163.size.height = v90;
    v92 = CGRectIsNull(v163);
    if (IsNull)
    {
      v93 = v92 == 0;
    }

    else
    {
      v93 = 1;
    }

    if (!v93 || ((v94 = vabdd_f64(v86, v88), IsNull == v92) ? (v95 = v94 < 2.0) : (v95 = 0), (v96 = vabdd_f64(a5, v87), v95) ? (v97 = v96 < 2.0) : (v97 = 0), (v98 = vabdd_f64(a3, v89), v97) ? (v99 = v98 < 2.0) : (v99 = 0), (v100 = vabdd_f64(v85, v90), v99) ? (v101 = v100 < 2.0) : (v101 = 0), v101))
    {
      v86 = v62[2];
      a5 = v62[3];
      a3 = v62[4];
      v85 = v62[5];
    }

    a4 = v85;
    v102 = floor(v86 + v86);
    v103 = ceil(v86 + v86);
    if (v86 + v86 - v102 < 0.49)
    {
      v104 = v102;
    }

    else
    {
      v104 = v103;
    }

    v105 = floor(a5 + a5);
    v106 = ceil(a5 + a5);
    if (a5 + a5 - v105 < 0.49)
    {
      a6 = v105;
    }

    else
    {
      a6 = v106;
    }

    if (!v10)
    {
      v109 = 0;
      v107 = v154;
      goto LABEL_117;
    }

    v107 = v154;
    if (v18)
    {
      if (__CocoaSet.count.getter() < 0)
      {
        goto LABEL_159;
      }

      v108 = __CocoaSet.count.getter();
    }

    else
    {
      v108 = *(v17 + 16);
    }

    if (v108 < v10)
    {
      goto LABEL_157;
    }

    if (!v151)
    {

      v150 = v61;
      if (v18)
      {
        goto LABEL_103;
      }

      goto LABEL_105;
    }

    type metadata accessor for ReflowElement();

    v110 = 0;
    do
    {
      v111 = v110 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v110);
      v110 = v111;
    }

    while (v10 != v111);
    v150 = v61;
    if (!v18)
    {
LABEL_105:
      v18 = 0;
      v113 = v17;
      v9 = v140;
      v112 = (2 * v10) | 1;
      goto LABEL_106;
    }

LABEL_103:

    v110 = _CocoaArrayWrapper.subscript.getter();
    v113 = v110;
    v9 = v114;
    v18 = v115;
LABEL_106:
    v156[0] = v113;
    v156[1] = v9;
    v116 = v112 >> 1;
    v156[2] = v18;
    v156[3] = v112;
    while (1)
    {
      v117 = v116;
      if (v18 == v116)
      {
        break;
      }

      --v116;
      if (__OFSUB__(v117, 1))
      {
        __break(1u);
LABEL_153:
        __break(1u);
        goto LABEL_154;
      }

      if (v116 < v18)
      {
        goto LABEL_153;
      }

      type metadata accessor for ReflowWord();
      v110 = swift_dynamicCastClass();
      if (v110)
      {
        goto LABEL_113;
      }
    }

    v116 = 0;
LABEL_113:
    MEMORY[0x1EEE9AC00](v110);
    v134[2] = v156;
    v119 = _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8PaperKit13ReflowElementCTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v134, v116, v118);
    swift_unknownObjectRelease();
    if (v119)
    {
      type metadata accessor for ReflowWord();
      v109 = swift_dynamicCastClass();
      LODWORD(v18) = v138;
      v9 = v139;
      v61 = v150;
      if (!v109)
      {
      }
    }

    else
    {
      v109 = 0;
      LODWORD(v18) = v138;
      v9 = v139;
      v61 = v150;
    }

LABEL_117:
    if (((*(*v62 + 144))() & 1) != 0 || v136 >= v107 + v62[8] && (!v109 || *(v109 + 136) != 1))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v61 + 2) + 1, 1, v61);
      }

      v121 = *(v61 + 2);
      v120 = *(v61 + 3);
      if (v121 >= v120 >> 1)
      {
        v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v120 > 1), v121 + 1, 1, v61);
      }

      ++v10;

      *(v61 + 2) = v121 + 1;
      v122 = &v61[32 * v121];
      v122[4] = v104 * 0.5;
      v122[5] = a6 * 0.5;
      v122[6] = a3;
      v122[7] = a4;
      v55 = v107 + a3;
      if (v10 == v9)
      {

        return specialized Sequence.reversed()(v61);
      }

      continue;
    }

    break;
  }

  if (v9 < v10)
  {
    goto LABEL_168;
  }

  if (v18)
  {
    if (__CocoaSet.count.getter() >= v10)
    {
      a8 = __CocoaSet.count.getter();
      goto LABEL_132;
    }

LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

  a8 = *(v17 + 16);
  if (a8 < v10)
  {
    goto LABEL_169;
  }

LABEL_132:

  if (a8 < v9)
  {
    goto LABEL_170;
  }

  if (v151)
  {
    type metadata accessor for ReflowElement();

    v123 = v10;
    do
    {
      v124 = v123 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v123);
      v123 = v124;
    }

    while (v9 != v124);
  }

  else
  {
  }

  if (!v18)
  {
    a8 = (2 * v9) | 1;
    goto LABEL_143;
  }

  v125 = _CocoaArrayWrapper.subscript.getter();
  v140 = v126;
  v10 = v127;
  a8 = v128;

  v17 = v125;
  if (a8)
  {
LABEL_143:
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v130 = swift_dynamicCastClass();
    if (!v130)
    {
      swift_unknownObjectRelease();
      v130 = MEMORY[0x1E69E7CC0];
    }

    v131 = *(v130 + 16);

    if (__OFSUB__(a8 >> 1, v10))
    {
      goto LABEL_171;
    }

    if (v131 == (a8 >> 1) - v10)
    {
      v132 = swift_dynamicCastClass();

      swift_unknownObjectRelease();
      if (!v132)
      {
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
      goto LABEL_150;
    }

LABEL_172:
    swift_unknownObjectRelease_n();
  }

  specialized _copyCollectionToContiguousArray<A>(_:)(v17, v140, v10, a8, v129);
  swift_unknownObjectRelease();

LABEL_150:
  v61 = MEMORY[0x1E69E7CC0];
  return specialized Sequence.reversed()(v61);
}

void specialized static ReflowTextLine.layoutTextAdjustingBackwards(_:textScalePercentage:spacingAdjustment:lineIndex:baseline:previousLine:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, __n128 a6, double MaxX, CGFloat a8, double a9)
{
  v153 = a5;
  v154 = a2;
  v15 = a6.n128_f64[0];
  v17 = a1;
  v158 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_94;
  }

  v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v19 = MEMORY[0x1E69E7CC0];
    if (!v18)
    {
      v22 = MEMORY[0x1E69E7CC0];
      goto LABEL_75;
    }

    if (*(a3 + 32) < 0.0)
    {
      v11 = 0.0;
    }

    else
    {
      v11 = *(a3 + 32);
    }

    v21 = specialized static ReflowTextLine.layoutBackwards(_:textScalePercentage:span:lineIndex:baseline:)(0.0, v11, v15, MaxX, a8, a9, v20, v154, a4);

    v10 = *(v21 + 2);
    if (!v10)
    {
      while (1)
      {
        v30 = v19;

        v31 = v17 >> 62;
        if (v17 >> 62)
        {
          v32 = __CocoaSet.count.getter();
          if (!v32)
          {
            goto LABEL_88;
          }
        }

        else
        {
          v32 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v32)
          {
            goto LABEL_88;
          }
        }

        v9 = v17 & 0xC000000000000001;
        if ((v17 & 0xC000000000000001) != 0)
        {
          v33 = MEMORY[0x1DA6CE0C0](0, v17);
        }

        else
        {
          if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_89;
          }
        }

        MEMORY[0x1DA6CD190](v33);
        if (*((v158 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v158 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        if (v32 < 0)
        {
          goto LABEL_241;
        }

        v22 = v158;
        if (v31)
        {
          if (__CocoaSet.count.getter() < 1)
          {
            goto LABEL_90;
          }

          v34 = __CocoaSet.count.getter();
        }

        else
        {
          v34 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v34)
          {
            goto LABEL_90;
          }
        }

        if (v34 < v32)
        {
          goto LABEL_91;
        }

        if (!v9 || v32 == 1)
        {
        }

        else
        {
          type metadata accessor for ReflowElement();

          v35 = 1;
          do
          {
            v36 = v35 + 1;
            _ArrayBuffer._typeCheckSlowPath(_:)(v35);
            v35 = v36;
          }

          while (v32 != v36);
        }

        if (v31)
        {
          _CocoaArrayWrapper.subscript.getter();
          v38 = v41;
          v43 = v42;

          v9 = v43 >> 1;
          if ((v43 & 1) == 0)
          {
LABEL_50:
            v10 = v9 - v38;
            if (__OFSUB__(v9, v38))
            {
              goto LABEL_92;
            }

            if (v10)
            {
              goto LABEL_52;
            }

LABEL_63:
            v17 = MEMORY[0x1E69E7CC0];
LABEL_64:
            v19 = v30;
LABEL_65:
            swift_unknownObjectRelease();
            goto LABEL_66;
          }
        }

        else
        {
          v37 = (2 * v32) | 1;
          v38 = 1;
          v9 = v37 >> 1;
          if ((v37 & 1) == 0)
          {
            goto LABEL_50;
          }
        }

        v17 = type metadata accessor for __ContiguousArrayStorageBase();
        swift_unknownObjectRetain_n();
        v39 = swift_dynamicCastClass();
        if (!v39)
        {
          swift_unknownObjectRelease();
          v39 = MEMORY[0x1E69E7CC0];
        }

        v40 = *(v39 + 16);

        v10 = v9 - v38;
        if (__OFSUB__(v9, v38))
        {
          goto LABEL_93;
        }

        if (v40 != v10)
        {
          swift_unknownObjectRelease_n();
          if (!v10)
          {
            goto LABEL_63;
          }

LABEL_52:
          if (v10 < 1)
          {
            v17 = MEMORY[0x1E69E7CC0];
            if (v38 == v9)
            {
              goto LABEL_242;
            }
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
            v17 = swift_allocObject();
            v44 = _swift_stdlib_malloc_size_0(v17);
            v45 = v44 - 32;
            if (v44 < 32)
            {
              v45 = v44 - 25;
            }

            *(v17 + 16) = v10;
            *(v17 + 24) = (2 * (v45 >> 3)) | 1;
            if (v38 == v9)
            {
              goto LABEL_242;
            }
          }

          type metadata accessor for ReflowElement();
          swift_arrayInitWithCopy();
          goto LABEL_64;
        }

        v17 = swift_dynamicCastClass();
        swift_unknownObjectRelease_n();
        v19 = v30;
        if (!v17)
        {
          v17 = MEMORY[0x1E69E7CC0];
          goto LABEL_65;
        }

LABEL_66:
        if ((v17 & 0x8000000000000000) != 0 || (v17 & 0x4000000000000000) != 0)
        {
          if (!__CocoaSet.count.getter())
          {
LABEL_72:

            goto LABEL_75;
          }
        }

        else if (!*(v17 + 16))
        {
          goto LABEL_72;
        }

        v21 = specialized static ReflowTextLine.layoutBackwards(_:textScalePercentage:span:lineIndex:baseline:)(0.0, v11, v15, MaxX, a8, a9, v17, v154, a4);

        v10 = *(v21 + 2);
        if (v10)
        {
          goto LABEL_9;
        }
      }
    }

    v22 = MEMORY[0x1E69E7CC0];
LABEL_9:
    v23 = *(v153 + 160);
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
    }

    else
    {
      v9 = v17 & 0xFFFFFFFFFFFFFF8;
      if (!(v17 >> 62))
      {
        a4 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_12;
      }
    }

    a4 = __CocoaSet.count.getter();
LABEL_12:
    v25 = 0;
    a9 = v24;
    v26 = (v21 + 48);
    do
    {
      if (v25 >= *(v21 + 2))
      {
        goto LABEL_86;
      }

      if (a4 == v25)
      {
        break;
      }

      v27 = *(v26 - 1);
      v155 = *v26;
      v156 = v27;
      if ((v17 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x1DA6CE0C0](v25, v17);
      }

      else
      {
        if (v25 >= *(v9 + 16))
        {
          goto LABEL_87;
        }
      }

      ++v25;
      v29 = v155;
      *(v28 + 48) = v156;
      *(v28 + 64) = v29;
      *(v28 + 80) = a9;

      v26 += 2;
    }

    while (v10 != v25);

    v19 = MEMORY[0x1E69E7CC0];
LABEL_75:
    v151 = v22 >> 62;
    if (v22 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_220;
      }
    }

    else if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_220;
    }

    v46 = *v153;
    if (*v153 >> 62)
    {
      break;
    }

    v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v47)
    {
      goto LABEL_98;
    }

LABEL_79:
    v48 = __OFSUB__(v47, 1);
    v49 = v47 - 1;
    if (v48)
    {
      __break(1u);
LABEL_234:
      v50 = MEMORY[0x1DA6CE0C0](v49, v46);
      goto LABEL_84;
    }

    if ((v46 & 0xC000000000000001) != 0)
    {
      goto LABEL_234;
    }

    if ((v49 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_236:
      __break(1u);
LABEL_237:
      __break(1u);
      goto LABEL_238;
    }

    if (v49 >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_237;
    }

LABEL_84:
    a9 = *(v50 + 48);
    a8 = *(v50 + 56);
    v51 = *(v50 + 64);
    v15 = *(v50 + 72);

    v159.origin.x = a9;
    v159.origin.y = a8;
    v159.size.width = v51;
    v159.size.height = v15;
    MaxX = CGRectGetMaxX(v159);
    if (MaxX <= 1.79769313e308)
    {
      goto LABEL_99;
    }

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
LABEL_94:
    v52 = a3;
    v18 = __CocoaSet.count.getter();
    a3 = v52;
  }

  v47 = __CocoaSet.count.getter();
  if (v47)
  {
    goto LABEL_79;
  }

LABEL_98:
  MaxX = 0.0;
LABEL_99:
  v150 = *(v153 + 160);
  a9 = *(v153 + 40);
  a8 = *(v153 + 48);
  v15 = *(v153 + 56);
  v11 = *(v153 + 64);
  if (v151)
  {
    v10 = __CocoaSet.count.getter();
    if (!v10)
    {
      goto LABEL_109;
    }
  }

  else
  {
    v10 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
LABEL_109:

      v56 = v22;
      goto LABEL_110;
    }
  }

  v49 = v10 - 1;
  if (__OFSUB__(v10, 1))
  {
    goto LABEL_236;
  }

  if ((v22 & 0xC000000000000001) == 0)
  {
    if ((v49 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v49 < *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v53 = *(v22 + 8 * v49 + 32);

      goto LABEL_106;
    }

    __break(1u);
LABEL_241:
    __break(1u);
LABEL_242:
    __break(1u);
    return;
  }

LABEL_238:
  v54 = MEMORY[0x1DA6CE0C0](v49, v22);
  v53 = v54;
LABEL_106:
  v55 = (*(*v53 + 144))(v54);

  if ((v55 & 1) == 0)
  {
    goto LABEL_109;
  }

  v56 = specialized Sequence.dropLast(_:)(1, v22);
LABEL_110:
  if (v56 >> 62)
  {
    goto LABEL_134;
  }

  v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v57)
  {
    while (1)
    {
      v58 = 0;
      v59 = v56 & 0xC000000000000001;
      while (v59)
      {
        MEMORY[0x1DA6CE0C0](v58, v56);
        swift_unknownObjectRelease();
        v48 = __OFADD__(v58++, 1);
        if (v48)
        {
          __break(1u);
LABEL_122:
          v60 = 0;
          while (1)
          {
            if (v59)
            {
              v61 = MEMORY[0x1DA6CE0C0](v60, v56);
              v62 = v60 + 1;
              if (__OFADD__(v60, 1))
              {
                goto LABEL_130;
              }
            }

            else
            {
              if (v60 >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_133;
              }

              v61 = *(v56 + 8 * v60 + 32);

              v62 = v60 + 1;
              if (__OFADD__(v60, 1))
              {
LABEL_130:
                __break(1u);
LABEL_131:
                __break(1u);
                goto LABEL_132;
              }
            }

            (*(*v61 + 152))();

            ++v60;
            if (v62 == v57)
            {
              goto LABEL_135;
            }
          }
        }

LABEL_117:
        if (v58 == v57)
        {
          goto LABEL_122;
        }
      }

      if ((v58 & 0x8000000000000000) != 0)
      {
        goto LABEL_131;
      }

      if (v58 < *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      v57 = __CocoaSet.count.getter();
      if (!v57)
      {
        goto LABEL_135;
      }
    }

    ++v58;
    goto LABEL_117;
  }

LABEL_135:

  if (!v10)
  {
    v129 = *(v19 + 2);
    if (v129)
    {
LABEL_210:
      v131 = 0;
      v132 = v150;
      v133 = (v19 + 48);
      while (v131 < *(v19 + 2))
      {
        if (v10 == v131)
        {
          goto LABEL_219;
        }

        v134 = *(v133 - 1);
        v155 = *v133;
        v156 = v134;
        if ((v22 & 0xC000000000000001) != 0)
        {
          v135 = MEMORY[0x1DA6CE0C0](v131, v22);
        }

        else
        {
          if (v131 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_227;
          }
        }

        ++v131;
        v136 = v155;
        *(v135 + 48) = v156;
        *(v135 + 64) = v136;
        *(v135 + 80) = v132;

        v133 += 2;
        if (v129 == v131)
        {
          goto LABEL_219;
        }
      }

      goto LABEL_226;
    }

LABEL_219:

LABEL_220:
    if (v151)
    {
      goto LABEL_230;
    }

    goto LABEL_221;
  }

  v63 = v154 / 100.0;
  v147 = v63 * a9;
  v146 = v63 * a8;
  v64 = sqrt((v15 - a9) * (v15 - a9) + (v11 - a8) * (v11 - a8));
  v144 = (v11 - a8) / v64;
  v145 = (v15 - a9) / v64;
  v65 = atan2(v144, v145);
  v148 = v63;
  v66 = v63 * 0.0 + MaxX;
  v153 = v22 & 0xC000000000000001;
  v140 = v22 + 32;
  v67 = __sincos_stret(v65);
  sinval = v67.__sinval;
  cosval = v67.__cosval;
  v68 = 0;
  if ((v22 & 0x8000000000000000) != 0)
  {
    v69 = v22;
  }

  else
  {
    v69 = v22 & 0xFFFFFFFFFFFFFF8;
  }

  v149 = v69;
  v152 = v22 & 0xFFFFFFFFFFFFFF8;
  v138 = (v22 & 0xFFFFFFFFFFFFFF8) + 32;
  v19 = MEMORY[0x1E69E7CC0];
  v141 = 0.49;
  v139 = v10;
  while (v153)
  {
    v70 = MEMORY[0x1DA6CE0C0](v68, v22);
    if (__OFADD__(v68, 1))
    {
      goto LABEL_224;
    }

LABEL_143:
    v72 = *(v70 + 32);
    v71 = *(v70 + 40);
    v73 = (*(*v70 + 152))();
    if (!v68)
    {
      v66 = v66 + 0.0;
    }

    v74 = *v70;
    if (v150 == *(v70 + 120))
    {
      (*(v74 + 240))();
    }

    else
    {
      v75 = (*(v74 + 272))();
    }

    v77 = v75;
    *&v156 = v76;
    v78 = v148;
    *&v155 = v78 * v72 + v78 * v73 * 0.0;
    *&v154 = v66;
    v79 = v147 + v145 * (v66 / cosval);
    v80 = v146 + v144 * (v66 / cosval);
    v81 = v148 * v71;
    v82 = *(v70 + 32);
    v83 = *(v70 + 40);
    v160.origin.x = 0.0;
    v160.origin.y = 0.0;
    v160.size.width = v82;
    v160.size.height = v83;
    MinX = CGRectGetMinX(v160);
    v161.origin.x = 0.0;
    v161.origin.y = 0.0;
    v161.size.width = v82;
    v161.size.height = v83;
    v85 = MinX + v77 * CGRectGetWidth(v161);
    v162.origin.x = 0.0;
    v162.origin.y = 0.0;
    v162.size.width = v82;
    v162.size.height = v83;
    MinY = CGRectGetMinY(v162);
    v163.origin.x = 0.0;
    v163.origin.y = 0.0;
    v163.size.width = v82;
    v163.size.height = v83;
    Height = CGRectGetHeight(v163);
    v88 = v78 * v85;
    v89 = v79 - v78 * v85;
    v90 = v80 - (v78 * (MinY + *&v156 * Height) - sinval * v88);
    v91 = *&v155;
    v93 = *(v70 + 16);
    v92 = *(v70 + 24);
    v95 = *(v70 + 32);
    v94 = *(v70 + 40);
    v164.origin.x = v89;
    v164.origin.y = v90;
    *&v164.size.width = v155;
    v164.size.height = v81;
    IsNull = CGRectIsNull(v164);
    v165.origin.x = v93;
    v165.origin.y = v92;
    v165.size.width = v95;
    v165.size.height = v94;
    v97 = CGRectIsNull(v165);
    if (IsNull)
    {
      v98 = v97 == 0;
    }

    else
    {
      v98 = 1;
    }

    if (!v98 || ((v99 = vabdd_f64(v89, v93), IsNull == v97) ? (v100 = v99 < 2.0) : (v100 = 0), (v101 = vabdd_f64(v90, v92), v100) ? (v102 = v101 < 2.0) : (v102 = 0), (v103 = vabdd_f64(v91, v95), v102) ? (v104 = v103 < 2.0) : (v104 = 0), (v105 = vabdd_f64(v81, v94), v104) ? (v106 = v105 < 2.0) : (v106 = 0), v106))
    {
      v89 = *(v70 + 16);
      v90 = *(v70 + 24);
      v91 = *(v70 + 32);
      v81 = *(v70 + 40);
    }

    v107 = floor(v89 + v89);
    v108 = ceil(v89 + v89);
    if (v89 + v89 - v107 < v141)
    {
      v109 = v107;
    }

    else
    {
      v109 = v108;
    }

    v110 = floor(v90 + v90);
    v111 = ceil(v90 + v90);
    if (v90 + v90 - v110 < v141)
    {
      v112 = v110;
    }

    else
    {
      v112 = v111;
    }

    if (v68)
    {
      if (v151)
      {
        if (__CocoaSet.count.getter() < 0)
        {
          goto LABEL_229;
        }

        v113 = __CocoaSet.count.getter();
      }

      else
      {
        v113 = *(v152 + 16);
      }

      if (v113 < v68)
      {
        goto LABEL_228;
      }

      if (v153)
      {
        type metadata accessor for ReflowElement();

        v114 = 0;
        do
        {
          v115 = v114 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v114);
          v114 = v115;
        }

        while (v68 != v115);
      }

      else
      {
      }

      *&v156 = v19;
      if (v151)
      {

        v114 = _CocoaArrayWrapper.subscript.getter();
        v117 = v114;
        v118 = v120;
        v116 = v121;
      }

      else
      {
        v116 = 0;
        v117 = v152;
        v118 = v138;
        v119 = (2 * v68) | 1;
      }

      v157[0] = v117;
      v157[1] = v118;
      v122 = v119 >> 1;
      v157[2] = v116;
      v157[3] = v119;
      while (1)
      {
        v123 = v122;
        if (v116 == v122)
        {
          break;
        }

        --v122;
        if (__OFSUB__(v123, 1))
        {
          __break(1u);
LABEL_223:
          __break(1u);
          goto LABEL_224;
        }

        if (v122 < v116)
        {
          goto LABEL_223;
        }

        type metadata accessor for ReflowWord();
        v114 = swift_dynamicCastClass();
        if (v114)
        {
          goto LABEL_196;
        }
      }

      v122 = 0;
LABEL_196:
      MEMORY[0x1EEE9AC00](v114);
      v137[2] = v157;
      v125 = _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8PaperKit13ReflowElementCTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v137, v122, v124);
      swift_unknownObjectRelease();
      if (v125)
      {
        type metadata accessor for ReflowWord();
        v126 = swift_dynamicCastClass();
        v19 = v156;
        if (!v126)
        {
        }
      }

      else
      {
        v19 = v156;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 2) + 1, 1, v19);
    }

    v128 = *(v19 + 2);
    v127 = *(v19 + 3);
    v129 = v128 + 1;
    if (v128 >= v127 >> 1)
    {
      v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v127 > 1), v128 + 1, 1, v19);
    }

    ++v68;

    *(v19 + 2) = v129;
    v130 = &v19[32 * v128];
    v130[4] = v109 * 0.5;
    v130[5] = v112 * 0.5;
    v130[6] = v91;
    v130[7] = v81;
    v66 = *&v154 + v91;
    v10 = v139;
    if (v68 == v139)
    {
      goto LABEL_210;
    }
  }

  if (v68 >= *(v152 + 16))
  {
    goto LABEL_225;
  }

  v70 = *(v140 + 8 * v68);

  if (!__OFADD__(v68, 1))
  {
    goto LABEL_143;
  }

LABEL_224:
  __break(1u);
LABEL_225:
  __break(1u);
LABEL_226:
  __break(1u);
LABEL_227:
  __break(1u);
LABEL_228:
  __break(1u);
LABEL_229:
  __break(1u);
LABEL_230:
  __CocoaSet.count.getter();
LABEL_221:
}

char *specialized static ReflowTextLine.layout(_:textScalePercentage:span:lineIndex:baseline:hardHeadIndent:softHeadIndent:canCompress:canOverflow:isWholeLine:isReversed:)(unint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5, int a6, int a7, double a8, double a9, CGFloat a10, CGFloat a11, double a12, double a13, double a14, double a15)
{
  v142 = a7;
  v123 = a6;
  LODWORD(v17) = a5;
  v140 = a3;
  v124 = a14;
  v125 = a9;
  v147 = a8;
  v25 = a1;
  v143 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_34;
  }

  v26 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v128 = v26;
  if (!v26)
  {
    goto LABEL_11;
  }

  v27 = v128 - 1;
  if (__OFSUB__(v128, 1))
  {
LABEL_157:
    __break(1u);
  }

  else if ((v25 & 0xC000000000000001) == 0)
  {
    if (v27 < 0)
    {
      __break(1u);
    }

    else if (v27 < *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v28 = *(v25 + 8 * v27 + 32);

      goto LABEL_9;
    }

    __break(1u);
LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
    goto LABEL_164;
  }

  v29 = MEMORY[0x1DA6CE0C0](v27, v25);
  v28 = v29;
LABEL_9:
  v30 = (*(*v28 + 144))(v29);

  if ((v30 & 1) == 0)
  {
LABEL_11:

    v31 = v25;
    goto LABEL_12;
  }

  v31 = specialized Sequence.dropLast(_:)(1, v25);
LABEL_12:
  LODWORD(v146) = v17;
  if (v31 >> 62)
  {
    v15 = __CocoaSet.count.getter();
    if (v15)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v15 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
LABEL_14:
      v32 = 0;
      v33 = v31 & 0xC000000000000001;
      v16 = v31 & 0xFFFFFFFFFFFFFF8;
      v34 = 0.0;
      while (1)
      {
        if (v33)
        {
          v35 = MEMORY[0x1DA6CE0C0](v32, v31);
          v17 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
LABEL_22:
            __break(1u);
LABEL_23:
            v17 = 0;
            v37 = v34 + a15;
            v38 = 0.0;
            while (1)
            {
              if (v33)
              {
                v39 = MEMORY[0x1DA6CE0C0](v17, v31);
                v40 = v17 + 1;
                if (__OFADD__(v17, 1))
                {
                  goto LABEL_31;
                }
              }

              else
              {
                if (v17 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_33;
                }

                v39 = *(v31 + 8 * v17 + 32);

                v40 = v17 + 1;
                if (__OFADD__(v17, 1))
                {
LABEL_31:
                  __break(1u);
                  goto LABEL_32;
                }
              }

              v41 = (*(*v39 + 152))();

              v38 = v38 + v41;
              ++v17;
              if (v40 == v15)
              {
                goto LABEL_37;
              }
            }
          }
        }

        else
        {
          if (v32 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_32:
            __break(1u);
LABEL_33:
            __break(1u);
LABEL_34:
            v26 = __CocoaSet.count.getter();
            goto LABEL_3;
          }

          v17 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            goto LABEL_22;
          }
        }

        v36 = *(v35 + 32);

        v34 = v34 + v36;
        ++v32;
        if (v17 == v15)
        {
          goto LABEL_23;
        }
      }
    }
  }

  v38 = 0.0;
  v37 = a15 + 0.0;
LABEL_37:
  v42 = a2 / 100.0;

  v141 = 0.0;
  if (a4)
  {
    v43 = v42 * (v37 + v124);
    v44 = v125 - v147;
    a2 = v128;
    v45 = v42;
    if (v125 - v147 < v43)
    {
      if (v43 - v44 <= a15)
      {
        a15 = a15 - (v43 - v44);
      }

      else
      {
        v141 = fmin((v43 - a15 - v44) / (v43 - a15 - v42 * (v38 + v124)), 1.0);
        a15 = 0.0;
      }
    }
  }

  else
  {
    a2 = v128;
    v45 = v42;
  }

  v46 = sqrt((a12 - a10) * (a12 - a10) + (a13 - a11) * (a13 - a11));
  v138 = (a13 - a11) / v46;
  v139 = (a12 - a10) / v46;
  v47 = atan2(v138, v139);
  if (v142)
  {
    v48 = sqrt((a10 - a12) * (a10 - a12) + (a11 - a13) * (a11 - a13));
    v47 = atan2((a11 - a13) / v48, (a10 - a12) / v48);
  }

  if (!a2)
  {
    *&v51 = MEMORY[0x1E69E7CC0];
    return v51;
  }

  v136 = 1.0 - v141;
  a13 = (1.0 - v141) * (v45 * a15) + v147;
  v135 = v45 * a10;
  v134 = v45 * a11;
  v144 = v25 & 0xC000000000000001;
  v15 = v25 & 0xFFFFFFFFFFFFFF8;
  v130 = v25 + 32;
  v49 = __sincos_stret(v47);
  sinval = v49.__sinval;
  cosval = v49.__cosval;
  v16 = 0;
  a4 = 0;
  if ((v25 & 0x8000000000000000) != 0)
  {
    v50 = v25;
  }

  else
  {
    v50 = v25 & 0xFFFFFFFFFFFFFF8;
  }

  v127 = v50;
  v122 = v15 + 32;
  v129 = LODWORD(v146) ^ 1;
  v121 = v125 + 0.1;
  *&v51 = MEMORY[0x1E69E7CC0];
  v131 = 0.49;
  v126 = v25 & 0xFFFFFFFFFFFFFF8;
  v137 = v45;
  while (1)
  {
    if (v144)
    {
      v27 = MEMORY[0x1DA6CE0C0](v16, v25);
      v52 = v27;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_153;
      }
    }

    else
    {
      if (v16 >= *(v15 + 16))
      {
        goto LABEL_154;
      }

      v52 = *(v130 + 8 * v16);

      if (__OFADD__(v16, 1))
      {
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
        goto LABEL_157;
      }
    }

    v53 = v52[5];
    v54 = v136 * (v45 * v52[4]);
    v55 = v54 + v141 * (v45 * (*(*v52 + 152))());
    if (!v16)
    {
      v56 = v125 - v55;
      if (v125 - v55 >= v124)
      {
        v56 = v124;
      }

      if (v56 < 0.0)
      {
        v56 = 0.0;
      }

      a13 = a13 + v56;
    }

    v57 = *(v52 + 15);
    v58 = *v52;
    v146 = v55;
    if (v57 == v140)
    {
      (*(v58 + 240))();
      if ((v142 & 1) == 0)
      {
        goto LABEL_61;
      }
    }

    else
    {
      (*(v58 + 272))();
      if ((v142 & 1) == 0)
      {
LABEL_61:
        v63 = v59;
        v145 = v60;
        goto LABEL_64;
      }
    }

    v63 = v61;
    v145 = v62;
LABEL_64:
    v147 = a13;
    v64 = v135 + v139 * (a13 / cosval);
    v65 = v134 + v138 * (a13 / cosval);
    v66 = v45 * v53;
    v67 = v45;
    v68 = v52[4];
    v69 = v52[5];
    v149.origin.x = 0.0;
    v149.origin.y = 0.0;
    v149.size.width = v68;
    v149.size.height = v69;
    MinX = CGRectGetMinX(v149);
    v150.origin.x = 0.0;
    v150.origin.y = 0.0;
    v150.size.width = v68;
    v150.size.height = v69;
    v71 = MinX + v63 * CGRectGetWidth(v150);
    v151.origin.x = 0.0;
    v151.origin.y = 0.0;
    v151.size.width = v68;
    v151.size.height = v69;
    MinY = CGRectGetMinY(v151);
    v152.origin.x = 0.0;
    v152.origin.y = 0.0;
    v152.size.width = v68;
    v152.size.height = v69;
    v73 = v67 * (MinY + v145 * CGRectGetHeight(v152));
    v74 = v64 - v67 * v71;
    v75 = v65 - (v73 - sinval * (v67 * v71));
    v77 = v52[2];
    v76 = v52[3];
    a10 = v52[4];
    a11 = v52[5];
    v153.origin.x = v74;
    v153.origin.y = v75;
    a15 = v146;
    v153.size.width = v146;
    v153.size.height = v66;
    IsNull = CGRectIsNull(v153);
    v154.origin.x = v77;
    v154.origin.y = v76;
    v154.size.width = a10;
    v154.size.height = a11;
    v79 = CGRectIsNull(v154);
    if (IsNull && (v79 & 1) != 0 || ((v80 = vabdd_f64(v74, v77), IsNull == v79) ? (v81 = v80 < 2.0) : (v81 = 0), (v82 = vabdd_f64(v75, v76), v81) ? (v83 = v82 < 2.0) : (v83 = 0), (v84 = vabdd_f64(a15, a10), v83) ? (v85 = v84 < 2.0) : (v85 = 0), (v86 = vabdd_f64(v66, a11), v85) ? (v87 = v86 < 2.0) : (v87 = 0), v87))
    {
      v74 = v52[2];
      v75 = v52[3];
      a15 = v52[4];
      v66 = v52[5];
    }

    v88 = v66;
    v89 = floor(v74 + v74);
    v90 = ceil(v74 + v74);
    if (v74 + v74 - v89 < v131)
    {
      v91 = v89;
    }

    else
    {
      v91 = v90;
    }

    v92 = floor(v75 + v75);
    v93 = ceil(v75 + v75);
    if (v75 + v75 - v92 < v131)
    {
      a12 = v92;
    }

    else
    {
      a12 = v93;
    }

    if (!v16)
    {
      v94 = 0;
      v95 = v123;
      v45 = v137;
      a13 = v147;
      goto LABEL_112;
    }

    v45 = v137;
    a13 = v147;
    if (v143)
    {
      a2 = v127;
      v27 = __CocoaSet.count.getter();
      if (v27 < 0)
      {
        goto LABEL_156;
      }

      v27 = __CocoaSet.count.getter();
    }

    else
    {
      v27 = *(v15 + 16);
      a2 = v127;
    }

    if (v27 < v16)
    {
      goto LABEL_155;
    }

    v146 = *&v51;
    if (v144)
    {
      type metadata accessor for ReflowElement();

      v96 = 0;
      do
      {
        v97 = v96 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v96);
        v96 = v97;
      }

      while (v16 != v97);
      if (!v143)
      {
LABEL_97:
        v98 = 0;
        v99 = v15;
        a2 = v122;
        v100 = (2 * v16) | 1;
        goto LABEL_100;
      }
    }

    else
    {

      if (!v143)
      {
        goto LABEL_97;
      }
    }

    v96 = _CocoaArrayWrapper.subscript.getter();
    v99 = v96;
    a2 = v101;
    v98 = v102;
LABEL_100:
    v148[0] = v99;
    v148[1] = a2;
    v103 = v100 >> 1;
    v148[2] = v98;
    v148[3] = v100;
    while (1)
    {
      v104 = v103;
      if (v98 == v103)
      {
        break;
      }

      --v103;
      if (__OFSUB__(v104, 1))
      {
        __break(1u);
LABEL_140:
        __break(1u);
        goto LABEL_141;
      }

      if (v103 < v98)
      {
        goto LABEL_140;
      }

      v15 = *(a2 + 8 * v103);
      type metadata accessor for ReflowWord();
      v96 = swift_dynamicCastClass();
      if (v96)
      {
        goto LABEL_107;
      }
    }

    v103 = 0;
LABEL_107:
    MEMORY[0x1EEE9AC00](v96);
    v120[2] = v148;
    v106 = _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8PaperKit13ReflowElementCTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v120, v103, v105);
    swift_unknownObjectRelease();
    if (v106)
    {
      type metadata accessor for ReflowWord();
      v94 = swift_dynamicCastClass();
      a2 = v128;
      v15 = v126;
      *&v51 = v146;
      if (!v94)
      {
      }

      v95 = 0;
    }

    else
    {
      v95 = 0;
      v94 = 0;
      a2 = v128;
      v15 = v126;
      *&v51 = v146;
    }

LABEL_112:
    if (((v95 | v129) & 1) == 0 && ((*(*v52 + 144))() & 1) == 0 && (v121 < a13 + v52[8] || v94 && *(v94 + 136) == 1))
    {
      break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      *&v51 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v51 + 2) + 1, 1, v51));
    }

    v17 = *(v51 + 2);
    v107 = *(v51 + 3);
    if (v17 >= v107 >> 1)
    {
      *&v51 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v107 > 1), v17 + 1, 1, v51));
    }

    ++v16;

    *(v51 + 2) = v17 + 1;
    v108 = &v51[32 * v17];
    *(v108 + 4) = v91 * 0.5;
    *(v108 + 5) = a12 * 0.5;
    *(v108 + 6) = a15;
    *(v108 + 7) = v88;
    a13 = a13 + a15;
    if (v16 == a2)
    {
      return v51;
    }
  }

  if (a2 < v16)
  {
    goto LABEL_161;
  }

  if (v143)
  {
    if (__CocoaSet.count.getter() < v16)
    {
      goto LABEL_162;
    }

    v109 = __CocoaSet.count.getter();
  }

  else
  {
    v109 = *(v15 + 16);
    if (v109 < v16)
    {
      goto LABEL_162;
    }
  }

  if (v109 < a2)
  {
    goto LABEL_163;
  }

  if (v144)
  {
    type metadata accessor for ReflowElement();

    v110 = v16;
    do
    {
      v111 = v110 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v110);
      v110 = v111;
    }

    while (a2 != v111);
    if (!v143)
    {
LABEL_138:
      v25 = (2 * a2) | 1;
      goto LABEL_144;
    }
  }

  else
  {
LABEL_141:

    if (!v143)
    {
      goto LABEL_138;
    }
  }

  v15 = _CocoaArrayWrapper.subscript.getter();
  v122 = v113;
  v16 = v114;
  v25 = v115;
  if ((v115 & 1) == 0)
  {
    goto LABEL_143;
  }

LABEL_144:
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v116 = swift_dynamicCastClass();
  if (!v116)
  {
    swift_unknownObjectRelease();
    v116 = MEMORY[0x1E69E7CC0];
  }

  v117 = *(v116 + 16);

  if (!__OFSUB__(v25 >> 1, v16))
  {
    if (v117 != (v25 >> 1) - v16)
    {
      goto LABEL_165;
    }

    v118 = swift_dynamicCastClass();

    if (!v118)
    {
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    goto LABEL_151;
  }

LABEL_164:
  __break(1u);
LABEL_165:
  swift_unknownObjectRelease();
LABEL_143:
  specialized _copyCollectionToContiguousArray<A>(_:)(v15, v122, v16, v25, v112);
  swift_unknownObjectRelease();

LABEL_151:
  *&v51 = MEMORY[0x1E69E7CC0];
  return v51;
}

uint64_t ContentsBounds.bounds.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ContentsBounds(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of ContentsBounds(v2, v6);
  result = swift_getEnumCaseMultiPayload();
  v8 = result;
  if (result)
  {
    result = outlined destroy of ContentsBounds(v6);
    v9 = 0uLL;
    v10 = 0uLL;
  }

  else
  {
    v9 = *v6;
    v10 = v6[1];
  }

  *a1 = v9;
  *(a1 + 16) = v10;
  *(a1 + 32) = v8 != 0;
  return result;
}

uint64_t outlined init with copy of ContentsBounds(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentsBounds(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ContentsBounds(uint64_t a1)
{
  v2 = type metadata accessor for ContentsBounds(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ContentsBounds.quad.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ContentsBounds(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of ContentsBounds(v2, v6);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    v8 = 0;
    v11[0] = 0;
    v9 = v6[1];
    *a1 = *v6;
    *(a1 + 16) = v9;
    v10 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v10;
  }

  else
  {
    result = outlined destroy of ContentsBounds(v6);
    v8 = 1;
    v11[8] = 1;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
  }

  *(a1 + 64) = v8;
  return result;
}

uint64_t ContentsBounds.unknown.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ContentsBounds(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ContentsBounds(v2, v6);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd, &_sSi_9Coherence10AnyCRValueVtMR) + 48);
    v8 = type metadata accessor for AnyCRValue();
    v9 = *(v8 - 8);
    (*(v9 + 32))(a1, &v6[v7], v8);
    return (*(v9 + 56))(a1, 0, 1, v8);
  }

  else
  {
    outlined destroy of ContentsBounds(v6);
    v11 = type metadata accessor for AnyCRValue();
    return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }
}

uint64_t ContentsBounds.observableDifference(from:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v50 = a2;
  v53 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v48 - v10;
  v12 = type metadata accessor for CRValueObservableDifference();
  v51 = *(v12 - 8);
  v52 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v49 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v48 - v15;
  v17 = type metadata accessor for ContentsBounds(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v48 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsO_ACtMd, &_s8PaperKit14ContentsBoundsO_ACtMR);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v48 - v24;
  v27 = (&v48 + *(v26 + 56) - v24);
  outlined init with copy of ContentsBounds(v4, &v48 - v24);
  outlined init with copy of ContentsBounds(a1, v27);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined init with copy of ContentsBounds(v25, v19);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v29 = v27[1];
        v54 = *v27;
        v55 = v29;
        v30 = v27[3];
        v56 = v27[2];
        v57 = v30;
        v31 = v19[1];
        v58 = *v19;
        v59 = v31;
        v32 = v19[3];
        v60 = v19[2];
        v61 = v32;
        lazy protocol witness table accessor for type Quad and conformance Quad();
        lazy protocol witness table accessor for type Quad and conformance Quad();
        CRValue<>.observableDifference(from:with:)();
        v34 = v51;
        v33 = v52;
        if ((*(v51 + 48))(v8, 1, v52) != 1)
        {
          v35 = *(v34 + 32);
          v36 = v49;
          v35(v49, v8, v33);
          v37 = v53;
          v35(v53, v36, v33);
          v38 = type metadata accessor for ContentsBounds.ObservableDifference(0);
LABEL_13:
          swift_storeEnumTagMultiPayload();
          (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
          return outlined destroy of ContentsBounds(v25);
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
    outlined init with copy of ContentsBounds(v25, v22);
    if (!swift_getEnumCaseMultiPayload())
    {
      v42 = v22[1];
      v58 = *v22;
      v59 = v42;
      v43 = v27[1];
      v54 = *v27;
      v55 = v43;
      type metadata accessor for CGRect(0);
      _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_7(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
      _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_7(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect, MEMORY[0x1E695EF78]);
      CRValue<>.observableDifference(from:with:)();
      v45 = v51;
      v44 = v52;
      if ((*(v51 + 48))(v11, 1, v52) != 1)
      {
        v47 = *(v45 + 32);
        v47(v16, v11, v44);
        v37 = v53;
        v47(v53, v16, v44);
        v38 = type metadata accessor for ContentsBounds.ObservableDifference(0);
        goto LABEL_13;
      }

      v8 = v11;
LABEL_11:
      outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
      outlined destroy of ContentsBounds(v25);
      v46 = type metadata accessor for ContentsBounds.ObservableDifference(0);
      return (*(*(v46 - 8) + 56))(v53, 1, 1, v46);
    }
  }

  v39 = type metadata accessor for ContentsBounds.ObservableDifference(0);
  v40 = v53;
  swift_storeEnumTagMultiPayload();
  (*(*(v39 - 8) + 56))(v40, 0, 1, v39);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v25, &_s8PaperKit14ContentsBoundsO_ACtMd, &_s8PaperKit14ContentsBoundsO_ACtMR);
}

uint64_t ContentsBounds.visitReferences(_:)(uint64_t a1)
{
  v2 = type metadata accessor for AnyCRValue();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ContentsBounds(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ContentsBounds(v1, v8);
  result = swift_getEnumCaseMultiPayload();
  if (result >= 2)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd, &_sSi_9Coherence10AnyCRValueVtMR);
    (*(v3 + 32))(v5, &v8[*(v10 + 48)], v2);
    AnyCRValue.visitReferences(_:)();
    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t ContentsBounds.copy(renamingReferences:)@<X0>(_OWORD *a2@<X8>)
{
  v4 = type metadata accessor for AnyCRValue();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ContentsBounds(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ContentsBounds(v2, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v12 = *(v10 + 1);
      *a2 = *v10;
      a2[1] = v12;
      v13 = *(v10 + 3);
      a2[2] = *(v10 + 2);
      a2[3] = v13;
    }

    else
    {
      v15 = *v10;
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd, &_sSi_9Coherence10AnyCRValueVtMR);
      (*(v5 + 32))(v7, &v10[*(v16 + 48)], v4);
      *a2 = v15;
      AnyCRValue.copy(renamingReferences:)();
      (*(v5 + 8))(v7, v4);
    }
  }

  else
  {
    v14 = *(v10 + 1);
    *a2 = *v10;
    a2[1] = v14;
  }

  return swift_storeEnumTagMultiPayload();
}

void ContentsBounds.init(from:)(uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ContentsBounds(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v18 - v8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v18 - v11);
  dispatch thunk of CRDecoder.valueContainer()();
  if (v2)
  {
  }

  else
  {
    v22 = a2;
    v13 = dispatch thunk of CRDecoder.CRValueContainer.decodeTaggedContainer()();

    if (v13 == 1)
    {
      lazy protocol witness table accessor for type Quad and conformance Quad();
      lazy protocol witness table accessor for type Quad and conformance Quad();
      CRValue<>.init(from:)();

      v16 = v19;
      *v9 = v18;
      v9[1] = v16;
      v17 = v21;
      v9[2] = v20;
      v9[3] = v17;
      swift_storeEnumTagMultiPayload();
      v15 = v9;
    }

    else if (v13)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd, &_sSi_9Coherence10AnyCRValueVtMR);
      *v6 = v13;
      AnyCRValue.init(from:)();

      swift_storeEnumTagMultiPayload();
      v15 = v6;
    }

    else
    {
      type metadata accessor for CGRect(0);
      _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_7(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
      _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_7(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
      CRValue<>.init(from:)();

      v14 = v19;
      *v12 = v18;
      v12[1] = v14;
      swift_storeEnumTagMultiPayload();
      v15 = v12;
    }

    outlined init with take of ContentsBounds(v15, v22);
  }
}

void ContentsBounds.encode(to:)()
{
  v2 = type metadata accessor for AnyCRValue();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ContentsBounds(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of CREncoder.valueContainer()();
  if (!v1)
  {
    outlined init with copy of ContentsBounds(v0, v8);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v12 = *(v8 + 1);
      v14 = *v8;
      v15 = v12;
      type metadata accessor for CGRect(0);
      _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_7(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
      dispatch thunk of CREncoder.CRValueContainer.encode<A>(_:)();
      goto LABEL_6;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v10 = *(v8 + 1);
      v14 = *v8;
      v15 = v10;
      v11 = *(v8 + 3);
      v16 = *(v8 + 2);
      v17 = v11;
      lazy protocol witness table accessor for type Quad and conformance Quad();
      dispatch thunk of CREncoder.CRValueContainer.encode<A>(_:)();
LABEL_6:
      dispatch thunk of CREncoder.CRValueContainer.encode(tag:)();

      return;
    }

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd, &_sSi_9Coherence10AnyCRValueVtMR);
    (*(v3 + 32))(v5, &v8[*(v13 + 48)], v2);
    dispatch thunk of CREncoder.CRValueContainer.encode<A>(_:)();
    dispatch thunk of CREncoder.CRValueContainer.encode(tag:)();

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t ContentsBounds.minEncodingVersion.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6995278];
  v3 = type metadata accessor for CRCodableVersion();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t protocol witness for CRType.visitReferences(_:) in conformance ContentsBounds(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AnyCRValue();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ContentsBounds(v2, v9);
  result = swift_getEnumCaseMultiPayload();
  if (result >= 2)
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd, &_sSi_9Coherence10AnyCRValueVtMR);
    (*(v4 + 32))(v6, &v9[*(v11 + 48)], v3);
    AnyCRValue.visitReferences(_:)();
    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t specialized static ContentsBounds.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyCRValue();
  v47 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v44 - v8;
  v9 = type metadata accessor for ContentsBounds(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v44 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v44 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsO_ACtMd, &_s8PaperKit14ContentsBoundsO_ACtMR);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v44 - v19;
  v22 = &v44 + *(v21 + 56) - v19;
  outlined init with copy of ContentsBounds(a1, &v44 - v19);
  outlined init with copy of ContentsBounds(a2, v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    outlined init with copy of ContentsBounds(v20, v17);
    if (!swift_getEnumCaseMultiPayload())
    {
      v34 = CGRectEqualToRect(*v17, *v22);
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload != 1)
  {
    outlined init with copy of ContentsBounds(v20, v11);
    v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd, &_sSi_9Coherence10AnyCRValueVtMR) + 48);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v45 = *v11;
      v36 = *v22;
      v37 = v47;
      v38 = *(v47 + 32);
      v39 = &v11[v35];
      v40 = v46;
      v38(v46, v39, v4);
      v38(v6, &v22[v35], v4);
      if (v45 == v36)
      {
        v34 = static AnyCRValue.== infix(_:_:)();
        v41 = *(v37 + 8);
        v41(v6, v4);
        v41(v40, v4);
        goto LABEL_10;
      }

      v43 = *(v37 + 8);
      v43(v6, v4);
      v43(v40, v4);
      outlined destroy of ContentsBounds(v20);
LABEL_13:
      v34 = 0;
      return v34 & 1;
    }

    (*(v47 + 8))(&v11[v35], v4);
LABEL_12:
    outlined destroy of StocksKitCurrencyCache.Provider?(v20, &_s8PaperKit14ContentsBoundsO_ACtMd, &_s8PaperKit14ContentsBoundsO_ACtMR);
    goto LABEL_13;
  }

  outlined init with copy of ContentsBounds(v20, v14);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_12;
  }

  v24 = *(v22 + 1);
  v48 = *v22;
  v49 = v24;
  v25 = *(v22 + 3);
  v50 = *(v22 + 2);
  v51 = v25;
  v26 = v14[1];
  v52 = *v14;
  v53 = v26;
  v27 = v14[3];
  v54 = v14[2];
  v55 = v27;
  v28 = Quad.rawValue.getter();
  v30 = v29;
  v31 = Quad.rawValue.getter();
  v33 = v32;
  v34 = specialized static Data.== infix(_:_:)(v28, v30, v31, v32);
  outlined consume of Data._Representation(v31, v33);
  outlined consume of Data._Representation(v28, v30);
LABEL_10:
  outlined destroy of ContentsBounds(v20);
  return v34 & 1;
}

uint64_t outlined init with take of ContentsBounds(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentsBounds(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata completion function for ContentsBounds(uint64_t a1)
{
  type metadata accessor for CGRect(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for (Int, AnyCRValue)(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

double specialized CanvasElementView.beginLiveEdit()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit7TextBoxVGSgMd, &_s9Coherence7CapsuleVy8PaperKit7TextBoxVGSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v27 - v6;
  v8 = MEMORY[0x1E69E7D40];
  v9 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x3F8);
  swift_beginAccess();
  outlined init with copy of Date?(&v0[v9], v7, &_s9Coherence7CapsuleVy8PaperKit7TextBoxVGSgMd, &_s9Coherence7CapsuleVy8PaperKit7TextBoxVGSgMR);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMd, &_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMR);
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v7, 1, v10);
  outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s9Coherence7CapsuleVy8PaperKit7TextBoxVGSgMd, &_s9Coherence7CapsuleVy8PaperKit7TextBoxVGSgMR);
  if (v12 == 1)
  {
    v14 = *((*v8 & *v0) + 0x3F0);
    swift_beginAccess();
    (*(v11 + 16))(v4, &v1[v14], v10);
    (*(v11 + 56))(v4, 0, 1, v10);
    swift_beginAccess();
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v4, &v1[v9], &_s9Coherence7CapsuleVy8PaperKit7TextBoxVGSgMd, &_s9Coherence7CapsuleVy8PaperKit7TextBoxVGSgMR);
    v15 = swift_endAccess();
    v16 = (*((*v8 & *v1) + 0x90))(v15);
    if (!v16)
    {
      goto LABEL_10;
    }

    v17 = v16;
    v18 = off_1F4F60E88;
    type metadata accessor for AnyCanvas(0);
    v19 = v18();
    v20 = AnyCanvas.isLiveEditing()();
    if (v20 == v17[OBJC_IVAR____TtC8PaperKit9AnyCanvas__isCurrentlyLiveEditing])
    {
      v17[OBJC_IVAR____TtC8PaperKit9AnyCanvas__isCurrentlyLiveEditing] = v20;
      if ((v19 & 1) == 0)
      {
LABEL_9:

LABEL_10:
        v22 = outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s9Coherence7CapsuleVy8PaperKit7TextBoxVGSgMd, &_s9Coherence7CapsuleVy8PaperKit7TextBoxVGSgMR);
        v23 = (*((*v8 & *v1) + 0x1A8))(v22);
        v24 = *((*v8 & *v1) + 0x418);
        v25 = *&v1[v24];
        *&v1[v24] = v23;

        if (os_variant_has_internal_ui())
        {
          type metadata accessor for PPKSignpost(0);
          swift_allocObject();
          PPKSignpost.init(name:identifier:message:)("PPKCanvasElementLiveEdit", 24, 2u, 0, 1, 0, 0);
          *&v1[*((*v8 & *v1) + 0x420)] = v26;
        }

        return result;
      }
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v27[1] = v27;
      MEMORY[0x1EEE9AC00](KeyPath);
      v27[-2] = v17;
      LOBYTE(v27[-1]) = v20;
      v27[3] = v17;
      lazy protocol witness table accessor for type TextBox and conformance TextBox(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas, &protocol conformance descriptor for AnyCanvas);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      if ((v19 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    if ((v18() & 1) == 0)
    {
      specialized LiveEditable.resumeLiveEditingContinuations()();
    }

    goto LABEL_9;
  }

  return result;
}

{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v27 - v6;
  v8 = MEMORY[0x1E69E7D40];
  v9 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x3F8);
  swift_beginAccess();
  outlined init with copy of Date?(&v0[v9], v7, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGSgMR);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGMR);
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v7, 1, v10);
  outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGSgMR);
  if (v12 == 1)
  {
    v14 = *((*v8 & *v0) + 0x3F0);
    swift_beginAccess();
    (*(v11 + 16))(v4, &v1[v14], v10);
    (*(v11 + 56))(v4, 0, 1, v10);
    swift_beginAccess();
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v4, &v1[v9], &_s9Coherence7CapsuleVy8PaperKit5ShapeVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGSgMR);
    v15 = swift_endAccess();
    v16 = (*((*v8 & *v1) + 0x90))(v15);
    if (!v16)
    {
      goto LABEL_10;
    }

    v17 = v16;
    v18 = off_1F4F60E88;
    type metadata accessor for AnyCanvas(0);
    v19 = v18();
    v20 = AnyCanvas.isLiveEditing()();
    if (v20 == v17[OBJC_IVAR____TtC8PaperKit9AnyCanvas__isCurrentlyLiveEditing])
    {
      v17[OBJC_IVAR____TtC8PaperKit9AnyCanvas__isCurrentlyLiveEditing] = v20;
      if ((v19 & 1) == 0)
      {
LABEL_9:

LABEL_10:
        v22 = outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGSgMR);
        v23 = (*((*v8 & *v1) + 0x1A8))(v22);
        v24 = *((*v8 & *v1) + 0x418);
        v25 = *&v1[v24];
        *&v1[v24] = v23;

        if (os_variant_has_internal_ui())
        {
          type metadata accessor for PPKSignpost(0);
          swift_allocObject();
          PPKSignpost.init(name:identifier:message:)("PPKCanvasElementLiveEdit", 24, 2u, 0, 1, 0, 0);
          *&v1[*((*v8 & *v1) + 0x420)] = v26;
        }

        return result;
      }
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v27[1] = v27;
      MEMORY[0x1EEE9AC00](KeyPath);
      v27[-2] = v17;
      LOBYTE(v27[-1]) = v20;
      v27[3] = v17;
      lazy protocol witness table accessor for type TextBox and conformance TextBox(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas, &protocol conformance descriptor for AnyCanvas);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      if ((v19 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    if ((v18() & 1) == 0)
    {
      specialized LiveEditable.resumeLiveEditingContinuations()();
    }

    goto LABEL_9;
  }

  return result;
}

uint64_t specialized Capsule<>.isFormField.getter()
{
  v0 = type metadata accessor for CRKeyPath();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Shape(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGMR);
  Capsule.root.getter();
  Capsule.rootID.getter();
  off_1F4F68468(v3, v4);
  (*(v1 + 8))(v3, v0);
  outlined destroy of TextBoxViewAttributes(v6, type metadata accessor for Shape);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
    v16 = 0u;
    v17 = 0u;
    v18 = 0;
    goto LABEL_7;
  }

  lazy protocol witness table accessor for type TextBox and conformance TextBox(&lazy protocol witness table cache variable for type Shape and conformance Shape, type metadata accessor for Shape, &protocol conformance descriptor for Shape);
  SharedTagged_10.subscript.getter();
  (*(v11 + 8))(v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13CanvasElement_pMd, &_s8PaperKit13CanvasElement_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit12ShapeTextBox_pMd, &_s8PaperKit12ShapeTextBox_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    goto LABEL_7;
  }

  if (!*(&v17 + 1))
  {
LABEL_7:
    outlined destroy of StocksKitCurrencyCache.Provider?(&v16, &_s8PaperKit12ShapeTextBox_pSgMd, &_s8PaperKit12ShapeTextBox_pSgMR);
    v14 = 0;
    return v14 & 1;
  }

  outlined init with take of PaperKitHashable(&v16, v19);
  v12 = v20;
  v13 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v14 = (*(v13 + 72))(v12, v13);
  __swift_destroy_boxed_opaque_existential_0(v19);
  return v14 & 1;
}

{
  v0 = type metadata accessor for CRKeyPath();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TextBox(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMd, &_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMR);
  Capsule.root.getter();
  Capsule.rootID.getter();
  off_1F4F5C860(v3, v9);
  (*(v1 + 8))(v3, v0);
  outlined destroy of TextBoxViewAttributes(v6, type metadata accessor for TextBox);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
    v16 = 0u;
    v17 = 0u;
    v18 = 0;
    goto LABEL_7;
  }

  lazy protocol witness table accessor for type TextBox and conformance TextBox(&lazy protocol witness table cache variable for type TextBox and conformance TextBox, type metadata accessor for TextBox, &protocol conformance descriptor for TextBox);
  SharedTagged_10.subscript.getter();
  (*(v11 + 8))(v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13CanvasElement_pMd, &_s8PaperKit13CanvasElement_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit12ShapeTextBox_pMd, &_s8PaperKit12ShapeTextBox_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    goto LABEL_7;
  }

  if (!*(&v17 + 1))
  {
LABEL_7:
    outlined destroy of StocksKitCurrencyCache.Provider?(&v16, &_s8PaperKit12ShapeTextBox_pSgMd, &_s8PaperKit12ShapeTextBox_pSgMR);
    v14 = 0;
    return v14 & 1;
  }

  outlined init with take of PaperKitHashable(&v16, v19);
  v12 = v20;
  v13 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v14 = (*(v13 + 72))(v12, v13);
  __swift_destroy_boxed_opaque_existential_0(v19);
  return v14 & 1;
}

uint64_t specialized Capsule<>.isFixedWidth.getter()
{
  v0 = type metadata accessor for CRKeyPath();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Shape(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGMR);
  Capsule.root.getter();
  Capsule.rootID.getter();
  off_1F4F68468(v3, v4);
  (*(v1 + 8))(v3, v0);
  outlined destroy of TextBoxViewAttributes(v6, type metadata accessor for Shape);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
    v16 = 0u;
    v17 = 0u;
    v18 = 0;
    goto LABEL_7;
  }

  lazy protocol witness table accessor for type TextBox and conformance TextBox(&lazy protocol witness table cache variable for type Shape and conformance Shape, type metadata accessor for Shape, &protocol conformance descriptor for Shape);
  SharedTagged_10.subscript.getter();
  (*(v11 + 8))(v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13CanvasElement_pMd, &_s8PaperKit13CanvasElement_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit12ShapeTextBox_pMd, &_s8PaperKit12ShapeTextBox_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    goto LABEL_7;
  }

  if (!*(&v17 + 1))
  {
LABEL_7:
    outlined destroy of StocksKitCurrencyCache.Provider?(&v16, &_s8PaperKit12ShapeTextBox_pSgMd, &_s8PaperKit12ShapeTextBox_pSgMR);
    v14 = 0;
    return v14 & 1;
  }

  outlined init with take of PaperKitHashable(&v16, v19);
  v12 = v20;
  v13 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v14 = (*(v13 + 64))(v12, v13);
  __swift_destroy_boxed_opaque_existential_0(v19);
  return v14 & 1;
}

uint64_t TextBoxCanvasElementView.isFormField.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMd, &_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMR);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;
  v8 = *(v0 + direct field offset for TextBoxCanvasElementView._textBoxView);
  if (v8 && (Strong = swift_unknownObjectWeakLoadStrong()) != 0)
  {
    v10 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0x3F0);
    v11 = Strong;
    swift_beginAccess();
    (*(v2 + 16))(v4, &v11[v10], v1);
    v12 = v8;

    (*(v2 + 32))(v7, v4, v1);
    v13 = specialized Capsule<>.isFormField.getter();

    (*(v2 + 8))(v7, v1);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t TextBoxCanvasElementView.isFixedWidth.getter()
{
  v1 = *(v0 + direct field offset for TextBoxCanvasElementView._textBoxView);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = specialized TextBoxView.isFixedWidth.getter();

  return v3 & 1;
}

void @objc TextBoxCanvasElementView.init(coder:)(uint64_t a1)
{
  *(a1 + direct field offset for TextBoxCanvasElementView._textBoxView) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *TextBoxCanvasElementView.textBoxView.getter()
{
  v1 = *(v0 + direct field offset for TextBoxCanvasElementView._textBoxView);
  v2 = v1;
  return v1;
}

id @objc TextBoxCanvasElementView.becomeFirstResponder()(uint64_t a1, uint64_t a2, SEL *a3)
{
  result = *(a1 + direct field offset for TextBoxCanvasElementView._textBoxView);
  if (result)
  {
    return [result *a3];
  }

  return result;
}

id TextBoxCanvasElementView.isElementFirstResponder.getter()
{
  v1 = *(v0 + direct field offset for TextBoxCanvasElementView._textBoxView);
  if (!v1)
  {
    return 0;
  }

  result = *(v1 + OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_textView);
  if (result)
  {
    return [result isFirstResponder];
  }

  return result;
}

void __swiftcall TextBoxCanvasElementView.hitTest(_:with:)(UIView_optional *__return_ptr retstr, CGPoint _, UIEvent_optional with)
{
  y = _.y;
  x = _.x;
  v6 = *&v3[direct field offset for TextBoxCanvasElementView._textBoxView];
  if (!v6 || (isa = with.value.super.isa, v8 = v6, [v3 convertPoint:v8 toView:{x, y}], v9 = objc_msgSend(v8, sel_hitTest_withEvent_, isa), v8, !v9))
  {
    [v3 bounds];
    v11.x = x;
    v11.y = y;
    if (CGRectContainsPoint(v12, v11))
    {
      v10 = v3;
    }
  }
}

id @objc TextBoxCanvasElementView.hitTest(_:with:)(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v10 = a1;
  v16.value.super.isa = a5;
  TextBoxCanvasElementView.hitTest(_:with:)(v11, __PAIR128__(*&a3, *&a2), v16);
  v13 = v12;

  return v13;
}

id TextBoxCanvasElementView.didZoom(in:)()
{
  result = *(v0 + direct field offset for TextBoxCanvasElementView._textBoxView);
  if (result)
  {
    return [result setNeedsLayout];
  }

  return result;
}

Swift::Int TextBoxCanvasElementView.resizeHandles.getter(__n128 a1)
{
  v2 = *(v1 + direct field offset for TextBoxCanvasElementView._textBoxView);
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_textView);
    if (v3)
    {
      if ([v3 isFirstResponder])
      {
        return MEMORY[0x1E69E7CD0];
      }
    }
  }

  return _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC8PaperKit16ResizeHandleTypeO_Tt0g5Tf4g_n(&outlined read-only object #0 of TextBoxCanvasElementView.resizeHandles.getter);
}

uint64_t TextBoxCanvasElementView.modifiableProperties.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMd, &_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMR);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - v3;
  v5 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x3F0);
  swift_beginAccess();
  (*(v2 + 16))(v4, &v0[v5], v1);
  v9[0] = type metadata accessor for TextBox(0);
  v9[1] = lazy protocol witness table accessor for type TextBox and conformance TextBox(&lazy protocol witness table cache variable for type TextBox and conformance TextBox, type metadata accessor for TextBox, &protocol conformance descriptor for TextBox);
  v9[2] = &protocol witness table for TextBox;
  swift_getKeyPath();
  Capsule.subscript.getter();

  (*(v2 + 8))(v4, v1);
  v6 = 13;
  if ((v10 & 0x80) == 0)
  {
    v6 = 15;
  }

  v7 = 5;
  if ((v10 & 0x80) == 0)
  {
    v7 = 7;
  }

  if ((v10 & 0x10) != 0)
  {
    v6 = v7;
  }

  if ((v10 & 4) != 0)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t TextBoxCanvasElementView.isSelected.setter(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for TextBox(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMd, &_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMR);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - v10;
  *(v2 + OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_isSelected) = a1;
  specialized CanvasElementView.isSelected.didset(v9);
  v12 = direct field offset for TextBoxCanvasElementView._textBoxView;
  v13 = *(v2 + direct field offset for TextBoxCanvasElementView._textBoxView);
  if (v13)
  {
    v14 = v13;
    specialized TextBoxView.updateSelected()();

    v15 = *(v2 + v12);
    if (v15)
    {
      v16 = v15;
      specialized TextBoxView.updateUI()(&_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMd, &_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMR, type metadata accessor for TextBox, &lazy protocol witness table cache variable for type TextBox and conformance TextBox, type metadata accessor for TextBox, &protocol conformance descriptor for TextBox, &protocol witness table for TextBox, specialized TextBoxView.finalizeLastUndoActionIfPossible(closeUndoGroup:), specialized TextBoxUndoSnapshot.snapshot.modify, partial apply for specialized closure #1 in TextBoxView.resetUndoActionIfPossible());
    }
  }

  specialized CanvasElementView.updateGestures()();
  v17 = *(v2 + v12);
  if (v17)
  {
    [v17 setNeedsLayout];
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v19 = MEMORY[0x1E69E7D40];
  if (Strong)
  {
    v20 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x928))();
  }

  v21 = *((*v19 & *v2) + 0x3F0);
  swift_beginAccess();
  (*(v8 + 16))(v11, v2 + v21, v7);
  Capsule.root.getter();
  outlined destroy of TextBoxViewAttributes(v6, type metadata accessor for TextBox);
  return (*(v8 + 8))(v11, v7);
}

void @objc TextBoxCanvasElementView.layoutSubviews()(char *a1, uint64_t a2, SEL *a3)
{
  v5 = *&a1[direct field offset for TextBoxCanvasElementView._textBoxView];
  v6 = a1;
  if (v5)
  {
    [v5 *a3];
  }

  v7.receiver = a1;
  v7.super_class = type metadata accessor for TextBoxCanvasElementView(0);
  objc_msgSendSuper2(&v7, *a3);
}

Swift::Void __swiftcall TextBoxCanvasElementView.updateUI()()
{
  v1 = v0;
  v2 = type metadata accessor for TextBox(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMd, &_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  v9 = direct field offset for TextBoxCanvasElementView._textBoxView;
  v10 = *&v0[direct field offset for TextBoxCanvasElementView._textBoxView];
  if (v10)
  {
    v11 = v10;
    specialized TextBoxView.updateUI()(&_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMd, &_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMR, type metadata accessor for TextBox, &lazy protocol witness table cache variable for type TextBox and conformance TextBox, type metadata accessor for TextBox, &protocol conformance descriptor for TextBox, &protocol witness table for TextBox, specialized TextBoxView.finalizeLastUndoActionIfPossible(closeUndoGroup:), specialized TextBoxUndoSnapshot.snapshot.modify, partial apply for specialized closure #1 in TextBoxView.resetUndoActionIfPossible());
  }

  specialized CanvasElementView.updateGestures()();
  v12 = *&v1[v9];
  if (v12)
  {
    [v12 setNeedsLayout];
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v14 = MEMORY[0x1E69E7D40];
  if (Strong)
  {
    v15 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x928))();
  }

  v16 = *((*v14 & *v1) + 0x3F0);
  swift_beginAccess();
  (*(v6 + 16))(v8, &v1[v16], v5);
  Capsule.root.getter();
  outlined destroy of TextBoxViewAttributes(v4, type metadata accessor for TextBox);
  (*(v6 + 8))(v8, v5);
}

Swift::Void __swiftcall TextBoxCanvasElementView.beginLiveEdit()()
{
  v1 = *(v0 + direct field offset for TextBoxCanvasElementView._textBoxView);
  if (v1)
  {
    v2 = v1;
    specialized TextBoxView.beginLiveEdit()();
  }

  specialized CanvasElementView.beginLiveEdit()();
}

Swift::Void __swiftcall TextBoxCanvasElementView.endLiveEdit(undoable:discard:)(Swift::Bool undoable, Swift::Bool discard)
{
  v5 = *(v2 + direct field offset for TextBoxCanvasElementView._textBoxView);
  if (v5)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0x1B8);
      v8 = Strong;
      v9 = v5;
      LOBYTE(v7) = v7();

      if (v7)
      {
        v10 = &v9[OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_liveUneditedModelCoordinateSpace];
        *(v10 + 1) = 0u;
        *(v10 + 2) = 0u;
        *v10 = 0u;
        v10[48] = 1;
      }
    }
  }

  specialized CanvasElementView.endLiveEdit(undoable:discard:)(undoable, discard);
}

CGPathRef TextBoxCanvasElementView.modelHitTestPath.getter()
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMd, &_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMR);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &transform - v3;
  v5 = *&v0[direct field offset for TextBoxCanvasElementView._textBoxView];
  if (v5)
  {
    v6 = v5;
    specialized TextBoxView.selectionCoordinateSpace.getter(&transform);
    v13.origin.x = 0.0;
    v13.origin.y = 0.0;
    v13.size.width = 1.0;
    v13.size.height = 1.0;
    v7 = CGPathCreateWithRect(v13, &transform);
  }

  else
  {
    v8 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x3F0);
    swift_beginAccess();
    v9 = (*(v2 + 16))(v4, &v0[v8], v1);
    MEMORY[0x1EEE9AC00](v9);
    *(&transform - 4) = type metadata accessor for TextBox(0);
    *(&transform - 3) = lazy protocol witness table accessor for type TextBox and conformance TextBox(&lazy protocol witness table cache variable for type TextBox and conformance TextBox, type metadata accessor for TextBox, &protocol conformance descriptor for TextBox);
    *(&transform - 2) = &protocol witness table for TextBox;
    swift_getKeyPath();
    Capsule.subscript.getter();

    (*(v2 + 8))(v4, v1);
    v14.origin.x = 0.0;
    v14.origin.y = 0.0;
    v14.size.width = 1.0;
    v14.size.height = 1.0;
    return CGPathCreateWithRect(v14, &transform);
  }

  return v7;
}

void TextBoxCanvasElementView.uneditedModelCoordinateSpace.getter(_OWORD *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit7TextBoxVGSgMd, &_s9Coherence7CapsuleVy8PaperKit7TextBoxVGSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMd, &_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v20 - v8;
  v10 = *&v1[direct field offset for TextBoxCanvasElementView._textBoxView];
  if (v10 && (v11 = (v10 + OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_liveUneditedModelCoordinateSpace), (v11[3] & 1) == 0))
  {
    v17 = v11[1];
    v19 = v11[2];
    v18 = *v11;
  }

  else
  {
    v12 = MEMORY[0x1E69E7D40];
    v13 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x3F8);
    swift_beginAccess();
    outlined init with copy of Date?(&v1[v13], v5, &_s9Coherence7CapsuleVy8PaperKit7TextBoxVGSgMd, &_s9Coherence7CapsuleVy8PaperKit7TextBoxVGSgMR);
    v14 = *(v7 + 48);
    if (v14(v5, 1, v6) == 1)
    {
      v15 = *((*v12 & *v1) + 0x3F0);
      swift_beginAccess();
      (*(v7 + 16))(v9, &v1[v15], v6);
      v16 = v14(v5, 1, v6);
      if (v16 != 1)
      {
        v16 = outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_s9Coherence7CapsuleVy8PaperKit7TextBoxVGSgMd, &_s9Coherence7CapsuleVy8PaperKit7TextBoxVGSgMR);
      }
    }

    else
    {
      v16 = (*(v7 + 32))(v9, v5, v6);
    }

    MEMORY[0x1EEE9AC00](v16);
    *&v20[-2] = type metadata accessor for TextBox(0);
    *(&v20[-2] + 1) = lazy protocol witness table accessor for type TextBox and conformance TextBox(&lazy protocol witness table cache variable for type TextBox and conformance TextBox, type metadata accessor for TextBox, &protocol conformance descriptor for TextBox);
    *&v20[-1] = &protocol witness table for TextBox;
    swift_getKeyPath();
    Capsule.subscript.getter();

    (*(v7 + 8))(v9, v6);
    v18 = v20[0];
    v17 = v20[1];
    v19 = v20[2];
  }

  *a1 = v18;
  a1[1] = v17;
  a1[2] = v19;
}

void TextBoxCanvasElementView.selectionCoordinateSpace.getter(__int128 *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMd, &_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - v5;
  v7 = *&v1[direct field offset for TextBoxCanvasElementView._textBoxView];
  if (v7)
  {
    v8 = v7;
    specialized TextBoxView.selectionCoordinateSpace.getter(&v17);
    v15 = v18;
    v16 = v17;
    v14 = v19;

    v10 = v14;
    v9 = v15;
    v11 = v16;
  }

  else
  {
    v12 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x3F0);
    swift_beginAccess();
    v13 = (*(v4 + 16))(v6, &v1[v12], v3);
    MEMORY[0x1EEE9AC00](v13);
    *(&v14 - 4) = type metadata accessor for TextBox(0);
    *(&v14 - 3) = lazy protocol witness table accessor for type TextBox and conformance TextBox(&lazy protocol witness table cache variable for type TextBox and conformance TextBox, type metadata accessor for TextBox, &protocol conformance descriptor for TextBox);
    *(&v14 - 2) = &protocol witness table for TextBox;
    swift_getKeyPath();
    Capsule.subscript.getter();

    (*(v4 + 8))(v6, v3);
    v11 = v17;
    v9 = v18;
    v10 = v19;
  }

  *a1 = v11;
  a1[1] = v9;
  a1[2] = v10;
}

void @objc TextBoxCanvasElementView.textBoxViewUpdateModelFrame(_:modelFrame:)(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v9 = a1;
  specialized CanvasElementView.modelFrame.setter(a2, a3, a4, a5);
}

Swift::OpaquePointer_optional __swiftcall TextBoxCanvasElementView.pasteboardRepresentation()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMd, &_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - v8;
  v10 = type metadata accessor for UTType();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  static UTType.plainText.getter();
  v14 = UTType.identifier.getter();
  v28 = v15;
  v29 = v14;
  (*(v11 + 8))(v13, v10);
  v16 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x3F0);
  swift_beginAccess();
  (*(v7 + 16))(v9, &v1[v16], v6);
  swift_getKeyPath();
  Capsule.subscript.getter();

  (*(v7 + 8))(v9, v6);
  v17 = CRAttributedString.attributedString.getter();
  (*(v3 + 8))(v5, v2);
  v18 = [v17 string];

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v33 = MEMORY[0x1E69E6158];
  *&v32 = v19;
  *(&v32 + 1) = v21;
  outlined init with take of Any(&v32, v31);
  v22 = v27;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = v22;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v31, v29, v28, isUniquelyReferenced_nonNull_native);

  v25 = v30;
  result.value._rawValue = v25;
  result.is_nil = v24;
  return result;
}

id @objc TextBoxCanvasElementView.contextMenuInteraction(_:previewForHighlightingMenuWithConfiguration:)(void *a1)
{
  v1 = a1;
  v2 = [v1 window];
  if (v2)
  {

    v3 = [objc_allocWithZone(MEMORY[0x1E69DD070]) initWithView_];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id TextBoxCanvasElementView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TextBoxCanvasElementView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TextBoxCanvasElementView(uint64_t a1)
{
  result = type metadata singleton initialization cache for TextBoxCanvasElementView;
  if (!type metadata singleton initialization cache for TextBoxCanvasElementView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double (*specialized TextBoxUndoSnapshot.snapshot.modify(uint64_t a1))(uint64_t a1)
{
  swift_beginAccess();
  return PaperMarkupViewController._directTouchMode.modify;
}

{
  swift_beginAccess();
  return PaperMarkupViewController._markup.modify;
}

char *specialized TextBoxView.isFixedWidth.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMd, &_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMR);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *((*MEMORY[0x1E69E7D40] & *result) + 0x3F0);
    v9 = result;
    swift_beginAccess();
    (*(v1 + 16))(v3, &v9[v8], v0);

    v10 = (*(v1 + 32))(v6, v3, v0);
    MEMORY[0x1EEE9AC00](v10);
    *(&v11 - 4) = type metadata accessor for TextBox(0);
    *(&v11 - 3) = lazy protocol witness table accessor for type TextBox and conformance TextBox(&lazy protocol witness table cache variable for type TextBox and conformance TextBox, type metadata accessor for TextBox, &protocol conformance descriptor for TextBox);
    *(&v11 - 2) = &protocol witness table for TextBox;
    swift_getKeyPath();
    Capsule.subscript.getter();

    (*(v1 + 8))(v6, v0);
    return ((v11 & 1) == 0);
  }

  return result;
}

void specialized TextBoxView.updateSelected()()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (((*((*MEMORY[0x1E69E7D40] & *Strong) + 0x200))() & 1) == 0)
    {
      v3 = OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_textView;
      v4 = *&v1[OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_textView];
      if (v4)
      {
        [v4 removeFromSuperview];
        v5 = *&v1[v3];
      }

      else
      {
        v5 = 0;
      }

      *&v1[v3] = 0;

      v1[direct field offset for TextBoxView.hideText] = 0;
      [v1 setNeedsDisplay];
    }
  }
}

void specialized TextBoxView.updateUI()(uint64_t *a1, uint64_t *a2, double (*a3)(void, __n128), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6, void (*a7)(void), unint64_t a8, uint64_t (*a9)(char *), uint64_t a10)
{
  v213 = a8;
  v233 = a7;
  v231 = a6;
  v232 = a5;
  v15 = v10;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence11CursorRangeVyAA18CRAttributedStringV0B0Vy8PaperKit18TextAttributeScopeV_GGMd, &_s9Coherence11CursorRangeVyAA18CRAttributedStringV0B0Vy8PaperKit18TextAttributeScopeV_GGMR);
  v203 = *(v204 - 8);
  MEMORY[0x1EEE9AC00](v204);
  v212 = &v197 - v16;
  v238 = type metadata accessor for Color(0);
  v230 = *(v238 - 8);
  MEMORY[0x1EEE9AC00](v238);
  v18 = &v197 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v236 = (&v197 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v235 = &v197 - v22;
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMR);
  v217 = *(v243 - 8);
  MEMORY[0x1EEE9AC00](v243);
  v234 = &v197 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMR);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v242 = &v197 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v237 = &v197 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v241 = &v197 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceV8IteratorVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GAJ5ColorV_GMd, &_ss15LazyMapSequenceV8IteratorVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GAJ5ColorV_GMR);
  MEMORY[0x1EEE9AC00](v30);
  v240 = &v197 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12LazySequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMd, &_ss12LazySequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMR);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v215 = &v197 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GAH5ColorVGMd, &_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GAH5ColorVGMR);
  MEMORY[0x1EEE9AC00](v34);
  v216 = &v197 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v229 = &v197 - v37;
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMR);
  v228 = *(v239 - 8);
  MEMORY[0x1EEE9AC00](v239);
  v214 = &v197 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v227 = &v197 - v40;
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  v218 = *(v225 - 8);
  MEMORY[0x1EEE9AC00](v225);
  v42 = &v197 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v222 = &v197 - v44;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v220 = *(v226 - 8);
  MEMORY[0x1EEE9AC00](v226);
  v46 = &v197 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v197 - v48;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v51 = Strong;
    v209 = v34;
    v210 = v30;
    v223 = a3;
    v224 = a4;
    v52 = *&v15[OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_textView];
    v221 = v15;
    v211 = v18;
    v219 = Strong;
    v208 = v42;
    v207 = v46;
    if (v52)
    {
      v201 = v52;
      v53 = [v15 undoManager];
      if (v53 && (v54 = v53, v55 = [v53 isUndoing], v54, (v55 & 1) != 0) || (v56 = objc_msgSend(v15, sel_undoManager)) != 0 && (v57 = v56, v58 = objc_msgSend(v56, sel_isRedoing), v57, (v58 & 1) != 0))
      {
        v59 = *&v15[direct field offset for TextBoxView.textStorage];
        v60 = *v51;
        v61 = *MEMORY[0x1E69E7D40];
        v212 = (v51 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000);
        v62 = *((v61 & v60) + 0x3F0);
        swift_beginAccess();
        v63 = v220;
        v64 = *(v220 + 16);
        v213 = (v220 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v65 = v49;
        v66 = v226;
        v202 = v64;
        v67 = v64(v49, (v51 + v62), v226);
        v68 = MEMORY[0x1EEE9AC00](v67);
        v206 = v223(0, v68);
        *(&v197 - 4) = v206;
        v69 = lazy protocol witness table accessor for type TextBox and conformance TextBox(v224, v232, v231);
        v70 = v233;
        *(&v197 - 3) = v69;
        *(&v197 - 2) = v70;
        swift_getKeyPath();
        v71 = v59;
        v72 = v222;
        Capsule.subscript.getter();

        v205 = *(v63 + 8);
        v205(v65, v66);
        v73 = CRTextStorage.merge(string:)(v72);
        v75 = v74;
        LOBYTE(v62) = v76;

        v77 = v218[1];
        v204 = (v218 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v78 = v77;
        (v77)(v72, v225);
        v218 = v78;
        if (v62)
        {
        }

        else
        {
          v133 = v201;
          [v201 setSelectedRange_];
        }

        v222 = 0;
        v99 = v225;
        v86 = v226;
        v94 = MEMORY[0x1E69E7D40];
        v95 = v202;
        v98 = v206;
        v51 = v219;
        v97 = v231;
      }

      else
      {
        (v213)(0);
        v200 = direct field offset for TextBoxView.textStorage;
        v100 = *&v15[direct field offset for TextBoxView.textStorage];
        v101 = OBJC_IVAR____TtC8PaperKit13CRTextStorage_mergeableString;
        swift_beginAccess();
        v102 = v218;
        v103 = v218[2];
        v104 = v225;
        v199 = v218 + 2;
        v198 = v103;
        v103(v222, v100 + v101, v225);
        v105 = v201;
        v106 = [v105 selectedRange];
        v201 = v105;
        v107 = [v105 selectedRange];
        v109 = __OFADD__(v107, v108);
        v110 = &v107[v108];
        if (v109)
        {
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

        if (v110 < v106)
        {
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        v111 = v222;
        CRAttributedString.cursor(range:)();
        v218 = v102[1];
        (v218)(v111, v104);
        v205 = *&v221[v200];
        v112 = *((*MEMORY[0x1E69E7D40] & *v51) + 0x3F0);
        swift_beginAccess();
        v113 = v220;
        v114 = v49;
        v115 = v226;
        v202 = *(v220 + 16);
        v213 = v220 + 16;
        v116 = v202(v49, (v51 + v112), v226);
        v117 = MEMORY[0x1EEE9AC00](v116);
        v206 = v223(0, v117);
        *(&v197 - 4) = v206;
        v118 = lazy protocol witness table accessor for type TextBox and conformance TextBox(v224, v232, v231);
        v119 = v233;
        *(&v197 - 3) = v118;
        *(&v197 - 2) = v119;
        swift_getKeyPath();
        v120 = (v102 + 1);
        v121 = v205;
        Capsule.subscript.getter();

        v122 = *(v113 + 8);
        v123 = v115;
        v124 = v212;
        v197 = v113 + 8;
        v205 = v122;
        v122(v114, v123);
        CRTextStorage.merge(string:)(v111);

        v125 = v218;
        (v218)(v111, v104);
        v126 = *&v221[v200];
        v127 = OBJC_IVAR____TtC8PaperKit13CRTextStorage_mergeableString;
        swift_beginAccess();
        v198(v111, v126 + v127, v104);
        v128 = CRAttributedString.range(of:)();
        v130 = v129;
        LOBYTE(v121) = v131;
        v125(v111, v104);
        if (v121)
        {
          (*(v203 + 8))(v124, v204);
          v132 = v201;
        }

        else
        {
          if (__OFSUB__(v130, v128))
          {
LABEL_54:
            __break(1u);
            return;
          }

          v132 = v201;
          [v201 setSelectedRange_];

          (*(v203 + 8))(v124, v204);
        }

        v134 = v221;
        v204 = v120 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        if (*&v221[direct field offset for TextBoxView.currentUndoAction])
        {
          v213 = v213 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;

          v135 = a9(v244);
          v86 = v226;
          v137 = (*(v220 + 48))(v136, 1, v226);
          v95 = v202;
          if (v137)
          {
            v135(v244, 0);

            v222 = 0;
          }

          else
          {
            MEMORY[0x1EEE9AC00](a10);
            *(&v197 - 2) = v134;
            Capsule.callAsFunction<A>(_:)();
            v222 = 0;
            v86 = v226;
            v95 = v202;
            v135(v244, 0);
          }

          v97 = v231;
          v99 = v225;
          v94 = MEMORY[0x1E69E7D40];
        }

        else
        {

          v222 = 0;
          v97 = v231;
          v99 = v225;
          v86 = v226;
          v94 = MEMORY[0x1E69E7D40];
          v95 = v202;
        }

        v51 = v219;
        v98 = v206;
      }
    }

    else
    {
      v79 = *&v15[direct field offset for TextBoxView.textStorage];
      v80 = *Strong;
      v81 = *MEMORY[0x1E69E7D40];
      v212 = (Strong & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000);
      v82 = *((v81 & v80) + 0x3F0);
      swift_beginAccess();
      v83 = v220;
      v84 = *(v220 + 16);
      v213 = (v220 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v85 = v49;
      v86 = v226;
      v87 = v84(v49, v51 + v82, v226);
      v88 = MEMORY[0x1EEE9AC00](v87);
      v206 = v223(0, v88);
      *(&v197 - 4) = v206;
      v89 = lazy protocol witness table accessor for type TextBox and conformance TextBox(v224, v232, v231);
      v90 = v233;
      *(&v197 - 3) = v89;
      *(&v197 - 2) = v90;
      swift_getKeyPath();
      v91 = v79;
      v92 = v222;
      Capsule.subscript.getter();

      v205 = *(v83 + 8);
      v93 = v85;
      v94 = MEMORY[0x1E69E7D40];
      v205(v93, v86);
      v95 = v84;
      CRTextStorage.merge(string:)(v92);

      v96 = v92;
      v97 = v231;
      v98 = v206;
      v99 = v225;
      v218 = v218[1];
      (v218)(v96, v225);
      v222 = 0;
    }

    v138 = *((*v94 & *v51) + 0x3F0);
    swift_beginAccess();
    v139 = (v51 + v138);
    v140 = v207;
    v141 = v95(v207, v139, v86);
    v142 = MEMORY[0x1EEE9AC00](v141);
    v223(0, v142);
    *(&v197 - 4) = v98;
    v143 = lazy protocol witness table accessor for type TextBox and conformance TextBox(v224, v232, v97);
    v144 = v233;
    *(&v197 - 3) = v143;
    *(&v197 - 2) = v144;
    swift_getKeyPath();
    v145 = v208;
    Capsule.subscript.getter();

    v205(v140, v86);
    v146 = v227;
    CRAttributedString.runs.getter();
    (v218)(v145, v99);
    v147 = v228;
    v148 = v215;
    v149 = v239;
    (*(v228 + 16))(v215, v146, v239);
    v150 = *(v147 + 32);
    v151 = v229;
    v150(v229, v148, v149);
    v152 = v209;
    v153 = (v151 + *(v209 + 44));
    *v153 = closure #1 in CRAttributedString.Runs<>.fontColors.getter;
    v153[1] = 0;
    v245 = MEMORY[0x1E69E7CD0];
    v154 = v151;
    v155 = v216;
    outlined init with copy of Date?(v154, v216, &_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GAH5ColorVGMd, &_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GAH5ColorVGMR);
    v150(v214, v155, v149);
    lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs(&lazy protocol witness table cache variable for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs, MEMORY[0x1E69952C0]);
    v156 = v240;
    dispatch thunk of Sequence.makeIterator()();
    v157 = (v155 + *(v152 + 44));
    v158 = *v157;
    v159 = v157[1];
    v160 = (v156 + *(v210 + 44));
    v233 = v158;
    *v160 = v158;
    v160[1] = v159;
    lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs(&lazy protocol witness table cache variable for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs, MEMORY[0x1E69952C8]);
    v161 = (v217 + 48);
    v162 = (v217 + 32);
    v163 = (v217 + 8);
    v164 = (v230 + 56);
    v165 = (v230 + 48);
    while (1)
    {
      v166 = v237;
      dispatch thunk of IteratorProtocol.next()();
      v167 = v166;
      v168 = v242;
      outlined init with take of CRAttributedString<TextAttributeScope>.Runs.Run?(v167, v242);
      v169 = 1;
      if ((*v161)(v168, 1, v243) != 1)
      {
        v170 = v234;
        v171 = v243;
        (*v162)(v234, v242, v243);
        v233(v170);
        (*v163)(v170, v171);
        v169 = 0;
      }

      v172 = v241;
      v173 = v169;
      v174 = v238;
      (*v164)(v241, v173, 1, v238);
      if ((*v165)(v172, 1, v174) == 1)
      {
        break;
      }

      v175 = v172;
      v176 = v236;
      outlined init with take of Color(v175, v236);
      v177 = v235;
      specialized Set._Variant.insert(_:)(v235, v176);
      outlined destroy of TextBoxViewAttributes(v177, type metadata accessor for Color);
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v240, &_ss15LazyMapSequenceV8IteratorVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GAJ5ColorV_GMd, &_ss15LazyMapSequenceV8IteratorVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GAJ5ColorV_GMR);
    v178 = v245;
    outlined destroy of StocksKitCurrencyCache.Provider?(v229, &_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GAH5ColorVGMd, &_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GAH5ColorVGMR);
    (*(v228 + 8))(v227, v239);
    v179 = 1 << *(v178 + 32);
    v180 = -1;
    if (v179 < 64)
    {
      v180 = ~(-1 << v179);
    }

    v181 = v180 & *(v178 + 56);
    v182 = (v179 + 63) >> 6;

    v183 = 0;
    v184 = v211;
    v185 = v230;
    v186 = v219;
    while (v181)
    {
LABEL_40:
      outlined init with copy of Color(*(v178 + 48) + *(v185 + 72) * (__clz(__rbit64(v181)) | (v183 << 6)), v184);
      CGColorGetContentHeadroom();
      if (v188 > 1.0)
      {

        goto LABEL_46;
      }

      v189 = CGColorRef.components.getter();
      if (v189)
      {
        v190 = *(v189 + 16);
        v191 = 32;
        do
        {
          if (!v190)
          {

            goto LABEL_34;
          }

          v192 = *(v189 + v191);
          v191 += 8;
          --v190;
        }

        while (v192 <= 1.0);

LABEL_46:
        outlined destroy of TextBoxViewAttributes(v184, type metadata accessor for Color);
        v193 = MEMORY[0x1E69792A0];
LABEL_48:
        v194 = v221;

        v195 = [v194 layer];
        v196 = *v193;
        [v195 setPreferredDynamicRange_];

        [v194 setNeedsLayout];
        [v194 setNeedsDisplay];

        return;
      }

LABEL_34:
      v181 &= v181 - 1;
      outlined destroy of TextBoxViewAttributes(v184, type metadata accessor for Color);
    }

    while (1)
    {
      v187 = v183 + 1;
      if (__OFADD__(v183, 1))
      {
        break;
      }

      if (v187 >= v182)
      {

        v193 = MEMORY[0x1E69792A8];
        goto LABEL_48;
      }

      v181 = *(v178 + 56 + 8 * v187);
      ++v183;
      if (v181)
      {
        v183 = v187;
        goto LABEL_40;
      }
    }

    __break(1u);
    goto LABEL_52;
  }
}

void specialized TextBoxView.beginLiveEdit()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMd, &_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v43 - v4;
  v6 = v0 + direct field offset for TextBoxView.delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 8);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      ObjectType = swift_getObjectType();
      v11 = (*(v7 + 8))(v1, ObjectType, v7);
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v18 = swift_unknownObjectWeakLoadStrong();
      if (v18)
      {
        v19 = v18;
        AnyCanvasElementView.paperBoundsTransform()(&v52);
        v48 = *&v52.a;
        v47 = *&v52.c;
        v46 = *&v52.tx;

        v20 = v46;
        v21 = v48;
        v22 = v47;
      }

      else
      {
        v22 = xmmword_1D4059310;
        v21 = xmmword_1D4059320;
        v20 = 0uLL;
      }

      *&t1.a = v21;
      *&t1.c = v22;
      *&t1.tx = v20;
      CGAffineTransformInvert(&t2, &t1);
      t1 = t2;
      v54.origin.x = v11;
      v54.origin.y = v13;
      v54.size.width = v15;
      v54.size.height = v17;
      v55 = CGRectApplyAffineTransform(v54, &t1);
      x = v55.origin.x;
      y = v55.origin.y;
      width = v55.size.width;
      height = v55.size.height;
      v27 = *((*MEMORY[0x1E69E7D40] & *v9) + 0x3F0);
      swift_beginAccess();
      v28 = (*(v3 + 16))(v5, &v9[v27], v2);
      MEMORY[0x1EEE9AC00](v28);
      *(&v43 - 4) = type metadata accessor for TextBox(0);
      *(&v43 - 3) = lazy protocol witness table accessor for type TextBox and conformance TextBox(&lazy protocol witness table cache variable for type TextBox and conformance TextBox, type metadata accessor for TextBox, &protocol conformance descriptor for TextBox);
      *(&v43 - 2) = &protocol witness table for TextBox;
      swift_getKeyPath();
      Capsule.subscript.getter();

      (*(v3 + 8))(v5, v2);
      a = t1.a;
      *&v48 = x - width * 0.0;
      *&v47 = y - height * 0.0;
      v56.origin.x = x;
      v56.origin.y = y;
      v56.size.width = width;
      v45 = width;
      v56.size.height = height;
      *&v46 = height;
      MidX = CGRectGetMidX(v56);
      v57.origin.x = x;
      v57.origin.y = y;
      v57.size.width = width;
      v57.size.height = height;
      MidY = CGRectGetMidY(v57);
      CGAffineTransformMakeRotation(&t1, a);
      v32 = *&t1.tx;
      v44 = *&t1.a;
      v43 = *&t1.c;
      CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
      v33 = *&t1.a;
      c = t1.c;
      d = t1.d;
      v36 = *&t1.tx;
      *&t2.c = v43;
      *&t2.a = v44;
      *&t2.tx = v32;
      CGAffineTransformConcat(&v49, &t1, &t2);
      tx = v49.tx;
      ty = v49.ty;
      v44 = *&v49.a;
      v43 = *&v49.c;
      *&t1.a = v33;
      t1.c = c;
      t1.d = d;
      *&t1.tx = v36;
      CGAffineTransformInvert(&t2, &t1);
      *&t1.a = v44;
      *&t1.c = v43;
      t1.tx = tx;
      t1.ty = ty;
      CGAffineTransformConcat(&v49, &t1, &t2);
      t1.a = v45;
      t1.b = 0.0;
      t1.c = 0.0;
      *&t1.d = v46;
      *&t1.tx = v48;
      *&t1.ty = v47;
      t2 = v49;
      CGAffineTransformConcat(&v49, &t1, &t2);
      v39 = v49.tx;
      v40 = v49.ty;
      v48 = *&v49.a;
      v47 = *&v49.c;
      swift_unknownObjectRelease();

      v41 = v1 + OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_liveUneditedModelCoordinateSpace;
      v42 = v47;
      *v41 = v48;
      *(v41 + 16) = v42;
      *(v41 + 32) = v39;
      *(v41 + 40) = v40;
      *(v41 + 48) = 0;
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v43 - v4;
  v6 = v0 + direct field offset for TextBoxView.delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 8);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      ObjectType = swift_getObjectType();
      v11 = (*(v7 + 8))(v1, ObjectType, v7);
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v18 = swift_unknownObjectWeakLoadStrong();
      if (v18)
      {
        v19 = v18;
        AnyCanvasElementView.paperBoundsTransform()(&v52);
        v48 = *&v52.a;
        v47 = *&v52.c;
        v46 = *&v52.tx;

        v20 = v46;
        v21 = v48;
        v22 = v47;
      }

      else
      {
        v22 = xmmword_1D4059310;
        v21 = xmmword_1D4059320;
        v20 = 0uLL;
      }

      *&t1.a = v21;
      *&t1.c = v22;
      *&t1.tx = v20;
      CGAffineTransformInvert(&t2, &t1);
      t1 = t2;
      v54.origin.x = v11;
      v54.origin.y = v13;
      v54.size.width = v15;
      v54.size.height = v17;
      v55 = CGRectApplyAffineTransform(v54, &t1);
      x = v55.origin.x;
      y = v55.origin.y;
      width = v55.size.width;
      height = v55.size.height;
      v27 = *((*MEMORY[0x1E69E7D40] & *v9) + 0x3F0);
      swift_beginAccess();
      v28 = (*(v3 + 16))(v5, &v9[v27], v2);
      MEMORY[0x1EEE9AC00](v28);
      *(&v43 - 4) = type metadata accessor for Shape(0);
      *(&v43 - 3) = lazy protocol witness table accessor for type TextBox and conformance TextBox(&lazy protocol witness table cache variable for type Shape and conformance Shape, type metadata accessor for Shape, &protocol conformance descriptor for Shape);
      *(&v43 - 2) = &protocol witness table for Shape;
      swift_getKeyPath();
      Capsule.subscript.getter();

      (*(v3 + 8))(v5, v2);
      a = t1.a;
      *&v48 = x - width * 0.0;
      *&v47 = y - height * 0.0;
      v56.origin.x = x;
      v56.origin.y = y;
      v56.size.width = width;
      v45 = width;
      v56.size.height = height;
      *&v46 = height;
      MidX = CGRectGetMidX(v56);
      v57.origin.x = x;
      v57.origin.y = y;
      v57.size.width = width;
      v57.size.height = height;
      MidY = CGRectGetMidY(v57);
      CGAffineTransformMakeRotation(&t1, a);
      v32 = *&t1.tx;
      v44 = *&t1.a;
      v43 = *&t1.c;
      CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
      v33 = *&t1.a;
      c = t1.c;
      d = t1.d;
      v36 = *&t1.tx;
      *&t2.c = v43;
      *&t2.a = v44;
      *&t2.tx = v32;
      CGAffineTransformConcat(&v49, &t1, &t2);
      tx = v49.tx;
      ty = v49.ty;
      v44 = *&v49.a;
      v43 = *&v49.c;
      *&t1.a = v33;
      t1.c = c;
      t1.d = d;
      *&t1.tx = v36;
      CGAffineTransformInvert(&t2, &t1);
      *&t1.a = v44;
      *&t1.c = v43;
      t1.tx = tx;
      t1.ty = ty;
      CGAffineTransformConcat(&v49, &t1, &t2);
      t1.a = v45;
      t1.b = 0.0;
      t1.c = 0.0;
      *&t1.d = v46;
      *&t1.tx = v48;
      *&t1.ty = v47;
      t2 = v49;
      CGAffineTransformConcat(&v49, &t1, &t2);
      v39 = v49.tx;
      v40 = v49.ty;
      v48 = *&v49.a;
      v47 = *&v49.c;
      swift_unknownObjectRelease();

      v41 = v1 + OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_liveUneditedModelCoordinateSpace;
      v42 = v47;
      *v41 = v48;
      *(v41 + 16) = v42;
      *(v41 + 32) = v39;
      *(v41 + 40) = v40;
      *(v41 + 48) = 0;
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

void specialized TextBoxView.selectionCoordinateSpace.getter(__int128 *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TextBoxViewAttributes(0);
  MEMORY[0x1EEE9AC00](v4);
  *&v134 = &v122 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMd, &_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v122 - v8;
  v10 = direct field offset for TextBoxView.canvasElementView;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v15 = xmmword_1D4059310;
    v16 = xmmword_1D4059320;
    v17 = 0uLL;
LABEL_47:
    *a1 = v16;
    a1[1] = v15;
    a1[2] = v17;
    return;
  }

  v12 = Strong;
  v124 = v4;
  v128 = a1;
  v13 = *&v2[OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_textView];
  *&v135 = v7;
  *&v126 = v10;
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    [v2 bounds];
    v14 = [objc_allocWithZone(MEMORY[0x1E69DD168]) initWithFrame:*&v2[direct field offset for TextBoxView.textContainer] textContainer:{v18, v19, v20, v21}];
    v13 = 0;
  }

  v22 = v13;
  v23 = [v14 setTextContainerInset_];
  v24 = MEMORY[0x1E69E7D40];
  v25 = *((*MEMORY[0x1E69E7D40] & *v12) + 0x280);
  v26 = (v25)(v23);
  v28 = v27;
  v29 = (*((*v24 & *v12) + 0x118))(v26);
  v127 = v14;
  if ((v29 & 1) == 0)
  {
    v39 = swift_unknownObjectWeakLoadStrong();
    if (v39 && (v40 = v39, v41 = (*((*v24 & *v39) + 0x90))(), v40, v41))
    {
      v42 = (*((*v24 & *v41) + 0x440))();
      v43 = (*((*v24 & *v42) + 0x280))();
      v45 = v44;
      v47 = v46;
      v49 = v48;

      v143.origin.x = v43;
      v143.origin.y = v45;
      v143.size.width = v47;
      v143.size.height = v49;
      Width = CGRectGetWidth(v143);

      v51 = Width + -48.0;
    }

    else
    {
      v51 = 1.79769313e308;
    }

    [v14 sizeThatFits_];
    v53 = v52;
    Height = v54;
    [*&v2[direct field offset for TextBoxView.textContainer] lineFragmentPadding];
    v28 = v53 + v55 + v55;
    goto LABEL_19;
  }

  v30 = [v14 sizeThatFits_];
  Height = v31;
  if (((*((*v24 & *v12) + 0x128))(v30) & 1) == 0)
  {
    goto LABEL_19;
  }

  v141.origin.x = v25();
  if (Height < CGRectGetHeight(v141))
  {
LABEL_13:
    v142.origin.x = (v25)(v33);
    Height = CGRectGetHeight(v142);
    goto LABEL_19;
  }

  v34 = [v14 text];
  if (v34)
  {
    v35 = v34;
    *&v133 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v38 = HIBYTE(v37) & 0xF;
    if ((v37 & 0x2000000000000000) == 0)
    {
      v38 = v133 & 0xFFFFFFFFFFFFLL;
    }

    if (!v38)
    {
      goto LABEL_13;
    }

LABEL_19:
    v56 = *((*v24 & *v12) + 0x3F0);
    swift_beginAccess();
    v57 = v135;
    v58 = *(v135 + 16);
    *&v133 = v56;
    *&v132 = v58;
    v129 = v135 + 16;
    v59 = v58(v9, &v12[v56], v6);
    MEMORY[0x1EEE9AC00](v59);
    v131 = type metadata accessor for TextBox(0);
    *(&v122 - 4) = v131;
    v130 = lazy protocol witness table accessor for type TextBox and conformance TextBox(&lazy protocol witness table cache variable for type TextBox and conformance TextBox, type metadata accessor for TextBox, &protocol conformance descriptor for TextBox);
    *(&v122 - 3) = v130;
    *(&v122 - 2) = &protocol witness table for TextBox;
    swift_getKeyPath();
    Capsule.subscript.getter();

    v62 = *(v57 + 8);
    v61 = v57 + 8;
    v60 = *&v62;
    v62(v9, v6);
    a = v140.a;
    b = v140.b;
    c = v140.c;
    d = v140.d;
    if (vabdd_f64(v140.c, v28) < 0.1 && vabdd_f64(v140.d, Height) < 0.1)
    {
      v28 = v140.c;
      Height = v140.d;
LABEL_46:
      v125 = v28;
      *&v126 = Height;
      v107 = (v132)(v9, &v12[v133], v6);
      MEMORY[0x1EEE9AC00](v107);
      v108 = v130;
      *(&v122 - 4) = v131;
      *(&v122 - 3) = v108;
      *(&v122 - 2) = &protocol witness table for TextBox;
      swift_getKeyPath();
      Capsule.subscript.getter();

      (*&v60)(v9, v6);
      v109 = v139;
      *&v135 = a - v28 * 0.0;
      *&v134 = b - Height * 0.0;
      v151.origin.x = a;
      v151.origin.y = b;
      v151.size.width = v28;
      v151.size.height = Height;
      MidX = CGRectGetMidX(v151);
      v152.origin.x = a;
      v152.origin.y = b;
      v152.size.width = v28;
      v152.size.height = Height;
      MidY = CGRectGetMidY(v152);
      CGAffineTransformMakeRotation(&v138, v109);
      tx = v138.tx;
      ty = v138.ty;
      v132 = *&v138.c;
      v133 = *&v138.a;
      CGAffineTransformMakeTranslation(&v138, -MidX, -MidY);
      v114 = v138.a;
      v115 = v138.b;
      v117 = v138.c;
      v116 = v138.d;
      v118 = v138.tx;
      v119 = v138.ty;
      *&v137.a = v133;
      *&v137.c = v132;
      v137.tx = tx;
      v137.ty = ty;
      CGAffineTransformConcat(&v136, &v138, &v137);
      v120 = v136.tx;
      v121 = v136.ty;
      v132 = *&v136.c;
      v133 = *&v136.a;
      v138.a = v114;
      v138.b = v115;
      v138.c = v117;
      v138.d = v116;
      v138.tx = v118;
      v138.ty = v119;
      CGAffineTransformInvert(&v137, &v138);
      *&v138.a = v133;
      *&v138.c = v132;
      v138.tx = v120;
      v138.ty = v121;
      CGAffineTransformConcat(&v136, &v138, &v137);
      v138.a = v125;
      v138.b = 0.0;
      v138.c = 0.0;
      *&v138.d = v126;
      *&v138.tx = v135;
      *&v138.ty = v134;
      v137 = v136;
      CGAffineTransformConcat(&v136, &v138, &v137);
      v134 = *&v136.c;
      v135 = *&v136.a;
      v133 = *&v136.tx;

      v17 = v133;
      v15 = v134;
      v16 = v135;
      a1 = v128;
      goto LABEL_47;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D405CEB0;
    *&v135 = v61;
    v125 = v60;
    *(inited + 32) = v2;
    v68 = v2;
    v69 = v134;
    Array<A>.displayAttributes()(inited, v134);
    swift_setDeallocating();
    swift_arrayDestroy();
    v70 = (v132)(v9, &v12[v133], v6);
    MEMORY[0x1EEE9AC00](v70);
    v71 = v130;
    *(&v122 - 4) = v131;
    *(&v122 - 3) = v71;
    *(&v122 - 2) = &protocol witness table for TextBox;
    swift_getKeyPath();
    Capsule.subscript.getter();
    v60 = v125;

    (*&v60)(v9, v6);
    if (!*&v140.a)
    {
      v144.origin.x = a;
      v144.origin.y = b;
      v144.size.width = c;
      v144.size.height = d;
      v88 = CGRectGetWidth(v144);
      if (v28 >= v88)
      {
        v28 = v88;
      }

      v145.origin.x = a;
      v145.origin.y = b;
      v145.size.width = c;
      v145.size.height = d;
      v89 = CGRectGetHeight(v145);
      if (Height >= v89)
      {
        Height = v89;
      }

      v146.origin.x = a;
      v146.origin.y = b;
      v146.size.width = c;
      v146.size.height = d;
      v90 = CGRectGetMidX(v146);
      v147.origin.x = a;
      v147.origin.y = b;
      v147.size.width = c;
      v147.size.height = d;
      v91 = CGRectGetMidY(v147);
      outlined destroy of TextBoxViewAttributes(v69, type metadata accessor for TextBoxViewAttributes);
      a = v90 - v28 * 0.5;
      b = v91 - Height * 0.5;
      goto LABEL_46;
    }

    v72 = OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_isScribbling;
    if (v68[OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_isScribbling] == 1)
    {
      v73 = swift_unknownObjectWeakLoadStrong();
      if (v73)
      {
        v74 = v73;
        [v73 frame];
        v76 = v75;
        v78 = v77;
        v80 = v79;
        v82 = v81;
        v83 = swift_unknownObjectWeakLoadStrong();
        if (v83)
        {
          v84 = v83;
          AnyCanvasElementView.paperBoundsTransform()(&v140);
          v126 = *&v140.a;
          v122 = *&v140.tx;
          v123 = *&v140.c;

          v86 = v122;
          v85 = v123;
          v87 = v126;
        }

        else
        {
          v85 = xmmword_1D4059310;
          v87 = xmmword_1D4059320;
          v86 = 0uLL;
        }

        *&v138.a = v87;
        *&v138.c = v85;
        *&v138.tx = v86;
        CGAffineTransformInvert(&v137, &v138);
        v138 = v137;
        v148.origin.x = v76;
        v148.origin.y = v78;
        v148.size.width = v80;
        v148.size.height = v82;
        v149 = CGRectApplyAffineTransform(v148, &v138);
        a = v149.origin.x;
        b = v149.origin.y;
        c = v149.size.width;
        d = v149.size.height;
      }

      else
      {
        a = 0.0;
        b = 0.0;
        c = 0.0;
        d = 0.0;
      }

      if (v68[v72] == 1)
      {
        v92 = [v68 traitCollection];
        v93 = [v92 layoutDirection];

        if (v68[v72] == 1)
        {
          v94 = [v68 traitCollection];
          v95 = [v94 layoutDirection];

          v96 = v95 == 1;
          if (v93)
          {
            v97 = v134;
            v60 = v125;
LABEL_40:
            v98 = v97 + *(v124 + 32);
            v99 = *v98;
            v100 = *(v98 + 8);
            if ((v100 & 1) != 0 || v99)
            {
              v101 = a;
              v102 = b;
              v103 = c;
              v104 = d;
              if ((v96 | (v99 == 2) & ~v100) == 1)
              {
                v105 = CGRectGetWidth(*&v101);
                outlined destroy of TextBoxViewAttributes(v97, type metadata accessor for TextBoxViewAttributes);
                a = a - (v28 - v105);
              }

              else
              {
                v106 = CGRectGetMidX(*&v101) + v28 * -0.5;
                v150.origin.x = a;
                v150.origin.y = b;
                v150.size.width = c;
                v150.size.height = d;
                b = CGRectGetMinY(v150);
                outlined destroy of TextBoxViewAttributes(v97, type metadata accessor for TextBoxViewAttributes);
                a = v106;
              }

              goto LABEL_46;
            }

            goto LABEL_42;
          }

          v97 = v134;
          v60 = v125;
        }

        else
        {
          v97 = v134;
          v60 = v125;
          if (v93)
          {
            v96 = 0;
            goto LABEL_40;
          }
        }

LABEL_42:
        outlined destroy of TextBoxViewAttributes(v97, type metadata accessor for TextBoxViewAttributes);
        goto LABEL_46;
      }
    }

    v96 = 0;
    v97 = v134;
    goto LABEL_40;
  }

  __break(1u);
}

{
  v3 = type metadata accessor for TextBoxViewAttributes(0);
  MEMORY[0x1EEE9AC00](v3);
  v142 = (&v135 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v135 - v7;
  v9 = direct field offset for TextBoxView.canvasElementView;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v14 = xmmword_1D4059310;
    v15 = xmmword_1D4059320;
    v16 = 0uLL;
LABEL_55:
    *a1 = v15;
    a1[1] = v14;
    a1[2] = v16;
    return;
  }

  v11 = Strong;
  v138 = a1;
  v12 = *&v1[OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_textView];
  v136 = v3;
  *&v137 = v9;
  *&v141 = v1;
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    [v1 bounds];
    v13 = [objc_allocWithZone(MEMORY[0x1E69DD168]) initWithFrame:*&v1[direct field offset for TextBoxView.textContainer] textContainer:{v17, v18, v19, v20}];
    v12 = 0;
  }

  v145 = v13;
  v21 = v12;
  v22 = [v13 setTextContainerInset_];
  v23 = MEMORY[0x1E69E7D40];
  v24 = *((*MEMORY[0x1E69E7D40] & *v11) + 0x280);
  v139 = (*MEMORY[0x1E69E7D40] & *v11) + 640;
  v140 = v24;
  v24(v22);
  v26 = v25;
  v27 = *((*v23 & *v11) + 0x3F0);
  swift_beginAccess();
  v28 = *(v6 + 16);
  v28(v8, &v11[*&v27], v5);
  v29 = v8;
  v30 = specialized Capsule<>.isFixedWidth.getter();
  v31 = v11;
  v32 = *(v6 + 8);
  v32(v29, v5);
  v143 = v27;
  v144 = *&v32;
  *&v150 = v29;
  v147 = v31;
  *&v148 = v6 + 8;
  *&v149 = v28;
  *&v146 = v6 + 16;
  if ((v30 & 1) == 0)
  {
    v52 = swift_unknownObjectWeakLoadStrong();
    if (v52)
    {
      v53 = v52;
      v54 = MEMORY[0x1E69E7D40];
      v55 = (*((*MEMORY[0x1E69E7D40] & *v52) + 0x90))();

      v51 = v144;
      if (v55)
      {
        v56 = (*((*v54 & *v55) + 0x440))();
        v57 = (*((*v54 & *v56) + 0x280))();
        v59 = v58;
        v61 = v60;
        v63 = v62;

        v158.origin.x = v57;
        v158.origin.y = v59;
        v158.size.width = v61;
        v158.size.height = v63;
        Width = CGRectGetWidth(v158);

        v65 = Width + -48.0;
      }

      else
      {
        v65 = 1.79769313e308;
      }

      v43 = v142;
    }

    else
    {
      v65 = 1.79769313e308;
      v43 = v142;
      v51 = v144;
    }

    [v145 sizeThatFits_];
    v67 = v66;
    v36 = v68;
    [*(v141 + direct field offset for TextBoxView.textContainer) lineFragmentPadding];
    v26 = v67 + v69 + v69;
    v39 = v31;
    v42 = v143;
LABEL_23:
    v70 = v150;
    v71 = (v149)(v150, &v39[*&v42], v5);
    MEMORY[0x1EEE9AC00](v71);
    v140 = type metadata accessor for Shape(0);
    *(&v135 - 4) = v140;
    v139 = lazy protocol witness table accessor for type TextBox and conformance TextBox(&lazy protocol witness table cache variable for type Shape and conformance Shape, type metadata accessor for Shape, &protocol conformance descriptor for Shape);
    *(&v135 - 3) = v139;
    *(&v135 - 2) = &protocol witness table for Shape;
    swift_getKeyPath();
    Capsule.subscript.getter();

    (*&v51)(v70, v5);
    a = v155.a;
    b = v155.b;
    c = v155.c;
    d = v155.d;
    if (vabdd_f64(v155.c, v26) < 0.1 && vabdd_f64(v155.d, v36) < 0.1)
    {
      v26 = v155.c;
      v36 = v155.d;
      v76 = v145;
LABEL_36:
      v103 = v149;
LABEL_54:
      v143 = v26;
      v144 = v36;
      v118 = v147;
      v119 = v150;
      v120 = v103(v150, &v147[*&v42], v5);
      MEMORY[0x1EEE9AC00](v120);
      v121 = v139;
      *(&v135 - 4) = v140;
      *(&v135 - 3) = v121;
      *(&v135 - 2) = &protocol witness table for Shape;
      swift_getKeyPath();
      Capsule.subscript.getter();

      (*&v51)(v119, v5);
      v122 = v154;
      *&v150 = a - v26 * 0.0;
      *&v149 = b - v36 * 0.0;
      v166.origin.x = a;
      v166.origin.y = b;
      v166.size.width = v26;
      v166.size.height = v36;
      MidX = CGRectGetMidX(v166);
      v167.origin.x = a;
      v167.origin.y = b;
      v167.size.width = v26;
      v167.size.height = v36;
      MidY = CGRectGetMidY(v167);
      CGAffineTransformMakeRotation(&v153, v122);
      tx = v153.tx;
      ty = v153.ty;
      v148 = *&v153.a;
      v146 = *&v153.c;
      CGAffineTransformMakeTranslation(&v153, -MidX, -MidY);
      v127 = v153.a;
      v128 = v153.b;
      v130 = v153.c;
      v129 = v153.d;
      v131 = v153.tx;
      v132 = v153.ty;
      *&v152.a = v148;
      *&v152.c = v146;
      v152.tx = tx;
      v152.ty = ty;
      CGAffineTransformConcat(&v151, &v153, &v152);
      v133 = v151.tx;
      v134 = v151.ty;
      v148 = *&v151.a;
      v146 = *&v151.c;
      v153.a = v127;
      v153.b = v128;
      v153.c = v130;
      v153.d = v129;
      v153.tx = v131;
      v153.ty = v132;
      CGAffineTransformInvert(&v152, &v153);
      *&v153.a = v148;
      *&v153.c = v146;
      v153.tx = v133;
      v153.ty = v134;
      CGAffineTransformConcat(&v151, &v153, &v152);
      v153.a = v143;
      v153.b = 0.0;
      v153.c = 0.0;
      v153.d = v144;
      *&v153.tx = v150;
      *&v153.ty = v149;
      v152 = v151;
      CGAffineTransformConcat(&v151, &v153, &v152);
      v149 = *&v151.c;
      v150 = *&v151.a;
      v148 = *&v151.tx;

      v16 = v148;
      v14 = v149;
      v15 = v150;
      a1 = v138;
      goto LABEL_55;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D405CEB0;
    v78 = v141;
    *(inited + 32) = v141;
    v79 = v78;
    Array<A>.displayAttributes()(inited, v43);
    swift_setDeallocating();
    swift_arrayDestroy();
    v80 = v150;
    v81 = (v149)(v150, &v147[*&v42], v5);
    MEMORY[0x1EEE9AC00](v81);
    v82 = v139;
    *(&v135 - 4) = v140;
    *(&v135 - 3) = v82;
    *(&v135 - 2) = &protocol witness table for Shape;
    swift_getKeyPath();
    Capsule.subscript.getter();
    v51 = v144;

    (*&v51)(v80, v5);
    if (!*&v155.a)
    {
      v159.origin.x = a;
      v159.origin.y = b;
      v159.size.width = c;
      v159.size.height = d;
      v99 = CGRectGetWidth(v159);
      if (v26 >= v99)
      {
        v26 = v99;
      }

      v160.origin.x = a;
      v160.origin.y = b;
      v160.size.width = c;
      v160.size.height = d;
      Height = CGRectGetHeight(v160);
      if (v36 >= Height)
      {
        v36 = Height;
      }

      v161.origin.x = a;
      v161.origin.y = b;
      v161.size.width = c;
      v161.size.height = d;
      v101 = CGRectGetMidX(v161);
      v162.origin.x = a;
      v162.origin.y = b;
      v162.size.width = c;
      v162.size.height = d;
      v102 = CGRectGetMidY(v162);
      outlined destroy of TextBoxViewAttributes(v43, type metadata accessor for TextBoxViewAttributes);
      a = v101 - v26 * 0.5;
      b = v102 - v36 * 0.5;
      v76 = v145;
      v42 = v143;
      goto LABEL_36;
    }

    v83 = OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_isScribbling;
    if (v79[OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_isScribbling] == 1)
    {
      v84 = swift_unknownObjectWeakLoadStrong();
      v42 = v143;
      if (v84)
      {
        v85 = v84;
        [v84 frame];
        v87 = v86;
        v89 = v88;
        v91 = v90;
        v93 = v92;
        v94 = swift_unknownObjectWeakLoadStrong();
        if (v94)
        {
          v95 = v94;
          AnyCanvasElementView.paperBoundsTransform()(&v155);
          v141 = *&v155.a;
          v137 = *&v155.c;
          v135 = *&v155.tx;

          v96 = v135;
          v97 = v141;
          v98 = v137;
        }

        else
        {
          v98 = xmmword_1D4059310;
          v97 = xmmword_1D4059320;
          v96 = 0uLL;
        }

        *&v153.a = v97;
        *&v153.c = v98;
        *&v153.tx = v96;
        CGAffineTransformInvert(&v152, &v153);
        v153 = v152;
        v163.origin.x = v87;
        v163.origin.y = v89;
        v163.size.width = v91;
        v163.size.height = v93;
        v164 = CGRectApplyAffineTransform(v163, &v153);
        a = v164.origin.x;
        b = v164.origin.y;
        c = v164.size.width;
        d = v164.size.height;
      }

      else
      {
        a = 0.0;
        b = 0.0;
        c = 0.0;
        d = 0.0;
      }

      if (v79[v83] != 1)
      {
        v104 = 0;
        v76 = v145;
        v43 = v142;
        goto LABEL_47;
      }

      v105 = [v79 traitCollection];
      v106 = [v105 layoutDirection];

      if (v79[v83] == 1)
      {
        v107 = [v79 traitCollection];
        v108 = [v107 layoutDirection];

        v104 = v108 == 1;
        v76 = v145;
        if (v106)
        {
          v43 = v142;
          v51 = v144;
          goto LABEL_38;
        }

        v43 = v142;
        v42 = v143;
        v51 = v144;
        v103 = v149;
      }

      else
      {
        v51 = v144;
        v76 = v145;
        v43 = v142;
        v42 = v143;
        v103 = v149;
        if (v106)
        {
          v104 = 0;
          goto LABEL_48;
        }
      }

LABEL_50:
      outlined destroy of TextBoxViewAttributes(v43, type metadata accessor for TextBoxViewAttributes);
      goto LABEL_54;
    }

    v104 = 0;
    v76 = v145;
LABEL_38:
    v42 = v143;
LABEL_47:
    v103 = v149;
LABEL_48:
    v109 = v43 + *(v136 + 32);
    v110 = *v109;
    v111 = v109[8];
    if ((v111 & 1) != 0 || v110)
    {
      v112 = a;
      v113 = b;
      v114 = c;
      v115 = d;
      if ((v104 | (v110 == 2) & ~v111) == 1)
      {
        v116 = CGRectGetWidth(*&v112);
        outlined destroy of TextBoxViewAttributes(v43, type metadata accessor for TextBoxViewAttributes);
        a = a - (v26 - v116);
      }

      else
      {
        v117 = CGRectGetMidX(*&v112) + v26 * -0.5;
        v165.origin.x = a;
        v165.origin.y = b;
        v165.size.width = c;
        v165.size.height = d;
        b = CGRectGetMinY(v165);
        outlined destroy of TextBoxViewAttributes(v43, type metadata accessor for TextBoxViewAttributes);
        a = v117;
      }

      goto LABEL_54;
    }

    goto LABEL_50;
  }

  v33 = v31;
  v34 = v145;
  [v145 sizeThatFits_];
  v36 = v35;
  v28(v29, &v33[*&v27], v5);
  LOBYTE(v33) = specialized Capsule<>.isFormField.getter();
  *&v135 = v5;
  v37 = (v32)(v29, v5);
  if ((v33 & 1) == 0)
  {
    v39 = v147;
    v43 = v142;
    v42 = v143;
    v51 = v144;
    v5 = v135;
    goto LABEL_23;
  }

  v38 = v34;
  v39 = v147;
  v156.origin.x = v140(v37);
  v41 = CGRectGetHeight(v156);
  v43 = v142;
  v42 = v143;
  v5 = v135;
  if (v36 < v41)
  {
LABEL_13:
    v157.origin.x = v140(v40);
    v36 = CGRectGetHeight(v157);
LABEL_14:
    v51 = v144;
    goto LABEL_23;
  }

  v44 = v39;
  v45 = [v38 text];
  if (v45)
  {
    v46 = v45;
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    v50 = HIBYTE(v49) & 0xF;
    if ((v49 & 0x2000000000000000) == 0)
    {
      v50 = v47 & 0xFFFFFFFFFFFFLL;
    }

    v39 = v44;
    if (v50)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  __break(1u);
}

double specialized TextBoxView.finalizeLastUndoActionIfPossible(closeUndoGroup:)(int a1)
{
  v2 = v1;
  v51 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence17CapsuleUndoActionVSgMd, &_s9Coherence17CapsuleUndoActionVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v41 - v4;
  v6 = type metadata accessor for CapsuleUndoAction();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v48 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v49 = v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit7TextBoxVGSgMd, &_s9Coherence7CapsuleVy8PaperKit7TextBoxVGSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v50 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v41 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMd, &_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMR);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&result = MEMORY[0x1EEE9AC00](v20).n128_u64[0];
  v23 = v41 - v22;
  v24 = *(v2 + direct field offset for TextBoxView.currentUndoAction);
  if (v24)
  {
    v47 = v7;
    v45 = direct field offset for TextBoxView.currentUndoAction;
    v25 = *(*v24 + 104);
    swift_beginAccess();
    v46 = v25;
    outlined init with copy of Date?(v24 + v25, v15, &_s9Coherence7CapsuleVy8PaperKit7TextBoxVGSgMd, &_s9Coherence7CapsuleVy8PaperKit7TextBoxVGSgMR);
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v15, &_s9Coherence7CapsuleVy8PaperKit7TextBoxVGSgMd, &_s9Coherence7CapsuleVy8PaperKit7TextBoxVGSgMR);
    }

    else
    {
      v42 = *(v17 + 32);
      v43 = v17 + 32;
      v42(v23, v15, v16);
      v26 = (*(v17 + 16))(v19, v23, v16);
      MEMORY[0x1EEE9AC00](v26);
      v44 = v2;
      v41[-2] = v2;

      Capsule.callAsFunction<A>(_:)();
      Capsule.actionUndoingDifference(from:)();
      v27 = v47;
      if ((*(v47 + 48))(v5, 1, v6) == 1)
      {
        v28 = *(v17 + 8);
        v28(v23, v16);
        outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_s9Coherence17CapsuleUndoActionVSgMd, &_s9Coherence17CapsuleUndoActionVSgMR);
      }

      else
      {
        v29 = v49;
        v41[0] = *(v27 + 32);
        v41[1] = v27 + 32;
        (v41[0])(v49, v5, v6);
        (*(v27 + 16))(v48, v29, v6);
        v30 = *(*v24 + 112);
        swift_beginAccess();
        v31 = *(v24 + v30);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v24 + v30) = v31;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31[2] + 1, 1, v31);
          *(v24 + v30) = v31;
        }

        v34 = v31[2];
        v33 = v31[3];
        if (v34 >= v33 >> 1)
        {
          v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v31);
        }

        v31[2] = v34 + 1;
        v35 = v47;
        (v41[0])(v31 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v34, v48, v6);
        *(v24 + v30) = v31;
        swift_endAccess();
        (*(v35 + 8))(v49, v6);
        v28 = *(v17 + 8);
        v28(v23, v16);
      }

      v36 = v44;
      if (v51)
      {
        v28(v19, v16);
        v37 = v50;
        (*(v17 + 56))(v50, 1, 1, v16);
        v38 = v46;
        swift_beginAccess();
        outlined assign with take of UUID?(v37, v24 + v38, &_s9Coherence7CapsuleVy8PaperKit7TextBoxVGSgMd, &_s9Coherence7CapsuleVy8PaperKit7TextBoxVGSgMR);
        swift_endAccess();

        *(v36 + v45) = 0;
      }

      else
      {
        v39 = v50;
        v42(v50, v19, v16);
        (*(v17 + 56))(v39, 0, 1, v16);
        v40 = v46;
        swift_beginAccess();
        outlined assign with take of UUID?(v39, v24 + v40, &_s9Coherence7CapsuleVy8PaperKit7TextBoxVGSgMd, &_s9Coherence7CapsuleVy8PaperKit7TextBoxVGSgMR);
        swift_endAccess();
      }
    }
  }

  return result;
}

{
  v2 = v1;
  v51 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence17CapsuleUndoActionVSgMd, &_s9Coherence17CapsuleUndoActionVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v41 - v4;
  v6 = type metadata accessor for CapsuleUndoAction();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v48 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v49 = v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v50 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v41 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGMR);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&result = MEMORY[0x1EEE9AC00](v20).n128_u64[0];
  v23 = v41 - v22;
  v24 = *(v2 + direct field offset for TextBoxView.currentUndoAction);
  if (v24)
  {
    v47 = v7;
    v45 = direct field offset for TextBoxView.currentUndoAction;
    v25 = *(*v24 + 104);
    swift_beginAccess();
    v46 = v25;
    outlined init with copy of Date?(v24 + v25, v15, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGSgMR);
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v15, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGSgMR);
    }

    else
    {
      v42 = *(v17 + 32);
      v43 = v17 + 32;
      v42(v23, v15, v16);
      v26 = (*(v17 + 16))(v19, v23, v16);
      MEMORY[0x1EEE9AC00](v26);
      v44 = v2;
      v41[-2] = v2;

      Capsule.callAsFunction<A>(_:)();
      Capsule.actionUndoingDifference(from:)();
      v27 = v47;
      if ((*(v47 + 48))(v5, 1, v6) == 1)
      {
        v28 = *(v17 + 8);
        v28(v23, v16);
        outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_s9Coherence17CapsuleUndoActionVSgMd, &_s9Coherence17CapsuleUndoActionVSgMR);
      }

      else
      {
        v29 = v49;
        v41[0] = *(v27 + 32);
        v41[1] = v27 + 32;
        (v41[0])(v49, v5, v6);
        (*(v27 + 16))(v48, v29, v6);
        v30 = *(*v24 + 112);
        swift_beginAccess();
        v31 = *(v24 + v30);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v24 + v30) = v31;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31[2] + 1, 1, v31);
          *(v24 + v30) = v31;
        }

        v34 = v31[2];
        v33 = v31[3];
        if (v34 >= v33 >> 1)
        {
          v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v31);
        }

        v31[2] = v34 + 1;
        v35 = v47;
        (v41[0])(v31 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v34, v48, v6);
        *(v24 + v30) = v31;
        swift_endAccess();
        (*(v35 + 8))(v49, v6);
        v28 = *(v17 + 8);
        v28(v23, v16);
      }

      v36 = v44;
      if (v51)
      {
        v28(v19, v16);
        v37 = v50;
        (*(v17 + 56))(v50, 1, 1, v16);
        v38 = v46;
        swift_beginAccess();
        outlined assign with take of UUID?(v37, v24 + v38, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGSgMR);
        swift_endAccess();

        *(v36 + v45) = 0;
      }

      else
      {
        v39 = v50;
        v42(v50, v19, v16);
        (*(v17 + 56))(v39, 0, 1, v16);
        v40 = v46;
        swift_beginAccess();
        outlined assign with take of UUID?(v39, v24 + v40, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGSgMR);
        swift_endAccess();
      }
    }
  }

  return result;
}

uint64_t specialized closure #1 in TextBoxView.finalizeLastUndoActionIfPossible(closeUndoGroup:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15[-v5 - 8];
  v7 = *(a2 + direct field offset for TextBoxView.textStorage);
  v8 = OBJC_IVAR____TtC8PaperKit13CRTextStorage_mergeableString;
  swift_beginAccess();
  (*(v4 + 16))(v6, v7 + v8, v3);
  v9 = Capsule.Ref.root.modify();
  v11 = v10;
  v12 = type metadata accessor for TextBox(0);
  (*(v4 + 40))(v11 + *(v12 + 24), v6, v3);
  return v9(v15, 0);
}

{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v49 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v47 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v51 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v52 = &v47 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v47 - v16;
  v18 = *(a2 + direct field offset for TextBoxView.textStorage);
  v19 = OBJC_IVAR____TtC8PaperKit13CRTextStorage_mergeableString;
  swift_beginAccess();
  v20 = *(v8 + 16);
  v20(v17, v18 + v19, v7);
  v53 = Capsule.Ref.root.modify();
  v22 = v21;
  v47 = type metadata accessor for Shape(0);
  v23 = *(v47 + 52);
  v56 = v8;
  v24 = v8;
  v25 = v7;
  v26 = v23;
  v27 = *(v24 + 24);
  v54 = v17;
  v28 = v17;
  v29 = v22;
  v27(v22 + v23, v28, v25);
  v50 = v20;
  v20(v14, v22 + v26, v25);
  v30 = CRAttributedString.attributedString.getter();
  v31 = [v30 string];

  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  if (v32)
  {
    v35 = 0;
  }

  else
  {
    v35 = v34 == 0xE000000000000000;
  }

  if (v35)
  {

    v37 = *(v56 + 8);
    v37(v14, v25);
LABEL_8:
    v37(v54, v25);
    return v53(v55, 0);
  }

  v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v37 = *(v56 + 8);
  v37(v14, v25);
  if (v36)
  {
    goto LABEL_8;
  }

  v38 = v52;
  v39 = v50;
  v50(v52, v29 + v26, v25);
  v40 = v51;
  v39(v51, v29 + v26, v25);
  v41 = CRAttributedString.attributedString.getter();
  v37(v40, v25);
  v42 = [v41 length];

  result = v42 - 1;
  if (!__OFSUB__(v42, 1))
  {
    v44 = v25;
    v45 = v48;
    CRAttributedString.attributes(at:effectiveRange:)();
    v37(v38, v44);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMR);
    (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
    outlined init with copy of Date?(v45, v49, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd, &_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMR);
    CRRegister.wrappedValue.setter();
    outlined destroy of StocksKitCurrencyCache.Provider?(v45, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
    v37(v54, v44);
    return v53(v55, 0);
  }

  __break(1u);
  return result;
}

uint64_t outlined init with take of CRAttributedString<TextAttributeScope>.Runs.Run?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for specialized closure #1 in TextBoxView.resetUndoActionIfPossible()(uint64_t a1)
{
  return specialized closure #1 in TextBoxView.finalizeLastUndoActionIfPossible(closeUndoGroup:)(a1, *(v1 + 16));
}

{
  return specialized closure #1 in TextBoxView.finalizeLastUndoActionIfPossible(closeUndoGroup:)(a1, *(v1 + 16));
}

uint64_t lazy protocol witness table accessor for type TextBox and conformance TextBox(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined destroy of TextBoxViewAttributes(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t partial apply for specialized closure #1 in TextBoxView.finalizeLastUndoActionIfPossible(closeUndoGroup:)(uint64_t a1)
{
  return partial apply for specialized closure #1 in TextBoxView.resetUndoActionIfPossible()(a1);
}

{
  return partial apply for specialized closure #1 in TextBoxView.resetUndoActionIfPossible()(a1);
}

Swift::Void __swiftcall PDFRenderer.Context.beginPage()()
{
  if (*(v0 + 40) == 1)
  {
    CGPDFContextEndPage(*(v0 + 32));
  }

  *(v0 + 40) = 1;
  v1 = *(v0 + 32);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  CGPDFContextBeginPage(v1, isa);

  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v9.origin.x = 0.0;
  v9.origin.y = 0.0;
  v9.size.width = v3;
  v9.size.height = v4;
  MinY = CGRectGetMinY(v9);
  v10.origin.x = 0.0;
  v10.origin.y = 0.0;
  v10.size.width = v3;
  v10.size.height = v4;
  t1.a = 1.0;
  t1.b = 0.0;
  t1.c = 0.0;
  t1.d = 1.0;
  t1.tx = 0.0;
  t1.ty = 0.0;
  t2.b = 0.0;
  t2.c = 0.0;
  t2.a = 1.0;
  *&t2.d = xmmword_1D405A660;
  t2.ty = MinY + CGRectGetMaxY(v10);
  CGAffineTransformConcat(&v6, &t1, &t2);
  t1 = v6;
  CGContextConcatCTM(v1, &t1);
}

uint64_t PDFRenderer.Context.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void protocol witness for RendererContext.endRendering() in conformance PDFRenderer.Context()
{
  v1 = *v0;
  CGPDFContextEndPage(*(*v0 + 32));
  v2 = *(v1 + 32);

  CGPDFContextClose(v2);
}

CGContextRef PDFRenderer.createCGContext(output:)(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &mediaBox - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RendererOutput(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&mediaBox - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v1 + 40);
  mediaBox.origin = *(v1 + 24);
  mediaBox.size = v10;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_yXlTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  outlined init with copy of RendererOutput(a1, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    (*(v4 + 32))(v6, v9, v3);
    URL._bridgeToObjectiveC()(v12);
    v14 = v13;
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v16 = CGPDFContextCreateWithURL(v14, &mediaBox, isa);

    (*(v4 + 8))(v6, v3);
    return v16;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v17 = *v9;
    v18 = CGDataConsumerCreateWithCFData(*v9);
    if (v18)
    {
      v19 = v18;
      v20 = Dictionary._bridgeToObjectiveC()().super.isa;

      v16 = CGPDFContextCreate(v19, &mediaBox, v20);
    }

    else
    {

      return 0;
    }

    return v16;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for Renderer.createContext(output:) in conformance PDFRenderer@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  result = PDFRenderer.createCGContext(output:)(a1);
  if (result)
  {
    v6 = result;
    v7 = *(v4 + 40);
    v8 = *(v4 + 48);
    v9 = type metadata accessor for PDFRenderer.Context();
    result = swift_allocObject();
    *(result + 40) = 0;
    *(result + 16) = v7;
    *(result + 24) = v8;
    *(result + 32) = v6;
    v10 = &protocol witness table for PDFRenderer.Context;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  *a2 = result;
  a2[3] = v9;
  a2[4] = v10;
  return result;
}

uint64_t outlined init with copy of RendererOutput(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RendererOutput(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for DataOrURL(uint64_t a1)
{
  result = type metadata singleton initialization cache for DataOrURL;
  if (!type metadata singleton initialization cache for DataOrURL)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for DataOrURL(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

double CRAttributedString<>.init(nsAttributedString:scale:)(uint64_t a1, double a2)
{
  lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
  CRAttributedString.init(_:transformAttributes:)();
  return result;
}

uint64_t CRAttributedString<>.isEmpty.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  v0 = CRAttributedString.attributedString.getter();
  v1 = [v0 string];

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  if (v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4 == 0xE000000000000000;
  }

  if (v5)
  {

    return 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return v6 & 1;
  }
}

void CRAttributedString<>.init(string:attributes:scale:)(uint64_t a1, uint64_t a2, double a3)
{
  v5 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v6 = MEMORY[0x1DA6CCED0](a1, a2);

  type metadata accessor for NSAttributedStringKey(0);
  _sSo21NSAttributedStringKeyaABSHSCWlTm_1(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, &protocol conformance descriptor for NSAttributedStringKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v5 initWithString:v6 attributes:isa];

  lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
  CRAttributedString.init(_:transformAttributes:)();
}