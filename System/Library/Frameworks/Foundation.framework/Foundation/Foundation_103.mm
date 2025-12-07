Swift::Int Locale.Components.hashValue.getter()
{
  Hasher.init(_seed:)();
  Locale.Components.hash(into:)(v1);
  return Hasher._finalize()();
}

void Locale.Components.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation6LocaleV10ComponentsV10CodingKeys33_BFF28DEA2E1A79B78E7508A27E6F7AC8LLOGMd, &_ss22KeyedDecodingContainerVy10Foundation6LocaleV10ComponentsV10CodingKeys33_BFF28DEA2E1A79B78E7508A27E6F7AC8LLOGMR);
  v5 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v7 = &v30 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Locale.Components.CodingKeys and conformance Locale.Components.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v108 = v2;
    __swift_destroy_boxed_opaque_existential_1(a1);
    v45 = 0;
    v46 = 0uLL;
    v47 = 0uLL;
    v49 = 0uLL;
    v48 = 0uLL;
    v51 = 0uLL;
    v50 = 0uLL;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
LABEL_4:
    outlined consume of Locale.LanguageCode?(v21, v20, v19, v18);
    outlined consume of Locale.LanguageCode?(v17, v16, v15, v14);
    outlined consume of Locale.LanguageCode?(v13, v12, v11, v10);
    outlined consume of Locale.LanguageCode?(v50, *(&v50 + 1), v51, *(&v51 + 1));
    outlined consume of Locale.LanguageCode?(v48, *(&v48 + 1), v49, *(&v49 + 1));
    outlined consume of Locale.LanguageCode?(v46, *(&v46 + 1), v47, *(&v47 + 1));
    swift_unknownObjectRelease();
    outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
    return;
  }

  v8 = a2;
  v92 = 0;
  lazy protocol witness table accessor for type Locale.Language.Components and conformance Locale.Language.Components();
  v9 = v44;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v104 = v95;
  v105 = v96;
  v106 = v97;
  v107 = v98;
  v102 = v93;
  v103 = v94;
  LOBYTE(v52[0]) = 1;
  lazy protocol witness table accessor for type Calendar.Identifier and conformance Calendar.Identifier();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v22 = v53;
  LOBYTE(v52[0]) = 2;
  lazy protocol witness table accessor for type Locale.Collation and conformance Locale.Collation();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v39 = v53;
  v43 = *(&v54 + 1);
  v40 = v54;
  outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
  LOBYTE(v52[0]) = 3;
  lazy protocol witness table accessor for type Locale.Currency and conformance Locale.Currency();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v42 = v53;
  v37 = v5;
  *v38 = *(&v53 + 1);
  *&v38[8] = v54;
  outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
  LOBYTE(v52[0]) = 4;
  lazy protocol witness table accessor for type Locale.NumberingSystem and conformance Locale.NumberingSystem();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v35 = v22;
  v36 = *(&v53 + 1);
  v41 = v53;
  v23 = *(&v54 + 1);
  v11 = v54;
  outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
  LOBYTE(v52[0]) = 5;
  lazy protocol witness table accessor for type Locale.Weekday and conformance Locale.Weekday();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v34 = v53;
  LOBYTE(v52[0]) = 6;
  lazy protocol witness table accessor for type Locale.HourCycle and conformance Locale.HourCycle();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v33 = v53;
  LOBYTE(v52[0]) = 7;
  lazy protocol witness table accessor for type Locale.MeasurementSystem and conformance Locale.MeasurementSystem();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v108 = 0;
  v12 = v36;
  v50 = v53;
  v51 = v54;
  outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
  LOBYTE(v52[0]) = 8;
  lazy protocol witness table accessor for type Locale.Region and conformance Locale.Region();
  v24 = v108;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v108 = v24;
  if (v24)
  {
    (*(v37 + 8))(v7, v9);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v45 = 0;
    v46 = 0uLL;
    v47 = 0uLL;
    v49 = 0uLL;
    v48 = 0uLL;
LABEL_13:
    v14 = *&v38[16];
    v15 = *&v38[8];
    v16 = *v38;
    v55 = v104;
    v56 = v105;
    v57 = v106;
    v58 = v107;
    v53 = v102;
    v54 = v103;
    outlined destroy of Locale.Language.Components(&v53);
    v17 = v42;
    v18 = v43;
    v20 = *(&v39 + 1);
    v19 = v40;
    v21 = v39;
    v10 = v23;
    v13 = v41;
    goto LABEL_4;
  }

  v48 = v53;
  v49 = v54;
  outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
  LOBYTE(v52[0]) = 9;
  lazy protocol witness table accessor for type Locale.Subdivision and conformance Locale.Subdivision();
  v25 = v108;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v108 = v25;
  if (v25)
  {
    (*(v37 + 8))(v7, v44);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v45 = 0;
    v46 = 0uLL;
    v47 = 0uLL;
    goto LABEL_13;
  }

  v46 = v53;
  v47 = v54;
  outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
  LOBYTE(v52[0]) = 10;
  lazy protocol witness table accessor for type TimeZone and conformance TimeZone();
  v26 = v108;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v108 = v26;
  if (v26)
  {
    (*(v37 + 8))(v7, v44);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v45 = 0;
    goto LABEL_13;
  }

  v32 = *(&v53 + 1);
  v45 = v53;
  v87 = 11;
  lazy protocol witness table accessor for type Locale.Variant and conformance Locale.Variant();
  v27 = v108;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v108 = v27;
  if (v27)
  {
    (*(v37 + 8))(v7, v44);
    __swift_destroy_boxed_opaque_existential_1(a1);
    goto LABEL_13;
  }

  (*(v37 + 8))(v7, v44);
  v44 = v88;
  v37 = v89;
  v30 = v91;
  v31 = v90;
  outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
  v52[2] = v104;
  v52[3] = v105;
  v52[4] = v106;
  v52[5] = v107;
  v52[0] = v102;
  v52[1] = v103;
  LOBYTE(v52[6]) = v35;
  v28 = v39;
  *(&v52[6] + 8) = v39;
  v29 = v40;
  *(&v52[7] + 1) = v40;
  *&v52[8] = v43;
  *(&v52[8] + 1) = v42;
  v52[9] = *v38;
  *&v52[10] = *&v38[16];
  *(&v52[10] + 1) = v41;
  *&v52[11] = v12;
  *(&v52[11] + 1) = v11;
  *&v52[12] = v23;
  BYTE8(v52[12]) = v34;
  BYTE9(v52[12]) = v33;
  v52[13] = v50;
  v52[14] = v51;
  v52[15] = v48;
  v52[16] = v49;
  v52[17] = v46;
  v52[18] = v47;
  *&v52[19] = v45;
  *(&v52[19] + 1) = v32;
  *&v52[20] = v44;
  *(&v52[20] + 1) = v37;
  *&v52[21] = v31;
  *(&v52[21] + 1) = v30;
  memcpy(v8, v52, 0x160uLL);
  outlined init with copy of Locale.Components(v52, &v53);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v59 = v35;
  v61 = v28;
  v62 = v29;
  v63 = v43;
  v55 = v104;
  v56 = v105;
  v57 = v106;
  v58 = v107;
  v53 = v102;
  v54 = v103;
  *v60 = *v101;
  *&v60[3] = *&v101[3];
  v64 = v42;
  v65 = *v38;
  v66 = *&v38[8];
  v67 = v41;
  v68 = v12;
  v69 = v11;
  v70 = v23;
  v71 = v34;
  v72 = v33;
  v73 = v99;
  v74 = v100;
  v75 = v50;
  v76 = v51;
  v77 = v48;
  v78 = v49;
  v79 = v46;
  v80 = v47;
  v81 = v45;
  v82 = v32;
  v83 = v44;
  v84 = v37;
  v85 = v31;
  v86 = v30;
  outlined destroy of Locale.Components(&v53);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Locale.Components()
{
  Hasher.init(_seed:)();
  Locale.Components.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Locale.Components(uint64_t a1)
{
  Hasher.init(_seed:)();
  Locale.Components.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t Locale.Subdivision.debugDescription.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t (*Locale.LanguageCode.identifier.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v4 = *v1;
  v3 = v1[1];
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return Locale.Currency.identifier.modify;
}

Swift::Int Locale.LanguageCode.IdentifierType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v1);
  return Hasher._finalize()();
}

uint64_t one-time initialization function for unidentified()
{
  v1 = String.lowercased()();
  result = v1._countAndFlagsBits;
  static Locale.LanguageCode.unidentified = 6581877;
  *algn_1EA7B70A8 = 0xE300000000000000;
  xmmword_1EA7B70B0 = v1;
  return result;
}

uint64_t static Locale.LanguageCode.unidentified.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for unidentified != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = *algn_1EA7B70A8;
  v2 = xmmword_1EA7B70B0;
  *a1 = static Locale.LanguageCode.unidentified;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
}

uint64_t one-time initialization function for uncoded()
{
  v1 = String.lowercased()();
  result = v1._countAndFlagsBits;
  static Locale.LanguageCode.uncoded = 7563629;
  *algn_1EA7B70C8 = 0xE300000000000000;
  xmmword_1EA7B70D0 = v1;
  return result;
}

uint64_t static Locale.LanguageCode.uncoded.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for uncoded != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = *algn_1EA7B70C8;
  v2 = xmmword_1EA7B70D0;
  *a1 = static Locale.LanguageCode.uncoded;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
}

uint64_t one-time initialization function for multiple()
{
  v1 = String.lowercased()();
  result = v1._countAndFlagsBits;
  static Locale.LanguageCode.multiple = 7107949;
  *algn_1EA7B70E8 = 0xE300000000000000;
  xmmword_1EA7B70F0 = v1;
  return result;
}

uint64_t static Locale.LanguageCode.multiple.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for multiple != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = *algn_1EA7B70E8;
  v2 = xmmword_1EA7B70F0;
  *a1 = static Locale.LanguageCode.multiple;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
}

uint64_t one-time initialization function for unavailable()
{
  v1 = String.lowercased()();
  result = v1._countAndFlagsBits;
  static Locale.LanguageCode.unavailable = 7895162;
  *algn_1EA7B7108 = 0xE300000000000000;
  xmmword_1EA7B7110 = v1;
  return result;
}

uint64_t static Locale.LanguageCode.unavailable.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for unavailable != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = *algn_1EA7B7108;
  v2 = xmmword_1EA7B7110;
  *a1 = static Locale.LanguageCode.unavailable;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Locale.LanguageCode.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Locale.LanguageCode.CodingKeys and conformance Locale.LanguageCode.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Locale.LanguageCode.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Locale.LanguageCode.CodingKeys and conformance Locale.LanguageCode.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Locale.Script.init(stringLiteral:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, Swift::String *a3@<X8>)
{

  String.init<A>(_:)();
  v6 = String._capitalized()();

  a3->_countAndFlagsBits = a1;
  a3->_object = a2;
  a3[1] = v6;
  return result;
}

uint64_t (*Locale.Script.identifier.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
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
  v6 = *v1;
  v5 = v1[1];
  v4[5] = v5;
  *v4 = v6;
  v4[1] = v5;

  return Locale.Script.identifier.modify;
}

uint64_t static Locale.Script.unknown.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for unknown != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = *algn_1EA7B7128;
  v2 = xmmword_1EA7B7130;
  *a1 = static Locale.Script.unknown;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Locale.Script.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Locale.Script.CodingKeys and conformance Locale.Script.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Locale.Script.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Locale.Script.CodingKeys and conformance Locale.Script.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for ExpressibleByStringLiteral.init(stringLiteral:) in conformance Locale.Script@<X0>(uint64_t *a1@<X0>, Swift::String *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];

  String.init<A>(_:)();
  v5 = String._capitalized()();

  a2->_countAndFlagsBits = v4;
  a2->_object = v3;
  a2[1] = v5;
  return result;
}

uint64_t (*Locale.Region.identifier.modify(void *a1))()
{
  v4 = *v1;
  v3 = v1[1];
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return Locale.Region.identifier.modify;
}

uint64_t static Locale.Region.unknown.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for unknown != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = *algn_1EA7B7148;
  v2 = xmmword_1EA7B7150;
  *a1 = static Locale.Region.unknown;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Locale.Region.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Locale.Region.CodingKeys and conformance Locale.Region.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Locale.Region.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Locale.Region.CodingKeys and conformance Locale.Region.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Locale.Region.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation6LocaleV6RegionV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy10Foundation6LocaleV6RegionV10CodingKeysOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20[-1] - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    lazy protocol witness table accessor for type Locale.Region.CodingKeys and conformance Locale.Region.CodingKeys();
    dispatch thunk of Decoder.container<A>(keyedBy:)();
    LOBYTE(v20[0]) = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    object = v15;
    v19 = v8;
    LOBYTE(v20[0]) = 1;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = v16;
    (*(v5 + 8))(v7, v4);

    countAndFlagsBits = v19;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v20, v20[3]);
    v9 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    v11 = v10;

    __swift_destroy_boxed_opaque_existential_1(v20);
    v12 = String.uppercased()();
    countAndFlagsBits = v12._countAndFlagsBits;
    object = v12._object;
  }

  v17 = v21;
  *v21 = v9;
  v17[1] = v11;
  v17[2] = countAndFlagsBits;
  v17[3] = object;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t key path setter for Locale.Script.identifier : Locale.Script(uint64_t *a1, Swift::String *a2)
{
  v4 = *a1;
  v3 = a1[1];
  swift_bridgeObjectRetain_n();
  String.init<A>(_:)();
  v5 = String._capitalized()();

  a2[1] = v5;

  a2->_countAndFlagsBits = v4;
  a2->_object = v3;
  return result;
}

uint64_t Locale.Script.identifier.setter(uint64_t a1, void *a2)
{

  String.init<A>(_:)();
  v5 = String._capitalized()();

  v2[1] = v5;

  v2->_countAndFlagsBits = a1;
  v2->_object = a2;
  return result;
}

uint64_t (*Locale.Collation.identifier.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
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
  v6 = *v1;
  v5 = v1[1];
  v4[5] = v5;
  *v4 = v6;
  v4[1] = v5;

  return Locale.Collation.identifier.modify;
}

void Locale.Script.identifier.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  v5 = **a1;
  v4 = (*a1)[1];
  v3[2] = v5;
  v6 = v3[4];
  v3[3] = v4;

  if (a2)
  {

    String.init<A>(_:)();
    v7 = String._capitalized()();

    v6[1] = v7;
    v6->_countAndFlagsBits = v5;
    v6->_object = v4;
  }

  else
  {
    String.init<A>(_:)();
    v8 = String._capitalized()();

    v6[1] = v8;
    v6->_countAndFlagsBits = v5;
    v6->_object = v4;
  }

  free(v3);
}

uint64_t one-time initialization function for searchRules()
{
  v1 = String.lowercased()();
  result = v1._countAndFlagsBits;
  static Locale.Collation.searchRules = 0x686372616573;
  *algn_1EA7B7168 = 0xE600000000000000;
  xmmword_1EA7B7170 = v1;
  return result;
}

uint64_t static Locale.Collation.searchRules.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for searchRules != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = *algn_1EA7B7168;
  v2 = xmmword_1EA7B7170;
  *a1 = static Locale.Collation.searchRules;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
}

uint64_t one-time initialization function for standard()
{
  v1 = String.lowercased()();
  result = v1._countAndFlagsBits;
  static Locale.Collation.standard = 0x647261646E617473;
  *algn_1EA7B7188 = 0xE800000000000000;
  xmmword_1EA7B7190 = v1;
  return result;
}

uint64_t static Locale.Collation.standard.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for standard != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = *algn_1EA7B7188;
  v2 = xmmword_1EA7B7190;
  *a1 = static Locale.Collation.standard;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Locale.Collation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Locale.Collation.CodingKeys and conformance Locale.Collation.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Locale.Collation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Locale.Collation.CodingKeys and conformance Locale.Collation.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Locale.Script.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t *a6@<X8>)
{
  v26 = a4;
  v24 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v6)
  {
    v23 = v9;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v26();
    dispatch thunk of Decoder.container<A>(keyedBy:)();
    LOBYTE(v25[0]) = 0;
    countAndFlagsBits = KeyedDecodingContainer.decode(_:forKey:)();
    object = v15;
    LOBYTE(v25[0]) = 1;
    v17 = KeyedDecodingContainer.decode(_:forKey:)();
    v19 = v18;
    (*(v23 + 8))(v11, v8);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v25, v25[3]);
    v17 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    v19 = v12;

    __swift_destroy_boxed_opaque_existential_1(v25);
    v25[0] = v17;
    v25[1] = v19;
    String.init<A>(_:)();
    v13 = String._capitalized()();
    countAndFlagsBits = v13._countAndFlagsBits;
    object = v13._object;
  }

  v20 = v24;
  *v24 = v17;
  v20[1] = v19;
  v20[2] = countAndFlagsBits;
  v20[3] = object;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t (*Locale.Currency.identifier.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v4 = *v1;
  v3 = v1[1];
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return Locale.Currency.identifier.modify;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Locale.Currency.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Locale.Currency.CodingKeys and conformance Locale.Currency.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Locale.Currency.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Locale.Currency.CodingKeys and conformance Locale.Currency.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t (*Locale.NumberingSystem.identifier.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v4 = *v1;
  v3 = v1[1];
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return Locale.Currency.identifier.modify;
}

uint64_t one-time initialization function for latn()
{
  v1 = String.lowercased()();
  result = v1._countAndFlagsBits;
  static Locale.NumberingSystem.latn = 1853120876;
  unk_1EA7AE6E0 = 0xE400000000000000;
  xmmword_1EA7AE6E8 = v1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Locale.NumberingSystem.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Locale.NumberingSystem.CodingKeys and conformance Locale.NumberingSystem.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Locale.NumberingSystem.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Locale.NumberingSystem.CodingKeys and conformance Locale.NumberingSystem.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Locale.Weekday(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Locale.HourCycle()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Locale.HourCycle(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Locale.HourCycle(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t (*Locale.MeasurementSystem.identifier.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v4 = *v1;
  v3 = v1[1];
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return Locale.Currency.identifier.modify;
}

uint64_t one-time initialization function for metric()
{
  v1 = String.lowercased()();
  result = v1._countAndFlagsBits;
  static Locale.MeasurementSystem.metric = 0x63697274656DLL;
  *algn_1EA7B00F8 = 0xE600000000000000;
  xmmword_1EA7B0100 = v1;
  return result;
}

uint64_t one-time initialization function for uk()
{
  v1 = String.lowercased()();
  result = v1._countAndFlagsBits;
  static Locale.MeasurementSystem.uk = 0x6D65747379736B75;
  *algn_1EA7AFAD8 = 0xE800000000000000;
  xmmword_1EA7AFAE0 = v1;
  return result;
}

uint64_t static Locale.MeasurementSystem.uk.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for uk != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = *algn_1EA7AFAD8;
  v2 = xmmword_1EA7AFAE0;
  *a1 = static Locale.MeasurementSystem.uk;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
}

uint64_t static Locale.MeasurementSystem.measurementSystems.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation6LocaleV17MeasurementSystemVGMd, &_ss23_ContiguousArrayStorageCy10Foundation6LocaleV17MeasurementSystemVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18121D6B0;
  if (one-time initialization token for metric != -1)
  {
    swift_once();
  }

  v1 = *algn_1EA7B00F8;
  v2 = xmmword_1EA7B0100;
  *(v0 + 32) = static Locale.MeasurementSystem.metric;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  v3 = one-time initialization token for us;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = *algn_1EA7B2448;
  v5 = xmmword_1EA7B2450;
  *(v0 + 64) = static Locale.MeasurementSystem.us;
  *(v0 + 72) = v4;
  *(v0 + 80) = v5;
  v6 = one-time initialization token for uk;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = *algn_1EA7AFAD8;
  v8 = xmmword_1EA7AFAE0;
  *(v0 + 96) = static Locale.MeasurementSystem.uk;
  *(v0 + 104) = v7;
  *(v0 + 112) = v8;

  return v0;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Locale.MeasurementSystem.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Locale.MeasurementSystem.CodingKeys and conformance Locale.MeasurementSystem.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Locale.MeasurementSystem.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Locale.MeasurementSystem.CodingKeys and conformance Locale.MeasurementSystem.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Locale.Subdivision._identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t (*Locale.Subdivision.identifier.modify(void *a1))()
{
  v4 = *v1;
  v3 = v1[1];
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return Locale.Subdivision.identifier.modify;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Locale.Subdivision.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Locale.Subdivision.CodingKeys and conformance Locale.Subdivision.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Locale.Subdivision.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Locale.Subdivision.CodingKeys and conformance Locale.Subdivision.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Locale.NumberingSystem.init(stringLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, void *a4@<X8>)
{
  result = a3();
  *a4 = a1;
  a4[1] = a2;
  a4[2] = result;
  a4[3] = v8;
  return result;
}

uint64_t key path setter for Locale.LanguageCode.identifier : Locale.LanguageCode(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];
  v8 = (a5)(*a1, v7, a3, a4);
  v10 = v9;

  a2[2] = v8;
  a2[3] = v10;

  *a2 = v6;
  a2[1] = v7;
  return result;
}

uint64_t Locale.LanguageCode.identifier.setter(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = a3();
  v8 = v7;

  v3[2] = v6;
  v3[3] = v8;

  *v3 = a1;
  v3[1] = a2;
  return result;
}

uint64_t (*Locale.Variant.identifier.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v4 = *v1;
  v3 = v1[1];
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return Locale.Currency.identifier.modify;
}

uint64_t Locale.LanguageCode.identifier.modify(void *a1, char a2, uint64_t (*a3)(void, uint64_t))
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = *a1;
  v7 = a3(*a1, v4);
  v9 = v8;
  if (a2)
  {

    v5[2] = v7;
    v5[3] = v9;
    *v5 = v6;
    v5[1] = v4;
  }

  else
  {

    v5[2] = v7;
    v5[3] = v9;
    *v5 = v6;
    v5[1] = v4;
  }

  return result;
}

uint64_t one-time initialization function for posix()
{
  static Locale.Variant.posix = 0x7869736F70;
  *algn_1EA7B71A8 = 0xE500000000000000;
  v1 = String.lowercased()();
  result = v1._countAndFlagsBits;
  xmmword_1EA7B71B0 = v1;
  return result;
}

uint64_t static Locale.Variant.posix.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for posix != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = *algn_1EA7B71A8;
  v2 = xmmword_1EA7B71B0;
  *a1 = static Locale.Variant.posix;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Locale.LanguageCode.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x8000000181482BE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6669746E6564695FLL && a2 == 0xEB00000000726569)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Locale.Variant.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Locale.Variant.CodingKeys and conformance Locale.Variant.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Locale.Variant.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Locale.Variant.CodingKeys and conformance Locale.Variant.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Locale.LanguageCode.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

{
  return Locale.Subdivision.encode(to:)(a1);
}

Swift::Int Locale.LanguageCode.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for ExpressibleByStringLiteral.init(stringLiteral:) in conformance Locale.LanguageCode@<X0>(void *a1@<X0>, uint64_t (*a2)(void, uint64_t)@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  result = a2(*a1, v5);
  *a3 = v4;
  a3[1] = v5;
  a3[2] = result;
  a3[3] = v7;
  return result;
}

uint64_t specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(uint64_t result, uint64_t (*a2)(BOOL, uint64_t, uint64_t))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1, result + 1, 1);
    *v2 = result;
  }

  return result;
}

uint64_t specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *v5;
  *(v6 + 16) = result + 1;
  v7 = (v6 + 32 * result);
  v7[4] = a2;
  v7[5] = a3;
  v7[6] = a4;
  v7[7] = a5;
  return result;
}

