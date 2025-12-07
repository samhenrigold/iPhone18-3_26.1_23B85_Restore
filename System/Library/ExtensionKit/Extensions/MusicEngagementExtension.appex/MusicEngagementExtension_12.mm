uint64_t closure #1 in MPModelSong.preferredBylineAttribution(with:from:)@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v34[2] = type metadata accessor for AttributedString.FormattingOptions();
  __chkstk_darwin();
  v34[1] = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  __chkstk_darwin();
  v34[0] = v34 - v7;
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin();
  type metadata accessor for AttributeContainer();
  __chkstk_darwin();
  v8 = *a1;
  v9 = SongBylineAttributionComponent.requiredProperties.getter(v8);
  v10 = [a2 hasLoadedValuesForPropertySet:v9];

  if (!v10)
  {
    v19 = type metadata accessor for AttributedString();
    return (*(*(v19 - 8) + 56))(a3, 1, 1, v19);
  }

  if (v8)
  {
    v11 = [a2 artist];
    v12 = a3;
    if (!v11)
    {
      goto LABEL_19;
    }

    v13 = v11;
    v14 = [v11 name];

    if (!v14)
    {
      goto LABEL_19;
    }

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v18 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (v18)
    {
      AttributeContainer.init()();
      AttributedString.init(_:attributes:)();
LABEL_17:
      v32 = type metadata accessor for AttributedString();
      return (*(*(v32 - 8) + 56))(v12, 0, 1, v32);
    }
  }

  else
  {
    v12 = a3;
    if (![a2 shouldShowComposer])
    {
      goto LABEL_19;
    }

    v21 = [a2 composer];
    if (!v21)
    {
      goto LABEL_19;
    }

    v22 = v21;
    v23 = [v21 name];

    if (!v23)
    {
      goto LABEL_19;
    }

    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27 = HIBYTE(v26) & 0xF;
    if ((v26 & 0x2000000000000000) == 0)
    {
      v27 = v24 & 0xFFFFFFFFFFFFLL;
    }

    if (v27)
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v28._countAndFlagsBits = 2128194;
      v28._object = 0xE300000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v28);
      v29._countAndFlagsBits = v24;
      v29._object = v26;
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v29);

      v30._countAndFlagsBits = 0;
      v30._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v30);
      String.LocalizationValue.init(stringInterpolation:)();
      v31 = type metadata accessor for Locale();
      (*(*(v31 - 8) + 56))(v34[0], 1, 1, v31);
      v34[5] = _swiftEmptyArrayStorage;
      lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions, &type metadata accessor for AttributedString.FormattingOptions, &protocol conformance descriptor for AttributedString.FormattingOptions);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation16AttributedStringV17FormattingOptionsVGMd, &_sSay10Foundation16AttributedStringV17FormattingOptionsVGMR);
      lazy protocol witness table accessor for type [AttributedString.FormattingOptions] and conformance [A]();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      AttributedString.init(localized:options:table:bundle:locale:comment:)();
      goto LABEL_17;
    }
  }

LABEL_19:
  v33 = type metadata accessor for AttributedString();
  return (*(*(v33 - 8) + 56))(v12, 1, 1, v33);
}

id SongBylineAttributionComponent.requiredProperties.getter(char a1)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So13MPPropertySetCtGMd, &_ss23_ContiguousArrayStorageCySS_So13MPPropertySetCtGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004F2400;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1004F2400;
    *(v3 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v3 + 40) = v4;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v6 = [objc_opt_self() propertySetWithProperties:isa];

    *(inited + 48) = v6;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So13MPPropertySetCTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of TaskPriority?(inited + 32, &_sSS_So13MPPropertySetCtMd, _sSS_So13MPPropertySetCtMR);
    v7 = objc_allocWithZone(MPPropertySet);
    v8.super.isa = Array._bridgeToObjectiveC()().super.isa;
    type metadata accessor for MPPropertySet();
    v9.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v10 = [v7 initWithProperties:v8.super.isa relationships:{v9.super.isa, 1, 2}];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1004F2400;
    *(v11 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v11 + 40) = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So13MPPropertySetCtGMd, &_ss23_ContiguousArrayStorageCySS_So13MPPropertySetCtGMR);
    v13 = swift_initStackObject();
    *(v13 + 16) = xmmword_1004F2400;
    *(v13 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v13 + 40) = v14;
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1004F2400;
    *(v15 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v15 + 40) = v16;
    v17 = Array._bridgeToObjectiveC()().super.isa;

    v18 = [objc_opt_self() propertySetWithProperties:v17];

    *(v13 + 48) = v18;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So13MPPropertySetCTt0g5Tf4g_n(v13);
    swift_setDeallocating();
    outlined destroy of TaskPriority?(v13 + 32, &_sSS_So13MPPropertySetCtMd, _sSS_So13MPPropertySetCtMR);
    v19 = objc_allocWithZone(MPPropertySet);
    v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

    type metadata accessor for MPPropertySet();
    v9.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v10 = [v19 initWithProperties:v8.super.isa relationships:{v9.super.isa, 1, 2}];
  }

  v20 = v10;

  return v20;
}

uint64_t specialized BylineProviding.byline(with:)@<X0>(char *a1@<X0>, void (*a2)(void)@<X1>, void *a3@<X8>)
{
  v7 = type metadata accessor for AttributedString();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1;

  specialized MutableCollection<>.sort(by:)(&v15);
  v11 = v15;
  __chkstk_darwin();
  *(&v14 - 2) = v3;
  v12 = specialized Sequence.compactMap<A>(_:)(a2, (&v14 - 4), v11);

  if (v12[2])
  {
    AttributedString.init(stringLiteral:)();
    Array<A>.joined(separator:)(v10, v12, v7, &protocol witness table for AttributedString, &protocol witness table for AttributedString, a3);

    (*(v8 + 8))(v10, v7);
    return (*(v8 + 56))(a3, 0, 1, v7);
  }

  else
  {
    (*(v8 + 56))(a3, 1, 1, v7);
  }
}

uint64_t BylineProviding.byline(with:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v9 = type metadata accessor for AttributedString();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1;

  specialized MutableCollection<>.sort(by:)(&v17);
  v13 = v17;
  __chkstk_darwin();
  *(&v16 - 4) = a2;
  *(&v16 - 3) = a3;
  *(&v16 - 2) = v4;
  v14 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in BylineProviding.byline(with:), (&v16 - 6), v13);

  if (v14[2])
  {
    AttributedString.init(stringLiteral:)();
    Array<A>.joined(separator:)(v12, v14, v9, &protocol witness table for AttributedString, &protocol witness table for AttributedString, a4);

    (*(v10 + 8))(v12, v9);
    return (*(v10 + 56))(a4, 0, 1, v9);
  }

  else
  {
    (*(v10 + 56))(a4, 1, 1, v9);
  }
}

uint64_t specialized closure #1 in BylineProviding.byline(with:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  type metadata accessor for AttributedString.FormattingOptions();
  __chkstk_darwin();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  __chkstk_darwin();
  v5 = v22 - v4;
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin();
  type metadata accessor for AttributeContainer();
  __chkstk_darwin();
  if (a1)
  {
    v6 = Song.artistName.getter();
    v8 = v7;

    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      Song.artistName.getter();
      AttributeContainer.init()();
      AttributedString.init(_:attributes:)();
LABEL_12:
      v19 = type metadata accessor for AttributedString();
      return (*(*(v19 - 8) + 56))(a2, 0, 1, v19);
    }
  }

  else if (Song.shouldShowComposer.getter())
  {
    v10 = Song.composerName.getter();
    if (v11)
    {
      v12 = v11;
      v13 = HIBYTE(v11) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        v13 = v10 & 0xFFFFFFFFFFFFLL;
      }

      if (v13)
      {
        v14 = v10;
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v15._countAndFlagsBits = 2128194;
        v15._object = 0xE300000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v15);
        v16._countAndFlagsBits = v14;
        v16._object = v12;
        String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v16);

        v17._countAndFlagsBits = 0;
        v17._object = 0xE000000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v17);
        String.LocalizationValue.init(stringInterpolation:)();
        v18 = type metadata accessor for Locale();
        (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
        v22[3] = _swiftEmptyArrayStorage;
        lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions, &type metadata accessor for AttributedString.FormattingOptions, &protocol conformance descriptor for AttributedString.FormattingOptions);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation16AttributedStringV17FormattingOptionsVGMd, &_sSay10Foundation16AttributedStringV17FormattingOptionsVGMR);
        lazy protocol witness table accessor for type [AttributedString.FormattingOptions] and conformance [A]();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        AttributedString.init(localized:options:table:bundle:locale:comment:)();
        goto LABEL_12;
      }
    }
  }

  v21 = type metadata accessor for AttributedString();
  return (*(*(v21 - 8) + 56))(a2, 1, 1, v21);
}

{
  v35 = a2;
  v33 = type metadata accessor for AttributedString.FormattingOptions();
  __chkstk_darwin();
  v34 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  __chkstk_darwin();
  v32 = v31 - v4;
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v31[1] = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin();
  v31[0] = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Playlist.Entry.InternalItem();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Song();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AttributeContainer();
  __chkstk_darwin();
  if ((a1 & 1) == 0)
  {
    if (Playlist.Entry.shouldShowComposer.getter())
    {
      Playlist.Entry.internalItem.getter();
      if ((*(v8 + 88))(v10, v7) == enum case for Playlist.Entry.InternalItem.song(_:))
      {
        (*(v8 + 96))(v10, v7);
        (*(v12 + 32))(v14, v10, v11);
        v21 = Song.composerName.getter();
        v23 = v22;
        (*(v12 + 8))(v14, v11);
        if (v23)
        {
          v24 = HIBYTE(v23) & 0xF;
          if ((v23 & 0x2000000000000000) == 0)
          {
            v24 = v21 & 0xFFFFFFFFFFFFLL;
          }

          v19 = v35;
          if (!v24)
          {

            v20 = 1;
            goto LABEL_16;
          }

          String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v25._countAndFlagsBits = 2128194;
          v25._object = 0xE300000000000000;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v25);
          v26._countAndFlagsBits = v21;
          v26._object = v23;
          String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v26);

          v27._countAndFlagsBits = 0;
          v27._object = 0xE000000000000000;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v27);
          String.LocalizationValue.init(stringInterpolation:)();
          v28 = type metadata accessor for Locale();
          (*(*(v28 - 8) + 56))(v32, 1, 1, v28);
          v36 = _swiftEmptyArrayStorage;
          lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions, &type metadata accessor for AttributedString.FormattingOptions, &protocol conformance descriptor for AttributedString.FormattingOptions);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation16AttributedStringV17FormattingOptionsVGMd, &_sSay10Foundation16AttributedStringV17FormattingOptionsVGMR);
          lazy protocol witness table accessor for type [AttributedString.FormattingOptions] and conformance [A]();
          dispatch thunk of SetAlgebra.init<A>(_:)();
          AttributedString.init(localized:options:table:bundle:locale:comment:)();
          goto LABEL_6;
        }
      }

      else
      {
        (*(v8 + 8))(v10, v7);
      }
    }

LABEL_15:
    v20 = 1;
    v19 = v35;
    goto LABEL_16;
  }

  v15 = Playlist.Entry.artistName.getter();
  v17 = v16;

  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {
    goto LABEL_15;
  }

  Playlist.Entry.artistName.getter();
  AttributeContainer.init()();
  v19 = v35;
  AttributedString.init(_:attributes:)();
LABEL_6:
  v20 = 0;
LABEL_16:
  v29 = type metadata accessor for AttributedString();
  return (*(*(v29 - 8) + 56))(v19, v20, 1, v29);
}

uint64_t specialized closure #1 in BylineProviding.byline(with:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a3;
  v35 = type metadata accessor for AttributedString.FormattingOptions();
  __chkstk_darwin();
  v36 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  __chkstk_darwin();
  v34 = v33 - v6;
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v33[1] = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin();
  v33[0] = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Track();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Song();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AttributeContainer();
  __chkstk_darwin();
  if ((a1 & 1) == 0)
  {
    if (Track.shouldShowComposer.getter())
    {
      (*(v10 + 16))(v12, a2, v9);
      if ((*(v10 + 88))(v12, v9) == enum case for Track.song(_:))
      {
        (*(v10 + 96))(v12, v9);
        (*(v14 + 32))(v16, v12, v13);
        v23 = Song.composerName.getter();
        v25 = v24;
        (*(v14 + 8))(v16, v13);
        if (v25)
        {
          v26 = HIBYTE(v25) & 0xF;
          if ((v25 & 0x2000000000000000) == 0)
          {
            v26 = v23 & 0xFFFFFFFFFFFFLL;
          }

          v21 = v37;
          if (!v26)
          {

            v22 = 1;
            goto LABEL_16;
          }

          String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v27._countAndFlagsBits = 2128194;
          v27._object = 0xE300000000000000;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v27);
          v28._countAndFlagsBits = v23;
          v28._object = v25;
          String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v28);

          v29._countAndFlagsBits = 0;
          v29._object = 0xE000000000000000;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v29);
          String.LocalizationValue.init(stringInterpolation:)();
          v30 = type metadata accessor for Locale();
          (*(*(v30 - 8) + 56))(v34, 1, 1, v30);
          v38 = _swiftEmptyArrayStorage;
          lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions, &type metadata accessor for AttributedString.FormattingOptions, &protocol conformance descriptor for AttributedString.FormattingOptions);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation16AttributedStringV17FormattingOptionsVGMd, &_sSay10Foundation16AttributedStringV17FormattingOptionsVGMR);
          lazy protocol witness table accessor for type [AttributedString.FormattingOptions] and conformance [A]();
          dispatch thunk of SetAlgebra.init<A>(_:)();
          AttributedString.init(localized:options:table:bundle:locale:comment:)();
          goto LABEL_6;
        }
      }

      else
      {
        (*(v10 + 8))(v12, v9);
      }
    }

LABEL_15:
    v22 = 1;
    v21 = v37;
    goto LABEL_16;
  }

  v17 = Track.artistName.getter();
  v19 = v18;

  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {
    goto LABEL_15;
  }

  Track.artistName.getter();
  AttributeContainer.init()();
  v21 = v37;
  AttributedString.init(_:attributes:)();
LABEL_6:
  v22 = 0;
LABEL_16:
  v31 = type metadata accessor for AttributedString();
  return (*(*(v31 - 8) + 56))(v21, v22, 1, v31);
}

uint64_t closure #1 in BylineProviding.byline(with:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X2>, uint64_t (**a3)(uint64_t, uint64_t)@<X3>, uint64_t a4@<X8>)
{
  v32 = a4;
  type metadata accessor for AttributedString.FormattingOptions();
  __chkstk_darwin();
  v31 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  __chkstk_darwin();
  v9 = &v31 - v8;
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin();
  type metadata accessor for AttributeContainer();
  v10 = __chkstk_darwin();
  if (*a1 == 1)
  {
    v11 = a3[1];
    v12 = (v11)(a2, a3, v10);
    v14 = v13;

    v15 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v15 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      v11(a2, a3);
      AttributeContainer.init()();
      v16 = v32;
      AttributedString.init(_:attributes:)();
      v17 = type metadata accessor for AttributedString();
      return (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
    }
  }

  else if ((a3[3])(a2, a3, v10))
  {
    v19 = a3[2](a2, a3);
    if (v20)
    {
      v21 = v20;
      v22 = HIBYTE(v20) & 0xF;
      if ((v20 & 0x2000000000000000) == 0)
      {
        v22 = v19 & 0xFFFFFFFFFFFFLL;
      }

      if (v22)
      {
        v23 = v19;
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v24._countAndFlagsBits = 2128194;
        v24._object = 0xE300000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v24);
        v25._countAndFlagsBits = v23;
        v25._object = v21;
        String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v25);

        v26._countAndFlagsBits = 0;
        v26._object = 0xE000000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v26);
        String.LocalizationValue.init(stringInterpolation:)();
        v27 = type metadata accessor for Locale();
        (*(*(v27 - 8) + 56))(v9, 1, 1, v27);
        v33 = _swiftEmptyArrayStorage;
        lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions, &type metadata accessor for AttributedString.FormattingOptions, &protocol conformance descriptor for AttributedString.FormattingOptions);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation16AttributedStringV17FormattingOptionsVGMd, &_sSay10Foundation16AttributedStringV17FormattingOptionsVGMR);
        lazy protocol witness table accessor for type [AttributedString.FormattingOptions] and conformance [A]();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v28 = v32;
        AttributedString.init(localized:options:table:bundle:locale:comment:)();
        v29 = type metadata accessor for AttributedString();
        return (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
      }
    }
  }

  v30 = type metadata accessor for AttributedString();
  return (*(*(v30 - 8) + 56))(v32, 1, 1, v30);
}

uint64_t Track.composerName.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Track();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Song();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin();
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2, v8);
  if ((*(v3 + 88))(v5, v2) == enum case for Track.song(_:))
  {
    (*(v3 + 96))(v5, v2);
    (*(v7 + 32))(v10, v5, v6);
    v11 = Song.composerName.getter();
    (*(v7 + 8))(v10, v6);
    return v11;
  }

  else
  {
    (*(v3 + 8))(v5, v2);
    return 0;
  }
}

uint64_t protocol witness for BylineProviding.composerName.getter in conformance Track(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = *(a1 - 8);
  __chkstk_darwin();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Song();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin();
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v4, a1, v10);
  if ((*(v5 + 88))(v7, a1) == enum case for Track.song(_:))
  {
    (*(v5 + 96))(v7, a1);
    (*(v9 + 32))(v12, v7, v8);
    v13 = Song.composerName.getter();
    (*(v9 + 8))(v12, v8);
    return v13;
  }

  else
  {
    (*(v5 + 8))(v7, a1);
    return 0;
  }
}

uint64_t Playlist.Entry.composerName.getter()
{
  v0 = type metadata accessor for Playlist.Entry.InternalItem();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Song();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Playlist.Entry.internalItem.getter();
  if ((*(v1 + 88))(v3, v0) == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v1 + 96))(v3, v0);
    (*(v5 + 32))(v7, v3, v4);
    v8 = Song.composerName.getter();
    (*(v5 + 8))(v7, v4);
    return v8;
  }

  else
  {
    (*(v1 + 8))(v3, v0);
    return 0;
  }
}

unint64_t lazy protocol witness table accessor for type SongBylineAttributionComponent and conformance SongBylineAttributionComponent()
{
  result = lazy protocol witness table cache variable for type SongBylineAttributionComponent and conformance SongBylineAttributionComponent;
  if (!lazy protocol witness table cache variable for type SongBylineAttributionComponent and conformance SongBylineAttributionComponent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SongBylineAttributionComponent and conformance SongBylineAttributionComponent);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_88:
    v83 = *v83;
    if (!v83)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
      v9 = result;
    }

    v75 = v9 + 16;
    v76 = *(v9 + 2);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = &v9[16 * v76];
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + *v77), (*a3 + *v79), (*a3 + v80), v83);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_112;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_113;
        }

        *v77 = v78;
        *(v77 + 1) = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_114;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
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
      v12 = *(*a3 + v10) & (v11 ^ 1);
      v13 = v10 + 2;
      while (v6 != v13)
      {
        v14 = *(*a3 + v13);
        v15 = v11 & (v14 ^ 1);
        ++v13;
        v11 = v14;
        if (v12 != v15)
        {
          v8 = v13 - 1;
          if (!v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (!v12)
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
        v16 = v8 - 1;
        v17 = v10;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v18 = *(v20 + v17);
            *(v20 + v17) = *(v20 + v16);
            *(v20 + v16) = v18;
          }
        }

        while (++v17 < v16--);
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

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v29 = *(v9 + 2);
    v28 = *(v9 + 3);
    v30 = v29 + 1;
    if (v29 >= v28 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v30;
    v31 = &v9[16 * v29];
    *(v31 + 4) = v10;
    *(v31 + 5) = v8;
    v32 = *v83;
    if (!*v83)
    {
      goto LABEL_125;
    }

    if (v29)
    {
      while (1)
      {
        v33 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v34 = *(v9 + 4);
          v35 = *(v9 + 5);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_103;
          }

          v50 = &v9[16 * v30];
          v52 = *v50;
          v51 = *(v50 + 1);
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = &v9[16 * v33 + 32];
          v58 = *v56;
          v57 = *(v56 + 1);
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_110;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v33 = v30 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v60 = &v9[16 * v30];
        v62 = *v60;
        v61 = *(v60 + 1);
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_71:
        if (v55)
        {
          goto LABEL_105;
        }

        v63 = &v9[16 * v33];
        v65 = *(v63 + 4);
        v64 = *(v63 + 5);
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_108;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_78:
        v71 = v33 - 1;
        if (v33 - 1 >= v30)
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

        v72 = *&v9[16 * v71 + 32];
        v73 = *&v9[16 * v33 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + v72), (*a3 + *&v9[16 * v33 + 32]), (*a3 + v73), v32);
        if (v4)
        {
        }

        if (v73 < v72)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
        }

        if (v71 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v74 = &v9[16 * v71];
        *(v74 + 4) = v72;
        *(v74 + 5) = v73;
        result = specialized Array.remove(at:)(v33);
        v30 = *(v9 + 2);
        if (v30 <= 1)
        {
          goto LABEL_3;
        }
      }

      v38 = &v9[16 * v30 + 32];
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_101;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_102;
      }

      v45 = &v9[16 * v30];
      v47 = *v45;
      v46 = *(v45 + 1);
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_104;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = &v9[16 * v33 + 32];
        v69 = *v67;
        v68 = *(v67 + 1);
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_111;
        }

        if (v36 < v70)
        {
          v33 = v30 - 2;
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

  v21 = *a3;
  v22 = *a3 + v8 - 1;
  v23 = v10 - v8;
LABEL_30:
  v24 = *(v21 + v8);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    if ((*v26 & (v24 ^ 1)) != 1)
    {
LABEL_29:
      ++v8;
      ++v22;
      --v23;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    v26[1] = *v26;
    *v26-- = v24;
    if (__CFADD__(v25++, 1))
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
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(_BYTE *__dst, _BYTE *__src, _BYTE *a3, _BYTE *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= a3 - __src)
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      do
      {
        v15 = v6 - 1;
        --v5;
        while (1)
        {
          v16 = v5 + 1;
          if (*v15 == 1 && *(v10 - 1) == 0)
          {
            break;
          }

          v18 = v10 - 1;
          if (v16 < v10 || v5 >= v10)
          {
            *v5 = *v18;
          }

          --v5;
          --v10;
          if (v18 <= v4)
          {
            v10 = v18;
            goto LABEL_46;
          }
        }

        if (v16 < v6 || v5 >= v6)
        {
          *v5 = *v15;
        }

        if (v10 <= v4)
        {
          break;
        }

        --v6;
      }

      while (v15 > v7);
      v6 = v15;
      if (v15 == v4)
      {
        goto LABEL_47;
      }

      goto LABEL_48;
    }

LABEL_46:
    if (v6 != v4)
    {
LABEL_48:
      memmove(v6, v4, v10 - v4);
      return 1;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        if (*v4 == 1 && *v6 == 0)
        {
          v14 = v6 + 1;
          v13 = v6;
          if (v7 >= v6 && v7 < v14)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v12 = v4 + 1;
          v13 = v4;
          v14 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v12)
            {
              goto LABEL_19;
            }
          }
        }

        *v7 = *v13;
