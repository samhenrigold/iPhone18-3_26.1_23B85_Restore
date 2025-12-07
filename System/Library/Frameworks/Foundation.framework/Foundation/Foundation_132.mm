uint64_t _s10Foundation16AttributedStringV4GutsC17setAttributeValue_6forKey2iny0G0Qz_xmSny19CollectionsInternal03BigC0V5IndexVGtAA0bcI0Rzs8SendableAJRQlFAA0F6ScopesO0A10AttributesV09ByteCountF0O_Tt0B5(char a1, uint64_t *a2)
{
  v3 = v2;
  v18 = &type metadata for AttributeScopes.FoundationAttributes.ByteCountAttribute.Component;
  v19 = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.ByteCountAttribute.Component and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Component();
  v17[0] = a1;
  v20 = xmmword_1812187D0;
  v21 = 1;
  v22 = 0;
  v5 = *(v3 + 40);
  v26 = *(v3 + 24);
  v27 = v5;
  v28 = *(v3 + 56);
  swift_unknownObjectRetain();
  v6 = BigString.UnicodeScalarView.index(roundingDown:)();
  swift_unknownObjectRelease();
  v7 = *(v3 + 40);
  v23 = *(v3 + 24);
  v24 = v7;
  v25 = *(v3 + 56);
  swift_unknownObjectRetain();
  v8 = v3;
  v9 = BigString.UnicodeScalarView.index(roundingDown:)();
  swift_unknownObjectRelease();
  v10 = v6 >> 11;
  v11 = v9 >> 11;
  v16[2] = 0xD00000000000001DLL;
  v16[3] = 0x800000018147CCB0;
  v16[4] = v17;
  AttributedString._InternalRunsSlice.updateEach(with:)(closure #1 in AttributedString.Guts.setAttributeValue(_:forKey:in:)partial apply, v16, v8, v6 >> 11, v11);
  v12 = *(&v20 + 1);
  if (*(&v20 + 1) != 1)
  {
    v13 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOGMd, &_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOGMR);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_181218E20;
    *(v14 + 32) = v13;
    *(v14 + 40) = v12;
    outlined copy of AttributedString.AttributeRunBoundaries?(v13, v12);
    AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v10, v11, 0, v14);
  }

  return outlined destroy of AttributedString._AttributeValue(v17);
}

uint64_t _s10Foundation16AttributedStringV4GutsC17setAttributeValue_6forKey2iny0G0Qz_xmSny19CollectionsInternal03BigC0V5IndexVGtAA0bcI0Rzs8SendableAJRQlFAA0F6ScopesO0A10AttributesV021InflectionAlternativeF0O_Tt0B5(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v20[3] = &type metadata for AttributedString;
  v20[4] = lazy protocol witness table accessor for type AttributedString and conformance AttributedString();
  v20[0] = a1;
  v21 = xmmword_1812187D0;
  v22 = 1;
  v23 = 0;
  v5 = one-time initialization token for name;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = static AttributeScopes.FoundationAttributes.InflectionAlternativeAttribute.name;
  v7 = qword_1EA7B25D8[0];
  v27 = *(v3 + 24);
  v8 = *(v3 + 56);
  v28 = *(v3 + 40);
  v29 = v8;
  swift_unknownObjectRetain();
  v9 = BigString.UnicodeScalarView.index(roundingDown:)();
  swift_unknownObjectRelease();
  v10 = *(v3 + 40);
  v24 = *(v3 + 24);
  v25 = v10;
  v26 = *(v3 + 56);
  swift_unknownObjectRetain();
  v11 = BigString.UnicodeScalarView.index(roundingDown:)();
  v12 = swift_unknownObjectRelease();
  v13 = v9 >> 11;
  v14 = v11 >> 11;
  MEMORY[0x1EEE9AC00](v12);
  v19[2] = v6;
  v19[3] = v7;
  v19[4] = v20;
  AttributedString._InternalRunsSlice.updateEach(with:)(closure #1 in AttributedString.Guts.setAttributeValue(_:forKey:in:)partial apply, v19, v3, v9 >> 11, v14);
  v15 = *(&v21 + 1);
  if (*(&v21 + 1) != 1)
  {
    v16 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOGMd, &_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOGMR);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_181218E20;
    *(v17 + 32) = v16;
    *(v17 + 40) = v15;
    outlined copy of AttributedString.AttributeRunBoundaries?(v16, v15);
    AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v13, v14, 0, v17);
  }

  return outlined destroy of AttributedString._AttributeValue(v20);
}

uint64_t _s10Foundation16AttributedStringV4GutsC17setAttributeValue_6forKey2iny0G0Qz_xmSny19CollectionsInternal03BigC0V5IndexVGtAA0bcI0Rzs8SendableAJRQlFAA0F6ScopesO0A10AttributesV011ReplacementnF0O_Tt0g5(uint64_t a1, uint64_t *a2)
{
  v14[3] = MEMORY[0x1E69E6530];
  v14[4] = MEMORY[0x1E69E6540];
  v14[0] = a1;
  v15 = xmmword_1812187D0;
  v16 = 1;
  v17 = 0;
  v3 = *(v2 + 40);
  v21 = *(v2 + 24);
  v22 = v3;
  v23 = *(v2 + 56);
  swift_unknownObjectRetain();
  v4 = BigString.UnicodeScalarView.index(roundingDown:)();
  swift_unknownObjectRelease();
  v5 = *(v2 + 40);
  v18 = *(v2 + 24);
  v19 = v5;
  v20 = *(v2 + 56);
  swift_unknownObjectRetain();
  v6 = BigString.UnicodeScalarView.index(roundingDown:)();
  swift_unknownObjectRelease();
  v7 = v4 >> 11;
  v8 = v6 >> 11;
  v13[2] = 0xD000000000000012;
  v13[3] = 0x800000018147CCD0;
  v13[4] = v14;
  AttributedString._InternalRunsSlice.updateEach(with:)(closure #1 in AttributedString.Guts.setAttributeValue(_:forKey:in:)partial apply, v13, v2, v4 >> 11, v8);
  v9 = *(&v15 + 1);
  if (*(&v15 + 1) != 1)
  {
    v10 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOGMd, &_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOGMR);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_181218E20;
    *(v11 + 32) = v10;
    *(v11 + 40) = v9;
    outlined copy of AttributedString.AttributeRunBoundaries?(v10, v9);
    AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v7, v8, 0, v11);
  }

  return outlined destroy of AttributedString._AttributeValue(v14);
}

uint64_t _s10Foundation16AttributedStringV4GutsC17setAttributeValue_6forKey2iny0G0Qz_xmSny19CollectionsInternal03BigC0V5IndexVGtAA0bcI0Rzs8SendableAJRQlFAA0F6ScopesO0A10AttributesV022MarkdownSourcePositionF0O_Tt0B5(_OWORD *a1, uint64_t *a2)
{
  v3 = v2;
  v23[3] = &type metadata for AttributedString.MarkdownSourcePosition;
  v23[4] = lazy protocol witness table accessor for type AttributedString.MarkdownSourcePosition and conformance AttributedString.MarkdownSourcePosition();
  v5 = swift_allocObject();
  v23[0] = v5;
  v6 = a1[5];
  v5[5] = a1[4];
  v5[6] = v6;
  *(v5 + 105) = *(a1 + 89);
  v7 = a1[1];
  v5[1] = *a1;
  v5[2] = v7;
  v8 = a1[3];
  v5[3] = a1[2];
  v5[4] = v8;
  v24 = xmmword_1812187D0;
  v25 = 1;
  v26 = 0;
  if (one-time initialization token for name != -1)
  {
    swift_once();
  }

  v9 = static AttributeScopes.FoundationAttributes.MarkdownSourcePositionAttribute.name;
  v10 = qword_1EA7B25B0;
  v30 = *(v3 + 24);
  v11 = *(v3 + 56);
  v31 = *(v3 + 40);
  v32 = v11;
  swift_unknownObjectRetain();
  v12 = BigString.UnicodeScalarView.index(roundingDown:)();
  swift_unknownObjectRelease();
  v13 = *(v3 + 40);
  v27 = *(v3 + 24);
  v28 = v13;
  v29 = *(v3 + 56);
  swift_unknownObjectRetain();
  v14 = BigString.UnicodeScalarView.index(roundingDown:)();
  v15 = swift_unknownObjectRelease();
  v16 = v12 >> 11;
  v17 = v14 >> 11;
  MEMORY[0x1EEE9AC00](v15);
  v22[2] = v9;
  v22[3] = v10;
  v22[4] = v23;
  AttributedString._InternalRunsSlice.updateEach(with:)(closure #1 in AttributedString.Guts.setAttributeValue(_:forKey:in:)partial apply, v22, v3, v12 >> 11, v17);
  v18 = *(&v24 + 1);
  if (*(&v24 + 1) != 1)
  {
    v19 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOGMd, &_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOGMR);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_181218E20;
    *(v20 + 32) = v19;
    *(v20 + 40) = v18;
    outlined copy of AttributedString.AttributeRunBoundaries?(v19, v18);
    AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v16, v17, 0, v20);
  }

  return outlined destroy of AttributedString._AttributeValue(v23);
}

uint64_t _s10Foundation16AttributedStringV4GutsC17setAttributeValue_6forKey2iny0G0Qz_xmSny19CollectionsInternal03BigC0V5IndexVGtAA0bcI0Rzs8SendableAJRQlFAA0F6ScopesO0A10AttributesV013DurationFieldF0O_Tt0B5(char a1, uint64_t *a2)
{
  v3 = v2;
  v18 = &type metadata for AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field;
  v19 = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field();
  v17[0] = a1;
  v20 = xmmword_1812187D0;
  v21 = 1;
  v22 = 0;
  v5 = *(v3 + 40);
  v26 = *(v3 + 24);
  v27 = v5;
  v28 = *(v3 + 56);
  swift_unknownObjectRetain();
  v6 = BigString.UnicodeScalarView.index(roundingDown:)();
  swift_unknownObjectRelease();
  v7 = *(v3 + 40);
  v23 = *(v3 + 24);
  v24 = v7;
  v25 = *(v3 + 56);
  swift_unknownObjectRetain();
  v8 = v3;
  v9 = BigString.UnicodeScalarView.index(roundingDown:)();
  swift_unknownObjectRelease();
  v10 = v6 >> 11;
  v11 = v9 >> 11;
  v16[2] = 0xD000000000000021;
  v16[3] = 0x800000018147DF20;
  v16[4] = v17;
  AttributedString._InternalRunsSlice.updateEach(with:)(closure #1 in AttributedString.Guts.setAttributeValue(_:forKey:in:)partial apply, v16, v8, v6 >> 11, v11);
  v12 = *(&v20 + 1);
  if (*(&v20 + 1) != 1)
  {
    v13 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOGMd, &_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOGMR);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_181218E20;
    *(v14 + 32) = v13;
    *(v14 + 40) = v12;
    outlined copy of AttributedString.AttributeRunBoundaries?(v13, v12);
    AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v10, v11, 0, v14);
  }

  return outlined destroy of AttributedString._AttributeValue(v17);
}

uint64_t _s10Foundation16AttributedStringV4GutsC17setAttributeValue_6forKey2iny0G0Qz_xmSny19CollectionsInternal03BigC0V5IndexVGtAA0bcI0Rzs8SendableAJRQlFAA0F6ScopesO0A10AttributesV014InflectionRuleF0O_Tt0B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  v27 = &type metadata for InflectionRule;
  v28 = lazy protocol witness table accessor for type InflectionRule and conformance InflectionRule();
  v24[0] = a1;
  v24[1] = a2;
  v26 = BYTE4(a3);
  v25 = a3;
  v29 = xmmword_1812187D0;
  v30 = 1;
  v31 = 0;
  v9 = one-time initialization token for name;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = static AttributeScopes.FoundationAttributes.InflectionRuleAttribute.name;
  v11 = qword_1EA7B2660;
  v35 = *(v5 + 24);
  v12 = *(v5 + 56);
  v36 = *(v5 + 40);
  v37 = v12;
  swift_unknownObjectRetain();
  v13 = BigString.UnicodeScalarView.index(roundingDown:)();
  swift_unknownObjectRelease();
  v14 = *(v5 + 40);
  v32 = *(v5 + 24);
  v33 = v14;
  v34 = *(v5 + 56);
  swift_unknownObjectRetain();
  v15 = BigString.UnicodeScalarView.index(roundingDown:)();
  v16 = swift_unknownObjectRelease();
  v17 = v13 >> 11;
  v18 = v15 >> 11;
  MEMORY[0x1EEE9AC00](v16);
  v23[2] = v10;
  v23[3] = v11;
  v23[4] = v24;
  AttributedString._InternalRunsSlice.updateEach(with:)(partial apply for closure #1 in AttributedString.Guts.setAttributeValue(_:forKey:in:), v23, v5, v13 >> 11, v18);
  v19 = *(&v29 + 1);
  if (*(&v29 + 1) != 1)
  {
    v20 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOGMd, &_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOGMR);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_181218E20;
    *(v21 + 32) = v20;
    *(v21 + 40) = v19;
    outlined copy of AttributedString.AttributeRunBoundaries?(v20, v19);
    AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v17, v18, 0, v21);
  }

  return outlined destroy of AttributedString._AttributeValue(v24);
}