unint64_t lazy protocol witness table accessor for type Locale.Components.CodingKeys and conformance Locale.Components.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Locale.Components.CodingKeys and conformance Locale.Components.CodingKeys;
  if (!lazy protocol witness table cache variable for type Locale.Components.CodingKeys and conformance Locale.Components.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Components.CodingKeys and conformance Locale.Components.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.Components.CodingKeys and conformance Locale.Components.CodingKeys;
  if (!lazy protocol witness table cache variable for type Locale.Components.CodingKeys and conformance Locale.Components.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Components.CodingKeys and conformance Locale.Components.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.Components.CodingKeys and conformance Locale.Components.CodingKeys;
  if (!lazy protocol witness table cache variable for type Locale.Components.CodingKeys and conformance Locale.Components.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Components.CodingKeys and conformance Locale.Components.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.Components.CodingKeys and conformance Locale.Components.CodingKeys;
  if (!lazy protocol witness table cache variable for type Locale.Components.CodingKeys and conformance Locale.Components.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Components.CodingKeys and conformance Locale.Components.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Locale.Language.Components and conformance Locale.Language.Components()
{
  result = lazy protocol witness table cache variable for type Locale.Language.Components and conformance Locale.Language.Components;
  if (!lazy protocol witness table cache variable for type Locale.Language.Components and conformance Locale.Language.Components)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Language.Components and conformance Locale.Language.Components);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.Language.Components and conformance Locale.Language.Components;
  if (!lazy protocol witness table cache variable for type Locale.Language.Components and conformance Locale.Language.Components)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Language.Components and conformance Locale.Language.Components);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.Language.Components and conformance Locale.Language.Components;
  if (!lazy protocol witness table cache variable for type Locale.Language.Components and conformance Locale.Language.Components)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Language.Components and conformance Locale.Language.Components);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Locale.Collation and conformance Locale.Collation()
{
  result = lazy protocol witness table cache variable for type Locale.Collation and conformance Locale.Collation;
  if (!lazy protocol witness table cache variable for type Locale.Collation and conformance Locale.Collation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Collation and conformance Locale.Collation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.Collation and conformance Locale.Collation;
  if (!lazy protocol witness table cache variable for type Locale.Collation and conformance Locale.Collation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Collation and conformance Locale.Collation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.Collation and conformance Locale.Collation;
  if (!lazy protocol witness table cache variable for type Locale.Collation and conformance Locale.Collation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Collation and conformance Locale.Collation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.Collation and conformance Locale.Collation;
  if (!lazy protocol witness table cache variable for type Locale.Collation and conformance Locale.Collation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Collation and conformance Locale.Collation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.Collation and conformance Locale.Collation;
  if (!lazy protocol witness table cache variable for type Locale.Collation and conformance Locale.Collation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Collation and conformance Locale.Collation);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Locale.Currency and conformance Locale.Currency()
{
  result = lazy protocol witness table cache variable for type Locale.Currency and conformance Locale.Currency;
  if (!lazy protocol witness table cache variable for type Locale.Currency and conformance Locale.Currency)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Currency and conformance Locale.Currency);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.Currency and conformance Locale.Currency;
  if (!lazy protocol witness table cache variable for type Locale.Currency and conformance Locale.Currency)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Currency and conformance Locale.Currency);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.Currency and conformance Locale.Currency;
  if (!lazy protocol witness table cache variable for type Locale.Currency and conformance Locale.Currency)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Currency and conformance Locale.Currency);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.Currency and conformance Locale.Currency;
  if (!lazy protocol witness table cache variable for type Locale.Currency and conformance Locale.Currency)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Currency and conformance Locale.Currency);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.Currency and conformance Locale.Currency;
  if (!lazy protocol witness table cache variable for type Locale.Currency and conformance Locale.Currency)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Currency and conformance Locale.Currency);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Locale.NumberingSystem and conformance Locale.NumberingSystem()
{
  result = lazy protocol witness table cache variable for type Locale.NumberingSystem and conformance Locale.NumberingSystem;
  if (!lazy protocol witness table cache variable for type Locale.NumberingSystem and conformance Locale.NumberingSystem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.NumberingSystem and conformance Locale.NumberingSystem);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.NumberingSystem and conformance Locale.NumberingSystem;
  if (!lazy protocol witness table cache variable for type Locale.NumberingSystem and conformance Locale.NumberingSystem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.NumberingSystem and conformance Locale.NumberingSystem);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.NumberingSystem and conformance Locale.NumberingSystem;
  if (!lazy protocol witness table cache variable for type Locale.NumberingSystem and conformance Locale.NumberingSystem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.NumberingSystem and conformance Locale.NumberingSystem);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.NumberingSystem and conformance Locale.NumberingSystem;
  if (!lazy protocol witness table cache variable for type Locale.NumberingSystem and conformance Locale.NumberingSystem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.NumberingSystem and conformance Locale.NumberingSystem);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.NumberingSystem and conformance Locale.NumberingSystem;
  if (!lazy protocol witness table cache variable for type Locale.NumberingSystem and conformance Locale.NumberingSystem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.NumberingSystem and conformance Locale.NumberingSystem);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Locale.HourCycle and conformance Locale.HourCycle()
{
  result = lazy protocol witness table cache variable for type Locale.HourCycle and conformance Locale.HourCycle;
  if (!lazy protocol witness table cache variable for type Locale.HourCycle and conformance Locale.HourCycle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.HourCycle and conformance Locale.HourCycle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.HourCycle and conformance Locale.HourCycle;
  if (!lazy protocol witness table cache variable for type Locale.HourCycle and conformance Locale.HourCycle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.HourCycle and conformance Locale.HourCycle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.HourCycle and conformance Locale.HourCycle;
  if (!lazy protocol witness table cache variable for type Locale.HourCycle and conformance Locale.HourCycle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.HourCycle and conformance Locale.HourCycle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.HourCycle and conformance Locale.HourCycle;
  if (!lazy protocol witness table cache variable for type Locale.HourCycle and conformance Locale.HourCycle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.HourCycle and conformance Locale.HourCycle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Locale.MeasurementSystem and conformance Locale.MeasurementSystem()
{
  result = lazy protocol witness table cache variable for type Locale.MeasurementSystem and conformance Locale.MeasurementSystem;
  if (!lazy protocol witness table cache variable for type Locale.MeasurementSystem and conformance Locale.MeasurementSystem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.MeasurementSystem and conformance Locale.MeasurementSystem);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.MeasurementSystem and conformance Locale.MeasurementSystem;
  if (!lazy protocol witness table cache variable for type Locale.MeasurementSystem and conformance Locale.MeasurementSystem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.MeasurementSystem and conformance Locale.MeasurementSystem);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.MeasurementSystem and conformance Locale.MeasurementSystem;
  if (!lazy protocol witness table cache variable for type Locale.MeasurementSystem and conformance Locale.MeasurementSystem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.MeasurementSystem and conformance Locale.MeasurementSystem);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.MeasurementSystem and conformance Locale.MeasurementSystem;
  if (!lazy protocol witness table cache variable for type Locale.MeasurementSystem and conformance Locale.MeasurementSystem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.MeasurementSystem and conformance Locale.MeasurementSystem);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.MeasurementSystem and conformance Locale.MeasurementSystem;
  if (!lazy protocol witness table cache variable for type Locale.MeasurementSystem and conformance Locale.MeasurementSystem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.MeasurementSystem and conformance Locale.MeasurementSystem);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Locale.Subdivision and conformance Locale.Subdivision()
{
  result = lazy protocol witness table cache variable for type Locale.Subdivision and conformance Locale.Subdivision;
  if (!lazy protocol witness table cache variable for type Locale.Subdivision and conformance Locale.Subdivision)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Subdivision and conformance Locale.Subdivision);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.Subdivision and conformance Locale.Subdivision;
  if (!lazy protocol witness table cache variable for type Locale.Subdivision and conformance Locale.Subdivision)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Subdivision and conformance Locale.Subdivision);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.Subdivision and conformance Locale.Subdivision;
  if (!lazy protocol witness table cache variable for type Locale.Subdivision and conformance Locale.Subdivision)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Subdivision and conformance Locale.Subdivision);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.Subdivision and conformance Locale.Subdivision;
  if (!lazy protocol witness table cache variable for type Locale.Subdivision and conformance Locale.Subdivision)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Subdivision and conformance Locale.Subdivision);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.Subdivision and conformance Locale.Subdivision;
  if (!lazy protocol witness table cache variable for type Locale.Subdivision and conformance Locale.Subdivision)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Subdivision and conformance Locale.Subdivision);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Locale.Variant and conformance Locale.Variant()
{
  result = lazy protocol witness table cache variable for type Locale.Variant and conformance Locale.Variant;
  if (!lazy protocol witness table cache variable for type Locale.Variant and conformance Locale.Variant)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Variant and conformance Locale.Variant);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.Variant and conformance Locale.Variant;
  if (!lazy protocol witness table cache variable for type Locale.Variant and conformance Locale.Variant)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Variant and conformance Locale.Variant);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.Variant and conformance Locale.Variant;
  if (!lazy protocol witness table cache variable for type Locale.Variant and conformance Locale.Variant)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Variant and conformance Locale.Variant);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.Variant and conformance Locale.Variant;
  if (!lazy protocol witness table cache variable for type Locale.Variant and conformance Locale.Variant)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Variant and conformance Locale.Variant);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.Variant and conformance Locale.Variant;
  if (!lazy protocol witness table cache variable for type Locale.Variant and conformance Locale.Variant)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Variant and conformance Locale.Variant);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Locale.Script.CodingKeys and conformance Locale.Script.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Locale.Script.CodingKeys and conformance Locale.Script.CodingKeys;
  if (!lazy protocol witness table cache variable for type Locale.Script.CodingKeys and conformance Locale.Script.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Script.CodingKeys and conformance Locale.Script.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.Script.CodingKeys and conformance Locale.Script.CodingKeys;
  if (!lazy protocol witness table cache variable for type Locale.Script.CodingKeys and conformance Locale.Script.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Script.CodingKeys and conformance Locale.Script.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.Script.CodingKeys and conformance Locale.Script.CodingKeys;
  if (!lazy protocol witness table cache variable for type Locale.Script.CodingKeys and conformance Locale.Script.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Script.CodingKeys and conformance Locale.Script.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.Script.CodingKeys and conformance Locale.Script.CodingKeys;
  if (!lazy protocol witness table cache variable for type Locale.Script.CodingKeys and conformance Locale.Script.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Script.CodingKeys and conformance Locale.Script.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Locale.Region.CodingKeys and conformance Locale.Region.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Locale.Region.CodingKeys and conformance Locale.Region.CodingKeys;
  if (!lazy protocol witness table cache variable for type Locale.Region.CodingKeys and conformance Locale.Region.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Region.CodingKeys and conformance Locale.Region.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.Region.CodingKeys and conformance Locale.Region.CodingKeys;
  if (!lazy protocol witness table cache variable for type Locale.Region.CodingKeys and conformance Locale.Region.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Region.CodingKeys and conformance Locale.Region.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.Region.CodingKeys and conformance Locale.Region.CodingKeys;
  if (!lazy protocol witness table cache variable for type Locale.Region.CodingKeys and conformance Locale.Region.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Region.CodingKeys and conformance Locale.Region.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.Region.CodingKeys and conformance Locale.Region.CodingKeys;
  if (!lazy protocol witness table cache variable for type Locale.Region.CodingKeys and conformance Locale.Region.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Region.CodingKeys and conformance Locale.Region.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Locale.Collation.CodingKeys and conformance Locale.Collation.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Locale.Collation.CodingKeys and conformance Locale.Collation.CodingKeys;
  if (!lazy protocol witness table cache variable for type Locale.Collation.CodingKeys and conformance Locale.Collation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Collation.CodingKeys and conformance Locale.Collation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.Collation.CodingKeys and conformance Locale.Collation.CodingKeys;
  if (!lazy protocol witness table cache variable for type Locale.Collation.CodingKeys and conformance Locale.Collation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Collation.CodingKeys and conformance Locale.Collation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.Collation.CodingKeys and conformance Locale.Collation.CodingKeys;
  if (!lazy protocol witness table cache variable for type Locale.Collation.CodingKeys and conformance Locale.Collation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Collation.CodingKeys and conformance Locale.Collation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.Collation.CodingKeys and conformance Locale.Collation.CodingKeys;
  if (!lazy protocol witness table cache variable for type Locale.Collation.CodingKeys and conformance Locale.Collation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Collation.CodingKeys and conformance Locale.Collation.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Locale.Currency.CodingKeys and conformance Locale.Currency.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Locale.Currency.CodingKeys and conformance Locale.Currency.CodingKeys;
  if (!lazy protocol witness table cache variable for type Locale.Currency.CodingKeys and conformance Locale.Currency.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Currency.CodingKeys and conformance Locale.Currency.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.Currency.CodingKeys and conformance Locale.Currency.CodingKeys;
  if (!lazy protocol witness table cache variable for type Locale.Currency.CodingKeys and conformance Locale.Currency.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Currency.CodingKeys and conformance Locale.Currency.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.Currency.CodingKeys and conformance Locale.Currency.CodingKeys;
  if (!lazy protocol witness table cache variable for type Locale.Currency.CodingKeys and conformance Locale.Currency.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Currency.CodingKeys and conformance Locale.Currency.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.Currency.CodingKeys and conformance Locale.Currency.CodingKeys;
  if (!lazy protocol witness table cache variable for type Locale.Currency.CodingKeys and conformance Locale.Currency.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Currency.CodingKeys and conformance Locale.Currency.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Locale.NumberingSystem.CodingKeys and conformance Locale.NumberingSystem.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Locale.NumberingSystem.CodingKeys and conformance Locale.NumberingSystem.CodingKeys;
  if (!lazy protocol witness table cache variable for type Locale.NumberingSystem.CodingKeys and conformance Locale.NumberingSystem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.NumberingSystem.CodingKeys and conformance Locale.NumberingSystem.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.NumberingSystem.CodingKeys and conformance Locale.NumberingSystem.CodingKeys;
  if (!lazy protocol witness table cache variable for type Locale.NumberingSystem.CodingKeys and conformance Locale.NumberingSystem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.NumberingSystem.CodingKeys and conformance Locale.NumberingSystem.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.NumberingSystem.CodingKeys and conformance Locale.NumberingSystem.CodingKeys;
  if (!lazy protocol witness table cache variable for type Locale.NumberingSystem.CodingKeys and conformance Locale.NumberingSystem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.NumberingSystem.CodingKeys and conformance Locale.NumberingSystem.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.NumberingSystem.CodingKeys and conformance Locale.NumberingSystem.CodingKeys;
  if (!lazy protocol witness table cache variable for type Locale.NumberingSystem.CodingKeys and conformance Locale.NumberingSystem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.NumberingSystem.CodingKeys and conformance Locale.NumberingSystem.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Locale.MeasurementSystem.CodingKeys and conformance Locale.MeasurementSystem.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Locale.MeasurementSystem.CodingKeys and conformance Locale.MeasurementSystem.CodingKeys;
  if (!lazy protocol witness table cache variable for type Locale.MeasurementSystem.CodingKeys and conformance Locale.MeasurementSystem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.MeasurementSystem.CodingKeys and conformance Locale.MeasurementSystem.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.MeasurementSystem.CodingKeys and conformance Locale.MeasurementSystem.CodingKeys;
  if (!lazy protocol witness table cache variable for type Locale.MeasurementSystem.CodingKeys and conformance Locale.MeasurementSystem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.MeasurementSystem.CodingKeys and conformance Locale.MeasurementSystem.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.MeasurementSystem.CodingKeys and conformance Locale.MeasurementSystem.CodingKeys;
  if (!lazy protocol witness table cache variable for type Locale.MeasurementSystem.CodingKeys and conformance Locale.MeasurementSystem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.MeasurementSystem.CodingKeys and conformance Locale.MeasurementSystem.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.MeasurementSystem.CodingKeys and conformance Locale.MeasurementSystem.CodingKeys;
  if (!lazy protocol witness table cache variable for type Locale.MeasurementSystem.CodingKeys and conformance Locale.MeasurementSystem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.MeasurementSystem.CodingKeys and conformance Locale.MeasurementSystem.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Locale.Subdivision.CodingKeys and conformance Locale.Subdivision.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Locale.Subdivision.CodingKeys and conformance Locale.Subdivision.CodingKeys;
  if (!lazy protocol witness table cache variable for type Locale.Subdivision.CodingKeys and conformance Locale.Subdivision.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Subdivision.CodingKeys and conformance Locale.Subdivision.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.Subdivision.CodingKeys and conformance Locale.Subdivision.CodingKeys;
  if (!lazy protocol witness table cache variable for type Locale.Subdivision.CodingKeys and conformance Locale.Subdivision.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Subdivision.CodingKeys and conformance Locale.Subdivision.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.Subdivision.CodingKeys and conformance Locale.Subdivision.CodingKeys;
  if (!lazy protocol witness table cache variable for type Locale.Subdivision.CodingKeys and conformance Locale.Subdivision.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Subdivision.CodingKeys and conformance Locale.Subdivision.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.Subdivision.CodingKeys and conformance Locale.Subdivision.CodingKeys;
  if (!lazy protocol witness table cache variable for type Locale.Subdivision.CodingKeys and conformance Locale.Subdivision.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Subdivision.CodingKeys and conformance Locale.Subdivision.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Locale.Variant.CodingKeys and conformance Locale.Variant.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Locale.Variant.CodingKeys and conformance Locale.Variant.CodingKeys;
  if (!lazy protocol witness table cache variable for type Locale.Variant.CodingKeys and conformance Locale.Variant.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Variant.CodingKeys and conformance Locale.Variant.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.Variant.CodingKeys and conformance Locale.Variant.CodingKeys;
  if (!lazy protocol witness table cache variable for type Locale.Variant.CodingKeys and conformance Locale.Variant.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Variant.CodingKeys and conformance Locale.Variant.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.Variant.CodingKeys and conformance Locale.Variant.CodingKeys;
  if (!lazy protocol witness table cache variable for type Locale.Variant.CodingKeys and conformance Locale.Variant.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Variant.CodingKeys and conformance Locale.Variant.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.Variant.CodingKeys and conformance Locale.Variant.CodingKeys;
  if (!lazy protocol witness table cache variable for type Locale.Variant.CodingKeys and conformance Locale.Variant.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Variant.CodingKeys and conformance Locale.Variant.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Locale.LanguageCode.IdentifierType and conformance Locale.LanguageCode.IdentifierType()
{
  result = lazy protocol witness table cache variable for type Locale.LanguageCode.IdentifierType and conformance Locale.LanguageCode.IdentifierType;
  if (!lazy protocol witness table cache variable for type Locale.LanguageCode.IdentifierType and conformance Locale.LanguageCode.IdentifierType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.LanguageCode.IdentifierType and conformance Locale.LanguageCode.IdentifierType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Locale.LanguageCode and conformance Locale.LanguageCode()
{
  result = lazy protocol witness table cache variable for type Locale.LanguageCode and conformance Locale.LanguageCode;
  if (!lazy protocol witness table cache variable for type Locale.LanguageCode and conformance Locale.LanguageCode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.LanguageCode and conformance Locale.LanguageCode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.LanguageCode and conformance Locale.LanguageCode;
  if (!lazy protocol witness table cache variable for type Locale.LanguageCode and conformance Locale.LanguageCode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.LanguageCode and conformance Locale.LanguageCode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.LanguageCode and conformance Locale.LanguageCode;
  if (!lazy protocol witness table cache variable for type Locale.LanguageCode and conformance Locale.LanguageCode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.LanguageCode and conformance Locale.LanguageCode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.LanguageCode and conformance Locale.LanguageCode;
  if (!lazy protocol witness table cache variable for type Locale.LanguageCode and conformance Locale.LanguageCode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.LanguageCode and conformance Locale.LanguageCode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.LanguageCode and conformance Locale.LanguageCode;
  if (!lazy protocol witness table cache variable for type Locale.LanguageCode and conformance Locale.LanguageCode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.LanguageCode and conformance Locale.LanguageCode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Locale.Script and conformance Locale.Script()
{
  result = lazy protocol witness table cache variable for type Locale.Script and conformance Locale.Script;
  if (!lazy protocol witness table cache variable for type Locale.Script and conformance Locale.Script)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Script and conformance Locale.Script);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.Script and conformance Locale.Script;
  if (!lazy protocol witness table cache variable for type Locale.Script and conformance Locale.Script)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Script and conformance Locale.Script);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.Script and conformance Locale.Script;
  if (!lazy protocol witness table cache variable for type Locale.Script and conformance Locale.Script)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Script and conformance Locale.Script);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.Script and conformance Locale.Script;
  if (!lazy protocol witness table cache variable for type Locale.Script and conformance Locale.Script)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Script and conformance Locale.Script);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.Script and conformance Locale.Script;
  if (!lazy protocol witness table cache variable for type Locale.Script and conformance Locale.Script)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Script and conformance Locale.Script);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.Script and conformance Locale.Script;
  if (!lazy protocol witness table cache variable for type Locale.Script and conformance Locale.Script)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Script and conformance Locale.Script);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ICUCLDRKey and conformance ICUCLDRKey()
{
  result = lazy protocol witness table cache variable for type ICUCLDRKey and conformance ICUCLDRKey;
  if (!lazy protocol witness table cache variable for type ICUCLDRKey and conformance ICUCLDRKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ICUCLDRKey and conformance ICUCLDRKey);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Locale.Components(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 352))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for Locale.Components(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 352) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 352) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t specialized Locale.Components.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000012 && 0x8000000181482BA0 == a2;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7261646E656C6163 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F6974616C6C6F63 && a2 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x79636E6572727563 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E697265626D756ELL && a2 == 0xEF6D657473795367 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7961447473726966 && a2 == 0xEE006B656557664FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C63794372756F68 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000181482BC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E6F69676572 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7369766964627573 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x746E6169726176 && a2 == 0xE700000000000000)
  {

    return 11;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

__n128 Locale.Language.init(components:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 48);
  a2[2] = *(a1 + 32);
  a2[3] = v2;
  v3 = *(a1 + 80);
  a2[4] = *(a1 + 64);
  a2[5] = v3;
  result = *a1;
  v5 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v5;
  return result;
}

void Locale.Language.Components.languageCode.getter(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  outlined copy of Locale.LanguageCode?(v2, v3, v4, v5);
}

__n128 Locale.Language.Components.languageCode.setter(uint64_t a1)
{
  outlined consume of Locale.LanguageCode?(*v1, v1[1], v1[2], v1[3]);
  result = *a1;
  v4 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 1) = v4;
  return result;
}

void Locale.Language.Components.script.getter(uint64_t *a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  outlined copy of Locale.LanguageCode?(v2, v3, v4, v5);
}

__n128 Locale.Language.Components.script.setter(uint64_t a1)
{
  outlined consume of Locale.LanguageCode?(v1[4], v1[5], v1[6], v1[7]);
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 2) = *a1;
  *(v1 + 3) = v4;
  return result;
}

void Locale.Language.Components.region.getter(uint64_t *a1@<X8>)
{
  v2 = v1[8];
  v3 = v1[9];
  v4 = v1[10];
  v5 = v1[11];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  outlined copy of Locale.LanguageCode?(v2, v3, v4, v5);
}

__n128 Locale.Language.Components.region.setter(uint64_t a1)
{
  outlined consume of Locale.LanguageCode?(v1[8], v1[9], v1[10], v1[11]);
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 4) = *a1;
  *(v1 + 5) = v4;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Locale.Language.Components.CodingKeys()
{
  v1 = 0x747069726373;
  if (*v0 != 1)
  {
    v1 = 0x6E6F69676572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65676175676E616CLL;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Locale.Language.Components.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized Locale.Language.Components.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Locale.Language.Components.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Locale.Language.Components.CodingKeys and conformance Locale.Language.Components.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Locale.Language.Components.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Locale.Language.Components.CodingKeys and conformance Locale.Language.Components.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Locale.Language.Components.encode(to:)(void *a1)
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation6LocaleV8LanguageV10ComponentsV10CodingKeys33_3BE3340CB9FD883F92889BE886A393D3LLOGMd, &_ss22KeyedEncodingContainerVy10Foundation6LocaleV8LanguageV10ComponentsV10CodingKeys33_3BE3340CB9FD883F92889BE886A393D3LLOGMR);
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v4 = &v22 - v3;
  v5 = *v1;
  v6 = v1[1];
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v29 = v1[5];
  v30 = v9;
  v10 = v1[6];
  v27 = v1[7];
  v28 = v10;
  v11 = v1[8];
  v25 = v1[9];
  v26 = v11;
  v12 = v1[10];
  v23 = v1[11];
  v24 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  outlined copy of Locale.LanguageCode?(v5, v6, v7, v8);
  lazy protocol witness table accessor for type Locale.Language.Components.CodingKeys and conformance Locale.Language.Components.CodingKeys();
  v13 = v31;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v34 = v5;
  v35 = v6;
  v14 = v4;
  v36 = v7;
  v37 = v8;
  v38 = 0;
  lazy protocol witness table accessor for type Locale.LanguageCode and conformance Locale.LanguageCode();
  v15 = v32;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  outlined consume of Locale.LanguageCode?(v34, v35, v36, v37);
  if (v15)
  {
    return (*(v33 + 8))(v4, v13);
  }

  v18 = v23;
  v17 = v24;
  v20 = v25;
  v19 = v26;
  v21 = v33;
  v34 = v30;
  v35 = v29;
  v36 = v28;
  v37 = v27;
  v38 = 1;
  outlined copy of Locale.LanguageCode?(v30, v29, v28, v27);
  lazy protocol witness table accessor for type Locale.Script and conformance Locale.Script();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  outlined consume of Locale.LanguageCode?(v34, v35, v36, v37);
  v34 = v19;
  v35 = v20;
  v36 = v17;
  v37 = v18;
  v38 = 2;
  outlined copy of Locale.LanguageCode?(v19, v20, v17, v18);
  lazy protocol witness table accessor for type Locale.Region and conformance Locale.Region();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  outlined consume of Locale.LanguageCode?(v34, v35, v36, v37);
  return (*(v21 + 8))(v14, v13);
}

void Locale.Language.hash(into:)(uint64_t a1)
{
  v2 = v1[5];
  v3 = v1[9];
  if (v1[1])
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_8:
    Hasher._combine(_:)(0);
    if (v3)
    {
      goto LABEL_4;
    }

LABEL_9:
    Hasher._combine(_:)(0);
    return;
  }

  Hasher._combine(_:)(0);
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!v3)
  {
    goto LABEL_9;
  }

LABEL_4:
  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

uint64_t Locale.Language.Components.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation6LocaleV8LanguageV10ComponentsV10CodingKeys33_3BE3340CB9FD883F92889BE886A393D3LLOGMd, &_ss22KeyedDecodingContainerVy10Foundation6LocaleV8LanguageV10ComponentsV10CodingKeys33_3BE3340CB9FD883F92889BE886A393D3LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Locale.Language.Components.CodingKeys and conformance Locale.Language.Components.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v46 = 0;
    v26 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    v38 = 0uLL;
    v39 = 0uLL;
    v40 = 0;
    v41 = 0;
    v42 = v26;
    v43 = v46;
    v44 = 0u;
    v45 = 0u;
  }

  else
  {
    LOBYTE(v27) = 0;
    lazy protocol witness table accessor for type Locale.LanguageCode and conformance Locale.LanguageCode();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v24 = v38;
    v25 = v39;
    outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
    LOBYTE(v27) = 1;
    lazy protocol witness table accessor for type Locale.Script and conformance Locale.Script();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v23 = a2;
    v10 = v38;
    v46 = *(&v39 + 1);
    v26 = v39;
    outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
    v33 = 2;
    lazy protocol witness table accessor for type Locale.Region and conformance Locale.Region();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v11 = v34;
    v12 = v35;
    v13 = v36;
    v14 = v37;
    outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
    v27 = v24;
    v28 = v25;
    v22 = v10;
    v29 = v10;
    v15 = v26;
    *&v30 = v26;
    v16 = v46;
    *(&v30 + 1) = v46;
    *&v31 = v11;
    *(&v31 + 1) = v12;
    *&v32 = v13;
    *(&v32 + 1) = v14;
    v17 = v30;
    v18 = v23;
    v23[2] = v10;
    v18[3] = v17;
    v19 = v32;
    v18[4] = v31;
    v18[5] = v19;
    v20 = v28;
    *v18 = v27;
    v18[1] = v20;
    outlined init with copy of Locale.Language.Components(&v27, &v38);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v38 = v24;
    v39 = v25;
    v40 = v22;
    v41 = *(&v10 + 1);
    v42 = v15;
    v43 = v16;
    *&v44 = v11;
    *(&v44 + 1) = v12;
    *&v45 = v13;
    *(&v45 + 1) = v14;
  }

  return outlined destroy of Locale.Language.Components(&v38);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Locale.Language.Components()
{
  Hasher.init(_seed:)();
  Locale.Language.Components.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Locale.Language.Components(uint64_t a1)
{
  Hasher.init(_seed:)();
  Locale.Language.Components.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t Locale.Language.components.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v10 = v1[2];
  v11 = v2;
  v4 = v1[5];
  v12 = v1[4];
  v3 = v12;
  v13 = v4;
  v6 = v1[1];
  v9[0] = *v1;
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return outlined init with copy of Locale.Language.Components(v9, &v8);
}

__n128 Locale.Language.components.setter(uint64_t a1)
{
  v3 = v1[3];
  v10[2] = v1[2];
  v10[3] = v3;
  v4 = v1[5];
  v10[4] = v1[4];
  v10[5] = v4;
  v5 = v1[1];
  v10[0] = *v1;
  v10[1] = v5;
  outlined destroy of Locale.Language(v10);
  v6 = *(a1 + 48);
  v1[2] = *(a1 + 32);
  v1[3] = v6;
  v7 = *(a1 + 80);
  v1[4] = *(a1 + 64);
  v1[5] = v7;
  result = *a1;
  v9 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v9;
  return result;
}

__n128 Locale.Language.init(languageCode:script:region:)@<Q0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
  outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
  outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
  v8 = a1[1];
  *a4 = *a1;
  a4[1] = v8;
  v9 = a2[1];
  a4[2] = *a2;
  a4[3] = v9;
  result = *a3;
  v11 = *(a3 + 16);
  a4[4] = *a3;
  a4[5] = v11;
  return result;
}

uint64_t static Locale.Language.systemLanguages.getter()
{
  v45 = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_self() systemLanguages];
  if (!v0)
  {
    __break(1u);
  }

  v1 = v0;
  type metadata accessor for __SwiftDeferredNSArray();
  if (swift_dynamicCastClass())
  {
  }

  else
  {
    v2 = v1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;

    v5 = *(v4 + 16);
    if (!v5)
    {
      swift_unknownObjectRelease();
      return MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    swift_unknownObjectRelease();
    [v1 copy];
    v6 = _bridgeCocoaArray<A>(_:)();
    swift_unknownObjectRelease();
    v4 = specialized _arrayForceCast<A, B>(_:)(v6);

    v5 = *(v4 + 16);
    if (!v5)
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  v38 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
  v7 = v38;
  v8 = v4 + 32;
  for (i = v5 - 1; ; --i)
  {
    v31 = v8;
    outlined init with copy of Any(v8, v43);
    outlined init with copy of Any(v43, v42);
    swift_dynamicCast();
    memset(v44, 0, sizeof(v44));
    outlined destroy of Locale.Language.Components(v44);
    String.utf8CString.getter();
    Language = uloc_getLanguage();

    v10 = 0;
    v11 = 0;
    if (Language > 0)
    {
      v41[Language] = 0;
      v10 = MEMORY[0x1865CAEB0](v41);
      v11 = v12;
    }

    String.utf8CString.getter();
    Script = uloc_getScript();

    v14 = 0;
    v15 = 0;
    if (Script > 0)
    {
      v40[Script] = 0;
      v14 = MEMORY[0x1865CAEB0](v40);
      v15 = v16;
    }

    String.utf8CString.getter();

    Country = uloc_getCountry();

    v18 = 0;
    v19 = 0;
    if (Country > 0)
    {
      v39[Country] = 0;
      v18 = MEMORY[0x1865CAEB0](v39);
      v19 = v20;
    }

    if (v11)
    {
      v21 = String.lowercased()();
      object = v21._object;
      countAndFlagsBits = v21._countAndFlagsBits;
      v36 = v10;
      if (v15)
      {
        goto LABEL_18;
      }
    }

    else
    {
      object = 0;
      countAndFlagsBits = 0;
      v36 = 0;
      if (v15)
      {
LABEL_18:

        String.init<A>(_:)();
        v22 = String._capitalized()();
        v32 = v22._object;
        v33 = v22._countAndFlagsBits;

        v23 = v11;
        if (v19)
        {
          goto LABEL_19;
        }

        goto LABEL_22;
      }
    }

    v14 = 0;
    v32 = 0;
    v33 = 0;
    v23 = v11;
    if (v19)
    {
LABEL_19:
      v24 = String.uppercased()();
      v25 = v24._countAndFlagsBits;
      v26 = v24._object;
      __swift_destroy_boxed_opaque_existential_1(v43);
      goto LABEL_23;
    }

LABEL_22:
    __swift_destroy_boxed_opaque_existential_1(v43);
    v18 = 0;
    v25 = 0;
    v26 = 0;
LABEL_23:
    outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
    outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
    outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
    v28 = *(v38 + 16);
    v27 = *(v38 + 24);
    if (v28 >= v27 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
    }

    *(v38 + 16) = v28 + 1;
    v29 = (v38 + 96 * v28);
    v29[4] = v36;
    v29[5] = v23;
    v29[6] = countAndFlagsBits;
    v29[7] = object;
    v29[8] = v14;
    v29[9] = v15;
    v29[10] = v33;
    v29[11] = v32;
    v29[12] = v18;
    v29[13] = v19;
    v29[14] = v25;
    v29[15] = v26;
    if (!i)
    {
      break;
    }

    v8 = v31 + 32;
  }

  return v7;
}

BOOL static Locale.Language.== infix(_:_:)(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v3 = a1[1];
  v29 = a1[2];
  v30 = v2;
  v4 = a1[3];
  v5 = a1[5];
  v31 = a1[4];
  v32 = v5;
  v6 = a1[1];
  v28[0] = *a1;
  v28[1] = v6;
  v7 = a2[3];
  v8 = a2[1];
  v34 = a2[2];
  v35 = v7;
  v9 = a2[3];
  v10 = a2[5];
  v36 = a2[4];
  v37 = v10;
  v11 = a2[1];
  v33[0] = *a2;
  v33[1] = v11;
  v24 = v29;
  v25 = v4;
  v12 = a1[5];
  v26 = v31;
  v27 = v12;
  v22 = v28[0];
  v23 = v3;
  v18 = v34;
  v19 = v9;
  v13 = a2[5];
  v20 = v36;
  v21 = v13;
  v16 = v33[0];
  v17 = v8;
  outlined init with copy of Locale.Language.Components(v28, v39);
  outlined init with copy of Locale.Language.Components(v33, v39);
  v14 = specialized static Locale.Language.Components.== infix(_:_:)(&v22, &v16);
  v38[2] = v18;
  v38[3] = v19;
  v38[4] = v20;
  v38[5] = v21;
  v38[0] = v16;
  v38[1] = v17;
  outlined destroy of Locale.Language.Components(v38);
  v39[2] = v24;
  v39[3] = v25;
  v39[4] = v26;
  v39[5] = v27;
  v39[0] = v22;
  v39[1] = v23;
  outlined destroy of Locale.Language.Components(v39);
  return v14;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Locale.Language.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E656E6F706D6F63 && a2 == 0xEA00000000007374)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Locale.Language.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Locale.Language.CodingKeys and conformance Locale.Language.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Locale.Language.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Locale.Language.CodingKeys and conformance Locale.Language.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Locale.Language.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation6LocaleV8LanguageV10CodingKeys33_3BE3340CB9FD883F92889BE886A393D3LLOGMd, &_ss22KeyedEncodingContainerVy10Foundation6LocaleV8LanguageV10CodingKeys33_3BE3340CB9FD883F92889BE886A393D3LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - v5;
  v7 = v1[3];
  v20 = v1[2];
  v21 = v7;
  v8 = v1[5];
  v22 = v1[4];
  v23 = v8;
  v9 = v1[1];
  v18 = *v1;
  v19 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  outlined init with copy of Locale.Language.Components(&v18, &v12);
  lazy protocol witness table accessor for type Locale.Language.CodingKeys and conformance Locale.Language.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = v20;
  v15 = v21;
  v16 = v22;
  v17 = v23;
  v12 = v18;
  v13 = v19;
  lazy protocol witness table accessor for type Locale.Language.Components and conformance Locale.Language.Components();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v11[2] = v14;
  v11[3] = v15;
  v11[4] = v16;
  v11[5] = v17;
  v11[0] = v12;
  v11[1] = v13;
  outlined destroy of Locale.Language.Components(v11);
  return (*(v4 + 8))(v6, v3);
}

Swift::Int Locale.Language.Components.hashValue.getter()
{
  v1 = v0[1];
  v2 = v0[5];
  v3 = v0[9];
  Hasher.init(_seed:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_6:
    Hasher._combine(_:)(0);
    if (v3)
    {
      goto LABEL_4;
    }

LABEL_7:
    Hasher._combine(_:)(0);
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(0);
  if (!v2)
  {
    goto LABEL_6;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!v3)
  {
    goto LABEL_7;
  }

LABEL_4:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t Locale.Language.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation6LocaleV8LanguageV10CodingKeys33_3BE3340CB9FD883F92889BE886A393D3LLOGMd, &_ss22KeyedDecodingContainerVy10Foundation6LocaleV8LanguageV10CodingKeys33_3BE3340CB9FD883F92889BE886A393D3LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Locale.Language.CodingKeys and conformance Locale.Language.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type Locale.Language.Components and conformance Locale.Language.Components();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v9 = v13[3];
    a2[2] = v13[2];
    a2[3] = v9;
    v10 = v13[5];
    a2[4] = v13[4];
    a2[5] = v10;
    v11 = v13[1];
    *a2 = v13[0];
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Locale.Language(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[5];
  v4 = v1[9];
  Hasher.init(_seed:)();
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_6:
    Hasher._combine(_:)(0);
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_7:
    Hasher._combine(_:)(0);
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(0);
  if (!v3)
  {
    goto LABEL_6;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!v4)
  {
    goto LABEL_7;
  }

LABEL_4:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Locale.Language(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v3 = a1[1];
  v29 = a1[2];
  v30 = v2;
  v4 = a1[3];
  v5 = a1[5];
  v31 = a1[4];
  v32 = v5;
  v6 = a1[1];
  v28[0] = *a1;
  v28[1] = v6;
  v7 = a2[3];
  v8 = a2[1];
  v34 = a2[2];
  v35 = v7;
  v9 = a2[3];
  v10 = a2[5];
  v36 = a2[4];
  v37 = v10;
  v11 = a2[1];
  v33[0] = *a2;
  v33[1] = v11;
  v24 = v29;
  v25 = v4;
  v12 = a1[5];
  v26 = v31;
  v27 = v12;
  v22 = v28[0];
  v23 = v3;
  v18 = v34;
  v19 = v9;
  v13 = a2[5];
  v20 = v36;
  v21 = v13;
  v16 = v33[0];
  v17 = v8;
  outlined init with copy of Locale.Language.Components(v28, v39);
  outlined init with copy of Locale.Language.Components(v33, v39);
  v14 = specialized static Locale.Language.Components.== infix(_:_:)(&v22, &v16);
  v38[2] = v18;
  v38[3] = v19;
  v38[4] = v20;
  v38[5] = v21;
  v38[0] = v16;
  v38[1] = v17;
  outlined destroy of Locale.Language.Components(v38);
  v39[2] = v24;
  v39[3] = v25;
  v39[4] = v26;
  v39[5] = v27;
  v39[0] = v22;
  v39[1] = v23;
  outlined destroy of Locale.Language.Components(v39);
  return v14;
}

unint64_t lazy protocol witness table accessor for type Locale.Language.Components.CodingKeys and conformance Locale.Language.Components.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Locale.Language.Components.CodingKeys and conformance Locale.Language.Components.CodingKeys;
  if (!lazy protocol witness table cache variable for type Locale.Language.Components.CodingKeys and conformance Locale.Language.Components.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Language.Components.CodingKeys and conformance Locale.Language.Components.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.Language.Components.CodingKeys and conformance Locale.Language.Components.CodingKeys;
  if (!lazy protocol witness table cache variable for type Locale.Language.Components.CodingKeys and conformance Locale.Language.Components.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Language.Components.CodingKeys and conformance Locale.Language.Components.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.Language.Components.CodingKeys and conformance Locale.Language.Components.CodingKeys;
  if (!lazy protocol witness table cache variable for type Locale.Language.Components.CodingKeys and conformance Locale.Language.Components.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Language.Components.CodingKeys and conformance Locale.Language.Components.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.Language.Components.CodingKeys and conformance Locale.Language.Components.CodingKeys;
  if (!lazy protocol witness table cache variable for type Locale.Language.Components.CodingKeys and conformance Locale.Language.Components.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Language.Components.CodingKeys and conformance Locale.Language.Components.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Locale.Language.CodingKeys and conformance Locale.Language.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Locale.Language.CodingKeys and conformance Locale.Language.CodingKeys;
  if (!lazy protocol witness table cache variable for type Locale.Language.CodingKeys and conformance Locale.Language.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Language.CodingKeys and conformance Locale.Language.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.Language.CodingKeys and conformance Locale.Language.CodingKeys;
  if (!lazy protocol witness table cache variable for type Locale.Language.CodingKeys and conformance Locale.Language.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Language.CodingKeys and conformance Locale.Language.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.Language.CodingKeys and conformance Locale.Language.CodingKeys;
  if (!lazy protocol witness table cache variable for type Locale.Language.CodingKeys and conformance Locale.Language.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Language.CodingKeys and conformance Locale.Language.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.Language.CodingKeys and conformance Locale.Language.CodingKeys;
  if (!lazy protocol witness table cache variable for type Locale.Language.CodingKeys and conformance Locale.Language.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Language.CodingKeys and conformance Locale.Language.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Locale.Language and conformance Locale.Language()
{
  result = lazy protocol witness table cache variable for type Locale.Language and conformance Locale.Language;
  if (!lazy protocol witness table cache variable for type Locale.Language and conformance Locale.Language)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Language and conformance Locale.Language);
  }

  return result;
}

uint64_t specialized Locale.Language.Components.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65676175676E616CLL && a2 == 0xEC00000065646F43;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x747069726373 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F69676572 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t KeyedEncodingContainer.encodePredicateExpression<A, B>(_:forKey:variable:predicateConfiguration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return KeyedEncodingContainer.encodePredicateExpression<A, B>(_:forKey:variable:predicateConfiguration:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

{
  return KeyedEncodingContainer.encodePredicateExpression<A, B>(_:forKey:variable:predicateConfiguration:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

{
  v11 = 8 * a6;
  v89 = a8;
  v85 = a7;
  v86 = a1;
  v78 = a5;
  v77 = a2;
  if (a6 == 1)
  {
    v12 = a8;
    MetatypeMetadata = swift_getMetatypeMetadata();
  }

  else
  {
    v88 = v75;
    MEMORY[0x1EEE9AC00](a1);
    v14 = v11;
    if (a6)
    {
      v15 = v89 & 0xFFFFFFFFFFFFFFFELL;
      v16 = (v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
      v17 = a6;
      do
      {
        v15 += 8;
        *v16++ = swift_getMetatypeMetadata();
        --v17;
      }

      while (v17);
    }

    MetatypeMetadata = swift_getTupleTypeMetadata();
    v12 = v89;
    v11 = v14;
  }

  v84 = v75;
  v75[1] = MetatypeMetadata;
  MEMORY[0x1EEE9AC00](MetatypeMetadata);
  v22 = v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a6 == 1)
  {
    TupleTypeMetadata = type metadata accessor for PredicateExpressions.Variable(0, *(v12 & 0xFFFFFFFFFFFFFFFELL), v19, v20);
  }

  else
  {
    v88 = v75;
    MEMORY[0x1EEE9AC00](v18);
    v26 = v11;
    if (a6)
    {
      v27 = (v89 & 0xFFFFFFFFFFFFFFFELL);
      v28 = (v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
      v29 = a6;
      do
      {
        v30 = *v27++;
        *v28++ = type metadata accessor for PredicateExpressions.Variable(255, v30, v24, v25);
        --v29;
      }

      while (v29);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v11 = v26;
  }

  v83 = v75;
  v75[0] = TupleTypeMetadata;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v32 = v75 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation29PredicateExpressionCodingKeysOGMd, &_ss22KeyedEncodingContainerVy10Foundation29PredicateExpressionCodingKeysOGMR);
  v82 = v75;
  v88 = v33;
  v81 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v35 = v75 - v34;
  v37 = *a4;
  v36 = *(a4 + 8);
  LODWORD(v76) = *(a4 + 16);
  lazy protocol witness table accessor for type PredicateExpressionCodingKeys and conformance PredicateExpressionCodingKeys();
  v87 = v35;
  v38 = KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v80 = v75;
  MEMORY[0x1EEE9AC00](v38);
  v39 = (v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a6)
  {
    v40 = 0;
    v41 = (v75[0] + 32);
    v42 = v76;
    do
    {
      if (a6 == 1)
      {
        v43 = 0;
      }

      else
      {
        v43 = *v41;
      }

      *&v32[v43] = **(a3 + 8 * v40);
      v39[v40++] = &v32[v43];
      v41 += 4;
    }

    while (a6 != v40);
    v78 = v75;
    v94 = v37;
    v95 = v36;
    v96 = v42;
    MEMORY[0x1EEE9AC00](v37);
    v45 = v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v46 = 0;
    v47 = v44;
    v49 = (v48 + 32);
    v51 = v86;
    v50 = v87;
    do
    {
      if (a6 == 1)
      {
        v52 = 0;
      }

      else
      {
        v52 = *v49;
      }

      v53 = &v22[v52];
      *v53 = *((v44 & 0xFFFFFFFFFFFFFFFELL) + 8 * v46);
      *&v45[8 * v46++] = v53;
      v49 += 4;
    }

    while (a6 != v46);
  }

  else
  {
    v78 = v75;
    v94 = v37;
    v95 = v36;
    v45 = &v97;
    v96 = v76;
    v51 = v86;
    v50 = v87;
    v47 = v89;
  }

  PredicateCodableConfiguration.allowInputs<each A>(_:)(v45, a6, v47);
  v54 = v85;
  v93 = v85;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v91);
  (*(*(v54 - 8) + 16))(boxed_opaque_existential_0, v51, v54);
  __swift_project_boxed_opaque_existential_1(v91, v93);
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1(v91);
  v57 = v94;
  v91[0] = v94;
  v91[1] = v95;
  v92 = v96;

  v58 = v79;
  v59 = ExpressionStructure.init(_:with:path:)(DynamicType, v91, MEMORY[0x1E69E7CC0]);
  if (v58)
  {
  }

  else
  {
    v77 = v61;
    v79 = v60;
    v76 = v59;
    LOBYTE(v90) = 0;
    v62 = KeyedEncodingContainer.nestedUnkeyedContainer(forKey:)();
    if (a6)
    {
      v63 = (v47 & 0xFFFFFFFFFFFFFFFELL);
      v64 = a6;
      do
      {
        v65 = *v63;
        v90 = **v39;
        __swift_mutable_project_boxed_opaque_existential_1(v91, v93);
        type metadata accessor for PredicateExpressions.Variable(0, v65, v66, v67);
        swift_getWitnessTable();
        v62 = dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
        ++v39;
        ++v63;
        --v64;
      }

      while (v64);
      v57 = v94;
      v54 = v85;
      v51 = v86;
      v47 = v89;
      v50 = v87;
    }

    v68 = v95;
    MEMORY[0x1EEE9AC00](v62);
    v75[-10] = a6;
    v75[-9] = v54;
    v75[-8] = v47;
    v75[-7] = v69;
    v75[-6] = v70;
    v75[-5] = v50;
    v71 = v79;
    v75[-4] = v76;
    v75[-3] = v71;
    v75[-2] = v77;
    v75[-1] = v51;
    specialized _withPredicateArchivingState<A>(_:_:)(v57, v68, v72, v73);

    __swift_destroy_boxed_opaque_existential_1(v91);
  }

  return (*(v81 + 8))(v50, v88);
}

uint64_t KeyedEncodingContainer.encodePredicateExpressionIfPresent<A, B>(_:forKey:variable:predicateConfiguration:)(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return KeyedEncodingContainer.encodePredicateExpressionIfPresent<A, B>(_:forKey:variable:predicateConfiguration:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

{
  return KeyedEncodingContainer.encodePredicateExpressionIfPresent<A, B>(_:forKey:variable:predicateConfiguration:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

{
  v8 = a7;
  v108 = a5;
  v113 = a4;
  v107 = a2;
  v114 = a1;
  v123 = 8 * a6;
  v124 = a8;
  if (a6 == 1)
  {
    v11 = a8;
    MetatypeMetadata = swift_getMetatypeMetadata();
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    if (a6)
    {
      v15 = v124 & 0xFFFFFFFFFFFFFFFELL;
      v16 = (v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
      v17 = a6;
      do
      {
        v15 += 8;
        *v16++ = swift_getMetatypeMetadata();
        --v17;
      }

      while (v17);
    }

    MetatypeMetadata = swift_getTupleTypeMetadata();
    v8 = a7;
    v11 = v124;
  }

  v120 = v103;
  v103[1] = MetatypeMetadata;
  MEMORY[0x1EEE9AC00](MetatypeMetadata);
  v103[2] = v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation29PredicateExpressionCodingKeysOGMd, &_ss22KeyedEncodingContainerVy10Foundation29PredicateExpressionCodingKeysOGMR);
  v119 = v103;
  v112 = v19;
  v111 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v122 = v103 - v23;
  if (a6 == 1)
  {
    TupleTypeMetadata = type metadata accessor for PredicateExpressions.Variable(0, *(v11 & 0xFFFFFFFFFFFFFFFELL), v21, v22);
  }

  else
  {
    v25 = v8;
    MEMORY[0x1EEE9AC00](v20);
    if (a6)
    {
      v29 = (v124 & 0xFFFFFFFFFFFFFFFELL);
      v30 = (v103 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
      v31 = a6;
      do
      {
        v32 = *v29++;
        *v30++ = type metadata accessor for PredicateExpressions.Variable(255, v32, v26, v27);
        --v31;
      }

      while (v31);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v8 = v25;
  }

  v118 = v103;
  v104 = TupleTypeMetadata;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v34 = v103 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = v103;
  MEMORY[0x1EEE9AC00](v35);
  v37 = v103 - v36;
  v38 = type metadata accessor for Optional();
  v116 = v103;
  v39 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v41 = v103 - v40;
  v115 = v103;
  v42 = *(v8 - 8);
  v44 = MEMORY[0x1EEE9AC00](v43);
  v46 = v103 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *(v113 + 8);
  v105 = *v113;
  v106 = v47;
  v133 = *(v113 + 16);
  v48 = *(v39 + 16);
  v113 = v49;
  v48(v41, v114, v44);
  v50 = *(v42 + 48);
  v114 = v8;
  if (v50(v41, 1, v8) == 1)
  {
    return (*(v39 + 8))(v41, v113);
  }

  v113 = v42;
  v52 = *(v42 + 32);
  v110 = v46;
  v53 = v114;
  v54 = v52(v46, v41, v114);
  v103[0] = v103;
  MEMORY[0x1EEE9AC00](v54);
  v56 = (v55 + 15) & 0xFFFFFFFFFFFFFFF0;
  v57 = v103 - v56;
  v58 = v124;
  v59 = v104;
  if (a6)
  {
    v60 = (v104 + 32);
    v61 = (v103 - v56);
    v62 = a6;
    do
    {
      if (a6 == 1)
      {
        v63 = 0;
      }

      else
      {
        v63 = *v60;
      }

      v64 = *a3++;
      *&v37[v63] = *v64;
      *v61++ = &v37[v63];
      v60 += 4;
      --v62;
    }

    while (v62);
  }

  lazy protocol witness table accessor for type PredicateExpressionCodingKeys and conformance PredicateExpressionCodingKeys();
  v65 = KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  MEMORY[0x1EEE9AC00](v65);
  v66 = (v103 - v56);
  if (a6)
  {
    v67 = 0;
    v68 = (v59 + 32);
    v69 = v106;
    v70 = v105;
    do
    {
      if (a6 == 1)
      {
        v71 = 0;
      }

      else
      {
        v71 = *v68;
      }

      *&v34[v71] = **&v57[8 * v67];
      v66[v67++] = &v34[v71];
      v68 += 4;
    }

    while (a6 != v67);
    v109 = v103;
    v129 = v70;
    v130 = v69;
    v131 = v133;
    MEMORY[0x1EEE9AC00](v70);
    v74 = v103 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
    v75 = 0;
    v77 = (v76 + 32);
    v78 = v122;
    do
    {
      if (a6 == 1)
      {
        v79 = 0;
      }

      else
      {
        v79 = *v77;
      }

      v80 = (v72 + v79);
      *v80 = *((v58 & 0xFFFFFFFFFFFFFFFELL) + 8 * v75);
      *&v74[8 * v75++] = v80;
      v77 += 4;
    }

    while (a6 != v75);
  }

  else
  {
    v109 = v103;
    v129 = v105;
    v130 = v106;
    v74 = &v132;
    v131 = v133;
    v78 = v122;
  }

  PredicateCodableConfiguration.allowInputs<each A>(_:)(v74, a6, v58);
  v128 = v53;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v126);
  (*(v113 + 16))(boxed_opaque_existential_0, v110, v53);
  __swift_project_boxed_opaque_existential_1(v126, v128);
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1(v126);
  v83 = v129;
  v126[0] = v129;
  v126[1] = v130;
  v127 = v131;

  v84 = v121;
  v85 = ExpressionStructure.init(_:with:path:)(DynamicType, v126, MEMORY[0x1E69E7CC0]);
  if (v84)
  {

    v88 = v113;
    v89 = v110;
    (*(v111 + 8))(v78, v112);
    return (*(v88 + 8))(v89, v53);
  }

  else
  {
    v121 = v87;
    v123 = v86;
    v108 = v85;
    LOBYTE(v125) = 0;
    v90 = KeyedEncodingContainer.nestedUnkeyedContainer(forKey:)();
    if (a6)
    {
      v91 = (v58 & 0xFFFFFFFFFFFFFFFELL);
      v92 = a6;
      do
      {
        v93 = *v91;
        v125 = **v66;
        __swift_mutable_project_boxed_opaque_existential_1(v126, v128);
        type metadata accessor for PredicateExpressions.Variable(0, v93, v94, v95);
        swift_getWitnessTable();
        v90 = dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
        ++v66;
        ++v91;
        --v92;
      }

      while (v92);
      v83 = v129;
      v53 = v114;
      v58 = v124;
      v78 = v122;
    }

    v96 = v130;
    MEMORY[0x1EEE9AC00](v90);
    v103[-10] = a6;
    v103[-9] = v53;
    v103[-8] = v58;
    v103[-7] = v97;
    v103[-6] = v98;
    v103[-5] = v78;
    v99 = v123;
    v103[-4] = v108;
    v103[-3] = v99;
    v100 = v110;
    v103[-2] = v121;
    v103[-1] = v100;
    specialized _withPredicateArchivingState<A>(_:_:)(v83, v96, v101, v102);

    __swift_destroy_boxed_opaque_existential_1(v126);
    (*(v111 + 8))(v78, v112);
    return (*(v113 + 8))(v100, v53);
  }
}

uint64_t KeyedDecodingContainer.decodePredicateExpression<A>(forKey:input:predicateConfiguration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v80 = a4;
  v70 = a3;
  v88 = a2;
  v82 = a1;
  if (a7 == 1)
  {
    MetatypeMetadata = swift_getMetatypeMetadata();
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    for (i = 0; i < a7; ++i)
    {
      *&v14[8 * i] = swift_getMetatypeMetadata();
    }

    MetatypeMetadata = swift_getTupleTypeMetadata();
  }

  v83 = &v62;
  MEMORY[0x1EEE9AC00](MetatypeMetadata);
  v73 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = a8;
  v78 = v16;
  if (a7 == 1)
  {
    TupleTypeMetadata = type metadata accessor for PredicateExpressions.Variable(0, *(a8 & 0xFFFFFFFFFFFFFFFELL), v17, v18);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v16);
    v24 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    for (j = 0; j < a7; ++j)
    {
      *&v24[8 * j] = type metadata accessor for PredicateExpressions.Variable(255, *((a8 & 0xFFFFFFFFFFFFFFFELL) + 8 * j), v21, v22);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v76 = TupleTypeMetadata;
  v65 = *(TupleTypeMetadata - 8);
  v79 = &v62;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v71 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = &v62;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v62 - v28;
  v75 = &v62;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v62 - v31;
  v33 = *(a6 - 8);
  v74 = &v62;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v62 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation29PredicateExpressionCodingKeysOGMd, &_ss22KeyedDecodingContainerVy10Foundation29PredicateExpressionCodingKeysOGMR);
  v66 = *(v67 - 8);
  v68 = &v62;
  v37 = MEMORY[0x1EEE9AC00](v67);
  v39 = &v62 - v38;
  v63 = *a5;
  v62 = a5[1];
  v40 = *(a5 + 16);
  (*(v33 + 16))(v36, v69, a6, v37);
  lazy protocol witness table accessor for type PredicateExpressionCodingKeys and conformance PredicateExpressionCodingKeys();
  v41 = v72;
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  if (v41)
  {
    return (*(v33 + 8))(v36, a6);
  }

  v42 = (*(v33 + 8))(v36, a6);
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v62 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  for (k = 0; k != a7; ++k)
  {
    if (a7 == 1)
    {
      v47 = 0;
    }

    else
    {
      v47 = *(v76 + 24 + 16 * k + 8);
    }

    *&v45[8 * k] = &v29[v47];
  }

  MEMORY[0x1EEE9AC00](v43);
  v51 = &v62 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  for (m = 0; m != a7; ++m)
  {
    if (a7 == 1)
    {
      v53 = 0;
    }

    else
    {
      v53 = *(v49 + 24 + 16 * m + 8);
    }

    v54 = &v73[v53];
    *v54 = **(v80 + 8 * m);
    *&v51[8 * m] = v54;
  }

  *&v84 = v63;
  *(&v84 + 1) = v62;
  v85 = v40 & 1;
  KeyedDecodingContainer<>._decode<A, each B>(input:output:predicateConfiguration:)(v86, v48, v51, MEMORY[0x1E69E6370], &v84, a7, v81, MEMORY[0x1E69E6370]);
  outlined init with take of Equatable(v86, v87);
  v64 = &v62;
  v55 = *(v65 + 32);
  v56 = v29;
  v57 = v76;
  v55(v32, v56, v76);
  outlined init with copy of Hashable & Sendable(v87, v82);
  v58 = v71;
  v55(v71, v32, v57);
  for (n = 0; n != a7; ++n)
  {
    if (a7 == 1)
    {
      v60 = 0;
    }

    else
    {
      v60 = *(v57 + 24 + 16 * n + 8);
    }

    **(v88 + 8 * n) = *&v58[v60];
  }

  __swift_destroy_boxed_opaque_existential_1(v87);
  return (*(v66 + 8))(v39, v67);
}

uint64_t KeyedDecodingContainer.decodePredicateExpressionIfPresent<A>(forKey:input:predicateConfiguration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  v79 = a4;
  v78 = a1;
  v13 = a7;
  v14 = 8 * a5;
  if (a5 == 1)
  {
    MetatypeMetadata = swift_getMetatypeMetadata();
  }

  else
  {
    v76 = a7;
    *&v77 = v7;
    v75 = &v71;
    MEMORY[0x1EEE9AC00](a1);
    v16 = v14;
    v17 = (&v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (a5)
    {
      v18 = a6 & 0xFFFFFFFFFFFFFFFELL;
      v19 = v17;
      v20 = a5;
      do
      {
        v18 += 8;
        *v19++ = swift_getMetatypeMetadata();
        --v20;
      }

      while (v20);
    }

    MetatypeMetadata = swift_getTupleTypeMetadata();
    v13 = v76;
    v8 = v77;
    v14 = v16;
  }

  v75 = MetatypeMetadata;
  MEMORY[0x1EEE9AC00](MetatypeMetadata);
  v22 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = *a3;
  v23 = *(a3 + 16);
  v24 = KeyedDecodingContainer.contains(_:)();
  if (v24)
  {
    v83 = v23;
    v74 = &v71;
    MEMORY[0x1EEE9AC00](v24);
    v25 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a5)
    {
      v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation19PredicateExpression_pSb6OutputAaBPRts_XPMd, &_s10Foundation19PredicateExpression_pSb6OutputAaBPRts_XPMR);
      v73 = v26;
      if (a5 == 1)
      {
        v29 = a6;
        type metadata accessor for PredicateExpressions.Variable(255, *(a6 & 0xFFFFFFFFFFFFFFFELL), v27, v28);
        TupleTypeMetadata = swift_checkMetadataState();
      }

      else
      {
        v76 = v13;
        v71 = &v71;
        MEMORY[0x1EEE9AC00](v26);
        v72 = v14;
        v49 = a6;
        v50 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
        v51 = 0;
        v29 = v49;
        v52 = v49 & 0xFFFFFFFFFFFFFFFELL;
        do
        {
          *&v50[8 * v51] = type metadata accessor for PredicateExpressions.Variable(255, *(v52 + 8 * v51), v47, v48);
          ++v51;
        }

        while (a5 != v51);
        TupleTypeMetadata = swift_getTupleTypeMetadata();
        v14 = v72;
        v13 = v76;
      }

      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v54 = 0;
      v55 = v13 + *(TupleTypeMetadata2 + 48);
      v56 = (TupleTypeMetadata + 32);
      a6 = v29;
      do
      {
        if (a5 == 1)
        {
          v57 = 0;
        }

        else
        {
          v57 = *v56;
        }

        *&v25[8 * v54++] = v55 + v57;
        v56 += 4;
      }

      while (a5 != v54);
      MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
      v43 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      v58 = 0;
      v60 = (v59 + 32);
      do
      {
        if (a5 == 1)
        {
          v61 = 0;
        }

        else
        {
          v61 = *v60;
        }

        v62 = &v22[v61];
        *v62 = **(a2 + 8 * v58);
        *&v43[8 * v58++] = v62;
        v60 += 4;
      }

      while (a5 != v58);
    }

    else
    {
      v43 = &v82;
    }

    v80 = v77;
    v81 = v83;
    result = KeyedDecodingContainer.decodePredicateExpression<A>(forKey:input:predicateConfiguration:)(v13, v25, v78, v43, &v80, v79, a5, a6);
    if (!v8)
    {
      v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation19PredicateExpression_pSb6OutputAaBPRts_XPMd, &_s10Foundation19PredicateExpression_pSb6OutputAaBPRts_XPMR);
      if (a5 == 1)
      {
        type metadata accessor for PredicateExpressions.Variable(255, *(a6 & 0xFFFFFFFFFFFFFFFELL), v45, v46);
        swift_checkMetadataState();
      }

      else
      {
        v63 = v13;
        MEMORY[0x1EEE9AC00](v44);
        if (a5)
        {
          v66 = (a6 & 0xFFFFFFFFFFFFFFFELL);
          v67 = (&v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
          v68 = a5;
          do
          {
            v69 = *v66++;
            *v67++ = type metadata accessor for PredicateExpressions.Variable(255, v69, v64, v65);
            --v68;
          }

          while (v68);
        }

        swift_getTupleTypeMetadata();
        v13 = v63;
      }

      v70 = swift_getTupleTypeMetadata2();
      return (*(*(v70 - 8) + 56))(v13, 0, 1, v70);
    }
  }

  else
  {
    v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation19PredicateExpression_pSb6OutputAaBPRts_XPMd, &_s10Foundation19PredicateExpression_pSb6OutputAaBPRts_XPMR);
    if (a5 == 1)
    {
      type metadata accessor for PredicateExpressions.Variable(255, *(a6 & 0xFFFFFFFFFFFFFFFELL), v32, v33);
      swift_checkMetadataState();
    }

    else
    {
      v34 = v13;
      MEMORY[0x1EEE9AC00](v31);
      if (a5)
      {
        v37 = (a6 & 0xFFFFFFFFFFFFFFFELL);
        v38 = (&v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
        v39 = a5;
        do
        {
          v40 = *v37++;
          *v38++ = type metadata accessor for PredicateExpressions.Variable(255, v40, v35, v36);
          --v39;
        }

        while (v39);
      }

      swift_getTupleTypeMetadata();
      v13 = v34;
    }

    v41 = swift_getTupleTypeMetadata2();
    return (*(*(v41 - 8) + 56))(v13, 1, 1, v41);
  }

  return result;
}

uint64_t UnkeyedEncodingContainer.encodePredicateExpression<A, B>(_:variable:predicateConfiguration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  return UnkeyedEncodingContainer.encodePredicateExpression<A, B>(_:variable:predicateConfiguration:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

{
  return UnkeyedEncodingContainer.encodePredicateExpression<A, B>(_:variable:predicateConfiguration:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

{
  v89 = a6;
  v93 = 8 * a4;
  v94 = a7;
  v84 = a8;
  v81 = a5;
  if (a4 == 1)
  {
    v12 = a7;
    MetatypeMetadata = swift_getMetatypeMetadata();
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    if (a4)
    {
      v15 = v94 & 0xFFFFFFFFFFFFFFFELL;
      v16 = (v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
      v17 = a4;
      do
      {
        v15 += 8;
        *v16++ = swift_getMetatypeMetadata();
        --v17;
      }

      while (v17);
    }

    MetatypeMetadata = swift_getTupleTypeMetadata();
    v12 = v94;
  }

  v88 = v80;
  v80[1] = MetatypeMetadata;
  MEMORY[0x1EEE9AC00](MetatypeMetadata);
  v22 = v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = a1;
  if (a4 == 1)
  {
    TupleTypeMetadata = type metadata accessor for PredicateExpressions.Variable(0, *(v12 & 0xFFFFFFFFFFFFFFFELL), v19, v20);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v18);
    if (a4)
    {
      v27 = (v94 & 0xFFFFFFFFFFFFFFFELL);
      v28 = (v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
      v29 = a4;
      do
      {
        v30 = *v27++;
        *v28++ = type metadata accessor for PredicateExpressions.Variable(255, v30, v24, v25);
        --v29;
      }

      while (v29);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v87 = v80;
  v80[0] = TupleTypeMetadata;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v32 = v80 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation29PredicateExpressionCodingKeysOGMd, &_ss22KeyedEncodingContainerVy10Foundation29PredicateExpressionCodingKeysOGMR);
  v86 = v80;
  v92 = v33;
  v85 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v35 = v80 - v34;
  v36 = *a3;
  v37 = *(a3 + 8);
  v38 = *(a3 + 16);
  lazy protocol witness table accessor for type PredicateExpressionCodingKeys and conformance PredicateExpressionCodingKeys();
  v90 = v35;
  v39 = dispatch thunk of UnkeyedEncodingContainer.nestedContainer<A>(keyedBy:)();
  v84 = v80;
  MEMORY[0x1EEE9AC00](v39);
  v42 = (v80 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a4)
  {
    v43 = 0;
    v44 = (v80[0] + 32);
    v45 = v37;
    v46 = v91;
    do
    {
      if (a4 == 1)
      {
        v47 = 0;
      }

      else
      {
        v47 = *v44;
      }

      *&v32[v47] = **(a2 + 8 * v43);
      v42[v43++] = &v32[v47];
      v44 += 4;
    }

    while (a4 != v43);
    v82 = v80;
    v99 = v36;
    v100 = v45;
    v101 = v38;
    MEMORY[0x1EEE9AC00](v40);
    v50 = v80 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
    v51 = 0;
    v52 = v48;
    v54 = (v53 + 32);
    v55 = v89;
    do
    {
      if (a4 == 1)
      {
        v56 = 0;
      }

      else
      {
        v56 = *v54;
      }

      v57 = &v22[v56];
      *v57 = *((v48 & 0xFFFFFFFFFFFFFFFELL) + 8 * v51);
      *&v50[8 * v51++] = v57;
      v54 += 4;
    }

    while (a4 != v51);
  }

  else
  {
    v82 = v80;
    v99 = v36;
    v100 = v37;
    v50 = &v102;
    v101 = v38;
    v52 = v94;
    v55 = v89;
    v46 = v91;
  }

  PredicateCodableConfiguration.allowInputs<each A>(_:)(v50, a4, v52);
  v98 = v55;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v96);
  (*(*(v55 - 8) + 16))(boxed_opaque_existential_0, v46, v55);
  __swift_project_boxed_opaque_existential_1(v96, v98);
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1(v96);
  v60 = v99;
  v96[0] = v99;
  v96[1] = v100;
  v97 = v101;

  v61 = v83;
  v62 = ExpressionStructure.init(_:with:path:)(DynamicType, v96, MEMORY[0x1E69E7CC0]);
  v65 = v90;
  if (v61)
  {
  }

  else
  {
    v83 = v64;
    v93 = v63;
    v81 = v62;
    LOBYTE(v95) = 0;
    v66 = KeyedEncodingContainer.nestedUnkeyedContainer(forKey:)();
    if (a4)
    {
      v67 = (v52 & 0xFFFFFFFFFFFFFFFELL);
      v68 = a4;
      do
      {
        v69 = *v67;
        v95 = **v42;
        __swift_mutable_project_boxed_opaque_existential_1(v96, v98);
        type metadata accessor for PredicateExpressions.Variable(0, v69, v70, v71);
        swift_getWitnessTable();
        v66 = dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
        ++v42;
        ++v67;
        --v68;
      }

      while (v68);
      v60 = v99;
      v52 = v94;
      v55 = v89;
      v65 = v90;
    }

    v72 = v100;
    MEMORY[0x1EEE9AC00](v66);
    v80[-10] = a4;
    v80[-9] = v55;
    v80[-8] = v52;
    v80[-7] = v73;
    v80[-6] = v74;
    v80[-5] = v65;
    v75 = v93;
    v80[-4] = v81;
    v80[-3] = v75;
    v76 = v91;
    v80[-2] = v83;
    v80[-1] = v76;
    specialized _withPredicateArchivingState<A>(_:_:)(v60, v72, v77, v78);

    __swift_destroy_boxed_opaque_existential_1(v96);
  }

  return (*(v85 + 8))(v65, v92);
}

uint64_t UnkeyedEncodingContainer.encodePredicateExpressionIfPresent<A, B>(_:variable:predicateConfiguration:)(uint64_t a1, void **a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  return UnkeyedEncodingContainer.encodePredicateExpressionIfPresent<A, B>(_:variable:predicateConfiguration:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

{
  return UnkeyedEncodingContainer.encodePredicateExpressionIfPresent<A, B>(_:variable:predicateConfiguration:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

{
  v107 = a8;
  v118 = a6;
  v105 = a5;
  v104 = a3;
  v11 = 8 * a4;
  v108 = 8 * a4;
  v109 = a1;
  if (a4 == 1)
  {
    MetatypeMetadata = swift_getMetatypeMetadata();
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v13 = (v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (a4)
    {
      v14 = a7 & 0xFFFFFFFFFFFFFFFELL;
      v15 = v13;
      v16 = a4;
      do
      {
        v14 += 8;
        *v15++ = swift_getMetatypeMetadata();
        --v16;
      }

      while (v16);
    }

    MetatypeMetadata = swift_getTupleTypeMetadata();
    v11 = v108;
  }

  v116 = v97;
  v97[1] = MetatypeMetadata;
  MEMORY[0x1EEE9AC00](MetatypeMetadata);
  v97[2] = v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation29PredicateExpressionCodingKeysOGMd, &_ss22KeyedEncodingContainerVy10Foundation29PredicateExpressionCodingKeysOGMR);
  v115 = v97;
  v102 = v18;
  v100 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v117 = v97 - v22;
  v103 = a7;
  if (a4 == 1)
  {
    TupleTypeMetadata = type metadata accessor for PredicateExpressions.Variable(0, *(a7 & 0xFFFFFFFFFFFFFFFELL), v20, v21);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v19);
    v26 = (v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (a4)
    {
      v27 = (v103 & 0xFFFFFFFFFFFFFFFELL);
      v28 = v26;
      v29 = a4;
      do
      {
        v30 = *v27++;
        *v28++ = type metadata accessor for PredicateExpressions.Variable(255, v30, v24, v25);
        --v29;
      }

      while (v29);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v114 = v97;
  v101 = TupleTypeMetadata;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v32 = v97 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = v97;
  MEMORY[0x1EEE9AC00](v33);
  v35 = v97 - v34;
  v36 = v118;
  v37 = type metadata accessor for Optional();
  v112 = v97;
  v38 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v40 = v97 - v39;
  v111 = v97;
  v41 = *(v36 - 8);
  v43 = MEMORY[0x1EEE9AC00](v42);
  v45 = v97 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = *(v104 + 1);
  v98 = *v104;
  v99 = v46;
  v127 = v104[16];
  v47 = *(v38 + 16);
  v104 = v48;
  v47(v40, v109, v43);
  v109 = v41;
  if ((*(v41 + 48))(v40, 1, v36) == 1)
  {
    (*(v38 + 8))(v40, v104);
    return dispatch thunk of UnkeyedEncodingContainer.encodeNil()();
  }

  else
  {
    v50 = v109;
    v51 = *(v109 + 32);
    v104 = v45;
    v52 = v51(v45, v40, v36);
    v97[0] = v97;
    v53 = v108;
    MEMORY[0x1EEE9AC00](v52);
    v54 = (v53 + 15) & 0xFFFFFFFFFFFFFFF0;
    v55 = v97 - v54;
    if (a4)
    {
      v56 = (v101 + 32);
      v57 = (v97 - v54);
      v58 = a4;
      do
      {
        if (a4 == 1)
        {
          v59 = 0;
        }

        else
        {
          v59 = *v56;
        }

        v60 = *a2++;
        *&v35[v59] = *v60;
        *v57++ = &v35[v59];
        v56 += 4;
        --v58;
      }

      while (v58);
    }

    lazy protocol witness table accessor for type PredicateExpressionCodingKeys and conformance PredicateExpressionCodingKeys();
    v61 = dispatch thunk of UnkeyedEncodingContainer.nestedContainer<A>(keyedBy:)();
    MEMORY[0x1EEE9AC00](v61);
    v62 = (v97 - v54);
    if (a4)
    {
      v63 = 0;
      v64 = (v101 + 32);
      v65 = v103;
      v66 = v98;
      do
      {
        if (a4 == 1)
        {
          v67 = 0;
        }

        else
        {
          v67 = *v64;
        }

        *&v32[v67] = **&v55[8 * v63];
        v62[v63++] = &v32[v67];
        v64 += 4;
      }

      while (a4 != v63);
      v107 = v97;
      v123 = v66;
      v124 = v99;
      v125 = v127;
      MEMORY[0x1EEE9AC00](v66);
      v69 = v97 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
      v70 = 0;
      v72 = (v71 + 32);
      v73 = v117;
      do
      {
        if (a4 == 1)
        {
          v74 = 0;
        }

        else
        {
          v74 = *v72;
        }

        v75 = (v68 + v74);
        *v75 = *((v65 & 0xFFFFFFFFFFFFFFFELL) + 8 * v70);
        *&v69[8 * v70++] = v75;
        v72 += 4;
      }

      while (a4 != v70);
    }

    else
    {
      v107 = v97;
      v123 = v98;
      v124 = v99;
      v69 = &v126;
      v125 = v127;
      v65 = v103;
      v73 = v117;
    }

    PredicateCodableConfiguration.allowInputs<each A>(_:)(v69, a4, v65);
    v76 = v118;
    v122 = v118;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v120);
    (*(v50 + 16))(boxed_opaque_existential_0, v104, v76);
    __swift_project_boxed_opaque_existential_1(v120, v122);
    DynamicType = swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_1(v120);
    v79 = v123;
    v120[0] = v123;
    v120[1] = v124;
    v121 = v125;

    v80 = v110;
    v81 = ExpressionStructure.init(_:with:path:)(DynamicType, v120, MEMORY[0x1E69E7CC0]);
    if (v80)
    {

      v84 = v104;
    }

    else
    {
      v108 = v83;
      v110 = v82;
      v106 = v81;
      LOBYTE(v119) = 0;
      v85 = KeyedEncodingContainer.nestedUnkeyedContainer(forKey:)();
      if (a4)
      {
        v86 = (v65 & 0xFFFFFFFFFFFFFFFELL);
        v87 = a4;
        do
        {
          v88 = *v86;
          v119 = **v62;
          __swift_mutable_project_boxed_opaque_existential_1(v120, v122);
          type metadata accessor for PredicateExpressions.Variable(0, v88, v89, v90);
          swift_getWitnessTable();
          v85 = dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
          ++v62;
          ++v86;
          --v87;
        }

        while (v87);
        v79 = v123;
        v73 = v117;
        v76 = v118;
        v65 = v103;
      }

      v91 = v124;
      MEMORY[0x1EEE9AC00](v85);
      v97[-10] = a4;
      v97[-9] = v76;
      v97[-8] = v65;
      v97[-7] = v92;
      v97[-6] = v93;
      v97[-5] = v73;
      v94 = v110;
      v97[-4] = v106;
      v97[-3] = v94;
      v84 = v104;
      v97[-2] = v108;
      v97[-1] = v84;
      specialized _withPredicateArchivingState<A>(_:_:)(v79, v91, v95, v96);

      __swift_destroy_boxed_opaque_existential_1(v120);
    }

    (*(v100 + 8))(v73, v102);
    return (*(v109 + 8))(v84, v76);
  }
}

uint64_t UnkeyedDecodingContainer.decodePredicateExpressionIfPresent<A>(input:predicateConfiguration:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = a6;
  v82 = a5;
  v83 = a4;
  v79 = a1;
  v12 = a7;
  if (a3 == 1)
  {
    MetatypeMetadata = swift_getMetatypeMetadata();
    v14 = MetatypeMetadata;
  }

  else
  {
    v81 = a6;
    *&v80 = v7;
    MEMORY[0x1EEE9AC00](a1);
    if (a3)
    {
      v17 = v82 & 0xFFFFFFFFFFFFFFFELL;
      v18 = (v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
      v19 = a3;
      do
      {
        v17 += 8;
        *v18++ = swift_getMetatypeMetadata();
        --v19;
      }

      while (v19);
    }

    MetatypeMetadata = swift_getTupleTypeMetadata();
    v14 = MetatypeMetadata;
    v12 = a7;
    v9 = v81;
  }

  v20 = v73;
  MEMORY[0x1EEE9AC00](MetatypeMetadata);
  v22 = v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = *a2;
  v23 = *(a2 + 16);
  result = dispatch thunk of UnkeyedDecodingContainer.decodeNil()();
  if (!v8)
  {
    if (result)
    {
      v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation19PredicateExpression_pSb6OutputAaBPRts_XPMd, &_s10Foundation19PredicateExpression_pSb6OutputAaBPRts_XPMR);
      if (a3 == 1)
      {
        type metadata accessor for PredicateExpressions.Variable(255, *(v82 & 0xFFFFFFFFFFFFFFFELL), v26, v27);
        swift_checkMetadataState();
      }

      else
      {
        v77 = v73;
        MEMORY[0x1EEE9AC00](v25);
        if (a3)
        {
          v37 = (v82 & 0xFFFFFFFFFFFFFFFELL);
          v38 = (v73 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
          v39 = a3;
          do
          {
            v40 = *v37++;
            *v38++ = type metadata accessor for PredicateExpressions.Variable(255, v40, v34, v35);
            --v39;
          }

          while (v39);
        }

        swift_getTupleTypeMetadata();
      }

      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      return (*(*(TupleTypeMetadata2 - 8) + 56))(v12, 1, 1, TupleTypeMetadata2);
    }

    else
    {
      v87 = v23;
      v81 = v9;
      MEMORY[0x1EEE9AC00](result);
      v78 = v28;
      v29 = v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (a3)
      {
        v76 = 0;
        v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation19PredicateExpression_pSb6OutputAaBPRts_XPMd, &_s10Foundation19PredicateExpression_pSb6OutputAaBPRts_XPMR);
        v75 = v30;
        if (a3 == 1)
        {
          type metadata accessor for PredicateExpressions.Variable(255, *(v82 & 0xFFFFFFFFFFFFFFFELL), v31, v32);
          TupleTypeMetadata = swift_checkMetadataState();
        }

        else
        {
          v77 = v73;
          v73[1] = v73;
          v74 = v12;
          MEMORY[0x1EEE9AC00](v30);
          v51 = v73 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
          v52 = 0;
          v53 = v82 & 0xFFFFFFFFFFFFFFFELL;
          do
          {
            *&v51[8 * v52] = type metadata accessor for PredicateExpressions.Variable(255, *(v53 + 8 * v52), v48, v49);
            ++v52;
          }

          while (a3 != v52);
          TupleTypeMetadata = swift_getTupleTypeMetadata();
          v12 = v74;
          v20 = v77;
        }

        v54 = swift_getTupleTypeMetadata2();
        v55 = 0;
        v56 = v12 + *(v54 + 48);
        v57 = (TupleTypeMetadata + 32);
        v8 = v76;
        do
        {
          if (a3 == 1)
          {
            v58 = 0;
          }

          else
          {
            v58 = *v57;
          }

          *&v29[8 * v55++] = v56 + v58;
          v57 += 4;
        }

        while (a3 != v55);
        *&v44 = MEMORY[0x1EEE9AC00](v54);
        v42 = v73 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
        v61 = 0;
        v62 = (v14 + 32);
        v43 = v82;
        do
        {
          if (a3 == 1)
          {
            v63 = 0;
          }

          else
          {
            v63 = *v62;
          }

          v64 = &v22[v63];
          *v64 = **(v59 + 8 * v61);
          *&v42[8 * v61++] = v64;
          v62 += 4;
        }

        while (a3 != v61);
      }

      else
      {
        v42 = &v86;
        v43 = v82;
        v44 = v80;
      }

      v84 = v44;
      v85 = v87;
      result = UnkeyedDecodingContainer.decodePredicateExpression<A>(input:predicateConfiguration:)(v12, v29, v42, &v84, a3, v83, v43, v81);
      if (!v8)
      {
        v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation19PredicateExpression_pSb6OutputAaBPRts_XPMd, &_s10Foundation19PredicateExpression_pSb6OutputAaBPRts_XPMR);
        if (a3 == 1)
        {
          type metadata accessor for PredicateExpressions.Variable(255, *(v43 & 0xFFFFFFFFFFFFFFFELL), v46, v47);
          swift_checkMetadataState();
        }

        else
        {
          v83 = v73;
          v77 = v20;
          MEMORY[0x1EEE9AC00](v45);
          if (a3)
          {
            v68 = (v43 & 0xFFFFFFFFFFFFFFFELL);
            v69 = (v73 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));
            v70 = a3;
            do
            {
              v71 = *v68++;
              *v69++ = type metadata accessor for PredicateExpressions.Variable(255, v71, v65, v66);
              --v70;
            }

            while (v70);
          }

          swift_getTupleTypeMetadata();
        }

        v72 = swift_getTupleTypeMetadata2();
        return (*(*(v72 - 8) + 56))(v12, 0, 1, v72);
      }
    }
  }

  return result;
}

uint64_t KeyedDecodingContainer.decodePredicateExpression<A, each B>(forKey:input:output:predicateConfiguration:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, char *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v80 = a7;
  *&v79 = a3;
  v76 = a2;
  v71 = a1;
  v74 = a10;
  *&v88 = a10;
  ExtendedExistentialTypeMetadata = swift_getExtendedExistentialTypeMetadata();
  v15 = 8 * a8;
  v85 = a9;
  v78 = (8 * a8);
  if (a8 == 1)
  {
    type metadata accessor for PredicateExpressions.Variable(255, *(a9 & 0xFFFFFFFFFFFFFFFELL), v13, v14);
    TupleTypeMetadata = swift_checkMetadataState();
  }

  else
  {
    MEMORY[0x1EEE9AC00](ExtendedExistentialTypeMetadata);
    if (a8)
    {
      v19 = (v85 & 0xFFFFFFFFFFFFFFFELL);
      v20 = (&v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
      v21 = a8;
      do
      {
        v22 = *v19++;
        *v20++ = type metadata accessor for PredicateExpressions.Variable(255, v22, v17, v18);
        --v21;
      }

      while (v21);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v15 = v78;
  }

  v70 = TupleTypeMetadata;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v72 = (&v67 - v24);
  v83 = &v67;
  if (a8 == 1)
  {
    MetatypeMetadata = swift_getMetatypeMetadata();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v23);
    if (a8)
    {
      v26 = v85 & 0xFFFFFFFFFFFFFFFELL;
      v27 = (&v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
      v28 = a8;
      do
      {
        v26 += 8;
        *v27++ = swift_getMetatypeMetadata();
        --v28;
      }

      while (v28);
    }

    MetatypeMetadata = swift_getTupleTypeMetadata();
  }

  v75 = MetatypeMetadata;
  v84 = &v67;
  MEMORY[0x1EEE9AC00](MetatypeMetadata);
  v30 = &v67 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation29PredicateExpressionCodingKeysOGMd, &_ss22KeyedDecodingContainerVy10Foundation29PredicateExpressionCodingKeysOGMR);
  v77 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v67 - v32;
  v35 = *a6;
  v34 = a6[1];
  v36 = *(a6 + 16);
  lazy protocol witness table accessor for type PredicateExpressionCodingKeys and conformance PredicateExpressionCodingKeys();
  v37 = v82;
  result = KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  if (!v37)
  {
    v94 = v36;
    v68 = v35;
    v81 = v31;
    v82 = v34;
    v80 = v33;
    v69 = &v67;
    *&v79 = 0;
    v39 = v78;
    MEMORY[0x1EEE9AC00](result);
    v40 = (v39 + 15) & 0xFFFFFFFFFFFFFFF0;
    if (a8)
    {
      memcpy(&v67 - v40, v76, v39);
      v76 = &v67;
      *&v91 = v68;
      *(&v91 + 1) = v82;
      v92 = v94;
      MEMORY[0x1EEE9AC00](v68);
      v41 = &v67 - v40;
      v42 = 0;
      v43 = v85;
      v44 = (v75 + 32);
      v45 = v80;
      do
      {
        if (a8 == 1)
        {
          v46 = 0;
        }

        else
        {
          v46 = *v44;
        }

        v47 = &v30[v46];
        *v47 = *((v43 & 0xFFFFFFFFFFFFFFFELL) + 8 * v42);
        *&v41[8 * v42++] = v47;
        v44 += 4;
      }

      while (a8 != v42);
    }

    else
    {
      v76 = &v67;
      *&v91 = v68;
      *(&v91 + 1) = v82;
      v41 = &v93;
      v92 = v94;
      v43 = v85;
      v45 = v80;
    }

    PredicateCodableConfiguration.allowInputs<each A>(_:)(v41, a8, v43);
    LOBYTE(v86) = 2;
    lazy protocol witness table accessor for type ExpressionStructure and conformance ExpressionStructure();
    v48 = v81;
    v49 = v79;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    if (v49)
    {

      v50 = v77;
      return (*(v50 + 8))(v45, v48);
    }

    v85 = &v67 - v40;
    v82 = &v67;
    v51 = v88;
    v52 = v89;
    v53 = v91;
    v54 = v92;
    v88 = v91;
    LOBYTE(v89) = v92;

    v55 = ExpressionStructure.reconstruct(with:path:)(&v88, MEMORY[0x1E69E7CC0], v51, *(&v51 + 1), v52);
    v78 = *(&v88 + 1);
    *&v79 = v88;

    *&v86 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXpMd, &_sypXpMR);
    v90 = v74;
    swift_getExtendedExistentialTypeMetadata();
    if ((swift_dynamicCast() & 1) == 0)
    {

      LOBYTE(v88) = 2;
      type metadata accessor for DecodingError();
      swift_allocError();
      lazy protocol witness table accessor for type KeyedDecodingContainer<PredicateExpressionCodingKeys> and conformance KeyedDecodingContainer<A>();
      v45 = v80;
      v48 = v81;
      static DecodingError.dataCorruptedError<A>(forKey:in:debugDescription:)();
      swift_willThrow();
      v50 = v77;
      return (*(v50 + 8))(v45, v48);
    }

    v79 = v88;
    v56 = v89;
    LOBYTE(v86) = 0;
    v57 = v80;
    v58 = KeyedDecodingContainer.nestedUnkeyedContainer(forKey:)();
    v78 = &v67;
    v86 = v53;
    v87 = v54;
    MEMORY[0x1EEE9AC00](v58);
    *(&v67 - 8) = a8;
    *(&v67 - 7) = v43;
    *(&v67 - 6) = v74;
    *(&v67 - 5) = &v88;
    *(&v67 - 2) = v79;
    *(&v67 - 2) = v56;
    *(&v67 - 1) = v57;
    v59 = v72;
    v60 = TupleTypeMetadata2;
    _withPredicateArchivingState<A>(_:_:)(&v86, partial apply for closure #1 in KeyedDecodingContainer<>._decode<A, each B>(input:output:predicateConfiguration:));

    outlined init with take of Equatable(v59, v71);
    v61 = v77;
    if (a8)
    {
      v62 = v59 + *(v60 + 48);
      v63 = (v70 + 32);
      v64 = a8;
      do
      {
        if (a8 == 1)
        {
          v65 = 0;
        }

        else
        {
          v65 = *v63;
        }

        v66 = v85;
        **v85 = *&v62[v65];
        v63 += 4;
        v85 = v66 + 8;
        --v64;
      }

      while (v64);
    }

    __swift_destroy_boxed_opaque_existential_1(&v88);
    return (*(v61 + 8))(v57, v81);
  }

  return result;
}

uint64_t KeyedDecodingContainer.decodePredicateExpressionIfPresent<A, each B>(forKey:input:output:predicateConfiguration:)@<X0>(char *a1@<X0>, uint64_t *a2@<X3>, __int128 *a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v8 = v7;
  v94 = a3;
  v93 = a1;
  v86 = a7;
  v79 = a6;
  *&v98 = a6;
  ExtendedExistentialTypeMetadata = swift_getExtendedExistentialTypeMetadata();
  v91 = (8 * a4);
  v92 = a5;
  if (a4 == 1)
  {
    type metadata accessor for PredicateExpressions.Variable(255, *(a5 & 0xFFFFFFFFFFFFFFFELL), v13, v14);
    TupleTypeMetadata = swift_checkMetadataState();
  }

  else
  {
    MEMORY[0x1EEE9AC00](ExtendedExistentialTypeMetadata);
    if (a4)
    {
      v19 = (v92 & 0xFFFFFFFFFFFFFFFELL);
      v20 = (&v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
      v21 = a4;
      do
      {
        v22 = *v19++;
        *v20++ = type metadata accessor for PredicateExpressions.Variable(255, v22, v16, v17);
        --v21;
      }

      while (v21);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v8 = v7;
  }

  v83 = TupleTypeMetadata;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v84 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v78 = (&v76 - v23);
  v24 = &v76;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation29PredicateExpressionCodingKeysOGMd, &_ss22KeyedDecodingContainerVy10Foundation29PredicateExpressionCodingKeysOGMR);
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v85 = &v76 - v26;
  v90 = &v76;
  if (a4 == 1)
  {
    MetatypeMetadata = swift_getMetatypeMetadata();
    v28 = MetatypeMetadata;
  }

  else
  {
    v82 = &v76;
    v29 = v8;
    MEMORY[0x1EEE9AC00](v25);
    if (a4)
    {
      v31 = v92 & 0xFFFFFFFFFFFFFFFELL;
      v32 = (&v76 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
      v33 = a4;
      do
      {
        v31 += 8;
        *v32++ = swift_getMetatypeMetadata();
        --v33;
      }

      while (v33);
    }

    MetatypeMetadata = swift_getTupleTypeMetadata();
    v28 = MetatypeMetadata;
    v8 = v29;
    v24 = v82;
  }

  v89 = &v76;
  MEMORY[0x1EEE9AC00](MetatypeMetadata);
  v35 = &v76 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = &v76;
  v36 = *a2;
  v82 = a2[1];
  v37 = *(a2 + 16);
  v38 = KeyedDecodingContainer.contains(_:)();
  if ((v38 & 1) == 0)
  {
    return (*(v84 + 56))(v86, 1, 1, TupleTypeMetadata2);
  }

  v77 = &v76;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v76 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    v41 = v86 + *(TupleTypeMetadata2 + 48);
    v42 = (v83 + 32);
    v43 = (&v76 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
    v44 = a4;
    do
    {
      if (a4 == 1)
      {
        v45 = 0;
      }

      else
      {
        v45 = *v42;
      }

      *v43++ = v41 + v45;
      v42 += 4;
      --v44;
    }

    while (v44);
  }

  lazy protocol witness table accessor for type PredicateExpressionCodingKeys and conformance PredicateExpressionCodingKeys();
  result = KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  if (!v8)
  {
    v94 = &v76;
    MEMORY[0x1EEE9AC00](result);
    v48 = (v47 + 15) & 0xFFFFFFFFFFFFFFF0;
    v93 = &v76 - v48;
    if (a4)
    {
      v49 = memcpy(&v76 - v48, v40, v47);
      v95 = &v76;
      *&v101 = v36;
      *(&v101 + 1) = v82;
      v102 = v37;
      MEMORY[0x1EEE9AC00](v49);
      v50 = &v76 - v48;
      v51 = 0;
      v52 = v92 & 0xFFFFFFFFFFFFFFFELL;
      v53 = (v28 + 32);
      do
      {
        if (a4 == 1)
        {
          v54 = 0;
        }

        else
        {
          v54 = *v53;
        }

        v55 = &v35[v54];
        *v55 = *(v52 + 8 * v51);
        *&v50[8 * v51++] = v55;
        v53 += 4;
      }

      while (a4 != v51);
    }

    else
    {
      v95 = &v76;
      *&v101 = v36;
      *(&v101 + 1) = v82;
      v50 = &v103;
      v102 = v37;
    }

    PredicateCodableConfiguration.allowInputs<each A>(_:)(v50, a4, v92);
    LOBYTE(v96) = 2;
    lazy protocol witness table accessor for type ExpressionStructure and conformance ExpressionStructure();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v82 = v24;
    v56 = v98;
    v57 = v99;
    v58 = v101;
    v59 = v102;
    v98 = v101;
    LOBYTE(v99) = v102;

    v60 = ExpressionStructure.reconstruct(with:path:)(&v98, MEMORY[0x1E69E7CC0], v56, *(&v56 + 1), v57);
    v91 = 0;

    *&v96 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXpMd, &_sypXpMR);
    v100 = v79;
    swift_getExtendedExistentialTypeMetadata();
    if ((swift_dynamicCast() & 1) == 0)
    {

      LOBYTE(v98) = 2;
      type metadata accessor for DecodingError();
      swift_allocError();
      lazy protocol witness table accessor for type KeyedDecodingContainer<PredicateExpressionCodingKeys> and conformance KeyedDecodingContainer<A>();
      v66 = v85;
      v62 = v81;
      static DecodingError.dataCorruptedError<A>(forKey:in:debugDescription:)();
      swift_willThrow();
      return (*(v80 + 8))(v66, v62);
    }

    v76 = v98;
    v61 = v99;
    LOBYTE(v96) = 0;
    v62 = v81;
    v63 = v85;
    v64 = v91;
    v65 = KeyedDecodingContainer.nestedUnkeyedContainer(forKey:)();
    if (v64)
    {

      v66 = v63;
      return (*(v80 + 8))(v66, v62);
    }

    v91 = &v76;
    v96 = v58;
    v97 = v59;
    MEMORY[0x1EEE9AC00](v65);
    v67 = v92;
    *(&v76 - 8) = a4;
    *(&v76 - 7) = v67;
    *(&v76 - 6) = v79;
    *(&v76 - 5) = &v98;
    *(&v76 - 2) = v76;
    *(&v76 - 2) = v61;
    *(&v76 - 1) = v63;
    v68 = v78;
    v69 = TupleTypeMetadata2;
    _withPredicateArchivingState<A>(_:_:)(&v96, closure #1 in KeyedDecodingContainer<>._decode<A, each B>(input:output:predicateConfiguration:)partial apply);

    outlined init with take of Equatable(v68, v86);
    v70 = v93;
    if (a4)
    {
      v71 = v68 + *(v69 + 48);
      v72 = (v83 + 32);
      v73 = a4;
      do
      {
        if (a4 == 1)
        {
          v74 = 0;
        }

        else
        {
          v74 = *v72;
        }

        v75 = *v70;
        v70 += 8;
        *v75 = *&v71[v74];
        v72 += 4;
        --v73;
      }

      while (v73);
    }

    __swift_destroy_boxed_opaque_existential_1(&v98);
    (*(v80 + 8))(v63, v62);
    return (*(v84 + 56))(v86, 0, 1, v69);
  }

  return result;
}

uint64_t UnkeyedDecodingContainer.decodePredicateExpression<A, each B>(input:output:predicateConfiguration:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10)
{
  v82 = a7;
  v77 = a2;
  v72 = a1;
  v81 = a10;
  v75 = a9;
  *&v89 = a9;
  ExtendedExistentialTypeMetadata = swift_getExtendedExistentialTypeMetadata();
  v16 = 8 * a6;
  v86 = a8;
  v79 = (8 * a6);
  if (a6 == 1)
  {
    type metadata accessor for PredicateExpressions.Variable(255, *(a8 & 0xFFFFFFFFFFFFFFFELL), v14, v15);
    TupleTypeMetadata = swift_checkMetadataState();
  }

  else
  {
    MEMORY[0x1EEE9AC00](ExtendedExistentialTypeMetadata);
    if (a6)
    {
      v20 = (v86 & 0xFFFFFFFFFFFFFFFELL);
      v21 = (&v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
      v22 = a6;
      do
      {
        v23 = *v20++;
        *v21++ = type metadata accessor for PredicateExpressions.Variable(255, v23, v18, v19);
        --v22;
      }

      while (v22);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v16 = v79;
  }

  v71 = TupleTypeMetadata;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v73 = (&v68 - v25);
  v84 = &v68;
  if (a6 == 1)
  {
    MetatypeMetadata = swift_getMetatypeMetadata();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v24);
    if (a6)
    {
      v27 = v86 & 0xFFFFFFFFFFFFFFFELL;
      v28 = (&v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
      v29 = a6;
      do
      {
        v27 += 8;
        *v28++ = swift_getMetatypeMetadata();
        --v29;
      }

      while (v29);
    }

    MetatypeMetadata = swift_getTupleTypeMetadata();
  }

  v76 = MetatypeMetadata;
  v85 = &v68;
  MEMORY[0x1EEE9AC00](MetatypeMetadata);
  v31 = &v68 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation29PredicateExpressionCodingKeysOGMd, &_ss22KeyedDecodingContainerVy10Foundation29PredicateExpressionCodingKeysOGMR);
  v78 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v68 - v33;
  v36 = *a5;
  v35 = a5[1];
  v37 = *(a5 + 16);
  lazy protocol witness table accessor for type PredicateExpressionCodingKeys and conformance PredicateExpressionCodingKeys();
  v38 = v83;
  result = dispatch thunk of UnkeyedDecodingContainer.nestedContainer<A>(keyedBy:)();
  if (!v38)
  {
    v95 = v37;
    v69 = v36;
    v82 = v32;
    v83 = v35;
    v81 = v34;
    v70 = &v68;
    *&v80 = 0;
    v40 = v79;
    MEMORY[0x1EEE9AC00](result);
    v41 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
    if (a6)
    {
      memcpy(&v68 - v41, v77, v40);
      v77 = &v68;
      *&v92 = v69;
      *(&v92 + 1) = v83;
      v93 = v95;
      MEMORY[0x1EEE9AC00](v69);
      v42 = &v68 - v41;
      v43 = 0;
      v44 = v86;
      v45 = (v76 + 32);
      v46 = v81;
      do
      {
        if (a6 == 1)
        {
          v47 = 0;
        }

        else
        {
          v47 = *v45;
        }

        v48 = &v31[v47];
        *v48 = *((v44 & 0xFFFFFFFFFFFFFFFELL) + 8 * v43);
        *&v42[8 * v43++] = v48;
        v45 += 4;
      }

      while (a6 != v43);
    }

    else
    {
      v77 = &v68;
      *&v92 = v69;
      *(&v92 + 1) = v83;
      v42 = &v94;
      v93 = v95;
      v44 = v86;
      v46 = v81;
    }

    PredicateCodableConfiguration.allowInputs<each A>(_:)(v42, a6, v44);
    LOBYTE(v87) = 2;
    lazy protocol witness table accessor for type ExpressionStructure and conformance ExpressionStructure();
    v49 = v82;
    v50 = v80;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    if (v50)
    {

      v51 = v78;
      return (*(v51 + 8))(v46, v49);
    }

    v86 = &v68 - v41;
    v83 = &v68;
    v52 = v89;
    v53 = v90;
    v54 = v92;
    v55 = v93;
    v89 = v92;
    LOBYTE(v90) = v93;

    v56 = ExpressionStructure.reconstruct(with:path:)(&v89, MEMORY[0x1E69E7CC0], v52, *(&v52 + 1), v53);
    v79 = *(&v89 + 1);
    *&v80 = v89;

    *&v87 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXpMd, &_sypXpMR);
    v91 = v75;
    swift_getExtendedExistentialTypeMetadata();
    if ((swift_dynamicCast() & 1) == 0)
    {

      LOBYTE(v89) = 2;
      type metadata accessor for DecodingError();
      swift_allocError();
      lazy protocol witness table accessor for type KeyedDecodingContainer<PredicateExpressionCodingKeys> and conformance KeyedDecodingContainer<A>();
      v46 = v81;
      v49 = v82;
      static DecodingError.dataCorruptedError<A>(forKey:in:debugDescription:)();
      swift_willThrow();
      v51 = v78;
      return (*(v51 + 8))(v46, v49);
    }

    v80 = v89;
    v57 = v90;
    LOBYTE(v87) = 0;
    v58 = v81;
    v59 = KeyedDecodingContainer.nestedUnkeyedContainer(forKey:)();
    v79 = &v68;
    v87 = v54;
    v88 = v55;
    MEMORY[0x1EEE9AC00](v59);
    *(&v68 - 8) = a6;
    *(&v68 - 7) = v44;
    *(&v68 - 6) = v75;
    *(&v68 - 5) = &v89;
    *(&v68 - 2) = v80;
    *(&v68 - 2) = v57;
    *(&v68 - 1) = v58;
    v60 = v73;
    v61 = TupleTypeMetadata2;
    _withPredicateArchivingState<A>(_:_:)(&v87, closure #1 in KeyedDecodingContainer<>._decode<A, each B>(input:output:predicateConfiguration:)partial apply);

    outlined init with take of Equatable(v60, v72);
    v62 = v78;
    if (a6)
    {
      v63 = v60 + *(v61 + 48);
      v64 = (v71 + 32);
      v65 = a6;
      do
      {
        if (a6 == 1)
        {
          v66 = 0;
        }

        else
        {
          v66 = *v64;
        }

        v67 = v86;
        **v86 = *&v63[v66];
        v64 += 4;
        v86 = v67 + 8;
        --v65;
      }

      while (v65);
    }

    __swift_destroy_boxed_opaque_existential_1(&v89);
    return (*(v62 + 8))(v58, v82);
  }

  return result;
}

uint64_t UnkeyedDecodingContainer.decodePredicateExpressionIfPresent<A, each B>(input:output:predicateConfiguration:)@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X3>, char *a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, void *a6@<X7>, uint64_t a7@<X8>)
{
  v93 = a7;
  *&v105 = a5;
  ExtendedExistentialTypeMetadata = swift_getExtendedExistentialTypeMetadata();
  v95 = (8 * a2);
  v86 = a5;
  v100 = a6;
  v101 = a4;
  v98 = a3;
  if (a2 == 1)
  {
    type metadata accessor for PredicateExpressions.Variable(255, *(a4 & 0xFFFFFFFFFFFFFFFELL), v14, v15);
    TupleTypeMetadata = swift_checkMetadataState();
  }

  else
  {
    MEMORY[0x1EEE9AC00](ExtendedExistentialTypeMetadata);
    if (a2)
    {
      v20 = (v101 & 0xFFFFFFFFFFFFFFFELL);
      v21 = (v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
      v22 = a2;
      do
      {
        v23 = *v20++;
        *v21++ = type metadata accessor for PredicateExpressions.Variable(255, v23, v17, v18);
        --v22;
      }

      while (v22);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v89 = TupleTypeMetadata;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v102 = v81;
  v94 = TupleTypeMetadata2;
  v91 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v85 = (v81 - v25);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation29PredicateExpressionCodingKeysOGMd, &_ss22KeyedDecodingContainerVy10Foundation29PredicateExpressionCodingKeysOGMR);
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v28 = v81 - v27;
  v97 = v81;
  v90 = a2;
  if (a2 == 1)
  {
    MetatypeMetadata = swift_getMetatypeMetadata();
  }

  else
  {
    v92 = v81 - v27;
    MEMORY[0x1EEE9AC00](v26);
    if (a2)
    {
      v31 = v101 & 0xFFFFFFFFFFFFFFFELL;
      v32 = (v81 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
      v33 = a2;
      do
      {
        v31 += 8;
        *v32++ = swift_getMetatypeMetadata();
        --v33;
      }

      while (v33);
    }

    MetatypeMetadata = swift_getTupleTypeMetadata();
    v28 = v92;
  }

  MEMORY[0x1EEE9AC00](MetatypeMetadata);
  v35 = v81 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *a1;
  v36 = a1[1];
  v38 = *(a1 + 16);
  v39 = v96;
  v41 = v40;
  result = dispatch thunk of UnkeyedDecodingContainer.decodeNil()();
  if (!v39)
  {
    *&v82 = v35;
    v83 = v41;
    *&v84 = v37;
    *(&v84 + 1) = v36;
    v96 = v81;
    if (result)
    {
      return (*(v91 + 56))(v93, 1, 1, v94);
    }

    else
    {
      v92 = 0;
      MEMORY[0x1EEE9AC00](result);
      v44 = v81 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
      v45 = v90;
      if (v90)
      {
        v46 = v93 + *(v94 + 48);
        v47 = (v89 + 32);
        v48 = (v81 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
        v49 = v90;
        do
        {
          if (v45 == 1)
          {
            v50 = 0;
          }

          else
          {
            v50 = *v47;
          }

          *v48++ = v46 + v50;
          v47 += 4;
          --v49;
        }

        while (v49);
      }

      lazy protocol witness table accessor for type PredicateExpressionCodingKeys and conformance PredicateExpressionCodingKeys();
      v51 = v92;
      result = dispatch thunk of UnkeyedDecodingContainer.nestedContainer<A>(keyedBy:)();
      if (!v51)
      {
        v92 = v28;
        v99 = v81;
        MEMORY[0x1EEE9AC00](result);
        v53 = (v52 + 15) & 0xFFFFFFFFFFFFFFF0;
        v98 = v81 - v53;
        if (v45)
        {
          memcpy(v81 - v53, v44, v52);
          v100 = v81;
          v108 = v84;
          v109 = v38;
          MEMORY[0x1EEE9AC00](v84);
          v54 = v81 - v53;
          v55 = 0;
          v56 = v101;
          v57 = (v83 + 32);
          v58 = v82;
          do
          {
            if (v45 == 1)
            {
              v59 = 0;
            }

            else
            {
              v59 = *v57;
            }

            v60 = (v58 + v59);
            *v60 = *((v56 & 0xFFFFFFFFFFFFFFFELL) + 8 * v55);
            *&v54[8 * v55++] = v60;
            v57 += 4;
          }

          while (v45 != v55);
        }

        else
        {
          v100 = v81;
          v108 = v84;
          v54 = &v110;
          v109 = v38;
          v56 = v101;
        }

        PredicateCodableConfiguration.allowInputs<each A>(_:)(v54, v45, v56);
        LOBYTE(v103[0]) = 2;
        lazy protocol witness table accessor for type ExpressionStructure and conformance ExpressionStructure();
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v95 = v81;
        v61 = v105;
        v62 = v106;
        v63 = v108;
        v64 = v109;
        v105 = v108;
        LOBYTE(v106) = v109;

        v65 = ExpressionStructure.reconstruct(with:path:)(&v105, MEMORY[0x1E69E7CC0], v61, *(&v61 + 1), v62);
        *&v84 = *(&v63 + 1);
        *(&v84 + 1) = v63;
        LODWORD(v83) = v64;

        v103[0] = v65;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXpMd, &_sypXpMR);
        v66 = v86;
        v107 = v86;
        swift_getExtendedExistentialTypeMetadata();
        if (swift_dynamicCast())
        {
          v82 = v105;
          v67 = v106;
          LOBYTE(v103[0]) = 0;
          v68 = v92;
          KeyedDecodingContainer.nestedUnkeyedContainer(forKey:)();
          v81[1] = v81;
          v103[0] = *(&v84 + 1);
          v103[1] = v84;
          v104 = v83;
          MEMORY[0x1EEE9AC00](v84);
          v71 = v101;
          v81[-8] = v45;
          v81[-7] = v71;
          v81[-6] = v66;
          v81[-5] = &v105;
          *&v81[-4] = v82;
          v81[-2] = v67;
          v81[-1] = v68;
          v72 = v85;
          v73 = v94;
          _withPredicateArchivingState<A>(_:_:)(v103, closure #1 in KeyedDecodingContainer<>._decode<A, each B>(input:output:predicateConfiguration:)partial apply);

          outlined init with take of Equatable(v72, v93);
          v74 = v88;
          v75 = v98;
          if (v45)
          {
            v76 = v72 + *(v73 + 48);
            v77 = (v89 + 32);
            v78 = v45;
            do
            {
              if (v45 == 1)
              {
                v79 = 0;
              }

              else
              {
                v79 = *v77;
              }

              v80 = *v75;
              v75 += 8;
              *v80 = *&v76[v79];
              v77 += 4;
              --v78;
            }

            while (v78);
          }

          __swift_destroy_boxed_opaque_existential_1(&v105);
          (*(v87 + 8))(v68, v74);
          return (*(v91 + 56))(v93, 0, 1, v73);
        }

        else
        {

          LOBYTE(v105) = 2;
          type metadata accessor for DecodingError();
          swift_allocError();
          lazy protocol witness table accessor for type KeyedDecodingContainer<PredicateExpressionCodingKeys> and conformance KeyedDecodingContainer<A>();
          v69 = v92;
          v70 = v88;
          static DecodingError.dataCorruptedError<A>(forKey:in:debugDescription:)();
          swift_willThrow();
          return (*(v87 + 8))(v69, v70);
        }
      }
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KeyedDecodingContainer<PredicateExpressionCodingKeys> and conformance KeyedDecodingContainer<A>()
{
  result = lazy protocol witness table cache variable for type KeyedDecodingContainer<PredicateExpressionCodingKeys> and conformance KeyedDecodingContainer<A>;
  if (!lazy protocol witness table cache variable for type KeyedDecodingContainer<PredicateExpressionCodingKeys> and conformance KeyedDecodingContainer<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss22KeyedDecodingContainerVy10Foundation29PredicateExpressionCodingKeysOGMd, &_ss22KeyedDecodingContainerVy10Foundation29PredicateExpressionCodingKeysOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KeyedDecodingContainer<PredicateExpressionCodingKeys> and conformance KeyedDecodingContainer<A>);
  }

  return result;
}

uint64_t Expression.encode(to:)(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a2 + 16);
  v117 = 8 * v4;
  if (v4 == 1)
  {
    MetatypeMetadata = swift_getMetatypeMetadata();
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    if (v4)
    {
      v8 = *(a2 + 24) & 0xFFFFFFFFFFFFFFFELL;
      v9 = (&v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      v10 = v4;
      do
      {
        v8 += 8;
        *v9++ = swift_getMetatypeMetadata();
        --v10;
      }

      while (v10);
    }

    MetatypeMetadata = swift_getTupleTypeMetadata();
    v3 = a1;
  }

  v99 = MetatypeMetadata;
  MEMORY[0x1EEE9AC00](MetatypeMetadata);
  v12 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation29PredicateExpressionCodingKeysOGMd, &_ss22KeyedEncodingContainerVy10Foundation29PredicateExpressionCodingKeysOGMR);
  v108 = &v98;
  v113 = v13;
  v107 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v18 = &v98 - v17;
  v118 = v4;
  v114 = a2;
  if (v4 == 1)
  {
    TupleTypeMetadata = type metadata accessor for PredicateExpressions.Variable(0, *(*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL), v15, v16);
  }

  else
  {
    v115 = v3;
    MEMORY[0x1EEE9AC00](v14);
    if (v23)
    {
      v24 = (*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL);
      v25 = (&v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
      v26 = v118;
      do
      {
        v27 = *v24++;
        *v25++ = type metadata accessor for PredicateExpressions.Variable(255, v27, v20, v21);
        --v26;
      }

      while (v26);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v3 = v115;
  }

  v106 = &v98;
  v101 = TupleTypeMetadata;
  v110 = *(TupleTypeMetadata - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v29 = &v98 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = &v98;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v98 - v31;
  v104 = &v98;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v98 - v34;
  if (one-time initialization token for predicateArchivingState != -1)
  {
    swift_once();
  }

  v36 = pthread_getspecific(static _ThreadLocal.Key<A>.predicateArchivingState);
  v116 = v18;
  v109 = &v98;
  if (v36)
  {
    LODWORD(v100) = 0;
    v37 = (*v36 + 16);
    v38 = (*v36 + 24);
  }

  else
  {
    if (one-time initialization token for standardConfiguration != -1)
    {
      swift_once();
    }

    v37 = &static PredicateCodableConfiguration.standardConfiguration;
    v38 = &qword_1EA7B0718;
    LODWORD(v100) = byte_1EA7B0720;
  }

  v39 = *v38;
  v112 = *v37;

  v115 = v39;

  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  v40 = v111;
  outlined init with copy of Hashable & Sendable(v111, v125);
  v41 = v126;
  v98 = v127;
  v42 = __swift_project_boxed_opaque_existential_1(v125, v126);
  v102 = &v98;
  v43 = MEMORY[0x1EEE9AC00](v42);
  v45 = (v44 + 15) & 0xFFFFFFFFFFFFFFF0;
  v46 = (&v98 - v45);
  v47 = v40 + *(v114 + 44);
  v48 = v101;
  (*(v110 + 16))(v32, v47, v101, v43);
  v49 = v118;
  if (v118)
  {
    v50 = (v48 + 4);
    v51 = (&v98 - v45);
    v52 = v118;
    do
    {
      if (v49 == 1)
      {
        v53 = 0;
        v54 = v35;
      }

      else
      {
        v53 = *v50;
        v54 = &v35[v53];
      }

      *&v35[v53] = *&v32[v53];
      *v51++ = v54;
      v50 += 4;
      --v52;
    }

    while (v52);
  }

  v110 = v41;
  v111 = v42;
  __swift_mutable_project_boxed_opaque_existential_1(v128, v128[3]);
  lazy protocol witness table accessor for type PredicateExpressionCodingKeys and conformance PredicateExpressionCodingKeys();
  v55 = v118;
  v56 = dispatch thunk of UnkeyedEncodingContainer.nestedContainer<A>(keyedBy:)();
  MEMORY[0x1EEE9AC00](v56);
  v58 = (&v98 - v45);
  v59 = v112;
  v60 = v115;
  if (v55)
  {
    v61 = (v48 + 4);
    v62 = (&v98 - v45);
    v63 = v55;
    do
    {
      if (v55 == 1)
      {
        v64 = 0;
      }

      else
      {
        v64 = *v61;
      }

      v65 = *v46++;
      *&v29[v64] = *v65;
      *v62++ = &v29[v64];
      v61 += 4;
      --v63;
    }

    while (v63);
  }

  v101 = &v98;
  v122 = v59;
  v123 = v60;
  v124 = v100;
  MEMORY[0x1EEE9AC00](v57);
  v67 = &v98 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v110;
  v69 = v114;
  if (v55)
  {
    v70 = (*(v114 + 24) & 0xFFFFFFFFFFFFFFFELL);
    v71 = (v99 + 32);
    v72 = v67;
    v73 = v55;
    do
    {
      if (v55 == 1)
      {
        v74 = 0;
      }

      else
      {
        v74 = *v71;
      }

      v75 = *v70++;
      *&v12[v74] = v75;
      *v72++ = &v12[v74];
      v71 += 4;
      --v73;
    }

    while (v73);
  }

  v76 = *(v69 + 24);

  PredicateCodableConfiguration.allowInputs<each A>(_:)(v67, v55, v76);
  v121 = v68;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v119);
  (*(*(v68 - 8) + 16))(boxed_opaque_existential_0, v111, v68);
  __swift_project_boxed_opaque_existential_1(v119, v121);
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1(v119);
  v80 = v122;
  v79 = v123;
  v81 = v55;
  v82 = v124;
  v119[0] = v122;
  v119[1] = v123;
  v120 = v124;

  v83 = v103;
  v84 = ExpressionStructure.init(_:with:path:)(DynamicType, v119, MEMORY[0x1E69E7CC0]);
  if (v83)
  {

    v87 = v116;
  }

  else
  {
    v100 = v84;
    v103 = v86;
    v114 = v85;
    v117 = v76;
    LOBYTE(v129) = 0;
    v87 = v116;
    v88 = KeyedEncodingContainer.nestedUnkeyedContainer(forKey:)();
    if (v55)
    {
      v89 = (v117 & 0xFFFFFFFFFFFFFFFELL);
      do
      {
        v90 = *v89;
        v129 = **v58;
        __swift_mutable_project_boxed_opaque_existential_1(v119, v121);
        type metadata accessor for PredicateExpressions.Variable(0, v90, v91, v92);
        swift_getWitnessTable();
        v88 = dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
        ++v58;
        ++v89;
        --v81;
      }

      while (v81);
      v80 = v122;
      v79 = v123;
      v82 = v124;
      v87 = v116;
    }

    MEMORY[0x1EEE9AC00](v88);
    v93 = v110;
    *(&v98 - 10) = v118;
    *(&v98 - 9) = v93;
    *(&v98 - 8) = v117;
    v94 = v98;
    *(&v98 - 7) = *(v98 + 8);
    *(&v98 - 6) = *(v94 + 24);
    *(&v98 - 5) = v87;
    v95 = v114;
    *(&v98 - 4) = v100;
    *(&v98 - 3) = v95;
    v96 = v111;
    *(&v98 - 2) = v103;
    *(&v98 - 1) = v96;
    specialized _withPredicateArchivingState<A>(_:_:)(v80, v79, v82, closure #1 in KeyedEncodingContainer<>._encode<A, B>(_:variable:predicateConfiguration:)partial apply);

    __swift_destroy_boxed_opaque_existential_1(v119);
  }

  (*(v107 + 8))(v87, v113);
  __swift_destroy_boxed_opaque_existential_1(v125);
  return __swift_destroy_boxed_opaque_existential_1(v128);
}

uint64_t Expression.encode(to:configuration:)(void *a1, uint64_t a2, uint64_t a3)
{
  v102 = a1;
  v5 = *(a3 + 16);
  v107 = 8 * v5;
  if (v5 == 1)
  {
    MetatypeMetadata = swift_getMetatypeMetadata();
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    if (v5)
    {
      v8 = *(a3 + 24) & 0xFFFFFFFFFFFFFFFELL;
      v9 = (&v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      v10 = v5;
      do
      {
        v8 += 8;
        *v9++ = swift_getMetatypeMetadata();
        --v10;
      }

      while (v10);
    }

    MetatypeMetadata = swift_getTupleTypeMetadata();
  }

  v100 = &v86;
  v88 = MetatypeMetadata;
  MEMORY[0x1EEE9AC00](MetatypeMetadata);
  v12 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation29PredicateExpressionCodingKeysOGMd, &_ss22KeyedEncodingContainerVy10Foundation29PredicateExpressionCodingKeysOGMR);
  v99 = &v86;
  v104 = v13;
  v98 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v103 = &v86 - v17;
  v106 = a3;
  if (v5 == 1)
  {
    TupleTypeMetadata = type metadata accessor for PredicateExpressions.Variable(0, *(*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL), v15, v16);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v14);
    if (v5)
    {
      v22 = (*(v106 + 24) & 0xFFFFFFFFFFFFFFFELL);
      v23 = (&v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
      v24 = v5;
      do
      {
        v25 = *v22++;
        *v23++ = type metadata accessor for PredicateExpressions.Variable(255, v25, v19, v20);
        --v24;
      }

      while (v24);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v105 = TupleTypeMetadata;
  v97 = &v86;
  v89 = *(TupleTypeMetadata - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata - 8);
  v27 = &v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = &v86;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v86 - v29;
  v95 = &v86;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v86 - v32;
  v34 = *(a2 + 8);
  v90 = *a2;
  v91 = v34;
  v120 = *(a2 + 16);
  __swift_project_boxed_opaque_existential_1(v102, v102[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  v35 = v92;
  outlined init with copy of Hashable & Sendable(v92, v115);
  v87 = v117;
  v101 = v116;
  v102 = __swift_project_boxed_opaque_existential_1(v115, v116);
  v94 = &v86;
  v36 = MEMORY[0x1EEE9AC00](v102);
  v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF0;
  v39 = &v86 - v38;
  v40 = v35 + *(v106 + 44);
  v41 = v105;
  (*(v89 + 16))(v30, v40, v105, v36);
  if (v5)
  {
    v42 = (v41 + 4);
    v43 = (&v86 - v38);
    v44 = v5;
    do
    {
      if (v5 == 1)
      {
        v45 = 0;
        v46 = v33;
      }

      else
      {
        v45 = *v42;
        v46 = &v33[v45];
      }

      *&v33[v45] = *&v30[v45];
      *v43++ = v46;
      v42 += 4;
      --v44;
    }

    while (v44);
  }

  __swift_mutable_project_boxed_opaque_existential_1(v118, v118[3]);
  lazy protocol witness table accessor for type PredicateExpressionCodingKeys and conformance PredicateExpressionCodingKeys();
  v47 = v103;
  v48 = dispatch thunk of UnkeyedEncodingContainer.nestedContainer<A>(keyedBy:)();
  MEMORY[0x1EEE9AC00](v48);
  v49 = (&v86 - v38);
  if (v5)
  {
    v50 = 0;
    v51 = (v105 + 4);
    v52 = v91;
    v53 = v90;
    do
    {
      if (v5 == 1)
      {
        v54 = 0;
      }

      else
      {
        v54 = *v51;
      }

      *&v27[v54] = **&v39[8 * v50];
      v49[v50++] = &v27[v54];
      v51 += 4;
    }

    while (v5 != v50);
    v105 = &v86;
    v112 = v53;
    v113 = v52;
    v114 = v120;
    MEMORY[0x1EEE9AC00](v53);
    v57 = &v86 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
    v58 = 0;
    v59 = *(v55 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v61 = (v60 + 32);
    v62 = v102;
    v63 = v101;
    do
    {
      if (v5 == 1)
      {
        v64 = 0;
      }

      else
      {
        v64 = *v61;
      }

      v65 = &v12[v64];
      *v65 = *(v59 + 8 * v58);
      *&v57[8 * v58++] = v65;
      v61 += 4;
    }

    while (v5 != v58);
  }

  else
  {
    v105 = &v86;
    v112 = v90;
    v113 = v91;
    v57 = &v119;
    v114 = v120;
    v55 = v106;
    v62 = v102;
    v63 = v101;
  }

  v66 = *(v55 + 24);

  PredicateCodableConfiguration.allowInputs<each A>(_:)(v57, v5, v66);
  v111 = v63;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v109);
  (*(*(v63 - 8) + 16))(boxed_opaque_existential_0, v62, v63);
  __swift_project_boxed_opaque_existential_1(v109, v111);
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1(v109);
  v69 = v112;
  v109[0] = v112;
  v109[1] = v113;
  v110 = v114;

  v70 = v93;
  v71 = ExpressionStructure.init(_:with:path:)(DynamicType, v109, MEMORY[0x1E69E7CC0]);
  if (v70)
  {
  }

  else
  {
    v106 = v73;
    v107 = v72;
    v93 = v71;
    LOBYTE(v108) = 0;
    v74 = KeyedEncodingContainer.nestedUnkeyedContainer(forKey:)();
    v92 = v66;
    if (v5)
    {
      v75 = (v66 & 0xFFFFFFFFFFFFFFFELL);
      v76 = v5;
      do
      {
        v77 = *v75;
        v108 = **v49;
        __swift_mutable_project_boxed_opaque_existential_1(v109, v111);
        type metadata accessor for PredicateExpressions.Variable(0, v77, v78, v79);
        swift_getWitnessTable();
        v74 = dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
        ++v49;
        ++v75;
        --v76;
      }

      while (v76);
      v69 = v112;
      v47 = v103;
      v62 = v102;
      v63 = v101;
    }

    v80 = v113;
    MEMORY[0x1EEE9AC00](v74);
    *(&v86 - 10) = v5;
    *(&v86 - 9) = v63;
    *(&v86 - 8) = v92;
    v81 = v87;
    *(&v86 - 7) = *(v87 + 8);
    *(&v86 - 6) = *(v81 + 24);
    *(&v86 - 5) = v47;
    v83 = v106;
    v82 = v107;
    *(&v86 - 4) = v93;
    *(&v86 - 3) = v82;
    *(&v86 - 2) = v83;
    *(&v86 - 1) = v62;
    specialized _withPredicateArchivingState<A>(_:_:)(v69, v80, v84, closure #1 in KeyedEncodingContainer<>._encode<A, B>(_:variable:predicateConfiguration:)partial apply);

    __swift_destroy_boxed_opaque_existential_1(v109);
  }

  (*(v98 + 8))(v47, v104);
  __swift_destroy_boxed_opaque_existential_1(v115);
  return __swift_destroy_boxed_opaque_existential_1(v118);
}

uint64_t Expression.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v129 = a1;
  v106 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation29PredicateExpressionCodingKeysOGMd, &_ss22KeyedDecodingContainerVy10Foundation29PredicateExpressionCodingKeysOGMR);
  v112 = *(v8 - 8);
  v113 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v119 = v96 - v10;
  v127 = (8 * a2);
  v128 = a3;
  if (a2 == 1)
  {
    MetatypeMetadata = swift_getMetatypeMetadata();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v9);
    if (a2)
    {
      v13 = v128 & 0xFFFFFFFFFFFFFFFELL;
      v14 = (v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
      v15 = a2;
      do
      {
        v13 += 8;
        *v14++ = swift_getMetatypeMetadata();
        --v15;
      }

      while (v15);
    }

    MetatypeMetadata = swift_getTupleTypeMetadata();
    a3 = v128;
  }

  v110 = MetatypeMetadata;
  MEMORY[0x1EEE9AC00](MetatypeMetadata);
  v17 = v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v96;
  v139[0] = a4;
  ExtendedExistentialTypeMetadata = swift_getExtendedExistentialTypeMetadata();
  v125 = ExtendedExistentialTypeMetadata;
  v118 = a4;
  if (a2 == 1)
  {
    type metadata accessor for PredicateExpressions.Variable(255, *(a3 & 0xFFFFFFFFFFFFFFFELL), v20, v21);
    TupleTypeMetadata = swift_checkMetadataState();
  }

  else
  {
    v117 = v96;
    MEMORY[0x1EEE9AC00](ExtendedExistentialTypeMetadata);
    if (a2)
    {
      v26 = (v128 & 0xFFFFFFFFFFFFFFFELL);
      v27 = (v96 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
      v28 = a2;
      do
      {
        v29 = *v26++;
        *v27++ = type metadata accessor for PredicateExpressions.Variable(255, v29, v23, v24);
        --v28;
      }

      while (v28);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v18 = v117;
    a4 = v118;
    a3 = v128;
  }

  v114 = TupleTypeMetadata;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v105 = v96 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = v96;
  MEMORY[0x1EEE9AC00](v31);
  v107 = v96 - v32;
  v123 = v96;
  MEMORY[0x1EEE9AC00](v33);
  v35 = (v96 - v34);
  v122 = v96;
  MEMORY[0x1EEE9AC00](v36);
  v115 = (v96 - v37);
  v38 = type metadata accessor for Expression(0, a2, a3, a4);
  v121 = v96;
  v103 = *(v38 - 8);
  v104 = v38;
  MEMORY[0x1EEE9AC00](v38);
  v108 = v96 - v39;
  outlined init with copy of Hashable & Sendable(v129, v139);
  if (one-time initialization token for predicateArchivingState != -1)
  {
    swift_once();
  }

  v40 = pthread_getspecific(static _ThreadLocal.Key<A>.predicateArchivingState);
  v126 = v96;
  v109 = v35;
  if (v40)
  {
    LODWORD(v111) = 0;
    v41 = (*v40 + 16);
    v42 = (*v40 + 24);
  }

  else
  {
    if (one-time initialization token for standardConfiguration != -1)
    {
      swift_once();
    }

    v41 = &static PredicateCodableConfiguration.standardConfiguration;
    v42 = &qword_1EA7B0718;
    LODWORD(v111) = byte_1EA7B0720;
  }

  v43 = *v42;
  v44 = *v41;

  __swift_project_boxed_opaque_existential_1(v139, v139[3]);
  v45 = v120;
  v46 = dispatch thunk of Decoder.unkeyedContainer()();
  if (v45)
  {
    __swift_destroy_boxed_opaque_existential_1(v129);

    return __swift_destroy_boxed_opaque_existential_1(v139);
  }

  v120 = v44;
  v101 = v96;
  v102 = v43;
  MEMORY[0x1EEE9AC00](v46);
  v48 = v96 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v49 = v115 + *(TupleTypeMetadata2 + 48);
    v50 = (v114 + 32);
    v51 = (v96 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
    v52 = a2;
    do
    {
      if (a2 == 1)
      {
        v53 = 0;
      }

      else
      {
        v53 = *v50;
      }

      *v51++ = &v49[v53];
      v50 += 4;
      --v52;
    }

    while (v52);
  }

  __swift_mutable_project_boxed_opaque_existential_1(v138, v138[3]);
  lazy protocol witness table accessor for type PredicateExpressionCodingKeys and conformance PredicateExpressionCodingKeys();
  v54 = dispatch thunk of UnkeyedDecodingContainer.nestedContainer<A>(keyedBy:)();
  v100 = v96;
  MEMORY[0x1EEE9AC00](v54);
  v57 = (v56 + 15) & 0xFFFFFFFFFFFFFFF0;
  if (a2)
  {
    v55 = memcpy(v96 - v57, v48, v127);
  }

  v117 = v18;
  v99 = (v96 - v57);
  v127 = v96;
  *&v136 = v120;
  *(&v136 + 1) = v102;
  v137 = v111;
  MEMORY[0x1EEE9AC00](v55);
  v58 = v128;
  if (a2)
  {
    v59 = (v128 & 0xFFFFFFFFFFFFFFFELL);
    v60 = (v110 + 32);
    v61 = (v96 - v57);
    v62 = a2;
    do
    {
      if (a2 == 1)
      {
        v63 = 0;
      }

      else
      {
        v63 = *v60;
      }

      v64 = *v59++;
      *&v17[v63] = v64;
      *v61++ = &v17[v63];
      v60 += 4;
      --v62;
    }

    while (v62);
  }

  PredicateCodableConfiguration.allowInputs<each A>(_:)(v96 - v57, a2, v58);
  LOBYTE(v131[0]) = 2;
  lazy protocol witness table accessor for type ExpressionStructure and conformance ExpressionStructure();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v65 = v134;
  v66 = v135;
  v67 = v136;
  v68 = v137;
  v134 = v136;
  LOBYTE(v135) = v137;

  v69 = ExpressionStructure.reconstruct(with:path:)(&v134, MEMORY[0x1E69E7CC0], v65, *(&v65 + 1), v66);
  v98 = v68;
  v110 = *(&v67 + 1);
  v111 = v67;
  v71 = v69;

  *&v131[0] = v71;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXpMd, &_sypXpMR);
  *&v130 = v118;
  swift_getExtendedExistentialTypeMetadata();
  if ((swift_dynamicCast() & 1) == 0)
  {

    LOBYTE(v134) = 2;
    type metadata accessor for DecodingError();
    swift_allocError();
    lazy protocol witness table accessor for type KeyedDecodingContainer<PredicateExpressionCodingKeys> and conformance KeyedDecodingContainer<A>();
    v75 = v119;
    v76 = v113;
    static DecodingError.dataCorruptedError<A>(forKey:in:debugDescription:)();
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(v129);
    (*(v112 + 8))(v75, v76);
    __swift_destroy_boxed_opaque_existential_1(v138);
    return __swift_destroy_boxed_opaque_existential_1(v139);
  }

  v97 = v134;
  v72 = v135;
  LOBYTE(v131[0]) = 0;
  v73 = v119;
  v74 = KeyedDecodingContainer.nestedUnkeyedContainer(forKey:)();
  v96[1] = v96;
  v132[0] = v111;
  v132[1] = v110;
  v133 = v98;
  MEMORY[0x1EEE9AC00](v74);
  v77 = v128;
  v96[-8] = a2;
  v96[-7] = v77;
  v96[-6] = v118;
  v96[-5] = &v134;
  *&v96[-4] = v97;
  v96[-2] = v72;
  v96[-1] = v73;
  v78 = v109;
  v79 = TupleTypeMetadata2;
  _withPredicateArchivingState<A>(_:_:)(v132, partial apply for closure #1 in KeyedDecodingContainer<>._decode<A, each B>(input:output:predicateConfiguration:));
  v80 = v73;

  outlined init with take of Equatable(v78, v115);
  v81 = v113;
  if (a2)
  {
    v82 = v78 + *(v79 + 48);
    v83 = (v114 + 32);
    v84 = a2;
    do
    {
      if (a2 == 1)
      {
        v85 = 0;
      }

      else
      {
        v85 = *v83;
      }

      v86 = v99;
      **v99 = *&v82[v85];
      v83 += 4;
      v99 = v86 + 1;
      --v84;
    }

    while (v84);
  }

  __swift_destroy_boxed_opaque_existential_1(&v134);
  (*(v112 + 8))(v80, v81);
  v87 = v115;
  v88 = v107;
  outlined init with copy of Hashable & Sendable(v115, v107);
  v89 = *(v79 + 48);
  v90 = v114;
  v91 = *(v114 - 8);
  v128 = *(v91 + 16);
  (v128)(v88 + v89, v87 + v89, v114);
  v139[7] = v118;
  swift_getExtendedExistentialTypeMetadata();
  if ((swift_dynamicCast() & 1) == 0)
  {
    type metadata accessor for DecodingError();
    swift_allocError();
    static DecodingError.dataCorruptedError(in:debugDescription:)();
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v129);
    __swift_destroy_boxed_opaque_existential_1(v87);
    __swift_destroy_boxed_opaque_existential_1(v138);
    return __swift_destroy_boxed_opaque_existential_1(v139);
  }

  __swift_destroy_boxed_opaque_existential_1(v129);
  outlined init with take of Equatable(&v130, v131);
  outlined init with take of Equatable(v131, v108);
  v92 = v105;
  outlined init with copy of Hashable & Sendable(v87, v105);
  (v128)(&v92[*(v79 + 48)], v87 + *(v79 + 48), v90);
  v93 = *(v79 + 48);
  v94 = v104;
  v95 = v108;
  (*(v91 + 32))(v108 + *(v104 + 44), &v92[v93], v90);
  __swift_destroy_boxed_opaque_existential_1(v92);
  __swift_destroy_boxed_opaque_existential_1(v87);
  __swift_destroy_boxed_opaque_existential_1(v138);
  (*(v103 + 32))(v106, v95, v94);
  return __swift_destroy_boxed_opaque_existential_1(v139);
}

uint64_t Expression.init(from:configuration:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v128 = a2;
  v115 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation29PredicateExpressionCodingKeysOGMd, &_ss22KeyedDecodingContainerVy10Foundation29PredicateExpressionCodingKeysOGMR);
  v120 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v103 - v12;
  v14 = 8 * a3;
  v127 = (8 * a3);
  v121 = v11;
  v135 = a5;
  if (a3 == 1)
  {
    v15 = a4;
    MetatypeMetadata = swift_getMetatypeMetadata();
  }

  else
  {
    v15 = a4;
    v17 = a1;
    MEMORY[0x1EEE9AC00](v11);
    v18 = (&v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (a3)
    {
      v19 = v15 & 0xFFFFFFFFFFFFFFFELL;
      v20 = v18;
      v21 = a3;
      do
      {
        v19 += 8;
        *v20++ = swift_getMetatypeMetadata();
        --v21;
      }

      while (v21);
    }

    MetatypeMetadata = swift_getTupleTypeMetadata();
    a1 = v17;
    a5 = v135;
    v14 = v127;
  }

  v126 = v13;
  v118 = MetatypeMetadata;
  MEMORY[0x1EEE9AC00](MetatypeMetadata);
  *&v119 = &v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = &v103;
  v147[0] = a5;
  ExtendedExistentialTypeMetadata = swift_getExtendedExistentialTypeMetadata();
  v26 = ExtendedExistentialTypeMetadata;
  v137 = a1;
  v136 = &v103;
  if (a3 == 1)
  {
    v27 = v15;
    type metadata accessor for PredicateExpressions.Variable(255, *(v15 & 0xFFFFFFFFFFFFFFFELL), v24, v25);
    TupleTypeMetadata = swift_checkMetadataState();
  }

  else
  {
    MEMORY[0x1EEE9AC00](ExtendedExistentialTypeMetadata);
    v31 = (&v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (a3)
    {
      v32 = (v15 & 0xFFFFFFFFFFFFFFFELL);
      v33 = v31;
      v34 = a3;
      do
      {
        v35 = *v32++;
        *v33++ = type metadata accessor for PredicateExpressions.Variable(255, v35, v29, v30);
        --v34;
      }

      while (v34);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    a1 = v137;
    a5 = v135;
    v27 = v15;
  }

  v122 = TupleTypeMetadata;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v114 = &v103 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = &v103;
  MEMORY[0x1EEE9AC00](v37);
  v116 = &v103 - v38;
  v132 = &v103;
  MEMORY[0x1EEE9AC00](v39);
  v117 = (&v103 - v40);
  v131 = &v103;
  MEMORY[0x1EEE9AC00](v41);
  v125 = &v103 - v42;
  v43 = type metadata accessor for Expression(0, a3, v27, a5);
  v130 = &v103;
  v113 = v43;
  v112 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v124 = a3;
  v45 = &v103 - v44;
  v46 = *v128;
  v47 = v128[1];
  LODWORD(v128) = *(v128 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v48 = v129;
  v49 = dispatch thunk of Decoder.unkeyedContainer()();
  if (v48)
  {

LABEL_15:
    v50 = v137;
    return __swift_destroy_boxed_opaque_existential_1(v50);
  }

  v129 = v47;
  v111 = v46;
  v107 = v45;
  v109 = v27;
  v108 = v26;
  v110 = &v103;
  v51 = v127;
  MEMORY[0x1EEE9AC00](v49);
  v52 = v124;
  v53 = v128;
  if (v124)
  {
    v54 = &v125[*(TupleTypeMetadata2 + 48)];
    v55 = (v122 + 32);
    v56 = (&v103 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
    v57 = v124;
    do
    {
      if (v52 == 1)
      {
        v58 = 0;
      }

      else
      {
        v58 = *v55;
      }

      *v56++ = &v54[v58];
      v55 += 4;
      --v57;
    }

    while (v57);
  }

  __swift_mutable_project_boxed_opaque_existential_1(v147, v147[3]);
  lazy protocol witness table accessor for type PredicateExpressionCodingKeys and conformance PredicateExpressionCodingKeys();
  v59 = dispatch thunk of UnkeyedDecodingContainer.nestedContainer<A>(keyedBy:)();
  v105 = &v103;
  MEMORY[0x1EEE9AC00](v59);
  v60 = (v51 + 15) & 0xFFFFFFFFFFFFFFF0;
  v104 = &v103 - v60;
  if (v52)
  {
    v61 = memcpy(&v103 - v60, &v103 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0), v51);
    v106 = &v103;
    *&v145 = v111;
    *(&v145 + 1) = v129;
    v146 = v53;
    MEMORY[0x1EEE9AC00](v61);
    v62 = &v103 - v60;
    v63 = 0;
    v64 = v109;
    v65 = (v118 + 32);
    v66 = v119;
    do
    {
      if (v52 == 1)
      {
        v67 = 0;
      }

      else
      {
        v67 = *v65;
      }

      v68 = (v66 + v67);
      *v68 = *((v64 & 0xFFFFFFFFFFFFFFFELL) + 8 * v63);
      *&v62[8 * v63++] = v68;
      v65 += 4;
    }

    while (v52 != v63);
  }

  else
  {
    v106 = &v103;
    *&v145 = v111;
    *(&v145 + 1) = v129;
    v62 = &v148;
    v146 = v53;
    v64 = v109;
  }

  PredicateCodableConfiguration.allowInputs<each A>(_:)(v62, v52, v64);
  LOBYTE(v140) = 2;
  lazy protocol witness table accessor for type ExpressionStructure and conformance ExpressionStructure();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v69 = v143;
  v70 = v144;
  v71 = v145;
  v72 = v146;
  v143 = v145;
  LOBYTE(v144) = v146;

  v73 = ExpressionStructure.reconstruct(with:path:)(&v143, MEMORY[0x1E69E7CC0], v69, *(&v69 + 1), v70);
  v128 = 0;
  v74 = v73;
  v127 = v71;

  *&v140 = v74;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXpMd, &_sypXpMR);
  *&v139 = v135;
  swift_getExtendedExistentialTypeMetadata();
  if ((swift_dynamicCast() & 1) == 0)
  {

    LOBYTE(v143) = 2;
    type metadata accessor for DecodingError();
    swift_allocError();
    lazy protocol witness table accessor for type KeyedDecodingContainer<PredicateExpressionCodingKeys> and conformance KeyedDecodingContainer<A>();
    v81 = v126;
    v80 = v121;
    static DecodingError.dataCorruptedError<A>(forKey:in:debugDescription:)();
    swift_willThrow();

    goto LABEL_34;
  }

  v119 = v143;
  v75 = v144;
  LOBYTE(v140) = 0;
  v76 = v121;
  v77 = v126;
  v78 = v128;
  v79 = KeyedDecodingContainer.nestedUnkeyedContainer(forKey:)();
  if (v78)
  {

    v80 = v76;
    v81 = v77;
LABEL_34:
    (*(v120 + 8))(v81, v80);
    v82 = v137;
    __swift_destroy_boxed_opaque_existential_1(v147);
    v50 = v82;
    return __swift_destroy_boxed_opaque_existential_1(v50);
  }

  v141[0] = v127;
  v141[1] = *(&v71 + 1);
  v142 = v72;
  MEMORY[0x1EEE9AC00](v79);
  v84 = v109;
  *(&v103 - 8) = v52;
  *(&v103 - 7) = v84;
  *(&v103 - 6) = v135;
  *(&v103 - 5) = &v143;
  *(&v103 - 2) = v119;
  *(&v103 - 2) = v75;
  *(&v103 - 1) = v77;
  v85 = v77;
  v86 = v117;
  v87 = TupleTypeMetadata2;
  _withPredicateArchivingState<A>(_:_:)(v141, closure #1 in KeyedDecodingContainer<>._decode<A, each B>(input:output:predicateConfiguration:)partial apply);
  v128 = 0;

  outlined init with take of Equatable(v86, v125);
  v88 = v116;
  v89 = v104;
  if (v52)
  {
    v90 = v86 + *(v87 + 48);
    v91 = (v122 + 32);
    v92 = v52;
    do
    {
      if (v52 == 1)
      {
        v93 = 0;
      }

      else
      {
        v93 = *v91;
      }

      v94 = *v89++;
      *v94 = *&v90[v93];
      v91 += 4;
      --v92;
    }

    while (v92);
  }

  v127 = &v103;

  __swift_destroy_boxed_opaque_existential_1(&v143);
  (*(v120 + 8))(v85, v76);
  v95 = v87;
  v96 = v125;
  outlined init with copy of Hashable & Sendable(v125, v88);
  v97 = v122;
  v98 = *(v122 - 8);
  v99 = *(v98 + 16);
  v99(v88 + *(v87 + 48), &v96[*(v87 + 48)], v122);
  v138 = v135;
  swift_getExtendedExistentialTypeMetadata();
  if ((swift_dynamicCast() & 1) == 0)
  {
    type metadata accessor for DecodingError();
    swift_allocError();
    static DecodingError.dataCorruptedError(in:debugDescription:)();
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v96);
    __swift_destroy_boxed_opaque_existential_1(v147);
    goto LABEL_15;
  }

  outlined init with take of Equatable(&v139, &v140);
  v100 = v107;
  outlined init with take of Equatable(&v140, v107);
  v101 = v114;
  outlined init with copy of Hashable & Sendable(v96, v114);
  v99(&v101[*(v87 + 48)], &v96[*(v87 + 48)], v97);
  v102 = v113;
  (*(v98 + 32))(v100 + *(v113 + 44), &v101[*(v95 + 48)], v97);
  __swift_destroy_boxed_opaque_existential_1(v101);
  __swift_destroy_boxed_opaque_existential_1(v96);
  __swift_destroy_boxed_opaque_existential_1(v147);
  (*(v112 + 32))(v115, v100, v102);
  return __swift_destroy_boxed_opaque_existential_1(v137);
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySS10Foundation29PredicateCodableConfigurationV13AllowListTypeOG_SSs5NeverOTg5016_s10Foundation29efg35V16debugDescriptionSSvgS2S3key_AC13hiJ15O5valuet_tXEfU_Tf1cn_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v4 = a1;
  v40 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
  v3 = v40;
  v5 = v4 + 64;
  v6 = _HashTable.startBucket.getter();
  v7 = 0;
  v35 = *(v4 + 36);
  v32 = v4 + 72;
  v33 = v2;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v4 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v35 != *(v4 + 36))
    {
      goto LABEL_24;
    }

    v34 = v7;
    v11 = v5;
    v12 = v4;
    v13 = (*(v4 + 48) + 16 * v6);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(v4 + 56) + 16 * v6;
    v17 = *v16;
    LOBYTE(v16) = *(v16 + 8);
    v36[0] = v14;
    v36[1] = v15;
    v36[2] = v17;
    v37 = v16;

    closure #1 in PredicateCodableConfiguration.debugDescription.getter(v36, &v38);
    if (v1)
    {
      goto LABEL_28;
    }

    v19 = v38;
    v18 = v39;
    v40 = v3;
    v21 = *(v3 + 16);
    v20 = *(v3 + 24);
    if (v21 >= v20 >> 1)
    {
      v31 = v39;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
      v18 = v31;
      v3 = v40;
    }

    *(v3 + 16) = v21 + 1;
    v22 = v3 + 16 * v21;
    *(v22 + 32) = v19;
    *(v22 + 40) = v18;
    v8 = 1 << *(v12 + 32);
    if (v6 >= v8)
    {
      goto LABEL_25;
    }

    v23 = *(v11 + 8 * v10);
    if ((v23 & (1 << v6)) == 0)
    {
      goto LABEL_26;
    }

    v4 = v12;
    if (v35 != *(v12 + 36))
    {
      goto LABEL_27;
    }

    v5 = v11;
    v24 = v23 & (-2 << (v6 & 0x3F));
    if (v24)
    {
      v8 = __clz(__rbit64(v24)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v9 = v33;
    }

    else
    {
      v25 = v10 << 6;
      v26 = v10 + 1;
      v9 = v33;
      v27 = (v32 + 8 * v10);
      while (v26 < (v8 + 63) >> 6)
      {
        v29 = *v27++;
        v28 = v29;
        v25 += 64;
        ++v26;
        if (v29)
        {
          outlined consume of Set<Date.ComponentsFormatStyle.Field>.Index._Variant(v6, v35, 0);
          v8 = __clz(__rbit64(v28)) + v25;
          goto LABEL_4;
        }
      }

      outlined consume of Set<Date.ComponentsFormatStyle.Field>.Index._Variant(v6, v35, 0);
    }

LABEL_4:
    v1 = 0;
    v7 = v34 + 1;
    v6 = v8;
    if (v34 + 1 == v9)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:

  __break(1u);
  return result;
}

unint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySS10Foundation29PredicateCodableConfigurationV16AllowListKeyPathOG_SSs5NeverOTg5016_s10Foundation29efg35V16debugDescriptionSSvgS2S3key_AC16hijK16O5valuet_tXEfU0_Tf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v43 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = v43;
  v4 = v3 + 64;
  result = _HashTable.startBucket.getter();
  v6 = result;
  v7 = 0;
  v8 = *(v3 + 36);
  v35 = v3 + 72;
  v38 = v8;
  v39 = v3;
  v36 = v1;
  v37 = v3 + 64;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    if (v8 != *(v3 + 36))
    {
      goto LABEL_26;
    }

    v40 = v7;
    v42 = v2;
    v11 = (*(v3 + 48) + 16 * v6);
    v12 = *v11;
    v13 = v11[1];
    v14 = *(v3 + 56) + 48 * v6;
    v16 = *v14;
    v15 = *(v14 + 8);
    v17 = *(v14 + 16);
    v18 = *(v14 + 24);
    v19 = *(v14 + 32);
    v20 = *(v14 + 40);
    v41 = v12;

    if (v20)
    {
      v10 = v6 >> 6;
      outlined copy of PredicateCodableConfiguration.AllowListKeyPath(v16, v15, v17, v18, v19, 1);
      v21 = String.init(cString:)();
      MEMORY[0x1865CB0E0](v21);

      MEMORY[0x1865CB0E0](46, 0xE100000000000000);
      MEMORY[0x1865CB0E0](v18, v19);
      v22 = 92;
      v23 = 0xE100000000000000;
    }

    else
    {
      outlined copy of PredicateCodableConfiguration.AllowListKeyPath(v16, v15, v17, v18, v19, 0);
      v22 = AnyKeyPath.debugDescription.getter();
      v23 = v24;
    }

    MEMORY[0x1865CB0E0](v22, v23);

    MEMORY[0x1865CB0E0](10272, 0xE200000000000000);
    MEMORY[0x1865CB0E0](v41, v13);
    MEMORY[0x1865CB0E0](41, 0xE100000000000000);

    result = outlined consume of PredicateCodableConfiguration.AllowListKeyPath(v16, v15, v17, v18, v19, v20);
    v2 = v42;
    v26 = *(v42 + 16);
    v25 = *(v42 + 24);
    if (v26 >= v25 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
      v2 = v42;
    }

    *(v2 + 16) = v26 + 1;
    v27 = v2 + 16 * v26;
    *(v27 + 32) = 0;
    *(v27 + 40) = 0xE000000000000000;
    v8 = v38;
    v3 = v39;
    v9 = 1 << *(v39 + 32);
    if (v6 >= v9)
    {
      goto LABEL_27;
    }

    v4 = v37;
    v28 = *(v37 + 8 * v10);
    if ((v28 & (1 << v6)) == 0)
    {
      goto LABEL_28;
    }

    if (v38 != *(v39 + 36))
    {
      goto LABEL_29;
    }

    v29 = v28 & (-2 << (v6 & 0x3F));
    if (v29)
    {
      v9 = __clz(__rbit64(v29)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v30 = v10 << 6;
      v31 = v10 + 1;
      v32 = (v35 + 8 * v10);
      while (v31 < (v9 + 63) >> 6)
      {
        v34 = *v32++;
        v33 = v34;
        v30 += 64;
        ++v31;
        if (v34)
        {
          result = outlined consume of Set<Date.ComponentsFormatStyle.Field>.Index._Variant(v6, v38, 0);
          v9 = __clz(__rbit64(v33)) + v30;
          goto LABEL_4;
        }
      }

      result = outlined consume of Set<Date.ComponentsFormatStyle.Field>.Index._Variant(v6, v38, 0);
    }

LABEL_4:
    v7 = v40 + 1;
    v6 = v9;
    if (v40 + 1 == v36)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PredicateCodableConfiguration.AllowListKeyPath(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((a1[5] & 1) == 0)
  {
    if ((a2[5] & 1) == 0)
    {
      type metadata accessor for AnyKeyPath();
      return MEMORY[0x1865CBE20](v2, v3) & 1;
    }

    return 0;
  }

  if ((a2[5] & 1) == 0 || v2 != v3)
  {
    return 0;
  }

  if (a1[3] == a2[3] && a1[4] == a2[4])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

Foundation::PredicateCodableConfiguration __swiftcall PredicateCodableConfiguration.init()()
{
  v1 = MEMORY[0x1E69E7CC8];
  *v0 = MEMORY[0x1E69E7CC8];
  *(v0 + 8) = v1;
  *(v0 + 16) = 1;
  return result;
}

uint64_t PredicateCodableConfiguration.debugDescription.getter()
{
  v1 = *v0;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySS10Foundation29PredicateCodableConfigurationV13AllowListTypeOG_SSs5NeverOTg5016_s10Foundation29efg35V16debugDescriptionSSvgS2S3key_AC13hiJ15O5valuet_tXEfU_Tf1cn_n(v0[1]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v2 = BidirectionalCollection<>.joined(separator:)();
  v4 = v3;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySS10Foundation29PredicateCodableConfigurationV16AllowListKeyPathOG_SSs5NeverOTg5016_s10Foundation29efg35V16debugDescriptionSSvgS2S3key_AC16hijK16O5valuet_tXEfU0_Tf1cn_n(v1);
  v5 = BidirectionalCollection<>.joined(separator:)();
  v7 = v6;

  _StringGuts.grow(_:)(72);
  MEMORY[0x1865CB0E0](0xD00000000000002DLL, 0x8000000181482D40);
  MEMORY[0x1865CB0E0](v2, v4);

  MEMORY[0x1865CB0E0](0xD000000000000015, 0x8000000181482D70);
  MEMORY[0x1865CB0E0](v5, v7);

  MEMORY[0x1865CB0E0](10589, 0xE200000000000000);
  return 0;
}

uint64_t closure #1 in PredicateCodableConfiguration.debugDescription.getter@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v9 = 0;
  v10 = 0xE000000000000000;
  if (a1[3])
  {
    _StringGuts.grow(_:)(17);

    strcpy(v8, "partial type '");
    HIBYTE(v8[1]) = -18;
    v5 = String.init(cString:)();
  }

  else
  {
    v8[0] = 0x272065707974;
    v8[1] = 0xE600000000000000;
    v5 = _typeName(_:qualified:)();
  }

  MEMORY[0x1865CB0E0](v5);

  MEMORY[0x1865CB0E0](39, 0xE100000000000000);
  MEMORY[0x1865CB0E0](v8[0], v8[1]);

  MEMORY[0x1865CB0E0](10272, 0xE200000000000000);
  MEMORY[0x1865CB0E0](v3, v4);
  result = MEMORY[0x1865CB0E0](41, 0xE100000000000000);
  v7 = v10;
  *a2 = v9;
  a2[1] = v7;
  return result;
}

uint64_t PredicateCodableConfiguration.disallowType(_:)(char *a1)
{
  v2 = a1;
  v62 = *MEMORY[0x1E69E9840];
  v3 = *(v1 + 1);
  v61 = a1;
  v4 = *(v3 + 32);
  v5 = ((1 << v4) + 63) >> 6;
  if ((v4 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (2)
  {
    v52 = v5;
    v55 = v1;
    v56 = &v52;
    MEMORY[0x1EEE9AC00](a1);
    v54 = (&v52 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0));
    bzero(v54, v6);
    v59 = 0;
    v7 = 0;
    v8 = v3 + 64;
    v9 = 1 << *(v3 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v3 + 64);
    v5 = (v9 + 63) >> 6;
    v53 = (v2 + 8);
    v57 = (v2 + 64);
    v58 = v3;
    while (v11)
    {
      v12 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_13:
      v15 = v12 | (v7 << 6);
      v16 = *(v3 + 56) + 16 * v15;
      v17 = *v16;
      if (*(v16 + 8))
      {
        v1 = v2;
        v18 = *v2;
        if (v18 > 0x7FF)
        {

LABEL_21:
          v19 = v57;
          goto LABEL_22;
        }

        v19 = v57;
        if (v18)
        {
          v20 = static Metadata.Kind.objcClassWrapper.getter();
          v21 = *v1 - 512;
          if (v18 - 515 < 2 || v20 == v18)
          {
            v19 = v53;
            if (v21 < 3)
            {
              goto LABEL_22;
            }

            goto LABEL_21;
          }

          v19 = v53;
          if (v21 > 2)
          {

            v3 = v58;
            v2 = v1;
            goto LABEL_23;
          }
        }

LABEL_22:
        v22 = *v19;

        v23 = v22;
        v3 = v58;
        v2 = v1;
        if (v23 != v17)
        {
          goto LABEL_23;
        }
      }

      else if (v17 != v2)
      {
LABEL_23:
        *(v54 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
        if (__OFADD__(v59++, 1))
        {
          __break(1u);
        }
      }
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_54;
      }

      if (v7 >= v5)
      {
        break;
      }

      v14 = *(v8 + 8 * v7);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v11 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    if (!v59)
    {
      v25 = MEMORY[0x1E69E7CC8];
      goto LABEL_32;
    }

    if (v59 == *(v3 + 16))
    {

      v25 = v3;
LABEL_32:
      v1 = v55;
      goto LABEL_33;
    }

    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation29PredicateCodableConfigurationV13AllowListTypeOGMd, &_ss18_DictionaryStorageCySS10Foundation29PredicateCodableConfigurationV13AllowListTypeOGMR);
    v25 = static _DictionaryStorage.allocate(capacity:)();
    v27 = 0;
    v5 = *v54;
    v28 = v25 + 64;
    while (v5)
    {
      v33 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
LABEL_44:
      v36 = 16 * (v33 | (v27 << 6));
      v37 = *(v3 + 56);
      v38 = (*(v3 + 48) + v36);
      v3 = *v38;
      v2 = v38[1];
      v39 = (v37 + v36);
      v40 = *v39;
      v41 = *(v39 + 8);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v1 = &v60;
      v42 = Hasher._finalize()();
      v43 = -1 << *(v25 + 32);
      v44 = v42 & ~v43;
      v45 = v44 >> 6;
      if (((-1 << v44) & ~*(v28 + 8 * (v44 >> 6))) == 0)
      {
        v46 = 0;
        v47 = (63 - v43) >> 6;
        while (++v45 != v47 || (v46 & 1) == 0)
        {
          v48 = v45 == v47;
          if (v45 == v47)
          {
            v45 = 0;
          }

          v46 |= v48;
          v49 = *(v28 + 8 * v45);
          if (v49 != -1)
          {
            v29 = __clz(__rbit64(~v49)) + (v45 << 6);
            goto LABEL_36;
          }
        }

        goto LABEL_55;
      }

      v29 = __clz(__rbit64((-1 << v44) & ~*(v28 + 8 * (v44 >> 6)))) | v44 & 0x7FFFFFFFFFFFFFC0;
LABEL_36:
      *(v28 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
      v30 = 16 * v29;
      v31 = (*(v25 + 48) + v30);
      *v31 = v3;
      v31[1] = v2;
      v32 = *(v25 + 56) + v30;
      *v32 = v40;
      *(v32 + 8) = v41;
      ++*(v25 + 16);
      v3 = v58;
      if (!--v59)
      {
        goto LABEL_32;
      }
    }

    v34 = v27;
    while (1)
    {
      v27 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v27 >= v52)
      {
        goto LABEL_32;
      }

      v35 = v54[v27];
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v5 = (v35 - 1) & v35;
        goto LABEL_44;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v50 = swift_slowAlloc();

  _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySS10Foundation29PredicateCodableConfigurationV13AllowListTypeOG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab24VKXEfU_SS_10Foundation29jkl3V13mnO4OTG5AMxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSALIsgnndzo_Tf1nc_n(v50, v5, v3, partial apply for closure #1 in PredicateCodableConfiguration.disallowType(_:));
  v25 = v51;

  MEMORY[0x1865D2690](v50, -1, -1);
LABEL_33:

  *(v1 + 1) = v25;
  return result;
}

unint64_t PredicateCodableConfiguration.allowPartialType(_:identifier:)(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  if (*a1 - 2048 >= 0xFFFFFFFFFFFFF801)
  {
    v5 = a2;
    v6 = a3;
    result = static Metadata.Kind.objcClassWrapper.getter();
    v9 = result < 0x800 && result == v4;
    v10 = v4 - 515;
    v4 = *a1;
    if (v10 >= 2 && !v9)
    {
      a3 = v6;
      a2 = v5;
      if (v4 - 512 >= 3)
      {
        return result;
      }

      goto LABEL_14;
    }

    a3 = v6;
    a2 = v5;
  }

  if (v4 <= 0x7FF)
  {
LABEL_14:
    v11 = 8;
    if (v4 - 512 < 3)
    {
      v11 = 1;
    }

    goto LABEL_18;
  }

  v11 = 8;
LABEL_18:
  v12 = a1[v11];

  return PredicateCodableConfiguration._allowPartialType(_:identifier:)(v12, a2, a3);
}

unint64_t *PredicateCodableConfiguration.disallowPartialType(_:)(unint64_t *result)
{
  v2 = result;
  v65[9] = *MEMORY[0x1E69E9840];
  v3 = *result;
  if (*result - 2048 >= 0xFFFFFFFFFFFFF801)
  {
    result = static Metadata.Kind.objcClassWrapper.getter();
    v5 = result < 0x800 && result == v3;
    v6 = v5;
    v7 = v3 - 515;
    v3 = *v2;
    if (v7 >= 2 && !v6)
    {
      if ((v3 - 64) >= 3)
      {
        return result;
      }

      goto LABEL_13;
    }
  }

  if (v3 <= 0x7FF)
  {
LABEL_13:
    v4 = 8;
    if ((v3 - 64) < 3)
    {
      v4 = 1;
    }

    goto LABEL_15;
  }

  v4 = 8;
LABEL_15:
  v8 = v60;
  v9 = v2[v4];
  v10 = v1[1];
  MEMORY[0x1EEE9AC00](result);
  v59[2] = v9;
  v12 = *(v10 + 32);
  v13 = ((1 << v12) + 63) >> 6;
  if ((v12 & 0x3Fu) > 0xD)
  {
    goto LABEL_78;
  }

  while (2)
  {
    v60[2] = v8;
    v61 = v1;
    v60[0] = v13;
    v60[1] = v59;
    MEMORY[0x1EEE9AC00](v11);
    v62 = (v59 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0));
    bzero(v62, v14);
    v63 = v10;
    v64 = 0;
    v15 = 0;
    v8 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v13 = v17 & *(v10 + 64);
    v1 = ((v16 + 63) >> 6);
    do
    {
      do
      {
        while (1)
        {
          if (!v13)
          {
            v19 = v15;
            while (1)
            {
              v15 = v19 + 1;
              if (__OFADD__(v19, 1))
              {
                break;
              }

              if (v15 >= v1)
              {
                goto LABEL_49;
              }

              v20 = v8[v15];
              ++v19;
              if (v20)
              {
                v18 = __clz(__rbit64(v20));
                v13 = (v20 - 1) & v20;
                goto LABEL_27;
              }
            }

            __break(1u);
            goto LABEL_76;
          }

          v18 = __clz(__rbit64(v13));
          v13 &= v13 - 1;
LABEL_27:
          v21 = v18 | (v15 << 6);
          v22 = *(v10 + 56) + 16 * v21;
          v23 = *v22;
          if ((*(v22 + 8) & 1) == 0)
          {
            break;
          }

          if (v9 != v23)
          {
            goto LABEL_46;
          }
        }

        v24 = v9;
        v65[3] = MEMORY[0x1E69C6CE8];
        v65[0] = v23;
        __swift_project_boxed_opaque_existential_1(v65, MEMORY[0x1E69C6CE8]);
        DynamicType = swift_getDynamicType();

        __swift_destroy_boxed_opaque_existential_1(v65);
        v26 = *DynamicType;
        if (*DynamicType - 2048 < 0xFFFFFFFFFFFFF801 || ((v27 = static Metadata.Kind.objcClassWrapper.getter(), v27 < 0x800) ? (v28 = v27 == v26) : (v28 = 0), !v28 ? (v29 = 0) : (v29 = 1), (v30 = v26 - 515, v26 = *DynamicType, v30 < 2) || (v29 & 1) != 0))
        {
          if (v26 > 0x7FF)
          {
            goto LABEL_42;
          }
        }

        else if (v26 - 512 >= 3)
        {

          v9 = v24;
          break;
        }

        if (v26 - 512 < 3)
        {
          v31 = 1;
          goto LABEL_43;
        }

LABEL_42:
        v31 = 8;
LABEL_43:
        v32 = DynamicType[v31];

        v9 = v24;
        v10 = v63;
      }

      while (v24 == v32);
LABEL_46:
      *(v62 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    }

    while (!__OFADD__(v64++, 1));
    __break(1u);
LABEL_49:
    if (!v64)
    {
      v34 = MEMORY[0x1E69E7CC8];
      goto LABEL_53;
    }

    if (v64 == *(v10 + 16))
    {

      v34 = v10;
LABEL_53:
      v1 = v61;
      goto LABEL_54;
    }

    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation29PredicateCodableConfigurationV13AllowListTypeOGMd, &_ss18_DictionaryStorageCySS10Foundation29PredicateCodableConfigurationV13AllowListTypeOGMR);
    v34 = static _DictionaryStorage.allocate(capacity:)();
    v35 = 0;
    v36 = v62;
    v13 = *v62;
    v8 = (v34 + 64);
    while (v13)
    {
      v41 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_66:
      v44 = 16 * (v41 | (v35 << 6));
      v45 = (*(v10 + 48) + v44);
      v46 = *v45;
      v9 = v45[1];
      v47 = *(v10 + 56) + v44;
      v48 = *v47;
      LODWORD(v63) = *(v47 + 8);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v1 = v65;
      v49 = Hasher._finalize()();
      v50 = -1 << *(v34 + 32);
      v51 = v49 & ~v50;
      v52 = v51 >> 6;
      if (((-1 << v51) & ~v8[v51 >> 6]) == 0)
      {
        v53 = 0;
        v54 = (63 - v50) >> 6;
        while (++v52 != v54 || (v53 & 1) == 0)
        {
          v55 = v52 == v54;
          if (v52 == v54)
          {
            v52 = 0;
          }

          v53 |= v55;
          v56 = v8[v52];
          if (v56 != -1)
          {
            v37 = __clz(__rbit64(~v56)) + (v52 << 6);
            goto LABEL_58;
          }
        }

        goto LABEL_77;
      }

      v37 = __clz(__rbit64((-1 << v51) & ~v8[v51 >> 6])) | v51 & 0x7FFFFFFFFFFFFFC0;
LABEL_58:
      *(v8 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
      v38 = 16 * v37;
      v39 = (*(v34 + 48) + v38);
      *v39 = v46;
      v39[1] = v9;
      v40 = *(v34 + 56) + v38;
      *v40 = v48;
      *(v40 + 8) = v63;
      ++*(v34 + 16);
      --v64;
      v36 = v62;
      if (!v64)
      {
        goto LABEL_53;
      }
    }

    v42 = v35;
    while (1)
    {
      v35 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if (v35 >= v60[0])
      {
        goto LABEL_53;
      }

      v43 = v36[v35];
      ++v42;
      if (v43)
      {
        v41 = __clz(__rbit64(v43));
        v13 = (v43 - 1) & v43;
        goto LABEL_66;
      }
    }

LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v57 = swift_slowAlloc();

  _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySS10Foundation29PredicateCodableConfigurationV13AllowListTypeOG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab24VKXEfU_SS_10Foundation29jkl3V13mnO4OTG5AMxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSALIsgnndzo_Tf1nc_n(v57, v13, v10, partial apply for closure #1 in PredicateCodableConfiguration.disallowPartialType(_:));
  v34 = v58;

  MEMORY[0x1865D2690](v57, -1, -1);
LABEL_54:

  v1[1] = v34;
  return result;
}

BOOL closure #1 in PredicateCodableConfiguration.disallowPartialType(_:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  if (a2[1])
  {
    v5 = v4 == a3;
  }

  else
  {
    v8[3] = MEMORY[0x1E69C6CE8];
    v8[0] = v4;
    __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x1E69C6CE8]);
    swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_1(v8);
    v6 = Type.partial.getter();
    if (v6)
    {
      v5 = v6 == a3;
    }

    else
    {
      v5 = 0;
    }
  }

  return !v5;
}

uint64_t PredicateCodableConfiguration.disallowKeyPath(_:)(uint64_t a1)
{
  v73 = *MEMORY[0x1E69E9840];
  v68 = a1;
  AnyKeyPath._validateForPredicateUsage(restrictArguments:)(0);
  v62 = v1;
  v3 = *v1;
  v4 = *(*v1 + 32);
  v61[0] = ((1 << v4) + 63) >> 6;
  if ((v4 & 0x3Fu) > 0xD)
  {
    goto LABEL_46;
  }

  while (2)
  {
    v61[1] = v61;
    MEMORY[0x1EEE9AC00](v2);
    v63 = (v61 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0));
    bzero(v63, v5);
    v67 = 0;
    v6 = 0;
    v7 = *(v3 + 64);
    v65 = v3 + 64;
    v8 = 1 << *(v3 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & v7;
    v64 = (v8 + 63) >> 6;
    v69 = v3;
    do
    {
      do
      {
        if (!v10)
        {
          v12 = v6;
          while (1)
          {
            v6 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              break;
            }

            if (v6 >= v64)
            {
              goto LABEL_19;
            }

            v13 = *(v65 + 8 * v6);
            ++v12;
            if (v13)
            {
              v11 = __clz(__rbit64(v13));
              v70 = (v13 - 1) & v13;
              goto LABEL_12;
            }
          }

          __break(1u);
          goto LABEL_44;
        }

        v11 = __clz(__rbit64(v10));
        v70 = (v10 - 1) & v10;
LABEL_12:
        v14 = *(v3 + 56);
        v66 = v11 | (v6 << 6);
        v15 = v14 + 48 * v66;
        v16 = *v15;
        v17 = *(v15 + 8);
        v19 = *(v15 + 16);
        v18 = *(v15 + 24);
        v20 = *(v15 + 32);
        v21 = *(v15 + 40);
        v72 = v68;

        outlined copy of PredicateCodableConfiguration.AllowListKeyPath(v16, v17, v19, v18, v20, v21);
        type metadata accessor for AnyKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_s10AnyKeyPathCXcMd, &_ss8Sendable_s10AnyKeyPathCXcMR);
        swift_dynamicCast();
        if (v21)
        {

          outlined consume of PredicateCodableConfiguration.AllowListKeyPath(v16, v17, v19, v18, v20, 1);
          v3 = v69;
          v10 = v70;
          break;
        }

        v22 = MEMORY[0x1865CBE20](v16, v71);

        outlined consume of PredicateCodableConfiguration.AllowListKeyPath(v16, v17, v19, v18, v20, 0);
        v3 = v69;
        v10 = v70;
      }

      while ((v22 & 1) != 0);
      *(v63 + ((v66 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v66;
    }

    while (!__OFADD__(v67++, 1));
    __break(1u);
LABEL_19:
    if (!v67)
    {
      v24 = MEMORY[0x1E69E7CC8];
      goto LABEL_23;
    }

    if (v67 == *(v3 + 16))
    {

      v24 = v3;
      goto LABEL_23;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation29PredicateCodableConfigurationV16AllowListKeyPathOGMd, &_ss18_DictionaryStorageCySS10Foundation29PredicateCodableConfigurationV16AllowListKeyPathOGMR);
    v24 = static _DictionaryStorage.allocate(capacity:)();
    v26 = 0;
    v27 = v63;
    v28 = *v63;
    v29 = v24 + 64;
    while (v28)
    {
      v34 = v24;
      v35 = __clz(__rbit64(v28));
      v64 = (v28 - 1) & v28;
LABEL_34:
      v38 = v35 | (v26 << 6);
      v39 = *(v3 + 56);
      v40 = (*(v3 + 48) + 16 * v38);
      v41 = v40[1];
      v70 = *v40;
      v42 = v39 + 48 * v38;
      v44 = *v42;
      v43 = *(v42 + 8);
      v46 = *(v42 + 16);
      v45 = *(v42 + 24);
      v3 = *(v42 + 32);
      v47 = *(v42 + 40);
      Hasher.init(_seed:)();

      v65 = v44;
      v66 = v3;
      v48 = v44;
      v49 = v43;
      v50 = v70;
      v68 = v45;
      outlined copy of PredicateCodableConfiguration.AllowListKeyPath(v48, v49, v46, v45, v3, v47);
      String.hash(into:)();
      v51 = Hasher._finalize()();
      v24 = v34;
      v52 = -1 << *(v34 + 32);
      v53 = v51 & ~v52;
      v54 = v53 >> 6;
      if (((-1 << v53) & ~*(v29 + 8 * (v53 >> 6))) == 0)
      {
        v55 = 0;
        v56 = (63 - v52) >> 6;
        while (++v54 != v56 || (v55 & 1) == 0)
        {
          v57 = v54 == v56;
          if (v54 == v56)
          {
            v54 = 0;
          }

          v55 |= v57;
          v58 = *(v29 + 8 * v54);
          if (v58 != -1)
          {
            v30 = __clz(__rbit64(~v58)) + (v54 << 6);
            goto LABEL_26;
          }
        }

        goto LABEL_45;
      }

      v30 = __clz(__rbit64((-1 << v53) & ~*(v29 + 8 * (v53 >> 6)))) | v53 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
      *(v29 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
      v31 = (*(v34 + 48) + 16 * v30);
      *v31 = v50;
      v31[1] = v41;
      v32 = *(v34 + 56) + 48 * v30;
      v28 = v64;
      *v32 = v65;
      *(v32 + 8) = v49;
      v33 = v68;
      v3 = v69;
      *(v32 + 16) = v46;
      *(v32 + 24) = v33;
      *(v32 + 32) = v66;
      *(v32 + 40) = v47;
      ++*(v34 + 16);
      --v67;
      v27 = v63;
      if (!v67)
      {
        goto LABEL_23;
      }
    }

    v36 = v26;
    while (1)
    {
      v26 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v26 >= v61[0])
      {
        goto LABEL_23;
      }

      v37 = v27[v26];
      ++v36;
      if (v37)
      {
        v34 = v24;
        v35 = __clz(__rbit64(v37));
        v64 = (v37 - 1) & v37;
        goto LABEL_34;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v59 = swift_slowAlloc();

  _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySS10Foundation29PredicateCodableConfigurationV16AllowListKeyPathOG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab24VKXEfU_SS_10Foundation29jkl3V16mnoP4OTG5AMxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSALIsgnndzo_Tf1nc_n(v59, v61[0], v3, partial apply for closure #1 in PredicateCodableConfiguration.disallowKeyPath(_:));
  v24 = v60;

  MEMORY[0x1865D2690](v59, -1, -1);
LABEL_23:

  *v62 = v24;
  return result;
}

uint64_t closure #1 in PredicateCodableConfiguration.disallowKeyPath(_:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *(a2 + 40);
  type metadata accessor for AnyKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_s10AnyKeyPathCXcMd, &_ss8Sendable_s10AnyKeyPathCXcMR);
  swift_dynamicCast();
  if (v4)
  {

    v5 = 1;
  }

  else
  {
    v6 = MEMORY[0x1865CBE20](v3);

    v5 = v6 ^ 1;
  }

  return v5 & 1;
}

uint64_t PredicateCodableConfiguration.allowKeyPathsForPropertiesProvided<A>(by:recursive:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  result = (*(a4 + 8))(a3, a4);
  v6 = result;
  v7 = 0;
  v8 = result + 64;
  v9 = 1 << *(result + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(result + 64);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = v7;
LABEL_10:
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v15 = (*(v6 + 48) + 16 * (v14 | (v13 << 6)));
    v16 = *v15;
    v17 = v15[1];

    PredicateCodableConfiguration.allowKeyPath(_:identifier:)(v18, v16, v17);

    if (a2)
    {
      dispatch thunk of static AnyKeyPath._rootAndValueType.getter();
      v20 = v19;
      v21 = swift_conformsToProtocol2();
      if (v21)
      {
        v22 = v20 == 0;
      }

      else
      {
        v22 = 1;
      }

      if (!v22)
      {
        PredicateCodableConfiguration.allowKeyPathsForPropertiesProvided<A>(by:recursive:)(v20, 1, v20, v21);
      }
    }

    v7 = v13;
  }

  while (1)
  {
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return result;
    }

    if (v13 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v13);
    ++v7;
    if (v11)
    {
      goto LABEL_10;
    }
  }
}

uint64_t PredicateCodableConfiguration.disallowKeyPathsForPropertiesProvided<A>(by:recursive:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v84 = a2;
  v103 = *MEMORY[0x1E69E9840];
  v4 = (*(a4 + 8))(a3, a4);
  v5 = 0;
  v81 = 0;
  v7 = v4 + 64;
  v6 = *(v4 + 64);
  v85 = v4;
  v8 = 1 << *(v4 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & v6;
  v11 = (v8 + 63) >> 6;
  v83 = v4 + 64;
  v82 = v11;
  while (v10)
  {
    v12 = v5;
LABEL_11:
    v13 = *(v85 + 56);
    v88 = v12;
    v14 = *(v13 + ((v12 << 9) | (8 * __clz(__rbit64(v10)))));
    swift_retain_n();
    AnyKeyPath._validateForPredicateUsage(restrictArguments:)(0);
    v16 = *v92;
    v17 = *(*v92 + 32);
    v86 = ((1 << v17) + 63) >> 6;
    if ((v17 & 0x3Fu) > 0xD)
    {

      if (!swift_stdlib_isStackAllocationSafe())
      {
        v76 = swift_slowAlloc();

        v77 = v81;
        _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySS10Foundation29PredicateCodableConfigurationV16AllowListKeyPathOG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab24VKXEfU_SS_10Foundation29jkl3V16mnoP4OTG5AMxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSALIsgnndzo_Tf1nc_n(v76, v86, v16, closure #1 in PredicateCodableConfiguration.disallowKeyPath(_:)partial apply);
        v81 = v77;
        if (!v77)
        {
          v37 = v78;

          MEMORY[0x1865D2690](v76, -1, -1);
          goto LABEL_55;
        }

        result = MEMORY[0x1865D2690](v76, -1, -1);
        __break(1u);
        return result;
      }
    }

    v89 = v10;
    v87 = &v80;
    MEMORY[0x1EEE9AC00](v15);
    v93 = (&v80 - ((v18 + 15) & 0x3FFFFFFFFFFFFFF0));
    bzero(v93, v18);
    v97 = 0;
    v98 = v14;
    v19 = 0;
    v20 = *(v16 + 64);
    v95 = v16 + 64;
    v21 = 1 << *(v16 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & v20;
    v94 = (v21 + 63) >> 6;
    v99 = v16;
LABEL_16:
    if (v23)
    {
      v24 = __clz(__rbit64(v23));
      v100 = (v23 - 1) & v23;
      goto LABEL_23;
    }

    v25 = v19;
    while (1)
    {
      v19 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      if (v19 >= v94)
      {
        break;
      }

      v26 = *(v95 + 8 * v19);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v100 = (v26 - 1) & v26;
LABEL_23:
        v27 = *(v16 + 56);
        v96 = v24 | (v19 << 6);
        v28 = v27 + 48 * v96;
        v29 = *v28;
        v30 = *(v28 + 8);
        v31 = *(v28 + 16);
        v32 = *(v28 + 24);
        v33 = *(v28 + 32);
        v34 = *(v28 + 40);
        v102 = v14;

        outlined copy of PredicateCodableConfiguration.AllowListKeyPath(v29, v30, v31, v32, v33, v34);
        type metadata accessor for AnyKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_s10AnyKeyPathCXcMd, &_ss8Sendable_s10AnyKeyPathCXcMR);
        swift_dynamicCast();
        if (v34)
        {

          outlined consume of PredicateCodableConfiguration.AllowListKeyPath(v29, v30, v31, v32, v33, 1);
          v14 = v98;
          v16 = v99;
          v23 = v100;
          goto LABEL_27;
        }

        v35 = MEMORY[0x1865CBE20](v29, v101);

        outlined consume of PredicateCodableConfiguration.AllowListKeyPath(v29, v30, v31, v32, v33, 0);
        v14 = v98;
        v16 = v99;
        v23 = v100;
        if ((v35 & 1) == 0)
        {
LABEL_27:
          *(v93 + ((v96 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v96;
          if (!__OFADD__(v97++, 1))
          {
            goto LABEL_16;
          }

LABEL_70:
          __break(1u);
        }

        goto LABEL_16;
      }
    }

    if (v97)
    {
      if (v97 == *(v16 + 16))
      {

        v37 = v16;
        goto LABEL_34;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation29PredicateCodableConfigurationV16AllowListKeyPathOGMd, &_ss18_DictionaryStorageCySS10Foundation29PredicateCodableConfigurationV16AllowListKeyPathOGMR);
      v37 = static _DictionaryStorage.allocate(capacity:)();
      v38 = 0;
      v39 = v93;
      v40 = *v93;
      v41 = v37 + 64;
      do
      {
        if (v40)
        {
          v47 = __clz(__rbit64(v40));
          v90 = (v40 - 1) & v40;
        }

        else
        {
          v48 = v38;
          v10 = v89;
          do
          {
            v38 = v48 + 1;
            if (__OFADD__(v48, 1))
            {
              goto LABEL_67;
            }

            if (v38 >= v86)
            {
              goto LABEL_55;
            }

            v49 = v39[v38];
            ++v48;
          }

          while (!v49);
          v47 = __clz(__rbit64(v49));
          v90 = (v49 - 1) & v49;
        }

        v50 = v47 | (v38 << 6);
        v51 = *(v16 + 56);
        v52 = (*(v16 + 48) + 16 * v50);
        v53 = v52[1];
        v100 = *v52;
        v54 = v51 + 48 * v50;
        v56 = *v54;
        v55 = *(v54 + 8);
        v58 = *(v54 + 16);
        v57 = *(v54 + 24);
        v59 = *(v54 + 32);
        v60 = *(v54 + 40);
        Hasher.init(_seed:)();

        v91 = v56;
        v95 = v57;
        v96 = v55;
        v94 = v58;
        v61 = v57;
        v62 = v59;
        v63 = v100;
        outlined copy of PredicateCodableConfiguration.AllowListKeyPath(v56, v55, v58, v61, v62, v60);
        String.hash(into:)();
        v64 = Hasher._finalize()();
        v65 = -1 << *(v37 + 32);
        v66 = v64 & ~v65;
        v67 = v66 >> 6;
        if (((-1 << v66) & ~*(v41 + 8 * (v66 >> 6))) != 0)
        {
          v42 = __clz(__rbit64((-1 << v66) & ~*(v41 + 8 * (v66 >> 6)))) | v66 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v68 = 0;
          v69 = (63 - v65) >> 6;
          do
          {
            if (++v67 == v69 && (v68 & 1) != 0)
            {
              goto LABEL_69;
            }

            v70 = v67 == v69;
            if (v67 == v69)
            {
              v67 = 0;
            }

            v68 |= v70;
            v71 = *(v41 + 8 * v67);
          }

          while (v71 == -1);
          v42 = __clz(__rbit64(~v71)) + (v67 << 6);
        }

        *(v41 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v42;
        v43 = (*(v37 + 48) + 16 * v42);
        *v43 = v63;
        v43[1] = v53;
        v44 = *(v37 + 56) + 48 * v42;
        v45 = v96;
        *v44 = v91;
        *(v44 + 8) = v45;
        v46 = v95;
        *(v44 + 16) = v94;
        *(v44 + 24) = v46;
        *(v44 + 32) = v62;
        *(v44 + 40) = v60;
        ++*(v37 + 16);
        v75 = v97-- == 1;
        v16 = v99;
        v39 = v93;
        v40 = v90;
      }

      while (!v75);
      v10 = v89;
    }

    else
    {
      v37 = MEMORY[0x1E69E7CC8];
LABEL_34:
      v10 = v89;
    }

LABEL_55:

    v10 &= v10 - 1;

    *v92 = v37;
    if (v84)
    {
      dispatch thunk of static AnyKeyPath._rootAndValueType.getter();
      v73 = v72;
      v74 = swift_conformsToProtocol2();
      if (v74)
      {
        v75 = v73 == 0;
      }

      else
      {
        v75 = 1;
      }

      if (!v75)
      {
        PredicateCodableConfiguration.disallowKeyPathsForPropertiesProvided<A>(by:recursive:)(v73, 1, v73, v74);
      }
    }

    v5 = v88;
    v7 = v83;
    v11 = v82;
  }

  while (1)
  {
    v12 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_68;
    }

    if (v12 >= v11)
    {
    }

    v10 = *(v7 + 8 * v12);
    ++v5;
    if (v10)
    {
      goto LABEL_11;
    }
  }
}

Swift::Void __swiftcall PredicateCodableConfiguration.allow(_:)(Foundation::PredicateCodableConfiguration a1)
{
  v1 = *(a1.allowedKeyPaths._rawValue + 1);
  v30 = *a1.allowedKeyPaths._rawValue;
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  while (v4)
  {
LABEL_11:
    v8 = (v6 << 10) | (16 * __clz(__rbit64(v4)));
    v9 = (*(v1 + 48) + v8);
    v11 = *v9;
    v10 = v9[1];
    v12 = *(v1 + 56) + v8;
    v13 = *v12;
    if (*(v12 + 8))
    {

      PredicateCodableConfiguration._allowPartialType(_:identifier:)(v13, v11, v10);
    }

    else
    {

      PredicateCodableConfiguration._allowType(_:identifier:preferNewIdentifier:)(v13, v11, v10, 1);
    }

    v4 &= v4 - 1;
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    if (v7 >= v5)
    {
      break;
    }

    v4 = *(v1 + 64 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      goto LABEL_11;
    }
  }

  v14 = 1 << *(v30 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v30 + 64);
  v17 = (v14 + 63) >> 6;

  v18 = 0;
  if (v16)
  {
    goto LABEL_18;
  }

LABEL_19:
  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v17)
    {

      return;
    }

    v16 = *(v30 + 64 + 8 * v19);
    ++v18;
    if (v16)
    {
      while (1)
      {
        v20 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
        v21 = v20 | (v19 << 6);
        v22 = (*(v30 + 48) + 16 * v21);
        v23 = v22[1];
        v31 = *v22;
        v24 = *(v30 + 56) + 48 * v21;
        v25 = *v24;
        v26 = *(v24 + 8);
        v28 = *(v24 + 16);
        v27 = *(v24 + 24);
        v29 = *(v24 + 32);
        if (*(v24 + 40))
        {

          outlined copy of PredicateCodableConfiguration.AllowListKeyPath(v25, v26, v28, v27, v29, 1);

          PredicateCodableConfiguration._allowPartialKeyPath(_:identifier:name:constructor:)(v25, v31, v23, v27, v29, v26, v28);

          outlined consume of PredicateCodableConfiguration.AllowListKeyPath(v25, v26, v28, v27, v29, 1);

          v18 = v19;
          if (!v16)
          {
            goto LABEL_19;
          }
        }

        else
        {

          outlined copy of PredicateCodableConfiguration.AllowListKeyPath(v25, v26, v28, v27, v29, 0);
          PredicateCodableConfiguration.allowKeyPath(_:identifier:)(v25, v31, v23);

          outlined consume of PredicateCodableConfiguration.AllowListKeyPath(v25, v26, v28, v27, v29, 0);
          v18 = v19;
          if (!v16)
          {
            goto LABEL_19;
          }
        }

LABEL_18:
        v19 = v18;
      }
    }
  }

LABEL_29:
  __break(1u);
}

uint64_t PredicateCodableConfiguration._keyPath(for:rootType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  if (*(v4 + 16))
  {
    v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if (v6)
    {
      v7 = *(v4 + 56) + 48 * v5;
      if ((*(v7 + 40) & 1) == 0)
      {
      }

      v9 = *(v7 + 8);
      v8 = *(v7 + 16);
      v11 = *(v7 + 24);
      v10 = *(v7 + 32);
      v12 = *v7;
      outlined copy of PredicateCodableConfiguration.AllowListKeyPath(*v7, v9, v8, v11, v10, 1);

      v13 = Type.partial.getter();
      if (v13)
      {
        if (v12 == v13)
        {
          v14 = Type.genericArguments.getter();
          v15 = v9(v14);
          if (v15)
          {
            v16 = v15;

            AnyKeyPath._validateForPredicateUsage(restrictArguments:)(0);

            outlined consume of PredicateCodableConfiguration.AllowListKeyPath(v12, v9, v8, v11, v10, 1);
            return v16;
          }
        }
      }

      outlined consume of PredicateCodableConfiguration.AllowListKeyPath(v12, v9, v8, v11, v10, 1);
    }
  }

  return 0;
}

uint64_t key path getter for Collection.first : Substring@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  if ((a1[1] ^ *a1) >= 0x4000)
  {
    result = Substring.subscript.getter();
  }

  else
  {
    result = 0;
    v4 = 0;
  }

  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path getter for BidirectionalCollection.last : Substring@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  if ((a1[1] ^ *a1) >= 0x4000)
  {
    Substring.index(before:)();
    result = Substring.subscript.getter();
  }

  else
  {
    result = 0;
    v4 = 0;
  }

  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path getter for Collection.isEmpty : <A>[A]@<X0>(_BYTE *a3@<X8>)
{
  type metadata accessor for Array();
  swift_getWitnessTable();
  result = Collection.isEmpty.getter();
  *a3 = result & 1;
  return result;
}

uint64_t closure #1 in closure #1 in variable initialization expression of static PredicateCodableConfiguration.standardConfiguration(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 1)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1EEE9AC00](result);
    return swift_getKeyPath();
  }

  return result;
}

uint64_t key path getter for Collection.first : <A>[A](uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  return a5(v6, WitnessTable);
}

uint64_t *closure #5 in closure #1 in variable initialization expression of static PredicateCodableConfiguration.standardConfiguration(uint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    if (a2 < 1)
    {
      __break(1u);
      return result;
    }

    v3 = *result;
    v4 = swift_conformsToProtocol2();
    if (v4)
    {
      v5 = v3 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      MEMORY[0x1EEE9AC00](v4);
      return swift_getKeyPath();
    }
  }

  return 0;
}

uint64_t *closure #7 in closure #1 in variable initialization expression of static PredicateCodableConfiguration.standardConfiguration(uint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2 == 2)
  {
    v3 = *result;
    v4 = swift_conformsToProtocol2();
    if (v4)
    {
      v5 = v3 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }

    else
    {
      MEMORY[0x1EEE9AC00](v4);
      return swift_getKeyPath();
    }
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t static PredicateCodableConfiguration.standardConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for standardConfiguration != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = qword_1EA7B0718;
  v2 = byte_1EA7B0720;
  *a1 = static PredicateCodableConfiguration.standardConfiguration;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
}

BOOL partial apply for closure #1 in PredicateCodableConfiguration.disallowType(_:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (a2[1])
  {
    v4 = Type.partial.getter();
    if (v4)
    {
      v5 = v4 == v3;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = *(v2 + 16) == v3;
  }

  return !v5;
}

void _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySS10Foundation29PredicateCodableConfigurationV13AllowListTypeOG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab24VKXEfU_SS_10Foundation29jkl3V13mnO4OTG5AMxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSALIsgnndzo_Tf1nc_n(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t *))
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      bzero(a1, 8 * a2);
    }

    v54 = a2;
    v55 = a1;
    v56 = 0;
    v8 = 0;
    v9 = a3 + 64;
    v10 = 1 << *(a3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a3 + 64);
    v13 = (v10 + 63) >> 6;
    v63 = a3;
    while (1)
    {
      if (!v12)
      {
        v15 = v8;
        v16 = v56;
        while (1)
        {
          v8 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          if (v8 >= v13)
          {
            goto LABEL_19;
          }

          v17 = *(v9 + 8 * v8);
          ++v15;
          if (v17)
          {
            v14 = __clz(__rbit64(v17));
            v12 = (v17 - 1) & v17;
            goto LABEL_14;
          }
        }

        __break(1u);
        goto LABEL_49;
      }

      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v16 = v14 | (v8 << 6);
      v18 = *(a3 + 56);
      v19 = (*(a3 + 48) + 16 * v16);
      v20 = v19[1];
      v60[0] = *v19;
      v60[1] = v20;
      v21 = (v18 + 16 * v16);
      v22 = *v21;
      LOBYTE(v21) = *(v21 + 8);
      v61 = v22;
      v62 = v21;

      v23 = a4(v60, &v61);
      if (v4)
      {

        return;
      }

      v24 = v23;

      a3 = v63;
      if (v24)
      {
        *(v55 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        v25 = __OFADD__(v56++, 1);
        if (v25)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_19:
    if (!v16)
    {
LABEL_47:

      return;
    }

    if (v16 == *(a3 + 16))
    {
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation29PredicateCodableConfigurationV13AllowListTypeOGMd, &_ss18_DictionaryStorageCySS10Foundation29PredicateCodableConfigurationV13AllowListTypeOGMR);
    v26 = static _DictionaryStorage.allocate(capacity:)();
    v27 = v26;
    v28 = v54;
    if (v54)
    {
      v29 = v55;
      v30 = *v55;
    }

    else
    {
      v30 = 0;
      v29 = v55;
    }

    v31 = 0;
    v32 = v26 + 64;
    while (v30)
    {
      v33 = __clz(__rbit64(v30));
      v57 = (v30 - 1) & v30;
LABEL_35:
      v36 = 16 * (v33 | (v31 << 6));
      v37 = (*(v63 + 48) + v36);
      v38 = *v37;
      v39 = v37[1];
      v40 = *(v63 + 56) + v36;
      v59 = *v40;
      v41 = *(v40 + 8);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v42 = Hasher._finalize()();
      v43 = -1 << *(v27 + 32);
      v44 = v42 & ~v43;
      v45 = v44 >> 6;
      if (((-1 << v44) & ~*(v32 + 8 * (v44 >> 6))) == 0)
      {
        v47 = 0;
        v48 = (63 - v43) >> 6;
        while (++v45 != v48 || (v47 & 1) == 0)
        {
          v49 = v45 == v48;
          if (v45 == v48)
          {
            v45 = 0;
          }

          v47 |= v49;
          v50 = *(v32 + 8 * v45);
          if (v50 != -1)
          {
            v46 = __clz(__rbit64(~v50)) + (v45 << 6);
            goto LABEL_45;
          }
        }

        goto LABEL_50;
      }

      v46 = __clz(__rbit64((-1 << v44) & ~*(v32 + 8 * (v44 >> 6)))) | v44 & 0x7FFFFFFFFFFFFFC0;
LABEL_45:
      *(v32 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
      v51 = 16 * v46;
      v52 = (*(v27 + 48) + v51);
      *v52 = v38;
      v52[1] = v39;
      v53 = *(v27 + 56) + v51;
      *v53 = v59;
      *(v53 + 8) = v41;
      ++*(v27 + 16);
      v25 = __OFSUB__(v16--, 1);
      if (v25)
      {
        goto LABEL_52;
      }

      v28 = v54;
      v29 = v55;
      v30 = v57;
      if (!v16)
      {
        goto LABEL_47;
      }
    }

    v34 = v31;
    while (1)
    {
      v31 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v31 >= v28)
      {
        goto LABEL_47;
      }

      v35 = v29[v31];
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v57 = (v35 - 1) & v35;
        goto LABEL_35;
      }
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
  }

  __break(1u);
LABEL_52:
  __break(1u);
}

void _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySS10Foundation29PredicateCodableConfigurationV16AllowListKeyPathOG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab24VKXEfU_SS_10Foundation29jkl3V16mnoP4OTG5AMxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSALIsgnndzo_Tf1nc_n(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, void *))
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      bzero(a1, 8 * a2);
    }

    v59 = a2;
    v66 = 0;
    v6 = 0;
    v61 = a3 + 64;
    v7 = 1 << *(a3 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(a3 + 64);
    v60 = (v7 + 63) >> 6;
    v69 = a3;
    while (1)
    {
      if (!v9)
      {
        v11 = v6;
        while (1)
        {
          v6 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v6 >= v60)
          {
            goto LABEL_19;
          }

          v12 = *(v61 + 8 * v6);
          ++v11;
          if (v12)
          {
            v10 = __clz(__rbit64(v12));
            v70 = (v12 - 1) & v12;
            goto LABEL_14;
          }
        }

        __break(1u);
        goto LABEL_50;
      }

      v10 = __clz(__rbit64(v9));
      v70 = (v9 - 1) & v9;
LABEL_14:
      v13 = v10 | (v6 << 6);
      v14 = *(a3 + 56);
      v15 = (*(a3 + 48) + 16 * v13);
      v16 = v15[1];
      v75[0] = *v15;
      v75[1] = v16;
      v64 = v13;
      v17 = v14 + 48 * v13;
      v18 = *(v17 + 8);
      v21 = *(v17 + 16);
      v20 = *(v17 + 24);
      v22 = *(v17 + 32);
      v23 = *(v17 + 40);
      v73[0] = *v17;
      v19 = v73[0];
      v73[1] = v18;
      v73[2] = v21;
      v73[3] = v20;
      v73[4] = v22;
      v71 = v22;
      v74 = v23;

      outlined copy of PredicateCodableConfiguration.AllowListKeyPath(v19, v18, v21, v20, v22, v23);
      v24 = v76;
      v25 = a4(v75, v73);
      outlined consume of PredicateCodableConfiguration.AllowListKeyPath(v19, v18, v21, v20, v71, v23);
      v76 = v24;
      if (v24)
      {

        return;
      }

      a3 = v69;
      v9 = v70;
      if (v25)
      {
        *(a1 + ((v64 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v64;
        v26 = __OFADD__(v66++, 1);
        if (v26)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_19:
    if (!v66)
    {
LABEL_47:

      return;
    }

    if (v66 == *(a3 + 16))
    {
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation29PredicateCodableConfigurationV16AllowListKeyPathOGMd, &_ss18_DictionaryStorageCySS10Foundation29PredicateCodableConfigurationV16AllowListKeyPathOGMR);
    v27 = static _DictionaryStorage.allocate(capacity:)();
    v28 = v59;
    if (v59)
    {
      v29 = a1;
      v30 = *a1;
    }

    else
    {
      v30 = 0;
      v29 = a1;
    }

    v31 = 0;
    v32 = v27 + 64;
    v33 = v66;
    v62 = v27;
    while (v30)
    {
      v34 = __clz(__rbit64(v30));
      v65 = (v30 - 1) & v30;
      v67 = v33;
LABEL_35:
      v37 = v34 | (v31 << 6);
      v38 = (*(a3 + 48) + 16 * v37);
      v39 = v38[1];
      v72 = *v38;
      v40 = *(a3 + 56) + 48 * v37;
      v41 = *v40;
      v42 = *(v40 + 8);
      v43 = *(v40 + 16);
      v44 = *(v40 + 24);
      v45 = *(v40 + 32);
      v46 = *(v40 + 40);
      Hasher.init(_seed:)();

      outlined copy of PredicateCodableConfiguration.AllowListKeyPath(v41, v42, v43, v44, v45, v46);
      String.hash(into:)();
      v47 = Hasher._finalize()();
      v48 = -1 << *(v62 + 32);
      v49 = v47 & ~v48;
      v50 = v49 >> 6;
      if (((-1 << v49) & ~*(v32 + 8 * (v49 >> 6))) == 0)
      {
        v53 = 0;
        v54 = (63 - v48) >> 6;
        v29 = a1;
        v52 = v67;
        while (++v50 != v54 || (v53 & 1) == 0)
        {
          v55 = v50 == v54;
          if (v50 == v54)
          {
            v50 = 0;
          }

          v53 |= v55;
          v56 = *(v32 + 8 * v50);
          if (v56 != -1)
          {
            v51 = __clz(__rbit64(~v56)) + (v50 << 6);
            goto LABEL_45;
          }
        }

        goto LABEL_51;
      }

      v51 = __clz(__rbit64((-1 << v49) & ~*(v32 + 8 * (v49 >> 6)))) | v49 & 0x7FFFFFFFFFFFFFC0;
      v29 = a1;
      v52 = v67;
LABEL_45:
      *(v32 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
      v57 = (*(v62 + 48) + 16 * v51);
      *v57 = v72;
      v57[1] = v39;
      v58 = *(v62 + 56) + 48 * v51;
      *v58 = v41;
      *(v58 + 8) = v42;
      *(v58 + 16) = v43;
      *(v58 + 24) = v44;
      *(v58 + 32) = v45;
      *(v58 + 40) = v46;
      ++*(v62 + 16);
      v26 = __OFSUB__(v52, 1);
      v33 = v52 - 1;
      if (v26)
      {
        goto LABEL_53;
      }

      a3 = v69;
      v28 = v59;
      v30 = v65;
      if (!v33)
      {
        goto LABEL_47;
      }
    }

    v35 = v31;
    while (1)
    {
      v31 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v31 >= v28)
      {
        goto LABEL_47;
      }

      v36 = v29[v31];
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v65 = (v36 - 1) & v36;
        v67 = v33;
        goto LABEL_35;
      }
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
  }

  __break(1u);
LABEL_53:
  __break(1u);
}