LABEL_19:
        ++v7;
        if (v4 < v10)
        {
          v6 = v14;
          if (v14 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_48;
    }
  }

LABEL_47:
  if (v6 >= v10)
  {
    goto LABEL_48;
  }

  return 1;
}

uint64_t partial apply for specialized closure #1 in BylineProviding.byline(with:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  return specialized closure #1 in BylineProviding.byline(with:)(*a1, a2);
}

{
  return specialized closure #1 in BylineProviding.byline(with:)(*a1, *(v2 + 16), a2);
}

{
  return specialized closure #1 in BylineProviding.byline(with:)(*a1, a2);
}

uint64_t lazy protocol witness table accessor for type AttributedString and conformance AttributedString(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type [AttributedString.FormattingOptions] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [AttributedString.FormattingOptions] and conformance [A];
  if (!lazy protocol witness table cache variable for type [AttributedString.FormattingOptions] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation16AttributedStringV17FormattingOptionsVGMd, &_sSay10Foundation16AttributedStringV17FormattingOptionsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [AttributedString.FormattingOptions] and conformance [A]);
  }

  return result;
}

unint64_t type metadata accessor for MPPropertySet()
{
  result = lazy cache variable for type metadata for MPPropertySet;
  if (!lazy cache variable for type metadata for MPPropertySet)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for MPPropertySet);
  }

  return result;
}

void DefaultStringInterpolation.appendInterpolation(describing:default:)(uint64_t a1, uint64_t a2, void *a3)
{
  outlined init with copy of Any?(a1, &v6);
  if (v7)
  {
    outlined init with take of Any(&v6, v8);
    _print_unlocked<A, B>(_:_:)();
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
  }

  else
  {
    outlined destroy of Any?(&v6);
    v5._countAndFlagsBits = a2;
    v5._object = a3;
    String.append(_:)(v5);
  }
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd_0, &_sypSgMR_0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double one-time initialization function for defaultValue()
{
  if (one-time initialization token for supportedMaterials != -1)
  {
    swift_once();
  }

  static BackgroundMaterial.defaultValue = static BackgroundMaterial.supportedMaterials;

  return result;
}

uint64_t *BackgroundMaterial.supportedMaterials.unsafeMutableAddressor()
{
  if (one-time initialization token for supportedMaterials != -1)
  {
    swift_once();
  }

  return &static BackgroundMaterial.supportedMaterials;
}

uint64_t *BackgroundMaterial.defaultValue.unsafeMutableAddressor()
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  return &static BackgroundMaterial.defaultValue;
}

uint64_t one-time initialization function for supportedMaterials()
{
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1);
  v1 = _swiftEmptyArrayStorage[2];
  v0 = _swiftEmptyArrayStorage[3];
  v2 = v0 >> 1;
  v3 = v1 + 1;
  if (v0 >> 1 <= v1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v0 > 1), v1 + 1, 1);
    v0 = _swiftEmptyArrayStorage[3];
    v2 = v0 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v3;
  *(&_swiftEmptyArrayStorage[4] + v1) = 0;
  v4 = v1 + 2;
  if (v2 < v4)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v0 > 1), v4, 1);
  }

  _swiftEmptyArrayStorage[2] = v4;
  *(&_swiftEmptyArrayStorage[4] + v3) = 1;
  v5 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9MusicCore18BackgroundMaterialO_SayAFGTt0g5Tf4g_n(_swiftEmptyArrayStorage);

  static BackgroundMaterial.supportedMaterials = v5;
  return result;
}

double static BackgroundMaterial.defaultValue.getter(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }

  return result;
}

double protocol witness for static UITraitDefinition.defaultValue.getter in conformance BackgroundMaterial@<D0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static BackgroundMaterial.defaultValue;

  return result;
}

uint64_t UITraitCollection.supportedMaterials.getter()
{
  lazy protocol witness table accessor for type BackgroundMaterial and conformance BackgroundMaterial();
  UITraitCollection.subscript.getter();
  return v1;
}

uint64_t UIMutableTraits.supportedMaterials.getter(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type BackgroundMaterial and conformance BackgroundMaterial();
  dispatch thunk of UIMutableTraits.subscript.getter();
  return v3;
}

void (*UIMutableTraits.supportedMaterials.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  lazy protocol witness table accessor for type BackgroundMaterial and conformance BackgroundMaterial();
  dispatch thunk of UIMutableTraits.subscript.getter();
  return UIMutableTraits.supportedMaterials.modify;
}

void UIMutableTraits.supportedMaterials.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[1];
  if (a2)
  {

    lazy protocol witness table accessor for type BackgroundMaterial and conformance BackgroundMaterial();
    dispatch thunk of UIMutableTraits.subscript.setter();
  }

  else
  {
    *v2 = v3;
    lazy protocol witness table accessor for type BackgroundMaterial and conformance BackgroundMaterial();
    dispatch thunk of UIMutableTraits.subscript.setter();
  }

  free(v2);
}

unint64_t lazy protocol witness table accessor for type [BackgroundMaterial] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [BackgroundMaterial] and conformance [A];
  if (!lazy protocol witness table cache variable for type [BackgroundMaterial] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9MusicCore18BackgroundMaterialOGMd, &_sSay9MusicCore18BackgroundMaterialOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [BackgroundMaterial] and conformance [A]);
  }

  return result;
}

unint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1, unint64_t a2, unint64_t *a3, void *a4)
{
  v7 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  while (1)
  {
    if (v8 == v9)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v9 >= *(v7 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v10 = *(a2 + 8 * v9 + 32);
    }

    v11 = v10;
    type metadata accessor for UIAction(0, a3, a4);
    v12 = static NSObject.== infix(_:_:)();

    if (v12)
    {
      return v9;
    }

    if (__OFADD__(v9++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t specialized Collection<>.firstIndex(of:)(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  v5 = a2 + 32;
  while (1)
  {
    v6 = 0xD000000000000029;
    v7 = "orites";
    switch(*(v5 + v4))
    {
      case 1:
        v6 = 0xD000000000000025;
        v7 = "LibraryView.RecentlyAdded";
        break;
      case 2:
        v6 = 0xD000000000000023;
        v7 = "LibraryView.Playlists";
        break;
      case 3:
        v6 = 0xD000000000000022;
        v7 = "LibraryView.Artists";
        break;
      case 4:
        v6 = 0xD000000000000021;
        v7 = "LibraryView.Albums";
        break;
      case 5:
        v6 = 0xD000000000000026;
        v7 = "LibraryView.Songs";
        break;
      case 6:
        v6 = 0xD000000000000027;
        v7 = "LibraryView.MadeForYou";
        break;
      case 7:
        v6 = 0xD000000000000022;
        v7 = "LibraryView.MusicVideos";
        break;
      case 8:
        v6 = 0xD000000000000028;
        v7 = "LibraryView.Genres";
        break;
      case 9:
        v6 = 0xD000000000000025;
        v7 = "LibraryView.Compilations";
        break;
      case 0xA:
        v6 = 0xD000000000000021;
        v7 = "LibraryView.Composers";
        break;
      case 0xB:
        v6 = 0xD000000000000026;
        v7 = "LibraryView.Shows";
        break;
      case 0xC:
        v6 = 0xD000000000000027;
        v7 = "LibraryView.Downloaded";
        break;
      default:
        break;
    }

    v8 = v7 | 0x8000000000000000;
    v9 = 0xD000000000000029;
    v10 = "orites";
    switch(a1)
    {
      case 1:
        v9 = 0xD000000000000025;
        v10 = "LibraryView.RecentlyAdded";
        break;
      case 2:
        v9 = 0xD000000000000023;
        v10 = "LibraryView.Playlists";
        break;
      case 3:
        v9 = 0xD000000000000022;
        v10 = "LibraryView.Artists";
        break;
      case 4:
        v9 = 0xD000000000000021;
        v10 = "LibraryView.Albums";
        break;
      case 5:
        v9 = 0xD000000000000026;
        v10 = "LibraryView.Songs";
        break;
      case 6:
        v9 = 0xD000000000000027;
        v10 = "LibraryView.MadeForYou";
        break;
      case 7:
        v9 = 0xD000000000000022;
        v10 = "LibraryView.MusicVideos";
        break;
      case 8:
        v9 = 0xD000000000000028;
        v10 = "LibraryView.Genres";
        break;
      case 9:
        v9 = 0xD000000000000025;
        v10 = "LibraryView.Compilations";
        break;
      case 10:
        v9 = 0xD000000000000021;
        v10 = "LibraryView.Composers";
        break;
      case 11:
        v9 = 0xD000000000000026;
        v10 = "LibraryView.Shows";
        break;
      case 12:
        v9 = 0xD000000000000027;
        v10 = "LibraryView.Downloaded";
        break;
      default:
        break;
    }

    if (v6 == v9 && v8 == (v10 | 0x8000000000000000))
    {
      break;
    }

    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v11)
    {
      return v4;
    }

    if (v2 == ++v4)
    {
      return 0;
    }
  }

  return v4;
}

uint64_t one-time initialization function for playActivityFeatureName()
{
  result = swift_slowAlloc();
  static AssociatedKeys.playActivityFeatureName = result;
  return result;
}

uint64_t one-time initialization function for playActivityFeatureNameSourceViewController()
{
  result = swift_slowAlloc();
  static AssociatedKeys.playActivityFeatureNameSourceViewController = result;
  return result;
}

uint64_t one-time initialization function for playActivityRecommendationDataSourceViewController()
{
  result = swift_slowAlloc();
  static AssociatedKeys.playActivityRecommendationDataSourceViewController = result;
  return result;
}

uint64_t one-time initialization function for playActivityForwardedRecommendationData()
{
  result = swift_slowAlloc();
  static AssociatedKeys.playActivityForwardedRecommendationData = result;
  return result;
}

id UIViewController.WeakViewControllerReference.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UIViewController.WeakViewControllerReference();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void UIViewController.playActivityFeatureNameSourceViewController.setter(void *a1)
{
  specialized UIViewController.playActivityFeatureNameSourceViewController.setter(a1, &one-time initialization token for playActivityFeatureNameSourceViewController, &static AssociatedKeys.playActivityFeatureNameSourceViewController, one-time initialization function for playActivityFeatureNameSourceViewController);
}

id UIViewController.playActivityFeatureNameSourceViewController.getter(void *a1, const void **a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  if (objc_getAssociatedObject(v3, *a2))
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (!*(&v9 + 1))
  {
    outlined destroy of Any?(v10);
    return [v3 parentViewController];
  }

  type metadata accessor for UIViewController.WeakViewControllerReference();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return [v3 parentViewController];
  }

  Strong = swift_unknownObjectWeakLoadStrong();

  result = Strong;
  if (!Strong)
  {
    return [v3 parentViewController];
  }

  return result;
}

void UIViewController.playActivityRecommendationDataSourceViewController.setter(void *a1)
{
  specialized UIViewController.playActivityFeatureNameSourceViewController.setter(a1, &one-time initialization token for playActivityRecommendationDataSourceViewController, &static AssociatedKeys.playActivityRecommendationDataSourceViewController, one-time initialization function for playActivityRecommendationDataSourceViewController);
}

void (*UIViewController.playActivityRecommendationDataSourceViewController.modify(id *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = UIViewController.playActivityRecommendationDataSourceViewController.getter();
  return UIViewController.playActivityRecommendationDataSourceViewController.modify;
}

void UIViewController.playActivityRecommendationDataSourceViewController.modify(id *a1, char a2)
{
  value = *a1;
  if (a2)
  {
    v2 = value;
    specialized UIViewController.playActivityFeatureNameSourceViewController.setter(value, &one-time initialization token for playActivityRecommendationDataSourceViewController, &static AssociatedKeys.playActivityRecommendationDataSourceViewController, one-time initialization function for playActivityRecommendationDataSourceViewController);

    v3 = v2;
  }

  else
  {
    specialized UIViewController.playActivityFeatureNameSourceViewController.setter(*a1, &one-time initialization token for playActivityRecommendationDataSourceViewController, &static AssociatedKeys.playActivityRecommendationDataSourceViewController, one-time initialization function for playActivityRecommendationDataSourceViewController);
    v3 = value;
  }
}

uint64_t UIViewController.playActivityForwardedRecommendationData.getter()
{
  if (one-time initialization token for playActivityForwardedRecommendationData != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, static AssociatedKeys.playActivityForwardedRecommendationData))
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    outlined destroy of Any?(v5);
    return 0;
  }
}

uint64_t UIViewController.playActivityForwardedRecommendationData.setter(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (one-time initialization token for playActivityForwardedRecommendationData != -1)
  {
    swift_once();
  }

  v6 = static AssociatedKeys.playActivityForwardedRecommendationData;
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    outlined copy of Data._Representation(a1, a2);
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(a1, a2);
  }

  objc_setAssociatedObject(v3, v6, isa, 3);

  return outlined consume of Data?(a1, a2);
}

uint64_t UIViewController.inheritedPlayActivityRecommendationData(shouldIncludeForwardedRecommendationData:)(uint64_t a1)
{
  v2 = a1;
  v3 = [v1 playActivityRecommendationData];
  if (!v3 && ((v2 & 1) == 0 || (v3 = [v1 playActivityForwardedRecommendationData]) == 0))
  {
    v9 = UIViewController.playActivityRecommendationDataSourceViewController.getter();
    v5 = 0;
    if (v9)
    {
      goto LABEL_8;
    }

    return v5;
  }

  v4 = v3;
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = UIViewController.playActivityRecommendationDataSourceViewController.getter();
  v9 = v8;
  if (v7 >> 60 != 15)
  {
    goto LABEL_28;
  }

  if (v8)
  {
    while (1)
    {
LABEL_8:
      v10 = [v9 playActivityRecommendationData];
      if (v10 || (v2 & 1) != 0 && (v10 = [v9 playActivityForwardedRecommendationData]) != 0)
      {
        v11 = v10;
        v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = v12;
      }

      else
      {
        v5 = 0;
        v13 = 0xF000000000000000;
      }

      if (one-time initialization token for playActivityRecommendationDataSourceViewController != -1)
      {
        swift_once();
      }

      if (objc_getAssociatedObject(v9, static AssociatedKeys.playActivityRecommendationDataSourceViewController))
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v18 = 0u;
        v19 = 0u;
      }

      v20[0] = v18;
      v20[1] = v19;
      if (!*(&v19 + 1))
      {
        break;
      }

      type metadata accessor for UIViewController.WeakViewControllerReference();
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_23;
      }

      v16 = v13;
      Strong = swift_unknownObjectWeakLoadStrong();

      if (!Strong)
      {
        goto LABEL_23;
      }

LABEL_24:

      if (v13 >> 60 != 15)
      {
        v9 = Strong;
LABEL_28:

        return v5;
      }

      v9 = Strong;
      if (!Strong)
      {
        return v5;
      }
    }

    outlined destroy of Any?(v20);
LABEL_23:
    Strong = [v9 parentViewController];
    goto LABEL_24;
  }

  return v5;
}

unint64_t UIViewController.playActivityFeatureIdentifier.getter()
{
  v1 = [v0 playActivityFeatureName];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  return specialized PlayActivityFeatureIdentifier.init(rawValue:)(v2, v4);
}

void UIViewController.playActivityFeatureIdentifier.setter(char a1)
{
  if (a1 != 20)
  {
    PlayActivityFeatureIdentifier.rawValue.getter(a1);
  }

  v2 = String._bridgeToObjectiveC()();

  [v1 setPlayActivityFeatureName:v2];
}

void (*UIViewController.playActivityFeatureIdentifier.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = [v1 playActivityFeatureName];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *(a1 + 8) = specialized PlayActivityFeatureIdentifier.init(rawValue:)(v4, v6);
  return UIViewController.playActivityFeatureIdentifier.modify;
}

void UIViewController.playActivityFeatureIdentifier.modify(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 != 20)
  {
    PlayActivityFeatureIdentifier.rawValue.getter(v2);
  }

  v3 = *a1;
  v4 = String._bridgeToObjectiveC()();

  [v3 setPlayActivityFeatureName:v4];
}

uint64_t UIViewController.playActivityFeatureNames(sourceChildViewController:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1004F2400;
  v2 = [v0 playActivityFeatureName];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  *(v1 + 32) = v3;
  *(v1 + 40) = v5;
  return v1;
}

uint64_t UIViewController.completePlayActivityFeatureNames.getter()
{
  result = v0;
  v2 = 0;
  do
  {
    v3 = result;
    v4 = [result playActivityFeatureNamesWithSourceChildViewController:v2];
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    specialized Array.append<A>(contentsOf:)(v5);
    result = [v3 playActivityFeatureNameSourceViewController];
    v2 = v3;
  }

  while (result);
  v6 = 0;
  v7 = _swiftEmptyArrayStorage[2];
LABEL_4:
  v8 = &_swiftEmptyArrayStorage[2 * v6 + 5];
  while (1)
  {
    if (v7 == v6)
    {

      v15 = specialized Sequence.reversed()(_swiftEmptyArrayStorage);

      return v15;
    }

    if (v6 >= _swiftEmptyArrayStorage[2])
    {
      break;
    }

    ++v6;
    v10 = *(v8 - 1);
    v9 = *v8;
    v8 += 2;
    v11 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v11 = v10 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v13 + 1;
      v14 = &_swiftEmptyArrayStorage[2 * v13];
      v14[4] = v10;
      v14[5] = v9;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

char *specialized Sequence.reversed()(char *result)
{
  v1 = result;
  v2 = *(result + 2);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = 0;
  v4 = 0;
  v5 = v2 >> 1;
  v6 = v2 - 1;
  for (i = 16 * v2 + 24; ; i -= 16)
  {
    if (v4 == v6)
    {
      goto LABEL_5;
    }

    v9 = *(v1 + 2);
    if (v4 >= v9)
    {
      break;
    }

    if (v6 >= v9)
    {
      goto LABEL_14;
    }

    v11 = *&v1[v3 + 32];
    v10 = *&v1[v3 + 40];
    v13 = *&v1[i - 8];
    v12 = *&v1[i];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
    }

    v14 = &v1[v3];
    *(v14 + 4) = v13;
    *(v14 + 5) = v12;

    if (v6 >= *(v1 + 2))
    {
      goto LABEL_15;
    }

    v8 = &v1[i];
    *(v8 - 1) = v11;
    *v8 = v10;

LABEL_5:
    ++v4;
    --v6;
    v3 += 16;
    if (v5 == v4)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t UIViewController.combinedPlayActivityFeatureName.getter()
{
  v1 = [v0 completePlayActivityFeatureNames];
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  lazy protocol witness table accessor for type String and conformance String();
  v2 = Sequence<>.joined(separator:)();

  return v2;
}

uint64_t Collection<>.playActivityFeatureJoined()(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type String and conformance String();

  return Sequence<>.joined(separator:)();
}

uint64_t UIViewController.playActivityInformation.getter()
{
  v1 = [v0 combinedPlayActivityFeatureName];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = UIViewController.inheritedPlayActivityRecommendationData(shouldIncludeForwardedRecommendationData:)(1);
  v5 = v4;
  outlined consume of Data?(0, 0xF000000000000000);

  outlined copy of Data?(v3, v5);

  outlined consume of Data?(v3, v5);
  return v2;
}

uint64_t UINavigationController.playActivityFeatureNames(sourceChildViewController:)(void *a1)
{
  v5 = [i viewControllers];
  v6 = type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIViewController, UIViewController_ptr);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!a1)
  {
    goto LABEL_25;
  }

  v8 = a1;
  v9 = specialized Collection<>.firstIndex(of:)(v8, v7, &lazy cache variable for type metadata for UIViewController, UIViewController_ptr);
  if ((v11 & 1) == 0)
  {
    v12 = v9;
    if (v9 < 0)
    {
      goto LABEL_53;
    }

    v10 = v7 & 0xFFFFFFFFFFFFFF8;
    v3 = v7 >> 62;
    if (v7 >> 62)
    {
LABEL_54:
      if ((v7 & 0x8000000000000000) != 0)
      {
        v2 = v7;
      }

      else
      {
        v2 = v10;
      }

      result = _CocoaArrayWrapper.endIndex.getter();
      if (result < 0)
      {
        __break(1u);
        return result;
      }

      if (_CocoaArrayWrapper.endIndex.getter() >= v12)
      {
LABEL_6:
        if ((v7 & 0xC000000000000001) != 0)
        {

          if (v12)
          {
            v13 = 0;
            do
            {
              v14 = v13 + 1;
              _ArrayBuffer._typeCheckSlowPath(_:)(v13);
              v13 = v14;
            }

            while (v12 != v14);
          }
        }

        else
        {
        }

        if (v3)
        {
          v6 = _CocoaArrayWrapper.subscript.getter();
          v3 = v15;
          v2 = v16;
          v12 = v17;

          if (v12)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v2 = 0;
          v6 = v7 & 0xFFFFFFFFFFFFFF8;
          v3 = (v7 & 0xFFFFFFFFFFFFFF8) + 32;
          v12 = (2 * v12) | 1;
          if (v12)
          {
LABEL_18:
            type metadata accessor for __ContiguousArrayStorageBase();
            swift_unknownObjectRetain_n();
            v19 = swift_dynamicCastClass();
            if (!v19)
            {
              swift_unknownObjectRelease();
              v19 = _swiftEmptyArrayStorage;
            }

            v20 = v19[2];

            if (!__OFSUB__(v12 >> 1, v2))
            {
              if (v20 == (v12 >> 1) - v2)
              {
                v7 = swift_dynamicCastClass();

                swift_unknownObjectRelease();
                if (!v7)
                {
                  swift_unknownObjectRelease();
                  v7 = _swiftEmptyArrayStorage;
                }

                swift_unknownObjectRelease();
                goto LABEL_25;
              }

              goto LABEL_61;
            }

LABEL_60:
            __break(1u);
LABEL_61:
            swift_unknownObjectRelease_n();
          }
        }

        specialized _copyCollectionToContiguousArray<A>(_:)(v6, v3, v2, v12);
        v7 = v18;
        swift_unknownObjectRelease();
        goto LABEL_17;
      }
    }

    else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v9)
    {
      goto LABEL_6;
    }

    __break(1u);
    goto LABEL_60;
  }

LABEL_17:

LABEL_25:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v8 = swift_allocObject();
  *(v8 + 1) = xmmword_1004F2400;
  v21 = [i playActivityFeatureName];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v22;

  v8[4] = v6;
  v8[5] = v12;
  if (v7 >> 62)
  {
    goto LABEL_50;
  }

  v10 = v7 & 0xFFFFFFFFFFFFFF8;
  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    if (i < 1)
    {
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v6 = 0;
    v12 = &type metadata for String;
    while (1)
    {
      v23 = (v7 & 0xC000000000000001) != 0 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v7 + 8 * v6 + 32);
      v24 = v23;
      v25 = [v23 playActivityFeatureNamesWithSourceChildViewController:0];
      v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v3 = *(v26 + 16);
      v27 = v8[2];
      v28 = v27 + v3;
      if (__OFADD__(v27, v3))
      {
        break;
      }

      v29 = v8[3] >> 1;
      if (v29 < v28)
      {
        if (v27 <= v28)
        {
          v33 = v27 + v3;
        }

        else
        {
          v33 = v8[2];
        }

        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, v33, 1, v8);
        v27 = v8[2];
        v29 = v8[3] >> 1;
        if (*(v26 + 16))
        {
LABEL_37:
          if ((v29 - v27) < v3)
          {
            goto LABEL_48;
          }

          swift_arrayInitWithCopy();

          if (v3)
          {
            v30 = v8[2];
            v31 = __OFADD__(v30, v3);
            v32 = v30 + v3;
            if (v31)
            {
              goto LABEL_49;
            }

            v8[2] = v32;
          }

          goto LABEL_30;
        }
      }

      else if (v3)
      {
        goto LABEL_37;
      }

      if (v3)
      {
        goto LABEL_47;
      }

LABEL_30:
      ++v6;

      if (i == v6)
      {
        goto LABEL_51;
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    ;
  }

LABEL_51:

  return v8;
}