uint64_t specialized AttributedString.Runs.AttributesSlice1.Iterator.next()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  *&v284 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMR);
  v283.i64[0] = *(v284 - 8);
  MEMORY[0x1EEE9AC00](v284);
  v5 = &v247 - v4;
  v279.i64[0] = type metadata accessor for AttributedString.Runs(0);
  MEMORY[0x1EEE9AC00](v279.i64[0]);
  v277 = &v247 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v280 = (&v247 - v8);
  MEMORY[0x1EEE9AC00](v9);
  v282 = (&v247 - v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v247 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v247 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V09ByteCountH0O_GMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V09ByteCountH0O_GMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v271 = (&v247 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v270 = &v247 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v269 = &v247 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v274.i64[0] = &v247 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v273 = &v247 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v272 = &v247 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v275 = &v247 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v247 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v276.i64[0] = &v247 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v247 - v37;
  v40 = (v2 + *(v39 + 44));
  v41 = *v40;
  v281 = v2;
  result = outlined init with copy of FloatingPointRoundingRule?(v2, &v247 - v37, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V09ByteCountH0O_GMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V09ByteCountH0O_GMR);
  if (*(v38 + 26) != 2)
  {
    v43 = *(v38 + 23);
    result = outlined destroy of TermOfAddress?(v38, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V09ByteCountG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V09ByteCountG0OGMR);
    v285.i64[0] = v41 >> 10;
    if (v41 >> 10 == v43 >> 10)
    {
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 2;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      return result;
    }

    v278 = v41;
    v264 = a1;
    v44 = v281;
    v45 = v276.i64[0];
    outlined init with copy of FloatingPointRoundingRule?(v281, v276.i64[0], &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V09ByteCountH0O_GMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V09ByteCountH0O_GMR);
    outlined init with copy of AttributedString.Runs(v45, v16);
    outlined destroy of TermOfAddress?(v45, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V09ByteCountG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V09ByteCountG0OGMR);
    LOBYTE(v45) = v16[*(v279.i64[0] + 28)];
    outlined destroy of AttributedString.Runs(v16);
    v46 = (v283.i64[0] + 8);
    v283.i64[0] += 8;
    v265 = v40;
    if (v45)
    {
      outlined init with copy of FloatingPointRoundingRule?(v44, v33, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V09ByteCountH0O_GMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V09ByteCountH0O_GMR);
      outlined init with copy of AttributedString.Runs(v33, v13);
      outlined destroy of TermOfAddress?(v33, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V09ByteCountG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V09ByteCountG0OGMR);
      v47 = v40[2];
      v267 = v40[1];
      *&v268 = v47;
      *(&v268 + 1) = v40[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd, &_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMR);
      RangeSet.ranges.getter();
      v48 = v284;
      v49 = RangeSet.Ranges.count.getter();
      v282 = *v46;
      result = (v282)(v5, v48);
      if (v49 >= 1)
      {
        v50 = 0;
        while (!__OFADD__(v50, v49))
        {
          v51 = (v50 + v49) / 2;
          RangeSet.ranges.getter();
          v52 = v284;
          RangeSet.Ranges.subscript.getter();
          result = (v282)(v5, v52);
          v53 = v286.i64[0] >> 10;
          if (v285.i64[0] >= v286.i64[0] >> 10)
          {
            v54 = *v288;
            if (v285.i64[0] < *v288 >> 10)
            {
              v257 = v286;
              v256 = v287;
              v65 = *v13;
              AttributedString.Guts.findRun(at:)(v278, *(&v268 + 1), v286.i64);
              v275 = v286.i64[0];
              *&v266 = v287.i64[0];
              *(&v266 + 1) = v286.i64[1];
              v255 = v289;
              v276 = *&v288[8];
              v66 = *(v65 + 72);
              v263 = *(v65 + 80);
              v67 = *(v65 + 88);
              v68 = *(v65 + 96);
              swift_unknownObjectRetain();
              v69 = specialized Rope.subscript.getter(v275, *(&v266 + 1), v266, v66, v263, v67, v68);
              v71 = v70;
              *(&v266 + 1) = v72;
              result = swift_unknownObjectRelease();
              v73 = v69 + (v276.i64[0] >> 11);
              if (__OFADD__(v69, v276.i64[0] >> 11))
              {
                goto LABEL_86;
              }

              LODWORD(v275) = v53 < v276.i64[0] >> 10;
              *&v266 = v71;
              if ((v54 >> 11) < v73)
              {
                v73 = v54 >> 11;
              }

              v74 = *(v65 + 40);
              v321 = *(v65 + 24);
              v322 = v74;
              v323 = *(v65 + 56);
              if (__OFSUB__(v73, v278 >> 11))
              {
                goto LABEL_88;
              }

              swift_unknownObjectRetain();
              v75 = BigString.UTF8View.index(_:offsetBy:)();
              v261 = v76;
              v262 = v75;
              v259 = v78;
              v260 = v77;
              swift_unknownObjectRelease();
              v263 = v65;

              outlined destroy of AttributedString.Runs(v13);
              v79 = v281;
              v80 = v272;
              outlined init with copy of FloatingPointRoundingRule?(v281, v272, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V09ByteCountH0O_GMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V09ByteCountH0O_GMR);
              v81 = v280;
              outlined init with copy of AttributedString.Runs(v80, v280);

              outlined destroy of TermOfAddress?(v80, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V09ByteCountG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V09ByteCountG0OGMR);
              v82 = v273;
              outlined init with copy of FloatingPointRoundingRule?(v79, v273, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V09ByteCountH0O_GMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V09ByteCountH0O_GMR);
              v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V09ByteCountG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V09ByteCountG0OGMR);
              v84 = *(v82 + *(v83 + 36));

              outlined destroy of TermOfAddress?(v82, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V09ByteCountG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V09ByteCountG0OGMR);
              v85 = v79;
              v86 = v274.i64[0];
              outlined init with copy of FloatingPointRoundingRule?(v85, v274.i64[0], &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V09ByteCountH0O_GMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V09ByteCountH0O_GMR);
              v253 = v83;
              v272 = *(v86 + *(v83 + 40));

              result = outlined destroy of TermOfAddress?(v86, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V09ByteCountG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V09ByteCountG0OGMR);
              v254 = v84;
              if (!v84[2])
              {
                goto LABEL_90;
              }

              v258 = *v81;
              AttributedString.Guts.findRun(at:)(v278, *(&v268 + 1), v286.i64);
              v251 = *&v288[16];
              v252 = *&v288[8];
              v249 = v289.i64[1];
              v250 = v289.i64[0];
              v311[0] = v286;
              v311[1] = v287;
              v312 = *v288;
              RangeSet.ranges.getter();
              v87 = v284;
              v88 = RangeSet.Ranges.count.getter();
              result = (v282)(v5, v87);
              v89 = v277;
              if (v88 >= 1)
              {
                v90 = 0;
                v91 = vdup_n_s32(v275);
                v92.i64[0] = v91.u32[0];
                v92.i64[1] = v91.u32[1];
                v93 = vcltzq_s64(vshlq_n_s64(v92, 0x3FuLL));
                v256 = vbslq_s8(v93, v255, v256);
                v257 = vbslq_s8(v93, v276, v257);
                while (!__OFADD__(v90, v88))
                {
                  v94 = (v90 + v88) / 2;
                  RangeSet.ranges.getter();
                  v95 = v284;
                  RangeSet.Ranges.subscript.getter();
                  v96 = v95;
                  v97 = v281;
                  result = (v282)(v5, v96);
                  if (v285.i64[0] >= v286.i64[0] >> 10)
                  {
                    v98 = *v288 >> 10;
                    if (v285.i64[0] < *v288 >> 10)
                    {
                      v274.i64[0] = *v288;
                      v99 = *&v288[8];
                      v276.i64[0] = *&v288[16];
                      v100 = v289.i64[0];
                      v101 = v272;
                      if (*(v272 + 16) == 1 && (specialized Set.contains(_:)(0, 1, v272) & 1) == 0)
                      {

                        v175 = *(v258 + 24);
                        v176 = *(v258 + 56);
                        v319 = *(v258 + 40);
                        v320 = v176;
                        v318 = v175;
                        *&v313 = v278;
                        *(&v313 + 1) = v267;
                        v314 = v268;
                        *&v315 = v274.i64[0];
                        *(&v315 + 1) = v99;
                        v316 = v276.i64[0];
                        v317 = v100;
                        v127 = v258;
                        v177 = *(v258 + 24);
                        *&v310 = *(v258 + 56);
                        v178 = *(v258 + 40);
                        v308 = v177;
                        v309 = v178;
                        outlined init with copy of Rope<BigString._Chunk>._Node?(&v308, &v286);
                        v179 = BigString._firstConstraintBreak(in:with:)(&v313, v101);
                        v273 = v180;
                        v274.i64[0] = v179;
                        v275 = v181;
                        v276.i64[0] = v182;

                        outlined destroy of BigString(&v318);
                        v126 = v269;
                      }

                      else
                      {
                        v273 = v100;
                        v275 = v99;
                        AttributedString.Runs._lastOfMatchingRuns(with:comparing:)(v311, v254, v292);

                        v102 = v258;
                        v104 = *(v258 + 72);
                        v103 = *(v258 + 80);
                        v105 = *(v258 + 88);
                        v247 = *(v258 + 96);
                        v248 = v105;
                        v106 = v292[0];
                        v107 = v292[1];
                        v254 = v103;
                        v255.i64[0] = v292[4];
                        v108 = v292[2];
                        swift_unknownObjectRetain();
                        v109 = specialized Rope.subscript.getter(v106, v107, v108, v104, v254, v248, v247);
                        swift_unknownObjectRelease();

                        if (__OFADD__(v255.i64[0], v109))
                        {
                          goto LABEL_94;
                        }

                        v111 = *(v102 + 24);
                        v110 = (v102 + 24);
                        v112 = v110[1];
                        v113 = v110[2];
                        v318 = v111;
                        v319 = v112;
                        v320 = v113;
                        if (__OFSUB__(v255.i64[0] + v109, v252 >> 11))
                        {
                          goto LABEL_95;
                        }

                        swift_unknownObjectRetain();
                        v114 = BigString.UTF8View.index(_:offsetBy:)();
                        v116 = v115;
                        v254 = v118;
                        v255.i64[0] = v117;
                        result = swift_unknownObjectRelease();
                        v89 = v277;
                        if (v114 >> 10 >= v98)
                        {
                          v165 = *v110;
                          v166 = v110[2];
                          v309 = v110[1];
                          v310 = v166;
                          v308 = v165;
                          *&v313 = v278;
                          *(&v313 + 1) = v267;
                          v314 = v268;
                          *&v315 = v274.i64[0];
                          *(&v315 + 1) = v275;
                          v316 = v276.i64[0];
                          v317 = v273;
                          v167 = *v110;
                          v168 = v110[1];
                          v326 = *(v110 + 4);
                          v324 = v167;
                          v325 = v168;
                          outlined init with copy of Rope<BigString._Chunk>._Node?(&v324, &v286);
                          v169 = BigString._firstConstraintBreak(in:with:)(&v313, v272);
                          v285.i64[0] = v170;
                          v278 = v171;
                          v173 = v172;

                          outlined destroy of BigString(&v308);
                          v174 = v98 == v169 >> 10;
                          v126 = v269;
                          v127 = v258;
                          if (!v174)
                          {
                            v273 = v173;
                            v274.i64[0] = v169;
                            v275 = v285.i64[0];
                            v276.i64[0] = v278;
                          }
                        }

                        else
                        {
                          v119 = v110[1];
                          v308 = *v110;
                          v309 = v119;
                          v310 = v110[2];
                          if (v114 >> 10 < v285.i64[0])
                          {
                            goto LABEL_98;
                          }

                          *&v313 = v278;
                          *(&v313 + 1) = v267;
                          v314 = v268;
                          *&v315 = v114;
                          *(&v315 + 1) = v116;
                          v316 = v255.i64[0];
                          v317 = v254;
                          v120 = *v110;
                          v121 = v110[1];
                          v326 = *(v110 + 4);
                          v324 = v120;
                          v325 = v121;
                          outlined init with copy of Rope<BigString._Chunk>._Node?(&v324, &v286);
                          v122 = BigString._firstConstraintBreak(in:with:)(&v313, v272);
                          v273 = v123;
                          v274.i64[0] = v122;
                          v275 = v124;
                          v276.i64[0] = v125;

                          outlined destroy of BigString(&v308);
                          v126 = v269;
                          v127 = v258;
                        }
                      }

                      v269 = *(v127 + 16);
                      outlined destroy of AttributedString.Runs(v280);
                      outlined init with copy of FloatingPointRoundingRule?(v97, v126, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V09ByteCountH0O_GMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V09ByteCountH0O_GMR);
                      outlined init with copy of AttributedString.Runs(v126, v89);
                      outlined destroy of TermOfAddress?(v126, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V09ByteCountG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V09ByteCountG0OGMR);
                      v183 = v270;
                      outlined init with copy of FloatingPointRoundingRule?(v97, v270, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V09ByteCountH0O_GMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V09ByteCountH0O_GMR);
                      v184 = v253;
                      v185 = v89;
                      v186 = *(v183 + *(v253 + 36));

                      outlined destroy of TermOfAddress?(v183, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V09ByteCountG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V09ByteCountG0OGMR);
                      v187 = v271;
                      outlined init with copy of FloatingPointRoundingRule?(v97, v271, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V09ByteCountH0O_GMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V09ByteCountH0O_GMR);
                      v281 = *(v187 + *(v184 + 40));

                      result = outlined destroy of TermOfAddress?(v187, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V09ByteCountG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V09ByteCountG0OGMR);
                      v271 = v186;
                      if (!v186[2])
                      {
                        goto LABEL_92;
                      }

                      v272 = *v185;
                      AttributedString.Guts.findRun(at:)(v274.u64[0], v273, v286.i64);
                      v270 = *&v288[8];
                      *&v268 = v289.i64[0];
                      *(&v268 + 1) = *&v288[16];
                      v267 = v289.i64[1];
                      v297[0] = v286;
                      v297[1] = v287;
                      v298 = *v288;
                      v285.i64[0] = *(v279.i64[0] + 24);
                      RangeSet.ranges.getter();
                      v188 = v284;
                      v189 = RangeSet.Ranges.count.getter();
                      result = (v282)(v5, v188);
                      if (v189 >= 1)
                      {
                        v190 = 0;
                        v191 = v274.i64[0] >> 10;
                        while (1)
                        {
                          if (__OFADD__(v190, v189))
                          {
                            goto LABEL_85;
                          }

                          v192 = (v190 + v189) / 2;
                          RangeSet.ranges.getter();
                          v193 = v284;
                          RangeSet.Ranges.subscript.getter();
                          result = (v282)(v5, v193);
                          if (v191 >= v286.i64[0] >> 10)
                          {
                            v150 = *v288;
                            v194 = *v288 >> 10;
                            if (v191 < *v288 >> 10)
                            {
                              v280 = *&v288[8];
                              v278 = v289.i64[0];
                              v279.i64[0] = *&v288[16];
                              if (*(v281 + 16) == 1 && (specialized Set.contains(_:)(0, 1, v281) & 1) == 0)
                              {

                                v229 = v272;
                                v230 = *(v272 + 24);
                                v231 = *(v272 + 56);
                                v306 = *(v272 + 40);
                                v307 = v231;
                                v305 = v230;
                                *&v299 = v274.i64[0];
                                *(&v299 + 1) = v275;
                                *&v300 = v276.i64[0];
                                *(&v300 + 1) = v273;
                                v301 = v150;
                                v302 = v280;
                                v303 = v279.i64[0];
                                v304 = v278;
                                v232 = *(v272 + 24);
                                *&v296 = *(v272 + 56);
                                v233 = *(v272 + 40);
                                v294 = v232;
                                v295 = v233;
                                outlined init with copy of Rope<BigString._Chunk>._Node?(&v294, &v286);
                                v222 = BigString._firstConstraintBreak(in:with:)(&v299, v281);
                                v270 = v235;
                                v271 = v234;
                                *(&v268 + 1) = v236;
                                outlined destroy of BigString(&v305);
                                if (v194 != v222 >> 10)
                                {

                                  v240 = *(v229 + 16);
                                  goto LABEL_73;
                                }

                                RangeSet.ranges.getter();
                                v237 = v284;
                                v238 = RangeSet.Ranges.count.getter();
                                result = (v282)(v5, v237);
                                if (__OFSUB__(v238, 1))
                                {
                                  goto LABEL_101;
                                }

                                v228 = v272;
                                if (v192 != v238 - 1)
                                {
                                  goto LABEL_69;
                                }

LABEL_65:

LABEL_70:
                                v285.i64[0] = *(v228 + 16);
                              }

                              else
                              {
                                AttributedString.Runs._lastOfMatchingRuns(with:comparing:)(v297, v271, v293);

                                v195 = v272;
                                v196 = *(v272 + 72);
                                v271 = *(v272 + 80);
                                v197 = *(v272 + 96);
                                v258 = *(v272 + 88);
                                v254 = v293[0];
                                v255.i64[0] = v197;
                                v198 = v293[4];
                                v252 = v293[2];
                                v253 = v293[1];
                                swift_unknownObjectRetain();
                                v271 = specialized Rope.subscript.getter(v254, v253, v252, v196, v271, v258, v255.i64[0]);
                                v255.i64[0] = v199;
                                v258 = v200;
                                swift_unknownObjectRelease();

                                v201 = v271 + v198;
                                if (__OFADD__(v198, v271))
                                {
                                  goto LABEL_96;
                                }

                                v203 = *(v195 + 24);
                                v202 = (v195 + 24);
                                v204 = v203;
                                v205 = v202[1];
                                v206 = v202[2];
                                v305 = v203;
                                v306 = v205;
                                v307 = v206;
                                v271 = &v201[-(v270 >> 11)];
                                if (__OFSUB__(v201, v270 >> 11))
                                {
                                  goto LABEL_97;
                                }

                                v258 = v204;
                                swift_unknownObjectRetain();
                                v207 = BigString.UTF8View.index(_:offsetBy:)();
                                v270 = v209;
                                v271 = v208;
                                *(&v268 + 1) = v210;
                                result = swift_unknownObjectRelease();
                                if (v207 >> 10 < v194)
                                {
                                  v211 = v202[1];
                                  v294 = *v202;
                                  v295 = v211;
                                  v296 = v202[2];
                                  v151 = v264;
                                  v143 = v265;
                                  if (v207 >> 10 < v191)
                                  {
                                    goto LABEL_99;
                                  }

                                  *&v299 = v274.i64[0];
                                  *(&v299 + 1) = v275;
                                  *&v300 = v276.i64[0];
                                  *(&v300 + 1) = v273;
                                  v301 = v207;
                                  v302 = v271;
                                  v303 = v270;
                                  v304 = *(&v268 + 1);
                                  v212 = *v202;
                                  v213 = v202[1];
                                  v214 = v274.i64[0];
                                  v329 = *(v202 + 4);
                                  v327 = v212;
                                  v328 = v213;
                                  outlined init with copy of Rope<BigString._Chunk>._Node?(&v327, &v286);
                                  v150 = BigString._firstConstraintBreak(in:with:)(&v299, v281);
                                  v280 = v215;
                                  v278 = v217;
                                  v279.i64[0] = v216;

                                  outlined destroy of BigString(&v294);
                                  v285.i64[0] = *(v272 + 16);
LABEL_75:
                                  result = outlined destroy of AttributedString.Runs(v277);
                                  v152 = *v143;
                                  v241 = v191 >= *v143 >> 10;
                                  v156 = v256;
                                  v157 = v257;
                                  v163 = v273;
                                  v164 = v269;
                                  v158 = v280;
                                  v161 = v278;
                                  v159 = v279.i64[0];
                                  v160 = v214;
                                  v162 = v285.i64[0];
                                  if (v241)
                                  {
                                    goto LABEL_77;
                                  }

                                  goto LABEL_93;
                                }

                                v218 = *v202;
                                v219 = v202[2];
                                v295 = v202[1];
                                v296 = v219;
                                v294 = v218;
                                *&v299 = v274.i64[0];
                                *(&v299 + 1) = v275;
                                *&v300 = v276.i64[0];
                                *(&v300 + 1) = v273;
                                v301 = v150;
                                v302 = v280;
                                v303 = v279.i64[0];
                                v304 = v278;
                                v220 = *v202;
                                v221 = v202[1];
                                v329 = *(v202 + 4);
                                v327 = v220;
                                v328 = v221;
                                outlined init with copy of Rope<BigString._Chunk>._Node?(&v327, &v286);
                                v222 = BigString._firstConstraintBreak(in:with:)(&v299, v281);
                                v270 = v224;
                                v271 = v223;
                                *(&v268 + 1) = v225;
                                outlined destroy of BigString(&v294);
                                if (v194 == v222 >> 10)
                                {
                                  RangeSet.ranges.getter();
                                  v226 = v284;
                                  v227 = RangeSet.Ranges.count.getter();
                                  result = (v282)(v5, v226);
                                  v228 = v272;
                                  if (__OFSUB__(v227, 1))
                                  {
                                    goto LABEL_100;
                                  }

                                  if (v192 == v227 - 1)
                                  {
                                    goto LABEL_65;
                                  }

LABEL_69:
                                  RangeSet.ranges.getter();
                                  v239 = v284;
                                  RangeSet.Ranges.subscript.getter();

                                  (v282)(v5, v239);
                                  v280 = v286.i64[1];
                                  v150 = v286.i64[0];
                                  v278 = v287.u64[1];
                                  v279.i64[0] = v287.i64[0];
                                  goto LABEL_70;
                                }

                                v240 = *(v272 + 16);
LABEL_73:
                                v285.i64[0] = v240;
                                v150 = v222;
                                v280 = v271;
                                v278 = *(&v268 + 1);
                                v279.i64[0] = v270;
                              }

                              v151 = v264;
                              v143 = v265;
                              v214 = v274.i64[0];
                              goto LABEL_75;
                            }

                            v190 = v192 + 1;
                            v192 = v189;
                          }

                          v189 = v192;
                          if (v190 >= v192)
                          {
                            goto LABEL_81;
                          }
                        }
                      }

                      goto LABEL_81;
                    }

                    v90 = v94 + 1;
                    v94 = v88;
                  }

                  v88 = v94;
                  if (v90 >= v94)
                  {
                    goto LABEL_80;
                  }
                }

                goto LABEL_84;
              }

              goto LABEL_80;
            }

            v50 = v51 + 1;
            v51 = v49;
          }

          v49 = v51;
          if (v50 >= v51)
          {
            goto LABEL_78;
          }
        }

        goto LABEL_82;
      }

LABEL_78:
      __break(1u);
    }

    else
    {
      v55 = v275;
      outlined init with copy of FloatingPointRoundingRule?(v44, v275, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V09ByteCountH0O_GMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V09ByteCountH0O_GMR);
      outlined init with copy of AttributedString.Runs(v55, v282);
      outlined destroy of TermOfAddress?(v55, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V09ByteCountG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V09ByteCountG0OGMR);
      v56 = v40[2];
      v280 = v40[1];
      v277 = v56;
      v275 = v40[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd, &_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMR);
      RangeSet.ranges.getter();
      v57 = v284;
      v58 = RangeSet.Ranges.count.getter();
      v59 = *v46;
      result = (*v46)(v5, v57);
      if (v58 >= 1)
      {
        v60 = 0;
        while (!__OFADD__(v60, v58))
        {
          v61 = (v60 + v58) / 2;
          RangeSet.ranges.getter();
          v62 = v284;
          RangeSet.Ranges.subscript.getter();
          result = (v59)(v5, v62);
          v63 = v286.i64[0] >> 10;
          if (v285.i64[0] >= v286.i64[0] >> 10)
          {
            v64 = *v288;
            if (v285.i64[0] < *v288 >> 10)
            {
              v283 = v286;
              v279 = v287;
              v128 = *v282;
              AttributedString.Guts.findRun(at:)(v278, v275, v286.i64);
              v129 = v286.u64[1];
              *&v284 = v286.i64[0];
              v130 = v287.i64[0];
              v274 = v289;
              v285 = *&v288[8];
              v131 = *(v128 + 72);
              v132 = *(v128 + 80);
              v134 = *(v128 + 88);
              v133 = *(v128 + 96);
              swift_unknownObjectRetain();
              v135 = specialized Rope.subscript.getter(v284, v129, v130, v131, v132, v134, v133);
              v137 = v136;
              v139 = v138;
              result = swift_unknownObjectRelease();
              v140 = v63 < v285.i64[0] >> 10;
              v141 = v135 + (v285.i64[0] >> 11);
              if (__OFADD__(v135, v285.i64[0] >> 11))
              {
                goto LABEL_87;
              }

              if ((v64 >> 11) < v141)
              {
                v141 = v64 >> 11;
              }

              v142 = *(v128 + 40);
              v313 = *(v128 + 24);
              v314 = v142;
              v315 = *(v128 + 56);
              v143 = v265;
              if (__OFSUB__(v141, v278 >> 11))
              {
                goto LABEL_89;
              }

              swift_unknownObjectRetain();
              v144 = BigString.UTF8View.index(_:offsetBy:)();
              v261 = v145;
              v262 = v144;
              v259 = v147;
              v260 = v146;
              swift_unknownObjectRelease();
              v263 = v128;

              outlined destroy of AttributedString.Runs(v282);
              v148 = v276.i64[0];
              outlined init with copy of FloatingPointRoundingRule?(v281, v276.i64[0], &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V09ByteCountH0O_GMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V09ByteCountH0O_GMR);
              v149 = *(v143 + 1);
              v299 = *v143;
              v300 = v149;
              v301 = v143[4];
              *&v266 = v137;

              *(&v266 + 1) = v139;

              specialized AttributedString.Runs.AttributesSlice1.index(after:)(&v299, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V09ByteCountG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V09ByteCountG0OGMR, &v286);
              result = outlined destroy of TermOfAddress?(v148, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V09ByteCountG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V09ByteCountG0OGMR);
              v150 = v286.i64[0];
              v151 = v264;
              if (v286.i64[0] >> 10 < *v143 >> 10)
              {
                goto LABEL_91;
              }

              v152 = *v143;
              v153 = vdup_n_s32(v140);
              v154.i64[0] = v153.u32[0];
              v154.i64[1] = v153.u32[1];
              v155 = vcltzq_s64(vshlq_n_s64(v154, 0x3FuLL));
              v156 = vbslq_s8(v155, v274, v279);
              v157 = vbslq_s8(v155, v285, v283);
              v158 = v286.i64[1];
              v159 = v287.i64[0];
              v160 = v286.i64[0];
              v161 = v287.u64[1];
              v162 = *v288;
              v275 = v286.i64[1];
              v163 = v287.u64[1];
              v276.i64[0] = v287.i64[0];
              v164 = *v288;
LABEL_77:
              v242 = v266;
              v286 = v266;
              v287 = v157;
              *v288 = v156;
              *&v288[16] = v262;
              v289.i64[0] = v261;
              v289.i64[1] = v260;
              v290 = v259;
              v291 = v263;
              v243 = *(v143 + 1);
              v284 = *(v143 + 3);
              v285 = v243;
              *v143 = v150;
              v143[1] = v158;
              v143[2] = v159;
              v143[3] = v161;
              v143[4] = v162;
              _s10Foundation16AttributedStringV17_AttributeStorageVy5ValueQzSgxmcAA0bC3KeyRzs8SendableAGRQluigAA0D6ScopesO0A10AttributesV09ByteCountD0O_Tt0g5(v242, v151);
              outlined destroy of AttributedString.Runs.Run(&v286);

              *(v151 + 8) = v152;
              v244 = v284;
              *(v151 + 16) = v285;
              *(v151 + 32) = v244;
              v246 = v275;
              v245 = v276.i64[0];
              *(v151 + 48) = v160;
              *(v151 + 56) = v246;
              *(v151 + 64) = v245;
              *(v151 + 72) = v163;
              *(v151 + 80) = v164;
              return result;
            }

            v60 = v61 + 1;
            v61 = v58;
          }

          v58 = v61;
          if (v60 >= v61)
          {
            goto LABEL_79;
          }
        }

        goto LABEL_83;
      }
    }

LABEL_79:
    __break(1u);
LABEL_80:
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
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v2 = v1;
  *&v285 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMR);
  v284.i64[0] = *(v285 - 8);
  MEMORY[0x1EEE9AC00](v285);
  v5 = &v247 - v4;
  v280.i64[0] = type metadata accessor for AttributedString.Runs(0);
  MEMORY[0x1EEE9AC00](v280.i64[0]);
  v277 = &v247 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v281 = (&v247 - v8);
  MEMORY[0x1EEE9AC00](v9);
  v283 = (&v247 - v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v247 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v247 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V016ReplacementIndexH0O_GMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V016ReplacementIndexH0O_GMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v272 = (&v247 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v271 = &v247 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v270 = &v247 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v275.i64[0] = &v247 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v274 = &v247 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v273 = &v247 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v276 = &v247 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v247 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v278.i64[0] = &v247 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v247 - v37;
  v40 = (v2 + *(v39 + 44));
  v41 = *v40;
  v282 = v2;
  result = outlined init with copy of FloatingPointRoundingRule?(v2, &v247 - v37, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V016ReplacementIndexH0O_GMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V016ReplacementIndexH0O_GMR);
  if (*(v38 + 26) != 2)
  {
    v43 = *(v38 + 23);
    result = outlined destroy of TermOfAddress?(v38, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMR);
    v286.i64[0] = v41 >> 10;
    if (v41 >> 10 == v43 >> 10)
    {
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0;
      *(a1 + 40) = 2;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      return result;
    }

    v279 = v41;
    v265 = a1;
    v44 = v282;
    v45 = v278.i64[0];
    outlined init with copy of FloatingPointRoundingRule?(v282, v278.i64[0], &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V016ReplacementIndexH0O_GMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V016ReplacementIndexH0O_GMR);
    outlined init with copy of AttributedString.Runs(v45, v16);
    outlined destroy of TermOfAddress?(v45, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMR);
    LOBYTE(v45) = v16[*(v280.i64[0] + 28)];
    outlined destroy of AttributedString.Runs(v16);
    v46 = (v284.i64[0] + 8);
    v284.i64[0] += 8;
    v266 = v40;
    if (v45)
    {
      outlined init with copy of FloatingPointRoundingRule?(v44, v33, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V016ReplacementIndexH0O_GMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V016ReplacementIndexH0O_GMR);
      outlined init with copy of AttributedString.Runs(v33, v13);
      outlined destroy of TermOfAddress?(v33, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMR);
      v47 = v40[2];
      v268 = v40[1];
      *&v269 = v47;
      *(&v269 + 1) = v40[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd, &_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMR);
      RangeSet.ranges.getter();
      v48 = v285;
      v49 = RangeSet.Ranges.count.getter();
      v283 = *v46;
      result = (v283)(v5, v48);
      if (v49 >= 1)
      {
        v50 = 0;
        while (!__OFADD__(v50, v49))
        {
          v51 = (v50 + v49) / 2;
          RangeSet.ranges.getter();
          v52 = v285;
          RangeSet.Ranges.subscript.getter();
          result = (v283)(v5, v52);
          v53 = v287.i64[0] >> 10;
          if (v286.i64[0] >= v287.i64[0] >> 10)
          {
            v54 = *v289;
            if (v286.i64[0] < *v289 >> 10)
            {
              v257 = v287;
              v256 = v288;
              v65 = *v13;
              AttributedString.Guts.findRun(at:)(v279, *(&v269 + 1), v287.i64);
              v267 = v287.i64[1];
              v276 = v287.i64[0];
              v255 = v290;
              v278 = *&v289[8];
              v66 = *(v65 + 72);
              v263 = *(v65 + 80);
              v264 = v288.i64[0];
              v67 = *(v65 + 88);
              v68 = *(v65 + 96);
              swift_unknownObjectRetain();
              v69 = specialized Rope.subscript.getter(v276, v267, v264, v66, v263, v67, v68);
              v71 = v70;
              v259 = v72;
              result = swift_unknownObjectRelease();
              v73 = v69 + (v278.i64[0] >> 11);
              if (__OFADD__(v69, v278.i64[0] >> 11))
              {
                goto LABEL_88;
              }

              LODWORD(v276) = v53 < v278.i64[0] >> 10;
              v267 = v71;
              if ((v54 >> 11) < v73)
              {
                v73 = v54 >> 11;
              }

              v74 = *(v65 + 40);
              v322 = *(v65 + 24);
              v323 = v74;
              v324 = *(v65 + 56);
              if (__OFSUB__(v73, v279 >> 11))
              {
                goto LABEL_90;
              }

              swift_unknownObjectRetain();
              v75 = BigString.UTF8View.index(_:offsetBy:)();
              v262 = v76;
              v263 = v75;
              v260 = v78;
              v261 = v77;
              swift_unknownObjectRelease();
              v264 = v65;

              outlined destroy of AttributedString.Runs(v13);
              v79 = v282;
              v80 = v273;
              outlined init with copy of FloatingPointRoundingRule?(v282, v273, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V016ReplacementIndexH0O_GMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V016ReplacementIndexH0O_GMR);
              v81 = v281;
              outlined init with copy of AttributedString.Runs(v80, v281);

              outlined destroy of TermOfAddress?(v80, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMR);
              v82 = v274;
              outlined init with copy of FloatingPointRoundingRule?(v79, v274, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V016ReplacementIndexH0O_GMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V016ReplacementIndexH0O_GMR);
              v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMR);
              v84 = *(v82 + *(v83 + 36));

              outlined destroy of TermOfAddress?(v82, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMR);
              v85 = v79;
              v86 = v275.i64[0];
              outlined init with copy of FloatingPointRoundingRule?(v85, v275.i64[0], &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V016ReplacementIndexH0O_GMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V016ReplacementIndexH0O_GMR);
              v253 = v83;
              v273 = *(v86 + *(v83 + 40));

              result = outlined destroy of TermOfAddress?(v86, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMR);
              v254 = v84;
              if (!v84[2])
              {
                goto LABEL_92;
              }

              v258 = *v81;
              AttributedString.Guts.findRun(at:)(v279, *(&v269 + 1), v287.i64);
              v251 = *&v289[16];
              v252 = *&v289[8];
              v249 = v290.i64[1];
              v250 = v290.i64[0];
              v312[0] = v287;
              v312[1] = v288;
              v313 = *v289;
              RangeSet.ranges.getter();
              v87 = v285;
              v88 = RangeSet.Ranges.count.getter();
              result = (v283)(v5, v87);
              v89 = v277;
              if (v88 >= 1)
              {
                v90 = 0;
                v91 = vdup_n_s32(v276);
                v92.i64[0] = v91.u32[0];
                v92.i64[1] = v91.u32[1];
                v93 = vcltzq_s64(vshlq_n_s64(v92, 0x3FuLL));
                v256 = vbslq_s8(v93, v255, v256);
                v257 = vbslq_s8(v93, v278, v257);
                while (!__OFADD__(v90, v88))
                {
                  v94 = (v90 + v88) / 2;
                  RangeSet.ranges.getter();
                  v95 = v285;
                  RangeSet.Ranges.subscript.getter();
                  v96 = v95;
                  v97 = v282;
                  result = (v283)(v5, v96);
                  if (v286.i64[0] >= v287.i64[0] >> 10)
                  {
                    v98 = *v289 >> 10;
                    if (v286.i64[0] < *v289 >> 10)
                    {
                      v278.i64[0] = *v289;
                      v99 = *&v289[8];
                      v100 = *&v289[16];
                      v101 = v290.i64[0];
                      v102 = v273;
                      if (*(v273 + 16) == 1 && (specialized Set.contains(_:)(0, 1, v273) & 1) == 0)
                      {

                        v175 = *(v258 + 24);
                        v176 = *(v258 + 56);
                        v320 = *(v258 + 40);
                        v321 = v176;
                        v319 = v175;
                        *&v314 = v279;
                        *(&v314 + 1) = v268;
                        v315 = v269;
                        *&v316 = v278.i64[0];
                        *(&v316 + 1) = v99;
                        v317 = v100;
                        v128 = v258;
                        v318 = v101;
                        v177 = *(v258 + 24);
                        *&v311 = *(v258 + 56);
                        v178 = *(v258 + 40);
                        v309 = v177;
                        v310 = v178;
                        outlined init with copy of Rope<BigString._Chunk>._Node?(&v309, &v287);
                        v123 = BigString._firstConstraintBreak(in:with:)(&v314, v102);
                        v276 = v179;
                        v274 = v181;
                        v275.i64[0] = v180;

                        outlined destroy of BigString(&v319);
                        v127 = v270;
                      }

                      else
                      {
                        v274 = v101;
                        v275.i64[0] = v100;
                        v276 = v99;
                        AttributedString.Runs._lastOfMatchingRuns(with:comparing:)(v312, v254, v293);

                        v103 = v258;
                        v105 = *(v258 + 72);
                        v104 = *(v258 + 80);
                        v106 = *(v258 + 88);
                        v247 = *(v258 + 96);
                        v248 = v106;
                        v107 = v293[0];
                        v108 = v293[1];
                        v254 = v104;
                        v255.i64[0] = v293[4];
                        v109 = v293[2];
                        swift_unknownObjectRetain();
                        v110 = specialized Rope.subscript.getter(v107, v108, v109, v105, v254, v248, v247);
                        swift_unknownObjectRelease();

                        if (__OFADD__(v255.i64[0], v110))
                        {
                          goto LABEL_96;
                        }

                        v112 = *(v103 + 24);
                        v111 = (v103 + 24);
                        v113 = v111[1];
                        v114 = v111[2];
                        v319 = v112;
                        v320 = v113;
                        v321 = v114;
                        if (__OFSUB__(v255.i64[0] + v110, v252 >> 11))
                        {
                          goto LABEL_97;
                        }

                        swift_unknownObjectRetain();
                        v115 = BigString.UTF8View.index(_:offsetBy:)();
                        v117 = v116;
                        v254 = v119;
                        v255.i64[0] = v118;
                        result = swift_unknownObjectRelease();
                        v89 = v277;
                        if (v115 >> 10 >= v98)
                        {
                          v164 = *v111;
                          v165 = v111[2];
                          v310 = v111[1];
                          v311 = v165;
                          v309 = v164;
                          *&v314 = v279;
                          *(&v314 + 1) = v268;
                          v315 = v269;
                          v166 = v278.i64[0];
                          *&v316 = v278.i64[0];
                          *(&v316 + 1) = v276;
                          v317 = v275.i64[0];
                          v318 = v274;
                          v167 = *v111;
                          v168 = v111[1];
                          v327 = *(v111 + 4);
                          v325 = v167;
                          v326 = v168;
                          outlined init with copy of Rope<BigString._Chunk>._Node?(&v325, &v287);
                          v169 = BigString._firstConstraintBreak(in:with:)(&v314, v273);
                          v286.i64[0] = v170;
                          v279 = v171;
                          v173 = v172;

                          outlined destroy of BigString(&v309);
                          v174 = v98 == v169 >> 10;
                          v123 = v166;
                          v127 = v270;
                          v128 = v258;
                          if (!v174)
                          {
                            v123 = v169;
                            v276 = v286.i64[0];
                            v274 = v173;
                            v275.i64[0] = v279;
                          }
                        }

                        else
                        {
                          v120 = v111[1];
                          v309 = *v111;
                          v310 = v120;
                          v311 = v111[2];
                          if (v115 >> 10 < v286.i64[0])
                          {
                            goto LABEL_100;
                          }

                          *&v314 = v279;
                          *(&v314 + 1) = v268;
                          v315 = v269;
                          *&v316 = v115;
                          *(&v316 + 1) = v117;
                          v317 = v255.i64[0];
                          v318 = v254;
                          v121 = *v111;
                          v122 = v111[1];
                          v327 = *(v111 + 4);
                          v325 = v121;
                          v326 = v122;
                          outlined init with copy of Rope<BigString._Chunk>._Node?(&v325, &v287);
                          v123 = BigString._firstConstraintBreak(in:with:)(&v314, v273);
                          v276 = v124;
                          v274 = v126;
                          v275.i64[0] = v125;

                          outlined destroy of BigString(&v309);
                          v127 = v270;
                          v128 = v258;
                        }
                      }

                      v278.i64[0] = v123;
                      v270 = *(v128 + 16);
                      outlined destroy of AttributedString.Runs(v281);
                      outlined init with copy of FloatingPointRoundingRule?(v97, v127, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V016ReplacementIndexH0O_GMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V016ReplacementIndexH0O_GMR);
                      outlined init with copy of AttributedString.Runs(v127, v89);
                      outlined destroy of TermOfAddress?(v127, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMR);
                      v182 = v271;
                      outlined init with copy of FloatingPointRoundingRule?(v97, v271, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V016ReplacementIndexH0O_GMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V016ReplacementIndexH0O_GMR);
                      v183 = v253;
                      v184 = v89;
                      v185 = *(v182 + *(v253 + 36));

                      outlined destroy of TermOfAddress?(v182, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMR);
                      v186 = v272;
                      outlined init with copy of FloatingPointRoundingRule?(v97, v272, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V016ReplacementIndexH0O_GMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V016ReplacementIndexH0O_GMR);
                      v282 = *(v186 + *(v183 + 40));

                      result = outlined destroy of TermOfAddress?(v186, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMR);
                      v272 = v185;
                      if (!v185[2])
                      {
                        goto LABEL_94;
                      }

                      v273 = *v184;
                      AttributedString.Guts.findRun(at:)(v278.u64[0], v274, v287.i64);
                      v271 = *&v289[8];
                      *&v269 = v290.i64[0];
                      *(&v269 + 1) = *&v289[16];
                      v268 = v290.i64[1];
                      v298[0] = v287;
                      v298[1] = v288;
                      v299 = *v289;
                      v286.i64[0] = *(v280.i64[0] + 24);
                      RangeSet.ranges.getter();
                      v187 = v285;
                      v188 = RangeSet.Ranges.count.getter();
                      result = (v283)(v5, v187);
                      if (v188 >= 1)
                      {
                        v189 = 0;
                        v190 = v278.i64[0] >> 10;
                        while (1)
                        {
                          if (__OFADD__(v189, v188))
                          {
                            goto LABEL_87;
                          }

                          v191 = (v189 + v188) / 2;
                          RangeSet.ranges.getter();
                          v192 = v285;
                          RangeSet.Ranges.subscript.getter();
                          result = (v283)(v5, v192);
                          if (v190 >= v287.i64[0] >> 10)
                          {
                            v151 = *v289;
                            v193 = *v289 >> 10;
                            if (v190 < *v289 >> 10)
                            {
                              v281 = *&v289[8];
                              v279 = v290.i64[0];
                              v280.i64[0] = *&v289[16];
                              if (*(v282 + 16) == 1 && (specialized Set.contains(_:)(0, 1, v282) & 1) == 0)
                              {

                                v226 = v273;
                                v227 = *(v273 + 24);
                                v228 = *(v273 + 56);
                                v307 = *(v273 + 40);
                                v308 = v228;
                                v306 = v227;
                                *&v300 = v278.i64[0];
                                *(&v300 + 1) = v276;
                                *&v301 = v275.i64[0];
                                *(&v301 + 1) = v274;
                                v302 = v151;
                                v303 = v281;
                                v304 = v280.i64[0];
                                v305 = v279;
                                v229 = *(v273 + 24);
                                *&v297 = *(v273 + 56);
                                v230 = *(v273 + 40);
                                v295 = v229;
                                v296 = v230;
                                outlined init with copy of Rope<BigString._Chunk>._Node?(&v295, &v287);
                                v231 = BigString._firstConstraintBreak(in:with:)(&v300, v282);
                                v271 = v233;
                                v272 = v232;
                                *(&v269 + 1) = v234;
                                outlined destroy of BigString(&v306);
                                if (v193 == v231 >> 10)
                                {
                                  RangeSet.ranges.getter();
                                  v235 = v285;
                                  v236 = RangeSet.Ranges.count.getter();
                                  result = (v283)(v5, v235);
                                  if (__OFSUB__(v236, 1))
                                  {
                                    goto LABEL_103;
                                  }

                                  if (v191 == v236 - 1)
                                  {
                                  }

                                  else
                                  {
                                    RangeSet.ranges.getter();
                                    v238 = v285;
                                    RangeSet.Ranges.subscript.getter();

                                    (v283)(v5, v238);
                                    v281 = v287.i64[1];
                                    v151 = v287.i64[0];
                                    v279 = v288.u64[1];
                                    v280.i64[0] = v288.i64[0];
                                  }

                                  v162 = *(v273 + 16);
                                  goto LABEL_77;
                                }

                                v151 = v231;
                                v162 = *(v226 + 16);
                              }

                              else
                              {
                                AttributedString.Runs._lastOfMatchingRuns(with:comparing:)(v298, v272, v294);

                                v194 = v273;
                                v195 = *(v273 + 72);
                                v272 = *(v273 + 80);
                                v196 = *(v273 + 96);
                                v258 = *(v273 + 88);
                                v254 = v294[0];
                                v255.i64[0] = v196;
                                v197 = v294[4];
                                v252 = v294[2];
                                v253 = v294[1];
                                swift_unknownObjectRetain();
                                v272 = specialized Rope.subscript.getter(v254, v253, v252, v195, v272, v258, v255.i64[0]);
                                v255.i64[0] = v198;
                                v258 = v199;
                                swift_unknownObjectRelease();

                                v200 = v272 + v197;
                                if (__OFADD__(v197, v272))
                                {
                                  goto LABEL_98;
                                }

                                v201 = (v194 + 24);
                                v202 = *(v194 + 24);
                                v203 = *(v194 + 40);
                                v204 = *(v194 + 56);
                                v306 = v202;
                                v307 = v203;
                                v308 = v204;
                                v272 = &v200[-(v271 >> 11)];
                                if (__OFSUB__(v200, v271 >> 11))
                                {
                                  goto LABEL_99;
                                }

                                v258 = v202;
                                swift_unknownObjectRetain();
                                v205 = BigString.UTF8View.index(_:offsetBy:)();
                                v271 = v207;
                                v272 = v206;
                                *(&v269 + 1) = v208;
                                result = swift_unknownObjectRelease();
                                if (v205 >> 10 < v193)
                                {
                                  v209 = v201[1];
                                  v295 = *v201;
                                  v296 = v209;
                                  v297 = v201[2];
                                  v152 = v265;
                                  v143 = v266;
                                  v150 = v259;
                                  if (v205 >> 10 < v190)
                                  {
                                    goto LABEL_101;
                                  }

                                  *&v300 = v278.i64[0];
                                  *(&v300 + 1) = v276;
                                  *&v301 = v275.i64[0];
                                  *(&v301 + 1) = v274;
                                  v302 = v205;
                                  v303 = v272;
                                  v304 = v271;
                                  v305 = *(&v269 + 1);
                                  v210 = *v201;
                                  v211 = v201[1];
                                  v330 = *(v201 + 4);
                                  v328 = v210;
                                  v329 = v211;
                                  outlined init with copy of Rope<BigString._Chunk>._Node?(&v328, &v287);
                                  v151 = BigString._firstConstraintBreak(in:with:)(&v300, v282);
                                  v281 = v212;
                                  v279 = v214;
                                  v280.i64[0] = v213;

                                  outlined destroy of BigString(&v295);
                                  v162 = *(v273 + 16);
LABEL_78:
                                  result = outlined destroy of AttributedString.Runs(v277);
                                  v153 = *v143;
                                  v157 = v256;
                                  v158 = v257;
                                  v163 = v270;
                                  v159 = v281;
                                  v161 = v279;
                                  v160 = v280.i64[0];
                                  if (v190 < *v143 >> 10)
                                  {
                                    goto LABEL_95;
                                  }

                                  goto LABEL_79;
                                }

                                v215 = *v201;
                                v216 = v201[2];
                                v296 = v201[1];
                                v297 = v216;
                                v295 = v215;
                                *&v300 = v278.i64[0];
                                *(&v300 + 1) = v276;
                                *&v301 = v275.i64[0];
                                *(&v301 + 1) = v274;
                                v302 = v151;
                                v303 = v281;
                                v304 = v280.i64[0];
                                v305 = v279;
                                v217 = *v201;
                                v218 = v201[1];
                                v330 = *(v201 + 4);
                                v328 = v217;
                                v329 = v218;
                                outlined init with copy of Rope<BigString._Chunk>._Node?(&v328, &v287);
                                v219 = BigString._firstConstraintBreak(in:with:)(&v300, v282);
                                v271 = v221;
                                v272 = v220;
                                *(&v269 + 1) = v222;
                                outlined destroy of BigString(&v295);
                                if (v193 == v219 >> 10)
                                {
                                  RangeSet.ranges.getter();
                                  v223 = v285;
                                  v224 = RangeSet.Ranges.count.getter();
                                  result = (v283)(v5, v223);
                                  if (__OFSUB__(v224, 1))
                                  {
                                    goto LABEL_102;
                                  }

                                  v225 = v273;
                                  if (v191 == v224 - 1)
                                  {
                                  }

                                  else
                                  {
                                    RangeSet.ranges.getter();
                                    v237 = v285;
                                    RangeSet.Ranges.subscript.getter();

                                    (v283)(v5, v237);
                                    v281 = v287.i64[1];
                                    v151 = v287.i64[0];
                                    v279 = v288.u64[1];
                                    v280.i64[0] = v288.i64[0];
                                  }

                                  v162 = *(v225 + 16);
                                  goto LABEL_77;
                                }

                                v151 = v219;
                                v162 = *(v273 + 16);
                              }

                              v281 = v272;
                              v279 = *(&v269 + 1);
                              v280.i64[0] = v271;
LABEL_77:
                              v152 = v265;
                              v143 = v266;
                              v150 = v259;
                              goto LABEL_78;
                            }

                            v189 = v191 + 1;
                            v191 = v188;
                          }

                          v188 = v191;
                          if (v189 >= v191)
                          {
                            goto LABEL_83;
                          }
                        }
                      }

                      goto LABEL_83;
                    }

                    v90 = v94 + 1;
                    v94 = v88;
                  }

                  v88 = v94;
                  if (v90 >= v94)
                  {
                    goto LABEL_82;
                  }
                }

                goto LABEL_86;
              }

              goto LABEL_82;
            }

            v50 = v51 + 1;
            v51 = v49;
          }

          v49 = v51;
          if (v50 >= v51)
          {
            goto LABEL_80;
          }
        }

        goto LABEL_84;
      }

LABEL_80:
      __break(1u);
    }

    else
    {
      v55 = v276;
      outlined init with copy of FloatingPointRoundingRule?(v44, v276, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V016ReplacementIndexH0O_GMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V016ReplacementIndexH0O_GMR);
      outlined init with copy of AttributedString.Runs(v55, v283);
      outlined destroy of TermOfAddress?(v55, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMR);
      v56 = v40[2];
      v281 = v40[1];
      v276 = v40[3];
      v277 = v56;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd, &_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMR);
      RangeSet.ranges.getter();
      v57 = v285;
      v58 = RangeSet.Ranges.count.getter();
      v59 = *v46;
      result = (*v46)(v5, v57);
      if (v58 >= 1)
      {
        v60 = 0;
        while (!__OFADD__(v60, v58))
        {
          v61 = (v60 + v58) / 2;
          RangeSet.ranges.getter();
          v62 = v285;
          RangeSet.Ranges.subscript.getter();
          result = (v59)(v5, v62);
          v63 = v287.i64[0] >> 10;
          if (v286.i64[0] >= v287.i64[0] >> 10)
          {
            v64 = *v289;
            if (v286.i64[0] < *v289 >> 10)
            {
              v284 = v287;
              v280 = v288;
              v129 = *v283;
              AttributedString.Guts.findRun(at:)(v279, v276, v287.i64);
              v130 = v287.u64[1];
              *&v285 = v287.i64[0];
              v131 = v288.i64[0];
              v275 = v290;
              v286 = *&v289[8];
              v132 = *(v129 + 72);
              v133 = *(v129 + 80);
              v135 = *(v129 + 88);
              v134 = *(v129 + 96);
              swift_unknownObjectRetain();
              v136 = specialized Rope.subscript.getter(v285, v130, v131, v132, v133, v135, v134);
              v138 = v137;
              v140 = v139;
              result = swift_unknownObjectRelease();
              v141 = v136 + (v286.i64[0] >> 11);
              if (__OFADD__(v136, v286.i64[0] >> 11))
              {
                goto LABEL_89;
              }

              LODWORD(v285) = v63 < v286.i64[0] >> 10;
              if ((v64 >> 11) < v141)
              {
                v141 = v64 >> 11;
              }

              v142 = *(v129 + 40);
              v314 = *(v129 + 24);
              v315 = v142;
              v316 = *(v129 + 56);
              v143 = v266;
              if (__OFSUB__(v141, v279 >> 11))
              {
                goto LABEL_91;
              }

              swift_unknownObjectRetain();
              v144 = BigString.UTF8View.index(_:offsetBy:)();
              v262 = v145;
              v263 = v144;
              v260 = v147;
              v261 = v146;
              swift_unknownObjectRelease();
              v264 = v129;

              outlined destroy of AttributedString.Runs(v283);
              v148 = v278.i64[0];
              outlined init with copy of FloatingPointRoundingRule?(v282, v278.i64[0], &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V016ReplacementIndexH0O_GMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V016ReplacementIndexH0O_GMR);
              v149 = *(v143 + 1);
              v300 = *v143;
              v301 = v149;
              v302 = v143[4];
              v267 = v138;

              v150 = v140;

              specialized AttributedString.Runs.AttributesSlice1.index(after:)(&v300, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMR, &v287);
              result = outlined destroy of TermOfAddress?(v148, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMR);
              v151 = v287.i64[0];
              v152 = v265;
              if (v287.i64[0] >> 10 < *v143 >> 10)
              {
                goto LABEL_93;
              }

              v153 = *v143;
              v154 = vdup_n_s32(v285);
              v155.i64[0] = v154.u32[0];
              v155.i64[1] = v154.u32[1];
              v156 = vcltzq_s64(vshlq_n_s64(v155, 0x3FuLL));
              v157 = vbslq_s8(v156, v275, v280);
              v158 = vbslq_s8(v156, v286, v284);
              v159 = v287.i64[1];
              v160 = v288.i64[0];
              v278.i64[0] = v287.i64[0];
              v161 = v288.u64[1];
              v162 = *v289;
              v276 = v287.i64[1];
              v274 = v288.u64[1];
              v275.i64[0] = v288.i64[0];
              v163 = *v289;
LABEL_79:
              v239 = v267;
              v287.i64[0] = v267;
              v287.i64[1] = v150;
              v288 = v158;
              *v289 = v157;
              *&v289[16] = v263;
              v290.i64[0] = v262;
              v290.i64[1] = v261;
              v291 = v260;
              v292 = v264;
              v240 = *(v143 + 1);
              v285 = *(v143 + 3);
              v286 = v240;
              *v143 = v151;
              v143[1] = v159;
              v143[2] = v160;
              v143[3] = v161;
              v143[4] = v162;
              v241 = _s10Foundation16AttributedStringV17_AttributeStorageVy5ValueQzSgxmcAA0bC3KeyRzs8SendableAGRQluigAA0D6ScopesO0A10AttributesV016ReplacementIndexD0O_Tt0g5Tf4x_n(v239);
              v243 = v242;
              outlined destroy of AttributedString.Runs.Run(&v287);

              *v152 = v241;
              *(v152 + 8) = v243 & 1;
              *(v152 + 16) = v153;
              v244 = v286;
              *(v152 + 40) = v285;
              *(v152 + 24) = v244;
              v245 = v276;
              *(v152 + 56) = v278.i64[0];
              *(v152 + 64) = v245;
              v246 = v274;
              *(v152 + 72) = v275.i64[0];
              *(v152 + 80) = v246;
              *(v152 + 88) = v163;
              return result;
            }

            v60 = v61 + 1;
            v61 = v58;
          }

          v58 = v61;
          if (v60 >= v61)
          {
            goto LABEL_81;
          }
        }

        goto LABEL_85;
      }
    }

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
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
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
  }

  __break(1u);
  return result;
}