uint64_t UITab.path.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1004F2F10;
  *(v1 + 32) = v0;
  v2 = v0;
  for (i = [v2 parent]; ; i = objc_msgSend(v2, "parent"))
  {
    v4 = i;

    if (!v4)
    {
      return v1;
    }

    v5 = v1 >> 62;
    if (!(v1 >> 62))
    {
      v6 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_18;
      }

      goto LABEL_8;
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    if (result < 0)
    {
      break;
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    if (result < 0)
    {
      goto LABEL_21;
    }

    v9 = _CocoaArrayWrapper.endIndex.getter();
    v7 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
LABEL_18:
      __break(1u);
      return v1;
    }

LABEL_8:
    v2 = v4;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v5)
      {
LABEL_2:
        _CocoaArrayWrapper.endIndex.getter();
      }

LABEL_3:
      v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      goto LABEL_4;
    }

    if (v5)
    {
      goto LABEL_2;
    }

    if (v7 > *((v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_3;
    }

LABEL_4:
    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 0, 1, v2);
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

id @objc UIViewController.playActivityFeatureName.getter(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

uint64_t UIViewController.playActivityFeatureName.getter()
{
  if (one-time initialization token for playActivityFeatureName != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, static AssociatedKeys.playActivityFeatureName))
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    if (swift_dynamicCast())
    {
      return v2;
    }
  }

  else
  {
    outlined destroy of Any?(v5);
  }

  return 0;
}

void @objc UIViewController.playActivityFeatureName.setter(void *a1, uint64_t a2, void *a3)
{
  v4 = one-time initialization token for playActivityFeatureName;
  v5 = a3;
  v6 = a1;
  v7 = v6;
  if (v4 != -1)
  {
    swift_once();
    v6 = v7;
  }

  objc_setAssociatedObject(v6, static AssociatedKeys.playActivityFeatureName, v5, 3);
}

void UIViewController.playActivityFeatureName.setter(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for playActivityFeatureName != -1)
  {
    swift_once();
  }

  v3 = static AssociatedKeys.playActivityFeatureName;
  value = String._bridgeToObjectiveC()();

  objc_setAssociatedObject(v2, v3, value, 3);
}

uint64_t UITab.combinedPlayActivityFeatureName.getter()
{
  UITab.playActivityFeatureNames.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  lazy protocol witness table accessor for type String and conformance String();
  v0 = Sequence<>.joined(separator:)();

  return v0;
}

char *UITab.playActivityFeatureNames.getter()
{
  v0 = UITab.path.getter();
  v1 = v0;
  v2 = v0 & 0xFFFFFFFFFFFFFF8;
  if (!(v0 >> 62))
  {
    v3 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_24:
    v5 = _swiftEmptyArrayStorage;
    goto LABEL_25;
  }

LABEL_23:
  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
    goto LABEL_24;
  }

LABEL_3:
  v4 = 0;
  v5 = _swiftEmptyArrayStorage;
  do
  {
    v20 = v5;
    v6 = v4;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *(v2 + 16))
        {
          goto LABEL_22;
        }

        v7 = *(v1 + 8 * v6 + 32);
      }

      v8 = v7;
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v9 = [v7 playActivityFeatureName];
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v13 = HIBYTE(v12) & 0xF;
      if ((v12 & 0x2000000000000000) == 0)
      {
        v13 = v10 & 0xFFFFFFFFFFFFLL;
      }

      if (v13)
      {
        break;
      }

      ++v6;
      if (v4 == v3)
      {
        v5 = v20;
        goto LABEL_25;
      }
    }

    v14 = v20;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
    }

    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    v17 = v14;
    if (v16 >= v15 >> 1)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v14);
    }

    *(v17 + 2) = v16 + 1;
    v5 = v17;
    v18 = &v17[16 * v16];
    *(v18 + 4) = v10;
    *(v18 + 5) = v12;
  }

  while (v4 != v3);
LABEL_25:

  return v5;
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIViewController, UIViewController_ptr);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd_0, &_ss23_ContiguousArrayStorageCySSGMR_0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11MusicCoreUI16PlaylistCuratorsO7CuratorVGMd, &_ss23_ContiguousArrayStorageCy11MusicCoreUI16PlaylistCuratorsO7CuratorVGMR);
      v7 = *(type metadata accessor for PlaylistCurators.Curator(0) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        type metadata accessor for PlaylistCurators.Curator(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7LyricsX0D0C4WordVGMd, &_ss23_ContiguousArrayStorageCy7LyricsX0D0C4WordVGMR);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 56);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

char *specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(char *result, uint64_t a2, uint64_t a3, char a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = &result[v7 + 32];
  if (v6)
  {
    v9 = *(v7 + 16);
    v10 = __OFSUB__(v9, a2);
    v11 = v9 - a2;
    if (!v10)
    {
      result = &v8[a3];
      v12 = (v7 + 32 + a2);
      if (&v8[a3] != v12 || result >= &v12[v11])
      {
        v14 = a3;
        v15 = a4;
        result = memmove(result, v12, v11);
        a3 = v14;
        a4 = v15;
      }

      v16 = *(v7 + 16);
      v10 = __OFADD__(v16, v6);
      v17 = v16 + v6;
      if (!v10)
      {
        *(v7 + 16) = v17;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v8 = a4;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

char *specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(char *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result += v6 + a3 + 32;
  v10 = (v6 + 32 + a2);
  if (result != v10 || result >= &v10[v9])
  {
    v12 = a3;
    result = memmove(result, v10, v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

void specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * a1);
  swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      v17 = &v12[2 * a3];
      v18 = (v11 + 32 + 16 * a2);
      if (v17 != v18 || v17 >= &v18[16 * v16])
      {
        memmove(v17, v18, 16 * v16);
      }

      v20 = *(v11 + 16);
      v13 = __OFADD__(v20, v14);
      v21 = v20 + v14;
      if (!v13)
      {
        *(v11 + 16) = v21;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 8 * result;
  type metadata accessor for ICURLBagKey(0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 8 * a3;
  v13 = (v7 + 32 + 8 * a2);
  if (result != v13 || result >= v13 + 8 * v12)
  {
    result = memmove(result, v13, 8 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_syycMd, &_syycMR);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 16 * result + 16 * a3;
  v10 = (v6 + 32 + 16 * a2);
  if (result != v10 || result >= v10 + 16 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 16 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for BagProvider.Observer();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UITab, UITab_ptr);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIViewPropertyAnimator, UIViewPropertyAnimator_ptr);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for SyncedLyricsLineView(0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

void specialized UIViewController.playActivityFeatureNameSourceViewController.setter(id value, void *a2, const void **a3, uint64_t a4)
{
  v7 = value;
  if (value)
  {
    v8 = type metadata accessor for UIViewController.WeakViewControllerReference();
    v9 = objc_allocWithZone(v8);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v10.receiver = v9;
    v10.super_class = v8;
    v7 = objc_msgSendSuper2(&v10, "init");
  }

  if (*a2 != -1)
  {
    swift_once();
  }

  objc_setAssociatedObject(v4, *a3, v7, 1);
}

char *specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UITab, UITab_ptr);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = _CocoaArrayWrapper.endIndex.getter();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t specialized UITabBarController.playActivityFeatureNames(sourceChildViewController:)()
{
  v3 = v0;
  v4 = [v0 selectedTab];
  if (!v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1004F2400;
    v18 = [v0 playActivityFeatureName];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    result = v17;
    *(v17 + 32) = v19;
    *(v17 + 40) = v21;
    return result;
  }

  v5 = v4;
  v6 = [v4 managingTabGroup];
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = v6;
  v8 = [v6 managingNavigationController];
  if (!v8)
  {

LABEL_14:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1004F2400;
    v23 = [v3 playActivityFeatureName];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    *(v22 + 32) = v24;
    *(v22 + 40) = v26;

    return v22;
  }

  v9 = v8;
  v10 = UITab.path.getter();
  v48 = v10;
  v11 = [v9 viewControllers];
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIViewController, UIViewController_ptr);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v12 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v47 = v9;
    if (result)
    {
LABEL_6:
      if ((v12 & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v14 = *(v12 + 32);
      }

      v1 = v14;

      v15 = [v1 tab];
      if (!v15)
      {

        goto LABEL_21;
      }

      v2 = v15;
      result = specialized Collection<>.firstIndex(of:)(v15, v10, &lazy cache variable for type metadata for UITab, UITab_ptr);
      if (v16)
      {

        goto LABEL_21;
      }

      if (v10 >> 62)
      {
        goto LABEL_38;
      }

      v27 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v27 >= result)
      {
        goto LABEL_18;
      }

LABEL_39:
      __break(1u);
      return result;
    }
  }

  else
  {
    result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v47 = v9;
    if (result)
    {
      goto LABEL_6;
    }
  }

  while (1)
  {
LABEL_21:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1004F2400;
    v28 = [v3 playActivityFeatureName];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    *(v1 + 32) = v29;
    *(v1 + 40) = v31;
    v46 = v1;
    if (v10 >> 62)
    {
      v3 = _CocoaArrayWrapper.endIndex.getter();
      if (!v3)
      {
LABEL_33:

        goto LABEL_34;
      }
    }

    else
    {
      v3 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v3)
      {
        goto LABEL_33;
      }
    }

    v44 = v7;
    v45 = v5;
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
    if ((v3 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    v42 = v7;
    v43 = result;
    v27 = _CocoaArrayWrapper.endIndex.getter();
    result = v43;
    v7 = v42;
    if (v27 < result)
    {
      goto LABEL_39;
    }

LABEL_18:
    specialized Array.replaceSubrange<A>(_:with:)(result, v27);

    v10 = v48;
  }

  v32 = 0;
  do
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v33 = *(v10 + 8 * v32 + 32);
    }

    v34 = v33;
    v35 = [v33 playActivityFeatureName];
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v40 = _swiftEmptyArrayStorage[2];
    v39 = _swiftEmptyArrayStorage[3];
    if (v40 >= v39 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1);
    }

    ++v32;
    _swiftEmptyArrayStorage[2] = v40 + 1;
    v41 = &_swiftEmptyArrayStorage[2 * v40];
    v41[4] = v36;
    v41[5] = v38;
  }

  while (v3 != v32);

  v7 = v44;
  v5 = v45;
LABEL_34:
  specialized Array.append<A>(contentsOf:)(_swiftEmptyArrayStorage);

  return v46;
}

uint64_t *NSUserDefaults.mobileiPod.unsafeMutableAddressor()
{
  if (one-time initialization token for mobileiPod != -1)
  {
    swift_once();
  }

  return &static NSUserDefaults.mobileiPod;
}

Swift::Bool __swiftcall NSUserDefaults.BOOL(forKey:withDefault:)(Swift::String forKey, Swift::Bool withDefault)
{
  countAndFlagsBits = forKey._countAndFlagsBits;
  lazy protocol witness table accessor for type String and conformance String();

  NSUserDefaults.subscript.getter(&v5);

  if (v6)
  {
    if (swift_dynamicCast())
    {
      return countAndFlagsBits;
    }
  }

  else
  {
    outlined destroy of Any?(&v5);
  }

  return withDefault;
}

void one-time initialization function for mobileiPod()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSuiteName:v1];

  static NSUserDefaults.mobileiPod = v2;
}

uint64_t static NSUserDefaults.mobileiPod.getter()
{
  if (one-time initialization token for mobileiPod != -1)
  {
    swift_once();
  }

  v0 = static NSUserDefaults.mobileiPod;
  v1 = static NSUserDefaults.mobileiPod;
  return v0;
}

BOOL NSUserDefaults.MobileiPod.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of NSUserDefaults.MobileiPod.init(rawValue:), v2);

  return v3 != 0;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NSUserDefaults.MobileiPod()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSUserDefaults.MobileiPod(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

void (*NSUserDefaults.hasUserRequestedSubscriptionHidden.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = lazy protocol witness table accessor for type NSUserDefaults.MobileiPod and conformance NSUserDefaults.MobileiPod();
  *(v4 + 48) = lazy protocol witness table accessor for type String and conformance String();
  NSUserDefaults.subscript.getter(v4);
  if (!*(v4 + 24))
  {
    outlined destroy of Any?(v4);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  v5 = *(v4 + 57);
LABEL_9:
  *(v4 + 56) = v5;
  return NSUserDefaults.hasUserRequestedSubscriptionHidden.modify;
}

uint64_t NSUserDefaults.hasUserRequestedSubscriptionHidden.getter(uint64_t (*a1)(void), uint64_t a2)
{
  a1();
  lazy protocol witness table accessor for type String and conformance String();
  NSUserDefaults.subscript.getter(&v4);
  if (v5)
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v3;
    }
  }

  else
  {
    outlined destroy of Any?(&v4);
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NSUserDefaults.Keys and conformance NSUserDefaults.Keys()
{
  result = lazy protocol witness table cache variable for type NSUserDefaults.Keys and conformance NSUserDefaults.Keys;
  if (!lazy protocol witness table cache variable for type NSUserDefaults.Keys and conformance NSUserDefaults.Keys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSUserDefaults.Keys and conformance NSUserDefaults.Keys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSUserDefaults.Keys and conformance NSUserDefaults.Keys;
  if (!lazy protocol witness table cache variable for type NSUserDefaults.Keys and conformance NSUserDefaults.Keys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSUserDefaults.Keys and conformance NSUserDefaults.Keys);
  }

  return result;
}

uint64_t NSUserDefaults.hasUserRequestedSubscriptionHidden.setter(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v9 = &type metadata for Bool;
  v8[0] = a1;
  v4 = a2(a1);
  v5 = lazy protocol witness table accessor for type String and conformance String();
  return NSUserDefaults.subscript.setter(v8, v6, a3, v4, v5);
}

void (*NSUserDefaults.hasSeenDownloadPinsAlert.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = lazy protocol witness table accessor for type NSUserDefaults.Keys and conformance NSUserDefaults.Keys();
  *(v4 + 48) = lazy protocol witness table accessor for type String and conformance String();
  NSUserDefaults.subscript.getter(v4);
  if (!*(v4 + 24))
  {
    outlined destroy of Any?(v4);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  v5 = *(v4 + 57);
LABEL_9:
  *(v4 + 56) = v5;
  return NSUserDefaults.hasSeenDownloadPinsAlert.modify;
}

void NSUserDefaults.hasUserRequestedSubscriptionHidden.modify(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 56);
  v5 = *(*a1 + 40);
  v6 = *(*a1 + 48);
  v8 = &type metadata for Bool;
  v7[0] = v4;
  NSUserDefaults.subscript.setter(v7, a2, a3, v5, v6);

  free(v3);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NSUserDefaults.Keys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSUserDefaults.Keys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

id MPPlaybackUserDefaults.transitionStyleForCatalogPlayback.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v10[4] = v6;
  v10[5] = v7;
  v10[6] = v8;
  v10[7] = v9;
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  outlined destroy of ApplicationCapabilities(v10);
  return [v0 transitionStyleForUserWithCatalogPlaybackCapability:BYTE8(v10[0]) & 1];
}

id static ICUserIdentity.active.getter()
{
  v0 = [swift_getObjCClassFromMetadata() activeAccount];

  return v0;
}

id static ICUserIdentityStore.activeAccountDSID.getter()
{
  v0 = [swift_getObjCClassFromMetadata() defaultIdentityStore];
  v1 = [objc_opt_self() activeAccount];
  v6 = 0;
  v2 = [v0 DSIDForUserIdentity:v1 outError:&v6];

  v3 = v6;
  if (!v2)
  {
    v4 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return 0;
  }

  return v2;
}

uint64_t static ICMusicKitRequestContext.music.getter()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4[4] = specialized thunk for @callee_guaranteed (@guaranteed ICRequestContext) -> ();
  v4[5] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = thunk for @escaping @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
  v4[3] = &block_descriptor_20;
  v1 = _Block_copy(v4);
  v2 = [v0 initWithBlock:v1];
  _Block_release(v1);

  result = swift_isEscapingClosureAtFileLocation();
  if ((result & 1) == 0)
  {
    return v2;
  }

  __break(1u);
  return result;
}

id static ICURLSessionManager.musicSession.getter()
{
  v0 = [objc_opt_self() highPrioritySession];

  return v0;
}

double ICURLBag.subscript.getter@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if ([v2 valueForBagKey:a1])
  {
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t *ICClientInfo.music.unsafeMutableAddressor()
{
  if (one-time initialization token for music != -1)
  {
    swift_once();
  }

  return &static ICClientInfo.music;
}

void closure #1 in static ICMusicKitRequestContext.music.getter(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = a1;
    v5 = String._bridgeToObjectiveC()();
    v6 = String._bridgeToObjectiveC()();
    v7 = [objc_opt_self() clientInfoForMusicKitRequestWithClientIdentifier:v5 clientVersion:v6];

    [v3 setClientInfo:v7];
    v8 = objc_opt_self();
    v9 = v4;
    v10 = [v8 defaultIdentityStore];
    [v3 setIdentityStore:v10];

    v11 = [objc_opt_self() activeAccount];
    [v3 setIdentity:v11];
  }
}

id static ICStoreRequestContext.default(withConfigurationBlock:)(uint64_t a1, uint64_t a2)
{
  v7[2] = a1;
  v7[3] = a2;
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in static ICStoreRequestContext.default(withConfigurationBlock:);
  *(v3 + 24) = v7;
  aBlock[4] = partial apply for thunk for @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
  aBlock[3] = &block_descriptor_3_1;
  v4 = _Block_copy(aBlock);

  v5 = [v2 initWithBlock:v4];
  _Block_release(v4);

  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if ((v4 & 1) == 0)
  {
    return v5;
  }

  __break(1u);
  return result;
}

void specialized closure #1 in static ICStoreRequestContext.default(withConfigurationBlock:)(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = objc_opt_self();
    v8 = a1;
    v5 = [v4 defaultIdentityStore];
    [v3 setIdentityStore:v5];

    v6 = [objc_opt_self() activeAccount];
    [v3 setIdentity:v6];

    [v3 setAllowsExpiredBags:1];
    v7 = [objc_allocWithZone(ICURLResponseAuthenticationProvider) initWithUserInteractionLevel:1];
    [v3 setAuthenticationProvider:v7];

    if (one-time initialization token for storeFlow != -1)
    {
      swift_once();
    }

    [v3 setClientInfo:static ICClientInfo.storeFlow];
  }
}

void closure #1 in static ICStoreRequestContext.default(withConfigurationBlock:)(void *a1, void (*a2)(void *))
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = objc_opt_self();
    v9 = a1;
    v7 = [v6 defaultIdentityStore];
    [v5 setIdentityStore:v7];

    v8 = [objc_opt_self() activeAccount];
    [v5 setIdentity:v8];

    a2(v5);
  }
}

id static ICStoreRequestContext.current.getter()
{
  v0 = [objc_opt_self() activeAccount];
  v1 = [objc_allocWithZone(ICStoreRequestContext) initWithIdentity:v0];

  return v1;
}

uint64_t static ICStoreRequestContext.storeFlow.getter()
{
  v0 = objc_allocWithZone(ICStoreRequestContext);
  v4[4] = specialized thunk for @callee_guaranteed (@guaranteed ICRequestContext) -> ();
  v4[5] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = thunk for @escaping @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
  v4[3] = &block_descriptor_6_0;
  v1 = _Block_copy(v4);
  v2 = [v0 initWithBlock:v1];
  _Block_release(v1);

  result = swift_isEscapingClosureAtFileLocation();
  if ((result & 1) == 0)
  {
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t *ICClientInfo.storeFlow.unsafeMutableAddressor()
{
  if (one-time initialization token for storeFlow != -1)
  {
    swift_once();
  }

  return &static ICClientInfo.storeFlow;
}

id one-time initialization function for music()
{
  result = [objc_allocWithZone(ICClientInfo) initWithSystemApplicationType:0];
  static ICClientInfo.music = result;
  return result;
}

{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  v2 = [objc_opt_self() configurationWithWeight:3];
  v3 = [objc_opt_self() secondarySystemFillColor];
  if (one-time initialization token for defaultTint != -1)
  {
    v6 = v3;
    swift_once();
    v3 = v6;
  }

  v4 = static Artwork.Placeholder.defaultTint;
  static Artwork.Placeholder.music = v3;
  unk_10063ED90 = static Artwork.Placeholder.defaultTint;
  qword_10063ED98 = v1;
  unk_10063EDA0 = v2;
  xmmword_10063EDA8 = xmmword_100507950;

  return v4;
}

void *one-time initialization function for storeFlow()
{
  result = closure #1 in variable initialization expression of static ICClientInfo.storeFlow();
  static ICClientInfo.storeFlow = result;
  return result;
}

void *closure #1 in variable initialization expression of static ICClientInfo.storeFlow()
{
  v0 = [objc_allocWithZone(ICClientInfo) initWithSystemApplicationType:0];
  [v0 mutableCopy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for ICMutableClientInfo();
  swift_dynamicCast();
  v1 = String._bridgeToObjectiveC()();
  [v3 setBagProfileVersion:v1];

  return v3;
}

double ICURLBag.subscript.getter@<D0>(_OWORD *a1@<X8>)
{
  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 valueForBagKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

_OWORD *ICURLBag.subscript.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v4;
  v6 = v3;
  v10 = *(type metadata accessor for Optional() - 8);
  __chkstk_darwin();
  v13 = &v40 - v12;
  v14 = a1[2];
  if (!v14)
  {
    lazy protocol witness table accessor for type ICURLBag.Error and conformance ICURLBag.Error();
    swift_allocError();
    *v33 = 0u;
    *(v33 + 16) = 0u;
    *(v33 + 32) = 0;
    *(v33 + 40) = 2;
    return swift_willThrow();
  }

  v46 = v11;
  v15 = a1[4];

  v16 = v15;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v52 = a1;
  if (!isUniquelyReferenced_nonNull_native || (v14 - 1) > a1[3] >> 1)
  {
    a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v14, 1, a1);
    v52 = a1;
  }

  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 1, 0);
  if (![v6 valueForBagKey:v16])
  {

    lazy protocol witness table accessor for type ICURLBag.Error and conformance ICURLBag.Error();
    swift_allocError();
    *v34 = v16;
    *(v34 + 40) = 0;
    return swift_willThrow();
  }

  v41 = v10;
  v42 = a3;
  v44 = v13;
  v45 = a2;
  v43 = v5;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with take of Any(v50, v51);
  outlined init with copy of Any(v51, v50);
  v18 = a1[2];
  result = v16;
  v20 = result;
  v47 = result;
  if (v18)
  {
    v21 = 0;
    v22 = v47;
    while (v21 < a1[2])
    {
      v23 = a1[v21 + 4];
      outlined init with copy of Any(v50, v49);
      v20 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd_0, &_sSDySSypGMR_0);
      if (!swift_dynamicCast())
      {

        lazy protocol witness table accessor for type ICURLBag.Error and conformance ICURLBag.Error();
        swift_allocError();
        v38 = v37;
        *v37 = v20;
        outlined init with copy of Any(v50, (v37 + 1));
        *(v38 + 40) = 1;
        goto LABEL_22;
      }

      v24 = v48;
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (!*(v24 + 16))
      {

LABEL_21:

        lazy protocol witness table accessor for type ICURLBag.Error and conformance ICURLBag.Error();
        swift_allocError();
        *v39 = v20;
        *(v39 + 40) = 0;
LABEL_22:
        swift_willThrow();

        goto LABEL_23;
      }

      v27 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(v25, v26);
      v29 = v28;

      if ((v29 & 1) == 0)
      {
        goto LABEL_21;
      }

      ++v21;
      outlined init with copy of Any(*(v24 + 56) + 32 * v27, v49);

      __swift_destroy_boxed_opaque_existential_0Tm(v50);
      result = outlined init with take of Any(v49, v50);
      v22 = v20;
      if (v18 == v21)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    outlined init with copy of Any(v50, v49);
    v31 = v44;
    v30 = v45;
    if (swift_dynamicCast())
    {

      __swift_destroy_boxed_opaque_existential_0Tm(v50);
      __swift_destroy_boxed_opaque_existential_0Tm(v51);
      v32 = *(v30 - 8);
      (*(v32 + 56))(v31, 0, 1, v30);
      return (*(v32 + 32))(v42, v31, v30);
    }

    else
    {
      (*(*(v30 - 8) + 56))(v31, 1, 1, v30);
      (*(v41 + 8))(v31, v46);
      lazy protocol witness table accessor for type ICURLBag.Error and conformance ICURLBag.Error();
      swift_allocError();
      v36 = v35;
      *v35 = v20;
      outlined init with copy of Any(v50, (v35 + 1));
      *(v36 + 40) = 1;
      swift_willThrow();

LABEL_23:
      __swift_destroy_boxed_opaque_existential_0Tm(v50);
      return __swift_destroy_boxed_opaque_existential_0Tm(v51);
    }
  }

  return result;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type ICURLBag.Error and conformance ICURLBag.Error()
{
  result = lazy protocol witness table cache variable for type ICURLBag.Error and conformance ICURLBag.Error;
  if (!lazy protocol witness table cache variable for type ICURLBag.Error and conformance ICURLBag.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ICURLBag.Error and conformance ICURLBag.Error);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ICEnvironmentMonitorThermalPressureLevel and conformance ICEnvironmentMonitorThermalPressureLevel()
{
  result = lazy protocol witness table cache variable for type ICEnvironmentMonitorThermalPressureLevel and conformance ICEnvironmentMonitorThermalPressureLevel;
  if (!lazy protocol witness table cache variable for type ICEnvironmentMonitorThermalPressureLevel and conformance ICEnvironmentMonitorThermalPressureLevel)
  {
    type metadata accessor for ICEnvironmentMonitorThermalPressureLevel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ICEnvironmentMonitorThermalPressureLevel and conformance ICEnvironmentMonitorThermalPressureLevel);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So8ICURLBagC9MusicCoreE5ErrorO(uint64_t a1)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ICURLBag.Error(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ICURLBag.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for ICURLBag.Error(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

unint64_t type metadata accessor for ICMutableClientInfo()
{
  result = lazy cache variable for type metadata for ICMutableClientInfo;
  if (!lazy cache variable for type metadata for ICMutableClientInfo)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ICMutableClientInfo);
  }

  return result;
}

uint64_t Gliss.Direction.init(playerDirection:layoutDirection:)(uint64_t a1, char a2, uint64_t a3)
{
  if ((a1 - 1) <= 1)
  {
    v3 = a3 == 1;
  }

  else
  {
    v3 = 2;
  }

  if ((a1 + 2) < 2)
  {
    v3 = a3 != 1;
  }

  if (a2)
  {
    return 2;
  }

  else
  {
    return v3;
  }
}

unint64_t MPCPlayerDirection.description.getter(uint64_t a1)
{
  if (a1 > 0)
  {
    if (a1 == 1)
    {
      v1 = 0xE700000000000000;
      v2 = 0x64726177726F66;
      goto LABEL_16;
    }

    if (a1 == 5)
    {
      v1 = 0xED0000797261646ELL;
      v2 = 0x756F426575657571;
      goto LABEL_16;
    }

    if (a1 != 2)
    {
LABEL_13:
      v1 = 0xE700000000000000;
      v2 = 0x6E776F6E6B6E75;
      goto LABEL_16;
    }

    v2 = 0x4A64726177726F66;
LABEL_11:
    v1 = 0xEB00000000706D75;
    goto LABEL_16;
  }

  if (a1 == -2)
  {
    v2 = 0x4A65737265766572;
    goto LABEL_11;
  }

  if (a1 == -1)
  {
    v1 = 0xE700000000000000;
    v2 = 0x65737265766572;
    goto LABEL_16;
  }

  if (a1)
  {
    goto LABEL_13;
  }

  v1 = 0xEA00000000007972;
  v2 = 0x616E6F6974617473;
LABEL_16:
  _StringGuts.grow(_:)(21);

  v3._countAndFlagsBits = v2;
  v3._object = v1;
  String.append(_:)(v3);

  return 0xD000000000000013;
}

uint64_t one-time initialization function for logger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Gliss.logger);
  __swift_project_value_buffer(v0, static Gliss.logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static StagedInstall.logger);
  __swift_project_value_buffer(v0, static StagedInstall.logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static NowPlaying.TrackMetadata.logger);
  __swift_project_value_buffer(v0, static NowPlaying.TrackMetadata.logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static PlaybackTimeObserver.logger);
  __swift_project_value_buffer(v0, static PlaybackTimeObserver.logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Player.logger);
  __swift_project_value_buffer(v0, static Player.logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static PresentationSource.logger);
  __swift_project_value_buffer(v0, static PresentationSource.logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static SymbolButton.logger);
  __swift_project_value_buffer(v0, static SymbolButton.logger);
  _sSo9OS_os_logCMa_0();
  static OS_os_log.disabled.getter();
  return Logger.init(_:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static BouncyBarsAsset.logger);
  __swift_project_value_buffer(v0, static BouncyBarsAsset.logger);
  type metadata accessor for UIAction(0, &_sSo9OS_os_logCML_0, OS_os_log_ptr);
  OS_os_log.init(musicCategory:)(0x614279636E756F42, 0xEF74657373417372);
  return Logger.init(_:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static SyncedLyricsViewController.logger);
  __swift_project_value_buffer(v0, static SyncedLyricsViewController.logger);
  return Logger.init(subsystem:category:)();
}

uint64_t Gliss.CoordinatedView._transitionContext<A>(to:direction:)@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v34 = a2;
  v37 = a1;
  v38 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v32 = *(v9 - 8);
  v33 = v9;
  __chkstk_darwin();
  v35 = &v32 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v32 - v14;
  __chkstk_darwin();
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v11 - 8);
  v19 = __chkstk_darwin();
  v21 = &v32 - v20;
  (*(v22 + 16))(v17, v37, a4, v19);
  v23 = swift_dynamicCast();
  v24 = *(v18 + 56);
  if (v23)
  {
    v25 = v38;
    v24(v15, 0, 1, v11);
    (*(v18 + 32))(v21, v15, v11);
    v26 = v35;
    (*(a5 + 32))(v21, v34, a3, a5);
    v27 = AssociatedTypeWitness;
    v28 = *(AssociatedTypeWitness - 8);
    if ((*(v28 + 48))(v26, 1, AssociatedTypeWitness) == 1)
    {
      (*(v18 + 8))(v21, v11);
      result = (*(v32 + 8))(v26, v33);
      *v25 = 0u;
      v25[1] = 0u;
    }

    else
    {
      *(v25 + 3) = v27;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
      (*(v28 + 32))(boxed_opaque_existential_1, v26, v27);
      return (*(v18 + 8))(v21, v11);
    }
  }

  else
  {
    v24(v15, 1, 1, v11);
    result = (*(v13 + 8))(v15, v12);
    v30 = v38;
    *v38 = 0u;
    v30[1] = 0u;
  }

  return result;
}

uint64_t Gliss.CoordinatedView._transitionWillBegin<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for Gliss.Transition(0, AssociatedTypeWitness, AssociatedConformanceWitness, v7);
  result = swift_dynamicCastClass();
  if (result)
  {
    v9 = result;
    v10 = *(a3 + 40);

    v10(v9, a2, a3);
  }

  return result;
}

uint64_t Gliss.CoordinatedView._transitionDidEnd<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for Gliss.Transition(0, AssociatedTypeWitness, AssociatedConformanceWitness, v7);
  result = swift_dynamicCastClass();
  if (result)
  {
    v9 = result;
    v10 = *(a3 + 48);

    v10(v9, a2, a3);
  }

  return result;
}

uint64_t Gliss.CoordinatedView._adopt<A>(_:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a3;
  v28 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v27 - v11;
  __chkstk_darwin();
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(AssociatedTypeWitness - 8);
  v16 = __chkstk_darwin();
  v18 = &v27 - v17;
  (*(v19 + 16))(v14, a1, a4, v16);
  v20 = swift_dynamicCast();
  v21 = *(v15 + 56);
  if (v20)
  {
    v21(v12, 0, 1, AssociatedTypeWitness);
    (*(v15 + 32))(v18, v12, AssociatedTypeWitness);
    if (v28)
    {
      v22 = v29;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      type metadata accessor for Gliss.Transition(0, AssociatedTypeWitness, AssociatedConformanceWitness, v24);
      v25 = swift_dynamicCastClass();
    }

    else
    {
      v25 = 0;
      v22 = v29;
    }

    (*(a5 + 56))(v18, v25, v22, a5);
    return (*(v15 + 8))(v18, AssociatedTypeWitness);
  }

  else
  {
    v21(v12, 1, 1, AssociatedTypeWitness);
    return (*(v10 + 8))(v12, v9);
  }
}

void specialized Sequence.forEach(_:)(void (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    for (i = (a3 + 32); ; ++i)
    {
      v8 = *i;
      v7 = v8;
      a1(&v8);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return;
      }
    }
  }
}

uint64_t specialized Sequence.reduce<A>(into:_:)(uint64_t result, void (*a2)(uint64_t *, __int128 *), uint64_t a3, uint64_t a4)
{
  v10 = result;
  v5 = *(a4 + 16);
  if (v5)
  {
    for (i = (a4 + 32); ; ++i)
    {
      v9 = *i;
      v8 = v9;
      a2(&v10, &v9);
      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return v10;
      }
    }
  }

  return result;
}

id Gliss.Coordinator.__allocating_init(item:dataSource:gestureConfiguration:coordinatedViews:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(v5);
  v11 = specialized Gliss.Coordinator.init(item:dataSource:gestureConfiguration:coordinatedViews:)(a1, a2, a3, a4);

  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(a3 + 8), *(a3 + 16));
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(a3 + 24), *(a3 + 32));
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(a3 + 40), *(a3 + 48));
  swift_unknownObjectRelease();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  return v11;
}

id Gliss.Coordinator.init(item:dataSource:gestureConfiguration:coordinatedViews:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = specialized Gliss.Coordinator.init(item:dataSource:gestureConfiguration:coordinatedViews:)(a1, a2, a3, a4);

  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(a3 + 8), *(a3 + 16));
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(a3 + 24), *(a3 + 32));
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(a3 + 40), *(a3 + 48));
  swift_unknownObjectRelease();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  return v6;
}

uint64_t closure #1 in Gliss.Coordinator.init(item:dataSource:gestureConfiguration:coordinatedViews:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return Gliss.CoordinatedView._adopt<A>(_:from:)(a2, 0, ObjectType, AssociatedTypeWitness, v5);
}

uint64_t Gliss.Coordinator.dataSource.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*Gliss.Coordinator.dataSource.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = *((swift_isaMask & *v1) + 0x60);
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return Gliss.Coordinator.dataSource.modify;
}

void Gliss.Coordinator.dataSource.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t Gliss.Coordinator.gestureConfiguration.getter@<X0>(void *a1@<X8>)
{
  v3 = v1 + *((swift_isaMask & *v1) + 0x68);
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 1);
  v6 = *(v3 + 2);
  v7 = *(v3 + 3);
  v8 = *(v3 + 4);
  v9 = *(v3 + 5);
  v10 = *(v3 + 6);
  v11 = v4;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v5, v6);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v7, v8);
  result = outlined copy of (@escaping @callee_guaranteed () -> ())?(v9, v10);
  *a1 = v11;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  a1[6] = v10;
  return result;
}

uint64_t Gliss.Coordinator.gestureConfiguration.setter(uint64_t a1)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v20 = *(a1 + 40);
  v18 = *(a1 + 32);
  v19 = *(a1 + 48);
  v7 = v1 + *((swift_isaMask & *v1) + 0x68);
  swift_beginAccess();
  v8 = *v7;
  v9 = *(v7 + 1);
  v10 = *(v7 + 2);
  v14 = *(v7 + 4);
  v15 = *(v7 + 3);
  v16 = *(v7 + 6);
  v17 = *(v7 + 5);
  v11 = *(a1 + 16);
  *v7 = *a1;
  *(v7 + 1) = v11;
  *(v7 + 2) = *(a1 + 32);
  *(v7 + 6) = *(a1 + 48);
  v12 = v3;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v4, v5);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v6, v18);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v20, v19);

  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v9, v10);
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v15, v14);
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v17, v16);
  Gliss.Coordinator.setupPanGestureRecognizer()();

  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v4, v5);
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v6, v18);
  return outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v20, v19);
}

void (*Gliss.Coordinator.gestureConfiguration.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return Gliss.Coordinator.gestureConfiguration.modify;
}

void Gliss.Coordinator.gestureConfiguration.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    Gliss.Coordinator.setupPanGestureRecognizer()();
  }
}

double Gliss.Coordinator.GestureConfiguration.init(hostingView:simultaneousGestureRecognizerAllowance:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  result = 0.0;
  *(a4 + 8) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

uint64_t Gliss.Coordinator.GestureConfiguration.init(hostingView:hitRect:simultaneousGestureRecognizerAllowance:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a2;
  *(result + 24) = a3;
  *a6 = a1;
  a6[1] = partial apply for closure #1 in Gliss.Coordinator.GestureConfiguration.init(hostingView:hitRect:simultaneousGestureRecognizerAllowance:);
  a6[2] = result;
  a6[3] = 0;
  a6[4] = 0;
  a6[5] = a4;
  a6[6] = a5;
  return result;
}

uint64_t closure #1 in Gliss.Coordinator.GestureConfiguration.init(hostingView:hitRect:simultaneousGestureRecognizerAllowance:)(uint64_t a1, double (*a2)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd, &_ss23_ContiguousArrayStorageCySo6CGRectVGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1004F2400;
  *(v4 + 32) = a2(a1);
  *(v4 + 40) = v5;
  *(v4 + 48) = v6;
  *(v4 + 56) = v7;
  return v4;
}

uint64_t Gliss.Coordinator.GestureConfiguration.init(hostingView:hitRects:simultaneousGestureRecognizerAllowance:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = 0;
  a6[4] = 0;
  a6[5] = a4;
  a6[6] = a5;
  return result;
}

uint64_t Gliss.Coordinator.GestureConfiguration.init(hostingView:hitTest:simultaneousGestureRecognizerAllowance:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = 0;
  a6[2] = 0;
  a6[3] = a2;
  a6[4] = a3;
  a6[5] = a4;
  a6[6] = a5;
  return result;
}

uint64_t Gliss.Coordinator.GestureConfiguration.hitRects.getter()
{
  v1 = *(v0 + 8);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v1, *(v0 + 16));
  return v1;
}

uint64_t Gliss.Coordinator.GestureConfiguration.hitRects.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t Gliss.Coordinator.GestureConfiguration.hitTest.getter()
{
  v1 = *(v0 + 24);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v1, *(v0 + 32));
  return v1;
}

uint64_t Gliss.Coordinator.GestureConfiguration.hitTest.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t Gliss.Coordinator.GestureConfiguration.simultaneousGestureRecognizerAllowance.getter()
{
  v1 = *(v0 + 40);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v1, *(v0 + 48));
  return v1;
}

uint64_t Gliss.Coordinator.GestureConfiguration.simultaneousGestureRecognizerAllowance.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(v2 + 40), *(v2 + 48));
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t Gliss.Coordinator.addCoordinatedView<A>(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *((swift_isaMask & *v3) + 0x70);
  swift_beginAccess();
  v7 = *(v3 + v6);
  v8 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + v6) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
    *(v3 + v6) = v7;
  }

  v11 = v7[2];
  v10 = v7[3];
  if (v11 >= v10 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v7);
  }

  v7[2] = v11 + 1;
  v12 = &v7[2 * v11];
  v12[4] = v8;
  v12[5] = a3;
  *(v3 + v6) = v7;
  return swift_endAccess();
}

void Gliss.Coordinator.removeCoordinatedView<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *((swift_isaMask & *v2) + 0x70);
  swift_beginAccess();
  v4 = *(v2 + v3);
  v5 = *(v4 + 16);

  if (v5)
  {
    v6 = 0;
    v7 = 32;
    while (1)
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
        return;
      }

      v8 = *(v4 + v7);
      type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSObject, NSObject_ptr);
      v9 = v8;
      v10 = static NSObject.== infix(_:_:)();

      if (v10)
      {
        break;
      }

      ++v6;
      v7 += 16;
      if (v5 == v6)
      {
        goto LABEL_6;
      }
    }

    swift_beginAccess();
    v11 = specialized Array.remove(at:)(v6);
    swift_endAccess();
    if (!swift_dynamicCastUnknownClass())
    {
    }
  }

  else
  {
LABEL_6:
  }
}

uint64_t Gliss.Coordinator.item.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = swift_isaMask;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v15[-v8];
  v10 = *(v1 + *((v4 & v3) + 0x88));
  if (v10)
  {
    v11 = *(*v10 + 128);
    swift_beginAccess();
    if (*(v10 + v11) != 6)
    {
      v12 = *(*v10 + 112);
      swift_beginAccess();
      (*(v7 + 16))(v9, v10 + v12, v6);
      v13 = *(AssociatedTypeWitness - 8);
      if ((*(v13 + 48))(v9, 1, AssociatedTypeWitness) != 1)
      {
        return (*(v13 + 32))(a1, v9, AssociatedTypeWitness);
      }

      (*(v7 + 8))(v9, v6);
    }
  }

  return Gliss.Coordinator._item.getter(a1);
}

uint64_t Gliss.Coordinator._item.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *((swift_isaMask & *v1) + 0x78);
  swift_beginAccess();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 16))(a1, &v1[v3], AssociatedTypeWitness);
}

uint64_t Gliss.Coordinator._item.setter(uint64_t a1)
{
  v3 = *((swift_isaMask & *v1) + 0x78);
  swift_beginAccess();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 40))(&v1[v3], a1, AssociatedTypeWitness);
  return swift_endAccess();
}

uint64_t Gliss.Coordinator.queuedItem.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *((swift_isaMask & *v1) + 0x80);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

uint64_t Gliss.Coordinator.queuedItem.setter(uint64_t a1)
{
  v3 = *((swift_isaMask & *v1) + 0x80);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  (*(*(v4 - 8) + 40))(&v1[v3], a1, v4);
  return swift_endAccess();
}

void Gliss.Coordinator.setItem(_:animationDirection:animated:)(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = -64;
  }

  else
  {
    v3 = -2;
  }

  Gliss.Coordinator.setItem(_:animationDirection:animation:)(a1, a2, 0, 0, v3);

  outlined consume of Gliss.Animation?(0, 0, v3);
}