void specialized AttributedString.Runs.AttributesSlice1.Iterator.next()(int8x16_t *a1@<X8>)
{
  v2 = v1;
  *&v294 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMR);
  v292.i64[0] = *(v294 - 8);
  MEMORY[0x1EEE9AC00](v294);
  v5 = v258 - v4;
  v286 = type metadata accessor for AttributedString.Runs(0);
  MEMORY[0x1EEE9AC00](v286);
  v285 = v258 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v291.i64[0] = v258 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v293 = (v258 - v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (v258 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v258 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionH0O_GMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionH0O_GMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v280 = v258 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v279 = (v258 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v278 = v258 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v283 = v258 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v282 = v258 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v281 = v258 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v284 = v258 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = v258 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v290 = v258 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v38 = v258 - v37;
  v40 = (v2 + *(v39 + 44));
  v41 = *v40;
  v287 = v2;
  outlined init with copy of FloatingPointRoundingRule?(v2, v258 - v37, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionH0O_GMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionH0O_GMR);
  if (*(v38 + 26) != 2)
  {
    v42 = *(v38 + 23);
    outlined destroy of TermOfAddress?(v38, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionG0OGMR);
    v288 = v41;
    v295.i64[0] = v41 >> 10;
    if (v41 >> 10 == v42 >> 10)
    {
      _s10Foundation16AttributedStringV22MarkdownSourcePositionVSg_SnyAC5IndexVGtSgWOi0_(&v296);
      v43 = v303;
      a1[8] = v302;
      a1[9] = v43;
      v44 = v305;
      a1[10] = v304;
      a1[11] = v44;
      v45 = v299;
      a1[4] = v298[2];
      a1[5] = v45;
      v46 = v301;
      a1[6] = v300;
      a1[7] = v46;
      v47 = v297;
      *a1 = v296;
      a1[1] = v47;
      v48 = v298[1];
      a1[2] = v298[0];
      a1[3] = v48;
      return;
    }

    v273 = a1;
    v49 = v287;
    v50 = v290;
    outlined init with copy of FloatingPointRoundingRule?(v287, v290, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionH0O_GMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionH0O_GMR);
    outlined init with copy of AttributedString.Runs(v50, v16);
    outlined destroy of TermOfAddress?(v50, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionG0OGMR);
    v51 = v286;
    LOBYTE(v50) = v16[*(v286 + 7)];
    outlined destroy of AttributedString.Runs(v16);
    v52 = (v292.i64[0] + 8);
    v274 = v40;
    if (v50)
    {
      outlined init with copy of FloatingPointRoundingRule?(v49, v33, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionH0O_GMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionH0O_GMR);
      outlined init with copy of AttributedString.Runs(v33, v13);
      outlined destroy of TermOfAddress?(v33, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionG0OGMR);
      v53 = v40[2];
      v276 = v40[1];
      *&v277 = v53;
      *(&v277 + 1) = v40[3];
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd, &_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMR);
      RangeSet.ranges.getter();
      v55 = v294;
      v56 = RangeSet.Ranges.count.getter();
      v57 = *v52;
      v292.i64[0] = v52;
      v293 = v57;
      v57(v5, v55);
      if (v56 >= 1)
      {
        v58 = 0;
        while (!__OFADD__(v58, v56))
        {
          v59 = (v58 + v56) / 2;
          RangeSet.ranges.getter();
          v60 = v294;
          RangeSet.Ranges.subscript.getter();
          v293(v5, v60);
          v61 = v296.i64[0] >> 10;
          if (v295.i64[0] >= v296.i64[0] >> 10)
          {
            v62 = *&v298[0];
            if (v295.i64[0] < *&v298[0] >> 10)
            {
              v264 = v296;
              v263 = v297;
              v75 = *v13;
              AttributedString.Guts.findRun(at:)(v288, *(&v277 + 1), v296.i64);
              v284 = v296.u64[1];
              v290 = v296.i64[0];
              v275 = v297.i64[0];
              v262 = *(&v298[1] + 8);
              v267 = *(v298 + 8);
              v77 = *(v75 + 72);
              v76 = *(v75 + 80);
              v78 = *(v75 + 96);
              v271 = *(v75 + 88);
              swift_unknownObjectRetain();
              v79 = specialized Rope.subscript.getter(v290, v284, v275, v77, v76, v271, v78);
              v275 = v80;
              v284 = v81;
              swift_unknownObjectRelease();
              v82 = v79 + (v267.i64[0] >> 11);
              if (__OFADD__(v79, v267.i64[0] >> 11))
              {
                goto LABEL_86;
              }

              LODWORD(v261) = v61 < v267.i64[0] >> 10;
              if ((v62 >> 11) < v82)
              {
                v82 = v62 >> 11;
              }

              v83 = *(v75 + 40);
              v334 = *(v75 + 24);
              v335 = v83;
              v336 = *(v75 + 56);
              if (__OFSUB__(v82, v288 >> 11))
              {
                goto LABEL_88;
              }

              swift_unknownObjectRetain();
              v84 = BigString.UTF8View.index(_:offsetBy:)();
              v270 = v85;
              v271 = v84;
              v268 = v87;
              v269 = v86;
              swift_unknownObjectRelease();
              v272 = v75;

              outlined destroy of AttributedString.Runs(v13);
              v88 = v287;
              v89 = v281;
              outlined init with copy of FloatingPointRoundingRule?(v287, v281, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionH0O_GMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionH0O_GMR);
              v90 = v291.i64[0];
              outlined init with copy of AttributedString.Runs(v89, v291.i64[0]);

              outlined destroy of TermOfAddress?(v89, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionG0OGMR);
              v91 = v282;
              outlined init with copy of FloatingPointRoundingRule?(v88, v282, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionH0O_GMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionH0O_GMR);
              v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionG0OGMR);
              v93 = *(v91 + *(v92 + 36));

              outlined destroy of TermOfAddress?(v91, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionG0OGMR);
              v94 = v88;
              v95 = v283;
              outlined init with copy of FloatingPointRoundingRule?(v94, v283, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionH0O_GMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionH0O_GMR);
              v259 = v92;
              v265 = *(v95 + *(v92 + 40));

              outlined destroy of TermOfAddress?(v95, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionG0OGMR);
              v260 = v93;
              if (!v93[2])
              {
                goto LABEL_90;
              }

              v266 = *v90;
              AttributedString.Guts.findRun(at:)(v288, *(&v277 + 1), v296.i64);
              v96 = *(&v298[0] + 1);
              v258[1] = *(&v298[1] + 1);
              v258[2] = *&v298[1];
              v258[0] = *&v298[2];
              v325[0] = v296;
              v325[1] = v297;
              v326 = *&v298[0];
              v290 = *(v286 + 6);
              RangeSet.ranges.getter();
              v97 = v294;
              v98 = RangeSet.Ranges.count.getter();
              v293(v5, v97);
              if (v98 >= 1)
              {
                v99 = 0;
                v100 = vdup_n_s32(v261);
                v101.i64[0] = v100.u32[0];
                v101.i64[1] = v100.u32[1];
                v102 = vcltzq_s64(vshlq_n_s64(v101, 0x3FuLL));
                v263 = vbslq_s8(v102, v262, v263);
                v267 = vbslq_s8(v102, v267, v264);
                v289.i64[0] = v5;
                while (!__OFADD__(v99, v98))
                {
                  v103 = (v99 + v98) / 2;
                  v104 = v54;
                  RangeSet.ranges.getter();
                  v105 = v96;
                  v106 = v294;
                  RangeSet.Ranges.subscript.getter();
                  v107 = v106;
                  v96 = v105;
                  v293(v5, v107);
                  if (v295.i64[0] >= v296.i64[0] >> 10)
                  {
                    v108 = *&v298[0];
                    v109 = *&v298[0] >> 10;
                    if (v295.i64[0] < *&v298[0] >> 10)
                    {
                      v110 = *(&v298[0] + 1);
                      v111 = v298[1];
                      v112 = v265;
                      if (*(v265 + 16) == 1 && (specialized Set.contains(_:)(0, 1, v265) & 1) == 0)
                      {

                        v185 = *(v266 + 24);
                        v186 = *(v266 + 40);
                        v333 = *(v266 + 56);
                        v332 = v186;
                        v331 = v185;
                        *&v327 = v288;
                        *(&v327 + 1) = v276;
                        v328 = v277;
                        *&v329 = v108;
                        *(&v329 + 1) = v110;
                        v330 = v111;
                        v187 = *(v266 + 24);
                        *&v324 = *(v266 + 56);
                        v188 = *(v266 + 40);
                        v322 = v187;
                        v323 = v188;
                        outlined init with copy of Rope<BigString._Chunk>._Node?(&v322, &v296);
                        v290 = BigString._firstConstraintBreak(in:with:)(&v327, v112);
                        v282 = v190;
                        v283 = v189;
                        v281 = v191;

                        outlined destroy of BigString(&v331);
                        v136 = v285;
                        v137 = v278;
                        v130 = v289.i64[0];
                      }

                      else
                      {
                        v281 = *(&v111 + 1);
                        v282 = v111;
                        v290 = v108;
                        AttributedString.Runs._lastOfMatchingRuns(with:comparing:)(v325, v260, v306);

                        v113 = v266;
                        v114 = *(v266 + 72);
                        v264.i64[0] = *(v266 + 80);
                        v115 = *(v266 + 88);
                        v261 = *(v266 + 96);
                        v262.i64[0] = v115;
                        v260 = v306[0];
                        v116 = v306[1];
                        v117 = v306[4];
                        v118 = v306[2];
                        swift_unknownObjectRetain();
                        v264.i64[0] = specialized Rope.subscript.getter(v260, v116, v118, v114, v264.i64[0], v262.i64[0], v261);
                        swift_unknownObjectRelease();

                        if (__OFADD__(v117, v264.i64[0]))
                        {
                          goto LABEL_94;
                        }

                        v120 = *(v113 + 24);
                        v119 = (v113 + 24);
                        v121 = v119[1];
                        v122 = v119[2];
                        v331 = v120;
                        v332 = v121;
                        v333 = v122;
                        if (__OFSUB__(v117 + v264.i64[0], v105 >> 11))
                        {
                          goto LABEL_95;
                        }

                        swift_unknownObjectRetain();
                        v123 = BigString.UTF8View.index(_:offsetBy:)();
                        v125 = v124;
                        v127 = v126;
                        v264.i64[0] = v128;
                        swift_unknownObjectRelease();
                        if (v123 >> 10 >= v109)
                        {
                          v174 = *v119;
                          v175 = v119[2];
                          v323 = v119[1];
                          v324 = v175;
                          v322 = v174;
                          *&v327 = v288;
                          *(&v327 + 1) = v276;
                          v328 = v277;
                          *&v329 = v290;
                          v283 = v110;
                          *(&v329 + 1) = v110;
                          *&v330 = v282;
                          *(&v330 + 1) = v281;
                          v176 = *v119;
                          v177 = v119[1];
                          v339 = *(v119 + 4);
                          v337 = v176;
                          v338 = v177;
                          outlined init with copy of Rope<BigString._Chunk>._Node?(&v337, &v296);
                          v178 = BigString._firstConstraintBreak(in:with:)(&v327, v265);
                          v180 = v179;
                          v182 = v181;
                          v184 = v183;

                          outlined destroy of BigString(&v322);
                          v136 = v285;
                          v137 = v278;
                          v130 = v289.i64[0];
                          if (v109 != v178 >> 10)
                          {
                            v290 = v178;
                            v282 = v182;
                            v283 = v180;
                            v281 = v184;
                          }
                        }

                        else
                        {
                          v129 = v119[1];
                          v322 = *v119;
                          v323 = v129;
                          v324 = v119[2];
                          v130 = v289.i64[0];
                          if (v123 >> 10 < v295.i64[0])
                          {
                            goto LABEL_98;
                          }

                          *&v327 = v288;
                          *(&v327 + 1) = v276;
                          v328 = v277;
                          *&v329 = v123;
                          *(&v329 + 1) = v125;
                          *&v330 = v127;
                          *(&v330 + 1) = v264.i64[0];
                          v131 = *v119;
                          v132 = v119[1];
                          v339 = *(v119 + 4);
                          v337 = v131;
                          v338 = v132;
                          outlined init with copy of Rope<BigString._Chunk>._Node?(&v337, &v296);
                          v290 = BigString._firstConstraintBreak(in:with:)(&v327, v265);
                          v282 = v134;
                          v283 = v133;
                          v281 = v135;

                          outlined destroy of BigString(&v322);
                          v136 = v285;
                          v137 = v278;
                        }
                      }

                      v278 = *(v266 + 16);
                      outlined destroy of AttributedString.Runs(v291.i64[0]);
                      v192 = v287;
                      outlined init with copy of FloatingPointRoundingRule?(v287, v137, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionH0O_GMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionH0O_GMR);
                      outlined init with copy of AttributedString.Runs(v137, v136);
                      outlined destroy of TermOfAddress?(v137, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionG0OGMR);
                      v193 = v279;
                      outlined init with copy of FloatingPointRoundingRule?(v192, v279, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionH0O_GMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionH0O_GMR);
                      v194 = v259;
                      v195 = v136;
                      v196 = *(v193 + *(v259 + 36));

                      outlined destroy of TermOfAddress?(v193, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionG0OGMR);
                      v197 = v192;
                      v198 = v280;
                      outlined init with copy of FloatingPointRoundingRule?(v197, v280, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionH0O_GMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionH0O_GMR);
                      v291.i64[0] = *(v198 + *(v194 + 40));

                      outlined destroy of TermOfAddress?(v198, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionG0OGMR);
                      v279 = v196;
                      if (!v196[2])
                      {
                        goto LABEL_92;
                      }

                      v280 = *v195;
                      AttributedString.Guts.findRun(at:)(v290, v281, v296.i64);
                      v276 = *&v298[1];
                      *&v277 = *(&v298[0] + 1);
                      v266 = *(&v298[1] + 1);
                      v265 = *&v298[2];
                      v311[0] = v296;
                      v311[1] = v297;
                      v312 = *&v298[0];
                      v295.i64[0] = *(v286 + 6);
                      v199 = v195;
                      RangeSet.ranges.getter();
                      v200 = v294;
                      v201 = RangeSet.Ranges.count.getter();
                      v293(v130, v200);
                      if (v201 >= 1)
                      {
                        v202 = 0;
                        v203 = v290 >> 10;
                        while (1)
                        {
                          if (__OFADD__(v202, v201))
                          {
                            goto LABEL_85;
                          }

                          v204 = (v202 + v201) / 2;
                          RangeSet.ranges.getter();
                          v205 = v294;
                          RangeSet.Ranges.subscript.getter();
                          v293(v130, v205);
                          if (v203 >= v296.i64[0] >> 10)
                          {
                            v159 = *&v298[0];
                            v206 = *&v298[0] >> 10;
                            if (v203 < *&v298[0] >> 10)
                            {
                              v287 = *&v298[1];
                              v288 = *(&v298[0] + 1);
                              v286 = *(&v298[1] + 1);
                              if (*(v291.i64[0] + 16) != 1 || (specialized Set.contains(_:)(0, 1, v291.i64[0]) & 1) != 0)
                              {
                                *(&v277 + 1) = v203;
                                AttributedString.Runs._lastOfMatchingRuns(with:comparing:)(v311, v279, v307);

                                v207 = v280;
                                v208 = *(v280 + 72);
                                v279 = *(v280 + 80);
                                v209 = *(v280 + 96);
                                v264.i64[0] = *(v280 + 88);
                                v261 = v307[0];
                                v262.i64[0] = v209;
                                v260 = v307[1];
                                v210 = v307[4];
                                v211 = v307[2];
                                swift_unknownObjectRetain();
                                v279 = specialized Rope.subscript.getter(v261, v260, v211, v208, v279, v264.i64[0], v262.i64[0]);
                                v264.i64[0] = v212;
                                swift_unknownObjectRelease();

                                v213 = v279 + v210;
                                if (__OFADD__(v210, v279))
                                {
                                  goto LABEL_96;
                                }

                                v215 = *(v207 + 24);
                                v214 = (v207 + 24);
                                v216 = v214[1];
                                v217 = v214[2];
                                v319 = v215;
                                v320 = v216;
                                v321 = v217;
                                v279 = &v213[-(v277 >> 11)];
                                if (__OFSUB__(v213, v277 >> 11))
                                {
                                  goto LABEL_97;
                                }

                                swift_unknownObjectRetain();
                                v218 = BigString.UTF8View.index(_:offsetBy:)();
                                v220 = v219;
                                v279 = v221;
                                *&v277 = v222;
                                swift_unknownObjectRelease();
                                if (v218 >> 10 < v206)
                                {
                                  v223 = v214[1];
                                  v308 = *v214;
                                  v309 = v223;
                                  v310 = v214[2];
                                  v160 = v273;
                                  v152 = v274;
                                  if (v218 >> 10 < *(&v277 + 1))
                                  {
                                    goto LABEL_99;
                                  }

                                  *&v313 = v290;
                                  *(&v313 + 1) = v283;
                                  *&v314 = v282;
                                  *(&v314 + 1) = v281;
                                  v315 = v218;
                                  v316 = v220;
                                  v317 = v279;
                                  v318 = v277;
                                  v224 = *v214;
                                  v225 = v214[1];
                                  v342 = *(v214 + 4);
                                  v340 = v224;
                                  v341 = v225;
                                  outlined init with copy of Rope<BigString._Chunk>._Node?(&v340, &v296);
                                  v159 = BigString._firstConstraintBreak(in:with:)(&v313, v291.i64[0]);
                                  v287 = v227;
                                  v288 = v226;
                                  v286 = v228;

                                  outlined destroy of BigString(&v308);
                                  v295.i64[0] = *(v280 + 16);
LABEL_71:
                                  v199 = v285;
                                  v203 = *(&v277 + 1);
LABEL_76:
                                  outlined destroy of AttributedString.Runs(v199);
                                  v161 = *v152;
                                  v165 = v263;
                                  v166 = v267;
                                  v171 = v281;
                                  v172 = v282;
                                  v173 = v278;
                                  v168 = v287;
                                  v167 = v288;
                                  v169 = v286;
                                  v170 = v295.i64[0];
                                  if (v203 < *v152 >> 10)
                                  {
                                    goto LABEL_93;
                                  }

                                  goto LABEL_77;
                                }

                                v229 = *v214;
                                v230 = v214[2];
                                v309 = v214[1];
                                v310 = v230;
                                v308 = v229;
                                *&v313 = v290;
                                *(&v313 + 1) = v283;
                                *&v314 = v282;
                                *(&v314 + 1) = v281;
                                v315 = v159;
                                v316 = v288;
                                v317 = v287;
                                v318 = v286;
                                v231 = *v214;
                                v232 = v214[1];
                                v342 = *(v214 + 4);
                                v340 = v231;
                                v341 = v232;
                                outlined init with copy of Rope<BigString._Chunk>._Node?(&v340, &v296);
                                v233 = BigString._firstConstraintBreak(in:with:)(&v313, v291.i64[0]);
                                v235 = v234;
                                v237 = v236;
                                v279 = v238;
                                outlined destroy of BigString(&v308);
                                if (v206 != v233 >> 10)
                                {

                                  v295.i64[0] = *(v280 + 16);
                                  v159 = v233;
                                  v287 = v237;
                                  v288 = v235;
                                  v286 = v279;
                                  v160 = v273;
                                  v152 = v274;
                                  goto LABEL_71;
                                }

                                v199 = v285;
                                RangeSet.ranges.getter();
                                v239 = v294;
                                v240 = RangeSet.Ranges.count.getter();
                                v293(v130, v239);
                                v241 = v240 - 1;
                                v160 = v273;
                                v203 = *(&v277 + 1);
                                if (!__OFSUB__(v240, 1))
                                {
LABEL_68:
                                  if (v204 == v241)
                                  {
                                  }

                                  else
                                  {
                                    RangeSet.ranges.getter();
                                    v253 = v294;
                                    RangeSet.Ranges.subscript.getter();

                                    v293(v130, v253);
                                    v159 = v296.i64[0];
                                    v287 = v297.i64[0];
                                    v288 = v296.u64[1];
                                    v286 = v297.i64[1];
                                  }

                                  v295.i64[0] = *(v280 + 16);
                                  goto LABEL_75;
                                }

                                __break(1u);
                              }

                              v242 = v280;
                              v243 = *(v280 + 24);
                              v244 = *(v280 + 56);
                              v320 = *(v280 + 40);
                              v321 = v244;
                              v319 = v243;
                              *&v313 = v290;
                              *(&v313 + 1) = v283;
                              *&v314 = v282;
                              *(&v314 + 1) = v281;
                              v315 = v159;
                              v316 = v288;
                              v317 = v287;
                              v318 = v286;
                              v245 = *(v280 + 24);
                              *&v310 = *(v280 + 56);
                              v246 = *(v280 + 40);
                              v308 = v245;
                              v309 = v246;
                              outlined init with copy of Rope<BigString._Chunk>._Node?(&v308, &v296);
                              v247 = BigString._firstConstraintBreak(in:with:)(&v313, v291.i64[0]);
                              v285 = v248;
                              v279 = v249;
                              *(&v277 + 1) = v250;
                              outlined destroy of BigString(&v319);
                              if (v206 == v247 >> 10)
                              {
                                RangeSet.ranges.getter();
                                v251 = v294;
                                v252 = RangeSet.Ranges.count.getter();
                                v293(v130, v251);
                                v241 = v252 - 1;
                                v160 = v273;
                                if (__OFSUB__(v252, 1))
                                {
                                  goto LABEL_100;
                                }

                                goto LABEL_68;
                              }

                              v295.i64[0] = *(v242 + 16);
                              v159 = v247;
                              v287 = v279;
                              v288 = v285;
                              v286 = *(&v277 + 1);
                              v160 = v273;
LABEL_75:
                              v152 = v274;
                              goto LABEL_76;
                            }

                            v202 = v204 + 1;
                            v204 = v201;
                          }

                          v201 = v204;
                          if (v202 >= v204)
                          {
                            goto LABEL_81;
                          }
                        }
                      }

                      goto LABEL_81;
                    }

                    v99 = v103 + 1;
                    v103 = v98;
                  }

                  v98 = v103;
                  v54 = v104;
                  v5 = v289.i64[0];
                  if (v99 >= v103)
                  {
                    goto LABEL_80;
                  }
                }

                goto LABEL_84;
              }

              goto LABEL_80;
            }

            v58 = v59 + 1;
            v59 = v56;
          }

          v56 = v59;
          if (v58 >= v59)
          {
            goto LABEL_78;
          }
        }

        goto LABEL_82;
      }

LABEL_78:
      __break(1u);
    }

    else
    {
      v63 = v284;
      outlined init with copy of FloatingPointRoundingRule?(v49, v284, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionH0O_GMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionH0O_GMR);
      outlined init with copy of AttributedString.Runs(v63, v293);
      outlined destroy of TermOfAddress?(v63, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionG0OGMR);
      v64 = v40[2];
      v285 = v40[1];
      v282 = v40[3];
      v283 = v64;
      v65 = *(v51 + 6);
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd, &_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMR);
      v292.i64[0] = v65;
      v291.i64[0] = v66;
      RangeSet.ranges.getter();
      v67 = v294;
      v68 = RangeSet.Ranges.count.getter();
      v69 = *v52;
      (*v52)(v5, v67);
      if (v68 >= 1)
      {
        v70 = 0;
        while (!__OFADD__(v70, v68))
        {
          v71 = (v70 + v68) / 2;
          RangeSet.ranges.getter();
          v72 = v294;
          RangeSet.Ranges.subscript.getter();
          v69(v5, v72);
          v73 = v296.i64[0] >> 10;
          if (v295.i64[0] >= v296.i64[0] >> 10)
          {
            v74 = *&v298[0];
            if (v295.i64[0] < *&v298[0] >> 10)
            {
              v292 = v296;
              v291 = v297;
              v138 = *v293;
              AttributedString.Guts.findRun(at:)(v288, v282, v296.i64);
              v139 = v296.u64[1];
              *&v294 = v296.i64[0];
              v140 = v297.i64[0];
              v289 = *(&v298[1] + 8);
              v295 = *(v298 + 8);
              v142 = *(v138 + 72);
              v141 = *(v138 + 80);
              v144 = *(v138 + 88);
              v143 = *(v138 + 96);
              swift_unknownObjectRetain();
              v145 = specialized Rope.subscript.getter(v294, v139, v140, v142, v141, v144, v143);
              v147 = v146;
              v284 = v148;
              swift_unknownObjectRelease();
              v149 = v73 < v295.i64[0] >> 10;
              v150 = v145 + (v295.i64[0] >> 11);
              if (__OFADD__(v145, v295.i64[0] >> 11))
              {
                goto LABEL_87;
              }

              if ((v74 >> 11) < v150)
              {
                v150 = v74 >> 11;
              }

              v151 = *(v138 + 40);
              v327 = *(v138 + 24);
              v328 = v151;
              v329 = *(v138 + 56);
              v152 = v274;
              if (__OFSUB__(v150, v288 >> 11))
              {
                goto LABEL_89;
              }

              swift_unknownObjectRetain();
              v153 = BigString.UTF8View.index(_:offsetBy:)();
              v270 = v154;
              v271 = v153;
              v268 = v156;
              v269 = v155;
              swift_unknownObjectRelease();
              v272 = v138;

              outlined destroy of AttributedString.Runs(v293);
              v157 = v290;
              outlined init with copy of FloatingPointRoundingRule?(v287, v290, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionH0O_GMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionH0O_GMR);
              v158 = *(v152 + 1);
              v313 = *v152;
              v314 = v158;
              v315 = v152[4];
              v275 = v147;

              specialized AttributedString.Runs.AttributesSlice1.index(after:)(&v313, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionG0OGMR, &v296);
              outlined destroy of TermOfAddress?(v157, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionG0OGMR);
              v159 = v296.i64[0];
              v160 = v273;
              if (v296.i64[0] >> 10 < *v152 >> 10)
              {
                goto LABEL_91;
              }

              v161 = *v152;
              v162 = vdup_n_s32(v149);
              v163.i64[0] = v162.u32[0];
              v163.i64[1] = v162.u32[1];
              v164 = vcltzq_s64(vshlq_n_s64(v163, 0x3FuLL));
              v165 = vbslq_s8(v164, v289, v291);
              v166 = vbslq_s8(v164, v295, v292);
              v167 = v296.u64[1];
              v168 = v297.i64[0];
              v290 = v296.i64[0];
              v169 = v297.i64[1];
              v170 = *&v298[0];
              v283 = v296.i64[1];
              v171 = v297.u64[1];
              v172 = v297.i64[0];
              v173 = *&v298[0];
LABEL_77:
              v254 = v275;
              v296.i64[0] = v275;
              v296.i64[1] = v284;
              v297 = v166;
              v298[0] = v165;
              *&v298[1] = v271;
              *(&v298[1] + 1) = v270;
              *&v298[2] = v269;
              *(&v298[2] + 1) = v268;
              v299.i64[0] = v272;
              v255 = *(v152 + 1);
              v294 = *(v152 + 3);
              v295 = v255;
              *v152 = v159;
              v152[1] = v167;
              v152[2] = v168;
              v152[3] = v169;
              v152[4] = v170;
              _s10Foundation16AttributedStringV17_AttributeStorageVy5ValueQzSgxmcAA0bC3KeyRzs8SendableAGRQluigAA0D6ScopesO0A10AttributesV022MarkdownSourcePositionD0O_Tt0g5(v254, v160);
              outlined destroy of AttributedString.Runs.Run(&v296);

              *(v160 + 112) = v161;
              v256 = v295;
              *(v160 + 136) = v294;
              *(v160 + 120) = v256;
              v257 = v283;
              *(v160 + 152) = v290;
              *(v160 + 160) = v257;
              *(v160 + 168) = v172;
              *(v160 + 176) = v171;
              *(v160 + 184) = v173;
              _NSBundleDeallocatingImmortalBundle();
              return;
            }

            v70 = v71 + 1;
            v71 = v68;
          }

          v68 = v71;
          if (v70 >= v71)
          {
            goto LABEL_79;
          }
        }

        goto LABEL_83;
      }
    }

LABEL_79:
    __break(1u);
LABEL_80:
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
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
  }

  __break(1u);
}