uint64_t Gliss.Coordinator.setItem(_:animationDirection:animation:)(void *a1, unsigned int a2, void *a3, uint64_t a4, unsigned int a5)
{
  v112 = a5;
  v114 = a4;
  v117 = a3;
  v115 = a2;
  v7 = *((swift_isaMask & *v5) + 0x58);
  v8 = *((swift_isaMask & *v5) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v12 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = v11;
  __chkstk_darwin();
  v14 = &v101 - v13;
  type metadata accessor for Optional();
  v15 = __chkstk_darwin();
  v17 = &v101 - v16;
  v108 = *(v10 + 56);
  v109 = v10 + 56;
  v108(&v101 - v16, 1, 1, AssociatedTypeWitness, v15);
  v110 = v17;
  Gliss.Coordinator.queuedItem.setter(v17);
  v118 = v5;
  Gliss.Coordinator.item.getter(v14);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = dispatch thunk of static Equatable.== infix(_:_:)();
  v113 = v10;
  v20 = *(v10 + 8);
  v116 = v14;
  result = v20(v14, AssociatedTypeWitness);
  if ((v19 & 1) == 0)
  {
    v102 = AssociatedConformanceWitness;
    v106 = v8;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    v23 = __swift_project_value_buffer(v22, static Gliss.logger);
    v25 = v113 + 16;
    v24 = *(v113 + 16);
    v24(v12, a1, AssociatedTypeWitness);
    v119 = v23;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    v28 = os_log_type_enabled(v26, v27);
    v107 = v7;
    v105 = a1;
    v104 = v25;
    v103 = v24;
    if (v28)
    {
      v29 = AssociatedTypeWitness;
      v30 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v122[0] = v101;
      *v30 = 136446210;
      v24(v116, v12, v29);
      v31 = String.init<A>(describing:)();
      v33 = v32;
      v20(v12, v29);
      v34 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v31, v33, v122);

      *(v30 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v26, v27, "Attempting to set item=%{public}s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v101);

      AssociatedTypeWitness = v29;
    }

    else
    {

      v20(v12, AssociatedTypeWitness);
    }

    v35 = v118;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();

    v38 = os_log_type_enabled(v36, v37);
    v39 = v112;
    v40 = v114;
    if (v38)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v122[0] = v42;
      *v41 = 136446210;
      Gliss.Coordinator.item.getter(v116);
      v43 = String.init<A>(describing:)();
      v45 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v43, v44, v122);

      *(v41 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v36, v37, "  Current Item=%{public}s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v42);
    }

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v122[0] = v49;
      *v48 = 136446210;
      LOBYTE(v121[0]) = v115;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore5GlissO9DirectionOSgMd, &_s9MusicCore5GlissO9DirectionOSgMR);
      v50 = String.init<A>(describing:)();
      v52 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v50, v51, v122);

      *(v48 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v46, v47, "  Direction=%{public}s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v49);
    }

    v53 = v117;
    outlined copy of Gliss.Animation?(v117, v40, v39);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();
    outlined consume of Gliss.Animation?(v53, v40, v39);
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v121[0] = v57;
      *v56 = 136446210;
      v122[0] = v53;
      v122[1] = v40;
      v123 = v39;
      outlined copy of Gliss.Animation?(v53, v40, v39);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore5GlissO9AnimationOSgMd, &_s9MusicCore5GlissO9AnimationOSgMR);
      v58 = String.init<A>(describing:)();
      v60 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v58, v59, v121);

      *(v56 + 4) = v60;
      _os_log_impl(&_mh_execute_header, v54, v55, "  Animation=%{public}s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v57);
    }

    v61 = v105;
    v62 = *(v35 + *((swift_isaMask & *v35) + 0x88));
    if (v62 && (v63 = *(*v62 + 128), swift_beginAccess(), *(v62 + v63)))
    {

      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        v122[0] = v118;
        *v66 = 136446210;
        v120 = v62;
        type metadata accessor for Gliss.Transition(0, AssociatedTypeWitness, v102, v67);
        swift_getWitnessTable();
        v68 = dispatch thunk of CustomStringConvertible.description.getter();
        v70 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v68, v69, v122);

        *(v66 + 4) = v70;
        _os_log_impl(&_mh_execute_header, v64, v65, "  Ongoing Transition=%{public}s", v66, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v118);
      }

      v71 = v103;
      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&_mh_execute_header, v72, v73, "  ⏳ Queueing item until ongoing transition completes", v74, 2u);
      }

      v75 = v110;
      v71(v110, v61, AssociatedTypeWitness);
      (v108)(v75, 0, 1, AssociatedTypeWitness);
      Gliss.Coordinator.queuedItem.setter(v75);
      v76 = v116;
      v71(v116, v61, AssociatedTypeWitness);
      v77 = v113;
      v78 = (*(v113 + 80) + 32) & ~*(v113 + 80);
      v79 = (v78 + v111 + 7) & 0xFFFFFFFFFFFFFFF8;
      v80 = (v78 + v111 + 23) & 0xFFFFFFFFFFFFFFF8;
      v81 = swift_allocObject();
      v82 = v107;
      *(v81 + 16) = v106;
      *(v81 + 24) = v82;
      (*(v77 + 32))(v81 + v78, v76, AssociatedTypeWitness);
      v83 = v81 + v79;
      *v83 = v35;
      *(v83 + 8) = v115;
      v84 = v81 + v80;
      v85 = v117;
      v86 = v114;
      *v84 = v117;
      *(v84 + 8) = v86;
      *(v84 + 16) = v39;
      v87 = v35;
      outlined copy of Gliss.Animation?(v85, v86, v39);
      Gliss.Transition.addCompletion(_:)(partial apply for closure #1 in Gliss.Coordinator.setItem(_:animationDirection:animation:), v81);
    }

    else
    {
      v88 = Gliss.Coordinator.transition(for:direction:)(v61, v115);
      v89 = v117;
      if (v39 >= 0xFEu)
      {
        v90 = 0;
      }

      else
      {
        v90 = v117;
      }

      if (v39 >= 0xFEu)
      {
        v91 = 0;
      }

      else
      {
        v91 = v40;
      }

      if (v39 >= 0xFEu)
      {
        v92 = -64;
      }

      else
      {
        v92 = v39;
      }

      v93 = v88 + *(*v88 + 136);
      v94 = *v93;
      v95 = *(v93 + 1);
      *v93 = v90;
      *(v93 + 1) = v91;
      v96 = v93[16];
      v93[16] = v92;
      outlined copy of Gliss.Animation?(v89, v40, v39);
      outlined consume of Gliss.Animation(v94, v95, v96);
      Gliss.Coordinator.begin(_:)(v88);
      v97 = v116;
      v103(v116, v61, AssociatedTypeWitness);
      Gliss.Coordinator._item.setter(v97);
      v98 = *((swift_isaMask & *v35) + 0x70);
      swift_beginAccess();
      v99 = *(v35 + v98);
      __chkstk_darwin();
      v100 = v107;
      *(&v101 - 4) = v106;
      *(&v101 - 3) = v100;
      *(&v101 - 2) = v61;
      *(&v101 - 1) = v88;

      specialized Sequence.forEach(_:)(partial apply for closure #2 in Gliss.Coordinator.setItem(_:animationDirection:animation:), (&v101 - 6), v99);

      Gliss.Coordinator.end(_:animated:)(v88, v39 < 0xFEu);
    }
  }

  return result;
}

void closure #1 in Gliss.Coordinator.setItem(_:animationDirection:animation:)(uint64_t *a1, uint64_t a2, char *a3, void *a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v65 = a8;
  v66 = a5;
  v67 = a6;
  v68 = a7;
  v81 = a4;
  v63 = *a1;
  v9 = *(v63 + 80);
  v10 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v71 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin();
  v12 = &v62 - v11;
  v82 = v10;
  v74 = *(v10 - 8);
  __chkstk_darwin();
  v64 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v62 - v14;
  __chkstk_darwin();
  v17 = &v62 - v16;
  __chkstk_darwin();
  v79 = &v62 - v18;
  v19 = *(v9 - 8);
  __chkstk_darwin();
  v73 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v22 = &v62 - v21;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v76 = v12;
  v23 = type metadata accessor for Logger();
  v24 = __swift_project_value_buffer(v23, static Gliss.logger);
  v25 = *(v19 + 16);
  v77 = a3;
  v25(v22, a3, v9);
  v72 = v24;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  v28 = os_log_type_enabled(v26, v27);
  v78 = v19;
  v70 = v15;
  v75 = v17;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v83[0] = v30;
    *v29 = 136446210;
    v25(v73, v22, v9);
    v31 = String.init<A>(describing:)();
    v33 = v32;
    v69 = *(v78 + 8);
    v69(v22, v9);
    v34 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v31, v33, v83);

    *(v29 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v26, v27, "⌛️ Dequeuing item=%{public}s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    v19 = v78;

    v17 = v75;
  }

  else
  {

    v69 = *(v19 + 8);
    v69(v22, v9);
  }

  v35 = v79;
  Gliss.Coordinator.queuedItem.getter(v79);
  v25(v17, v77, v9);
  (*(v19 + 56))(v17, 0, 1, v9);
  v36 = *(TupleTypeMetadata2 + 48);
  v37 = *(v74 + 16);
  v38 = v19;
  v39 = v74;
  v40 = v76;
  v41 = v82;
  v37(v76, v35, v82);
  v37(&v40[v36], v17, v41);
  v42 = *(v38 + 48);
  if (v42(v40, 1, v9) == 1)
  {
    v43 = *(v39 + 8);
    v44 = v17;
    v45 = v82;
    v43(v44, v82);
    v43(v35, v45);
    if (v42(&v40[v36], 1, v9) == 1)
    {
      v43(v40, v82);
LABEL_16:
      Gliss.Coordinator.setItem(_:animationDirection:animation:)(v77, v66, v67, v68, v65);
      return;
    }

    goto LABEL_11;
  }

  v46 = v70;
  v37(v70, v40, v82);
  if (v42(&v40[v36], 1, v9) == 1)
  {
    v47 = *(v39 + 8);
    v48 = v82;
    v47(v75, v82);
    v47(v79, v48);
    v69(v46, v9);
LABEL_11:
    (*(v71 + 8))(v40, TupleTypeMetadata2);
    goto LABEL_12;
  }

  v57 = v73;
  (*(v78 + 32))(v73, &v40[v36], v9);
  v58 = dispatch thunk of static Equatable.== infix(_:_:)();
  v59 = v69;
  v69(v57, v9);
  v60 = *(v39 + 8);
  v61 = v82;
  v60(v75, v82);
  v60(v79, v61);
  v59(v46, v9);
  v60(v40, v61);
  if (v58)
  {
    goto LABEL_16;
  }

LABEL_12:
  v49 = v81;
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v83[0] = v53;
    *v52 = 136446210;
    Gliss.Coordinator.queuedItem.getter(v64);
    v54 = String.init<A>(describing:)();
    v56 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v54, v55, v83);

    *(v52 + 4) = v56;
    _os_log_impl(&_mh_execute_header, v50, v51, "  ⌛️❌ Item no longer matches queued item=%{public}s", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v53);
  }
}

void Gliss.Coordinator.setNeedsLayout()(SEL *a1)
{
  v3 = *((swift_isaMask & *v1) + 0x70);
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = *(v4 + 16);

  if (v5)
  {
    v6 = 0;
    v7 = (v4 + 32);
    while (v6 < *(v4 + 16))
    {
      ++v6;
      v8 = *v7;
      v7 += 2;
      [v8 *a1];
      if (v5 == v6)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }
}

void Gliss.Coordinator.transition.didset(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v29[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  __chkstk_darwin();
  v8 = &v29[-v7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  __chkstk_darwin();
  v34 = &v29[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v11 = &v29[-v10];
  v13 = __chkstk_darwin();
  v14 = &v29[-v12];
  if (a1)
  {
    v31 = v5;
    v15 = v3;
    v16 = *(v3 + 16);
    v33 = a1;
    v16(&v29[-v12], a1 + direct field offset for Gliss.Transition.id, v2, v13);
    v32 = v15;
    v17 = *(v15 + 56);
    v18 = 1;
    v17(v14, 0, 1, v2);
    v19 = *(v35 + *((swift_isaMask & *v35) + 0x88));
    if (v19)
    {
      (v16)(v11, v19 + direct field offset for Gliss.Transition.id, v2);
      v18 = 0;
    }

    v17(v11, v18, 1, v2);
    v20 = *(v6 + 48);
    outlined init with copy of UUID?(v14, v8);
    outlined init with copy of UUID?(v11, &v8[v20]);
    v21 = v32;
    v22 = *(v32 + 48);
    if (v22(v8, 1, v2) == 1)
    {
      v23 = v33;

      outlined destroy of TaskPriority?(v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of TaskPriority?(v14, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v24 = v23;
      if (v22(&v8[v20], 1, v2) == 1)
      {
        outlined destroy of TaskPriority?(v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_13:

        return;
      }
    }

    else
    {
      v25 = v34;
      outlined init with copy of UUID?(v8, v34);
      if (v22(&v8[v20], 1, v2) != 1)
      {
        v27 = v31;
        (*(v21 + 32))(v31, &v8[v20], v2);
        lazy protocol witness table accessor for type UUID and conformance UUID();
        v24 = v33;

        v30 = dispatch thunk of static Equatable.== infix(_:_:)();
        v28 = *(v21 + 8);
        v28(v27, v2);
        outlined destroy of TaskPriority?(v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        outlined destroy of TaskPriority?(v14, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v28(v34, v2);
        outlined destroy of TaskPriority?(v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        if (v30)
        {
          goto LABEL_13;
        }

LABEL_10:
        v26 = *(*v24 + 16);
        swift_beginAccess();
        if (*(v24 + v26) <= 2u)
        {
          Gliss.Coordinator.cancel(_:animated:)(v24, 0);
        }

        goto LABEL_13;
      }

      v24 = v33;

      outlined destroy of TaskPriority?(v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of TaskPriority?(v14, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      (*(v21 + 8))(v25, v2);
    }

    outlined destroy of TaskPriority?(v8, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    goto LABEL_10;
  }
}

uint64_t Gliss.Coordinator.transition.setter(uint64_t a1)
{
  specialized Gliss.Coordinator.transition.setter(a1);
}

id Gliss.Coordinator.completedTransitionFeedbackGenerator.getter()
{
  v1 = *((swift_isaMask & *v0) + 0x98);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    Gliss.Coordinator.gestureConfiguration.getter(v9);
    v4 = v9[0];
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v9[1], v9[2]);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v9[3], v9[4]);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v9[5], v9[6]);
    v5 = [objc_opt_self() feedbackGeneratorWithStyle:1 forView:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id Gliss.Coordinator.cancelledTransitionFeedbackGenerator.getter()
{
  v1 = *((swift_isaMask & *v0) + 0xA0);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    Gliss.Coordinator.gestureConfiguration.getter(v9);
    v4 = v9[0];
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v9[1], v9[2]);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v9[3], v9[4]);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v9[5], v9[6]);
    v5 = [objc_opt_self() feedbackGeneratorWithStyle:3 forView:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id Gliss.Coordinator.errorFeedbackGenerator.getter()
{
  v1 = *((swift_isaMask & *v0) + 0xA8);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    Gliss.Coordinator.gestureConfiguration.getter(v9);
    v4 = v9[0];
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v9[1], v9[2]);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v9[3], v9[4]);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v9[5], v9[6]);
    v5 = [objc_opt_self() feedbackGeneratorForView:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t Gliss.Coordinator.transition(for:direction:)(uint64_t a1, unsigned int a2)
{
  v3 = v2;
  v95 = a1;
  v5 = *v2;
  v6 = swift_isaMask;
  v7 = *((swift_isaMask & *v2) + 0x58);
  v93 = *((swift_isaMask & *v2) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v92 = type metadata accessor for Optional();
  v88 = *(v92 - 8);
  __chkstk_darwin();
  v85 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v84 = &v79 - v10;
  __chkstk_darwin();
  v12 = &v79 - v11;
  __chkstk_darwin();
  v14 = &v79 - v13;
  v94 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v91 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v87 = &v79 - v16;
  __chkstk_darwin();
  v90 = &v79 - v17;
  __chkstk_darwin();
  v89 = &v79 - v18;
  __chkstk_darwin();
  v20 = &v79 - v19;
  v21 = *(v3 + *((v6 & v5) + 0x88));
  v86 = a2;
  if (v21)
  {
    v22 = *(*v21 + 128);
    swift_beginAccess();
    if (*(v21 + v22) <= 2u)
    {
      v80 = v7;
      v23 = *(*v21 + 112);
      swift_beginAccess();
      v24 = v88;
      v25 = *(v88 + 16);
      v83 = v23;
      v82 = v25;
      v25(v14, v21 + v23, v92);
      v26 = v94;
      v81 = *(v94 + 48);
      if (v81(v14, 1, AssociatedTypeWitness) == 1)
      {
        v27 = *(v24 + 8);

        v27(v14, v92);
      }

      else
      {
        (*(v26 + 32))(v20, v14, AssociatedTypeWitness);
        swift_getAssociatedConformanceWitness();

        v28 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v26 + 8))(v20, AssociatedTypeWitness);
        if (v28)
        {
          return v21;
        }
      }

      v82(v12, v21 + v83, v92);
      if (v81(v12, 1, AssociatedTypeWitness) == 1)
      {
        (*(v88 + 8))(v12, v92);
        v29 = *(*v21 + 104);
        swift_beginAccess();
        v30 = v94;
        v31 = v89;
        (*(v94 + 16))(v89, v21 + v29, AssociatedTypeWitness);
        v7 = v80;
        swift_getAssociatedConformanceWitness();
        LOBYTE(v29) = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v30 + 8))(v31, AssociatedTypeWitness);
        if (v29)
        {
          return v21;
        }
      }

      else
      {

        (*(v88 + 8))(v12, v92);
        v7 = v80;
      }
    }
  }

  v81 = v3;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  v33 = __swift_project_value_buffer(v32, static Gliss.logger);
  v34 = v94;
  v35 = *(v94 + 16);
  v36 = v90;
  v35(v90, v95, AssociatedTypeWitness);
  v83 = v33;
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();
  v39 = os_log_type_enabled(v37, v38);
  v82 = v35;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v80 = v7;
    v41 = v40;
    v42 = swift_slowAlloc();
    v98 = v42;
    *v41 = 136446210;
    v35(v89, v36, AssociatedTypeWitness);
    v43 = String.init<A>(describing:)();
    v45 = v44;
    v90 = *(v94 + 8);
    (v90)(v36, AssociatedTypeWitness);
    v46 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v43, v45, &v98);
    v47 = v80;

    *(v41 + 4) = v46;
    v34 = v94;
    _os_log_impl(&_mh_execute_header, v37, v38, "Creating transition for item=%{public}s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v42);
  }

  else
  {
    v47 = v7;

    v90 = *(v34 + 8);
    (v90)(v36, AssociatedTypeWitness);
  }

  v48 = v87;
  v49 = v88;
  v50 = v81;
  v51 = *(v81 + *((swift_isaMask & *v81) + 0x88));
  if (!v51)
  {
    v54 = v84;
    (*(v34 + 56))(v84, 1, 1, AssociatedTypeWitness);
    v55 = v47;
    goto LABEL_19;
  }

  v52 = *(*v51 + 112);
  swift_beginAccess();
  v53 = v51 + v52;
  v54 = v84;
  (*(v49 + 16))(v84, v53, v92);
  v55 = v47;
  if ((*(v34 + 48))(v54, 1, AssociatedTypeWitness) == 1)
  {
LABEL_19:
    Gliss.Coordinator.item.getter(v48);
    v57 = (*(v34 + 48))(v54, 1, AssociatedTypeWitness);
    v56 = v82;
    if (v57 != 1)
    {
      (*(v49 + 8))(v54, v92);
    }

    v56(v91, v48, AssociatedTypeWitness);
    goto LABEL_22;
  }

  (*(v34 + 32))(v48, v54, AssociatedTypeWitness);
  v56 = v82;
  v82(v91, v48, AssociatedTypeWitness);
LABEL_22:
  v58 = v89;
  Gliss.Coordinator.item.getter(v89);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v60 = dispatch thunk of static Equatable.== infix(_:_:)();
  v94 = v34 + 8;
  (v90)(v58, AssociatedTypeWitness);
  if (v60)
  {
    v61 = 1;
    v62 = v85;
  }

  else
  {
    v62 = v85;
    v56(v85, v95, AssociatedTypeWitness);
    v61 = 0;
  }

  (*(v34 + 56))(v62, v61, 1, AssociatedTypeWitness);
  type metadata accessor for Gliss.Transition(0, AssociatedTypeWitness, AssociatedConformanceWitness, v63);
  v64 = v62;
  v65 = *((swift_isaMask & *v50) + 0x70);
  swift_beginAccess();
  v66 = *(v50 + v65);
  __chkstk_darwin();
  *(&v79 - 4) = v93;
  *(&v79 - 3) = v55;
  *(&v79 - 2) = v95;
  v67 = v86;
  *(&v79 - 8) = v86;

  v68 = specialized Sequence.reduce<A>(into:_:)(_swiftEmptyDictionarySingleton, partial apply for closure #1 in Gliss.Coordinator.transition(for:direction:), (&v79 - 6), v66);

  v21 = Gliss.Transition.__allocating_init(from:to:progression:contexts:)(v91, v64, v67, v68, 0.0);

  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = v48;
    v73 = swift_slowAlloc();
    v96 = v21;
    v97 = v73;
    *v71 = 136446210;
    swift_getWitnessTable();
    v74 = dispatch thunk of CustomStringConvertible.description.getter();
    v76 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v74, v75, &v97);

    *(v71 + 4) = v76;
    _os_log_impl(&_mh_execute_header, v69, v70, "   Created Transition=%{public}s", v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v73);

    v77 = v72;
  }

  else
  {

    v77 = v48;
  }

  (v90)(v77, AssociatedTypeWitness);
  return v21;
}

void closure #1 in Gliss.Coordinator.transition(for:direction:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v8 = *a2;
  v9 = *(a2 + 8);
  ObjectType = swift_getObjectType();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v12 = v8;
  Gliss.CoordinatedView._transitionContext<A>(to:direction:)(a3, a4, ObjectType, AssociatedTypeWitness, v9, v13);
  specialized Dictionary.subscript.setter(v13, v12);
}

void Gliss.Coordinator.begin(_:)(uint64_t *a1)
{
  v2 = v1;
  v4 = *a1;
  if (one-time initialization token for logger != -1)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Gliss.logger);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v25[0] = v9;
      *v8 = 136446210;
      type metadata accessor for Gliss.Transition(0, *(v4 + 80), *(v4 + 88), v10);
      swift_getWitnessTable();
      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      v13 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v11, v12, v25);

      *(v8 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v6, v7, "Begin or Enqueue Transition=%{public}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
    }

    Gliss.Transition.state.setter(2);

    specialized Gliss.Coordinator.transition.setter(v14);

    v15 = *((swift_isaMask & *v2) + 0x70);
    swift_beginAccess();
    v16 = *(v2 + v15);
    v4 = *(v16 + 16);

    if (!v4)
    {
      break;
    }

    v17 = 0;
    v18 = (v16 + 40);
    while (v17 < *(v16 + 16))
    {
      ++v17;
      v19 = *v18;
      v20 = *(v18 - 1);
      ObjectType = swift_getObjectType();
      Gliss.CoordinatedView._transitionWillBegin<A>(_:)(a1, ObjectType, v19);

      v18 += 2;
      if (v4 == v17)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_12:
    swift_once();
  }

LABEL_8:

  Gliss.Coordinator.layoutIfNeeded()();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "   Transition Started!", v24, 2u);
  }
}