uint64_t specialized AttributedString.Runs.AttributesSlice1.Iterator.next()@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, void *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  v303 = a7;
  v304 = a8;
  v301 = a5;
  v302 = a6;
  v312 = a4;
  v313 = a3;
  v12 = v9;
  v308 = a9;
  *&v319 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMR);
  v13 = *(v319 - 8);
  MEMORY[0x1EEE9AC00](v319);
  v15 = &v273 - v14;
  v311.i64[0] = type metadata accessor for AttributedString.Runs(0);
  MEMORY[0x1EEE9AC00](v311.i64[0]);
  v314 = (&v273 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v315 = (&v273 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v317 = (&v273 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v273 - v22);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v273 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v296 = (&v273 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v29);
  v295 = (&v273 - v30);
  MEMORY[0x1EEE9AC00](v31);
  v294 = &v273 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v299.i64[0] = &v273 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v298 = &v273 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v297 = &v273 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v305 = &v273 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v300 = &v273 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v306.i64[0] = &v273 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v273 - v46;
  v309 = v12 + *(v48 + 44);
  v310 = a1;
  v49 = *v309;
  v316 = a2;
  result = outlined init with copy of FloatingPointRoundingRule?(v12, &v273 - v46, a1, a2);
  if (*(v47 + 26) != 2)
  {
    v51 = *(v47 + 23);
    result = outlined destroy of TermOfAddress?(v47, v313, v312);
    v320.i64[0] = v49 >> 10;
    if (v49 >> 10 == v51 >> 10)
    {
      v52 = v308;
      *v308 = xmmword_1812187D0;
      v52[1] = 0u;
      v52[2] = 0u;
      v52[3] = 0u;
      v52[4] = 0u;
      v52[5] = 0u;
      *(v52 + 12) = 0;
      return result;
    }

    v307 = v49;
    v53 = v306.i64[0];
    v54 = v12;
    v55 = v310;
    v56 = v316;
    outlined init with copy of FloatingPointRoundingRule?(v12, v306.i64[0], v310, v316);
    outlined init with copy of AttributedString.Runs(v53, v26);
    v57 = v13;
    v58 = v312;
    outlined destroy of TermOfAddress?(v53, v313, v312);
    LOBYTE(v53) = v26[*(v311.i64[0] + 28)];
    outlined destroy of AttributedString.Runs(v26);
    v318.i64[0] = v57 + 8;
    v293 = v54;
    if (v53)
    {
      v59 = v300;
      outlined init with copy of FloatingPointRoundingRule?(v54, v300, v55, v56);
      outlined init with copy of AttributedString.Runs(v59, v23);
      outlined destroy of TermOfAddress?(v59, v313, v58);
      v60 = *(v309 + 16);
      v291 = *(v309 + 8);
      *&v292 = v60;
      *(&v292 + 1) = *(v309 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd, &_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMR);
      RangeSet.ranges.getter();
      v61 = v319;
      v62 = RangeSet.Ranges.count.getter();
      v317 = *v318.i64[0];
      result = (v317)(v15, v61);
      if (v62 >= 1)
      {
        v63 = 0;
        while (!__OFADD__(v63, v62))
        {
          v64 = (v63 + v62) / 2;
          RangeSet.ranges.getter();
          v65 = v319;
          RangeSet.Ranges.subscript.getter();
          result = (v317)(v15, v65);
          v66 = v321.i64[0] >> 10;
          if (v320.i64[0] >= v321.i64[0] >> 10)
          {
            v67 = *v323;
            if (v320.i64[0] < *v323 >> 10)
            {
              v283 = v321;
              v282 = v322;
              v78 = *v23;
              AttributedString.Guts.findRun(at:)(v307, *(&v292 + 1), v321.i64);
              v300 = v321.u64[1];
              v305 = v321.i64[0];
              v281 = v324;
              v306 = *&v323[8];
              v79 = *(v78 + 72);
              v289 = *(v78 + 80);
              v290 = v322.i64[0];
              v80 = *(v78 + 88);
              v81 = *(v78 + 96);
              swift_unknownObjectRetain();
              v82 = specialized Rope.subscript.getter(v305, v300, v290, v79, v289, v80, v81);
              v290 = v83;
              v300 = v84;
              result = swift_unknownObjectRelease();
              v85 = v82 + (v306.i64[0] >> 11);
              if (__OFADD__(v82, v306.i64[0] >> 11))
              {
                goto LABEL_86;
              }

              LODWORD(v305) = v66 < v306.i64[0] >> 10;
              if ((v67 >> 11) < v85)
              {
                v85 = v67 >> 11;
              }

              v86 = *(v78 + 40);
              v356 = *(v78 + 24);
              v357 = v86;
              v358 = *(v78 + 56);
              if (__OFSUB__(v85, v307 >> 11))
              {
                goto LABEL_88;
              }

              swift_unknownObjectRetain();
              v87 = BigString.UTF8View.index(_:offsetBy:)();
              v287 = v88;
              v288 = v87;
              v285 = v90;
              v286 = v89;
              swift_unknownObjectRelease();
              v289 = v78;

              outlined destroy of AttributedString.Runs(v23);
              v91 = v293;
              v92 = v297;
              v93 = v310;
              v94 = v316;
              outlined init with copy of FloatingPointRoundingRule?(v293, v297, v310, v316);
              outlined init with copy of AttributedString.Runs(v92, v315);

              v95 = v92;
              v96 = v312;
              v97 = v313;
              outlined destroy of TermOfAddress?(v95, v313, v312);
              v98 = v298;
              outlined init with copy of FloatingPointRoundingRule?(v91, v298, v93, v94);
              v99 = __swift_instantiateConcreteTypeFromMangledNameV2(v97, v96);
              v100 = *(v98 + *(v99 + 36));

              outlined destroy of TermOfAddress?(v98, v97, v96);
              v101 = v91;
              v102 = v299.i64[0];
              outlined init with copy of FloatingPointRoundingRule?(v101, v299.i64[0], v93, v316);
              v279 = v99;
              v297 = *(v102 + *(v99 + 40));

              outlined destroy of TermOfAddress?(v102, v97, v96);
              v280 = v100;
              result = v307;
              if (!v100[2])
              {
                goto LABEL_90;
              }

              v284 = *v315;
              AttributedString.Guts.findRun(at:)(v307, *(&v292 + 1), v321.i64);
              v103 = *&v323[8];
              v277 = v324.i64[0];
              v278 = *&v323[16];
              v276 = v324.i64[1];
              v346[0] = v321;
              v346[1] = v322;
              v347 = *v323;
              RangeSet.ranges.getter();
              v104 = v319;
              v105 = RangeSet.Ranges.count.getter();
              result = (v317)(v15, v104);
              if (v105 >= 1)
              {
                v106 = 0;
                v107 = vdup_n_s32(v305);
                v108.i64[0] = v107.u32[0];
                v108.i64[1] = v107.u32[1];
                v109 = vcltzq_s64(vshlq_n_s64(v108, 0x3FuLL));
                v282 = vbslq_s8(v109, v281, v282);
                v283 = vbslq_s8(v109, v306, v283);
                while (!__OFADD__(v106, v105))
                {
                  v110 = (v106 + v105) / 2;
                  RangeSet.ranges.getter();
                  v111 = v319;
                  RangeSet.Ranges.subscript.getter();
                  v112 = v111;
                  v113 = v316;
                  result = (v317)(v15, v112);
                  if (v320.i64[0] >= v321.i64[0] >> 10)
                  {
                    v114 = *v323 >> 10;
                    if (v320.i64[0] < *v323 >> 10)
                    {
                      v299.i64[0] = *v323;
                      v115 = *&v323[8];
                      v116 = *&v323[16];
                      v117 = v324.i64[0];
                      v118 = v297;
                      if (*(v297 + 16) == 1 && (specialized Set.contains(_:)(0, 1, v297) & 1) == 0)
                      {

                        v145 = v284;
                        v197 = *(v284 + 24);
                        v198 = *(v284 + 40);
                        v355 = *(v284 + 56);
                        v353 = v197;
                        v354 = v198;
                        *&v348 = v307;
                        *(&v348 + 1) = v291;
                        v349 = v292;
                        *&v350 = v299.i64[0];
                        *(&v350 + 1) = v115;
                        v351 = v116;
                        v352 = v117;
                        v199 = *(v284 + 24);
                        *&v345 = *(v284 + 56);
                        v200 = *(v284 + 40);
                        v343 = v199;
                        v344 = v200;
                        outlined init with copy of Rope<BigString._Chunk>._Node?(&v343, &v321);
                        v201 = BigString._firstConstraintBreak(in:with:)(&v348, v118);
                        v298 = v202;
                        v299.i64[0] = v201;
                        v305 = v204;
                        v306.i64[0] = v203;

                        outlined destroy of BigString(&v353);
                        v144 = v313;
                      }

                      else
                      {
                        v298 = v117;
                        v305 = v116;
                        v306.i64[0] = v115;
                        AttributedString.Runs._lastOfMatchingRuns(with:comparing:)(v346, v280, v327);

                        v119 = v284;
                        v121 = *(v284 + 72);
                        v120 = *(v284 + 80);
                        v122 = *(v284 + 88);
                        v274 = *(v284 + 96);
                        v275 = v122;
                        v123 = v327[0];
                        v124 = v327[1];
                        v280 = v120;
                        v281.i64[0] = v327[4];
                        v125 = v327[2];
                        swift_unknownObjectRetain();
                        v126 = specialized Rope.subscript.getter(v123, v124, v125, v121, v280, v275, v274);
                        swift_unknownObjectRelease();

                        if (__OFADD__(v281.i64[0], v126))
                        {
                          goto LABEL_94;
                        }

                        v128 = *(v119 + 24);
                        v127 = (v119 + 24);
                        v129 = v127[1];
                        v130 = v127[2];
                        v353 = v128;
                        v354 = v129;
                        v355 = v130;
                        if (__OFSUB__(v281.i64[0] + v126, v103 >> 11))
                        {
                          goto LABEL_95;
                        }

                        swift_unknownObjectRetain();
                        v131 = BigString.UTF8View.index(_:offsetBy:)();
                        v133 = v132;
                        v135 = v134;
                        v281.i64[0] = v136;
                        result = swift_unknownObjectRelease();
                        v113 = v316;
                        if (v131 >> 10 >= v114)
                        {
                          v186 = *v127;
                          v187 = v127[2];
                          v344 = v127[1];
                          v345 = v187;
                          v343 = v186;
                          *&v348 = v307;
                          *(&v348 + 1) = v291;
                          v349 = v292;
                          *&v350 = v299.i64[0];
                          *(&v350 + 1) = v306.i64[0];
                          v351 = v305;
                          v352 = v298;
                          v188 = *v127;
                          v189 = v127[1];
                          v361 = *(v127 + 4);
                          v359 = v188;
                          v360 = v189;
                          outlined init with copy of Rope<BigString._Chunk>._Node?(&v359, &v321);
                          v190 = BigString._firstConstraintBreak(in:with:)(&v348, v297);
                          v320.i64[0] = v191;
                          v193 = v192;
                          v195 = v194;

                          outlined destroy of BigString(&v343);
                          v196 = v114 == v190 >> 10;
                          v144 = v313;
                          v145 = v284;
                          if (!v196)
                          {
                            v298 = v195;
                            v299.i64[0] = v190;
                            v305 = v193;
                            v306.i64[0] = v320.i64[0];
                          }
                        }

                        else
                        {
                          v137 = v127[1];
                          v343 = *v127;
                          v344 = v137;
                          v345 = v127[2];
                          if (v131 >> 10 < v320.i64[0])
                          {
                            goto LABEL_98;
                          }

                          *&v348 = v307;
                          *(&v348 + 1) = v291;
                          v349 = v292;
                          *&v350 = v131;
                          *(&v350 + 1) = v133;
                          v351 = v135;
                          v352 = v281.i64[0];
                          v138 = *v127;
                          v139 = v127[1];
                          v361 = *(v127 + 4);
                          v359 = v138;
                          v360 = v139;
                          outlined init with copy of Rope<BigString._Chunk>._Node?(&v359, &v321);
                          v140 = BigString._firstConstraintBreak(in:with:)(&v348, v297);
                          v298 = v141;
                          v299.i64[0] = v140;
                          v305 = v143;
                          v306.i64[0] = v142;

                          outlined destroy of BigString(&v343);
                          v144 = v313;
                          v145 = v284;
                        }
                      }

                      v297 = *(v145 + 16);
                      outlined destroy of AttributedString.Runs(v315);
                      v206 = v293;
                      v205 = v294;
                      v207 = v310;
                      outlined init with copy of FloatingPointRoundingRule?(v293, v294, v310, v113);
                      outlined init with copy of AttributedString.Runs(v205, v314);
                      v208 = v205;
                      v209 = v312;
                      outlined destroy of TermOfAddress?(v208, v144, v312);
                      v210 = v295;
                      outlined init with copy of FloatingPointRoundingRule?(v206, v295, v207, v113);
                      v211 = v279;
                      v212 = *(v210 + *(v279 + 36));

                      v213 = v210;
                      v214 = v313;
                      outlined destroy of TermOfAddress?(v213, v313, v209);
                      v215 = v206;
                      v216 = v296;
                      outlined init with copy of FloatingPointRoundingRule?(v215, v296, v207, v113);
                      v310 = *(v216 + *(v211 + 40));

                      result = outlined destroy of TermOfAddress?(v216, v214, v209);
                      v307 = v212;
                      if (!v212[2])
                      {
                        goto LABEL_92;
                      }

                      v217 = *v314;
                      AttributedString.Guts.findRun(at:)(v299.u64[0], v298, v321.i64);
                      v218 = *&v323[8];
                      v295 = v324.i64[0];
                      v296 = *&v323[16];
                      v294 = v324.i64[1];
                      v332[0] = v321;
                      v332[1] = v322;
                      v333 = *v323;
                      v316 = *(v311.i64[0] + 24);
                      RangeSet.ranges.getter();
                      v219 = v319;
                      v220 = RangeSet.Ranges.count.getter();
                      result = (v317)(v15, v219);
                      if (v220 >= 1)
                      {
                        v221 = 0;
                        v320.i64[0] = v299.i64[0] >> 10;
                        while (1)
                        {
                          if (__OFADD__(v221, v220))
                          {
                            goto LABEL_85;
                          }

                          v222 = (v221 + v220) / 2;
                          RangeSet.ranges.getter();
                          v223 = v319;
                          RangeSet.Ranges.subscript.getter();
                          result = (v317)(v15, v223);
                          if (v320.i64[0] >= v321.i64[0] >> 10)
                          {
                            v170 = *v323;
                            v224 = *v323 >> 10;
                            if (v320.i64[0] < *v323 >> 10)
                            {
                              v315 = *&v323[8];
                              v312 = v324.i64[0];
                              v313 = *&v323[16];
                              v225 = v310;
                              if (v310[2] == 1 && (specialized Set.contains(_:)(0, 1, v310) & 1) == 0)
                              {
                                goto LABEL_66;
                              }

                              AttributedString.Runs._lastOfMatchingRuns(with:comparing:)(v332, v307, v328);

                              v226 = *(v217 + 72);
                              v307 = *(v217 + 80);
                              v227 = *(v217 + 88);
                              *(&v292 + 1) = *(v217 + 96);
                              v293 = v227;
                              v291 = v328[1];
                              *&v292 = v328[0];
                              v311.i64[0] = v328[4];
                              v284 = v328[2];
                              swift_unknownObjectRetain();
                              v307 = specialized Rope.subscript.getter(v292, v291, v284, v226, v307, v293, *(&v292 + 1));
                              *(&v292 + 1) = v228;
                              v293 = v229;
                              swift_unknownObjectRelease();

                              v230 = (v311.i64[0] + v307);
                              if (__OFADD__(v311.i64[0], v307))
                              {
                                goto LABEL_96;
                              }

                              v231 = (v217 + 24);
                              v232 = *(v217 + 24);
                              v233 = *(v217 + 40);
                              v234 = *(v217 + 56);
                              v340 = v232;
                              v341 = v233;
                              v342 = v234;
                              v311.i64[0] = &v230[-(v218 >> 11)];
                              if (__OFSUB__(v230, v218 >> 11))
                              {
                                goto LABEL_97;
                              }

                              v307 = v232;
                              swift_unknownObjectRetain();
                              v235 = BigString.UTF8View.index(_:offsetBy:)();
                              v295 = v236;
                              v296 = v237;
                              v311.i64[0] = v238;
                              result = swift_unknownObjectRelease();
                              if (v235 >> 10 < v224)
                              {
                                v239 = *(v217 + 40);
                                v329 = *v231;
                                v330 = v239;
                                v331 = *(v217 + 56);
                                if (v235 >> 10 < v320.i64[0])
                                {
                                  goto LABEL_99;
                                }

                                v179 = v299.i64[0];
                                *&v334 = v299.i64[0];
                                *(&v334 + 1) = v306.i64[0];
                                *&v335 = v305;
                                *(&v335 + 1) = v298;
                                v336 = v235;
                                v337 = v295;
                                v338 = v311.i64[0];
                                v339 = v296;
                                v240 = *v231;
                                v241 = *(v217 + 40);
                                v364 = *(v217 + 56);
                                v362 = v240;
                                v363 = v241;
                                outlined init with copy of Rope<BigString._Chunk>._Node?(&v362, &v321);
                                v170 = BigString._firstConstraintBreak(in:with:)(&v334, v310);
                                v315 = v242;
                                v312 = v244;
                                v313 = v243;

                                outlined destroy of BigString(&v329);
                                v181 = *(v217 + 16);
                                v161 = v309;
LABEL_76:
                                result = outlined destroy of AttributedString.Runs(v314);
                                v171 = *v161;
                                v184 = v288;
                                v185 = v289;
                                v175 = v282;
                                v176 = v283;
                                v183 = v297;
                                v182 = v298;
                                v177 = v315;
                                v180 = v312;
                                v178 = v313;
                                if (v320.i64[0] < *v161 >> 10)
                                {
                                  goto LABEL_93;
                                }

                                goto LABEL_77;
                              }

                              v245 = *v231;
                              v246 = *(v217 + 56);
                              v330 = *(v217 + 40);
                              v331 = v246;
                              v329 = v245;
                              *&v334 = v299.i64[0];
                              *(&v334 + 1) = v306.i64[0];
                              *&v335 = v305;
                              *(&v335 + 1) = v298;
                              v336 = v170;
                              v337 = v315;
                              v338 = v313;
                              v339 = v312;
                              v247 = *v231;
                              v248 = *(v217 + 40);
                              v364 = *(v217 + 56);
                              v362 = v247;
                              v363 = v248;
                              outlined init with copy of Rope<BigString._Chunk>._Node?(&v362, &v321);
                              v249 = BigString._firstConstraintBreak(in:with:)(&v334, v310);
                              v251 = v250;
                              v311.i64[0] = v252;
                              v307 = v253;
                              outlined destroy of BigString(&v329);
                              if (v224 == v249 >> 10)
                              {
                                RangeSet.ranges.getter();
                                v224 = v319;
                                v225 = RangeSet.Ranges.count.getter();
                                (v317)(v15, v224);
                                v254 = v225 - 1;
                                if (!__OFSUB__(v225, 1))
                                {
                                  goto LABEL_68;
                                }

                                __break(1u);
LABEL_66:

                                v255 = *(v217 + 24);
                                v256 = *(v217 + 56);
                                v341 = *(v217 + 40);
                                v342 = v256;
                                v340 = v255;
                                *&v334 = v299.i64[0];
                                *(&v334 + 1) = v306.i64[0];
                                *&v335 = v305;
                                *(&v335 + 1) = v298;
                                v336 = v170;
                                v337 = v315;
                                v338 = v313;
                                v339 = v312;
                                v257 = *(v217 + 24);
                                *&v331 = *(v217 + 56);
                                v258 = *(v217 + 40);
                                v329 = v257;
                                v330 = v258;
                                outlined init with copy of Rope<BigString._Chunk>._Node?(&v329, &v321);
                                v259 = BigString._firstConstraintBreak(in:with:)(&v334, v225);
                                v311.i64[0] = v260;
                                v307 = v261;
                                v296 = v262;
                                outlined destroy of BigString(&v340);
                                if (v224 == v259 >> 10)
                                {
                                  RangeSet.ranges.getter();
                                  v263 = v319;
                                  v264 = RangeSet.Ranges.count.getter();
                                  result = (v317)(v15, v263);
                                  v254 = (v264 - 1);
                                  if (__OFSUB__(v264, 1))
                                  {
                                    goto LABEL_100;
                                  }

LABEL_68:
                                  v161 = v309;
                                  if (v222 == v254)
                                  {
                                  }

                                  else
                                  {
                                    RangeSet.ranges.getter();
                                    v266 = v319;
                                    RangeSet.Ranges.subscript.getter();

                                    (v317)(v15, v266);
                                    v315 = v321.i64[1];
                                    v170 = v321.i64[0];
                                    v312 = v322.i64[1];
                                    v313 = v322.i64[0];
                                  }

                                  v181 = *(v217 + 16);
LABEL_75:
                                  v179 = v299.i64[0];
                                  goto LABEL_76;
                                }

                                v181 = *(v217 + 16);
                                v170 = v259;
                                v315 = v311.i64[0];
                                v313 = v307;
                                v265 = v296;
                              }

                              else
                              {

                                v181 = *(v217 + 16);
                                v170 = v249;
                                v315 = v251;
                                v313 = v311.i64[0];
                                v265 = v307;
                              }

                              v312 = v265;
                              v161 = v309;
                              goto LABEL_75;
                            }

                            v221 = v222 + 1;
                            v222 = v220;
                          }

                          v220 = v222;
                          if (v221 >= v222)
                          {
                            goto LABEL_81;
                          }
                        }
                      }

                      goto LABEL_81;
                    }

                    v106 = v110 + 1;
                    v110 = v105;
                  }

                  v105 = v110;
                  if (v106 >= v110)
                  {
                    goto LABEL_80;
                  }
                }

                goto LABEL_84;
              }

              goto LABEL_80;
            }

            v63 = v64 + 1;
            v64 = v62;
          }

          v62 = v64;
          if (v63 >= v64)
          {
            goto LABEL_78;
          }
        }

        goto LABEL_82;
      }

LABEL_78:
      __break(1u);
    }

    else
    {
      v68 = v305;
      outlined init with copy of FloatingPointRoundingRule?(v54, v305, v55, v56);
      outlined init with copy of AttributedString.Runs(v68, v317);
      outlined destroy of TermOfAddress?(v68, v313, v58);
      v69 = *(v309 + 8);
      v314 = *(v309 + 16);
      v315 = v69;
      v305 = *(v309 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd, &_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMR);
      RangeSet.ranges.getter();
      v70 = v319;
      v71 = RangeSet.Ranges.count.getter();
      v72 = *v318.i64[0];
      result = (*v318.i64[0])(v15, v70);
      if (v71 >= 1)
      {
        v73 = 0;
        while (!__OFADD__(v73, v71))
        {
          v74 = (v73 + v71) / 2;
          RangeSet.ranges.getter();
          v75 = v319;
          RangeSet.Ranges.subscript.getter();
          result = v72(v15, v75);
          v76 = v321.i64[0] >> 10;
          if (v320.i64[0] >= v321.i64[0] >> 10)
          {
            v77 = *v323;
            if (v320.i64[0] < *v323 >> 10)
            {
              v318 = v321;
              v311 = v322;
              v146 = *v317;
              AttributedString.Guts.findRun(at:)(v307, v305, v321.i64);
              v147 = v321.u64[1];
              *&v319 = v321.i64[0];
              v148 = v322.i64[0];
              v299 = v324;
              v320 = *&v323[8];
              v149 = *(v146 + 72);
              v150 = *(v146 + 80);
              v151 = *(v146 + 88);
              v152 = *(v146 + 96);
              swift_unknownObjectRetain();
              v153 = specialized Rope.subscript.getter(v319, v147, v148, v149, v150, v151, v152);
              v155 = v154;
              v300 = v156;
              result = swift_unknownObjectRelease();
              v157 = v76 < v320.i64[0] >> 10;
              v158 = v153 + (v320.i64[0] >> 11);
              if (__OFADD__(v153, v320.i64[0] >> 11))
              {
                goto LABEL_87;
              }

              if ((v77 >> 11) < v158)
              {
                v158 = v77 >> 11;
              }

              v159 = *(v146 + 40);
              v348 = *(v146 + 24);
              v349 = v159;
              v350 = *(v146 + 56);
              v161 = v309;
              v160 = v310;
              if (__OFSUB__(v158, v307 >> 11))
              {
                goto LABEL_89;
              }

              swift_unknownObjectRetain();
              v162 = BigString.UTF8View.index(_:offsetBy:)();
              v287 = v163;
              v288 = v162;
              v285 = v165;
              v286 = v164;
              swift_unknownObjectRelease();
              v289 = v146;

              outlined destroy of AttributedString.Runs(v317);
              v166 = v306.i64[0];
              outlined init with copy of FloatingPointRoundingRule?(v293, v306.i64[0], v160, v316);
              v167 = *(v161 + 16);
              v334 = *v161;
              v335 = v167;
              v336 = *(v161 + 32);
              v290 = v155;

              v168 = v312;
              v169 = v313;
              specialized AttributedString.Runs.AttributesSlice1.index(after:)(&v334, v313, v312, &v321);
              result = outlined destroy of TermOfAddress?(v166, v169, v168);
              v170 = v321.i64[0];
              if (v321.i64[0] >> 10 < *v161 >> 10)
              {
                goto LABEL_91;
              }

              v171 = *v161;
              v172 = vdup_n_s32(v157);
              v173.i64[0] = v172.u32[0];
              v173.i64[1] = v172.u32[1];
              v174 = vcltzq_s64(vshlq_n_s64(v173, 0x3FuLL));
              v175 = vbslq_s8(v174, v299, v311);
              v176 = vbslq_s8(v174, v320, v318);
              v177 = v321.i64[1];
              v178 = v322.i64[0];
              v179 = v321.i64[0];
              v180 = v322.i64[1];
              v181 = *v323;
              v305 = v322.i64[0];
              v306.i64[0] = v321.i64[1];
              v182 = v322.u64[1];
              v183 = *v323;
              v184 = v288;
              v185 = v289;
LABEL_77:
              v267 = v290;
              v321.i64[0] = v290;
              v321.i64[1] = v300;
              v322 = v176;
              *v323 = v175;
              *&v323[16] = v184;
              v324.i64[0] = v287;
              v324.i64[1] = v286;
              v325 = v285;
              v326 = v185;
              v268 = *(v161 + 8);
              v319 = *(v161 + 24);
              v320 = v268;
              *v161 = v170;
              *(v161 + 8) = v177;
              *(v161 + 16) = v178;
              *(v161 + 24) = v180;
              *(v161 + 32) = v181;
              v269 = v308;
              _s10Foundation16AttributedStringV17_AttributeStorageVy5ValueQzSgxmcAA0bC3KeyRzs8SendableAGRQluigAA0D6ScopesO0A10AttributesV025AssumedFallbackInflectionD0O_Tt0g5Tm(v267, v301, v302, v303, v308);
              outlined destroy of AttributedString.Runs.Run(&v321);

              *(v269 + 3) = v171;
              v270 = v319;
              v269[2] = v320;
              v269[3] = v270;
              v271 = v305;
              v272 = v306.i64[0];
              *(v269 + 8) = v179;
              *(v269 + 9) = v272;
              *(v269 + 10) = v271;
              *(v269 + 11) = v182;
              *(v269 + 12) = v183;
              return result;
            }

            v73 = v74 + 1;
            v74 = v71;
          }

          v71 = v74;
          if (v73 >= v74)
          {
            goto LABEL_79;
          }
        }

        goto LABEL_83;
      }
    }

LABEL_79:
    __break(1u);
LABEL_80:
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
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized AttributedString.Runs.AttributesSlice1.Iterator.next()@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  *&v285 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMR);
  v284.i64[0] = *(v285 - 8);
  MEMORY[0x1EEE9AC00](v285);
  v5 = &v247 - v4;
  v280.i64[0] = type metadata accessor for AttributedString.Runs(0);
  MEMORY[0x1EEE9AC00](v280.i64[0]);
  v277 = &v247 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v281 = (&v247 - v8);
  MEMORY[0x1EEE9AC00](v9);
  v283 = (&v247 - v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v247 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v247 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V018LanguageIdentifierH0O_GMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V018LanguageIdentifierH0O_GMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v272 = (&v247 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v271 = &v247 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v270 = &v247 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v275.i64[0] = &v247 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v274 = &v247 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v273 = &v247 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v276 = &v247 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v247 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v278.i64[0] = &v247 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v247 - v37;
  v40 = (v2 + *(v39 + 44));
  v41 = *v40;
  v282 = v2;
  result = outlined init with copy of FloatingPointRoundingRule?(v2, &v247 - v37, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V018LanguageIdentifierH0O_GMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V018LanguageIdentifierH0O_GMR);
  if (*(v38 + 26) != 2)
  {
    v43 = *(v38 + 23);
    result = outlined destroy of TermOfAddress?(v38, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V018LanguageIdentifierG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V018LanguageIdentifierG0OGMR);
    v286.i64[0] = v41 >> 10;
    if (v41 >> 10 == v43 >> 10)
    {
      *a1 = xmmword_1812187D0;
      a1[1] = 0u;
      a1[2] = 0u;
      a1[3] = 0u;
      a1[4] = 0u;
      a1[5] = 0u;
      return result;
    }

    v279 = v41;
    v265 = a1;
    v44 = v282;
    v45 = v278.i64[0];
    outlined init with copy of FloatingPointRoundingRule?(v282, v278.i64[0], &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V018LanguageIdentifierH0O_GMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V018LanguageIdentifierH0O_GMR);
    outlined init with copy of AttributedString.Runs(v45, v16);
    outlined destroy of TermOfAddress?(v45, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V018LanguageIdentifierG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V018LanguageIdentifierG0OGMR);
    LOBYTE(v45) = v16[*(v280.i64[0] + 28)];
    outlined destroy of AttributedString.Runs(v16);
    v46 = (v284.i64[0] + 8);
    v284.i64[0] += 8;
    v266 = v40;
    if (v45)
    {
      outlined init with copy of FloatingPointRoundingRule?(v44, v33, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V018LanguageIdentifierH0O_GMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V018LanguageIdentifierH0O_GMR);
      outlined init with copy of AttributedString.Runs(v33, v13);
      outlined destroy of TermOfAddress?(v33, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V018LanguageIdentifierG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V018LanguageIdentifierG0OGMR);
      v47 = v40[2];
      v268 = v40[1];
      *&v269 = v47;
      *(&v269 + 1) = v40[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd, &_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMR);
      RangeSet.ranges.getter();
      v48 = v285;
      v49 = RangeSet.Ranges.count.getter();
      v283 = *v46;
      result = (v283)(v5, v48);
      if (v49 >= 1)
      {
        v50 = 0;
        while (!__OFADD__(v50, v49))
        {
          v51 = (v50 + v49) / 2;
          RangeSet.ranges.getter();
          v52 = v285;
          RangeSet.Ranges.subscript.getter();
          result = (v283)(v5, v52);
          v53 = v287.i64[0] >> 10;
          if (v286.i64[0] >= v287.i64[0] >> 10)
          {
            v54 = *v289;
            if (v286.i64[0] < *v289 >> 10)
            {
              v257 = v287;
              v256 = v288;
              v65 = *v13;
              AttributedString.Guts.findRun(at:)(v279, *(&v269 + 1), v287.i64);
              v267 = v287.i64[1];
              v276 = v287.i64[0];
              v255 = v290;
              v278 = *&v289[8];
              v66 = *(v65 + 72);
              v263 = *(v65 + 80);
              v264 = v288.i64[0];
              v67 = *(v65 + 88);
              v68 = *(v65 + 96);
              swift_unknownObjectRetain();
              v69 = specialized Rope.subscript.getter(v276, v267, v264, v66, v263, v67, v68);
              v71 = v70;
              v259 = v72;
              result = swift_unknownObjectRelease();
              v73 = v69 + (v278.i64[0] >> 11);
              if (__OFADD__(v69, v278.i64[0] >> 11))
              {
                goto LABEL_88;
              }

              LODWORD(v276) = v53 < v278.i64[0] >> 10;
              v267 = v71;
              if ((v54 >> 11) < v73)
              {
                v73 = v54 >> 11;
              }

              v74 = *(v65 + 40);
              v322 = *(v65 + 24);
              v323 = v74;
              v324 = *(v65 + 56);
              if (__OFSUB__(v73, v279 >> 11))
              {
                goto LABEL_90;
              }

              swift_unknownObjectRetain();
              v75 = BigString.UTF8View.index(_:offsetBy:)();
              v262 = v76;
              v263 = v75;
              v260 = v78;
              v261 = v77;
              swift_unknownObjectRelease();
              v264 = v65;

              outlined destroy of AttributedString.Runs(v13);
              v79 = v282;
              v80 = v273;
              outlined init with copy of FloatingPointRoundingRule?(v282, v273, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V018LanguageIdentifierH0O_GMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V018LanguageIdentifierH0O_GMR);
              v81 = v281;
              outlined init with copy of AttributedString.Runs(v80, v281);

              outlined destroy of TermOfAddress?(v80, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V018LanguageIdentifierG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V018LanguageIdentifierG0OGMR);
              v82 = v274;
              outlined init with copy of FloatingPointRoundingRule?(v79, v274, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V018LanguageIdentifierH0O_GMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V018LanguageIdentifierH0O_GMR);
              v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V018LanguageIdentifierG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V018LanguageIdentifierG0OGMR);
              v84 = *(v82 + *(v83 + 36));

              outlined destroy of TermOfAddress?(v82, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V018LanguageIdentifierG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V018LanguageIdentifierG0OGMR);
              v85 = v79;
              v86 = v275.i64[0];
              outlined init with copy of FloatingPointRoundingRule?(v85, v275.i64[0], &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V018LanguageIdentifierH0O_GMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V018LanguageIdentifierH0O_GMR);
              v253 = v83;
              v273 = *(v86 + *(v83 + 40));

              result = outlined destroy of TermOfAddress?(v86, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V018LanguageIdentifierG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V018LanguageIdentifierG0OGMR);
              v254 = v84;
              if (!v84[2])
              {
                goto LABEL_92;
              }

              v258 = *v81;
              AttributedString.Guts.findRun(at:)(v279, *(&v269 + 1), v287.i64);
              v251 = *&v289[16];
              v252 = *&v289[8];
              v249 = v290.i64[1];
              v250 = v290.i64[0];
              v312[0] = v287;
              v312[1] = v288;
              v313 = *v289;
              RangeSet.ranges.getter();
              v87 = v285;
              v88 = RangeSet.Ranges.count.getter();
              result = (v283)(v5, v87);
              v89 = v277;
              if (v88 >= 1)
              {
                v90 = 0;
                v91 = vdup_n_s32(v276);
                v92.i64[0] = v91.u32[0];
                v92.i64[1] = v91.u32[1];
                v93 = vcltzq_s64(vshlq_n_s64(v92, 0x3FuLL));
                v256 = vbslq_s8(v93, v255, v256);
                v257 = vbslq_s8(v93, v278, v257);
                while (!__OFADD__(v90, v88))
                {
                  v94 = (v90 + v88) / 2;
                  RangeSet.ranges.getter();
                  v95 = v285;
                  RangeSet.Ranges.subscript.getter();
                  v96 = v95;
                  v97 = v282;
                  result = (v283)(v5, v96);
                  if (v286.i64[0] >= v287.i64[0] >> 10)
                  {
                    v98 = *v289 >> 10;
                    if (v286.i64[0] < *v289 >> 10)
                    {
                      v278.i64[0] = *v289;
                      v99 = *&v289[8];
                      v100 = *&v289[16];
                      v101 = v290.i64[0];
                      v102 = v273;
                      if (*(v273 + 16) == 1 && (specialized Set.contains(_:)(0, 1, v273) & 1) == 0)
                      {

                        v175 = *(v258 + 24);
                        v176 = *(v258 + 56);
                        v320 = *(v258 + 40);
                        v321 = v176;
                        v319 = v175;
                        *&v314 = v279;
                        *(&v314 + 1) = v268;
                        v315 = v269;
                        *&v316 = v278.i64[0];
                        *(&v316 + 1) = v99;
                        v317 = v100;
                        v128 = v258;
                        v318 = v101;
                        v177 = *(v258 + 24);
                        *&v311 = *(v258 + 56);
                        v178 = *(v258 + 40);
                        v309 = v177;
                        v310 = v178;
                        outlined init with copy of Rope<BigString._Chunk>._Node?(&v309, &v287);
                        v123 = BigString._firstConstraintBreak(in:with:)(&v314, v102);
                        v276 = v179;
                        v274 = v181;
                        v275.i64[0] = v180;

                        outlined destroy of BigString(&v319);
                        v127 = v270;
                      }

                      else
                      {
                        v274 = v101;
                        v275.i64[0] = v100;
                        v276 = v99;
                        AttributedString.Runs._lastOfMatchingRuns(with:comparing:)(v312, v254, v293);

                        v103 = v258;
                        v105 = *(v258 + 72);
                        v104 = *(v258 + 80);
                        v106 = *(v258 + 88);
                        v247 = *(v258 + 96);
                        v248 = v106;
                        v107 = v293[0];
                        v108 = v293[1];
                        v254 = v104;
                        v255.i64[0] = v293[4];
                        v109 = v293[2];
                        swift_unknownObjectRetain();
                        v110 = specialized Rope.subscript.getter(v107, v108, v109, v105, v254, v248, v247);
                        swift_unknownObjectRelease();

                        if (__OFADD__(v255.i64[0], v110))
                        {
                          goto LABEL_96;
                        }

                        v112 = *(v103 + 24);
                        v111 = (v103 + 24);
                        v113 = v111[1];
                        v114 = v111[2];
                        v319 = v112;
                        v320 = v113;
                        v321 = v114;
                        if (__OFSUB__(v255.i64[0] + v110, v252 >> 11))
                        {
                          goto LABEL_97;
                        }

                        swift_unknownObjectRetain();
                        v115 = BigString.UTF8View.index(_:offsetBy:)();
                        v117 = v116;
                        v254 = v119;
                        v255.i64[0] = v118;
                        result = swift_unknownObjectRelease();
                        v89 = v277;
                        if (v115 >> 10 >= v98)
                        {
                          v164 = *v111;
                          v165 = v111[2];
                          v310 = v111[1];
                          v311 = v165;
                          v309 = v164;
                          *&v314 = v279;
                          *(&v314 + 1) = v268;
                          v315 = v269;
                          v166 = v278.i64[0];
                          *&v316 = v278.i64[0];
                          *(&v316 + 1) = v276;
                          v317 = v275.i64[0];
                          v318 = v274;
                          v167 = *v111;
                          v168 = v111[1];
                          v327 = *(v111 + 4);
                          v325 = v167;
                          v326 = v168;
                          outlined init with copy of Rope<BigString._Chunk>._Node?(&v325, &v287);
                          v169 = BigString._firstConstraintBreak(in:with:)(&v314, v273);
                          v286.i64[0] = v170;
                          v279 = v171;
                          v173 = v172;

                          outlined destroy of BigString(&v309);
                          v174 = v98 == v169 >> 10;
                          v123 = v166;
                          v127 = v270;
                          v128 = v258;
                          if (!v174)
                          {
                            v123 = v169;
                            v276 = v286.i64[0];
                            v274 = v173;
                            v275.i64[0] = v279;
                          }
                        }

                        else
                        {
                          v120 = v111[1];
                          v309 = *v111;
                          v310 = v120;
                          v311 = v111[2];
                          if (v115 >> 10 < v286.i64[0])
                          {
                            goto LABEL_100;
                          }

                          *&v314 = v279;
                          *(&v314 + 1) = v268;
                          v315 = v269;
                          *&v316 = v115;
                          *(&v316 + 1) = v117;
                          v317 = v255.i64[0];
                          v318 = v254;
                          v121 = *v111;
                          v122 = v111[1];
                          v327 = *(v111 + 4);
                          v325 = v121;
                          v326 = v122;
                          outlined init with copy of Rope<BigString._Chunk>._Node?(&v325, &v287);
                          v123 = BigString._firstConstraintBreak(in:with:)(&v314, v273);
                          v276 = v124;
                          v274 = v126;
                          v275.i64[0] = v125;

                          outlined destroy of BigString(&v309);
                          v127 = v270;
                          v128 = v258;
                        }
                      }

                      v278.i64[0] = v123;
                      v270 = *(v128 + 16);
                      outlined destroy of AttributedString.Runs(v281);
                      outlined init with copy of FloatingPointRoundingRule?(v97, v127, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V018LanguageIdentifierH0O_GMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V018LanguageIdentifierH0O_GMR);
                      outlined init with copy of AttributedString.Runs(v127, v89);
                      outlined destroy of TermOfAddress?(v127, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V018LanguageIdentifierG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V018LanguageIdentifierG0OGMR);
                      v182 = v271;
                      outlined init with copy of FloatingPointRoundingRule?(v97, v271, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V018LanguageIdentifierH0O_GMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V018LanguageIdentifierH0O_GMR);
                      v183 = v253;
                      v184 = v89;
                      v185 = *(v182 + *(v253 + 36));

                      outlined destroy of TermOfAddress?(v182, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V018LanguageIdentifierG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V018LanguageIdentifierG0OGMR);
                      v186 = v272;
                      outlined init with copy of FloatingPointRoundingRule?(v97, v272, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V018LanguageIdentifierH0O_GMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V018LanguageIdentifierH0O_GMR);
                      v282 = *(v186 + *(v183 + 40));

                      result = outlined destroy of TermOfAddress?(v186, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V018LanguageIdentifierG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V018LanguageIdentifierG0OGMR);
                      v272 = v185;
                      if (!v185[2])
                      {
                        goto LABEL_94;
                      }

                      v273 = *v184;
                      AttributedString.Guts.findRun(at:)(v278.u64[0], v274, v287.i64);
                      v271 = *&v289[8];
                      *&v269 = v290.i64[0];
                      *(&v269 + 1) = *&v289[16];
                      v268 = v290.i64[1];
                      v298[0] = v287;
                      v298[1] = v288;
                      v299 = *v289;
                      v286.i64[0] = *(v280.i64[0] + 24);
                      RangeSet.ranges.getter();
                      v187 = v285;
                      v188 = RangeSet.Ranges.count.getter();
                      result = (v283)(v5, v187);
                      if (v188 >= 1)
                      {
                        v189 = 0;
                        v190 = v278.i64[0] >> 10;
                        while (1)
                        {
                          if (__OFADD__(v189, v188))
                          {
                            goto LABEL_87;
                          }

                          v191 = (v189 + v188) / 2;
                          RangeSet.ranges.getter();
                          v192 = v285;
                          RangeSet.Ranges.subscript.getter();
                          result = (v283)(v5, v192);
                          if (v190 >= v287.i64[0] >> 10)
                          {
                            v151 = *v289;
                            v193 = *v289 >> 10;
                            if (v190 < *v289 >> 10)
                            {
                              v281 = *&v289[8];
                              v279 = v290.i64[0];
                              v280.i64[0] = *&v289[16];
                              if (*(v282 + 16) == 1 && (specialized Set.contains(_:)(0, 1, v282) & 1) == 0)
                              {

                                v226 = v273;
                                v227 = *(v273 + 24);
                                v228 = *(v273 + 56);
                                v307 = *(v273 + 40);
                                v308 = v228;
                                v306 = v227;
                                *&v300 = v278.i64[0];
                                *(&v300 + 1) = v276;
                                *&v301 = v275.i64[0];
                                *(&v301 + 1) = v274;
                                v302 = v151;
                                v303 = v281;
                                v304 = v280.i64[0];
                                v305 = v279;
                                v229 = *(v273 + 24);
                                *&v297 = *(v273 + 56);
                                v230 = *(v273 + 40);
                                v295 = v229;
                                v296 = v230;
                                outlined init with copy of Rope<BigString._Chunk>._Node?(&v295, &v287);
                                v231 = BigString._firstConstraintBreak(in:with:)(&v300, v282);
                                v271 = v233;
                                v272 = v232;
                                *(&v269 + 1) = v234;
                                outlined destroy of BigString(&v306);
                                if (v193 == v231 >> 10)
                                {
                                  RangeSet.ranges.getter();
                                  v235 = v285;
                                  v236 = RangeSet.Ranges.count.getter();
                                  result = (v283)(v5, v235);
                                  if (__OFSUB__(v236, 1))
                                  {
                                    goto LABEL_103;
                                  }

                                  if (v191 == v236 - 1)
                                  {
                                  }

                                  else
                                  {
                                    RangeSet.ranges.getter();
                                    v238 = v285;
                                    RangeSet.Ranges.subscript.getter();

                                    (v283)(v5, v238);
                                    v281 = v287.i64[1];
                                    v151 = v287.i64[0];
                                    v279 = v288.u64[1];
                                    v280.i64[0] = v288.i64[0];
                                  }

                                  v162 = *(v273 + 16);
                                  goto LABEL_77;
                                }

                                v151 = v231;
                                v162 = *(v226 + 16);
                              }

                              else
                              {
                                AttributedString.Runs._lastOfMatchingRuns(with:comparing:)(v298, v272, v294);

                                v194 = v273;
                                v195 = *(v273 + 72);
                                v272 = *(v273 + 80);
                                v196 = *(v273 + 96);
                                v258 = *(v273 + 88);
                                v254 = v294[0];
                                v255.i64[0] = v196;
                                v197 = v294[4];
                                v252 = v294[2];
                                v253 = v294[1];
                                swift_unknownObjectRetain();
                                v272 = specialized Rope.subscript.getter(v254, v253, v252, v195, v272, v258, v255.i64[0]);
                                v255.i64[0] = v198;
                                v258 = v199;
                                swift_unknownObjectRelease();

                                v200 = v272 + v197;
                                if (__OFADD__(v197, v272))
                                {
                                  goto LABEL_98;
                                }

                                v201 = (v194 + 24);
                                v202 = *(v194 + 24);
                                v203 = *(v194 + 40);
                                v204 = *(v194 + 56);
                                v306 = v202;
                                v307 = v203;
                                v308 = v204;
                                v272 = &v200[-(v271 >> 11)];
                                if (__OFSUB__(v200, v271 >> 11))
                                {
                                  goto LABEL_99;
                                }

                                v258 = v202;
                                swift_unknownObjectRetain();
                                v205 = BigString.UTF8View.index(_:offsetBy:)();
                                v271 = v207;
                                v272 = v206;
                                *(&v269 + 1) = v208;
                                result = swift_unknownObjectRelease();
                                if (v205 >> 10 < v193)
                                {
                                  v209 = v201[1];
                                  v295 = *v201;
                                  v296 = v209;
                                  v297 = v201[2];
                                  v152 = v265;
                                  v143 = v266;
                                  v150 = v259;
                                  if (v205 >> 10 < v190)
                                  {
                                    goto LABEL_101;
                                  }

                                  *&v300 = v278.i64[0];
                                  *(&v300 + 1) = v276;
                                  *&v301 = v275.i64[0];
                                  *(&v301 + 1) = v274;
                                  v302 = v205;
                                  v303 = v272;
                                  v304 = v271;
                                  v305 = *(&v269 + 1);
                                  v210 = *v201;
                                  v211 = v201[1];
                                  v330 = *(v201 + 4);
                                  v328 = v210;
                                  v329 = v211;
                                  outlined init with copy of Rope<BigString._Chunk>._Node?(&v328, &v287);
                                  v151 = BigString._firstConstraintBreak(in:with:)(&v300, v282);
                                  v281 = v212;
                                  v279 = v214;
                                  v280.i64[0] = v213;

                                  outlined destroy of BigString(&v295);
                                  v162 = *(v273 + 16);
LABEL_78:
                                  result = outlined destroy of AttributedString.Runs(v277);
                                  v153 = *v143;
                                  v157 = v256;
                                  v158 = v257;
                                  v163 = v270;
                                  v159 = v281;
                                  v161 = v279;
                                  v160 = v280.i64[0];
                                  if (v190 < *v143 >> 10)
                                  {
                                    goto LABEL_95;
                                  }

                                  goto LABEL_79;
                                }

                                v215 = *v201;
                                v216 = v201[2];
                                v296 = v201[1];
                                v297 = v216;
                                v295 = v215;
                                *&v300 = v278.i64[0];
                                *(&v300 + 1) = v276;
                                *&v301 = v275.i64[0];
                                *(&v301 + 1) = v274;
                                v302 = v151;
                                v303 = v281;
                                v304 = v280.i64[0];
                                v305 = v279;
                                v217 = *v201;
                                v218 = v201[1];
                                v330 = *(v201 + 4);
                                v328 = v217;
                                v329 = v218;
                                outlined init with copy of Rope<BigString._Chunk>._Node?(&v328, &v287);
                                v219 = BigString._firstConstraintBreak(in:with:)(&v300, v282);
                                v271 = v221;
                                v272 = v220;
                                *(&v269 + 1) = v222;
                                outlined destroy of BigString(&v295);
                                if (v193 == v219 >> 10)
                                {
                                  RangeSet.ranges.getter();
                                  v223 = v285;
                                  v224 = RangeSet.Ranges.count.getter();
                                  result = (v283)(v5, v223);
                                  if (__OFSUB__(v224, 1))
                                  {
                                    goto LABEL_102;
                                  }

                                  v225 = v273;
                                  if (v191 == v224 - 1)
                                  {
                                  }

                                  else
                                  {
                                    RangeSet.ranges.getter();
                                    v237 = v285;
                                    RangeSet.Ranges.subscript.getter();

                                    (v283)(v5, v237);
                                    v281 = v287.i64[1];
                                    v151 = v287.i64[0];
                                    v279 = v288.u64[1];
                                    v280.i64[0] = v288.i64[0];
                                  }

                                  v162 = *(v225 + 16);
                                  goto LABEL_77;
                                }

                                v151 = v219;
                                v162 = *(v273 + 16);
                              }

                              v281 = v272;
                              v279 = *(&v269 + 1);
                              v280.i64[0] = v271;
LABEL_77:
                              v152 = v265;
                              v143 = v266;
                              v150 = v259;
                              goto LABEL_78;
                            }

                            v189 = v191 + 1;
                            v191 = v188;
                          }

                          v188 = v191;
                          if (v189 >= v191)
                          {
                            goto LABEL_83;
                          }
                        }
                      }

                      goto LABEL_83;
                    }

                    v90 = v94 + 1;
                    v94 = v88;
                  }

                  v88 = v94;
                  if (v90 >= v94)
                  {
                    goto LABEL_82;
                  }
                }

                goto LABEL_86;
              }

              goto LABEL_82;
            }

            v50 = v51 + 1;
            v51 = v49;
          }

          v49 = v51;
          if (v50 >= v51)
          {
            goto LABEL_80;
          }
        }

        goto LABEL_84;
      }

LABEL_80:
      __break(1u);
    }

    else
    {
      v55 = v276;
      outlined init with copy of FloatingPointRoundingRule?(v44, v276, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V018LanguageIdentifierH0O_GMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V018LanguageIdentifierH0O_GMR);
      outlined init with copy of AttributedString.Runs(v55, v283);
      outlined destroy of TermOfAddress?(v55, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V018LanguageIdentifierG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V018LanguageIdentifierG0OGMR);
      v56 = v40[2];
      v281 = v40[1];
      v276 = v40[3];
      v277 = v56;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd, &_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMR);
      RangeSet.ranges.getter();
      v57 = v285;
      v58 = RangeSet.Ranges.count.getter();
      v59 = *v46;
      result = (*v46)(v5, v57);
      if (v58 >= 1)
      {
        v60 = 0;
        while (!__OFADD__(v60, v58))
        {
          v61 = (v60 + v58) / 2;
          RangeSet.ranges.getter();
          v62 = v285;
          RangeSet.Ranges.subscript.getter();
          result = (v59)(v5, v62);
          v63 = v287.i64[0] >> 10;
          if (v286.i64[0] >= v287.i64[0] >> 10)
          {
            v64 = *v289;
            if (v286.i64[0] < *v289 >> 10)
            {
              v284 = v287;
              v280 = v288;
              v129 = *v283;
              AttributedString.Guts.findRun(at:)(v279, v276, v287.i64);
              v130 = v287.u64[1];
              *&v285 = v287.i64[0];
              v131 = v288.i64[0];
              v275 = v290;
              v286 = *&v289[8];
              v132 = *(v129 + 72);
              v133 = *(v129 + 80);
              v135 = *(v129 + 88);
              v134 = *(v129 + 96);
              swift_unknownObjectRetain();
              v136 = specialized Rope.subscript.getter(v285, v130, v131, v132, v133, v135, v134);
              v138 = v137;
              v140 = v139;
              result = swift_unknownObjectRelease();
              v141 = v136 + (v286.i64[0] >> 11);
              if (__OFADD__(v136, v286.i64[0] >> 11))
              {
                goto LABEL_89;
              }

              LODWORD(v285) = v63 < v286.i64[0] >> 10;
              if ((v64 >> 11) < v141)
              {
                v141 = v64 >> 11;
              }

              v142 = *(v129 + 40);
              v314 = *(v129 + 24);
              v315 = v142;
              v316 = *(v129 + 56);
              v143 = v266;
              if (__OFSUB__(v141, v279 >> 11))
              {
                goto LABEL_91;
              }

              swift_unknownObjectRetain();
              v144 = BigString.UTF8View.index(_:offsetBy:)();
              v262 = v145;
              v263 = v144;
              v260 = v147;
              v261 = v146;
              swift_unknownObjectRelease();
              v264 = v129;

              outlined destroy of AttributedString.Runs(v283);
              v148 = v278.i64[0];
              outlined init with copy of FloatingPointRoundingRule?(v282, v278.i64[0], &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V018LanguageIdentifierH0O_GMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V018LanguageIdentifierH0O_GMR);
              v149 = *(v143 + 1);
              v300 = *v143;
              v301 = v149;
              v302 = v143[4];
              v267 = v138;

              v150 = v140;

              specialized AttributedString.Runs.AttributesSlice1.index(after:)(&v300, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V018LanguageIdentifierG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V018LanguageIdentifierG0OGMR, &v287);
              result = outlined destroy of TermOfAddress?(v148, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V018LanguageIdentifierG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V018LanguageIdentifierG0OGMR);
              v151 = v287.i64[0];
              v152 = v265;
              if (v287.i64[0] >> 10 < *v143 >> 10)
              {
                goto LABEL_93;
              }

              v153 = *v143;
              v154 = vdup_n_s32(v285);
              v155.i64[0] = v154.u32[0];
              v155.i64[1] = v154.u32[1];
              v156 = vcltzq_s64(vshlq_n_s64(v155, 0x3FuLL));
              v157 = vbslq_s8(v156, v275, v280);
              v158 = vbslq_s8(v156, v286, v284);
              v159 = v287.i64[1];
              v160 = v288.i64[0];
              v278.i64[0] = v287.i64[0];
              v161 = v288.u64[1];
              v162 = *v289;
              v276 = v287.i64[1];
              v274 = v288.u64[1];
              v275.i64[0] = v288.i64[0];
              v163 = *v289;
LABEL_79:
              v239 = v267;
              v287.i64[0] = v267;
              v287.i64[1] = v150;
              v288 = v158;
              *v289 = v157;
              *&v289[16] = v263;
              v290.i64[0] = v262;
              v290.i64[1] = v261;
              v291 = v260;
              v292 = v264;
              v240 = *(v143 + 1);
              v285 = *(v143 + 3);
              v286 = v240;
              *v143 = v151;
              v143[1] = v159;
              v143[2] = v160;
              v143[3] = v161;
              v143[4] = v162;
              v241 = _s10Foundation16AttributedStringV17_AttributeStorageVy5ValueQzSgxmcAA0bC3KeyRzs8SendableAGRQluigAA0D6ScopesO0A10AttributesV018LanguageIdentifierD0O_Tt0g5Tf4x_n(v239);
              v243 = v242;
              outlined destroy of AttributedString.Runs.Run(&v287);

              *v152 = v241;
              *(v152 + 1) = v243;
              *(v152 + 2) = v153;
              v244 = v286;
              *(v152 + 40) = v285;
              *(v152 + 24) = v244;
              v245 = v276;
              *(v152 + 7) = v278.i64[0];
              *(v152 + 8) = v245;
              v246 = v274;
              *(v152 + 9) = v275.i64[0];
              *(v152 + 10) = v246;
              *(v152 + 11) = v163;
              return result;
            }

            v60 = v61 + 1;
            v61 = v58;
          }

          v58 = v61;
          if (v60 >= v61)
          {
            goto LABEL_81;
          }
        }

        goto LABEL_85;
      }
    }

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
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
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
  }

  __break(1u);
  return result;
}

uint64_t specialized AttributedString.Runs.AttributesSlice1.index(after:)@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, unint64_t *a4@<X8>)
{
  v263 = a3;
  v6 = v4;
  v235 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMR);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v219 - v10;
  v12 = *a1;
  v13 = a1[1];
  v15 = a1[2];
  v14 = a1[3];
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a2, v263);
  *(&v256 + 1) = *&v6[*(result + 36)];
  v250 = *(*(&v256 + 1) + 16);
  if (!v250)
  {
    goto LABEL_174;
  }

  v247 = *&v6[*(result + 40)];
  v17 = v11;
  v18 = v13;
  v19 = *v6;
  v243 = v14;
  v244 = v12;
  v239 = v18;
  v240 = v15;
  AttributedString.Guts.findRun(at:)(v12, v14, &v282);
  v245 = v284;
  v246 = v283;
  v20 = v285;
  v241 = v282;
  v242 = v286;
  v230 = v288;
  v231 = v287;
  v228 = v289;
  v229 = *(&v288 + 1);
  v21 = *(type metadata accessor for AttributedString.Runs(0) + 24);
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd, &_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMR);
  v262 = v21;
  RangeSet.ranges.getter();
  v22 = RangeSet.Ranges.count.getter();
  v23 = *(v9 + 8);
  v259 = v17;
  v260 = v9 + 8;
  v263 = v23;
  result = (v23)(v17, v8);
  if (v22 < 1)
  {
LABEL_167:
    __break(1u);
    goto LABEL_168;
  }

  v24 = 0;
  v25 = v244 >> 10;
  v264 = v6;
  while (1)
  {
    if (__OFADD__(v24, v22))
    {
      __break(1u);
LABEL_170:
      __break(1u);
      goto LABEL_171;
    }

    v15 = (v24 + v22) / 2;
    v26 = v259;
    RangeSet.ranges.getter();
    RangeSet.Ranges.subscript.getter();
    result = (v263)(v26, v8);
    if (v25 >= v282 >> 10)
    {
      break;
    }

LABEL_4:
    v22 = v15;
    if (v24 >= v15)
    {
      goto LABEL_167;
    }
  }

  v27 = v286;
  if (v25 >= v286 >> 10)
  {
    v24 = v15 + 1;
    v15 = v22;
    goto LABEL_4;
  }

  v238 = v286 >> 10;
  v236 = v287;
  v237 = v288;
  v28 = v247;
  v29 = *(v247 + 16);
  v249 = v19;
  v232 = v286;
  v233 = v25;
  v225 = v8;
  if (v29 == 1)
  {
    result = specialized Set.contains(_:)(0, 1, v247);
    if ((result & 1) == 0)
    {
      v32 = v19[3];
      v257 = v19[4];
      v258 = v32;
      v33 = v19[5];
      *&v256 = v19[6];
      *(&v256 + 1) = v33;
      v34 = v19[7];
      v254 = v19[8];
      v255 = v34;
      v35 = v243;
      v36 = v244;
      *&v295 = v244;
      *(&v295 + 1) = v239;
      *&v296 = v240;
      *(&v296 + 1) = v243;
      *&v297 = v27;
      v38 = v236;
      v37 = v237;
      *(&v297 + 1) = v236;
      v39 = *(&v237 + 1);
      v298 = v237;
      swift_unknownObjectRetain();
      v40 = specialized Set.contains(_:)(0, 0, v28);
      v41 = v37;
      v42 = v36;
      v43 = v258;
      if (v40)
      {
        *&v315 = v258;
        *(&v315 + 1) = v257;
        *&v316 = *(&v256 + 1);
        *(&v316 + 1) = v256;
        *&v317 = v255;
        *(&v317 + 1) = v254;
        BigString.UTF8View.subscript.getter();
        v270 = v42;
        v271 = v239;
        v272 = v240;
        v273 = v35;
        v274 = v42;
        v275 = v239;
        v276 = v240;
        v277 = v35;
        specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v270, &v282);
        result = outlined destroy of BigSubstring.UTF8View(&v300);
        v27 = v232;
        v38 = v236;
        v39 = *(&v237 + 1);
        v41 = v237;
        if (*(&v288 + 1) != 2)
        {
          v27 = v286;
          if (v25 > v286 >> 10)
          {
            goto LABEL_187;
          }

          v38 = v287;
          v39 = *(&v288 + 1);
          v41 = v288;
          v35 = v243;
        }
      }

      *&v265 = v42;
      *(&v265 + 1) = v239;
      *&v266 = v240;
      *(&v266 + 1) = v35;
      *&v267 = v27;
      *(&v267 + 1) = v38;
      v252 = v41;
      v253 = v38;
      *&v268 = v41;
      *(&v268 + 1) = v39;
      v44 = v247;
      if (specialized Collection<>._containsScalarConstraint.getter(v247))
      {
        v45 = v44 + 56;
        v46 = 1 << *(v44 + 32);
        v47 = -1;
        if (v46 < 64)
        {
          v47 = ~(-1 << v46);
        }

        v48 = v47 & *(v44 + 56);
        v49 = (v46 + 63) >> 6;

        v50 = 0;
        v251 = MEMORY[0x1E69E7CC0];
        while (v48)
        {
LABEL_28:
          v52 = __clz(__rbit64(v48));
          v48 &= v48 - 1;
          v53 = (*(v247 + 48) + ((v50 << 10) | (16 * v52)));
          v54 = v53[1];
          if (v54 >= 2)
          {
            result = specialized Collection.first.getter(*v53, v54);
            if ((result & 0x100000000) == 0)
            {
              v250 = result;
              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v251 + 2) + 1, 1, v251);
                v251 = result;
              }

              v55 = v250;
              v57 = *(v251 + 2);
              v56 = *(v251 + 3);
              v58 = v57 + 1;
              if (v57 >= v56 >> 1)
              {
                v248 = v57 + 1;
                result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v57 + 1, 1, v251);
                v58 = v248;
                v251 = result;
                v55 = v250;
              }

              v59 = v251;
              *(v251 + 2) = v58;
              *&v59[4 * v57 + 32] = v55;
            }
          }
        }

        while (1)
        {
          v51 = v50 + 1;
          if (__OFADD__(v50, 1))
          {
            goto LABEL_172;
          }

          if (v51 >= v49)
          {

            v310 = v43;
            v311 = v257;
            *&v312 = *(&v256 + 1);
            *(&v312 + 1) = v256;
            v313 = v255;
            v314 = v254;
            BigString.UnicodeScalarView.subscript.getter();
            v183 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v251);
            v185 = v184;
            v187 = v186;
            v189 = v188;

            swift_unknownObjectRelease();
            result = outlined destroy of BigSubstring.UnicodeScalarView(&v282);
            if (v189 == 2)
            {
              goto LABEL_137;
            }

            if (v233 <= v183 >> 10)
            {
              v27 = v183;
              v252 = v187;
              v253 = v185;
              v39 = v189;
              goto LABEL_137;
            }

            goto LABEL_188;
          }

          v48 = *(v45 + 8 * v51);
          ++v50;
          if (v48)
          {
            v50 = v51;
            goto LABEL_28;
          }
        }
      }

      result = swift_unknownObjectRelease();