void Gliss.Coordinator.cancel(_:animated:)(void **a1, char a2)
{
  v3 = v2;
  v6 = *a1;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Gliss.logger);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v58[0] = swift_slowAlloc();
    *v10 = 136446466;
    aBlock = a1;
    type metadata accessor for Gliss.Transition(0, v6[10], v6[11], v11);
    swift_getWitnessTable();
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v12, v13, v58);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    if (a2)
    {
      v15 = 0x6574616D696E6128;
    }

    else
    {
      v15 = 0;
    }

    if (a2)
    {
      v16 = 0xEA00000000002964;
    }

    else
    {
      v16 = 0xE000000000000000;
    }

    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v15, v16, v58);

    *(v10 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "Attempting to cancel transition=%{public}s %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  v18 = *(*a1 + 16);
  swift_beginAccess();
  if (*(a1 + v18) == 2)
  {
    Gliss.Transition.state.setter(4);
    Gliss.Coordinator.setNeedsLayout()();
    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    *(v19 + 24) = a2 & 1;
    *(v19 + 32) = v3;
    v20 = swift_allocObject();
    *(v20 + 16) = a1;
    *(v20 + 24) = v3;
    if (a2)
    {
      v21 = direct field offset for Gliss.Transition.id;
      v22 = *((swift_isaMask & *v3) + 0x90);
      swift_beginAccess();
      v23 = *(v3 + v22);
      v24 = *(v23 + 16);
      swift_retain_n();
      v25 = v3;
      if (v24)
      {

        v26 = specialized __RawDictionaryStorage.find<A>(_:)(a1 + v21);
        if (v27)
        {
          v28 = *(*(v23 + 56) + 8 * v26);

          [v28 stopAnimation:0];
        }

        else
        {
        }
      }

      v33 = a1 + *(*a1 + 17);
      v50 = v21;
      v34 = *v33;
      v35 = *(v33 + 1);
      v36 = v33[16];
      Gliss.Coordinator.gestureConfiguration.getter(v58);
      v49 = v25;
      v38 = v58[0];
      v37 = v58[1];
      v39 = v58[2];
      outlined copy of Gliss.Animation(v34, v35, v36);
      outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v37, v39);
      outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v58[3], v58[4]);
      outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v58[5], v58[6]);
      v40 = Gliss.Animation.resolvedAnimator<A>(for:in:)(a1, v38, v34, v35, v36);

      outlined consume of Gliss.Animation(v34, v35, v36);
      v41 = swift_allocObject();
      *(v41 + 16) = partial apply for closure #1 in Gliss.Coordinator.cancel(_:animated:);
      *(v41 + 24) = v19;
      v56 = partial apply for closure #2 in ActionMenuView.body.getter;
      v57 = v41;
      aBlock = _NSConcreteStackBlock;
      v53 = 1107296256;
      v54 = thunk for @escaping @callee_guaranteed () -> ();
      v55 = &block_descriptor_21;
      v42 = _Block_copy(&aBlock);

      [v40 addAnimations:v42];
      _Block_release(v42);
      v43 = swift_allocObject();
      v43[2] = partial apply for closure #2 in Gliss.Coordinator.cancel(_:animated:);
      v43[3] = v20;
      v43[4] = v49;
      v43[5] = a1;
      v56 = partial apply for closure #4 in Gliss.Coordinator.cancel(_:animated:);
      v57 = v43;
      aBlock = _NSConcreteStackBlock;
      v53 = 1107296256;
      v54 = thunk for @escaping @callee_guaranteed (@unowned UIViewAnimatingPosition) -> ();
      v55 = &block_descriptor_30_0;
      v44 = _Block_copy(&aBlock);

      v45 = v49;

      [v40 addCompletion:v44];
      _Block_release(v44);
      [v40 startAnimation];
      v46 = *((swift_isaMask & *v45) + 0x90);
      swift_beginAccess();
      v47 = v40;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51 = *(v45 + v46);
      *(v45 + v46) = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v47, a1 + v50, isUniquelyReferenced_nonNull_native);
      *(v45 + v46) = v51;
      swift_endAccess();
    }

    else
    {
      swift_retain_n();
      v32 = v3;
      closure #1 in Gliss.Coordinator.cancel(_:animated:)(a1, 0, v32, partial apply for closure #1 in closure #1 in Gliss.Coordinator.cancel(_:animated:), 0.0);
      closure #2 in Gliss.Coordinator.cancel(_:animated:)(a1, v32);
    }
  }

  else
  {
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "   🫷Ignored (Transition Not Active)", v31, 2u);
    }
  }
}

uint64_t closure #2 in Gliss.Coordinator.cancel(_:animated:)(char *a1, void *a2)
{
  v58 = *a1;
  v3 = &swift_isaMask;
  v4 = swift_isaMask & *a2;
  v60 = a2;
  v57 = v4;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v55 = v5;
  v56 = v6;
  __chkstk_darwin();
  v52 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  __chkstk_darwin();
  v59 = &v52 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  __chkstk_darwin();
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v52 - v12;
  __chkstk_darwin();
  v15 = (&v52 - v14);
  Gliss.Transition.state.setter(6);
  if (one-time initialization token for logger != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Gliss.logger);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    v19 = os_log_type_enabled(v17, v18);
    v53 = v11;
    v54 = v8;
    if (v19)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v62[0] = v21;
      *v20 = 136446210;
      v61[0] = a1;
      type metadata accessor for Gliss.Transition(0, *(v58 + 80), *(v58 + 88), v22);
      swift_getWitnessTable();
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v23, v24, v62);

      *(v20 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v17, v18, "❎ Cancelled transition=%{public}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);

      v3 = &swift_isaMask;
    }

    v26 = *(v60 + *((*v3 & *v60) + 0x88));
    v28 = v55;
    v27 = v56;
    if (v26)
    {
      v29 = *(v56 + 2);
      v29(v15, v26 + direct field offset for Gliss.Transition.id, v55);
      v30 = *(v27 + 56);
      v30(v15, 0, 1, v28);
    }

    else
    {
      v30 = *(v56 + 7);
      v30(v15, 1, 1, v55);
      v29 = *(v27 + 16);
    }

    v29(v13, &a1[direct field offset for Gliss.Transition.id], v28);
    v30(v13, 0, 1, v28);
    v31 = v54[12];
    v32 = v59;
    outlined init with copy of UUID?(v15, v59);
    outlined init with copy of UUID?(v13, v32 + v31);
    v33 = *(v27 + 48);
    if (v33(v32, 1, v28) == 1)
    {
      outlined destroy of TaskPriority?(v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v34 = v59;
      outlined destroy of TaskPriority?(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v8 = &swift_isaMask;
      if (v33(v34 + v31, 1, v28) != 1)
      {
        goto LABEL_12;
      }

      outlined destroy of TaskPriority?(v34, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v35 = v57;
LABEL_14:
      specialized Gliss.Coordinator.transition.setter(0);
      goto LABEL_15;
    }

    v56 = v13;
    v36 = v53;
    outlined init with copy of UUID?(v32, v53);
    if (v33(v32 + v31, 1, v28) == 1)
    {
      v37 = v27;
      outlined destroy of TaskPriority?(v56, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v34 = v59;
      outlined destroy of TaskPriority?(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      (*(v37 + 8))(v36, v28);
      v8 = &swift_isaMask;
LABEL_12:
      outlined destroy of TaskPriority?(v34, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
      v35 = v57;
      goto LABEL_15;
    }

    v38 = v32 + v31;
    v39 = v32;
    v40 = v52;
    (*(v27 + 32))(v52, v38, v28);
    lazy protocol witness table accessor for type UUID and conformance UUID();
    v41 = v27;
    v42 = dispatch thunk of static Equatable.== infix(_:_:)();
    v43 = *(v41 + 8);
    v43(v40, v28);
    outlined destroy of TaskPriority?(v56, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of TaskPriority?(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v43(v36, v28);
    outlined destroy of TaskPriority?(v39, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v8 = &swift_isaMask;
    v35 = v57;
    if (v42)
    {
      goto LABEL_14;
    }

LABEL_15:
    v44 = *(*a1 + 152);
    swift_beginAccess();
    v62[0] = *&a1[v44];
    __chkstk_darwin();
    *(&v52 - 2) = *(v35 + 80);
    *(&v52 - 2) = a1;
    type metadata accessor for Gliss.Transition(255, *(v58 + 80), *(v58 + 88), v45);
    swift_getFunctionTypeMetadata2();
    v3 = type metadata accessor for Array();

    swift_getWitnessTable();
    Sequence.forEach(_:)();

    v46 = v60;
    v47 = *((swift_isaMask & *v60) + 0x70);
    swift_beginAccess();
    v48 = *(v46 + v47);
    v11 = *(v48 + 16);

    if (!v11)
    {
    }

    v13 = 0;
    v15 = (v48 + 40);
    while (v13 < *(v48 + 16))
    {
      ++v13;
      v49 = *v15;
      v3 = *(v15 - 1);
      ObjectType = swift_getObjectType();
      Gliss.CoordinatedView._transitionDidEnd<A>(_:)(a1, ObjectType, v49);

      v15 += 2;
      if (v11 == v13)
      {
      }
    }

    __break(1u);
LABEL_21:
    swift_once();
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned UIViewAnimatingPosition) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void Gliss.Coordinator.end(_:animated:)(void **a1, char a2)
{
  v3 = v2;
  v6 = *a1;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Gliss.logger);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v58[0] = swift_slowAlloc();
    *v10 = 136446466;
    aBlock = a1;
    type metadata accessor for Gliss.Transition(0, v6[10], v6[11], v11);
    swift_getWitnessTable();
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v12, v13, v58);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    if (a2)
    {
      v15 = 0x6574616D696E6128;
    }

    else
    {
      v15 = 0;
    }

    if (a2)
    {
      v16 = 0xEA00000000002964;
    }

    else
    {
      v16 = 0xE000000000000000;
    }

    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v15, v16, v58);

    *(v10 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "Attempting to end transition=%{public}s %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  v18 = *(*a1 + 16);
  swift_beginAccess();
  if (*(a1 + v18) == 2)
  {
    Gliss.Transition.state.setter(3);
    Gliss.Coordinator.setNeedsLayout()();
    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    *(v19 + 24) = a2 & 1;
    *(v19 + 32) = v3;
    v20 = swift_allocObject();
    *(v20 + 16) = a1;
    *(v20 + 24) = v3;
    if (a2)
    {
      v21 = direct field offset for Gliss.Transition.id;
      v22 = *((swift_isaMask & *v3) + 0x90);
      swift_beginAccess();
      v23 = *(v3 + v22);
      v24 = *(v23 + 16);
      swift_retain_n();
      v25 = v3;
      if (v24)
      {

        v26 = specialized __RawDictionaryStorage.find<A>(_:)(a1 + v21);
        if (v27)
        {
          v28 = *(*(v23 + 56) + 8 * v26);

          [v28 stopAnimation:0];
        }

        else
        {
        }
      }

      v33 = a1 + *(*a1 + 17);
      v50 = v21;
      v34 = *v33;
      v35 = *(v33 + 1);
      v36 = v33[16];
      Gliss.Coordinator.gestureConfiguration.getter(v58);
      v49 = v25;
      v38 = v58[0];
      v37 = v58[1];
      v39 = v58[2];
      outlined copy of Gliss.Animation(v34, v35, v36);
      outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v37, v39);
      outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v58[3], v58[4]);
      outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v58[5], v58[6]);
      v40 = Gliss.Animation.resolvedAnimator<A>(for:in:)(a1, v38, v34, v35, v36);

      outlined consume of Gliss.Animation(v34, v35, v36);
      v41 = swift_allocObject();
      *(v41 + 16) = partial apply for closure #1 in Gliss.Coordinator.end(_:animated:);
      *(v41 + 24) = v19;
      v56 = partial apply for closure #3 in View.actionContextMenu<A>(title:menu:excluding:preview:previewAction:);
      v57 = v41;
      aBlock = _NSConcreteStackBlock;
      v53 = 1107296256;
      v54 = thunk for @escaping @callee_guaranteed () -> ();
      v55 = &block_descriptor_42_0;
      v42 = _Block_copy(&aBlock);

      [v40 addAnimations:v42];
      _Block_release(v42);
      v43 = swift_allocObject();
      v43[2] = partial apply for closure #2 in Gliss.Coordinator.end(_:animated:);
      v43[3] = v20;
      v43[4] = v49;
      v43[5] = a1;
      v56 = partial apply for closure #4 in Gliss.Coordinator.end(_:animated:);
      v57 = v43;
      aBlock = _NSConcreteStackBlock;
      v53 = 1107296256;
      v54 = thunk for @escaping @callee_guaranteed (@unowned UIViewAnimatingPosition) -> ();
      v55 = &block_descriptor_48;
      v44 = _Block_copy(&aBlock);

      v45 = v49;

      [v40 addCompletion:v44];
      _Block_release(v44);
      [v40 startAnimation];
      v46 = *((swift_isaMask & *v45) + 0x90);
      swift_beginAccess();
      v47 = v40;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51 = *(v45 + v46);
      *(v45 + v46) = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v47, a1 + v50, isUniquelyReferenced_nonNull_native);
      *(v45 + v46) = v51;
      swift_endAccess();
    }

    else
    {
      swift_retain_n();
      v32 = v3;
      closure #1 in Gliss.Coordinator.cancel(_:animated:)(a1, 0, v32, partial apply for closure #1 in closure #1 in Gliss.Coordinator.end(_:animated:), 1.0);
      closure #2 in Gliss.Coordinator.end(_:animated:)(a1, v32);
    }
  }

  else
  {
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "   🫷Ignored (Transition Not Active)", v31, 2u);
    }
  }
}

void closure #1 in Gliss.Coordinator.cancel(_:animated:)(uint64_t *a1, char a2, void *a3, uint64_t a4, double a5)
{
  v7 = *a1;
  v8 = (a1 + *(*a1 + 120));
  swift_beginAccess();
  v8[1] = a5;
  if (a2)
  {
    swift_beginAccess();
    __chkstk_darwin();
    type metadata accessor for Gliss.Transition(255, *(v7 + 80), *(v7 + 88), v9);
    swift_getFunctionTypeMetadata1();
    type metadata accessor for Array();

    swift_getWitnessTable();
    Sequence.forEach(_:)();
  }

  Gliss.Coordinator.layoutIfNeeded()();
}

uint64_t closure #2 in Gliss.Coordinator.end(_:animated:)(char *a1, void *a2)
{
  v58 = *a1;
  v3 = &swift_isaMask;
  v4 = swift_isaMask & *a2;
  v60 = a2;
  v57 = v4;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v55 = v5;
  v56 = v6;
  __chkstk_darwin();
  v52 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  __chkstk_darwin();
  v59 = &v52 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  __chkstk_darwin();
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v52 - v12;
  __chkstk_darwin();
  v15 = (&v52 - v14);
  Gliss.Transition.state.setter(5);
  if (one-time initialization token for logger != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Gliss.logger);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    v19 = os_log_type_enabled(v17, v18);
    v53 = v11;
    v54 = v8;
    if (v19)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v62[0] = v21;
      *v20 = 136446210;
      v61[0] = a1;
      type metadata accessor for Gliss.Transition(0, *(v58 + 80), *(v58 + 88), v22);
      swift_getWitnessTable();
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v23, v24, v62);

      *(v20 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v17, v18, "✅ End of transition=%{public}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);

      v3 = &swift_isaMask;
    }

    v26 = *(v60 + *((*v3 & *v60) + 0x88));
    v28 = v55;
    v27 = v56;
    if (v26)
    {
      v29 = *(v56 + 2);
      v29(v15, v26 + direct field offset for Gliss.Transition.id, v55);
      v30 = *(v27 + 56);
      v30(v15, 0, 1, v28);
    }

    else
    {
      v30 = *(v56 + 7);
      v30(v15, 1, 1, v55);
      v29 = *(v27 + 16);
    }

    v29(v13, &a1[direct field offset for Gliss.Transition.id], v28);
    v30(v13, 0, 1, v28);
    v31 = v54[12];
    v32 = v59;
    outlined init with copy of UUID?(v15, v59);
    outlined init with copy of UUID?(v13, v32 + v31);
    v33 = *(v27 + 48);
    if (v33(v32, 1, v28) == 1)
    {
      outlined destroy of TaskPriority?(v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v34 = v59;
      outlined destroy of TaskPriority?(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v8 = &swift_isaMask;
      if (v33(v34 + v31, 1, v28) != 1)
      {
        goto LABEL_12;
      }

      outlined destroy of TaskPriority?(v34, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v35 = v57;
LABEL_14:
      specialized Gliss.Coordinator.transition.setter(0);
      goto LABEL_15;
    }

    v56 = v13;
    v36 = v53;
    outlined init with copy of UUID?(v32, v53);
    if (v33(v32 + v31, 1, v28) == 1)
    {
      v37 = v27;
      outlined destroy of TaskPriority?(v56, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v34 = v59;
      outlined destroy of TaskPriority?(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      (*(v37 + 8))(v36, v28);
      v8 = &swift_isaMask;
LABEL_12:
      outlined destroy of TaskPriority?(v34, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
      v35 = v57;
      goto LABEL_15;
    }

    v38 = v32 + v31;
    v39 = v32;
    v40 = v52;
    (*(v27 + 32))(v52, v38, v28);
    lazy protocol witness table accessor for type UUID and conformance UUID();
    v41 = v27;
    v42 = dispatch thunk of static Equatable.== infix(_:_:)();
    v43 = *(v41 + 8);
    v43(v40, v28);
    outlined destroy of TaskPriority?(v56, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of TaskPriority?(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v43(v36, v28);
    outlined destroy of TaskPriority?(v39, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v8 = &swift_isaMask;
    v35 = v57;
    if (v42)
    {
      goto LABEL_14;
    }

LABEL_15:
    v44 = *(*a1 + 152);
    swift_beginAccess();
    v62[0] = *&a1[v44];
    __chkstk_darwin();
    *(&v52 - 2) = *(v35 + 80);
    *(&v52 - 2) = a1;
    type metadata accessor for Gliss.Transition(255, *(v58 + 80), *(v58 + 88), v45);
    swift_getFunctionTypeMetadata2();
    v3 = type metadata accessor for Array();

    swift_getWitnessTable();
    Sequence.forEach(_:)();

    v46 = v60;
    v47 = *((swift_isaMask & *v60) + 0x70);
    swift_beginAccess();
    v48 = *(v46 + v47);
    v11 = *(v48 + 16);

    if (!v11)
    {
    }

    v13 = 0;
    v15 = (v48 + 40);
    while (v13 < *(v48 + 16))
    {
      ++v13;
      v49 = *v15;
      v3 = *(v15 - 1);
      ObjectType = swift_getObjectType();
      Gliss.CoordinatedView._transitionDidEnd<A>(_:)(a1, ObjectType, v49);

      v15 += 2;
      if (v11 == v13)
      {
      }
    }

    __break(1u);
LABEL_21:
    swift_once();
  }
}

uint64_t closure #4 in Gliss.Coordinator.cancel(_:animated:)(uint64_t a1, void (*a2)(__n128), uint64_t a3, void *a4, uint64_t a5)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin();
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(v9);
  (*(v8 + 16))(v11, a5 + direct field offset for Gliss.Transition.id, v7);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(0, v11);
  return swift_endAccess();
}

void Gliss.Coordinator.panGestureRecognizer.setter(uint64_t a1)
{
  v2 = *((swift_isaMask & *v1) + 0xB0);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
}

void Gliss.Coordinator.setupPanGestureRecognizer()()
{
  v1 = (swift_isaMask & *v0);
  v2 = v1[22];
  v3 = *(v0 + v2);
  if (v3)
  {
    v4 = *(v0 + v2);
  }

  else
  {
    v18[0] = v0;
    v5 = objc_allocWithZone(UIPanGestureRecognizer);
    type metadata accessor for Gliss.Coordinator(0, v1[10], v1[11], v6);
    v4 = [v5 initWithTarget:_bridgeAnythingToObjectiveC<A>(_:)() action:"handlePanGestureRecognizer:"];
    swift_unknownObjectRelease();
    v3 = 0;
  }

  v7 = v4;
  v8 = v3;
  [v7 setDelegate:v0];
  v9 = *((swift_isaMask & *v0) + 0xB0);
  v10 = *(v0 + v9);
  *(v0 + v9) = v7;
  v11 = v7;

  [v11 setAllowedScrollTypesMask:3];
  Gliss.Coordinator.gestureConfiguration.getter(v18);
  v12 = v18[0];
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v18[1], v18[2]);
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v18[3], v18[4]);
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v18[5], v18[6]);
  v13 = [v11 view];
  if (v13)
  {
    v14 = v13;
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIView, UIView_ptr);
    if ((static NSObject.== infix(_:_:)() & 1) == 0)
    {
      [v14 removeGestureRecognizer:v11];
    }
  }

  v15 = [v11 view];

  if (!v15 || (type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIView, UIView_ptr), v16 = v12, v17 = static NSObject.== infix(_:_:)(), v15, v16, (v17 & 1) == 0))
  {
    [v12 addGestureRecognizer:v11];
  }
}

void Gliss.Coordinator.handlePanGestureRecognizer(_:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = swift_isaMask;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  __chkstk_darwin();
  v286 = v279 - v6;
  v7 = *((v5 & v4) + 0x50);
  v305 = *((v5 & v4) + 0x58);
  v302 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v303 = *(type metadata accessor for Optional() - 8);
  __chkstk_darwin();
  v287 = v279 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v290 = v279 - v10;
  __chkstk_darwin();
  v289 = v279 - v11;
  __chkstk_darwin();
  v291 = v279 - v12;
  __chkstk_darwin();
  v294 = (v279 - v13);
  __chkstk_darwin();
  v293 = v279 - v14;
  v306 = AssociatedTypeWitness;
  isa = AssociatedTypeWitness[-1].isa;
  __chkstk_darwin();
  v295 = v279 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v285 = v279 - v17;
  __chkstk_darwin();
  v19 = v279 - v18;
  __chkstk_darwin();
  v304 = v279 - v20;
  v284 = v21;
  __chkstk_darwin();
  v300 = v22;
  v301 = v279 - v23;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v25 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin();
  v27 = v279 - v26;
  v28 = Gliss.Coordinator.dataSource.getter();
  if (!v28)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static Gliss.logger);
    v306 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v306, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v306, v46, "No Data Source Set", v47, 2u);
    }

    v48 = v306;

    return;
  }

  v29 = v28;
  Gliss.Coordinator.gestureConfiguration.getter(v310);
  v30 = v310[0];
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v310[1], v310[2]);
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v310[3], v310[4]);
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v310[5], v310[6]);
  v288 = a1;
  [a1 translationInView:v30];
  v32 = v31;
  v34 = v33;

  if (v32 == 0.0)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    __swift_project_value_buffer(v49, static Gliss.logger);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = COERCE_DOUBLE(swift_slowAlloc());
      v307 = v53;
      *v52 = 136446210;
      v311 = v32;
      v312 = v34;
      type metadata accessor for CGPoint(0);
      v54 = String.init<A>(describing:)();
      v56 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v54, v55, &v307);

      *(v52 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v50, v51, "Unable to compute direction from gesture's translation %{public}s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(*&v53);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    return;
  }

  v298 = isa;
  v35 = *(v2 + *((swift_isaMask & *v2) + 0x88));
  v292 = TupleTypeMetadata2;
  v296 = v2;
  v297 = v29;
  v299 = v27;
  if (v35)
  {
    v36 = *(*v35 + 120);
    swift_beginAccess();
    v37 = *(v35 + v36);
    v38 = v301;
    if (v37 == 2 || (((v32 >= 0.0) ^ v37) & 1) != 0)
    {

      v2 = v296;
      specialized Gliss.Coordinator.transition.setter(0);
      Gliss.Coordinator.item.getter(v38);
      v44 = v302;
      (v305[3].isa)(v299, &v299[*(TupleTypeMetadata2 + 48)], v38, v302);
    }

    else
    {
      v39 = *(*v35 + 104);
      swift_beginAccess();
      (v298[2])(v38, v35 + v39, v306);
      v40 = v25;
      v41 = v299;
      v42 = v305[3].isa;
      v43 = *(v292 + 48);

      v44 = v302;
      (v42)(v41, &v41[v43], v38);
      v25 = v40;
      TupleTypeMetadata2 = v292;

      v2 = v296;
    }
  }

  else
  {
    v38 = v301;
    Gliss.Coordinator.item.getter(v301);
    v57 = &v27[*(TupleTypeMetadata2 + 48)];
    v58 = v27;
    v44 = v302;
    (v305[3].isa)(v58, v57, v38, v302);
  }

  v59 = v298;
  v60 = v298[1];
  v281 = (v298 + 1);
  v282 = v25;
  v60(v38, v306);
  Gliss.Coordinator.gestureConfiguration.getter(&v311);
  v61 = v311;
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v312, v313);
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v314, v315);
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v316, v317);
  v62 = [*&v61 effectiveUserInterfaceLayoutDirection];
  v283 = v60;
  v280 = v61;
  if (v32 < 0.0)
  {
    v63 = v304;
    if (!v62)
    {
      goto LABEL_30;
    }

    if (v62 != 1)
    {
LABEL_33:
      Gliss.Coordinator.item.getter(v19);
      goto LABEL_39;
    }

LABEL_26:
    v64 = v294;
    (*(v303 + 2))(v294, v299, v300);
    v65 = v59[6];
    if (v65(v64, 1, v306) != 1)
    {
      (v59[4])(v19, v64, v306);
      v2 = v296;
      v44 = v302;
      goto LABEL_39;
    }

    v66 = v296;
    Gliss.Coordinator.item.getter(v19);
    v67 = v65(v64, 1, v306);
    v2 = v66;
    v68 = v67 == 1;
    v69 = v64;
    v44 = v302;
    if (v68)
    {
      goto LABEL_39;
    }

    goto LABEL_32;
  }

  v63 = v304;
  if (!v62)
  {
    goto LABEL_26;
  }

  if (v62 != 1)
  {
    goto LABEL_33;
  }

LABEL_30:
  v70 = &v299[*(TupleTypeMetadata2 + 48)];
  v71 = v293;
  (*(v303 + 2))(v293, v70, v300);
  v72 = v59[6];
  if (v72(v71, 1, v306) != 1)
  {
    (v59[4])(v19, v71, v306);
    TupleTypeMetadata2 = v292;
    v2 = v296;
    goto LABEL_39;
  }

  v73 = v296;
  Gliss.Coordinator.item.getter(v19);
  v74 = v72(v71, 1, v306);
  v2 = v73;
  v68 = v74 == 1;
  v69 = v71;
  TupleTypeMetadata2 = v292;
  if (!v68)
  {
LABEL_32:
    (*(v303 + 1))(v69, v300);
  }

LABEL_39:
  v75 = v59[4];
  v75(v63, v19, v306);
  if ((v305[4].isa)(v63, v44))
  {
    v279[1] = v59 + 4;
    v76 = TupleTypeMetadata2;
    v77 = *&v280;
    [v288 velocityInView:v77];
    v79 = v78;
    v81 = v80;
    v82 = Gliss.Coordinator.transition(for:direction:)(v63, v32 >= 0.0);
    v295 = v77;
    [v77 bounds];
    Width = CGRectGetWidth(v319);
    v84 = v82 + *(*v82 + 168);
    swift_beginAccess();
    v85 = v84[32];
    v86 = v85 != 2;
    v87 = v86 & v85;
    if ((v86 & v84[33]) != 0)
    {
      v88 = 256;
    }

    else
    {
      v88 = 0;
    }

    *v84 = v32;
    *(v84 + 1) = v34;
    *(v84 + 2) = v79;
    *(v84 + 3) = v81;
    *(v84 + 16) = v88 | v87;
    v89 = *(*v82 + 128);
    swift_beginAccess();
    v90 = *(v82 + v89);
    v294 = v82;
    if (v90 <= 1)
    {
      v91 = v75;
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v92 = type metadata accessor for Logger();
      v293 = __swift_project_value_buffer(v92, static Gliss.logger);
      v93 = Logger.logObject.getter();
      v94 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        *v95 = 0;
        _os_log_impl(&_mh_execute_header, v93, v94, "🤏 Swipe Gesture Began", v95, 2u);
      }

      v96 = Logger.logObject.getter();
      v97 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v99 = COERCE_DOUBLE(swift_slowAlloc());
        v307 = v99;
        *v98 = 136446210;
        LOBYTE(v309[0]) = v32 >= 0.0;
        v100 = String.init<A>(describing:)();
        v102 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v100, v101, &v307);

        *(v98 + 4) = v102;
        v82 = v294;
        _os_log_impl(&_mh_execute_header, v96, v97, "   Direction=%{public}s", v98, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(*&v99);
      }

      v103 = Logger.logObject.getter();
      v104 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        v106 = COERCE_DOUBLE(swift_slowAlloc());
        v307 = v106;
        *v105 = 136446210;
        v309[0] = v82;
        v107 = v306;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        type metadata accessor for Gliss.Transition(0, v107, AssociatedConformanceWitness, v109);
        swift_getWitnessTable();
        v110 = dispatch thunk of CustomStringConvertible.description.getter();
        v112 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v110, v111, &v307);

        *(v105 + 4) = v112;
        v82 = v294;
        _os_log_impl(&_mh_execute_header, v103, v104, "   Transition=%{public}s", v105, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(*&v106);
      }

      v76 = v292;
      v75 = v91;
      v2 = v296;
      Gliss.Coordinator.begin(_:)(v82);
      v63 = v304;
    }

    v113 = [v288 state];
    if (v113 <= 2)
    {
      if (v113 < 2)
      {
        v114 = Gliss.Coordinator.completedTransitionFeedbackGenerator.getter();
        [v114 prepare];

        goto LABEL_69;
      }

      v139 = v283;
      if (v113 == 2)
      {
LABEL_69:
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v148 = type metadata accessor for Logger();
        v149 = __swift_project_value_buffer(v148, static Gliss.logger);
        v150 = Logger.logObject.getter();
        v151 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v150, v151))
        {
          v152 = swift_slowAlloc();
          *v152 = 0;
          _os_log_impl(&_mh_execute_header, v150, v151, "🤏 Swipe Gesture Updated", v152, 2u);
        }

        v153 = Logger.logObject.getter();
        v154 = static os_log_type_t.debug.getter();
        v155 = os_log_type_enabled(v153, v154);
        v305 = v149;
        if (v155)
        {
          v156 = swift_slowAlloc();
          v157 = swift_slowAlloc();
          v309[0] = v157;
          *v156 = 136446210;
          v307 = v32;
          v308 = v34;
          type metadata accessor for CGPoint(0);
          v158 = String.init<A>(describing:)();
          v160 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v158, v159, v309);

          *(v156 + 4) = v160;
          _os_log_impl(&_mh_execute_header, v153, v154, "   Translation=%{public}s", v156, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v157);
        }

        v161 = Logger.logObject.getter();
        v162 = static os_log_type_t.debug.getter();
        v163 = os_log_type_enabled(v161, v162);
        v164 = v295;
        v165 = v303;
        if (v163)
        {
          v166 = swift_slowAlloc();
          v167 = swift_slowAlloc();
          v309[0] = v167;
          *v166 = 136446210;
          v307 = v79;
          v308 = v81;
          type metadata accessor for CGPoint(0);
          v168 = String.init<A>(describing:)();
          v170 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v168, v169, v309);

          *(v166 + 4) = v170;
          _os_log_impl(&_mh_execute_header, v161, v162, "   Velocity=%{public}s", v166, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v167);
        }

        v171 = v291;
        [v164 bounds];
        v172 = fabs(v32);
        v173 = v172 * (1.0 / CGRectGetWidth(v320));
        v174 = *(*v82 + 112);
        swift_beginAccess();
        v175 = *(v165 + 2);
        v302 = v174;
        v176 = v82 + v174;
        v177 = v300;
        v178 = v175;
        v175(v171, v176, v300);
        v179 = v298[6];
        v298 += 6;
        v180 = v179;
        if (v179(v171, 1, v306) == 1)
        {

          v181 = *(v165 + 1);
          v181(v171, v177);
          v182 = v177;
          v183 = v178;
          v184 = v180;
        }

        else
        {
          v181 = *(v165 + 1);
          v181(v171, v177);
          v185 = (v82 + *(*v82 + 120));
          swift_beginAccess();
          v186 = v185[1];
          v185[1] = v173;
          v187 = Logger.logObject.getter();
          v188 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v187, v188))
          {
            v189 = swift_slowAlloc();
            *v189 = 134349056;
            *(v189 + 4) = v173;
            _os_log_impl(&_mh_execute_header, v187, v188, "   Progression Value=%{public}f", v189, 0xCu);
          }

          v183 = v178;
          if (v186 >= 0.45)
          {
            v184 = v180;
            if (v186 <= 0.55)
            {
              v224 = v302;
              if (v173 < 0.45 || v173 > 0.55)
              {
                v272 = Gliss.Coordinator.completedTransitionFeedbackGenerator.getter();
                [v288 locationInView:v164];
                v274 = v273;
                v276 = v275;

                [v272 impactOccurredAtLocation:{v274, v276}];
                v278 = Gliss.Transition.gestureState.modify(&v307);
                if (*(v277 + 32) != 2)
                {
                  *(v277 + 32) = v173 >= 0.55;
                }

                (v278)(&v307, 0);
                v182 = v300;
              }

              else
              {

                v182 = v300;
              }

LABEL_110:
              if (v173 <= 1.0)
              {
                v226 = 0;
              }

              else
              {
                v225 = v289;
                v183(v289, v294 + v224, v182);
                v226 = v184(v225, 1, v306) != 1;
                v181(v225, v182);
              }

              v228 = Gliss.Transition.gestureState.modify(&v307);
              if (*(v227 + 32) != 2)
              {
                *(v227 + 33) = v226;
              }

              (v228)(&v307, 0);
              v229 = v294;
              v230 = v290;
              v183(v290, v294 + v224, v182);
              v231 = v229;
              LODWORD(v229) = v184(v230, 1, v306) == 1;
              v181(v230, v182);
              v232 = v282;
              v233 = v283;
              v234 = v292;
              v235 = v299;
              if (((v229 | v226) & 1) == 0)
              {
                goto LABEL_125;
              }

              v236 = v295;
              [v295 bounds];
              v237 = CGRectGetWidth(v321) * 0.2;
              v238 = 0.0;
              if (v226)
              {
                [v236 bounds];
                v238 = CGRectGetWidth(v322);
              }

              v239 = v237 * ((v172 - v238) / (v237 + v237 + v172 - v238));
              [v236 bounds];
              v240 = 1.0 / CGRectGetWidth(v323) * v239;
              if (v226)
              {
                v241 = v231 + *(*v231 + 120);
                swift_beginAccess();
                *(v241 + 8) = v240 + 1.0;

                v242 = Logger.logObject.getter();
                v243 = static os_log_type_t.debug.getter();

                if (os_log_type_enabled(v242, v243))
                {
                  v244 = swift_slowAlloc();
                  *v244 = 134349056;
                  *(v244 + 4) = *(v241 + 8);
                  v245 = "   Over-swiping Progression Value=%{public}f";
LABEL_123:
                  _os_log_impl(&_mh_execute_header, v242, v243, v245, v244, 0xCu);

                  v234 = v292;
                }
              }

              else
              {
                v246 = v231 + *(*v231 + 120);
                swift_beginAccess();
                *(v246 + 8) = v240;

                v242 = Logger.logObject.getter();
                v243 = static os_log_type_t.debug.getter();

                if (os_log_type_enabled(v242, v243))
                {
                  v244 = swift_slowAlloc();
                  *v244 = 134349056;
                  *(v244 + 4) = *(v246 + 8);
                  v245 = "   Eased Progression Value=%{public}f";
                  goto LABEL_123;
                }
              }

LABEL_125:
              Gliss.Coordinator.setNeedsLayout()();

              swift_unknownObjectRelease();

              v233(v304, v306);
              (*(v232 + 8))(v235, v234);
              return;
            }

            v182 = v300;
          }

          else
          {

            v182 = v300;
            v184 = v180;
          }
        }

        v224 = v302;
        goto LABEL_110;
      }

      goto LABEL_92;
    }

    v138 = v298;
    if (v113 != 3)
    {
      if (v113 == 4)
      {

        v139 = v283;
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v199 = type metadata accessor for Logger();
        __swift_project_value_buffer(v199, static Gliss.logger);
        v141 = Logger.logObject.getter();
        v142 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v141, v142))
        {
          goto LABEL_98;
        }

        v143 = swift_slowAlloc();
        *v143 = 0;
        v144 = "🤏❎ Swipe Gesture Cancelled";
      }

      else
      {
        v139 = v283;
        if (v113 != 5)
        {
LABEL_92:
          swift_unknownObjectRelease();

          v198 = v295;

LABEL_99:
          v139(v63, v306);
LABEL_100:
          (*(v282 + 8))(v299, v76);
          return;
        }

        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v140 = type metadata accessor for Logger();
        __swift_project_value_buffer(v140, static Gliss.logger);
        v141 = Logger.logObject.getter();
        v142 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v141, v142))
        {
LABEL_98:

          Gliss.Coordinator.cancel(_:animated:)(v82, 1);
          swift_unknownObjectRelease();

          goto LABEL_99;
        }

        v143 = swift_slowAlloc();
        *v143 = 0;
        v144 = "🤏❌ Swipe Gesture Failed";
      }

      _os_log_impl(&_mh_execute_header, v141, v142, v144, v143, 2u);
      v76 = v292;

      goto LABEL_98;
    }

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v190 = type metadata accessor for Logger();
    __swift_project_value_buffer(v190, static Gliss.logger);
    v191 = Logger.logObject.getter();
    v192 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v191, v192))
    {
      v193 = swift_slowAlloc();
      *v193 = 0;
      _os_log_impl(&_mh_execute_header, v191, v192, "🤏✅ Swipe Gesture Ended", v193, 2u);
      v138 = v298;
      v2 = v296;
    }

    if (Width * 0.5 >= fabs(v79))
    {
      v194 = (v82 + *(*v82 + 120));
      swift_beginAccess();
      if (v194[1] < 0.5)
      {

        v195 = Logger.logObject.getter();
        v196 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v195, v196))
        {
          v197 = swift_slowAlloc();
          *v197 = 0;
          _os_log_impl(&_mh_execute_header, v195, v196, "   Hasn't reached translation thresholds. Cancelling ❎", v197, 2u);
        }

        Gliss.Coordinator.cancel(_:animated:)(v82, 1);
        swift_unknownObjectRelease();

        v283(v63, v306);
        goto LABEL_139;
      }
    }

    if (v32 < 0.0)
    {
      v200 = v303;
      v201 = v287;
      if (v79 <= 0.0)
      {
LABEL_103:
        v202 = *(*v82 + 112);
        swift_beginAccess();
        v203 = v82 + v202;
        v204 = v300;
        (*(v200 + 2))(v201, v203, v300);
        if ((v138[6])(v201, 1, v306) == 1)
        {
          (*(v200 + 1))(v201, v204);
          v205 = Gliss.Coordinator.cancelledTransitionFeedbackGenerator.getter();
          [v205 prepare];

          v206 = *(v2 + *((swift_isaMask & *v2) + 0xA0));
          v207 = v295;
          [v288 locationInView:v295];
          v209 = v208;
          v211 = v210;

          [v206 impactOccurredWithIntensity:0.5 atLocation:{v209, v211}];
          Gliss.Coordinator.cancel(_:animated:)(v82, 1);
          v212 = specialized Gliss.Coordinator.transitionAnimators.getter();
          if (*(v212 + 16))
          {
            v213 = direct field offset for Gliss.Transition.id;

            v214 = specialized __RawDictionaryStorage.find<A>(_:)(v82 + v213);
            v215 = v283;
            if (v216)
            {
              v217 = *(*(v212 + 56) + 8 * v214);

              type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
              v218 = static OS_dispatch_queue.main.getter();
              [v217 duration];
              v220 = v219 + -0.1;
              v221 = v215;
              v222 = swift_allocObject();
              *(v222 + 16) = v2;
              v223 = v2;
              OS_dispatch_queue.asyncAfter(_:block:)(partial apply for closure #2 in Gliss.Coordinator.handlePanGestureRecognizer(_:), v222, v220);

              swift_unknownObjectRelease();

              v221(v63, v306);
LABEL_139:
              (*(v282 + 8))(v299, v292);
              return;
            }
          }

          else
          {

            v215 = v283;
          }

          swift_unknownObjectRelease();

          v215(v63, v306);
          goto LABEL_139;
        }

        v251 = v201;
        v252 = v295;

        v253 = v285;
        v254 = v251;
        v255 = v306;
        v75(v285, v254, v306);
        v256 = type metadata accessor for TaskPriority();
        (*(*(v256 - 8) + 56))(v286, 1, 1, v256);
        (v138[2])(v301, v253, v255);
        type metadata accessor for MainActor();
        v303 = v252;

        v257 = v297;
        swift_unknownObjectRetain();
        v298 = v2;
        v300 = v288;
        v296 = static MainActor.shared.getter();
        v258 = (*(v138 + 80) + 56) & ~*(v138 + 80);
        v259 = (v284 + v258 + 7) & 0xFFFFFFFFFFFFFFF8;
        v260 = (v259 + 15) & 0xFFFFFFFFFFFFFFF8;
        v261 = (v260 + 15) & 0xFFFFFFFFFFFFFFF8;
        v262 = v75;
        v263 = (v261 + 15) & 0xFFFFFFFFFFFFFFF8;
        v264 = swift_allocObject();
        v264[2] = v296;
        v264[3] = &protocol witness table for MainActor;
        v265 = v301;
        v266 = v305;
        v264[4] = v302;
        v264[5] = v266;
        v264[6] = v257;
        v267 = v264 + v258;
        v268 = v306;
        v262(v267, v265, v306);
        *(v264 + v259) = v298;
        *(v264 + v260) = v294;
        v269 = v303;
        *(v264 + v261) = v303;
        v270 = v264 + v263;
        *v270 = v79;
        *(v270 + 1) = v81;
        *(v264 + ((v263 + 23) & 0xFFFFFFFFFFFFFFF8)) = v300;
        _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v286, &async function pointer to partial apply for closure #1 in Gliss.Coordinator.handlePanGestureRecognizer(_:), v264);

        swift_unknownObjectRelease();

        v271 = v283;
        v283(v285, v268);
        v271(v304, v268);
        goto LABEL_139;
      }
    }

    else
    {
      v200 = v303;
      v201 = v287;
      if (v79 >= 0.0)
      {
        goto LABEL_103;
      }
    }

    v247 = Logger.logObject.getter();
    v248 = static os_log_type_t.default.getter();
    v249 = os_log_type_enabled(v247, v248);
    v76 = v292;
    if (v249)
    {
      v250 = swift_slowAlloc();
      *v250 = 0;
      _os_log_impl(&_mh_execute_header, v247, v248, "   Going opposite direction. Cancelling ❎", v250, 2u);
      v76 = v292;
    }

    Gliss.Coordinator.cancel(_:animated:)(v82, 1);
    swift_unknownObjectRelease();

    v283(v63, v306);
    goto LABEL_100;
  }

  v115 = v299;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v116 = type metadata accessor for Logger();
  __swift_project_value_buffer(v116, static Gliss.logger);
  v117 = v59[2];
  v118 = v295;
  v119 = v63;
  v117(v295, v63, v306);
  v120 = Logger.logObject.getter();
  v121 = static os_log_type_t.default.getter();
  v122 = os_log_type_enabled(v120, v121);
  v123 = v282;
  if (v122)
  {
    v124 = swift_slowAlloc();
    v305 = v120;
    v125 = v124;
    v126 = COERCE_DOUBLE(swift_slowAlloc());
    v307 = v126;
    *v125 = 136446210;
    v127 = v306;
    v117(v301, v118, v306);
    v128 = String.init<A>(describing:)();
    v129 = v127;
    v130 = v123;
    v132 = v131;
    v133 = v118;
    v134 = v283;
    v283(v133, v129);
    v135 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v128, v132, &v307);

    *(v125 + 4) = v135;
    v136 = v121;
    v137 = v305;
    _os_log_impl(&_mh_execute_header, v305, v136, "DataSource doesn't allow swipe for item=%{public}s", v125, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(*&v126);

    swift_unknownObjectRelease();
    v134(v304, v129);
    (*(v130 + 8))(v299, v292);
  }

  else
  {

    swift_unknownObjectRelease();
    v145 = v118;
    v146 = v306;
    v147 = v283;
    v283(v145, v306);
    v147(v119, v146);
    (*(v123 + 8))(v115, TupleTypeMetadata2);
  }
}