LABEL_137:
      if (v238 == v27 >> 10)
      {
        v146 = v259;
        RangeSet.ranges.getter();
        v177 = v225;
        v190 = RangeSet.Ranges.count.getter();
        result = (v263)(v146, v177);
        v179 = v190 - 1;
        v149 = v235;
        if (__OFSUB__(v190, 1))
        {
LABEL_184:
          __break(1u);
          goto LABEL_185;
        }

LABEL_139:
        v191 = v249;
        if (v15 == v179)
        {
          v192 = v249[2];
          v194 = v236;
          v193 = v237;
          *v149 = v232;
          v149[1] = v194;
          *(v149 + 1) = __PAIR128__(*(&v237 + 1), v193);
        }

        else
        {
          RangeSet.ranges.getter();
          RangeSet.Ranges.subscript.getter();
          result = (v263)(v146, v177);
          v192 = v191[2];
          v195 = v279;
          *v149 = v278;
          *(v149 + 1) = v195;
        }

        v149[4] = v192;
        return result;
      }

      v180 = v249[2];
      v181 = v235;
      v196 = v252;
      v197 = v253;
      *v235 = v27;
      v181[1] = v197;
      v181[2] = v196;
      v181[3] = v39;
LABEL_166:
      v181[4] = v180;
      return result;
    }
  }

  v30 = *(v264 + 15);
  if (v20 == v30)
  {
    v31 = *(v264 + 22);
    if (*(v264 + 26) == 2)
    {
      if (v31 != 2)
      {
LABEL_89:
        v234 = v241;
        goto LABEL_95;
      }
    }

    else if (v31 == 2 || (*(v264 + 19) ^ *(v264 + 23)) >= 1024)
    {
      goto LABEL_89;
    }
  }

  if (v20 >= v30)
  {
    goto LABEL_180;
  }

  v226 = *(v264 + 15);
  v60 = v19[9];
  v61 = v19[10];
  v62 = v19[11];
  v63 = v19[12];
  v258 = v20;
  swift_unknownObjectRetain();
  v64 = v241;
  v65 = v245;
  v66 = v246;
  specialized Rope.subscript.getter(v241, v246, v245, v60, v61, v62, v63);
  v248 = v67;
  v223 = v68;
  result = swift_unknownObjectRelease();
  v69 = v19[9];
  v70 = v258 + 1;
  v224 = *(&v256 + 1) + 40;
  v71 = v19[12];
  v282 = v64;
  v283 = v66;
  v284 = v65;
  while (2)
  {
    if (v64 != v71)
    {
      goto LABEL_176;
    }

    v245 = v65;
    v234 = v71;
    if (v65)
    {
      v72 = *(v65 + 24 * ((v246 >> ((4 * *(v65 + 18) + 8) & 0x3C)) & 0xF) + 24);
      v73 = v242 + v72;
      if (__OFADD__(v242, v72))
      {
        goto LABEL_181;
      }

      v74 = v264;
      if (v69)
      {
        v75 = v70;
        result = swift_unknownObjectRetain();
        goto LABEL_46;
      }

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

    v75 = v70;
    swift_unknownObjectRetain();
    v76 = specialized Rope._Node.subscript.getter(v246, v69);

    v77 = __OFADD__(v242, v76);
    v73 = v242 + v76;
    if (v77)
    {
      goto LABEL_183;
    }

    v74 = v264;
    if (!v69)
    {
      goto LABEL_175;
    }

LABEL_46:
    if (v246 >= (((-15 << ((4 * *(v69 + 18) + 8) & 0x3C)) - 1) & *(v69 + 18) | (*(v69 + 16) << ((4 * *(v69 + 18) + 8) & 0x3C))))
    {
      goto LABEL_175;
    }

    v222 = v73;
    if (v245)
    {
      v78 = (4 * *(v245 + 18) + 8) & 0x3C;
      v79 = ((v246 >> v78) & 0xF) + 1;
      if (v79 < *(v245 + 16))
      {
        result = swift_unknownObjectRelease();
        v80 = (v79 << v78) | ((-15 << v78) - 1) & v246;
        goto LABEL_52;
      }
    }

    if (specialized Rope._Node.formSuccessor(of:)(&v282, v69))
    {
      result = swift_unknownObjectRelease();
      v80 = v283;
LABEL_52:
      v81 = v284;
      v82 = v282;
    }

    else
    {
      v83 = *(v69 + 18);
      v84 = *(v69 + 16);
      result = swift_unknownObjectRelease();
      v81 = 0;
      v80 = ((-15 << ((4 * v83 + 8) & 0x3C)) - 1) & v83 | (v84 << ((4 * v83 + 8) & 0x3C));
      v82 = v234;
    }

    if (v226 < v75)
    {
      break;
    }

    if (v75 != v226)
    {
      goto LABEL_61;
    }

    v85 = *(v74 + 22);
    if (*(v74 + 26) == 2)
    {
      if (v85 == 2)
      {
        break;
      }

      goto LABEL_61;
    }

    if (v85 == 2 || (*(v74 + 19) ^ *(v74 + 23)) >= 1024)
    {
LABEL_61:
      if (v82 != v19[12])
      {
        goto LABEL_177;
      }

      v220 = v81;
      v221 = v75;
      v241 = v82;
      v219 = v80;
      if (v81)
      {
        v86 = v81 + 24 * ((v80 >> ((4 * *(v81 + 18) + 8) & 0x3C)) & 0xF);
        v87 = *(v86 + 40);
        v253 = *(v86 + 32);

        v227 = v87;
      }

      else
      {
        v88 = v19[9];
        swift_unknownObjectRetain();
        specialized Rope._Node.subscript.getter(v80, v88);
        v253 = v89;
        v227 = v90;
        result = swift_unknownObjectRelease();
      }

      v91 = 0;
      v92 = v224;
      v93 = v248;
      do
      {
        if (v91 >= *(*(&v256 + 1) + 16))
        {
          goto LABEL_170;
        }

        v257 = v92;
        v258 = v91;
        v95 = *(v92 - 1);
        v94 = *v92;
        if (*(v93 + 16))
        {

          v96 = specialized __RawDictionaryStorage.find<A>(_:)(v95, v94);
          if (v97)
          {
            outlined init with copy of AttributedString._AttributeValue(*(v93 + 56) + 72 * v96, &v300);
          }

          else
          {
            v304 = 0;
            v302 = 0u;
            v303 = 0u;
            v300 = 0u;
            v301 = 0u;
          }
        }

        else
        {
          v304 = 0;
          v302 = 0u;
          v303 = 0u;
          v300 = 0u;
          v301 = 0u;
        }

        if (v253[2])
        {
          v98 = v19;
          v99 = v253;
          v100 = specialized __RawDictionaryStorage.find<A>(_:)(v95, v94);
          v102 = v101;

          if (v102)
          {
            outlined init with copy of AttributedString._AttributeValue(v99[7] + 72 * v100, &v295);
          }

          else
          {
            v299 = 0;
            v297 = 0u;
            v298 = 0u;
            v295 = 0u;
            v296 = 0u;
          }

          v19 = v98;
        }

        else
        {

          v299 = 0;
          v297 = 0u;
          v298 = 0u;
          v295 = 0u;
          v296 = 0u;
        }

        outlined init with copy of FloatingPointRoundingRule?(&v300, &v282, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
        outlined init with copy of FloatingPointRoundingRule?(&v295, &v290, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
        if (v285)
        {
          outlined init with copy of FloatingPointRoundingRule?(&v282, &v270, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
          if (!*(&v291 + 1))
          {
            outlined destroy of TermOfAddress?(&v295, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
            outlined destroy of TermOfAddress?(&v300, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
            outlined destroy of AttributedString._AttributeValue(&v270);
LABEL_91:
            outlined destroy of TermOfAddress?(&v282, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMR);
LABEL_93:

            goto LABEL_94;
          }

          v267 = v292;
          v268 = v293;
          v269 = v294;
          v265 = v290;
          v266 = v291;
          v103 = v273;
          v252 = v274;
          v251 = __swift_project_boxed_opaque_existential_1(&v270, v273);
          v104 = __swift_project_boxed_opaque_existential_1(&v265, *(&v266 + 1));
          *&v256 = &v219;
          v105 = *(v103 - 8);
          MEMORY[0x1EEE9AC00](v104);
          v107 = &v219 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
          v255 = &v219;
          v109 = MEMORY[0x1EEE9AC00](v108);
          (*(v111 + 16))(&v219 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0), v109);
          v112 = type metadata accessor for Optional();
          v254 = &v219;
          v113 = *(v112 - 8);
          MEMORY[0x1EEE9AC00](v112);
          v115 = &v219 - v114;
          if ((swift_dynamicCast() & 1) == 0)
          {
            outlined destroy of TermOfAddress?(&v295, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
            outlined destroy of TermOfAddress?(&v300, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
            (*(v105 + 56))(v115, 1, 1, v103);
            (*(v113 + 8))(v115, v112);
            outlined destroy of AttributedString._AttributeValue(&v265);
            outlined destroy of AttributedString._AttributeValue(&v270);
            outlined destroy of TermOfAddress?(&v282, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
            v19 = v249;
            goto LABEL_93;
          }

          (*(v105 + 56))(v115, 0, 1, v103);
          (*(v105 + 32))(v107, v115, v103);
          v116 = dispatch thunk of static Equatable.== infix(_:_:)();
          (*(v105 + 8))(v107, v103);
          outlined destroy of TermOfAddress?(&v295, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
          outlined destroy of TermOfAddress?(&v300, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
          outlined destroy of AttributedString._AttributeValue(&v265);
          outlined destroy of AttributedString._AttributeValue(&v270);
          result = outlined destroy of TermOfAddress?(&v282, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
          v93 = v248;
          v19 = v249;
          if ((v116 & 1) == 0)
          {
            goto LABEL_93;
          }
        }

        else
        {
          outlined destroy of TermOfAddress?(&v295, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
          outlined destroy of TermOfAddress?(&v300, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
          if (*(&v291 + 1))
          {
            goto LABEL_91;
          }

          result = outlined destroy of TermOfAddress?(&v282, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
        }

        v91 = (v258 + 1);
        v92 = v257 + 2;
      }

      while (v250 != (v258 + 1));

      v69 = v19[9];
      v71 = v19[12];
      v242 = v222;
      v64 = v241;
      v282 = v241;
      v283 = v219;
      v65 = v220;
      v246 = v219;
      v284 = v220;
      v70 = v221 + 1;
      if (!__OFADD__(v221, 1))
      {
        continue;
      }

      __break(1u);
      goto LABEL_89;
    }

    break;
  }

LABEL_168:

LABEL_94:

LABEL_95:
  v117 = v19[9];
  v118 = v19[10];
  v119 = v19[11];
  v120 = v19[12];
  swift_unknownObjectRetain();
  v121 = specialized Rope.subscript.getter(v234, v246, v245, v117, v118, v119, v120);
  swift_unknownObjectRelease();

  if (__OFADD__(v242, v121))
  {
    goto LABEL_178;
  }

  v122 = *(v19 + 5);
  v315 = *(v19 + 3);
  v316 = v122;
  v317 = *(v19 + 7);
  if (__OFSUB__(v242 + v121, v231 >> 11))
  {
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
    goto LABEL_184;
  }

  swift_unknownObjectRetain();
  v123 = BigString.UTF8View.index(_:offsetBy:)();
  v125 = v124;
  v127 = v126;
  v129 = v128;
  swift_unknownObjectRelease();
  v130 = v123 >> 10;
  result = v19[3];
  v132 = v19[5];
  v131 = v19[6];
  v255 = v19[4];
  *&v256 = v132;
  *(&v256 + 1) = v131;
  v133 = v19[8];
  v257 = v19[7];
  v258 = v133;
  if (v123 >> 10 >= v238)
  {
    v142 = v243;
    v143 = v244;
    *&v295 = v244;
    v144 = v239;
    v145 = v240;
    *(&v295 + 1) = v239;
    *&v296 = v240;
    *(&v296 + 1) = v243;
    v146 = v232;
    *&v297 = v232;
    v147 = v236;
    v148 = v237;
    *(&v297 + 1) = v236;
    v298 = v237;
    v149 = *(&v237 + 1);
    v254 = result;
    swift_unknownObjectRetain();
    v150 = specialized Set.contains(_:)(0, 0, v247);
    v151 = v147;
    v152 = v233;
    if (v150)
    {
      v310 = v254;
      v311 = v255;
      v312 = v256;
      v313 = v257;
      v314 = v258;
      BigString.UTF8View.subscript.getter();
      v270 = v143;
      v271 = v144;
      v272 = v145;
      v273 = v243;
      v274 = v143;
      v275 = v144;
      v276 = v145;
      v277 = v243;
      specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v270, &v282);
      v142 = v243;
      result = outlined destroy of BigSubstring.UTF8View(&v300);
      v146 = v232;
      v151 = v236;
      v149 = *(&v237 + 1);
      v148 = v237;
      if (*(&v288 + 1) != 2)
      {
        v146 = v286;
        if (v152 > v286 >> 10)
        {
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
          goto LABEL_189;
        }

        v151 = v287;
        v149 = *(&v288 + 1);
        v148 = v288;
        v144 = v239;
        v143 = v244;
      }
    }

    *&v265 = v143;
    *(&v265 + 1) = v144;
    *&v266 = v145;
    *(&v266 + 1) = v142;
    *&v267 = v146;
    *(&v267 + 1) = v151;
    v253 = v151;
    *&v268 = v148;
    *(&v268 + 1) = v149;
    v153 = v247;
    if (specialized Collection<>._containsScalarConstraint.getter(v247))
    {
      v154 = v153 + 56;
      v155 = 1 << *(v153 + 32);
      v156 = -1;
      if (v155 < 64)
      {
        v156 = ~(-1 << v155);
      }

      v157 = v156 & *(v153 + 56);
      v158 = (v155 + 63) >> 6;

      v159 = 0;
      v160 = MEMORY[0x1E69E7CC0];
      while (v157)
      {
LABEL_117:
        v162 = __clz(__rbit64(v157));
        v157 &= v157 - 1;
        v163 = (*(v247 + 48) + ((v159 << 10) | (16 * v162)));
        v164 = v163[1];
        if (v164 >= 2)
        {
          result = specialized Collection.first.getter(*v163, v164);
          if ((result & 0x100000000) == 0)
          {
            v252 = result;
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v160 + 16) + 1, 1, v160);
              v160 = result;
            }

            v166 = *(v160 + 16);
            v165 = *(v160 + 24);
            v167 = (v166 + 1);
            v168 = v252;
            if (v166 >= v165 >> 1)
            {
              v251 = (v166 + 1);
              v169 = v160;
              v170 = v166;
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v165 > 1), v166 + 1, 1, v169);
              v167 = v251;
              v168 = v252;
              v166 = v170;
              v160 = result;
            }

            *(v160 + 16) = v167;
            *(v160 + 4 * v166 + 32) = v168;
          }
        }
      }

      while (1)
      {
        v161 = v159 + 1;
        if (__OFADD__(v159, 1))
        {
          break;
        }

        if (v161 >= v158)
        {

          v305 = v254;
          v306 = v255;
          v307 = v256;
          v308 = v257;
          v309 = v258;
          BigString.UnicodeScalarView.subscript.getter();
          v171 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v160);
          v258 = v172;
          v174 = v173;
          v176 = v175;

          swift_unknownObjectRelease();
          result = outlined destroy of BigSubstring.UnicodeScalarView(&v282);
          if (v176 == 2)
          {
            goto LABEL_128;
          }

          if (v233 <= v171 >> 10)
          {
            v146 = v171;
            v253 = v258;
            v148 = v174;
            v149 = v176;
            goto LABEL_128;
          }

          goto LABEL_186;
        }

        v157 = *(v154 + 8 * v161);
        ++v159;
        if (v157)
        {
          v159 = v161;
          goto LABEL_117;
        }
      }

LABEL_171:
      __break(1u);
LABEL_172:
      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      __break(1u);
      goto LABEL_175;
    }

    result = swift_unknownObjectRelease();
LABEL_128:
    if (v238 == v146 >> 10)
    {
      v146 = v259;
      RangeSet.ranges.getter();
      v177 = v225;
      v178 = RangeSet.Ranges.count.getter();
      result = (v263)(v146, v177);
      v179 = v178 - 1;
      v149 = v235;
      if (!__OFSUB__(v178, 1))
      {
        goto LABEL_139;
      }

      __break(1u);
    }

    v180 = v249[2];
    v181 = v235;
    v182 = v253;
    *v235 = v146;
    v181[1] = v182;
    v181[2] = v148;
    v181[3] = v149;
    goto LABEL_166;
  }

  v134 = v233;
  v135 = v247;
  v136 = v243;
  v137 = v239;
  if (v130 < v233)
  {
    goto LABEL_182;
  }

  *&v295 = v244;
  *(&v295 + 1) = v239;
  *&v296 = v240;
  *(&v296 + 1) = v243;
  *&v297 = v123;
  v138 = v125;
  *(&v297 + 1) = v125;
  *&v298 = v127;
  *(&v298 + 1) = v129;
  if (v233 == v130)
  {
LABEL_165:
    v180 = v249[2];
    v181 = v235;
    *v235 = v123;
    v181[1] = v138;
    v181[2] = v127;
    v181[3] = v129;
    goto LABEL_166;
  }

  v139 = result;
  swift_unknownObjectRetain();
  v140 = specialized Set.contains(_:)(0, 0, v135);
  v254 = v139;
  if ((v140 & 1) == 0)
  {
    v141 = v138;
LABEL_145:
    *&v265 = v244;
    *(&v265 + 1) = v137;
    *&v266 = v240;
    *(&v266 + 1) = v136;
    *&v267 = v123;
    *(&v267 + 1) = v141;
    v138 = v141;
    *&v268 = v127;
    *(&v268 + 1) = v129;
    if (specialized Collection<>._containsScalarConstraint.getter(v135))
    {
      v198 = v135 + 56;
      v199 = 1 << *(v135 + 32);
      v200 = -1;
      if (v199 < 64)
      {
        v200 = ~(-1 << v199);
      }

      v201 = v200 & *(v135 + 56);
      v202 = (v199 + 63) >> 6;

      v203 = 0;
      v264 = MEMORY[0x1E69E7CC0];
      while (v201)
      {
LABEL_154:
        v205 = __clz(__rbit64(v201));
        v201 &= v201 - 1;
        v206 = (*(v135 + 48) + ((v203 << 10) | (16 * v205)));
        v207 = v206[1];
        if (v207 >= 2)
        {
          result = specialized Collection.first.getter(*v206, v207);
          if ((result & 0x100000000) == 0)
          {
            v263 = result;
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v264 + 2) + 1, 1, v264);
              v264 = result;
            }

            v208 = v263;
            v210 = *(v264 + 2);
            v209 = *(v264 + 3);
            v211 = v210 + 1;
            if (v210 >= v209 >> 1)
            {
              v262 = v210 + 1;
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v209 > 1), v210 + 1, 1, v264);
              v211 = v262;
              v208 = v263;
              v264 = result;
            }

            v212 = v264;
            *(v264 + 2) = v211;
            *&v212[4 * v210 + 32] = v208;
            v135 = v247;
          }
        }
      }

      while (1)
      {
        v204 = v203 + 1;
        if (__OFADD__(v203, 1))
        {
          goto LABEL_173;
        }

        if (v204 >= v202)
        {

          v310 = v254;
          v311 = v255;
          v312 = v256;
          v313 = v257;
          v314 = v258;
          BigString.UnicodeScalarView.subscript.getter();
          v213 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v264);
          v263 = v214;
          v216 = v215;
          v218 = v217;

          swift_unknownObjectRelease();
          result = outlined destroy of BigSubstring.UnicodeScalarView(&v282);
          if (v218 == 2)
          {
            goto LABEL_165;
          }

          if (v233 <= v213 >> 10)
          {
            v123 = v213;
            v138 = v263;
            v127 = v216;
            v129 = v218;
            goto LABEL_165;
          }

          goto LABEL_190;
        }

        v201 = *(v198 + 8 * v204);
        ++v203;
        if (v201)
        {
          v203 = v204;
          goto LABEL_154;
        }
      }
    }

    result = swift_unknownObjectRelease();
    goto LABEL_165;
  }

  *&v278 = v139;
  *(&v278 + 1) = v255;
  v279 = v256;
  v280 = v257;
  v281 = v258;
  BigString.UTF8View.subscript.getter();
  v270 = v244;
  v271 = v137;
  v272 = v240;
  v273 = v243;
  v274 = v244;
  v275 = v137;
  v276 = v240;
  v277 = v243;
  specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v270, &v282);
  v136 = v243;
  result = outlined destroy of BigSubstring.UTF8View(&v300);
  v141 = v138;
  if (*(&v288 + 1) == 2)
  {
    goto LABEL_145;
  }

  v123 = v286;
  if (v134 <= v286 >> 10)
  {
    v141 = v287;
    v129 = *(&v288 + 1);
    v127 = v288;
    goto LABEL_145;
  }

LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
  return result;
}

uint64_t specialized AttributedString.Runs.AttributesSlice1.index(after:)@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  return specialized AttributedString.Runs.AttributesSlice1.index(after:)(a1, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V021InflectionAlternativeG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V021InflectionAlternativeG0OGMR, a2);
}

{
  return specialized AttributedString.Runs.AttributesSlice1.index(after:)(a1, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V014InflectionRuleG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V014InflectionRuleG0OGMR, a2);
}

uint64_t specialized AttributedString.Runs.AttributesSlice1.subscript.getter(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMR);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v193 - v10;
  v12 = *(a3 + 16);
  v273 = *a3;
  v274 = v12;
  *&v275 = *(a3 + 32);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V021InflectionAlternativeG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V021InflectionAlternativeG0OGMR);
  v14 = *(v3 + *(v13 + 36));
  v229 = *(v3 + *(v13 + 40));
  AttributedString.Runs._slicedRunBoundary(roundingDown:attributeNames:constraints:)(&v256, &v273, v14, v229, &v268);
  v237 = v14;
  v231 = v14[2];
  if (!v231)
  {
    goto LABEL_175;
  }

  v210 = a2;
  v214 = *(&v268 + 1);
  v215 = v268;
  v212 = a1;
  v213 = v269;
  v211 = v256;
  v209 = v257;
  v208 = v258;
  v15 = *(a3 + 8);
  v16 = *(a3 + 16);
  v17 = *(a3 + 24);
  v18 = *v3;
  v225 = *a3;
  v219 = v17;
  v220 = v15;
  v222 = v16;
  v228 = v18;
  AttributedString.Guts.findRun(at:)(v225, v17, &v256);
  v226 = *(&v256 + 1);
  v223 = v257;
  v224 = v256;
  v236 = *(&v257 + 1);
  v221 = v258;
  v205 = v260;
  v206 = v259;
  v203 = v262;
  v204 = v261;
  v19 = *(type metadata accessor for AttributedString.Runs(0) + 24);
  a1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd, &_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMR);
  v240 = v4;
  v238 = v19;
  RangeSet.ranges.getter();
  v3 = v11;
  a3 = RangeSet.Ranges.count.getter();
  a2 = *(v9 + 8);
  v9 += 8;
  (a2)(v11, v8);
  if (a3 < 1)
  {
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

  v20 = 0;
  v239 = v225 >> 10;
  while (1)
  {
    if (__OFADD__(v20, a3))
    {
      goto LABEL_170;
    }

    v21 = (v20 + a3) / 2;
    RangeSet.ranges.getter();
    v3 = v11;
    RangeSet.Ranges.subscript.getter();
    result = (a2)(v11, v8);
    if (v239 >= v256 >> 10)
    {
      break;
    }

LABEL_4:
    a3 = v21;
    if (v20 >= v21)
    {
      goto LABEL_169;
    }
  }

  v3 = v258;
  if (v239 >= v258 >> 10)
  {
    v20 = v21 + 1;
    v21 = a3;
    goto LABEL_4;
  }

  v216 = v258 >> 10;
  a3 = v259;
  v23 = v260;
  v24 = v261;
  v25 = v229;
  v26 = *(v229 + 16);
  v217 = v261;
  v218 = v258;
  if (v26 == 1)
  {
    result = specialized Set.contains(_:)(0, 1, v229);
    if ((result & 1) == 0)
    {
      v29 = v24;
      v31 = v228[3];
      v30 = v228[4];
      v32 = v228[5];
      v33 = v228[6];
      v34 = v228[7];
      v237 = v228[8];
      v238 = v34;
      v246 = v225;
      v247 = v220;
      v35 = v222;
      v248 = v222;
      v249 = v219;
      v250 = v3;
      v251 = a3;
      v252 = v23;
      v253 = v29;
      swift_unknownObjectRetain();
      v36 = specialized Set.contains(_:)(0, 0, v25);
      v235 = v32;
      v236 = v30;
      v240 = v31;
      v234 = v33;
      if (v36)
      {
        *&v298 = v31;
        *(&v298 + 1) = v30;
        *&v299 = v32;
        *(&v299 + 1) = v33;
        *&v300 = v238;
        *(&v300 + 1) = v237;
        BigString.UTF8View.subscript.getter();
        *&v241 = v225;
        *(&v241 + 1) = v220;
        *&v242 = v35;
        *(&v242 + 1) = v219;
        *&v243 = v225;
        *(&v243 + 1) = v220;
        *&v244 = v35;
        *(&v244 + 1) = v219;
        specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v241, &v256);
        v3 = v218;
        result = outlined destroy of BigSubstring.UTF8View(&v273);
        if (v261 != 2)
        {
          v3 = v258;
          if (v239 > v258 >> 10)
          {
            goto LABEL_192;
          }

          a3 = v259;
          v23 = v260;
          v217 = v261;
        }
      }

      v284 = v225;
      v285 = v220;
      v286 = v222;
      v287 = v219;
      v288 = v3;
      v289 = a3;
      a1 = v217;
      v290 = v23;
      v291 = v217;
      if (specialized Collection<>._containsScalarConstraint.getter(v25))
      {
        v201 = a3;
        v202 = v23;
        v218 = v3;
        v9 = v25 + 56;
        v37 = 1 << *(v25 + 32);
        v38 = -1;
        if (v37 < 64)
        {
          v38 = ~(-1 << v37);
        }

        a2 = v38 & *(v25 + 56);
        v3 = (v37 + 63) >> 6;

        v39 = 0;
        a3 = MEMORY[0x1E69E7CC0];
        v40 = v235;
        a1 = v236;
        v11 = v240;
        v41 = v234;
        while (1)
        {
          if (a2)
          {
            goto LABEL_28;
          }

          do
          {
            v42 = v39 + 1;
            if (__OFADD__(v39, 1))
            {
              goto LABEL_173;
            }

            if (v42 >= v3)
            {

              v292 = v11;
              v293 = a1;
              v294 = v40;
              v295 = v41;
              v296 = v238;
              v297 = v237;
              BigString.UnicodeScalarView.subscript.getter();
              v172 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(a3);
              v174 = v173;
              v176 = v175;
              v178 = v177;

              swift_unknownObjectRelease();
              result = outlined destroy of BigSubstring.UnicodeScalarView(&v256);
              a1 = v217;
              v9 = v218;
              a3 = v201;
              v11 = v202;
              v115 = v228;
              if (v178 == 2)
              {
                goto LABEL_161;
              }

              if (v239 <= v172 >> 10)
              {
                v9 = v172;
                a3 = v174;
                v11 = v176;
                a1 = v178;
                goto LABEL_161;
              }

LABEL_193:
              __break(1u);
              goto LABEL_194;
            }

            a2 = *(v9 + 8 * v42);
            ++v39;
          }

          while (!a2);
          v39 = v42;
LABEL_28:
          v43 = __clz(__rbit64(a2));
          a2 &= a2 - 1;
          v44 = (*(v229 + 48) + ((v39 << 10) | (16 * v43)));
          v45 = v44[1];
          if (v45 >= 2)
          {
            v46 = specialized Collection.first.getter(*v44, v45);
            if ((v46 & 0x100000000) == 0)
            {
              v233 = v46;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                a3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a3 + 16) + 1, 1, a3);
              }

              v48 = *(a3 + 16);
              v47 = *(a3 + 24);
              v49 = (v48 + 1);
              v50 = v233;
              if (v48 >= v47 >> 1)
              {
                v232 = (v48 + 1);
                v51 = a3;
                v52 = v48;
                v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v51);
                v49 = v232;
                v50 = v233;
                v48 = v52;
                a3 = v53;
              }

              *(a3 + 16) = v49;
              *(a3 + 4 * v48 + 32) = v50;
            }
          }
        }
      }

      swift_unknownObjectRelease();
      v9 = v3;
      v11 = v23;
LABEL_160:
      v115 = v228;
      goto LABEL_161;
    }
  }

  v27 = *(v240 + 15);
  v201 = a3;
  v202 = v23;
  if (v236 == v27)
  {
    v28 = *(v240 + 22);
    if (*(v240 + 26) == 2)
    {
      if (v28 != 2)
      {
        goto LABEL_88;
      }
    }

    else if (v28 == 2 || (*(v240 + 19) ^ *(v240 + 23)) >= 1024)
    {
      goto LABEL_88;
    }
  }

  if (v236 >= v27)
  {
LABEL_186:
    __break(1u);
    goto LABEL_187;
  }

  v199 = v27;
  v54 = v228;
  v55 = v228[9];
  v56 = v228[10];
  a3 = v228[11];
  v57 = v228[12];
  swift_unknownObjectRetain();
  v59 = v223;
  v58 = v224;
  v60 = v226;
  specialized Rope.subscript.getter(v224, v226, v223, v55, v56, a3, v57);
  v9 = v61;
  v197 = v62;
  result = swift_unknownObjectRelease();
  v63 = v58;
  v64 = v54[9];
  v65 = v236 + 1;
  v198 = v237 + 5;
  v66 = v54[12];
  *&v256 = v58;
  *(&v256 + 1) = v60;
  *&v257 = v59;
  v227 = v9;
  while (2)
  {
    if (v63 != v66)
    {
      goto LABEL_182;
    }

    v207 = v66;
    if (v59)
    {
      v67 = *(v59 + 24 * ((v226 >> ((4 * *(v59 + 18) + 8) & 0x3C)) & 0xF) + 24);
      v68 = v221 + v67;
      if (!__OFADD__(v221, v67))
      {
        if (v64)
        {
          v69 = v65;
          result = swift_unknownObjectRetain();
          goto LABEL_46;
        }

        goto LABEL_181;
      }

LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
      goto LABEL_193;
    }

    v69 = v65;
    swift_unknownObjectRetain();
    v70 = specialized Rope._Node.subscript.getter(v226, v64);
    a3 = v71;

    v72 = __OFADD__(v221, v70);
    v68 = v221 + v70;
    if (v72)
    {
      goto LABEL_189;
    }

    if (!v64)
    {
      goto LABEL_181;
    }

LABEL_46:
    if (v226 >= (((-15 << ((4 * *(v64 + 18) + 8) & 0x3C)) - 1) & *(v64 + 18) | (*(v64 + 16) << ((4 * *(v64 + 18) + 8) & 0x3C))))
    {
LABEL_181:
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
LABEL_184:
      __break(1u);
      goto LABEL_185;
    }

    v196 = v68;
    v223 = v59;
    if (v59)
    {
      v73 = (4 * *(v59 + 18) + 8) & 0x3C;
      v74 = ((v226 >> v73) & 0xF) + 1;
      if (v74 < *(v59 + 16))
      {
        result = swift_unknownObjectRelease();
        v75 = (v74 << v73) | ((-15 << v73) - 1) & v226;
        goto LABEL_52;
      }
    }

    if (specialized Rope._Node.formSuccessor(of:)(&v256, v64))
    {
      result = swift_unknownObjectRelease();
      v75 = *(&v256 + 1);
LABEL_52:
      v76 = v257;
      v77 = v256;
    }

    else
    {
      v78 = *(v64 + 18);
      v79 = *(v64 + 16);
      result = swift_unknownObjectRelease();
      v76 = 0;
      v75 = ((-15 << ((4 * v78 + 8) & 0x3C)) - 1) & v78 | (v79 << ((4 * v78 + 8) & 0x3C));
      v77 = v207;
    }

    if (v199 < v69)
    {
LABEL_93:

      goto LABEL_94;
    }

    v195 = v69;
    v224 = v77;
    a2 = &v256;
    v11 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMd;
    a1 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMR;
    if (v69 == v199)
    {
      v80 = *(v240 + 22);
      if (*(v240 + 26) == 2)
      {
        v77 = v224;
        if (v80 == 2)
        {
          goto LABEL_93;
        }
      }

      else
      {
        v77 = v224;
        if (v80 != 2)
        {
          v77 = v224;
          if ((*(v240 + 19) ^ *(v240 + 23)) < 1024)
          {
            goto LABEL_93;
          }
        }
      }
    }

    if (v77 != v228[12])
    {
      goto LABEL_183;
    }

    v193 = v75;
    v194 = v76;
    if (v76)
    {
      v81 = v76 + 24 * ((v75 >> ((4 * *(v76 + 18) + 8) & 0x3C)) & 0xF);
      v82 = *(v81 + 32);
      v3 = *(v81 + 40);

      v200 = v3;
    }

    else
    {
      v3 = v228[9];
      a3 = v228[11];
      swift_unknownObjectRetain();
      specialized Rope._Node.subscript.getter(v75, v3);
      v82 = v83;
      v200 = v84;
      swift_unknownObjectRelease();
    }

    v85 = 0;
    v86 = v198;
    v230 = v82;
    do
    {
      if (v85 >= v237[2])
      {
        goto LABEL_171;
      }

      v87 = *(v86 - 1);
      a3 = *v86;
      v238 = v86;
      if (*(v9 + 16))
      {

        v3 = v9;
        v88 = specialized __RawDictionaryStorage.find<A>(_:)(v87, a3);
        if (v89)
        {
          outlined init with copy of AttributedString._AttributeValue(*(v9 + 56) + 72 * v88, &v273);
          if (!*(v82 + 16))
          {
            goto LABEL_78;
          }
        }

        else
        {
          v277 = 0;
          v275 = 0u;
          v276 = 0u;
          v273 = 0u;
          v274 = 0u;
          if (!*(v82 + 16))
          {
LABEL_78:

            goto LABEL_79;
          }
        }
      }

      else
      {
        v277 = 0;
        v275 = 0u;
        v276 = 0u;
        v273 = 0u;
        v274 = 0u;

        if (!*(v82 + 16))
        {
          goto LABEL_78;
        }
      }

      v3 = specialized __RawDictionaryStorage.find<A>(_:)(v87, a3);
      v91 = v90;

      if (v91)
      {
        outlined init with copy of AttributedString._AttributeValue(*(v82 + 56) + 72 * v3, &v268);
        goto LABEL_80;
      }

LABEL_79:
      v272 = 0;
      v270 = 0u;
      v271 = 0u;
      v268 = 0u;
      v269 = 0u;
LABEL_80:
      outlined init with copy of FloatingPointRoundingRule?(&v273, &v256, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
      outlined init with copy of FloatingPointRoundingRule?(&v268, &v263, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
      if (*(&v257 + 1))
      {
        outlined init with copy of FloatingPointRoundingRule?(&v256, &v246, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
        if (!*(&v264 + 1))
        {
          outlined destroy of TermOfAddress?(&v268, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
          outlined destroy of TermOfAddress?(&v273, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
          outlined destroy of AttributedString._AttributeValue(&v246);
LABEL_90:
          outlined destroy of TermOfAddress?(&v256, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMR);
LABEL_92:

          goto LABEL_93;
        }

        v243 = v265;
        v244 = v266;
        v245 = v267;
        v241 = v263;
        v242 = v264;
        v3 = v249;
        v233 = v250;
        v234 = v85;
        v232 = __swift_project_boxed_opaque_existential_1(&v246, v249);
        a3 = *(&v242 + 1);
        v92 = __swift_project_boxed_opaque_existential_1(&v241, *(&v242 + 1));
        v236 = &v193;
        v93 = *(v3 - 8);
        MEMORY[0x1EEE9AC00](v92);
        v95 = &v193 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
        v235 = &v193;
        v97 = MEMORY[0x1EEE9AC00](v96);
        (*(v99 + 16))(&v193 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0), v97);
        v100 = type metadata accessor for Optional();
        v101 = *(v100 - 8);
        MEMORY[0x1EEE9AC00](v100);
        v103 = &v193 - v102;
        if ((swift_dynamicCast() & 1) == 0)
        {
          outlined destroy of TermOfAddress?(&v268, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
          outlined destroy of TermOfAddress?(&v273, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
          (*(v93 + 56))(v103, 1, 1, v3);
          (*(v101 + 8))(v103, v100);
          outlined destroy of AttributedString._AttributeValue(&v241);
          outlined destroy of AttributedString._AttributeValue(&v246);
          outlined destroy of TermOfAddress?(&v256, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
          goto LABEL_92;
        }

        (*(v93 + 56))(v103, 0, 1, v3);
        (*(v93 + 32))(v95, v103, v3);
        v104 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v93 + 8))(v95, v3);
        v11 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMd;
        a1 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMR;
        outlined destroy of TermOfAddress?(&v268, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
        outlined destroy of TermOfAddress?(&v273, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
        outlined destroy of AttributedString._AttributeValue(&v241);
        outlined destroy of AttributedString._AttributeValue(&v246);
        outlined destroy of TermOfAddress?(&v256, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
        v9 = v227;
        a2 = &v256;
        v82 = v230;
        v85 = v234;
        if ((v104 & 1) == 0)
        {
          goto LABEL_92;
        }
      }

      else
      {
        outlined destroy of TermOfAddress?(&v268, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
        outlined destroy of TermOfAddress?(&v273, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
        if (*(&v264 + 1))
        {
          goto LABEL_90;
        }

        outlined destroy of TermOfAddress?(&v256, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
      }

      ++v85;
      v86 = v238 + 2;
    }

    while (v231 != v85);

    v64 = v228[9];
    v66 = v228[12];
    v221 = v196;
    v63 = v224;
    *&v256 = v224;
    *(&v256 + 1) = v193;
    v59 = v194;
    v226 = v193;
    *&v257 = v194;
    v65 = v195 + 1;
    if (!__OFADD__(v195, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_88:
  v207 = v224;
LABEL_94:
  v105 = v228;
  v106 = v228[9];
  v107 = v228[10];
  v109 = v228[11];
  v108 = v228[12];
  swift_unknownObjectRetain();
  v110 = specialized Rope.subscript.getter(v207, v226, v223, v106, v107, v109, v108);
  swift_unknownObjectRelease();

  if (__OFADD__(v221, v110))
  {
    goto LABEL_184;
  }

  v111 = *(v105 + 5);
  v298 = *(v105 + 3);
  v299 = v111;
  v300 = *(v105 + 7);
  if (__OFSUB__(v221 + v110, v206 >> 11))
  {
LABEL_185:
    __break(1u);
    goto LABEL_186;
  }

  swift_unknownObjectRetain();
  v9 = BigString.UTF8View.index(_:offsetBy:)();
  a3 = v112;
  v11 = v113;
  a1 = v114;
  result = swift_unknownObjectRelease();
  v115 = v228;
  v116 = v9 >> 10;
  v117 = v228[3];
  v118 = v228[5];
  v236 = v228[4];
  v237 = v118;
  v119 = v228[7];
  v238 = v228[6];
  v240 = v119;
  v120 = v228[8];
  if (v9 >> 10 >= v216)
  {
    v234 = v228[8];
    v141 = v225;
    v142 = v219;
    v143 = v220;
    v246 = v225;
    v247 = v220;
    v144 = v222;
    v248 = v222;
    v249 = v219;
    v145 = v217;
    a2 = v218;
    v250 = v218;
    v147 = v201;
    v146 = v202;
    v251 = v201;
    v252 = v202;
    v253 = v217;
    v148 = v117;
    swift_unknownObjectRetain();
    v149 = specialized Set.contains(_:)(0, 0, v229);
    v235 = v148;
    if (v149)
    {
      v292 = v148;
      v293 = v236;
      v294 = v237;
      v295 = v238;
      v296 = v240;
      v297 = v234;
      BigString.UTF8View.subscript.getter();
      *&v241 = v141;
      *(&v241 + 1) = v143;
      *&v242 = v222;
      *(&v242 + 1) = v142;
      *&v243 = v141;
      *(&v243 + 1) = v143;
      *&v244 = v222;
      *(&v244 + 1) = v142;
      specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v241, &v256);
      v144 = v222;
      result = outlined destroy of BigSubstring.UTF8View(&v273);
      a2 = v218;
      if (v261 != 2)
      {
        a2 = v258;
        if (v239 > v258 >> 10)
        {
          goto LABEL_190;
        }

        v147 = v259;
        v146 = v260;
        v145 = v261;
      }
    }

    v284 = v225;
    v285 = v220;
    v286 = v144;
    v287 = v142;
    v288 = a2;
    v289 = v147;
    v290 = v146;
    v291 = v145;
    v150 = v229;
    if ((specialized Collection<>._containsScalarConstraint.getter(v229) & 1) == 0)
    {
      swift_unknownObjectRelease();
      v115 = v228;
      v165 = v216;
LABEL_143:
      if (a2 >> 10 == v165)
      {
        v9 = v218;
      }

      else
      {
        v9 = a2;
      }

      if (a2 >> 10 == v165)
      {
        a3 = v201;
      }

      else
      {
        a3 = v147;
      }

      if (a2 >> 10 == v165)
      {
        v11 = v202;
      }

      else
      {
        v11 = v146;
      }

      if (a2 >> 10 == v165)
      {
        a1 = v217;
      }

      else
      {
        a1 = v145;
      }

LABEL_161:
      a2 = v115[2];
      v180 = v115[9];
      v179 = v115[10];
      v181 = v115[11];
      v182 = v115[12];
      swift_unknownObjectRetain();
      specialized Rope.subscript.getter(v215, v214, v213, v180, v179, v181, v182);
      v3 = v183;
      swift_unknownObjectRelease();
      if (one-time initialization token for name == -1)
      {
        if (!*(v3 + 16))
        {
          goto LABEL_177;
        }

        goto LABEL_163;
      }

LABEL_176:
      swift_once();
      if (!*(v3 + 16))
      {
        goto LABEL_177;
      }

LABEL_163:
      v184 = specialized __RawDictionaryStorage.find<A>(_:)(static AttributeScopes.FoundationAttributes.InflectionAlternativeAttribute.name, qword_1EA7B25D8[0]);
      if (v185)
      {
        outlined init with copy of AttributedString._AttributeValue(*(v3 + 56) + 72 * v184, &v268);

        outlined init with copy of Hashable & Sendable(&v268, &v255);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd, &_sSH_s8SendablepMR);
        result = swift_dynamicCast();
        if (!result)
        {
          goto LABEL_196;
        }

        result = outlined destroy of AttributedString._AttributeValue(&v268);
        *v212 = v254;
        goto LABEL_178;
      }

LABEL_177:

      *v212 = 0;
LABEL_178:
      if (v9 >> 10 >= v211 >> 10)
      {
        v192 = v210;
        *v210 = v211;
        v192[1] = v209;
        *(v192 + 4) = v208;
        *(v192 + 5) = v9;
        *(v192 + 6) = a3;
        *(v192 + 7) = v11;
        *(v192 + 8) = a1;
        *(v192 + 9) = a2;
        return result;
      }

      __break(1u);
      goto LABEL_181;
    }

    a3 = v150 + 56;
    v151 = 1 << *(v150 + 32);
    v152 = -1;
    if (v151 < 64)
    {
      v152 = ~(-1 << v151);
    }

    v3 = v152 & *(v150 + 56);
    v11 = ((v151 + 63) >> 6);

    a1 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    while (v3)
    {
LABEL_132:
      v154 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      v155 = (*(v229 + 48) + ((a1 << 10) | (16 * v154)));
      v156 = v155[1];
      if (v156 >= 2)
      {
        v157 = specialized Collection.first.getter(*v155, v156);
        if ((v157 & 0x100000000) == 0)
        {
          v233 = v157;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1, v9);
          }

          v159 = *(v9 + 16);
          v158 = *(v9 + 24);
          v160 = (v159 + 1);
          v161 = v233;
          if (v159 >= v158 >> 1)
          {
            v232 = (v159 + 1);
            v162 = v9;
            v163 = v159;
            v164 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v158 > 1), v159 + 1, 1, v162);
            v160 = v232;
            v161 = v233;
            v159 = v163;
            v9 = v164;
          }

          *(v9 + 16) = v160;
          *(v9 + 4 * v159 + 32) = v161;
        }
      }
    }

    while (1)
    {
      v153 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        break;
      }

      if (v153 >= v11)
      {

        v278 = v235;
        v279 = v236;
        v280 = v237;
        v281 = v238;
        v282 = v240;
        v283 = v234;
        BigString.UnicodeScalarView.subscript.getter();
        v166 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v9);
        v240 = v167;
        v169 = v168;
        v171 = v170;

        swift_unknownObjectRelease();
        result = outlined destroy of BigSubstring.UnicodeScalarView(&v256);
        v115 = v228;
        v165 = v216;
        if (v171 == 2)
        {
          goto LABEL_143;
        }

        if (v239 <= v166 >> 10)
        {
          a2 = v166;
          v147 = v240;
          v146 = v169;
          v145 = v171;
          goto LABEL_143;
        }

        goto LABEL_191;
      }

      v3 = *(a3 + 8 * v153);
      ++a1;
      if (v3)
      {
        a1 = v153;
        goto LABEL_132;
      }
    }

LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
    goto LABEL_174;
  }

  v121 = v222;
  v122 = v220;
  v123 = v225;
  if (v116 < v239)
  {
    goto LABEL_188;
  }

  v246 = v225;
  v247 = v220;
  v248 = v222;
  v249 = v219;
  v250 = v9;
  v251 = a3;
  v252 = v11;
  v253 = a1;
  if (v239 == v116)
  {
    goto LABEL_161;
  }

  v124 = v117;
  swift_unknownObjectRetain();
  v125 = specialized Set.contains(_:)(0, 0, v229);
  v235 = v124;
  if ((v125 & 1) == 0 || (v292 = v124, v293 = v236, v294 = v237, v295 = v238, v296 = v240, v297 = v120, BigString.UTF8View.subscript.getter(), *&v241 = v123, *(&v241 + 1) = v122, *&v242 = v222, *(&v242 + 1) = v219, *&v243 = v123, *(&v243 + 1) = v122, *&v244 = v222, *(&v244 + 1) = v219, specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v241, &v256), v121 = v222, result = outlined destroy of BigSubstring.UTF8View(&v273), v261 == 2))
  {
LABEL_103:
    v284 = v123;
    v285 = v122;
    v286 = v121;
    v287 = v219;
    v288 = v9;
    v289 = a3;
    v290 = v11;
    v291 = a1;
    v3 = v229;
    if (specialized Collection<>._containsScalarConstraint.getter(v229))
    {
      v234 = v120;
      v126 = v3 + 56;
      v127 = 1 << *(v3 + 32);
      v128 = -1;
      if (v127 < 64)
      {
        v128 = ~(-1 << v127);
      }

      v129 = v128 & *(v3 + 56);
      a2 = (v127 + 63) >> 6;

      v130 = 0;
      v233 = MEMORY[0x1E69E7CC0];
      while (v129)
      {
LABEL_112:
        v132 = __clz(__rbit64(v129));
        v129 &= v129 - 1;
        v133 = (*(v229 + 48) + ((v130 << 10) | (16 * v132)));
        v134 = v133[1];
        if (v134 >= 2)
        {
          v135 = specialized Collection.first.getter(*v133, v134);
          if ((v135 & 0x100000000) == 0)
          {
            v232 = v135;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v233 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v233 + 2) + 1, 1, v233);
            }

            v136 = v232;
            v3 = *(v233 + 2);
            v137 = *(v233 + 3);
            v138 = v3 + 1;
            if (v3 >= v137 >> 1)
            {
              v231 = v3 + 1;
              v140 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v137 > 1), v3 + 1, 1, v233);
              v138 = v231;
              v136 = v232;
              v233 = v140;
            }

            v139 = v233;
            *(v233 + 2) = v138;
            *&v139[4 * v3 + 32] = v136;
          }
        }
      }

      while (1)
      {
        v131 = v130 + 1;
        if (__OFADD__(v130, 1))
        {
          break;
        }

        if (v131 >= a2)
        {

          v278 = v235;
          v279 = v236;
          v280 = v237;
          v281 = v238;
          v282 = v240;
          v283 = v234;
          BigString.UnicodeScalarView.subscript.getter();
          v186 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v233);
          v188 = v187;
          v240 = v189;
          v191 = v190;

          swift_unknownObjectRelease();
          result = outlined destroy of BigSubstring.UnicodeScalarView(&v256);
          v115 = v228;
          if (v191 == 2)
          {
            goto LABEL_161;
          }

          if (v239 <= v186 >> 10)
          {
            v9 = v186;
            a3 = v188;
            v11 = v240;
            a1 = v191;
            goto LABEL_161;
          }

          goto LABEL_195;
        }

        v129 = *(v126 + 8 * v131);
        ++v130;
        if (v129)
        {
          v130 = v131;
          goto LABEL_112;
        }
      }

LABEL_174:
      __break(1u);
LABEL_175:
      __break(1u);
      goto LABEL_176;
    }

    swift_unknownObjectRelease();
    goto LABEL_160;
  }

  v9 = v258;
  if (v239 <= v258 >> 10)
  {
    a3 = v259;
    v11 = v260;
    a1 = v261;
    goto LABEL_103;
  }

LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  __break(1u);
  return result;
}

{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMR);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v194 - v10;
  v12 = *(a3 + 16);
  v273 = *a3;
  v274 = v12;
  *&v275 = *(a3 + 32);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V021LocalizedNumberFormatG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V021LocalizedNumberFormatG0OGMR);
  v14 = *(v3 + *(v13 + 36));
  v230 = *(v3 + *(v13 + 40));
  AttributedString.Runs._slicedRunBoundary(roundingDown:attributeNames:constraints:)(&v256, &v273, v14, v230, &v268);
  v238 = v14;
  v232 = v14[2];
  if (!v232)
  {
    goto LABEL_175;
  }

  v211 = a2;
  v215 = *(&v268 + 1);
  v216 = v268;
  v213 = a1;
  v214 = v269;
  v212 = v256;
  v210 = v257;
  v209 = v258;
  v15 = *(a3 + 8);
  v16 = *(a3 + 16);
  v17 = *(a3 + 24);
  v18 = *v3;
  v226 = *a3;
  v220 = v17;
  v221 = v15;
  v223 = v16;
  v229 = v18;
  AttributedString.Guts.findRun(at:)(v226, v17, &v256);
  v227 = *(&v256 + 1);
  v224 = v257;
  v225 = v256;
  v237 = *(&v257 + 1);
  v222 = v258;
  v206 = v260;
  v207 = v259;
  v204 = v262;
  v205 = v261;
  v19 = *(type metadata accessor for AttributedString.Runs(0) + 24);
  a1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd, &_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMR);
  v241 = v4;
  v239 = v19;
  RangeSet.ranges.getter();
  v3 = v11;
  a3 = RangeSet.Ranges.count.getter();
  a2 = *(v9 + 8);
  v9 += 8;
  (a2)(v11, v8);
  if (a3 < 1)
  {
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

  v20 = 0;
  v240 = v226 >> 10;
  while (1)
  {
    if (__OFADD__(v20, a3))
    {
      goto LABEL_170;
    }

    v21 = (v20 + a3) / 2;
    RangeSet.ranges.getter();
    v3 = v11;
    RangeSet.Ranges.subscript.getter();
    result = (a2)(v11, v8);
    if (v240 >= v256 >> 10)
    {
      break;
    }

LABEL_4:
    a3 = v21;
    if (v20 >= v21)
    {
      goto LABEL_169;
    }
  }

  v3 = v258;
  if (v240 >= v258 >> 10)
  {
    v20 = v21 + 1;
    v21 = a3;
    goto LABEL_4;
  }

  v217 = v258 >> 10;
  a3 = v259;
  v23 = v260;
  v24 = v261;
  v25 = v230;
  v26 = *(v230 + 16);
  v218 = v261;
  v219 = v258;
  if (v26 == 1)
  {
    result = specialized Set.contains(_:)(0, 1, v230);
    if ((result & 1) == 0)
    {
      v29 = v24;
      v31 = v229[3];
      v30 = v229[4];
      v32 = v229[5];
      v33 = v229[6];
      v34 = v229[7];
      v238 = v229[8];
      v239 = v34;
      v247 = v226;
      v248 = v221;
      v35 = v223;
      v249 = v223;
      v250 = v220;
      v251 = v3;
      v252 = a3;
      v253 = v23;
      v254 = v29;
      swift_unknownObjectRetain();
      v36 = specialized Set.contains(_:)(0, 0, v25);
      v236 = v32;
      v237 = v30;
      v241 = v31;
      v235 = v33;
      if (v36)
      {
        *&v298 = v31;
        *(&v298 + 1) = v30;
        *&v299 = v32;
        *(&v299 + 1) = v33;
        *&v300 = v239;
        *(&v300 + 1) = v238;
        BigString.UTF8View.subscript.getter();
        *&v242 = v226;
        *(&v242 + 1) = v221;
        *&v243 = v35;
        *(&v243 + 1) = v220;
        *&v244 = v226;
        *(&v244 + 1) = v221;
        *&v245 = v35;
        *(&v245 + 1) = v220;
        specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v242, &v256);
        v3 = v219;
        result = outlined destroy of BigSubstring.UTF8View(&v273);
        if (v261 != 2)
        {
          v3 = v258;
          if (v240 > v258 >> 10)
          {
            goto LABEL_192;
          }

          a3 = v259;
          v23 = v260;
          v218 = v261;
        }
      }

      v284 = v226;
      v285 = v221;
      v286 = v223;
      v287 = v220;
      v288 = v3;
      v289 = a3;
      a1 = v218;
      v290 = v23;
      v291 = v218;
      if (specialized Collection<>._containsScalarConstraint.getter(v25))
      {
        v202 = a3;
        v203 = v23;
        v219 = v3;
        v9 = v25 + 56;
        v37 = 1 << *(v25 + 32);
        v38 = -1;
        if (v37 < 64)
        {
          v38 = ~(-1 << v37);
        }

        a2 = v38 & *(v25 + 56);
        v3 = (v37 + 63) >> 6;

        v39 = 0;
        a3 = MEMORY[0x1E69E7CC0];
        v40 = v236;
        a1 = v237;
        v11 = v241;
        v41 = v235;
        while (1)
        {
          if (a2)
          {
            goto LABEL_28;
          }

          do
          {
            v42 = v39 + 1;
            if (__OFADD__(v39, 1))
            {
              goto LABEL_173;
            }

            if (v42 >= v3)
            {

              v292 = v11;
              v293 = a1;
              v294 = v40;
              v295 = v41;
              v296 = v239;
              v297 = v238;
              BigString.UnicodeScalarView.subscript.getter();
              v172 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(a3);
              v174 = v173;
              v176 = v175;
              v178 = v177;

              swift_unknownObjectRelease();
              result = outlined destroy of BigSubstring.UnicodeScalarView(&v256);
              a1 = v218;
              v9 = v219;
              a3 = v202;
              v11 = v203;
              v115 = v229;
              if (v178 == 2)
              {
                goto LABEL_161;
              }

              if (v240 <= v172 >> 10)
              {
                v9 = v172;
                a3 = v174;
                v11 = v176;
                a1 = v178;
                goto LABEL_161;
              }

LABEL_193:
              __break(1u);
              goto LABEL_194;
            }

            a2 = *(v9 + 8 * v42);
            ++v39;
          }

          while (!a2);
          v39 = v42;
LABEL_28:
          v43 = __clz(__rbit64(a2));
          a2 &= a2 - 1;
          v44 = (*(v230 + 48) + ((v39 << 10) | (16 * v43)));
          v45 = v44[1];
          if (v45 >= 2)
          {
            v46 = specialized Collection.first.getter(*v44, v45);
            if ((v46 & 0x100000000) == 0)
            {
              v234 = v46;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                a3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a3 + 16) + 1, 1, a3);
              }

              v48 = *(a3 + 16);
              v47 = *(a3 + 24);
              v49 = (v48 + 1);
              v50 = v234;
              if (v48 >= v47 >> 1)
              {
                v233 = (v48 + 1);
                v51 = a3;
                v52 = v48;
                v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v51);
                v49 = v233;
                v50 = v234;
                v48 = v52;
                a3 = v53;
              }

              *(a3 + 16) = v49;
              *(a3 + 4 * v48 + 32) = v50;
            }
          }
        }
      }

      swift_unknownObjectRelease();
      v9 = v3;
      v11 = v23;
LABEL_160:
      v115 = v229;
      goto LABEL_161;
    }
  }

  v27 = *(v241 + 15);
  v202 = a3;
  v203 = v23;
  if (v237 == v27)
  {
    v28 = *(v241 + 22);
    if (*(v241 + 26) == 2)
    {
      if (v28 != 2)
      {
        goto LABEL_88;
      }
    }

    else if (v28 == 2 || (*(v241 + 19) ^ *(v241 + 23)) >= 1024)
    {
      goto LABEL_88;
    }
  }

  if (v237 >= v27)
  {
LABEL_186:
    __break(1u);
    goto LABEL_187;
  }

  v200 = v27;
  v54 = v229;
  v55 = v229[9];
  v56 = v229[10];
  a3 = v229[11];
  v57 = v229[12];
  swift_unknownObjectRetain();
  v59 = v224;
  v58 = v225;
  v60 = v227;
  specialized Rope.subscript.getter(v225, v227, v224, v55, v56, a3, v57);
  v9 = v61;
  v198 = v62;
  result = swift_unknownObjectRelease();
  v63 = v58;
  v64 = v54[9];
  v65 = v237 + 1;
  v199 = v238 + 5;
  v66 = v54[12];
  *&v256 = v58;
  *(&v256 + 1) = v60;
  *&v257 = v59;
  v228 = v9;
  while (2)
  {
    if (v63 != v66)
    {
      goto LABEL_182;
    }

    v208 = v66;
    if (v59)
    {
      v67 = *(v59 + 24 * ((v227 >> ((4 * *(v59 + 18) + 8) & 0x3C)) & 0xF) + 24);
      v68 = v222 + v67;
      if (!__OFADD__(v222, v67))
      {
        if (v64)
        {
          v69 = v65;
          result = swift_unknownObjectRetain();
          goto LABEL_46;
        }

        goto LABEL_181;
      }

LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
      goto LABEL_193;
    }

    v69 = v65;
    swift_unknownObjectRetain();
    v70 = specialized Rope._Node.subscript.getter(v227, v64);
    a3 = v71;

    v72 = __OFADD__(v222, v70);
    v68 = v222 + v70;
    if (v72)
    {
      goto LABEL_189;
    }

    if (!v64)
    {
      goto LABEL_181;
    }

LABEL_46:
    if (v227 >= (((-15 << ((4 * *(v64 + 18) + 8) & 0x3C)) - 1) & *(v64 + 18) | (*(v64 + 16) << ((4 * *(v64 + 18) + 8) & 0x3C))))
    {
LABEL_181:
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
LABEL_184:
      __break(1u);
      goto LABEL_185;
    }

    v197 = v68;
    v224 = v59;
    if (v59)
    {
      v73 = (4 * *(v59 + 18) + 8) & 0x3C;
      v74 = ((v227 >> v73) & 0xF) + 1;
      if (v74 < *(v59 + 16))
      {
        result = swift_unknownObjectRelease();
        v75 = (v74 << v73) | ((-15 << v73) - 1) & v227;
        goto LABEL_52;
      }
    }

    if (specialized Rope._Node.formSuccessor(of:)(&v256, v64))
    {
      result = swift_unknownObjectRelease();
      v75 = *(&v256 + 1);
LABEL_52:
      v76 = v257;
      v77 = v256;
    }

    else
    {
      v78 = *(v64 + 18);
      v79 = *(v64 + 16);
      result = swift_unknownObjectRelease();
      v76 = 0;
      v75 = ((-15 << ((4 * v78 + 8) & 0x3C)) - 1) & v78 | (v79 << ((4 * v78 + 8) & 0x3C));
      v77 = v208;
    }

    if (v200 < v69)
    {
LABEL_93:

      goto LABEL_94;
    }

    v196 = v69;
    v225 = v77;
    a2 = &v256;
    v11 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMd;
    a1 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMR;
    if (v69 == v200)
    {
      v80 = *(v241 + 22);
      if (*(v241 + 26) == 2)
      {
        v77 = v225;
        if (v80 == 2)
        {
          goto LABEL_93;
        }
      }

      else
      {
        v77 = v225;
        if (v80 != 2)
        {
          v77 = v225;
          if ((*(v241 + 19) ^ *(v241 + 23)) < 1024)
          {
            goto LABEL_93;
          }
        }
      }
    }

    if (v77 != v229[12])
    {
      goto LABEL_183;
    }

    v194 = v75;
    v195 = v76;
    if (v76)
    {
      v81 = v76 + 24 * ((v75 >> ((4 * *(v76 + 18) + 8) & 0x3C)) & 0xF);
      v82 = *(v81 + 32);
      v3 = *(v81 + 40);

      v201 = v3;
    }

    else
    {
      v3 = v229[9];
      a3 = v229[11];
      swift_unknownObjectRetain();
      specialized Rope._Node.subscript.getter(v75, v3);
      v82 = v83;
      v201 = v84;
      swift_unknownObjectRelease();
    }

    v85 = 0;
    v86 = v199;
    v231 = v82;
    do
    {
      if (v85 >= v238[2])
      {
        goto LABEL_171;
      }

      v87 = *(v86 - 1);
      a3 = *v86;
      v239 = v86;
      if (*(v9 + 16))
      {

        v3 = v9;
        v88 = specialized __RawDictionaryStorage.find<A>(_:)(v87, a3);
        if (v89)
        {
          outlined init with copy of AttributedString._AttributeValue(*(v9 + 56) + 72 * v88, &v273);
          if (!*(v82 + 16))
          {
            goto LABEL_78;
          }
        }

        else
        {
          v277 = 0;
          v275 = 0u;
          v276 = 0u;
          v273 = 0u;
          v274 = 0u;
          if (!*(v82 + 16))
          {
LABEL_78:

            goto LABEL_79;
          }
        }
      }

      else
      {
        v277 = 0;
        v275 = 0u;
        v276 = 0u;
        v273 = 0u;
        v274 = 0u;

        if (!*(v82 + 16))
        {
          goto LABEL_78;
        }
      }

      v3 = specialized __RawDictionaryStorage.find<A>(_:)(v87, a3);
      v91 = v90;

      if (v91)
      {
        outlined init with copy of AttributedString._AttributeValue(*(v82 + 56) + 72 * v3, &v268);
        goto LABEL_80;
      }

LABEL_79:
      v272 = 0;
      v270 = 0u;
      v271 = 0u;
      v268 = 0u;
      v269 = 0u;
LABEL_80:
      outlined init with copy of FloatingPointRoundingRule?(&v273, &v256, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
      outlined init with copy of FloatingPointRoundingRule?(&v268, &v263, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
      if (*(&v257 + 1))
      {
        outlined init with copy of FloatingPointRoundingRule?(&v256, &v247, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
        if (!*(&v264 + 1))
        {
          outlined destroy of TermOfAddress?(&v268, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
          outlined destroy of TermOfAddress?(&v273, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
          outlined destroy of AttributedString._AttributeValue(&v247);
LABEL_90:
          outlined destroy of TermOfAddress?(&v256, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMR);
LABEL_92:

          goto LABEL_93;
        }

        v244 = v265;
        v245 = v266;
        v246 = v267;
        v242 = v263;
        v243 = v264;
        v3 = v250;
        v234 = v251;
        v235 = v85;
        v233 = __swift_project_boxed_opaque_existential_1(&v247, v250);
        a3 = *(&v243 + 1);
        v92 = __swift_project_boxed_opaque_existential_1(&v242, *(&v243 + 1));
        v237 = &v194;
        v93 = *(v3 - 8);
        MEMORY[0x1EEE9AC00](v92);
        v95 = &v194 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
        v236 = &v194;
        v97 = MEMORY[0x1EEE9AC00](v96);
        (*(v99 + 16))(&v194 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0), v97);
        v100 = type metadata accessor for Optional();
        v101 = *(v100 - 8);
        MEMORY[0x1EEE9AC00](v100);
        v103 = &v194 - v102;
        if ((swift_dynamicCast() & 1) == 0)
        {
          outlined destroy of TermOfAddress?(&v268, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
          outlined destroy of TermOfAddress?(&v273, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
          (*(v93 + 56))(v103, 1, 1, v3);
          (*(v101 + 8))(v103, v100);
          outlined destroy of AttributedString._AttributeValue(&v242);
          outlined destroy of AttributedString._AttributeValue(&v247);
          outlined destroy of TermOfAddress?(&v256, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
          goto LABEL_92;
        }

        (*(v93 + 56))(v103, 0, 1, v3);
        (*(v93 + 32))(v95, v103, v3);
        v104 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v93 + 8))(v95, v3);
        v11 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMd;
        a1 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMR;
        outlined destroy of TermOfAddress?(&v268, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
        outlined destroy of TermOfAddress?(&v273, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
        outlined destroy of AttributedString._AttributeValue(&v242);
        outlined destroy of AttributedString._AttributeValue(&v247);
        outlined destroy of TermOfAddress?(&v256, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
        v9 = v228;
        a2 = &v256;
        v82 = v231;
        v85 = v235;
        if ((v104 & 1) == 0)
        {
          goto LABEL_92;
        }
      }

      else
      {
        outlined destroy of TermOfAddress?(&v268, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
        outlined destroy of TermOfAddress?(&v273, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
        if (*(&v264 + 1))
        {
          goto LABEL_90;
        }

        outlined destroy of TermOfAddress?(&v256, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
      }

      ++v85;
      v86 = v239 + 2;
    }

    while (v232 != v85);

    v64 = v229[9];
    v66 = v229[12];
    v222 = v197;
    v63 = v225;
    *&v256 = v225;
    *(&v256 + 1) = v194;
    v59 = v195;
    v227 = v194;
    *&v257 = v195;
    v65 = v196 + 1;
    if (!__OFADD__(v196, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_88:
  v208 = v225;
LABEL_94:
  v105 = v229;
  v106 = v229[9];
  v107 = v229[10];
  v109 = v229[11];
  v108 = v229[12];
  swift_unknownObjectRetain();
  v110 = specialized Rope.subscript.getter(v208, v227, v224, v106, v107, v109, v108);
  swift_unknownObjectRelease();

  if (__OFADD__(v222, v110))
  {
    goto LABEL_184;
  }

  v111 = *(v105 + 5);
  v298 = *(v105 + 3);
  v299 = v111;
  v300 = *(v105 + 7);
  if (__OFSUB__(v222 + v110, v207 >> 11))
  {
LABEL_185:
    __break(1u);
    goto LABEL_186;
  }

  swift_unknownObjectRetain();
  v9 = BigString.UTF8View.index(_:offsetBy:)();
  a3 = v112;
  v11 = v113;
  a1 = v114;
  result = swift_unknownObjectRelease();
  v115 = v229;
  v116 = v9 >> 10;
  v117 = v229[3];
  v118 = v229[5];
  v237 = v229[4];
  v238 = v118;
  v119 = v229[7];
  v239 = v229[6];
  v241 = v119;
  v120 = v229[8];
  if (v9 >> 10 >= v217)
  {
    v235 = v229[8];
    v141 = v226;
    v142 = v220;
    v143 = v221;
    v247 = v226;
    v248 = v221;
    v144 = v223;
    v249 = v223;
    v250 = v220;
    v145 = v218;
    a2 = v219;
    v251 = v219;
    v147 = v202;
    v146 = v203;
    v252 = v202;
    v253 = v203;
    v254 = v218;
    v148 = v117;
    swift_unknownObjectRetain();
    v149 = specialized Set.contains(_:)(0, 0, v230);
    v236 = v148;
    if (v149)
    {
      v292 = v148;
      v293 = v237;
      v294 = v238;
      v295 = v239;
      v296 = v241;
      v297 = v235;
      BigString.UTF8View.subscript.getter();
      *&v242 = v141;
      *(&v242 + 1) = v143;
      *&v243 = v223;
      *(&v243 + 1) = v142;
      *&v244 = v141;
      *(&v244 + 1) = v143;
      *&v245 = v223;
      *(&v245 + 1) = v142;
      specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v242, &v256);
      v144 = v223;
      result = outlined destroy of BigSubstring.UTF8View(&v273);
      a2 = v219;
      if (v261 != 2)
      {
        a2 = v258;
        if (v240 > v258 >> 10)
        {
          goto LABEL_190;
        }

        v147 = v259;
        v146 = v260;
        v145 = v261;
      }
    }

    v284 = v226;
    v285 = v221;
    v286 = v144;
    v287 = v142;
    v288 = a2;
    v289 = v147;
    v290 = v146;
    v291 = v145;
    v150 = v230;
    if ((specialized Collection<>._containsScalarConstraint.getter(v230) & 1) == 0)
    {
      swift_unknownObjectRelease();
      v115 = v229;
      v165 = v217;
LABEL_143:
      if (a2 >> 10 == v165)
      {
        v9 = v219;
      }

      else
      {
        v9 = a2;
      }

      if (a2 >> 10 == v165)
      {
        a3 = v202;
      }

      else
      {
        a3 = v147;
      }

      if (a2 >> 10 == v165)
      {
        v11 = v203;
      }

      else
      {
        v11 = v146;
      }

      if (a2 >> 10 == v165)
      {
        a1 = v218;
      }

      else
      {
        a1 = v145;
      }

LABEL_161:
      a2 = v115[2];
      v180 = v115[9];
      v179 = v115[10];
      v181 = v115[11];
      v182 = v115[12];
      swift_unknownObjectRetain();
      specialized Rope.subscript.getter(v216, v215, v214, v180, v179, v181, v182);
      v3 = v183;
      swift_unknownObjectRelease();
      if (one-time initialization token for name == -1)
      {
        if (!*(v3 + 16))
        {
          goto LABEL_177;
        }

        goto LABEL_163;
      }

LABEL_176:
      swift_once();
      if (!*(v3 + 16))
      {
        goto LABEL_177;
      }

LABEL_163:
      v184 = specialized __RawDictionaryStorage.find<A>(_:)(static AttributeScopes.FoundationAttributes.LocalizedNumberFormatAttribute.name, qword_1EA7B24E0);
      if (v185)
      {
        outlined init with copy of AttributedString._AttributeValue(*(v3 + 56) + 72 * v184, &v268);

        outlined init with copy of Hashable & Sendable(&v268, &v255);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd, &_sSH_s8SendablepMR);
        result = swift_dynamicCast();
        if (!result)
        {
          goto LABEL_196;
        }

        result = outlined destroy of AttributedString._AttributeValue(&v268);
        v186 = 0;
        goto LABEL_178;
      }

LABEL_177:

      v186 = 1;
LABEL_178:
      *v213 = v186;
      if (v9 >> 10 >= v212 >> 10)
      {
        v193 = v211;
        *v211 = v212;
        v193[1] = v210;
        *(v193 + 4) = v209;
        *(v193 + 5) = v9;
        *(v193 + 6) = a3;
        *(v193 + 7) = v11;
        *(v193 + 8) = a1;
        *(v193 + 9) = a2;
        return result;
      }

      __break(1u);
      goto LABEL_181;
    }

    a3 = v150 + 56;
    v151 = 1 << *(v150 + 32);
    v152 = -1;
    if (v151 < 64)
    {
      v152 = ~(-1 << v151);
    }

    v3 = v152 & *(v150 + 56);
    v11 = ((v151 + 63) >> 6);

    a1 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    while (v3)
    {
LABEL_132:
      v154 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      v155 = (*(v230 + 48) + ((a1 << 10) | (16 * v154)));
      v156 = v155[1];
      if (v156 >= 2)
      {
        v157 = specialized Collection.first.getter(*v155, v156);
        if ((v157 & 0x100000000) == 0)
        {
          v234 = v157;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1, v9);
          }

          v159 = *(v9 + 16);
          v158 = *(v9 + 24);
          v160 = (v159 + 1);
          v161 = v234;
          if (v159 >= v158 >> 1)
          {
            v233 = (v159 + 1);
            v162 = v9;
            v163 = v159;
            v164 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v158 > 1), v159 + 1, 1, v162);
            v160 = v233;
            v161 = v234;
            v159 = v163;
            v9 = v164;
          }

          *(v9 + 16) = v160;
          *(v9 + 4 * v159 + 32) = v161;
        }
      }
    }

    while (1)
    {
      v153 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        break;
      }

      if (v153 >= v11)
      {

        v278 = v236;
        v279 = v237;
        v280 = v238;
        v281 = v239;
        v282 = v241;
        v283 = v235;
        BigString.UnicodeScalarView.subscript.getter();
        v166 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v9);
        v241 = v167;
        v169 = v168;
        v171 = v170;

        swift_unknownObjectRelease();
        result = outlined destroy of BigSubstring.UnicodeScalarView(&v256);
        v115 = v229;
        v165 = v217;
        if (v171 == 2)
        {
          goto LABEL_143;
        }

        if (v240 <= v166 >> 10)
        {
          a2 = v166;
          v147 = v241;
          v146 = v169;
          v145 = v171;
          goto LABEL_143;
        }

        goto LABEL_191;
      }

      v3 = *(a3 + 8 * v153);
      ++a1;
      if (v3)
      {
        a1 = v153;
        goto LABEL_132;
      }
    }

LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
    goto LABEL_174;
  }

  v121 = v223;
  v122 = v221;
  v123 = v226;
  if (v116 < v240)
  {
    goto LABEL_188;
  }

  v247 = v226;
  v248 = v221;
  v249 = v223;
  v250 = v220;
  v251 = v9;
  v252 = a3;
  v253 = v11;
  v254 = a1;
  if (v240 == v116)
  {
    goto LABEL_161;
  }

  v124 = v117;
  swift_unknownObjectRetain();
  v125 = specialized Set.contains(_:)(0, 0, v230);
  v236 = v124;
  if ((v125 & 1) == 0 || (v292 = v124, v293 = v237, v294 = v238, v295 = v239, v296 = v241, v297 = v120, BigString.UTF8View.subscript.getter(), *&v242 = v123, *(&v242 + 1) = v122, *&v243 = v223, *(&v243 + 1) = v220, *&v244 = v123, *(&v244 + 1) = v122, *&v245 = v223, *(&v245 + 1) = v220, specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v242, &v256), v121 = v223, result = outlined destroy of BigSubstring.UTF8View(&v273), v261 == 2))
  {
LABEL_103:
    v284 = v123;
    v285 = v122;
    v286 = v121;
    v287 = v220;
    v288 = v9;
    v289 = a3;
    v290 = v11;
    v291 = a1;
    v3 = v230;
    if (specialized Collection<>._containsScalarConstraint.getter(v230))
    {
      v235 = v120;
      v126 = v3 + 56;
      v127 = 1 << *(v3 + 32);
      v128 = -1;
      if (v127 < 64)
      {
        v128 = ~(-1 << v127);
      }

      v129 = v128 & *(v3 + 56);
      a2 = (v127 + 63) >> 6;

      v130 = 0;
      v234 = MEMORY[0x1E69E7CC0];
      while (v129)
      {
LABEL_112:
        v132 = __clz(__rbit64(v129));
        v129 &= v129 - 1;
        v133 = (*(v230 + 48) + ((v130 << 10) | (16 * v132)));
        v134 = v133[1];
        if (v134 >= 2)
        {
          v135 = specialized Collection.first.getter(*v133, v134);
          if ((v135 & 0x100000000) == 0)
          {
            v233 = v135;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v234 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v234 + 2) + 1, 1, v234);
            }

            v136 = v233;
            v3 = *(v234 + 2);
            v137 = *(v234 + 3);
            v138 = v3 + 1;
            if (v3 >= v137 >> 1)
            {
              v232 = v3 + 1;
              v140 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v137 > 1), v3 + 1, 1, v234);
              v138 = v232;
              v136 = v233;
              v234 = v140;
            }

            v139 = v234;
            *(v234 + 2) = v138;
            *&v139[4 * v3 + 32] = v136;
          }
        }
      }

      while (1)
      {
        v131 = v130 + 1;
        if (__OFADD__(v130, 1))
        {
          break;
        }

        if (v131 >= a2)
        {

          v278 = v236;
          v279 = v237;
          v280 = v238;
          v281 = v239;
          v282 = v241;
          v283 = v235;
          BigString.UnicodeScalarView.subscript.getter();
          v187 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v234);
          v189 = v188;
          v241 = v190;
          v192 = v191;

          swift_unknownObjectRelease();
          result = outlined destroy of BigSubstring.UnicodeScalarView(&v256);
          v115 = v229;
          if (v192 == 2)
          {
            goto LABEL_161;
          }

          if (v240 <= v187 >> 10)
          {
            v9 = v187;
            a3 = v189;
            v11 = v241;
            a1 = v192;
            goto LABEL_161;
          }

          goto LABEL_195;
        }

        v129 = *(v126 + 8 * v131);
        ++v130;
        if (v129)
        {
          v130 = v131;
          goto LABEL_112;
        }
      }

LABEL_174:
      __break(1u);
LABEL_175:
      __break(1u);
      goto LABEL_176;
    }

    swift_unknownObjectRelease();
    goto LABEL_160;
  }

  v9 = v258;
  if (v240 <= v258 >> 10)
  {
    a3 = v259;
    v11 = v260;
    a1 = v261;
    goto LABEL_103;
  }

LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  __break(1u);
  return result;
}

uint64_t specialized AttributedString.Runs.AttributesSlice1.subscript.getter(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMR);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v203 - v10);
  v12 = *(a3 + 16);
  v285 = *a3;
  v286 = v12;
  *&v287 = *(a3 + 32);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V014InflectionRuleG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V014InflectionRuleG0OGMR);
  v14 = *(v3 + *(v13 + 36));
  v239 = *(v3 + *(v13 + 40));
  AttributedString.Runs._slicedRunBoundary(roundingDown:attributeNames:constraints:)(&v268, &v285, v14, v239, &v280);
  v247 = v14;
  v241 = v14[2];
  if (!v241)
  {
    goto LABEL_172;
  }

  v220 = a2;
  v224 = *(&v280 + 1);
  v225 = v280;
  v222 = a1;
  v223 = v281;
  v221 = v268;
  v219 = v269;
  v218 = v270;
  v15 = *(a3 + 8);
  v16 = *(a3 + 16);
  v17 = *(a3 + 24);
  v18 = *v3;
  v235 = *a3;
  v229 = v17;
  v230 = v15;
  v232 = v16;
  v238 = v18;
  AttributedString.Guts.findRun(at:)(v235, v17, &v268);
  v236 = *(&v268 + 1);
  v233 = v269;
  v234 = v268;
  v246 = *(&v269 + 1);
  v231 = v270;
  v215 = v272;
  v216 = v271;
  v213 = v274;
  v214 = v273;
  v19 = *(type metadata accessor for AttributedString.Runs(0) + 24);
  a3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd, &_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMR);
  v250 = v4;
  v248 = v19;
  RangeSet.ranges.getter();
  v3 = v11;
  a1 = RangeSet.Ranges.count.getter();
  a2 = v9[1];
  ++v9;
  (a2)(v11, v8);
  if (a1 < 1)
  {
LABEL_166:
    __break(1u);
LABEL_167:
    __break(1u);
LABEL_168:
    __break(1u);
    goto LABEL_169;
  }

  v20 = 0;
  v249 = v235 >> 10;
  while (1)
  {
    if (__OFADD__(v20, a1))
    {
      goto LABEL_167;
    }

    v21 = (v20 + a1) / 2;
    RangeSet.ranges.getter();
    v3 = v11;
    RangeSet.Ranges.subscript.getter();
    (a2)(v11, v8);
    if (v249 >= v268 >> 10)
    {
      break;
    }

LABEL_4:
    a1 = v21;
    if (v20 >= v21)
    {
      goto LABEL_166;
    }
  }

  v3 = v270;
  if (v249 >= v270 >> 10)
  {
    v20 = v21 + 1;
    v21 = a1;
    goto LABEL_4;
  }

  v226 = v270 >> 10;
  v22 = v271;
  v23 = v272;
  v24 = v273;
  v25 = v239;
  v26 = *(v239 + 16);
  v227 = v273;
  v228 = v270;
  if (v26 == 1 && (specialized Set.contains(_:)(0, 1, v239) & 1) == 0)
  {
    v29 = v24;
    v31 = v238[3];
    v30 = v238[4];
    v32 = v238[5];
    v33 = v238[6];
    v34 = v238[7];
    v247 = v238[8];
    v248 = v34;
    v256 = v235;
    v257 = v230;
    v35 = v232;
    v258 = v232;
    v259 = v229;
    v260 = v3;
    v261 = v22;
    v262 = v23;
    v263 = v29;
    swift_unknownObjectRetain();
    v36 = specialized Set.contains(_:)(0, 0, v25);
    v245 = v32;
    v246 = v30;
    v250 = v31;
    v244 = v33;
    if (v36)
    {
      *&v310 = v31;
      *(&v310 + 1) = v30;
      *&v311 = v32;
      *(&v311 + 1) = v33;
      *&v312 = v248;
      *(&v312 + 1) = v247;
      BigString.UTF8View.subscript.getter();
      *&v251 = v235;
      *(&v251 + 1) = v230;
      *&v252 = v35;
      *(&v252 + 1) = v229;
      *&v253 = v235;
      *(&v253 + 1) = v230;
      *&v254 = v35;
      *(&v254 + 1) = v229;
      specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v251, &v268);
      v3 = v228;
      outlined destroy of BigSubstring.UTF8View(&v285);
      if (v273 != 2)
      {
        v3 = v270;
        if (v249 > v270 >> 10)
        {
          goto LABEL_189;
        }

        v22 = v271;
        v23 = v272;
        v227 = v273;
      }
    }

    v296 = v235;
    v297 = v230;
    v298 = v232;
    v299 = v229;
    v300 = v3;
    v301 = v22;
    v11 = v227;
    v302 = v23;
    v303 = v227;
    v9 = v22;
    if (specialized Collection<>._containsScalarConstraint.getter(v25))
    {
      v211 = v22;
      v212 = v23;
      v228 = v3;
      v9 = (v25 + 56);
      v37 = 1 << *(v25 + 32);
      v38 = -1;
      if (v37 < 64)
      {
        v38 = ~(-1 << v37);
      }

      a2 = v38 & *(v25 + 56);
      v3 = (v37 + 63) >> 6;

      v39 = 0;
      a3 = MEMORY[0x1E69E7CC0];
      v40 = v245;
      v11 = v246;
      a1 = v250;
      v41 = v244;
      while (1)
      {
        if (a2)
        {
          goto LABEL_28;
        }

        do
        {
          v42 = v39 + 1;
          if (__OFADD__(v39, 1))
          {
            goto LABEL_170;
          }

          if (v42 >= v3)
          {

            v304 = a1;
            v305 = v11;
            v306 = v40;
            v307 = v41;
            v308 = v248;
            v309 = v247;
            BigString.UnicodeScalarView.subscript.getter();
            v176 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(a3);
            v178 = v177;
            v180 = v179;
            v182 = v181;

            swift_unknownObjectRelease();
            outlined destroy of BigSubstring.UnicodeScalarView(&v268);
            v11 = v227;
            a3 = v228;
            v9 = v211;
            a1 = v212;
            v115 = v238;
            if (v182 == 2)
            {
              goto LABEL_158;
            }

            if (v249 <= v176 >> 10)
            {
              a3 = v176;
              v9 = v178;
              a1 = v180;
              v11 = v182;
              goto LABEL_158;
            }

LABEL_190:
            __break(1u);
            goto LABEL_191;
          }

          a2 = v9[v42];
          ++v39;
        }

        while (!a2);
        v39 = v42;
LABEL_28:
        v43 = __clz(__rbit64(a2));
        a2 &= a2 - 1;
        v44 = (*(v239 + 48) + ((v39 << 10) | (16 * v43)));
        v45 = v44[1];
        if (v45 >= 2)
        {
          v46 = specialized Collection.first.getter(*v44, v45);
          if ((v46 & 0x100000000) == 0)
          {
            v243 = v46;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              a3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a3 + 16) + 1, 1, a3);
            }

            v48 = *(a3 + 16);
            v47 = *(a3 + 24);
            v49 = (v48 + 1);
            v50 = v243;
            if (v48 >= v47 >> 1)
            {
              v242 = (v48 + 1);
              v51 = a3;
              v52 = v48;
              v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v51);
              v49 = v242;
              v50 = v243;
              v48 = v52;
              a3 = v53;
            }

            *(a3 + 16) = v49;
            *(a3 + 4 * v48 + 32) = v50;
          }
        }
      }
    }

    swift_unknownObjectRelease();
    a3 = v3;
    a1 = v23;
LABEL_157:
    v115 = v238;
    goto LABEL_158;
  }

  v27 = v250[15];
  v211 = v22;
  v212 = v23;
  if (v246 == v27)
  {
    v28 = v250[22];
    if (v250[26] == 2)
    {
      if (v28 != 2)
      {
        goto LABEL_88;
      }
    }

    else if (v28 == 2 || (v250[19] ^ v250[23]) >= 0x400)
    {
      goto LABEL_88;
    }
  }

  if (v246 >= v27)
  {
LABEL_183:
    __break(1u);
    goto LABEL_184;
  }

  v209 = v27;
  v54 = v238;
  v55 = v238[9];
  v56 = v238[10];
  v57 = v238[11];
  v58 = v238[12];
  swift_unknownObjectRetain();
  v60 = v233;
  v59 = v234;
  v61 = v236;
  specialized Rope.subscript.getter(v234, v236, v233, v55, v56, v57, v58);
  v9 = v62;
  v207 = v63;
  swift_unknownObjectRelease();
  v64 = v59;
  v65 = v54[9];
  v66 = v246 + 1;
  a1 = &v268;
  v208 = (v247 + 5);
  a3 = v54[11];
  v67 = v54[12];
  *&v268 = v59;
  *(&v268 + 1) = v61;
  *&v269 = v60;
  v237 = v9;
  while (2)
  {
    if (v64 != v67)
    {
      goto LABEL_179;
    }

    v217 = v67;
    if (v60)
    {
      v68 = *(v60 + 24 * ((v236 >> ((4 * *(v60 + 18) + 8) & 0x3C)) & 0xF) + 24);
      v69 = v231 + v68;
      if (!__OFADD__(v231, v68))
      {
        if (v65)
        {
          v70 = v66;
          swift_unknownObjectRetain();
          goto LABEL_46;
        }

        goto LABEL_178;
      }

LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
      goto LABEL_190;
    }

    v70 = v66;
    swift_unknownObjectRetain();
    v71 = specialized Rope._Node.subscript.getter(v236, v65);

    v72 = __OFADD__(v231, v71);
    v69 = v231 + v71;
    if (v72)
    {
      goto LABEL_186;
    }

    a1 = &v268;
    if (!v65)
    {
      goto LABEL_178;
    }

LABEL_46:
    if (v236 >= (((-15 << ((4 * *(v65 + 18) + 8) & 0x3C)) - 1) & *(v65 + 18) | (*(v65 + 16) << ((4 * *(v65 + 18) + 8) & 0x3C))))
    {
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
LABEL_181:
      __break(1u);
      goto LABEL_182;
    }

    v206 = v69;
    v233 = v60;
    if (v60)
    {
      v73 = (4 * *(v60 + 18) + 8) & 0x3C;
      v74 = ((v236 >> v73) & 0xF) + 1;
      if (v74 < *(v60 + 16))
      {
        swift_unknownObjectRelease();
        v75 = (v74 << v73) | ((-15 << v73) - 1) & v236;
        goto LABEL_52;
      }
    }

    if (specialized Rope._Node.formSuccessor(of:)(&v268, v65))
    {
      swift_unknownObjectRelease();
      v75 = *(&v268 + 1);
LABEL_52:
      v76 = v269;
      v77 = v268;
    }

    else
    {
      v78 = *(v65 + 18);
      a3 = *(v65 + 16);
      swift_unknownObjectRelease();
      v76 = 0;
      v75 = ((-15 << ((4 * v78 + 8) & 0x3C)) - 1) & v78 | (a3 << ((4 * v78 + 8) & 0x3C));
      v77 = v217;
    }

    if (v209 < v70)
    {
LABEL_93:

      goto LABEL_94;
    }

    v205 = v70;
    v234 = v77;
    a2 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMd;
    v11 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMR;
    if (v70 == v209)
    {
      v79 = v250[22];
      if (v250[26] == 2)
      {
        v77 = v234;
        if (v79 == 2)
        {
          goto LABEL_93;
        }
      }

      else
      {
        v77 = v234;
        if (v79 != 2)
        {
          v77 = v234;
          if ((v250[19] ^ v250[23]) < 0x400)
          {
            goto LABEL_93;
          }
        }
      }
    }

    if (v77 != v238[12])
    {
      goto LABEL_180;
    }

    v203 = v75;
    v204 = v76;
    if (v76)
    {
      v80 = v76 + 24 * ((v75 >> ((4 * *(v76 + 18) + 8) & 0x3C)) & 0xF);
      v81 = *(v80 + 32);
      v3 = *(v80 + 40);

      v210 = v3;
    }

    else
    {
      v3 = v238[9];
      a3 = v238[11];
      swift_unknownObjectRetain();
      specialized Rope._Node.subscript.getter(v75, v3);
      v81 = v82;
      v210 = v83;
      swift_unknownObjectRelease();
    }

    v84 = 0;
    v85 = v208;
    v240 = v81;
    do
    {
      if (v84 >= v247[2])
      {
        goto LABEL_168;
      }

      v86 = *(v85 - 1);
      a3 = *v85;
      v248 = v85;
      if (v9[2])
      {

        v3 = v9;
        v87 = specialized __RawDictionaryStorage.find<A>(_:)(v86, a3);
        if (v88)
        {
          outlined init with copy of AttributedString._AttributeValue(v9[7] + 72 * v87, &v285);
          if (!*(v81 + 16))
          {
            goto LABEL_78;
          }
        }

        else
        {
          v289 = 0;
          v287 = 0u;
          v288 = 0u;
          v285 = 0u;
          v286 = 0u;
          if (!*(v81 + 16))
          {
LABEL_78:

            goto LABEL_79;
          }
        }
      }

      else
      {
        v289 = 0;
        v287 = 0u;
        v288 = 0u;
        v285 = 0u;
        v286 = 0u;

        if (!*(v81 + 16))
        {
          goto LABEL_78;
        }
      }

      v3 = specialized __RawDictionaryStorage.find<A>(_:)(v86, a3);
      v90 = v89;

      if (v90)
      {
        outlined init with copy of AttributedString._AttributeValue(*(v81 + 56) + 72 * v3, &v280);
        goto LABEL_80;
      }

LABEL_79:
      v284 = 0;
      v282 = 0u;
      v283 = 0u;
      v280 = 0u;
      v281 = 0u;
LABEL_80:
      outlined init with copy of FloatingPointRoundingRule?(&v285, &v268, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
      outlined init with copy of FloatingPointRoundingRule?(&v280, &v275, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
      if (*(&v269 + 1))
      {
        outlined init with copy of FloatingPointRoundingRule?(&v268, &v256, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
        if (!*(&v276 + 1))
        {
          outlined destroy of TermOfAddress?(&v280, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
          outlined destroy of TermOfAddress?(&v285, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
          outlined destroy of AttributedString._AttributeValue(&v256);
LABEL_90:
          outlined destroy of TermOfAddress?(&v268, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMR);
LABEL_92:

          goto LABEL_93;
        }

        v253 = v277;
        v254 = v278;
        v255 = v279;
        v251 = v275;
        v252 = v276;
        v3 = v259;
        v243 = v260;
        v244 = v84;
        v242 = __swift_project_boxed_opaque_existential_1(&v256, v259);
        v91 = __swift_project_boxed_opaque_existential_1(&v251, *(&v252 + 1));
        v246 = &v203;
        v92 = *(v3 - 8);
        MEMORY[0x1EEE9AC00](v91);
        v94 = &v203 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
        v245 = &v203;
        v96 = MEMORY[0x1EEE9AC00](v95);
        (*(v98 + 16))(&v203 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0), v96);
        v99 = type metadata accessor for Optional();
        v100 = *(v99 - 8);
        MEMORY[0x1EEE9AC00](v99);
        v102 = &v203 - v101;
        if ((swift_dynamicCast() & 1) == 0)
        {
          outlined destroy of TermOfAddress?(&v280, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
          outlined destroy of TermOfAddress?(&v285, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
          (*(v92 + 56))(v102, 1, 1, v3);
          (*(v100 + 8))(v102, v99);
          outlined destroy of AttributedString._AttributeValue(&v251);
          outlined destroy of AttributedString._AttributeValue(&v256);
          outlined destroy of TermOfAddress?(&v268, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
          goto LABEL_92;
        }

        (*(v92 + 56))(v102, 0, 1, v3);
        (*(v92 + 32))(v94, v102, v3);
        v103 = dispatch thunk of static Equatable.== infix(_:_:)();
        v104 = *(v92 + 8);
        a3 = v92 + 8;
        v104(v94, v3);
        a2 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMd;
        v11 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMR;
        outlined destroy of TermOfAddress?(&v280, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
        outlined destroy of TermOfAddress?(&v285, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
        outlined destroy of AttributedString._AttributeValue(&v251);
        outlined destroy of AttributedString._AttributeValue(&v256);
        outlined destroy of TermOfAddress?(&v268, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
        v9 = v237;
        a1 = &v268;
        v81 = v240;
        v84 = v244;
        if ((v103 & 1) == 0)
        {
          goto LABEL_92;
        }
      }

      else
      {
        outlined destroy of TermOfAddress?(&v280, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
        outlined destroy of TermOfAddress?(&v285, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
        if (*(&v276 + 1))
        {
          goto LABEL_90;
        }

        outlined destroy of TermOfAddress?(&v268, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
      }

      ++v84;
      v85 = v248 + 2;
    }

    while (v241 != v84);

    v65 = v238[9];
    a3 = v238[11];
    v67 = v238[12];
    v231 = v206;
    v64 = v234;
    *&v268 = v234;
    *(&v268 + 1) = v203;
    v60 = v204;
    v236 = v203;
    *&v269 = v204;
    v66 = v205 + 1;
    if (!__OFADD__(v205, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_88:
  v217 = v234;
LABEL_94:
  v105 = v238;
  v106 = v238[9];
  v107 = v238[10];
  v108 = v238[11];
  v109 = v238[12];
  swift_unknownObjectRetain();
  v110 = specialized Rope.subscript.getter(v217, v236, v233, v106, v107, v108, v109);
  swift_unknownObjectRelease();

  if (__OFADD__(v231, v110))
  {
    goto LABEL_181;
  }

  v111 = *(v105 + 5);
  v310 = *(v105 + 3);
  v311 = v111;
  v312 = *(v105 + 7);
  if (__OFSUB__(v231 + v110, v216 >> 11))
  {
LABEL_182:
    __break(1u);
    goto LABEL_183;
  }

  swift_unknownObjectRetain();
  a3 = BigString.UTF8View.index(_:offsetBy:)();
  v9 = v112;
  a1 = v113;
  v11 = v114;
  swift_unknownObjectRelease();
  v115 = v238;
  v116 = a3 >> 10;
  v117 = v238[3];
  v118 = v238[5];
  v246 = v238[4];
  v247 = v118;
  v119 = v238[7];
  v248 = v238[6];
  v250 = v119;
  v120 = v238[8];
  if (a3 >> 10 >= v226)
  {
    v244 = v238[8];
    v145 = v235;
    v146 = v229;
    v147 = v230;
    v256 = v235;
    v257 = v230;
    v148 = v232;
    v258 = v232;
    v259 = v229;
    v149 = v227;
    a2 = v228;
    v260 = v228;
    v9 = v211;
    v150 = v212;
    v261 = v211;
    v262 = v212;
    v263 = v227;
    v151 = v117;
    swift_unknownObjectRetain();
    v152 = specialized Set.contains(_:)(0, 0, v239);
    v245 = v151;
    if (v152)
    {
      v304 = v151;
      v305 = v246;
      v306 = v247;
      v307 = v248;
      v308 = v250;
      v309 = v244;
      BigString.UTF8View.subscript.getter();
      *&v251 = v145;
      *(&v251 + 1) = v147;
      *&v252 = v232;
      *(&v252 + 1) = v146;
      *&v253 = v145;
      *(&v253 + 1) = v147;
      *&v254 = v232;
      *(&v254 + 1) = v146;
      specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v251, &v268);
      v148 = v232;
      outlined destroy of BigSubstring.UTF8View(&v285);
      a2 = v228;
      if (v273 != 2)
      {
        a2 = v270;
        if (v249 > v270 >> 10)
        {
          goto LABEL_187;
        }

        v9 = v271;
        v150 = v272;
        v149 = v273;
      }
    }

    v296 = v235;
    v297 = v230;
    v298 = v148;
    v299 = v146;
    v300 = a2;
    v301 = v9;
    v302 = v150;
    v303 = v149;
    v153 = v239;
    if ((specialized Collection<>._containsScalarConstraint.getter(v239) & 1) == 0)
    {
      swift_unknownObjectRelease();
      v115 = v238;
      v169 = v226;
LABEL_143:
      if (a2 >> 10 == v169)
      {
        a3 = v228;
      }

      else
      {
        a3 = a2;
      }

      if (a2 >> 10 == v169)
      {
        v9 = v211;
        a1 = v212;
      }

      else
      {
        a1 = v150;
      }

      if (a2 >> 10 == v169)
      {
        v11 = v227;
      }

      else
      {
        v11 = v149;
      }

LABEL_158:
      a2 = v115[2];
      v184 = v115[9];
      v183 = v115[10];
      v185 = v115[11];
      v186 = v115[12];
      swift_unknownObjectRetain();
      specialized Rope.subscript.getter(v225, v224, v223, v184, v183, v185, v186);
      v3 = v187;
      swift_unknownObjectRelease();
      if (one-time initialization token for name == -1)
      {
        if (!*(v3 + 16))
        {
          goto LABEL_174;
        }

        goto LABEL_160;
      }

LABEL_173:
      swift_once();
      if (!*(v3 + 16))
      {
        goto LABEL_174;
      }

LABEL_160:
      v188 = specialized __RawDictionaryStorage.find<A>(_:)(static AttributeScopes.FoundationAttributes.InflectionRuleAttribute.name, qword_1EA7B2660);
      if (v189)
      {
        outlined init with copy of AttributedString._AttributeValue(*(v3 + 56) + 72 * v188, &v280);

        outlined init with copy of Hashable & Sendable(&v280, &v267);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd, &_sSH_s8SendablepMR);
        if (!swift_dynamicCast())
        {
          goto LABEL_193;
        }

        result = outlined destroy of AttributedString._AttributeValue(&v280);
        v191 = v265;
        v192 = v266;
        v193 = v222;
        *v222 = v264;
        *(v193 + 20) = v192;
        *(v193 + 4) = v191;
        goto LABEL_175;
      }

LABEL_174:

      v201 = v222;
      *v222 = xmmword_1812187D0;
      *(v201 + 20) = 0;
      *(v201 + 4) = 0;
LABEL_175:
      if (a3 >> 10 >= v221 >> 10)
      {
        v202 = v220;
        *v220 = v221;
        v202[1] = v219;
        *(v202 + 4) = v218;
        *(v202 + 5) = a3;
        *(v202 + 6) = v9;
        *(v202 + 7) = a1;
        *(v202 + 8) = v11;
        *(v202 + 9) = a2;
        return result;
      }

      __break(1u);
      goto LABEL_178;
    }

    a1 = v153 + 56;
    v154 = 1 << *(v153 + 32);
    v155 = -1;
    if (v154 < 64)
    {
      v155 = ~(-1 << v154);
    }

    v156 = v155 & *(v153 + 56);
    v11 = ((v154 + 63) >> 6);

    v3 = 0;
    a3 = MEMORY[0x1E69E7CC0];
    while (v156)
    {
LABEL_132:
      v158 = __clz(__rbit64(v156));
      v156 &= v156 - 1;
      v159 = (*(v239 + 48) + ((v3 << 10) | (16 * v158)));
      v160 = v159[1];
      if (v160 >= 2)
      {
        v161 = specialized Collection.first.getter(*v159, v160);
        if ((v161 & 0x100000000) == 0)
        {
          v243 = v161;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a3 + 16) + 1, 1, a3);
          }

          v163 = *(a3 + 16);
          v162 = *(a3 + 24);
          v164 = (v163 + 1);
          v165 = v243;
          if (v163 >= v162 >> 1)
          {
            v242 = (v163 + 1);
            v166 = a3;
            v167 = v163;
            v168 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v162 > 1), v163 + 1, 1, v166);
            v164 = v242;
            v165 = v243;
            v163 = v167;
            a3 = v168;
          }

          *(a3 + 16) = v164;
          *(a3 + 4 * v163 + 32) = v165;
        }
      }
    }

    while (1)
    {
      v157 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (v157 >= v11)
      {

        v290 = v245;
        v291 = v246;
        v292 = v247;
        v293 = v248;
        v294 = v250;
        v295 = v244;
        BigString.UnicodeScalarView.subscript.getter();
        v170 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(a3);
        v172 = v171;
        v250 = v173;
        v175 = v174;

        swift_unknownObjectRelease();
        outlined destroy of BigSubstring.UnicodeScalarView(&v268);
        v115 = v238;
        v169 = v226;
        if (v175 == 2)
        {
          goto LABEL_143;
        }

        if (v249 <= v170 >> 10)
        {
          a2 = v170;
          v9 = v172;
          v150 = v250;
          v149 = v175;
          goto LABEL_143;
        }

        goto LABEL_188;
      }

      v156 = *(a1 + 8 * v157);
      ++v3;
      if (v156)
      {
        v3 = v157;
        goto LABEL_132;
      }
    }

LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
    goto LABEL_171;
  }

  v121 = v232;
  v122 = v230;
  v123 = v235;
  if (v116 < v249)
  {
    goto LABEL_185;
  }

  v256 = v235;
  v257 = v230;
  v258 = v232;
  v259 = v229;
  v260 = a3;
  v261 = v9;
  v262 = a1;
  v263 = v11;
  if (v249 == v116)
  {
    goto LABEL_158;
  }

  v124 = v117;
  swift_unknownObjectRetain();
  v125 = specialized Set.contains(_:)(0, 0, v239);
  v245 = v124;
  if ((v125 & 1) == 0 || (v304 = v124, v305 = v246, v306 = v247, v307 = v248, v308 = v250, v309 = v120, BigString.UTF8View.subscript.getter(), *&v251 = v123, *(&v251 + 1) = v122, *&v252 = v232, *(&v252 + 1) = v229, *&v253 = v123, *(&v253 + 1) = v122, *&v254 = v232, *(&v254 + 1) = v229, specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v251, &v268), v121 = v232, outlined destroy of BigSubstring.UTF8View(&v285), v273 == 2))
  {
LABEL_103:
    v296 = v123;
    v297 = v122;
    v298 = v121;
    v299 = v229;
    v300 = a3;
    v301 = v9;
    v302 = a1;
    v303 = v11;
    v126 = v239;
    if (specialized Collection<>._containsScalarConstraint.getter(v239))
    {
      v244 = v120;
      v127 = v126 + 56;
      v128 = 1 << *(v126 + 32);
      v129 = -1;
      if (v128 < 64)
      {
        v129 = ~(-1 << v128);
      }

      v3 = v129 & *(v126 + 56);
      a2 = (v128 + 63) >> 6;

      v130 = 0;
      v131 = MEMORY[0x1E69E7CC0];
      while (v3)
      {
LABEL_112:
        v133 = __clz(__rbit64(v3));
        v3 &= v3 - 1;
        v134 = (*(v239 + 48) + ((v130 << 10) | (16 * v133)));
        v135 = v134[1];
        if (v135 >= 2)
        {
          v136 = specialized Collection.first.getter(*v134, v135);
          if ((v136 & 0x100000000) == 0)
          {
            v243 = v136;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v131 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v131 + 2) + 1, 1, v131);
            }

            v137 = v131;
            v138 = *(v131 + 2);
            v139 = v137;
            v140 = *(v137 + 3);
            v141 = (v138 + 1);
            v142 = v243;
            if (v138 >= v140 >> 1)
            {
              v242 = (v138 + 1);
              v144 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v140 > 1), v138 + 1, 1, v139);
              v141 = v242;
              v142 = v243;
              v139 = v144;
            }

            *(v139 + 2) = v141;
            v143 = &v139[4 * v138];
            v131 = v139;
            *(v143 + 8) = v142;
          }
        }
      }

      while (1)
      {
        v132 = v130 + 1;
        if (__OFADD__(v130, 1))
        {
          break;
        }

        if (v132 >= a2)
        {

          v290 = v245;
          v291 = v246;
          v292 = v247;
          v293 = v248;
          v294 = v250;
          v295 = v244;
          BigString.UnicodeScalarView.subscript.getter();
          v194 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v131);
          v196 = v195;
          v198 = v197;
          v200 = v199;

          swift_unknownObjectRelease();
          outlined destroy of BigSubstring.UnicodeScalarView(&v268);
          v115 = v238;
          if (v200 == 2)
          {
            goto LABEL_158;
          }

          if (v249 <= v194 >> 10)
          {
            a3 = v194;
            v9 = v196;
            a1 = v198;
            v11 = v200;
            goto LABEL_158;
          }

          goto LABEL_192;
        }

        v3 = *(v127 + 8 * v132);
        ++v130;
        if (v3)
        {
          v130 = v132;
          goto LABEL_112;
        }
      }

LABEL_171:
      __break(1u);
LABEL_172:
      __break(1u);
      goto LABEL_173;
    }

    swift_unknownObjectRelease();
    goto LABEL_157;
  }

  a3 = v270;
  if (v249 <= v270 >> 10)
  {
    v9 = v271;
    a1 = v272;
    v11 = v273;
    goto LABEL_103;
  }

LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  v264 = xmmword_1812187D0;
  v266 = 0;
  v265 = 0;
  result = outlined consume of AttributedString.AttributeRunBoundaries?(0, 1);
  __break(1u);
  return result;
}