uint64_t closure #1 in Gliss.Coordinator.handlePanGestureRecognizer(_:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 112) = v21;
  *(v9 + 104) = a1;
  *(v9 + 88) = a8;
  *(v9 + 96) = a9;
  *(v9 + 72) = a6;
  *(v9 + 80) = a7;
  v11 = *a7;
  v12 = swift_isaMask;
  v13 = *(*a8 + 80);
  *(v9 + 120) = v13;
  *(v9 + 128) = *(v13 - 8);
  *(v9 + 136) = swift_task_alloc();
  *(v9 + 144) = type metadata accessor for MainActor();
  *(v9 + 152) = static MainActor.shared.getter();
  v14 = *((v12 & v11) + 0x58);
  *(v9 + 160) = v14;
  v15 = *(v14 + 40);
  v16 = *((v12 & v11) + 0x50);
  *(v9 + 168) = v16;
  v19 = (v15 + *v15);
  v17 = swift_task_alloc();
  *(v9 + 176) = v17;
  *v17 = v9;
  v17[1] = closure #1 in Gliss.Coordinator.handlePanGestureRecognizer(_:);

  return v19(a6, v16, v14);
}

uint64_t closure #1 in Gliss.Coordinator.handlePanGestureRecognizer(_:)()
{
  *(*v1 + 184) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = closure #1 in Gliss.Coordinator.handlePanGestureRecognizer(_:);
  }

  else
  {
    v4 = closure #1 in Gliss.Coordinator.handlePanGestureRecognizer(_:);
  }

  return _swift_task_switch(v4, v3, v2);
}

{
  v31 = v0;
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = *(v0 + 72);
  v29 = *(v0 + 160);

  (*(v2 + 16))(v1, v6, v3);
  Gliss.Coordinator._item.setter(v1);
  v7 = *((swift_isaMask & *v5) + 0x70);
  swift_beginAccess();
  v8 = *(v5 + v7);
  v9 = swift_task_alloc();
  v9[1] = vextq_s8(v29, v29, 8uLL);
  v9[2].i64[0] = v6;
  v9[2].i64[1] = v4;

  specialized Sequence.forEach(_:)(partial apply for closure #1 in closure #1 in Gliss.Coordinator.handlePanGestureRecognizer(_:), v9, v8);

  Gliss.Coordinator.end(_:animated:)(v4, 1);
  v10 = v4 + *(*v4 + 21);
  swift_beginAccess();
  v11 = v10[32];
  if (v11 != 2 && (v11 & 1) == 0)
  {
    v12 = *(v0 + 112);
    v13 = *(v0 + 104);
    v14 = *(v0 + 96);
    [v14 bounds];
    v15 = fmax(fmin(fabs(v13) * (1.0 / (CGRectGetWidth(v33) * 4.0)), 1.0), 0.25);
    v16 = Gliss.Coordinator.completedTransitionFeedbackGenerator.getter();
    [v12 locationInView:v14];
    [v16 impactOccurredWithIntensity:v15 atLocation:{v17, v18}];

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Gliss.logger);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v30 = v23;
      *v22 = 136446210;
      v24 = Double.description.getter();
      v26 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v24, v25, &v30);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "   Feedback Intensity=%{public}s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
    }
  }

  v27 = *(v0 + 8);

  return v27();
}

{
  v19 = v0;

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Gliss.logger);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[23];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v5 = 136446210;
    v0[8] = v4;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v7 = String.init<A>(describing:)();
    v9 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v7, v8, &v18);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "   ❌ Failed to commit with error=%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  v10 = v0[14];
  v12 = v0[11];
  v11 = v0[12];
  v13 = v0[10];
  v14 = Gliss.Coordinator.errorFeedbackGenerator.getter();
  [v14 prepare];

  v15 = *(v13 + *((swift_isaMask & *v13) + 0xA8));
  [v10 locationInView:v11];
  [v15 notificationOccurred:2 atLocation:?];

  Gliss.Coordinator.cancel(_:animated:)(v12, 1);

  v16 = v0[1];

  return v16();
}

void @objc Gliss.Coordinator.handlePanGestureRecognizer(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  Gliss.Coordinator.handlePanGestureRecognizer(_:)(v4);
}

Swift::Bool __swiftcall Gliss.Coordinator.gestureRecognizerShouldBegin(_:)(UIGestureRecognizer a1)
{
  v2 = *(v1 + *((swift_isaMask & *v1) + 0xB0));
  if (!v2)
  {
    return 1;
  }

  v3 = v1;
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSObject, NSObject_ptr);
  v5 = v2;
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {

    return 1;
  }

  v6 = [(objc_class *)a1.super.isa view];
  if (!v6)
  {

    return 0;
  }

  v7 = v6;
  [v5 velocityInView:v7];
  v9 = v8;
  v11 = v10;
  if (fabs(v10) < fabs(v8))
  {
    [(objc_class *)a1.super.isa locationInView:v7];
    v9 = v12;
    v11 = v13;

    Gliss.Coordinator.gestureConfiguration.getter(v59);
    v15 = v59[1];
    v14 = v59[2];

    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v59[3], v59[4]);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v59[5], v59[6]);
    if (v15)
    {
      v16 = v15(v7);
      v17 = v16 + 56;
      v18 = -*(v16 + 16);
      v19 = -1;
      while (1)
      {
        if (v18 + v19 == -1)
        {
          outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v15, v14);

          v22 = 0;
          goto LABEL_20;
        }

        if (++v19 >= *(v16 + 16))
        {
          break;
        }

        v20 = v17 + 32;
        v72.x = v9;
        v72.y = v11;
        v21 = CGRectContainsPoint(*(v17 - 24), v72);
        v17 = v20;
        if (v21)
        {
          outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v15, v14);

          v22 = 1;
          goto LABEL_20;
        }
      }

      __break(1u);
      goto LABEL_39;
    }

    [v7 bounds];
    v73.x = v9;
    v73.y = v11;
    v22 = CGRectContainsPoint(v74, v73);
LABEL_20:
    Gliss.Coordinator.gestureConfiguration.getter(v60);
    v33 = v61;
    v32 = v62;
    v34 = v60[0];
    outlined copy of (@escaping @callee_guaranteed () -> ())?(v61, v62);

    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v60[1], v60[2]);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v33, v32);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v63, v64);
    if (v33)
    {
      v35 = v33(v7, v9, v11);
      outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v33, v32);
      if (v22)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v35 = 1;
      if (v22)
      {
LABEL_22:
        if (v35)
        {
LABEL_23:

LABEL_37:
          return v22 & v35;
        }

LABEL_32:
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v50 = type metadata accessor for Logger();
        __swift_project_value_buffer(v50, static Gliss.logger);
        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v58 = v54;
          *v53 = 136446210;
          type metadata accessor for CGPoint(0);
          v55 = String.init<A>(describing:)();
          v57 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v55, v56, &v58);

          *(v53 + 4) = v57;
          _os_log_impl(&_mh_execute_header, v51, v52, "🤏🙂‍↔️ Swipe Gesture ignored: hit test not allowed at location %{public}s", v53, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v54);
        }

        goto LABEL_37;
      }
    }

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Gliss.logger);
    v37 = v3;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *v40 = 136446466;
      v65 = v9;
      v66 = v11;
      type metadata accessor for CGPoint(0);
      v41 = String.init<A>(describing:)();
      v43 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v41, v42, &v58);

      *(v40 + 4) = v43;
      *(v40 + 12) = 2082;
      Gliss.Coordinator.gestureConfiguration.getter(&v65);
      v45 = v66;
      v44 = v67;

      outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v68, v69);
      outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v70, v71);
      if (v45 != 0.0)
      {
        v46 = swift_allocObject();
        *(v46 + 16) = v45;
        *(v46 + 24) = v44;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo6CGRectVGSo6UIViewCcSgMd, &_sSaySo6CGRectVGSo6UIViewCcSgMR);
      v47 = String.init<A>(describing:)();
      v49 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v47, v48, &v58);

      *(v40 + 14) = v49;
      _os_log_impl(&_mh_execute_header, v38, v39, "🤏🙂‍↔️ Swipe Gesture ignored: outside allowed areas %{public}s, %{public}s", v40, 0x16u);
      swift_arrayDestroy();
    }

    if (v35)
    {
      goto LABEL_23;
    }

    goto LABEL_32;
  }

  if (one-time initialization token for logger != -1)
  {
LABEL_39:
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Gliss.logger);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v60[0] = v28;
    *v27 = 136446210;
    v65 = v9;
    v66 = v11;
    type metadata accessor for CGPoint(0);
    v29 = String.init<A>(describing:)();
    v31 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v29, v30, v60);

    *(v27 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v25, v26, "🤏🙂‍↔️ Swipe Gesture ignored: horizontal velocity too low %{public}s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
  }

  return 0;
}

uint64_t @objc Gliss.Coordinator.gestureRecognizerShouldBegin(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  LOBYTE(a1) = Gliss.Coordinator.gestureRecognizerShouldBegin(_:)(v4);

  return a1 & 1;
}

uint64_t @objc Gliss.Coordinator.gestureRecognizer(_:shouldRecognizeSimultaneouslyWith:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = specialized Gliss.Coordinator.gestureRecognizer(_:shouldRecognizeSimultaneouslyWith:)(v7);

  return v9 & 1;
}

id Gliss.Coordinator.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Gliss.Coordinator(0, *((swift_isaMask & *v4) + 0x50), *((swift_isaMask & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

void @objc Gliss.Coordinator.__ivar_destroyer(char *a1)
{
  swift_unknownObjectWeakDestroy();
  v2 = &a1[*((swift_isaMask & *a1) + 0x68)];
  v3 = *(v2 + 1);
  v4 = *(v2 + 2);
  v5 = *(v2 + 3);
  v6 = *(v2 + 4);
  v7 = *(v2 + 5);
  v8 = *(v2 + 6);

  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v3, v4);
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v5, v6);
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v7, v8);

  v9 = *((swift_isaMask & *a1) + 0x78);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(&a1[v9], AssociatedTypeWitness);
  v11 = *((swift_isaMask & *a1) + 0x80);
  v12 = type metadata accessor for Optional();
  (*(*(v12 - 8) + 8))(&a1[v11], v12);

  v13 = *&a1[*((swift_isaMask & *a1) + 0xB0)];
}

void closure #1 in OSLogArguments.append(_:)(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

id specialized Gliss.Coordinator.init(item:dataSource:gestureConfiguration:coordinatedViews:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = swift_isaMask;
  swift_unknownObjectWeakInit();
  v9 = *((swift_isaMask & *v4) + 0x70);
  *&v4[v9] = _swiftEmptyArrayStorage;
  v10 = *((swift_isaMask & *v4) + 0x80);
  v30 = *((v8 & v7) + 0x58);
  v29 = *((v8 & v7) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  (*(v12 + 56))(&v4[v10], 1, 1, AssociatedTypeWitness);
  *&v4[*((swift_isaMask & *v4) + 0x88)] = 0;
  v13 = *((swift_isaMask & *v4) + 0x90);
  *&v4[v13] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_So22UIViewPropertyAnimatorCTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  *&v4[*((swift_isaMask & *v4) + 0x98)] = 0;
  *&v4[*((swift_isaMask & *v4) + 0xA0)] = 0;
  *&v4[*((swift_isaMask & *v4) + 0xA8)] = 0;
  *&v4[*((swift_isaMask & *v4) + 0xB0)] = 0;
  (*(v12 + 16))(&v4[*((swift_isaMask & *v4) + 0x78)], a1, AssociatedTypeWitness);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v14 = *a3;
  v15 = *(a3 + 8);
  v16 = *(a3 + 16);
  v17 = *(a3 + 24);
  v18 = *(a3 + 32);
  v28 = *(a3 + 40);
  v19 = *(a3 + 48);
  v20 = &v4[*((swift_isaMask & *v4) + 0x68)];
  v21 = *(a3 + 16);
  *v20 = *a3;
  *(v20 + 1) = v21;
  *(v20 + 2) = *(a3 + 32);
  *(v20 + 6) = v19;
  swift_beginAccess();
  *&v4[v9] = a4;
  v22 = v14;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v15, v16);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v17, v18);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v28, v19);

  v33 = v29;
  v34 = v30;
  v35 = a1;
  specialized Sequence.forEach(_:)(partial apply for closure #1 in Gliss.Coordinator.init(item:dataSource:gestureConfiguration:coordinatedViews:), v32, a4);

  v24 = type metadata accessor for Gliss.Coordinator(0, v29, v30, v23);
  v36.receiver = v4;
  v36.super_class = v24;
  v25 = objc_msgSendSuper2(&v36, "init");
  Gliss.Coordinator.setupPanGestureRecognizer()();

  return v25;
}

uint64_t sub_10013F3EC()
{

  return swift_deallocObject();
}

void outlined consume of Gliss.Animation?(id result, uint64_t a2, char a3)
{
  if (a3 <= 0xFDu)
  {
    outlined consume of Gliss.Animation(result, a2, a3);
  }
}

void outlined consume of Gliss.Animation(id a1, uint64_t a2, char a3)
{
  if ((a3 & 0xC0) == 0x80)
  {
  }
}

id outlined copy of Gliss.Animation?(id result, uint64_t a2, char a3)
{
  if (a3 <= 0xFDu)
  {
    return outlined copy of Gliss.Animation(result, a2, a3);
  }

  return result;
}

id outlined copy of Gliss.Animation(id result, uint64_t a2, char a3)
{
  if ((a3 & 0xC0) == 0x80)
  {
    return result;
  }

  return result;
}

uint64_t sub_10013F47C()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = (v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  v7 = *(v0 + v6 + 16);
  if (v7 <= 0xFD)
  {
    outlined consume of Gliss.Animation(*(v0 + v6), *(v0 + v6 + 8), v7);
  }

  return swift_deallocObject();
}

void partial apply for closure #1 in Gliss.Coordinator.setItem(_:animationDirection:animation:)(uint64_t *a1, uint64_t a2)
{
  v3 = *(*(*a1 + 80) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  closure #1 in Gliss.Coordinator.setItem(_:animationDirection:animation:)(a1, a2, (v2 + v4), *(v2 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 16));
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed UIView) -> (@owned [CGRect])@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t specialized Gliss.Coordinator.transitionAnimators.getter()
{
  v1 = *((swift_isaMask & *v0) + 0x90);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t specialized Gliss.Coordinator.transition.setter(uint64_t a1)
{
  v2 = *((swift_isaMask & *v1) + 0x88);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;

  Gliss.Coordinator.transition.didset(v3);
}

uint64_t specialized Gliss.Coordinator.gestureRecognizer(_:shouldRecognizeSimultaneouslyWith:)(void *a1)
{
  Gliss.Coordinator.gestureConfiguration.getter(v19);

  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v19[1], v19[2]);
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v19[3], v19[4]);
  v2 = v20;
  if (!v20)
  {
    return 1;
  }

  v3 = v21;
  v4 = v20(a1);
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v2, v3);
  if (v4)
  {
    return 1;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Gliss.logger);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136446210;
    v12 = v7;
    v13 = [v12 description];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v14, v16, &v18);

    *(v10 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "🤏🙂‍↔️ Swipe Gesture ignored: conflicts with other gesture: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
  }

  return 0;
}

uint64_t type metadata completion function for Gliss.Coordinator(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Optional();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t type metadata instantiation function for Gliss.Coordinator.GestureConfiguration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for Gliss.Coordinator.GestureConfiguration(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for Gliss.Coordinator.GestureConfiguration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10013FB08()
{

  return swift_deallocObject();
}

void partial apply for closure #2 in Gliss.Coordinator.handlePanGestureRecognizer(_:)()
{
  v0 = Gliss.Coordinator.cancelledTransitionFeedbackGenerator.getter();
  [v0 impactOccurredWithIntensity:1.0 atLocation:{0.0, 0.0}];
}

uint64_t sub_10013FB9C()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in Gliss.Coordinator.handlePanGestureRecognizer(_:)(uint64_t a1)
{
  v3 = *(swift_getAssociatedTypeWitness() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = *(v1 + v5);
  v11 = v1[6];
  v12 = *(v1 + v6);
  v13 = *(v1 + v7);
  v14 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v2 + 16) = v15;
  *v15 = v2;
  v15[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in Gliss.Coordinator.handlePanGestureRecognizer(_:)(v14, a1, v8, v9, v11, v1 + v4, v10, v12, v13);
}

uint64_t outlined init with copy of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type UUID and conformance UUID()
{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

uint64_t partial apply for closure #2 in Gliss.Coordinator.setItem(_:animationDirection:animation:)(uint64_t a1)
{
  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  v4 = *v2;
  v5 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  return Gliss.CoordinatedView._adopt<A>(_:from:)(v3, v2, ObjectType, *(v4 + 80), v5);
}

{
  return partial apply for closure #1 in closure #1 in Gliss.Coordinator.handlePanGestureRecognizer(_:)(a1);
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_17Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_26Tm()
{

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #2 in Gliss.Coordinator.cancel(_:animated:)(uint64_t (**a1)(uint64_t *, char *))
{
  v2 = *a1;
  v5 = *(v1 + 32);
  v4 = 1;
  return v2(&v5, &v4);
}

{
  return partial apply for closure #1 in closure #2 in Gliss.Coordinator.end(_:animated:)(a1);
}

uint64_t partial apply for closure #1 in closure #1 in Gliss.Coordinator.cancel(_:animated:)(uint64_t (**a1)(uint64_t *))
{
  v2 = *a1;
  v4 = *(v1 + 32);
  return v2(&v4);
}

{
  return partial apply for closure #1 in closure #1 in Gliss.Coordinator.end(_:animated:)(a1);
}

uint64_t Gliss.Transition.__allocating_init(from:to:progression:contexts:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v7 = a3;
  v10 = swift_allocObject();
  Gliss.Transition.init(from:to:progression:contexts:)(a1, a2, v7, a4, a5);
  return v10;
}

id Gliss.Animation.resolvedAnimator<A>(for:in:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v38 = *&a3;
  v9 = *(*a1 + 80);
  v10 = *(type metadata accessor for Optional() - 8);
  __chkstk_darwin();
  v13 = &v38 - v12;
  if ((a5 >> 6) > 1u)
  {
    if (a5 >> 6 == 2)
    {
      v18 = v38;

      return *&v18;
    }

    else
    {
      v23 = v11;
      if (UIAccessibilityIsReduceMotionEnabled() || (v24 = *(*a1 + 120), swift_beginAccess(), *(a1 + v24) == 2))
      {
        v25 = [objc_allocWithZone(UICubicTimingParameters) initWithAnimationCurve:0];
        v26 = objc_allocWithZone(UIViewPropertyAnimator);
        v27 = [v26 initWithDuration:v25 timingParameters:{0.25, *&v38}];
      }

      else
      {
        v28 = a1 + *(*a1 + 168);
        swift_beginAccess();
        if (*(v28 + 32) == 2)
        {
          [a2 bounds];
          v29 = CGRectGetWidth(v40) * 0.5;
        }

        else
        {
          v29 = *(v28 + 16);
        }

        v30 = fabs(v29);
        [a2 bounds];
        Width = CGRectGetWidth(v41);
        v32 = fabs(*v28);
        if (*(v28 + 32) == 2)
        {
          v32 = 0.0;
        }

        v33 = v30 / (Width - v32);
        v34 = *(*a1 + 112);
        swift_beginAccess();
        (*(v10 + 16))(v13, a1 + v34, v23);
        if ((*(*(v9 - 8) + 48))(v13, 1, v9) == 1)
        {
          v35 = 0.5;
        }

        else
        {
          v35 = 0.8;
        }

        (*(v10 + 8))(v13, v23);
        v25 = [objc_allocWithZone(UISpringTimingParameters) initWithDampingRatio:v35 initialVelocity:{v33, 0.0}];
        v36 = objc_allocWithZone(UIViewPropertyAnimator);
        v27 = [v36 initWithDuration:v25 timingParameters:{0.0, *&v38}];
      }

      v37 = v27;

      return v37;
    }
  }

  else
  {
    if (a5 >> 6)
    {
      if (a5)
      {
        v20 = 0.25;
      }

      else
      {
        v20 = *&a4;
      }

      v15 = [objc_allocWithZone(UISpringTimingParameters) initWithDuration:v20 bounce:v38];
      v21 = objc_allocWithZone(UIViewPropertyAnimator);
      v17 = [v21 initWithDuration:v15 timingParameters:{0.0, *&v38}];
    }

    else
    {
      v14 = v38;
      v15 = [objc_allocWithZone(UICubicTimingParameters) initWithAnimationCurve:0];
      v16 = objc_allocWithZone(UIViewPropertyAnimator);
      v17 = [v16 initWithDuration:v15 timingParameters:{v14, *&v38}];
    }

    v22 = v17;

    return v22;
  }
}

uint64_t Gliss.Direction.init(_:)(double a1)
{
  if (a1 > 0.0)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 >= 0.0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t *Gliss.Transition.init(from:to:progression:contexts:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, double a5)
{
  v9 = *v5;
  UUID.init()();
  v10 = *(*v5 + 112);
  v11 = *(v9 + 80);
  v12 = *(v11 - 8);
  (*(v12 + 56))(v5 + v10, 1, 1, v11);
  *(v5 + *(*v5 + 128)) = 0;
  v13 = v5 + *(*v5 + 136);
  *v13 = 0;
  *(v13 + 8) = 0;
  *(v13 + 16) = -64;
  v14 = *(*v5 + 144);
  type metadata accessor for Gliss.Transition(255, v11, *(v9 + 88), v15);
  swift_getFunctionTypeMetadata1();
  *(v5 + v14) = static Array._allocateUninitialized(_:)();
  v16 = *(*v5 + 152);
  swift_getFunctionTypeMetadata2();
  *(v5 + v16) = static Array._allocateUninitialized(_:)();
  v17 = v5 + *(*v5 + 168);
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 2;
  (*(v12 + 32))(v5 + *(*v5 + 104), a1, v11);
  swift_beginAccess();
  v18 = type metadata accessor for Optional();
  (*(*(v18 - 8) + 40))(v5 + v10, a2, v18);
  swift_endAccess();
  v19 = v5 + *(*v5 + 120);
  *v19 = a3;
  *(v19 + 8) = a5;
  *(v5 + *(*v5 + 160)) = a4;
  return v5;
}

uint64_t Gliss.Transition.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for Gliss.Transition.id;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t key path getter for Gliss.Transition.from : <A>Gliss.Transition<A>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + a3 - 16);
  v6 = *a1;
  v7 = *(**a1 + 104);
  swift_beginAccess();
  return (*(*(v5 - 8) + 16))(a4, v6 + v7, v5);
}

uint64_t key path setter for Gliss.Transition.from : <A>Gliss.Transition<A>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin();
  v9 = &v13 - v8;
  (*(v6 + 16))(&v13 - v8, v7);
  v10 = *a2;
  v11 = *(*v10 + 104);
  swift_beginAccess();
  (*(v6 + 40))(v10 + v11, v9, v5);
  return swift_endAccess();
}

uint64_t Gliss.Transition.from.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}