uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t Prompt.Attachment.description.getter()
{
  _StringGuts.grow(_:)(41);

  strcpy(v4, "<<attachment:");
  v0 = Prompt.AttachmentContent.description.getter();
  MEMORY[0x1AC57C120](v0);

  MEMORY[0x1AC57C120](0x6F697469736F7020, 0xEA00000000003A6ELL);
  type metadata accessor for Prompt.Attachment(0);
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1AC57C120](v1);

  MEMORY[0x1AC57C120](0x7469726F69727020, 0xEA00000000003A79);
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1AC57C120](v2);

  MEMORY[0x1AC57C120](15934, 0xE200000000000000);
  return v4[0];
}

uint64_t Prompt.SpecialToken.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Prompt.SpecialToken.locale.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Prompt.SpecialToken(0) + 20);

  return outlined assign with take of Locale?(a1, v3);
}

uint64_t Prompt.SpecialToken.instance.getter()
{
  v1 = *(v0 + *(type metadata accessor for Prompt.SpecialToken(0) + 24));

  return v1;
}

uint64_t Prompt.SpecialToken.annotationOnly.setter(char a1)
{
  result = type metadata accessor for Prompt.SpecialToken(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t Prompt.SpecialToken.init(identifier:locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for Prompt.SpecialToken(0);
  v9 = v8[5];
  v10 = type metadata accessor for Locale();
  (*(*(v10 - 8) + 56))(&a4[v9], 1, 1, v10);
  *a4 = a1;
  *(a4 + 1) = a2;
  v11 = &a4[v8[6]];
  *v11 = 0;
  *(v11 + 1) = 0;
  result = outlined assign with take of Locale?(a3, &a4[v9]);
  a4[v8[7]] = 0;
  return result;
}

uint64_t Prompt.SpecialToken.init(identifier:instance:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = type metadata accessor for Prompt.SpecialToken(0);
  v11 = v10[5];
  v12 = type metadata accessor for Locale();
  result = (*(*(v12 - 8) + 56))(&a5[v11], 1, 1, v12);
  *a5 = a1;
  *(a5 + 1) = a2;
  v14 = &a5[v10[6]];
  *v14 = a3;
  *(v14 + 1) = a4;
  a5[v10[7]] = 0;
  return result;
}

uint64_t Prompt.SpecialToken.init(identifier:instance:locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v12 = type metadata accessor for Prompt.SpecialToken(0);
  v13 = v12[5];
  v14 = type metadata accessor for Locale();
  (*(*(v14 - 8) + 56))(&a6[v13], 1, 1, v14);
  *a6 = a1;
  *(a6 + 1) = a2;
  v15 = &a6[v12[6]];
  *v15 = a3;
  *(v15 + 1) = a4;
  result = outlined assign with take of Locale?(a5, &a6[v13]);
  a6[v12[7]] = 0;
  return result;
}

uint64_t Prompt.SpecialToken.description.getter()
{
  v1 = type metadata accessor for Locale();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19 - v6;
  v8 = type metadata accessor for Prompt.SpecialToken(0);
  v9 = (v0 + v8[6]);
  v10 = v9[1];
  if (v10)
  {
    v11 = *v9;
    v21 = 45;
    v22 = 0xE100000000000000;

    MEMORY[0x1AC57C120](v11, v10);

    v12 = v22;
    v20 = v21;
  }

  else
  {
    v20 = 0;
    v12 = 0xE000000000000000;
  }

  outlined init with copy of (String, Any)(v0 + v8[5], v7, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    v13 = 0;
    v14 = 0xE000000000000000;
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    v21 = 0x656C61636F6C2820;
    v22 = 0xEA0000000000203ALL;
    lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770], MEMORY[0x1E6969798]);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1AC57C120](v15);

    MEMORY[0x1AC57C120](41, 0xE100000000000000);
    v13 = v21;
    v14 = v22;
    (*(v2 + 8))(v4, v1);
  }

  if (*(v0 + v8[7]))
  {
    v16 = 0xD000000000000011;
  }

  else
  {
    v16 = 0;
  }

  if (*(v0 + v8[7]))
  {
    v17 = 0x80000001A8FDA2F0;
  }

  else
  {
    v17 = 0xE000000000000000;
  }

  v21 = 0;
  v22 = 0xE000000000000000;
  _StringGuts.grow(_:)(18);

  v21 = 0x3A6E656B6F743C3CLL;
  v22 = 0xE800000000000000;
  MEMORY[0x1AC57C120](*v0, v0[1]);
  MEMORY[0x1AC57C120](v20, v12);

  MEMORY[0x1AC57C120](v13, v14);

  MEMORY[0x1AC57C120](v16, v17);

  MEMORY[0x1AC57C120](15934, 0xE200000000000000);
  return v21;
}

uint64_t one-time initialization function for endPrompt()
{
  v0 = type metadata accessor for Prompt.SpecialToken(0);
  __swift_allocate_value_buffer(v0, static Prompt.SpecialToken.endPrompt);
  v1 = __swift_project_value_buffer(v0, static Prompt.SpecialToken.endPrompt);
  v2 = v0[5];
  v3 = type metadata accessor for Locale();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000010;
  *(v1 + 1) = 0x80000001A8FDA520;
  v5 = &v1[v0[6]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[7]] = 0;
  return result;
}

uint64_t one-time initialization function for startPrompt()
{
  v0 = type metadata accessor for Prompt.SpecialToken(0);
  __swift_allocate_value_buffer(v0, static Prompt.SpecialToken.startPrompt);
  v1 = __swift_project_value_buffer(v0, static Prompt.SpecialToken.startPrompt);
  v2 = v0[5];
  v3 = type metadata accessor for Locale();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000012;
  *(v1 + 1) = 0x80000001A8FDA500;
  v5 = &v1[v0[6]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[7]] = 0;
  return result;
}

uint64_t one-time initialization function for endImageInt()
{
  v0 = type metadata accessor for Prompt.SpecialToken(0);
  __swift_allocate_value_buffer(v0, static Prompt.SpecialToken.endImageInt);
  v1 = __swift_project_value_buffer(v0, static Prompt.SpecialToken.endImageInt);
  v2 = v0[5];
  v3 = type metadata accessor for Locale();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000013;
  *(v1 + 1) = 0x80000001A8FDA4E0;
  v5 = &v1[v0[6]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[7]] = 0;
  return result;
}

uint64_t one-time initialization function for startImageInt()
{
  v0 = type metadata accessor for Prompt.SpecialToken(0);
  __swift_allocate_value_buffer(v0, static Prompt.SpecialToken.startImageInt);
  v1 = __swift_project_value_buffer(v0, static Prompt.SpecialToken.startImageInt);
  v2 = v0[5];
  v3 = type metadata accessor for Locale();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000015;
  *(v1 + 1) = 0x80000001A8FDA4C0;
  v5 = &v1[v0[6]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[7]] = 0;
  return result;
}

uint64_t one-time initialization function for endImageStr()
{
  v0 = type metadata accessor for Prompt.SpecialToken(0);
  __swift_allocate_value_buffer(v0, static Prompt.SpecialToken.endImageStr);
  v1 = __swift_project_value_buffer(v0, static Prompt.SpecialToken.endImageStr);
  v2 = v0[5];
  v3 = type metadata accessor for Locale();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000013;
  *(v1 + 1) = 0x80000001A8FDA4A0;
  v5 = &v1[v0[6]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[7]] = 0;
  return result;
}

uint64_t one-time initialization function for startImageStr()
{
  v0 = type metadata accessor for Prompt.SpecialToken(0);
  __swift_allocate_value_buffer(v0, static Prompt.SpecialToken.startImageStr);
  v1 = __swift_project_value_buffer(v0, static Prompt.SpecialToken.startImageStr);
  v2 = v0[5];
  v3 = type metadata accessor for Locale();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000015;
  *(v1 + 1) = 0x80000001A8FDA480;
  v5 = &v1[v0[6]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[7]] = 0;
  return result;
}

uint64_t one-time initialization function for localeInstruction()
{
  v0 = type metadata accessor for Prompt.SpecialToken(0);
  __swift_allocate_value_buffer(v0, static Prompt.SpecialToken.localeInstruction);
  v1 = __swift_project_value_buffer(v0, static Prompt.SpecialToken.localeInstruction);
  v2 = v0[5];
  v3 = type metadata accessor for Locale();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000012;
  *(v1 + 1) = 0x80000001A8FDA460;
  v5 = &v1[v0[6]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[7]] = 0;
  return result;
}

uint64_t one-time initialization function for localeInstructionInjectionLocation()
{
  v0 = type metadata accessor for Prompt.SpecialToken(0);
  __swift_allocate_value_buffer(v0, static Prompt.SpecialToken.localeInstructionInjectionLocation);
  v1 = __swift_project_value_buffer(v0, static Prompt.SpecialToken.localeInstructionInjectionLocation);
  v2 = v0[5];
  v3 = type metadata accessor for Locale();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000025;
  *(v1 + 1) = 0x80000001A8FDA430;
  v5 = &v1[v0[6]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[7]] = 0;
  return result;
}

uint64_t one-time initialization function for promptModule()
{
  v0 = type metadata accessor for Prompt.SpecialToken(0);
  __swift_allocate_value_buffer(v0, static Prompt.SpecialToken.promptModule);
  v1 = __swift_project_value_buffer(v0, static Prompt.SpecialToken.promptModule);
  v2 = v0[5];
  v3 = type metadata accessor for Locale();
  result = (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  strcpy(v1, "prompt_module");
  *(v1 + 14) = -4864;
  v5 = (v1 + v0[6]);
  *v5 = 0;
  v5[1] = 0;
  *(v1 + v0[7]) = 0;
  return result;
}

uint64_t one-time initialization function for cacheablePrefixTerminator()
{
  v0 = type metadata accessor for Prompt.SpecialToken(0);
  __swift_allocate_value_buffer(v0, static Prompt.SpecialToken.cacheablePrefixTerminator);
  v1 = __swift_project_value_buffer(v0, static Prompt.SpecialToken.cacheablePrefixTerminator);
  v2 = v0[5];
  v3 = type metadata accessor for Locale();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000019;
  *(v1 + 1) = 0x80000001A8FDA540;
  v5 = &v1[v0[6]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[7]] = 1;
  return result;
}

uint64_t one-time initialization function for instructions()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v13 - v4;
  v6 = type metadata accessor for Prompt.SpecialToken(0);
  __swift_allocate_value_buffer(v6, static Prompt.SpecialToken.Chat.instructions);
  v7 = __swift_project_value_buffer(v6, static Prompt.SpecialToken.Chat.instructions);
  v8 = type metadata accessor for Locale();
  v9 = *(*(v8 - 8) + 56);
  v9(v5, 1, 1, v8);
  outlined init with copy of (String, Any)(v5, v2, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v10 = v6[5];
  v9(&v7[v10], 1, 1, v8);
  *v7 = 0xD000000000000010;
  *(v7 + 1) = 0x80000001A8FDA310;
  v11 = &v7[v6[6]];
  *v11 = 0;
  *(v11 + 1) = 0;
  outlined assign with take of Locale?(v2, &v7[v10]);
  v7[v6[7]] = 0;
  return outlined destroy of [Regex2BNF.CharacterPredicate](v5, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
}

uint64_t static Prompt.SpecialToken.Chat.instructions(locale:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  outlined init with copy of (String, Any)(a1, &v12 - v5, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v7 = type metadata accessor for Prompt.SpecialToken(0);
  v8 = v7[5];
  v9 = type metadata accessor for Locale();
  (*(*(v9 - 8) + 56))(&a2[v8], 1, 1, v9);
  *a2 = 0xD000000000000010;
  *(a2 + 1) = 0x80000001A8FDA310;
  v10 = &a2[v7[6]];
  *v10 = 0;
  *(v10 + 1) = 0;
  result = outlined assign with take of Locale?(v6, &a2[v8]);
  a2[v7[7]] = 0;
  return result;
}

uint64_t one-time initialization function for response()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v13 - v4;
  v6 = type metadata accessor for Prompt.SpecialToken(0);
  __swift_allocate_value_buffer(v6, static Prompt.SpecialToken.Chat.response);
  v7 = __swift_project_value_buffer(v6, static Prompt.SpecialToken.Chat.response);
  v8 = type metadata accessor for Locale();
  v9 = *(*(v8 - 8) + 56);
  v9(v5, 1, 1, v8);
  outlined init with copy of (String, Any)(v5, v2, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v10 = v6[5];
  v9(&v7[v10], 1, 1, v8);
  *v7 = 0xD000000000000013;
  *(v7 + 1) = 0x80000001A8FDA330;
  v11 = &v7[v6[6]];
  *v11 = 0;
  *(v11 + 1) = 0;
  outlined assign with take of Locale?(v2, &v7[v10]);
  v7[v6[7]] = 0;
  return outlined destroy of [Regex2BNF.CharacterPredicate](v5, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
}

uint64_t static Prompt.SpecialToken.Chat.response(locale:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  outlined init with copy of (String, Any)(a1, &v12 - v5, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v7 = type metadata accessor for Prompt.SpecialToken(0);
  v8 = v7[5];
  v9 = type metadata accessor for Locale();
  (*(*(v9 - 8) + 56))(&a2[v8], 1, 1, v9);
  *a2 = 0xD000000000000013;
  *(a2 + 1) = 0x80000001A8FDA330;
  v10 = &a2[v7[6]];
  *v10 = 0;
  *(v10 + 1) = 0;
  result = outlined assign with take of Locale?(v6, &a2[v8]);
  a2[v7[7]] = 0;
  return result;
}

uint64_t one-time initialization function for user(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for Prompt.SpecialToken(0);
  __swift_allocate_value_buffer(v11, a2);
  v12 = __swift_project_value_buffer(v11, a2);
  v13 = type metadata accessor for Locale();
  v14 = *(*(v13 - 8) + 56);
  v14(v10, 1, 1, v13);
  outlined init with copy of (String, Any)(v10, v7, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v15 = v11[5];
  v14(&v12[v15], 1, 1, v13);
  *v12 = 0x6C6F722E74616863;
  *(v12 + 1) = a3;
  v16 = &v12[v11[6]];
  *v16 = 0;
  *(v16 + 1) = 0;
  outlined assign with take of Locale?(v7, &v12[v15]);
  v12[v11[7]] = 0;
  return outlined destroy of [Regex2BNF.CharacterPredicate](v10, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
}

uint64_t static Prompt.SpecialToken.Chat.user(locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  outlined init with copy of (String, Any)(a1, &v14 - v7, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v9 = type metadata accessor for Prompt.SpecialToken(0);
  v10 = v9[5];
  v11 = type metadata accessor for Locale();
  (*(*(v11 - 8) + 56))(&a3[v10], 1, 1, v11);
  *a3 = 0x6C6F722E74616863;
  *(a3 + 1) = a2;
  v12 = &a3[v9[6]];
  *v12 = 0;
  *(v12 + 1) = 0;
  result = outlined assign with take of Locale?(v8, &a3[v10]);
  a3[v9[7]] = 0;
  return result;
}

uint64_t one-time initialization function for turnEnd()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v13 - v4;
  v6 = type metadata accessor for Prompt.SpecialToken(0);
  __swift_allocate_value_buffer(v6, static Prompt.SpecialToken.Chat.turnEnd);
  v7 = __swift_project_value_buffer(v6, static Prompt.SpecialToken.Chat.turnEnd);
  v8 = type metadata accessor for Locale();
  v9 = *(*(v8 - 8) + 56);
  v9(v5, 1, 1, v8);
  outlined init with copy of (String, Any)(v5, v2, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v10 = v6[5];
  v9(&v7[v10], 1, 1, v8);
  *v7 = 0xD000000000000016;
  *(v7 + 1) = 0x80000001A8FDA350;
  v11 = &v7[v6[6]];
  *v11 = 0;
  *(v11 + 1) = 0;
  outlined assign with take of Locale?(v2, &v7[v10]);
  v7[v6[7]] = 0;
  return outlined destroy of [Regex2BNF.CharacterPredicate](v5, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
}

uint64_t static Prompt.SpecialToken.Chat.turnEnd(locale:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  outlined init with copy of (String, Any)(a1, &v12 - v5, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v7 = type metadata accessor for Prompt.SpecialToken(0);
  v8 = v7[5];
  v9 = type metadata accessor for Locale();
  (*(*(v9 - 8) + 56))(&a2[v8], 1, 1, v9);
  *a2 = 0xD000000000000016;
  *(a2 + 1) = 0x80000001A8FDA350;
  v10 = &a2[v7[6]];
  *v10 = 0;
  *(v10 + 1) = 0;
  result = outlined assign with take of Locale?(v6, &a2[v8]);
  a2[v7[7]] = 0;
  return result;
}

uint64_t one-time initialization function for turnStart()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v13 - v4;
  v6 = type metadata accessor for Prompt.SpecialToken(0);
  __swift_allocate_value_buffer(v6, static Prompt.SpecialToken.Chat.turnStart);
  v7 = __swift_project_value_buffer(v6, static Prompt.SpecialToken.Chat.turnStart);
  v8 = type metadata accessor for Locale();
  v9 = *(*(v8 - 8) + 56);
  v9(v5, 1, 1, v8);
  outlined init with copy of (String, Any)(v5, v2, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v10 = v6[5];
  v9(&v7[v10], 1, 1, v8);
  *v7 = 0xD000000000000018;
  *(v7 + 1) = 0x80000001A8FDA370;
  v11 = &v7[v6[6]];
  *v11 = 0;
  *(v11 + 1) = 0;
  outlined assign with take of Locale?(v2, &v7[v10]);
  v7[v6[7]] = 0;
  return outlined destroy of [Regex2BNF.CharacterPredicate](v5, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
}

uint64_t static Prompt.SpecialToken.Chat.turnStart(locale:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  outlined init with copy of (String, Any)(a1, &v12 - v5, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v7 = type metadata accessor for Prompt.SpecialToken(0);
  v8 = v7[5];
  v9 = type metadata accessor for Locale();
  (*(*(v9 - 8) + 56))(&a2[v8], 1, 1, v9);
  *a2 = 0xD000000000000018;
  *(a2 + 1) = 0x80000001A8FDA370;
  v10 = &a2[v7[6]];
  *v10 = 0;
  *(v10 + 1) = 0;
  result = outlined assign with take of Locale?(v6, &a2[v8]);
  a2[v7[7]] = 0;
  return result;
}

uint64_t one-time initialization function for defaultInstructions()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v13 - v4;
  v6 = type metadata accessor for Prompt.SpecialToken(0);
  __swift_allocate_value_buffer(v6, static Prompt.SpecialToken.Chat.defaultInstructions);
  v7 = __swift_project_value_buffer(v6, static Prompt.SpecialToken.Chat.defaultInstructions);
  v8 = type metadata accessor for Locale();
  v9 = *(*(v8 - 8) + 56);
  v9(v5, 1, 1, v8);
  outlined init with copy of (String, Any)(v5, v2, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v10 = v6[5];
  v9(&v7[v10], 1, 1, v8);
  *v7 = 0xD000000000000018;
  *(v7 + 1) = 0x80000001A8FDA390;
  v11 = &v7[v6[6]];
  *v11 = 0;
  *(v11 + 1) = 0;
  outlined assign with take of Locale?(v2, &v7[v10]);
  v7[v6[7]] = 0;
  return outlined destroy of [Regex2BNF.CharacterPredicate](v5, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
}

uint64_t static Prompt.SpecialToken.Chat.defaultInstructions(locale:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  outlined init with copy of (String, Any)(a1, &v12 - v5, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v7 = type metadata accessor for Prompt.SpecialToken(0);
  v8 = v7[5];
  v9 = type metadata accessor for Locale();
  (*(*(v9 - 8) + 56))(&a2[v8], 1, 1, v9);
  *a2 = 0xD000000000000018;
  *(a2 + 1) = 0x80000001A8FDA390;
  v10 = &a2[v7[6]];
  *v10 = 0;
  *(v10 + 1) = 0;
  result = outlined assign with take of Locale?(v6, &a2[v8]);
  a2[v7[7]] = 0;
  return result;
}

uint64_t static Prompt.SpecialToken.endPrompt.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Prompt.SpecialToken(0);
  v7 = __swift_project_value_buffer(v6, a2);
  return outlined init with copy of Prompt.PromptFragment(v7, a4, type metadata accessor for Prompt.SpecialToken);
}

uint64_t static Prompt.SpecialToken.Chat.toolCall(id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Prompt.SpecialToken(0);
  v7 = v6[5];
  v8 = type metadata accessor for Locale();
  (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  strcpy(a3, "tooluse.tool");
  *(a3 + 13) = 0;
  *(a3 + 14) = -5120;
  v9 = (a3 + v6[6]);
  *v9 = a1;
  v9[1] = a2;
  *(a3 + v6[7]) = 0;
}

void Prompt.SpecialToken.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for Locale();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v11 - v8;
  String.hash(into:)();
  v10 = type metadata accessor for Prompt.SpecialToken(0);
  outlined init with copy of (String, Any)(v2 + v10[5], v9, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v4 + 8))(v6, v3);
  }

  if (*(v2 + v10[6] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v2 + v10[7]));
}

uint64_t Prompt.Delimiter.position.setter(uint64_t a1)
{
  result = type metadata accessor for Prompt.Delimiter(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t Prompt.Delimiter.priority.setter(uint64_t a1)
{
  result = type metadata accessor for Prompt.Delimiter(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t Prompt.Delimiter.init(token:position:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  _s15TokenGeneration6PromptV10AttachmentVWObTm_0(a1, a3, type metadata accessor for Prompt.SpecialToken);
  result = type metadata accessor for Prompt.Delimiter(0);
  *(a3 + *(result + 20)) = a2;
  *(a3 + *(result + 24)) = -1;
  return result;
}

uint64_t Prompt.Delimiter.description.getter()
{
  _StringGuts.grow(_:)(36);

  v0 = Prompt.SpecialToken.description.getter();
  MEMORY[0x1AC57C120](v0);

  MEMORY[0x1AC57C120](0x6F697469736F7020, 0xEA00000000003A6ELL);
  type metadata accessor for Prompt.Delimiter(0);
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1AC57C120](v1);

  MEMORY[0x1AC57C120](0x7469726F69727020, 0xEA00000000003A79);
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1AC57C120](v2);

  MEMORY[0x1AC57C120](15934, 0xE200000000000000);
  return 0x3A6E656B6F743C3CLL;
}

uint64_t Prompt.Delimiter.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for Locale();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v13 - v8;
  String.hash(into:)();
  v10 = type metadata accessor for Prompt.SpecialToken(0);
  outlined init with copy of (String, Any)(v2 + v10[5], v9, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v4 + 8))(v6, v3);
  }

  if (*(v2 + v10[6] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v2 + v10[7]));
  v11 = type metadata accessor for Prompt.Delimiter(0);
  MEMORY[0x1AC57CB80](*(v2 + *(v11 + 20)));
  return MEMORY[0x1AC57CB80](*(v2 + *(v11 + 24)));
}

uint64_t Prompt.ImageEmbeddingAttachment.Encoding.description.getter()
{
  if (*v0)
  {
    return 0x363174616F6C66;
  }

  else
  {
    return 0x38746E6975;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Prompt.ImageEmbeddingAttachment.Encoding()
{
  if (*v0)
  {
    return 0x363174616F6C66;
  }

  else
  {
    return 0x38746E6975;
  }
}

uint64_t Prompt.ImageEmbeddingAttachment.data.getter()
{
  v1 = *(v0 + 8);
  outlined copy of Data._Representation(v1, *(v0 + 16));
  return v1;
}

uint64_t Prompt.ImageEmbeddingAttachment.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[4];
  v5 = v0[5];
  _StringGuts.grow(_:)(60);
  MEMORY[0x1AC57C120](0x69646F636E653C3CLL, 0xEB000000003A676ELL);
  if (v1)
  {
    v6 = 0x363174616F6C66;
  }

  else
  {
    v6 = 0x38746E6975;
  }

  if (v1)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x1AC57C120](v6, v7);

  result = MEMORY[0x1AC57C120](0x635F65747962202CLL, 0xED00003A746E756FLL);
  v9 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v9 != 2 || !__OFSUB__(*(v2 + 24), *(v2 + 16)))
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v9)
  {
    goto LABEL_15;
  }

  if (!__OFSUB__(HIDWORD(v2), v2))
  {
LABEL_15:
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1AC57C120](v10);

    MEMORY[0x1AC57C120](0x5F6E656B6F74202CLL, 0xEE003A746E756F63);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1AC57C120](v11);

    MEMORY[0x1AC57C120](0x74616E676973202CLL, 0xEC0000003A657275);
    MEMORY[0x1AC57C120](v4, v5);
    MEMORY[0x1AC57C120](15934, 0xE200000000000000);
    return 0;
  }

  __break(1u);
  return result;
}

_BYTE *Prompt.ImageEmbeddingAttachment.init(encoding:data:tokenCount:signature:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = *result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  *(a7 + 24) = a4;
  return result;
}

uint64_t Prompt.ImageEmbeddingAttachment.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 3);
  MEMORY[0x1AC57CB80](*v1);
  Data.hash(into:)();
  MEMORY[0x1AC57CB80](v2);

  return String.hash(into:)();
}

Swift::Int Prompt.ImageEmbeddingAttachment.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 3);
  Hasher.init(_seed:)();
  MEMORY[0x1AC57CB80](v1);
  Data.hash(into:)();
  MEMORY[0x1AC57CB80](v2);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Prompt.ImageEmbeddingAttachment()
{
  v1 = *v0;
  v2 = *(v0 + 3);
  Hasher.init(_seed:)();
  MEMORY[0x1AC57CB80](v1);
  Data.hash(into:)();
  MEMORY[0x1AC57CB80](v2);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Prompt.ImageEmbeddingAttachment(uint64_t a1)
{
  v2 = *(v1 + 3);
  MEMORY[0x1AC57CB80](*v1);
  Data.hash(into:)();
  MEMORY[0x1AC57CB80](v2);

  return String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Prompt.ImageEmbeddingAttachment(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 3);
  Hasher.init(_seed:)();
  MEMORY[0x1AC57CB80](v2);
  Data.hash(into:)();
  MEMORY[0x1AC57CB80](v3);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t Prompt.Attachment.position.setter(uint64_t a1)
{
  result = type metadata accessor for Prompt.Attachment(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t Prompt.Attachment.priority.setter(uint64_t a1)
{
  result = type metadata accessor for Prompt.Attachment(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t Prompt.Delimiter.init(token:position:priority:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  _s15TokenGeneration6PromptV10AttachmentVWObTm_0(a1, a6, a4);
  result = a5(0);
  *(a6 + *(result + 20)) = a2;
  *(a6 + *(result + 24)) = a3;
  return result;
}

BOOL static Prompt.Delimiter.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  if ((a3() & 1) != 0 && (v7 = a4(0), *(a1 + *(v7 + 20)) == *(a2 + *(v7 + 20))))
  {
    return *(a1 + *(v7 + 24)) == *(a2 + *(v7 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t Prompt.Attachment.hash(into:)(uint64_t a1)
{
  Prompt.AttachmentContent.hash(into:)(a1);
  v2 = type metadata accessor for Prompt.Attachment(0);
  MEMORY[0x1AC57CB80](*(v1 + *(v2 + 20)));
  return MEMORY[0x1AC57CB80](*(v1 + *(v2 + 24)));
}

Swift::Int Prompt.Attachment.hashValue.getter()
{
  Hasher.init(_seed:)();
  Prompt.AttachmentContent.hash(into:)(v3);
  v1 = type metadata accessor for Prompt.Attachment(0);
  MEMORY[0x1AC57CB80](*(v0 + *(v1 + 20)));
  MEMORY[0x1AC57CB80](*(v0 + *(v1 + 24)));
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Prompt.Attachment(uint64_t a1)
{
  Hasher.init(_seed:)();
  Prompt.AttachmentContent.hash(into:)(v4);
  MEMORY[0x1AC57CB80](*(v1 + *(a1 + 20)));
  MEMORY[0x1AC57CB80](*(v1 + *(a1 + 24)));
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Prompt.Attachment(uint64_t a1, uint64_t a2)
{
  Prompt.AttachmentContent.hash(into:)(a1);
  MEMORY[0x1AC57CB80](*(v2 + *(a2 + 20)));
  return MEMORY[0x1AC57CB80](*(v2 + *(a2 + 24)));
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Prompt.Attachment(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  Prompt.AttachmentContent.hash(into:)(v5);
  MEMORY[0x1AC57CB80](*(v2 + *(a2 + 20)));
  MEMORY[0x1AC57CB80](*(v2 + *(a2 + 24)));
  return Hasher._finalize()();
}

unint64_t Prompt.AttachmentContent.description.getter()
{
  *&v68 = type metadata accessor for Tool();
  v1 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v3 = v64 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Prompt.ResponseFormat.SchemaDetails(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for Prompt.ResponseFormat.Kind(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for Prompt.ResponseFormat(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Prompt.AttachmentContent(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Prompt.PromptFragment(v0, v15, type metadata accessor for Prompt.AttachmentContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        v46 = *v15;
        *v69 = 0;
        *&v69[8] = 0xE000000000000000;
        _StringGuts.grow(_:)(20);

        *v69 = 0xD000000000000010;
        *&v69[8] = 0x80000001A8FDA3F0;
        v72 = v46;
        v47 = Prompt.ImageSurfaceAttachment.description.getter();
        MEMORY[0x1AC57C120](v47);

        MEMORY[0x1AC57C120](15934, 0xE200000000000000);

        return *v69;
      }

      v22 = *v15;
      v23 = *(v15 + 5);
      *v69 = 0;
      *&v69[8] = 0xE000000000000000;
      v24 = *(v15 + 8);
      v67 = *(v15 + 24);
      v68 = v24;
      _StringGuts.grow(_:)(22);

      v72 = 0xD000000000000012;
      v73 = 0x80000001A8FDA410;
      v69[0] = v22;
      v70 = v67;
      *&v69[8] = v68;
      v71 = v23;
      v25 = Prompt.ImageEmbeddingAttachment.description.getter();
      MEMORY[0x1AC57C120](v25);

      MEMORY[0x1AC57C120](15934, 0xE200000000000000);
      outlined consume of Data._Representation(v68, *(&v68 + 1));
    }

    else
    {
      v41 = *v15;
      v42 = *(v15 + 1);
      v43 = *(v15 + 2);
      v72 = 0x3A6567616D693C3CLL;
      v73 = 0xE800000000000000;
      v69[0] = v41;
      *&v69[8] = v42;
      *&v69[16] = v43;
      v44 = Prompt.ImageAttachment.description.getter();
      MEMORY[0x1AC57C120](v44);

      MEMORY[0x1AC57C120](15934, 0xE200000000000000);
      outlined consume of Data._Representation(v42, v43);
    }

    return v72;
  }

  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v26 = *v15;
      *v69 = 0;
      *&v69[8] = 0xE000000000000000;
      _StringGuts.grow(_:)(19);

      *v69 = 0x6D65747379733C3CLL;
      *&v69[8] = 0xEF3A736C6F6F745FLL;
      v27 = *(v26 + 16);
      if (v27)
      {
        v72 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27, 0);
        v28 = v72;
        v30 = *(v1 + 16);
        v29 = v1 + 16;
        v31 = *(v29 + 64);
        v64[1] = v26;
        v32 = v26 + ((v31 + 32) & ~v31);
        v65 = *(v29 + 56);
        v66 = v30;
        *&v67 = v29;
        v33 = (v29 - 8);
        do
        {
          v34 = v68;
          v66(v3, v32, v68);
          v35 = Tool.name.getter();
          v37 = v36;
          (*v33)(v3, v34);
          v72 = v28;
          v39 = *(v28 + 16);
          v38 = *(v28 + 24);
          if (v39 >= v38 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1);
            v28 = v72;
          }

          *(v28 + 16) = v39 + 1;
          v40 = v28 + 16 * v39;
          *(v40 + 32) = v35;
          *(v40 + 40) = v37;
          v32 += v65;
          --v27;
        }

        while (v27);
      }

      else
      {

        v28 = MEMORY[0x1E69E7CC0];
      }

      v60 = MEMORY[0x1AC57C2C0](v28, MEMORY[0x1E69E6158]);
      v62 = v61;
    }

    else
    {
      v50 = *v15;
      *v69 = 0;
      *&v69[8] = 0xE000000000000000;
      _StringGuts.grow(_:)(17);

      strcpy(v69, "<<tool_calls:");
      *&v69[14] = -4864;
      v51 = *(v50 + 16);
      if (v51)
      {
        v72 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v51, 0);
        v52 = v72;
        v53 = (v50 + 40);
        do
        {
          v55 = *(v53 - 1);
          v54 = *v53;
          v72 = v52;
          v56 = *(v52 + 16);
          v57 = *(v52 + 24);

          if (v56 >= v57 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v56 + 1, 1);
            v52 = v72;
          }

          *(v52 + 16) = v56 + 1;
          v58 = v52 + 16 * v56;
          *(v58 + 32) = v55;
          *(v58 + 40) = v54;
          v53 += 8;
          --v51;
        }

        while (v51);
      }

      else
      {

        v52 = MEMORY[0x1E69E7CC0];
      }

      v60 = MEMORY[0x1AC57C2C0](v52, MEMORY[0x1E69E6158]);
      v62 = v63;
    }

    MEMORY[0x1AC57C120](v60, v62);
    goto LABEL_33;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v17 = *v15;
    v18 = *(v15 + 1);
    *v69 = 0;
    *&v69[8] = 0xE000000000000000;
    _StringGuts.grow(_:)(25);

    *v69 = 0xD000000000000015;
    *&v69[8] = 0x80000001A8FDA3D0;
    v72 = v17;
    v73 = v18;
    lazy protocol witness table accessor for type Prompt.PreprocessedImageAttachment and conformance Prompt.PreprocessedImageAttachment();
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;

    MEMORY[0x1AC57C120](v19, v21);
LABEL_33:

    MEMORY[0x1AC57C120](15934, 0xE200000000000000);
    return *v69;
  }

  _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v15, v12, type metadata accessor for Prompt.ResponseFormat);
  *v69 = 0;
  *&v69[8] = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  *v69 = 0xD000000000000012;
  *&v69[8] = 0x80000001A8FDA3B0;
  outlined init with copy of Prompt.PromptFragment(v12, v9, type metadata accessor for Prompt.ResponseFormat.Kind);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v49 = *v9;
    v48 = v9[1];
  }

  else
  {
    _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v9, v6, type metadata accessor for Prompt.ResponseFormat.SchemaDetails);
    v49 = *v6;
    v48 = v6[1];

    _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v6, type metadata accessor for Prompt.ResponseFormat.SchemaDetails);
  }

  MEMORY[0x1AC57C120](v49, v48);

  MEMORY[0x1AC57C120](15934, 0xE200000000000000);
  v59 = *v69;
  _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v12, type metadata accessor for Prompt.ResponseFormat);
  return v59;
}

uint64_t static Prompt.PreprocessedImageAttachment.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  result = a1[1];
  v6 = a2[1];
  if (v4)
  {
    v7 = v2 == v3;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(result, v6);
  }

  v8 = (v2 + 32);
  v9 = (v3 + 32);
  while (v4)
  {
    if (*v8 != *v9)
    {
      return 0;
    }

    ++v8;
    ++v9;
    if (!--v4)
    {
      return _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(result, v6);
    }
  }

  __break(1u);
  return result;
}

void Prompt.AttachmentContent.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for Tool();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Prompt.ResponseFormat(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Prompt.AttachmentContent(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of Prompt.PromptFragment(v1, v12, type metadata accessor for Prompt.AttachmentContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v30 = *v12;
      v31 = v12[1];
      v32 = v12[2];
      MEMORY[0x1AC57CB80](0);
      MEMORY[0x1AC57CB80](v30);
      Data.hash(into:)();
      outlined consume of Data._Representation(v31, v32);
      return;
    }

    if (EnumCaseMultiPayload != 1)
    {
      v33 = *v12;
      MEMORY[0x1AC57CB80](2);
      NSObject.hash(into:)();

      return;
    }

    v18 = *v12;
    v19 = v12[1];
    v20 = v12[2];
    v21 = v12[3];
    MEMORY[0x1AC57CB80](1);
    MEMORY[0x1AC57CB80](v18);
    Data.hash(into:)();
    MEMORY[0x1AC57CB80](v21);
    String.hash(into:)();
    outlined consume of Data._Representation(v19, v20);
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v22 = *v12;
      MEMORY[0x1AC57CB80](5);
      MEMORY[0x1AC57CB80](v22[2]);
      v23 = v22[2];
      if (v23)
      {
        v26 = *(v4 + 16);
        v24 = v4 + 16;
        v25 = v26;
        v27 = (*(v24 + 64) + 32) & ~*(v24 + 64);
        v35[1] = v22;
        v28 = v22 + v27;
        v29 = *(v24 + 56);
        do
        {
          v25(v6, v28, v3);
          lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type Tool and conformance Tool, MEMORY[0x1E69A0DF0], MEMORY[0x1E69A0DF8]);
          dispatch thunk of Hashable.hash(into:)();
          (*(v24 - 8))(v6, v3);
          v28 += v29;
          --v23;
        }

        while (v23);
      }
    }

    else
    {
      v34 = *v12;
      MEMORY[0x1AC57CB80](6);
      specialized Array<A>.hash(into:)(a1, v34);
    }
  }

  else
  {
    if (EnumCaseMultiPayload != 3)
    {
      _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v12, v9, type metadata accessor for Prompt.ResponseFormat);
      MEMORY[0x1AC57CB80](4);
      Prompt.ResponseFormat.Kind.hash(into:)(a1);
      _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v9, type metadata accessor for Prompt.ResponseFormat);
      return;
    }

    v14 = *v12;
    v15 = v12[1];
    MEMORY[0x1AC57CB80](3);
    specialized Array<A>.hash(into:)(a1, v14);
    MEMORY[0x1AC57CB80](*(v15 + 16));
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = 32;
      do
      {
        MEMORY[0x1AC57CB80](*(v15 + v17));
        v17 += 8;
        --v16;
      }

      while (v16);
    }
  }
}

uint64_t Prompt.ImageAttachment.data.getter()
{
  v1 = *(v0 + 8);
  outlined copy of Data._Representation(v1, *(v0 + 16));
  return v1;
}

uint64_t Prompt.ImageAttachment.data.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

_BYTE *Prompt.ImageAttachment.init(format:data:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t Prompt.ImageAttachment.Format.description.getter()
{
  if (*v0)
  {
    return 6778986;
  }

  else
  {
    return 6778480;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Prompt.ImageAttachment.Format()
{
  if (*v0)
  {
    return 6778986;
  }

  else
  {
    return 6778480;
  }
}

uint64_t Prompt.ImageAttachment.description.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  if (*v0)
  {
    v3 = 6778986;
  }

  else
  {
    v3 = 6778480;
  }

  MEMORY[0x1AC57C120](v3, 0xE300000000000000);

  result = MEMORY[0x1AC57C120](58, 0xE100000000000000);
  v5 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v5 != 2 || !__OFSUB__(*(v1 + 24), *(v1 + 16)))
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v5)
  {
    goto LABEL_12;
  }

  if (!__OFSUB__(HIDWORD(v1), v1))
  {
LABEL_12:
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1AC57C120](v6);

    MEMORY[0x1AC57C120](0x7365747962, 0xE500000000000000);
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t Prompt.ImageAttachment.hash(into:)(uint64_t a1)
{
  MEMORY[0x1AC57CB80](*v1);

  return Data.hash(into:)();
}

Swift::Int Prompt.ImageAttachment.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1AC57CB80](v1);
  Data.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Prompt.ImageAttachment()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1AC57CB80](v1);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Prompt.ImageAttachment(uint64_t a1)
{
  MEMORY[0x1AC57CB80](*v1);

  return Data.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Prompt.ImageAttachment(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x1AC57CB80](v2);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t Prompt.PreprocessedImageAttachment.data.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Prompt.PreprocessedImageAttachment.shape.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t Prompt.PreprocessedImageAttachment.init(data:shape:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t Prompt.PreprocessedImageAttachment.hash(into:)(uint64_t a1)
{
  v2 = v1[1];
  specialized Array<A>.hash(into:)(a1, *v1);
  result = MEMORY[0x1AC57CB80](*(v2 + 16));
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = (v2 + 32);
    do
    {
      v6 = *v5++;
      result = MEMORY[0x1AC57CB80](v6);
      --v4;
    }

    while (v4);
  }

  return result;
}

Swift::Int Prompt.PreprocessedImageAttachment.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v7, v1);
  MEMORY[0x1AC57CB80](*(v2 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      v5 = *v4++;
      MEMORY[0x1AC57CB80](v5);
      --v3;
    }

    while (v3);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Prompt.PreprocessedImageAttachment(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v8, v2);
  MEMORY[0x1AC57CB80](*(v3 + 16));
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 32);
    do
    {
      v6 = *v5++;
      MEMORY[0x1AC57CB80](v6);
      --v4;
    }

    while (v4);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Prompt.PreprocessedImageAttachment(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZs7Float16V_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(v2, v3);
}

uint64_t Prompt.ImageSurfaceAttachment.description.getter()
{
  v1 = *v0;
  [*v0 width];
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1AC57C120](120, 0xE100000000000000);
  [v1 height];
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1AC57C120](v2);

  MEMORY[0x1AC57C120](44, 0xE100000000000000);
  [v1 allocationSize];
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1AC57C120](v3);

  MEMORY[0x1AC57C120](0x7365747962, 0xE500000000000000);
  return v5;
}

Swift::Int Prompt.ImageSurfaceAttachment.hashValue.getter()
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Prompt.ImageSurfaceAttachment()
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Prompt.ImageSurfaceAttachment(uint64_t a1)
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t static Prompt.ResponseFormat.schema(name:description:schema:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v12 = *(type metadata accessor for Prompt.ResponseFormat.SchemaDetails(0) + 24);
  v13 = type metadata accessor for Schema();
  (*(*(v13 - 8) + 16))(&a6[v12], a5, v13);
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 2) = a3;
  *(a6 + 3) = a4;
  type metadata accessor for Prompt.ResponseFormat.Kind(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t Prompt.ResponseFormat.SchemaDetails.init(name:description:schema:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 2) = a3;
  *(a6 + 3) = a4;
  v8 = *(type metadata accessor for Prompt.ResponseFormat.SchemaDetails(0) + 24);
  v9 = type metadata accessor for Schema();
  v10 = *(*(v9 - 8) + 32);

  return v10(&a6[v8], a5, v9);
}

uint64_t static Prompt.ResponseFormat.grammar(name:description:grammar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  type metadata accessor for Prompt.ResponseFormat.Kind(0);
  swift_storeEnumTagMultiPayload();
}

void __swiftcall Prompt.ResponseFormat.GrammarDetails.init(name:description:grammar:)(TokenGeneration::Prompt::ResponseFormat::GrammarDetails *__return_ptr retstr, Swift::String name, Swift::String_optional description, Swift::String grammar)
{
  retstr->name = name;
  retstr->description = description;
  retstr->grammar = grammar;
}

uint64_t Prompt.ResponseFormat.Kind.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for Prompt.ResponseFormat.SchemaDetails(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Prompt.ResponseFormat.Kind(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Prompt.PromptFragment(v2, v8, type metadata accessor for Prompt.ResponseFormat.Kind);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *(v8 + 3);
    MEMORY[0x1AC57CB80](1);
    String.hash(into:)();
    if (v9)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    String.hash(into:)();
  }

  else
  {
    _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v8, v5, type metadata accessor for Prompt.ResponseFormat.SchemaDetails);
    MEMORY[0x1AC57CB80](0);
    String.hash(into:)();
    if (*(v5 + 3))
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    type metadata accessor for Schema();
    lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type Schema and conformance Schema, MEMORY[0x1E69A0E08], MEMORY[0x1E69A0E10]);
    dispatch thunk of Hashable.hash(into:)();
    return _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v5, type metadata accessor for Prompt.ResponseFormat.SchemaDetails);
  }
}

uint64_t Prompt.ResponseFormat.SchemaDetails.description.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Prompt.ResponseFormat.SchemaDetails.schema.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Prompt.ResponseFormat.SchemaDetails(0) + 24);
  v4 = type metadata accessor for Schema();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Prompt.ResponseFormat.SchemaDetails.hash(into:)(uint64_t a1)
{
  String.hash(into:)();
  if (*(v1 + 24))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  type metadata accessor for Prompt.ResponseFormat.SchemaDetails(0);
  type metadata accessor for Schema();
  lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type Schema and conformance Schema, MEMORY[0x1E69A0E08], MEMORY[0x1E69A0E10]);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int Prompt.ResponseFormat.SchemaDetails.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (*(v0 + 24))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  type metadata accessor for Prompt.ResponseFormat.SchemaDetails(0);
  type metadata accessor for Schema();
  lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type Schema and conformance Schema, MEMORY[0x1E69A0E08], MEMORY[0x1E69A0E10]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Prompt.ResponseFormat.SchemaDetails()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (*(v0 + 24))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  type metadata accessor for Schema();
  lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type Schema and conformance Schema, MEMORY[0x1E69A0E08], MEMORY[0x1E69A0E10]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Prompt.ResponseFormat.SchemaDetails(uint64_t a1)
{
  String.hash(into:)();
  if (*(v1 + 24))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  type metadata accessor for Schema();
  lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type Schema and conformance Schema, MEMORY[0x1E69A0E08], MEMORY[0x1E69A0E10]);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Prompt.ResponseFormat.SchemaDetails(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (*(v1 + 24))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  type metadata accessor for Schema();
  lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type Schema and conformance Schema, MEMORY[0x1E69A0E08], MEMORY[0x1E69A0E10]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t Prompt.ResponseFormat.GrammarDetails.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Prompt.ResponseFormat.GrammarDetails.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Prompt.ResponseFormat.GrammarDetails.description.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Prompt.ResponseFormat.GrammarDetails.description.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Prompt.ResponseFormat.GrammarDetails.grammar.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t Prompt.ResponseFormat.GrammarDetails.grammar.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t Prompt.ResponseFormat.GrammarDetails.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  String.hash(into:)();
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return String.hash(into:)();
}

Swift::Int Prompt.ResponseFormat.GrammarDetails.hashValue.getter()
{
  v1 = *(v0 + 24);
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Prompt.ResponseFormat.GrammarDetails()
{
  v1 = *(v0 + 24);
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Prompt.ResponseFormat.GrammarDetails(uint64_t a1)
{
  v2 = *(v1 + 24);
  String.hash(into:)();
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Prompt.ResponseFormat.GrammarDetails(uint64_t a1)
{
  v2 = *(v1 + 24);
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int Prompt.SpecialToken.hashValue.getter(void (*a1)(void *))
{
  Hasher.init(_seed:)();
  a1(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Prompt.SpecialToken(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Prompt.SpecialToken(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t Prompt.ToolDefinitions.tools.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Prompt.ToolDefinitions.hash(into:)(uint64_t a1)
{
  v2 = type metadata accessor for Tool();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  result = MEMORY[0x1AC57CB80](*(*v1 + 16), v4);
  v9 = *(v7 + 16);
  if (v9)
  {
    v12 = *(v3 + 16);
    v10 = v3 + 16;
    v11 = v12;
    v13 = v7 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v14 = *(v10 + 56);
    do
    {
      v11(v6, v13, v2);
      lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type Tool and conformance Tool, MEMORY[0x1E69A0DF0], MEMORY[0x1E69A0DF8]);
      dispatch thunk of Hashable.hash(into:)();
      result = (*(v10 - 8))(v6, v2);
      v13 += v14;
      --v9;
    }

    while (v9);
  }

  return result;
}

Swift::Int Prompt.ToolDefinitions.hashValue.getter()
{
  v1 = type metadata accessor for Tool();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1AC57CB80](*(v5 + 16));
  v6 = *(v5 + 16);
  if (v6)
  {
    v9 = *(v2 + 16);
    v7 = v2 + 16;
    v8 = v9;
    v10 = v5 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
    v11 = *(v7 + 56);
    do
    {
      v8(v4, v10, v1);
      lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type Tool and conformance Tool, MEMORY[0x1E69A0DF0], MEMORY[0x1E69A0DF8]);
      dispatch thunk of Hashable.hash(into:)();
      (*(v7 - 8))(v4, v1);
      v10 += v11;
      --v6;
    }

    while (v6);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Prompt.ToolDefinitions()
{
  v2[9] = *v0;
  Hasher.init(_seed:)();
  Prompt.ToolDefinitions.hash(into:)(v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Prompt.ToolDefinitions(uint64_t a1)
{
  v3[9] = *v1;
  Hasher.init(_seed:)();
  Prompt.ToolDefinitions.hash(into:)(v3);
  return Hasher._finalize()();
}

TokenGeneration::Prompt::StringInterpolation __swiftcall Prompt.StringInterpolation.init(literalCapacity:interpolationCount:)(Swift::Int literalCapacity, Swift::Int interpolationCount)
{
  v4 = v2;
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  MEMORY[0x1AC57C060](literalCapacity);
  v5 = interpolationCount & ~(interpolationCount >> 63);
  v6 = MEMORY[0x1E69E7CC0];
  v4[2] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0, MEMORY[0x1E69E7CC0]);
  v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0, v6);
  v4[3] = v7;
  result.attachments._rawValue = v10;
  result.delimiters._rawValue = v9;
  result.result._object = v8;
  result.result._countAndFlagsBits = v7;
  return result;
}

uint64_t Prompt.StringInterpolation.appendInterpolation(token:)(uint64_t a1)
{
  v3 = type metadata accessor for Prompt.Delimiter(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  outlined init with copy of Prompt.PromptFragment(a1, &v19 - v8, type metadata accessor for Prompt.SpecialToken);
  v10 = String.count.getter();
  v11 = *(v1 + 16);
  v12 = v11[2];
  v13 = *(*(v1 + 24) + 16);
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *&v9[*(v3 + 20)] = v10;
    *&v9[*(v3 + 24)] = v15;
    outlined init with copy of Prompt.PromptFragment(v9, v6, type metadata accessor for Prompt.Delimiter);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_3;
    }
  }

  v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12 + 1, 1, v11);
LABEL_3:
  v17 = v11[2];
  v16 = v11[3];
  if (v17 >= v16 >> 1)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v11);
  }

  _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v9, type metadata accessor for Prompt.Delimiter);
  v11[2] = v17 + 1;
  result = _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v6, v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v17, type metadata accessor for Prompt.Delimiter);
  *(v1 + 16) = v11;
  return result;
}

TokenGeneration::Prompt __swiftcall Prompt.init(stringInterpolation:)(TokenGeneration::Prompt stringInterpolation)
{
  v2 = *(stringInterpolation.string._countAndFlagsBits + 24);
  *v1 = *stringInterpolation.string._countAndFlagsBits;
  *(v1 + 8) = *(stringInterpolation.string._countAndFlagsBits + 8);
  *(v1 + 24) = v2;
  return stringInterpolation;
}

uint64_t Prompt.StringInterpolation.appendInterpolation(image:)(uint64_t a1)
{
  v3 = type metadata accessor for Prompt.Attachment(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v10 = *a1;
  v12 = *(a1 + 8);
  v11 = *(a1 + 16);
  *v9 = v10;
  *(v9 + 1) = v12;
  *(v9 + 2) = v11;
  type metadata accessor for Prompt.AttachmentContent(0);
  swift_storeEnumTagMultiPayload();
  outlined copy of Data._Representation(v12, v11);
  v13 = String.count.getter();
  v14 = *(v1 + 24);
  v15 = *(*(v1 + 16) + 16);
  v16 = v14[2];
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *&v9[*(v3 + 20)] = v13;
    *&v9[*(v3 + 24)] = v18;
    outlined init with copy of Prompt.PromptFragment(v9, v6, type metadata accessor for Prompt.Attachment);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_3;
    }
  }

  v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16 + 1, 1, v14);
LABEL_3:
  v20 = v14[2];
  v19 = v14[3];
  if (v20 >= v19 >> 1)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v14);
  }

  _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v9, type metadata accessor for Prompt.Attachment);
  v14[2] = v20 + 1;
  result = _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v6, v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v20, type metadata accessor for Prompt.Attachment);
  *(v1 + 24) = v14;
  return result;
}

Swift::Void __swiftcall Prompt.StringInterpolation.appendInterpolation(imageSurface:)(TokenGeneration::Prompt::ImageSurfaceAttachment imageSurface)
{
  isa = imageSurface.surface.super.isa;
  v3 = type metadata accessor for Prompt.Attachment(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = *isa;
  *(&v20 - v8) = *isa;
  type metadata accessor for Prompt.AttachmentContent(0);
  swift_storeEnumTagMultiPayload();
  v11 = v10;
  v12 = String.count.getter();
  v13 = *(v1 + 24);
  v14 = *(*(v1 + 16) + 16);
  v15 = v13[2];
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *&v9[*(v3 + 20)] = v12;
    *&v9[*(v3 + 24)] = v17;
    outlined init with copy of Prompt.PromptFragment(v9, v6, type metadata accessor for Prompt.Attachment);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_3;
    }
  }

  v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15 + 1, 1, v13);
LABEL_3:
  v19 = v13[2];
  v18 = v13[3];
  if (v19 >= v18 >> 1)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v13);
  }

  _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v9, type metadata accessor for Prompt.Attachment);
  v13[2] = v19 + 1;
  _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v6, v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v19, type metadata accessor for Prompt.Attachment);
  *(v1 + 24) = v13;
}

uint64_t Prompt.StringInterpolation.appendInterpolation(imageEmbedding:)(char *a1)
{
  v3 = type metadata accessor for Prompt.Attachment(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v10 = *(a1 + 1);
  v11 = *(a1 + 4);
  v12 = *(a1 + 5);
  *v9 = *a1;
  *(v9 + 1) = v10;
  v22 = *(a1 + 1);
  *(v9 + 1) = v22;
  *(v9 + 4) = v11;
  *(v9 + 5) = v12;
  type metadata accessor for Prompt.AttachmentContent(0);
  swift_storeEnumTagMultiPayload();
  outlined copy of Data._Representation(v10, v22);

  v13 = String.count.getter();
  v14 = *(v1 + 24);
  v15 = *(*(v1 + 16) + 16);
  v16 = v14[2];
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *&v9[*(v3 + 20)] = v13;
    *&v9[*(v3 + 24)] = v18;
    outlined init with copy of Prompt.PromptFragment(v9, v6, type metadata accessor for Prompt.Attachment);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_3;
    }
  }

  v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16 + 1, 1, v14);
LABEL_3:
  v20 = v14[2];
  v19 = v14[3];
  if (v20 >= v19 >> 1)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v14);
  }

  _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v9, type metadata accessor for Prompt.Attachment);
  v14[2] = v20 + 1;
  result = _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v6, v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v20, type metadata accessor for Prompt.Attachment);
  *(v1 + 24) = v14;
  return result;
}

uint64_t Prompt.StringInterpolation.appendInterpolation(preprocessedImage:)(uint64_t *a1)
{
  v3 = type metadata accessor for Prompt.Attachment(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v21 - v8);
  v11 = *a1;
  v10 = a1[1];
  *v9 = v11;
  v9[1] = v10;
  type metadata accessor for Prompt.AttachmentContent(0);
  swift_storeEnumTagMultiPayload();

  v12 = String.count.getter();
  v13 = *(v1 + 24);
  v14 = *(*(v1 + 16) + 16);
  v15 = v13[2];
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v9 + *(v3 + 20)) = v12;
    *(v9 + *(v3 + 24)) = v17;
    outlined init with copy of Prompt.PromptFragment(v9, v6, type metadata accessor for Prompt.Attachment);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_3;
    }
  }

  v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15 + 1, 1, v13);
LABEL_3:
  v19 = v13[2];
  v18 = v13[3];
  if (v19 >= v18 >> 1)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v13);
  }

  _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v9, type metadata accessor for Prompt.Attachment);
  v13[2] = v19 + 1;
  result = _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v6, v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v19, type metadata accessor for Prompt.Attachment);
  *(v1 + 24) = v13;
  return result;
}

uint64_t Prompt.StringInterpolation.appendInterpolation(attachment:)(uint64_t a1)
{
  v3 = type metadata accessor for Prompt.Attachment(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  outlined init with copy of Prompt.PromptFragment(a1, &v19 - v8, type metadata accessor for Prompt.AttachmentContent);
  v10 = String.count.getter();
  v11 = *(v1 + 24);
  v12 = *(*(v1 + 16) + 16);
  v13 = v11[2];
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *&v9[*(v3 + 20)] = v10;
    *&v9[*(v3 + 24)] = v15;
    outlined init with copy of Prompt.PromptFragment(v9, v6, type metadata accessor for Prompt.Attachment);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_3;
    }
  }

  v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13 + 1, 1, v11);
LABEL_3:
  v17 = v11[2];
  v16 = v11[3];
  if (v17 >= v16 >> 1)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v11);
  }

  _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v9, type metadata accessor for Prompt.Attachment);
  v11[2] = v17 + 1;
  result = _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v6, v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v17, type metadata accessor for Prompt.Attachment);
  *(v1 + 24) = v11;
  return result;
}

uint64_t static Prompt.+= infix(_:_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5[0] = a2;
  v5[1] = a3;
  v5[2] = MEMORY[0x1E69E7CC0];
  v5[3] = MEMORY[0x1E69E7CC0];

  specialized static Prompt.+= infix(_:_:)(a1, v5);
}

uint64_t static Prompt.+ infix(_:_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *a2;
  v8 = a2[3];
  *a3 = *a1;
  a3[1] = v4;
  a3[2] = v5;
  a3[3] = v6;
  v10 = v7;
  v11 = *(a2 + 1);
  v12 = v8;

  return specialized static Prompt.+= infix(_:_:)(a3, &v10);
}

uint64_t static Prompt.+ infix(_:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  *a4 = *a1;
  a4[1] = v5;
  a4[2] = v6;
  a4[3] = v7;
  v9[0] = a2;
  v9[1] = a3;
  v9[2] = MEMORY[0x1E69E7CC0];
  v9[3] = MEMORY[0x1E69E7CC0];

  specialized static Prompt.+= infix(_:_:)(a4, v9);
  swift_bridgeObjectRelease_n();
}

uint64_t Prompt.string.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Prompt.string.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Prompt.delimiters.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Prompt.attachments.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t Prompt.description.getter()
{
  v46 = type metadata accessor for Prompt.Attachment(0);
  v1 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for Prompt.Delimiter(0);
  v3 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[1];
  v7 = v0[2];
  v8 = v0[3];
  v48 = *v0;
  v49 = v6;
  v9 = *(v7 + 16);
  if (v9)
  {
    v41 = v8;
    v42 = v1;
    v47[0] = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
    v10 = v47[0];
    v11 = v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v43 = *(v3 + 72);
    do
    {
      v12 = v10;
      outlined init with copy of Prompt.PromptFragment(v11, v5, type metadata accessor for Prompt.Delimiter);
      v13 = Prompt.SpecialToken.description.getter();
      v15 = v14;
      v16 = *&v5[*(v44 + 20)];
      v17 = *&v5[*(v44 + 24)];
      _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v5, type metadata accessor for Prompt.Delimiter);
      v10 = v12;
      v47[0] = v12;
      v18 = *(v12 + 16);
      v19 = *(v10 + 24);
      if (v18 >= v19 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v18 + 1, 1);
        v10 = v47[0];
      }

      *(v10 + 16) = v18 + 1;
      v20 = (v10 + 32 * v18);
      v20[4] = v13;
      v20[5] = v15;
      v20[6] = v16;
      v20[7] = v17;
      v11 += v43;
      --v9;
    }

    while (v9);
    v8 = v41;
    v1 = v42;
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  v21 = *(v8 + 16);
  v22 = MEMORY[0x1E69E7CC0];
  if (v21)
  {
    v43 = v10;
    v47[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21, 0);
    v22 = v47[0];
    v23 = v8 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v44 = *(v1 + 72);
    do
    {
      v24 = v45;
      outlined init with copy of Prompt.PromptFragment(v23, v45, type metadata accessor for Prompt.Attachment);
      v25 = *(v24 + *(v46 + 20));
      v26 = *(v24 + *(v46 + 24));
      v27 = Prompt.AttachmentContent.description.getter();
      v29 = v28;
      _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v24, type metadata accessor for Prompt.Attachment);
      v47[0] = v22;
      v31 = v22[2];
      v30 = v22[3];
      if (v31 >= v30 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1);
        v22 = v47[0];
      }

      v22[2] = v31 + 1;
      v32 = &v22[4 * v31];
      v32[4] = v27;
      v32[5] = v29;
      v32[6] = v25;
      v32[7] = v26;
      v23 += v44;
      --v21;
    }

    while (v21);
    v10 = v43;
  }

  v47[0] = v10;
  specialized Array.append<A>(contentsOf:)(v22);

  specialized MutableCollection<>.sort(by:)(v47);

  v33 = v47[0];
  v34 = *(v47[0] + 16);
  if (v34)
  {
    v35 = v47[0] + 32 * v34 + 16;
    v36 = MEMORY[0x1E69E6158];
    while (v34 <= *(v33 + 16))
    {
      --v34;
      v38 = *(v35 - 16);
      v37 = *(v35 - 8);
      v35 -= 32;

      String.index(_:offsetBy:)();
      v47[0] = v38;
      v47[1] = v37;
      lazy protocol witness table accessor for type String and conformance String();
      String.insert<A>(contentsOf:at:)();

      if (!v34)
      {
        goto LABEL_18;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_18:

    return v48;
  }

  return result;
}

TokenGeneration::Prompt __swiftcall Prompt.init(string:delimiters:attachments:)(Swift::String string, Swift::OpaquePointer delimiters, Swift::OpaquePointer attachments)
{
  *v3 = string;
  *(v3 + 16) = delimiters;
  *(v3 + 24) = attachments;
  result.string = string;
  result.attachments = attachments;
  result.delimiters = delimiters;
  return result;
}

TokenGeneration::Prompt __swiftcall Prompt.init(string:delimiters:)(Swift::String string, Swift::OpaquePointer delimiters)
{
  *v2 = string;
  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = delimiters;
  *(v2 + 24) = v3;
  result.string = string;
  result.delimiters = delimiters;
  return result;
}

TokenGeneration::Prompt __swiftcall Prompt.init(stringLiteral:)(Swift::String stringLiteral)
{
  *v1 = stringLiteral;
  v2 = MEMORY[0x1E69E7CC0];
  v1[1]._countAndFlagsBits = MEMORY[0x1E69E7CC0];
  v1[1]._object = v2;
  result.string = stringLiteral;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Prompt.render(tokenTable:)(Swift::OpaquePointer tokenTable)
{
  v27 = type metadata accessor for Prompt.Delimiter(0);
  v3 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v1[3];
  v21 = *v1;
  v22 = *(v1 + 1);
  v23 = v6;
  Prompt.finalizedPrompt()(&v24);
  v8 = v24;
  v7 = v25;
  v9 = v26;

  v12 = *(v9 + 16);
  if (v12)
  {
    while (v12 <= *(v9 + 16))
    {
      --v12;
      outlined init with copy of Prompt.PromptFragment(v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v12, v5, type metadata accessor for Prompt.Delimiter);
      if (!*(tokenTable._rawValue + 2) || (v13 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v14 & 1) == 0))
      {

        v7 = type metadata accessor for GenerationError(0);
        lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError, &protocol conformance descriptor for GenerationError);
        swift_allocError();
        v8 = v18;
        outlined init with copy of Prompt.PromptFragment(v5, v18, type metadata accessor for Prompt.SpecialToken);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v5, type metadata accessor for Prompt.Delimiter);
        goto LABEL_9;
      }

      v15 = (*(tokenTable._rawValue + 7) + 16 * v13);
      v16 = *v15;
      v17 = v15[1];

      String.index(_:offsetBy:)();
      v21 = v16;
      *&v22 = v17;
      lazy protocol witness table accessor for type String and conformance String();
      String.insert<A>(contentsOf:at:)();
      _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v5, type metadata accessor for Prompt.Delimiter);

      if (!v12)
      {
        v8 = v24;
        v7 = v25;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:

LABEL_9:
    v10 = v8;
    v11 = v7;
  }

  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

uint64_t Prompt.finalizedPrompt()@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for Prompt.Delimiter(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[1];
  v9 = v1[2];
  v8 = v1[3];
  v22 = *v1;
  v23 = v8;
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = MEMORY[0x1E69E7CC0];
    while (v10 != v11)
    {
      if (v11 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_11;
      }

      outlined init with copy of Prompt.PromptFragment(v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11++, v6, type metadata accessor for Prompt.Delimiter);
      v13 = v6[*(type metadata accessor for Prompt.SpecialToken(0) + 28)];
      _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v6, type metadata accessor for Prompt.Delimiter);
      if ((v13 & 1) == 0)
      {
        v15 = v22;
        v14 = v23;
        goto LABEL_9;
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV9DelimiterVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV9DelimiterVGMR);
  v16 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1A8FC9400;
  v4 = v12 + v16;
  if (one-time initialization token for endPrompt != -1)
  {
LABEL_11:
    swift_once();
  }

  v17 = type metadata accessor for Prompt.SpecialToken(0);
  v18 = __swift_project_value_buffer(v17, static Prompt.SpecialToken.endPrompt);
  outlined init with copy of Prompt.PromptFragment(v18, v4, type metadata accessor for Prompt.SpecialToken);
  v15 = v22;
  *(v4 + *(v3 + 20)) = String.count.getter();
  *(v4 + *(v3 + 24)) = 0;
  v14 = v23;
LABEL_9:
  v24 = v9;

  specialized Array.append<A>(contentsOf:)(v12);
  v19 = v24;
  *a1 = v15;
  a1[1] = v7;
  a1[2] = v19;
  a1[3] = v14;
}

uint64_t Prompt.renderPromptFragments(tokenTable:)(uint64_t a1)
{
  v33 = a1;
  v2 = type metadata accessor for Prompt.RenderedSpecialToken(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for Prompt.RenderedPromptFragment(0);
  v32 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV07SpecialA0VSgMd, &_s15TokenGeneration6PromptV07SpecialA0VSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v31 - v12;
  v14 = *(v1 + 24);
  v34 = *v1;
  v35 = *(v1 + 8);
  v36 = v14;
  v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15TokenGeneration6PromptV07SpecialC0V_SDyS2SGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v16 = type metadata accessor for Prompt.SpecialToken(0);
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = v37;
  v18 = Prompt.renderPromptFragments(tokenTable:localizationOverrideMap:stopOnSpecialToken:)(v33, v15, v13);
  outlined destroy of [Regex2BNF.CharacterPredicate](v13, &_s15TokenGeneration6PromptV07SpecialA0VSgMd, &_s15TokenGeneration6PromptV07SpecialA0VSgMR);

  if (!v17)
  {
    v19 = v32;
    v20 = *(v18 + 16);
    if (v20)
    {
      v31[1] = 0;
      v34 = MEMORY[0x1E69E7CC0];
      v21 = v18;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20, 0);
      v18 = v34;
      v22 = *(v19 + 80);
      v31[0] = v21;
      v23 = v21 + ((v22 + 32) & ~v22);
      v32 = *(v19 + 72);
      v33 = v5;
      v37 = v4;
      do
      {
        outlined init with copy of Prompt.PromptFragment(v23, v10, type metadata accessor for Prompt.RenderedPromptFragment);
        _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v10, v7, type metadata accessor for Prompt.RenderedPromptFragment);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v7, v4, type metadata accessor for Prompt.RenderedSpecialToken);
            v25 = *v4;
            v26 = v4[1];

            _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v4, type metadata accessor for Prompt.RenderedSpecialToken);
          }

          else
          {
            _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v7, type metadata accessor for Prompt.RenderedPromptFragment);
            v25 = 0;
            v26 = 0xE000000000000000;
          }
        }

        else
        {
          v25 = *v7;
          v26 = v7[1];
        }

        v34 = v18;
        v28 = *(v18 + 16);
        v27 = *(v18 + 24);
        if (v28 >= v27 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
          v18 = v34;
        }

        *(v18 + 16) = v28 + 1;
        v29 = v18 + 16 * v28;
        *(v29 + 32) = v25;
        *(v29 + 40) = v26;
        v23 += v32;
        --v20;
        v4 = v37;
      }

      while (v20);
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  return v18;
}

uint64_t Prompt.renderCacheablePromptPrefix(tokenTable:localizationOverrideMap:)(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for Prompt.RenderedSpecialToken(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v34 = (v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = type metadata accessor for Prompt.RenderedPromptFragment(0);
  v8 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v10 = (v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = v33 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV07SpecialA0VSgMd, &_s15TokenGeneration6PromptV07SpecialA0VSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v33 - v15;
  v17 = *(v2 + 24);
  v36 = *v2;
  v37 = *(v2 + 8);
  v38 = v17;
  if (one-time initialization token for cacheablePrefixTerminator != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Prompt.SpecialToken(0);
  v19 = __swift_project_value_buffer(v18, static Prompt.SpecialToken.cacheablePrefixTerminator);
  outlined init with copy of Prompt.PromptFragment(v19, v16, type metadata accessor for Prompt.SpecialToken);
  (*(*(v18 - 8) + 56))(v16, 0, 1, v18);
  v20 = Prompt.renderPromptFragments(tokenTable:localizationOverrideMap:stopOnSpecialToken:)(a1, a2, v16);
  outlined destroy of [Regex2BNF.CharacterPredicate](v16, &_s15TokenGeneration6PromptV07SpecialA0VSgMd, &_s15TokenGeneration6PromptV07SpecialA0VSgMR);
  if (!v3)
  {
    v33[1] = 0;
    v21 = *(v20 + 16);
    if (v21)
    {
      v36 = MEMORY[0x1E69E7CC0];
      v22 = v20;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21, 0);
      v20 = v36;
      v23 = *(v8 + 80);
      v33[0] = v22;
      v24 = v22 + ((v23 + 32) & ~v23);
      v35 = *(v8 + 72);
      do
      {
        outlined init with copy of Prompt.PromptFragment(v24, v13, type metadata accessor for Prompt.RenderedPromptFragment);
        _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v13, v10, type metadata accessor for Prompt.RenderedPromptFragment);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v26 = v34;
            _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v10, v34, type metadata accessor for Prompt.RenderedSpecialToken);
            v27 = *v26;
            v28 = v26[1];

            _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v26, type metadata accessor for Prompt.RenderedSpecialToken);
          }

          else
          {
            _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v10, type metadata accessor for Prompt.RenderedPromptFragment);
            v27 = 0;
            v28 = 0xE000000000000000;
          }
        }

        else
        {
          v27 = *v10;
          v28 = v10[1];
        }

        v36 = v20;
        v30 = *(v20 + 16);
        v29 = *(v20 + 24);
        if (v30 >= v29 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
          v20 = v36;
        }

        *(v20 + 16) = v30 + 1;
        v31 = v20 + 16 * v30;
        *(v31 + 32) = v27;
        *(v31 + 40) = v28;
        v24 += v35;
        --v21;
      }

      while (v21);
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  return v20;
}

void *Prompt.promptFragments()()
{
  v2 = v1;
  v3 = type metadata accessor for Prompt.PromptFragment(0);
  v4 = *(v3 - 8);
  v146 = v3;
  v147 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v128 = (&v123 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v141 = &v123 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v140 = &v123 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v139 = (&v123 - v11);
  v132 = type metadata accessor for Prompt.Delimiter(0);
  v12 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v138 = &v123 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v134 = &v123 - v15;
  v131 = type metadata accessor for Prompt.Attachment(0);
  v130 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v137 = &v123 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v133 = &v123 - v18;
  v157 = type metadata accessor for Prompt.PromptMarker(0);
  v19 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v127 = &v123 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v124 = &v123 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v129 = &v123 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v136 = &v123 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v143 = &v123 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v149 = &v123 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v123 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v123 - v35;
  v37 = *(v0 + 24);
  v150 = *v0;
  v151 = *(v0 + 8);
  v152 = v37;
  Prompt.finalizedPrompt()(&v153);
  v38 = v155;
  v144 = v156;
  v150 = MEMORY[0x1E69E7CC0];
  v39 = HIBYTE(v154) & 0xF;
  if ((v154 & 0x2000000000000000) == 0)
  {
    v39 = v153;
  }

  v142 = v39;
  v148 = v153;
  v40 = 7;
  if (((v154 >> 60) & ((v153 & 0x800000000000000) == 0)) != 0)
  {
    v40 = 11;
  }

  v135 = v40;
  v41 = *(v155 + 16);
  v145 = v154;
  if (v41)
  {
    v126 = v2;
    v42 = v155 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v43 = *(v12 + 72);

    v125 = v38;

    v44 = MEMORY[0x1E69E7CC0];
    do
    {
      outlined init with copy of Prompt.PromptFragment(v42, v36, type metadata accessor for Prompt.Delimiter);
      swift_storeEnumTagMultiPayload();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v44[2] + 1, 1, v44);
      }

      v46 = v44[2];
      v45 = v44[3];
      if (v46 >= v45 >> 1)
      {
        v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1, v44);
      }

      v44[2] = v46 + 1;
      _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v36, v44 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v46, type metadata accessor for Prompt.PromptMarker);
      v42 += v43;
      --v41;
    }

    while (v41);

    v2 = v126;
  }

  else
  {

    v44 = MEMORY[0x1E69E7CC0];
  }

  v47 = *(v144 + 16);
  if (v47)
  {
    v48 = v144 + ((*(v130 + 80) + 32) & ~*(v130 + 80));
    v49 = *(v130 + 72);
    do
    {
      outlined init with copy of Prompt.PromptFragment(v48, v33, type metadata accessor for Prompt.Attachment);
      swift_storeEnumTagMultiPayload();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v44[2] + 1, 1, v44);
      }

      v51 = v44[2];
      v50 = v44[3];
      if (v51 >= v50 >> 1)
      {
        v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v44);
      }

      v44[2] = v51 + 1;
      _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v33, v44 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v51, type metadata accessor for Prompt.PromptMarker);
      v48 += v49;
      --v47;
    }

    while (v47);
  }

  v144 = v135 | (v142 << 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_70:
    v44 = specialized _ArrayBuffer._consumeAndCreateNew()(v44);
  }

  v52 = v44[2];
  v142 = v44 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
  v153 = v142;
  v154 = v52;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(&v153);
  v130 = v2;
  v135 = v44[2];
  if (v135)
  {
    v53 = 0;
    v54 = MEMORY[0x1E69E7CC0];
    v55 = v144;
    while (1)
    {
      if (v53 >= v44[2])
      {
        __break(1u);
        goto LABEL_70;
      }

      v57 = v149;
      outlined init with copy of Prompt.PromptFragment(v142 + *(v19 + 72) * v53, v149, type metadata accessor for Prompt.PromptMarker);
      v58 = v57;
      v59 = v143;
      outlined init with copy of Prompt.PromptFragment(v58, v143, type metadata accessor for Prompt.PromptMarker);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v60 = v59;
        v61 = v134;
        _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v60, v134, type metadata accessor for Prompt.Delimiter);
        v62 = type metadata accessor for Prompt.Delimiter;
      }

      else
      {
        v63 = v59;
        v61 = v133;
        _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v63, v133, type metadata accessor for Prompt.Attachment);
        v62 = type metadata accessor for Prompt.Attachment;
      }

      _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v61, v62);
      v64 = String.index(_:offsetBy:limitedBy:)();
      if (v65)
      {
        break;
      }

      v2 = v64;
      if (v64 >> 14 >= v55 >> 14)
      {
        v73 = v136;
      }

      else
      {
        v66 = String.subscript.getter();
        v67 = MEMORY[0x1AC57C040](v66);
        v69 = v68;

        v70 = v139;
        *v139 = v67;
        v70[1] = v69;
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v54[2] + 1, 1, v54);
        }

        v72 = v54[2];
        v71 = v54[3];
        v73 = v136;
        if (v72 >= v71 >> 1)
        {
          v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v72 + 1, 1, v54);
        }

        v54[2] = v72 + 1;
        _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v139, v54 + ((*(v147 + 80) + 32) & ~*(v147 + 80)) + *(v147 + 72) * v72, type metadata accessor for Prompt.PromptFragment);
      }

      outlined init with copy of Prompt.PromptFragment(v149, v73, type metadata accessor for Prompt.PromptMarker);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v74 = v138;
        _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v73, v138, type metadata accessor for Prompt.Delimiter);
        outlined init with copy of Prompt.PromptFragment(v74, v140, type metadata accessor for Prompt.Delimiter);
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v54[2] + 1, 1, v54);
        }

        v76 = v54[2];
        v75 = v54[3];
        v77 = v76 + 1;
        if (v76 >= v75 >> 1)
        {
          v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v75 > 1), v76 + 1, 1, v54);
        }

        _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v138, type metadata accessor for Prompt.Delimiter);
        v56 = v140;
      }

      else
      {
        v78 = v137;
        _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v73, v137, type metadata accessor for Prompt.Attachment);
        outlined init with copy of Prompt.PromptFragment(v78, v141, type metadata accessor for Prompt.Attachment);
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v54[2] + 1, 1, v54);
        }

        v76 = v54[2];
        v79 = v54[3];
        v77 = v76 + 1;
        if (v76 >= v79 >> 1)
        {
          v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v79 > 1), v76 + 1, 1, v54);
        }

        _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v137, type metadata accessor for Prompt.Attachment);
        v56 = v141;
      }

      ++v53;
      _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v149, type metadata accessor for Prompt.PromptMarker);
      v54[2] = v77;
      _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v56, v54 + ((*(v147 + 80) + 32) & ~*(v147 + 80)) + *(v147 + 72) * v76, type metadata accessor for Prompt.PromptFragment);
      v150 = v54;
      v55 = v2;
      if (v135 == v53)
      {
        goto LABEL_49;
      }
    }

    if (one-time initialization token for prompt != -1)
    {
      swift_once();
    }

    v94 = type metadata accessor for Logger();
    __swift_project_value_buffer(v94, static Log.prompt);
    v95 = v129;
    outlined init with copy of Prompt.PromptFragment(v149, v129, type metadata accessor for Prompt.PromptMarker);
    swift_bridgeObjectRetain_n();
    v96 = Logger.logObject.getter();
    v97 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v153 = v99;
      *v98 = 136315394;
      v100 = v124;
      outlined init with copy of Prompt.PromptFragment(v95, v124, type metadata accessor for Prompt.PromptMarker);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v101 = v134;
        _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v100, v134, type metadata accessor for Prompt.Delimiter);
        v102 = Prompt.Delimiter.description.getter();
        v104 = v103;
        v105 = type metadata accessor for Prompt.Delimiter;
      }

      else
      {
        v101 = v133;
        _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v100, v133, type metadata accessor for Prompt.Attachment);
        v102 = Prompt.Attachment.description.getter();
        v104 = v107;
        v105 = type metadata accessor for Prompt.Attachment;
      }

      _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v101, v105);
      _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v129, type metadata accessor for Prompt.PromptMarker);
      v108 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v104, &v153);

      *(v98 + 4) = v108;
      *(v98 + 12) = 2050;
      v109 = String.count.getter();

      *(v98 + 14) = v109;

      _os_log_impl(&dword_1A8E85000, v96, v97, "Failed to create prompt fragments since prompt marker %s position for prompt with string length %{public}ld is invalid", v98, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v99);
      MEMORY[0x1AC57DBF0](v99, -1, -1);
      MEMORY[0x1AC57DBF0](v98, -1, -1);

      v106 = v127;
    }

    else
    {

      swift_bridgeObjectRelease_n();
      _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v95, type metadata accessor for Prompt.PromptMarker);
      v106 = v127;
    }

    v110 = String.count.getter();

    outlined init with copy of Prompt.PromptFragment(v149, v106, type metadata accessor for Prompt.PromptMarker);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v111 = v134;
      _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v106, v134, type metadata accessor for Prompt.Delimiter);
      type metadata accessor for GenerationError(0);
      lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError, &protocol conformance descriptor for GenerationError);
      swift_allocError();
      v113 = v112;
      v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV07SpecialA0V_Si13tokenPositionSi16promptStringSizetMd, &_s15TokenGeneration6PromptV07SpecialA0V_Si13tokenPositionSi16promptStringSizetMR);
      v115 = *(v114 + 48);
      v116 = *(v114 + 64);
      outlined init with copy of Prompt.PromptFragment(v111, v113, type metadata accessor for Prompt.SpecialToken);
      *(v113 + v115) = *(v111 + *(v132 + 20));
      *(v113 + v116) = v110;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v117 = type metadata accessor for Prompt.Delimiter;
      v118 = v111;
    }

    else
    {
      v119 = v133;
      _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v106, v133, type metadata accessor for Prompt.Attachment);
      type metadata accessor for GenerationError(0);
      lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError, &protocol conformance descriptor for GenerationError);
      swift_allocError();
      v121 = v120;
      v122 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV10AttachmentV_Si16promptStringSizetMd, &_s15TokenGeneration6PromptV10AttachmentV_Si16promptStringSizetMR) + 48);
      outlined init with copy of Prompt.PromptFragment(v119, v121, type metadata accessor for Prompt.Attachment);
      *(v121 + v122) = v110;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v117 = type metadata accessor for Prompt.Attachment;
      v118 = v119;
    }

    _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v118, v117);
    return _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v149, type metadata accessor for Prompt.PromptMarker);
  }

  else
  {
    v54 = MEMORY[0x1E69E7CC0];
    v2 = v144;
LABEL_49:

    if (v2 >= 0x4000)
    {
      v80 = String.subscript.getter();
      v82 = v81;
      v84 = v83;
      v86 = v85;

      v87 = MEMORY[0x1AC57C040](v80, v82, v84, v86);
      v89 = v88;

      v90 = v128;
      *v128 = v87;
      *(v90 + 8) = v89;
      swift_storeEnumTagMultiPayload();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v54[2] + 1, 1, v54);
      }

      v92 = v54[2];
      v91 = v54[3];
      if (v92 >= v91 >> 1)
      {
        v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v91 > 1), v92 + 1, 1, v54);
      }

      v54[2] = v92 + 1;
      _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v90, v54 + ((*(v147 + 80) + 32) & ~*(v147 + 80)) + *(v147 + 72) * v92, type metadata accessor for Prompt.PromptFragment);
      v150 = v54;
    }

    else
    {
    }

    specialized MutableCollection<>.reverse()();
    return v150;
  }
}

uint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v57 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v68 = &v54 - v6;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV07SpecialA0V3key_yp5valuetMd, &_s15TokenGeneration6PromptV07SpecialA0V3key_yp5valuetMR);
  MEMORY[0x1EEE9AC00](v67);
  v66 = &v54 - v7;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV07SpecialA0V_yptMd, &_s15TokenGeneration6PromptV07SpecialA0V_yptMR);
  MEMORY[0x1EEE9AC00](v65);
  v64 = &v54 - v8;
  v9 = type metadata accessor for Prompt.SpecialToken(0);
  v62 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v73 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV07SpecialA0V3key_SS5valuetMd, &_s15TokenGeneration6PromptV07SpecialA0V3key_SS5valuetMR);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v59 = &v54 - v13;
  v70 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15TokenGeneration6PromptV07SpecialC0VypGMd, &_ss18_DictionaryStorageCy15TokenGeneration6PromptV07SpecialC0VypGMR);
    v14 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC8];
  }

  v15 = v70 + 64;
  v16 = 1 << *(v70 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(v70 + 64);
  v19 = (v16 + 63) >> 6;
  v58 = (v3 + 48);
  v56 = (v3 + 32);
  v55 = (v3 + 8);
  v20 = v14 + 8;

  v22 = 0;
  v72 = v14;
  v69 = v2;
  v63 = v9;
  while (v18)
  {
LABEL_15:
    v25 = __clz(__rbit64(v18)) | (v22 << 6);
    v26 = v70;
    v27 = *(v70 + 48);
    v71 = *(v62 + 72);
    v28 = v59;
    outlined init with copy of Prompt.PromptFragment(v27 + v71 * v25, v59, type metadata accessor for Prompt.SpecialToken);
    v29 = (*(v26 + 56) + 16 * v25);
    v30 = *v29;
    v31 = v29[1];
    v32 = v61;
    v33 = (v28 + *(v61 + 48));
    *v33 = v30;
    v33[1] = v31;
    v34 = v60;
    outlined init with take of (key: Prompt.SpecialToken, value: String)(v28, v60);
    v35 = (v34 + *(v32 + 48));
    v36 = *(v67 + 48);
    v37 = v34;
    v38 = v66;
    _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v37, v66, type metadata accessor for Prompt.SpecialToken);
    v39 = v35[1];
    v74 = *v35;
    v75 = v39;

    swift_dynamicCast();
    v40 = *(v65 + 48);
    v41 = v64;
    _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v38, v64, type metadata accessor for Prompt.SpecialToken);
    outlined init with take of Any((v38 + v36), (v41 + v40));
    v42 = v73;
    _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v41, v73, type metadata accessor for Prompt.SpecialToken);
    outlined init with take of Any((v41 + v40), v76);
    Hasher.init(_seed:)();
    String.hash(into:)();
    v43 = v63;
    v44 = v68;
    outlined init with copy of (String, Any)(v42 + *(v63 + 20), v68, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    v45 = v69;
    if ((*v58)(v44, 1, v69) == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      v46 = v57;
      (*v56)(v57, v44, v45);
      Hasher._combine(_:)(1u);
      lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
      dispatch thunk of Hashable.hash(into:)();
      (*v55)(v46, v45);
    }

    if (*(v73 + *(v43 + 24) + 8))
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    Hasher._combine(_:)(*(v73 + *(v43 + 28)));
    result = Hasher._finalize()();
    v14 = v72;
    v47 = -1 << *(v72 + 32);
    v48 = result & ~v47;
    v49 = v48 >> 6;
    if (((-1 << v48) & ~v20[v48 >> 6]) == 0)
    {
      v50 = 0;
      v51 = (63 - v47) >> 6;
      while (++v49 != v51 || (v50 & 1) == 0)
      {
        v52 = v49 == v51;
        if (v49 == v51)
        {
          v49 = 0;
        }

        v50 |= v52;
        v53 = v20[v49];
        if (v53 != -1)
        {
          v23 = __clz(__rbit64(~v53)) + (v49 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_32;
    }

    v23 = __clz(__rbit64((-1 << v48) & ~v20[v48 >> 6])) | v48 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v18 &= v18 - 1;
    *(v20 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v73, v14[6] + v23 * v71, type metadata accessor for Prompt.SpecialToken);
    result = outlined init with take of Any(v76, (v14[7] + 32 * v23));
    ++v14[2];
  }

  while (1)
  {
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v24 >= v19)
    {

      return v14;
    }

    v18 = *(v15 + 8 * v24);
    ++v22;
    if (v18)
    {
      v22 = v24;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t Prompt.renderSpecialToken(delimiter:tokenTable:localizationOverrideMap:)(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v95 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v87 - v6;
  v8 = type metadata accessor for Prompt.SpecialToken(0);
  MEMORY[0x1EEE9AC00](v8);
  v90 = (&v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v87 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v87 - v14);
  v17 = *a1;
  v16 = a1[1];
  v19 = *(v18 + 20);
  v20 = type metadata accessor for Locale();
  (*(*(v20 - 8) + 56))(v15 + v19, 1, 1, v20);
  v92 = v17;
  v93 = v8;
  *v15 = v17;
  v15[1] = v16;
  v21 = (v15 + v8[6]);
  *v21 = 0;
  v21[1] = 0;
  *(v15 + v8[7]) = 0;
  v22 = v8[5];
  v96 = a1;
  v23 = a1 + v22;
  v24 = v7;
  v25 = v95;
  outlined init with copy of (String, Any)(v23, v24, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);

  v91 = v16;

  v94 = a3;
  v98 = v15;
  v26 = specialized static Prompt.getLocalizationOverrideValue(from:token:locale:)(a3, v15, v24);
  if (v27)
  {
    v28 = v26;
    v29 = v27;
    if (one-time initialization token for prompt != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Log.prompt);
    outlined init with copy of Prompt.PromptFragment(v98, v12, type metadata accessor for Prompt.SpecialToken);

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      *&v100 = v88;
      *v33 = 136643075;
      v89 = v24;
      v35 = *v12;
      v34 = v12[1];

      _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v12, type metadata accessor for Prompt.SpecialToken);
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v34, &v100);
      v24 = v89;

      *(v33 + 4) = v36;
      *(v33 + 12) = 2085;
      *(v33 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v100);
      _os_log_impl(&dword_1A8E85000, v31, v32, "Updating value of special token: %{sensitive}s to %{sensitive}s", v33, 0x16u);
      v37 = v88;
      swift_arrayDestroy();
      MEMORY[0x1AC57DBF0](v37, -1, -1);
      MEMORY[0x1AC57DBF0](v33, -1, -1);
    }

    else
    {

      _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v12, type metadata accessor for Prompt.SpecialToken);
    }

    v101 = MEMORY[0x1E69E6158];
    *&v100 = v28;
    *(&v100 + 1) = v29;
    outlined init with take of Any(&v100, v99);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v102 = v25;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v99, v98, isUniquelyReferenced_nonNull_native);
    v25 = v102;
  }

  v39 = v97;
  v40 = Prompt.renderSpecialToken(delimiter:tokenTable:)(v96, v25);
  if (v39)
  {
    outlined destroy of [Regex2BNF.CharacterPredicate](v24, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);

    return _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v98, type metadata accessor for Prompt.SpecialToken);
  }

  v43 = v41;
  v97 = v40;

  if (one-time initialization token for localeInstruction != -1)
  {
    swift_once();
  }

  v44 = __swift_project_value_buffer(v93, static Prompt.SpecialToken.localeInstruction);
  v45 = specialized static Prompt.getLocalizationOverrideValue(from:token:locale:)(v94, v44, v24);
  if (v46)
  {
    v47 = v46;
    v48 = v45;
    if (one-time initialization token for localeInstructionInjectionLocation != -1)
    {
      swift_once();
    }

    v49 = __swift_project_value_buffer(v93, static Prompt.SpecialToken.localeInstructionInjectionLocation);
    v50 = specialized static Prompt.getLocalizationOverrideValue(from:token:locale:)(v94, v49, v24);
    v52 = v24;
    if (v51)
    {
      v53 = v51;
      v89 = v52;
      v96 = v50;
      *&v100 = v50;
      *(&v100 + 1) = v51;
      *&v99[0] = 58;
      *(&v99[0] + 1) = 0xE100000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      v54 = StringProtocol.components<A>(separatedBy:)();
      v55 = v54;
      v56 = v54[2];
      if (v56)
      {
        v57 = v43;
        if ((v54[4] != v92 || v54[5] != v91) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          outlined destroy of [Regex2BNF.CharacterPredicate](v89, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);

          _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v98, type metadata accessor for Prompt.SpecialToken);
          return v97;
        }

        v58 = &v55[2 * v56 + 4];
        v59 = *(v58 - 16);
        v60 = *(v58 - 8);

        v61._countAndFlagsBits = v59;
        v61._object = v60;
        v62 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Prompt.SpecialToken.LocaleInstructionPosition.init(rawValue:), v61);

        if (v62 == 1)
        {

          *&v100 = v97;
          *(&v100 + 1) = v57;

          v63 = v48;
          v64 = v47;
          goto LABEL_34;
        }

        if (!v62)
        {

          *&v100 = v48;
          *(&v100 + 1) = v47;

          v63 = v97;
          v64 = v57;
LABEL_34:
          MEMORY[0x1AC57C120](v63, v64);

          v73 = *(&v100 + 1);
          v97 = v100;

          v74 = v90;
          if (one-time initialization token for prompt != -1)
          {
            swift_once();
          }

          v75 = type metadata accessor for Logger();
          __swift_project_value_buffer(v75, static Log.prompt);
          outlined init with copy of Prompt.PromptFragment(v98, v74, type metadata accessor for Prompt.SpecialToken);

          v76 = Logger.logObject.getter();
          v77 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v76, v77))
          {
            v78 = swift_slowAlloc();
            v79 = swift_slowAlloc();
            *&v100 = v79;
            *v78 = 136643075;
            v80 = v73;
            v81 = *v74;
            v82 = v74[1];

            _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v74, type metadata accessor for Prompt.SpecialToken);
            v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v82, &v100);

            *(v78 + 4) = v83;
            *(v78 + 12) = 2085;
            v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, v80, &v100);

            *(v78 + 14) = v84;
            _os_log_impl(&dword_1A8E85000, v76, v77, "Value of special token: %{sensitive}s after adding locale instruction: %{sensitive}s", v78, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1AC57DBF0](v79, -1, -1);
            MEMORY[0x1AC57DBF0](v78, -1, -1);
          }

          else
          {

            _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v74, type metadata accessor for Prompt.SpecialToken);
          }

          outlined destroy of [Regex2BNF.CharacterPredicate](v89, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
          v65 = v98;
          goto LABEL_27;
        }

        if (one-time initialization token for prompt != -1)
        {
          swift_once();
        }

        v85 = type metadata accessor for Logger();
        __swift_project_value_buffer(v85, static Log.prompt);

        v67 = Logger.logObject.getter();
        v68 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          *&v100 = v70;
          *v69 = 136446210;
          v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v53, &v100);

          *(v69 + 4) = v86;
          v72 = "Invalid locale instruction injection location as position is not valid: %{public}s";
          goto LABEL_45;
        }
      }

      else
      {

        if (one-time initialization token for prompt != -1)
        {
          swift_once();
        }

        v66 = type metadata accessor for Logger();
        __swift_project_value_buffer(v66, static Log.prompt);

        v67 = Logger.logObject.getter();
        v68 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          *&v100 = v70;
          *v69 = 136446210;
          v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v53, &v100);

          *(v69 + 4) = v71;
          v72 = "Invalid locale instruction injection location as token identifier not provided: %{public}s";
LABEL_45:
          _os_log_impl(&dword_1A8E85000, v67, v68, v72, v69, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v70);
          MEMORY[0x1AC57DBF0](v70, -1, -1);
          MEMORY[0x1AC57DBF0](v69, -1, -1);
LABEL_47:

          type metadata accessor for GenerationError(0);
          lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError, &protocol conformance descriptor for GenerationError);
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          outlined destroy of [Regex2BNF.CharacterPredicate](v89, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
          return _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v98, type metadata accessor for Prompt.SpecialToken);
        }
      }

      goto LABEL_47;
    }

    outlined destroy of [Regex2BNF.CharacterPredicate](v24, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  }

  else
  {
    outlined destroy of [Regex2BNF.CharacterPredicate](v24, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  }

  v65 = v98;
LABEL_27:
  _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v65, type metadata accessor for Prompt.SpecialToken);
  return v97;
}

uint64_t Prompt.renderSpecialToken(delimiter:tokenTable:)(unint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for Prompt.SpecialToken(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v7 = a1[1];
  v10 = *(v9 + 20);
  v11 = type metadata accessor for Locale();
  (*(*(v11 - 8) + 56))(&v6[v10], 1, 1, v11);
  *v6 = v8;
  *(v6 + 1) = v7;
  v12 = &v6[*(v4 + 24)];
  *v12 = 0;
  *(v12 + 1) = 0;
  v6[*(v4 + 28)] = 0;
  if (__PAIR128__(v7, v8) == __PAIR128__(0xEE006C6F6F742E65, 0x6C6F722E74616863) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v13 = *(a2 + 16);

    if (!v13 || (specialized __RawDictionaryStorage.find<A>(_:)(v6), (v14 & 1) == 0))
    {
      _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v6, type metadata accessor for Prompt.SpecialToken);
      return 0xD000000000000012;
    }
  }

  else
  {
  }

  if (*(a2 + 16) && (v16 = specialized __RawDictionaryStorage.find<A>(_:)(v6), (v17 & 1) != 0) && (outlined init with copy of Any(*(a2 + 56) + 32 * v16, v27), (swift_dynamicCast() & 1) != 0))
  {
    v27[0] = v25;
    v27[1] = v26;
    v25 = 0x7D7D64697B7BLL;
    v26 = 0xE600000000000000;
    v18 = (a1 + *(v4 + 24));
    v19 = v18[1];
    if (v19)
    {
      v20 = *v18;
      v21 = v19;
    }

    else
    {
      v20 = 0;
      v21 = 0xE000000000000000;
    }

    v24[0] = v20;
    v24[1] = v21;
    lazy protocol witness table accessor for type String and conformance String();

    v23 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

    _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v6, type metadata accessor for Prompt.SpecialToken);

    return v23;
  }

  else
  {
    type metadata accessor for GenerationError(0);
    lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError, &protocol conformance descriptor for GenerationError);
    swift_allocError();
    outlined init with copy of Prompt.PromptFragment(a1, v22, type metadata accessor for Prompt.SpecialToken);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v6, type metadata accessor for Prompt.SpecialToken);
  }
}

uint64_t closure #2 in static Prompt.getLocalizationOverrideValue(from:token:locale:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  if (v2)
  {
    v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(*(*a1 + 16), 0);
    v4 = specialized Sequence._copySequenceContents(initializing:)(&v15, v3 + 4, v2, v1);
    v5 = v15;

    outlined consume of Set<NonTerminalSymbol>.Iterator._Variant(v5);
    if (v4 != v2)
    {
      __break(1u);
    }
  }

  v6 = objc_opt_self();
  isa = Array._bridgeToObjectiveC()().super.isa;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1A8FC9400;
  *(v8 + 32) = Locale.identifier.getter();
  *(v8 + 40) = v9;
  v10 = Array._bridgeToObjectiveC()().super.isa;

  v11 = [v6 preferredLocalizationsFromArray:isa forPreferences:v10];

  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v12 + 16))
  {
    v13 = *(v12 + 32);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

BOOL closure #1 in Prompt.promptFragments()(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = type metadata accessor for Prompt.Delimiter(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Prompt.Attachment(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Prompt.PromptMarker(0);
  MEMORY[0x1EEE9AC00](v9);
  v46 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v44 = &v44 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v45 = &v44 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v44 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v44 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v44 - v22;
  v48 = a1;
  outlined init with copy of Prompt.PromptFragment(a1, &v44 - v22, type metadata accessor for Prompt.PromptMarker);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v49 = v3;
  if (EnumCaseMultiPayload == 1)
  {
    _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v23, v5, type metadata accessor for Prompt.Delimiter);
    v25 = *&v5[*(v3 + 20)];
    v26 = type metadata accessor for Prompt.Delimiter;
    v27 = v5;
  }

  else
  {
    _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v23, v8, type metadata accessor for Prompt.Attachment);
    v25 = *&v8[*(v6 + 20)];
    v26 = type metadata accessor for Prompt.Attachment;
    v27 = v8;
  }

  _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v27, v26);
  v28 = v47;
  outlined init with copy of Prompt.PromptFragment(v47, v20, type metadata accessor for Prompt.PromptMarker);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v20, v5, type metadata accessor for Prompt.Delimiter);
    v29 = *&v5[*(v49 + 20)];
    v30 = type metadata accessor for Prompt.Delimiter;
    v31 = v5;
  }

  else
  {
    _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v20, v8, type metadata accessor for Prompt.Attachment);
    v29 = *&v8[*(v6 + 20)];
    v30 = type metadata accessor for Prompt.Attachment;
    v31 = v8;
  }

  _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v31, v30);
  if (v25 != v29)
  {
    outlined init with copy of Prompt.PromptFragment(v28, v17, type metadata accessor for Prompt.PromptMarker);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v17, v5, type metadata accessor for Prompt.Delimiter);
      v35 = v49;
      v34 = *&v5[*(v49 + 20)];
      _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v5, type metadata accessor for Prompt.Delimiter);
    }

    else
    {
      _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v17, v8, type metadata accessor for Prompt.Attachment);
      v34 = *&v8[*(v6 + 20)];
      _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v8, type metadata accessor for Prompt.Attachment);
      v35 = v49;
    }

    v38 = v45;
    outlined init with copy of Prompt.PromptFragment(v48, v45, type metadata accessor for Prompt.PromptMarker);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v38, v5, type metadata accessor for Prompt.Delimiter);
      v37 = *(v35 + 20);
      goto LABEL_18;
    }

    _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v38, v8, type metadata accessor for Prompt.Attachment);
    v42 = *(v6 + 20);
LABEL_21:
    v39 = *&v8[v42];
    v40 = type metadata accessor for Prompt.Attachment;
    v41 = v8;
    goto LABEL_22;
  }

  v32 = v44;
  outlined init with copy of Prompt.PromptFragment(v28, v44, type metadata accessor for Prompt.PromptMarker);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v32, v5, type metadata accessor for Prompt.Delimiter);
    v33 = v49;
    v34 = *&v5[*(v49 + 24)];
    _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v5, type metadata accessor for Prompt.Delimiter);
  }

  else
  {
    _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v32, v8, type metadata accessor for Prompt.Attachment);
    v34 = *&v8[*(v6 + 24)];
    _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v8, type metadata accessor for Prompt.Attachment);
    v33 = v49;
  }

  v36 = v46;
  outlined init with copy of Prompt.PromptFragment(v48, v46, type metadata accessor for Prompt.PromptMarker);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v36, v8, type metadata accessor for Prompt.Attachment);
    v42 = *(v6 + 24);
    goto LABEL_21;
  }

  _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v36, v5, type metadata accessor for Prompt.Delimiter);
  v37 = *(v33 + 24);
LABEL_18:
  v39 = *&v5[v37];
  v40 = type metadata accessor for Prompt.Delimiter;
  v41 = v5;
LABEL_22:
  _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v41, v40);
  return v34 < v39;
}

Swift::Int __swiftcall Prompt.overestimatedTokenCount()()
{
  v1 = *(v0 + 16);
  v2 = String.count.getter();
  v3 = *(v1 + 16);

  v4 = String.Iterator.next()();
  if (v4.value._object)
  {
    countAndFlagsBits = v4.value._countAndFlagsBits;
    object = v4.value._object;
    while (1)
    {
      if (countAndFlagsBits == 2573 && object == 0xE200000000000000)
      {
        goto LABEL_4;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_4;
      }

      if ((object & 0x2000000000000000) != 0)
      {
        v9 = HIBYTE(object) & 0xF;
      }

      else
      {
        v9 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (!v9)
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      if ((object & 0x1000000000000000) != 0)
      {
        v14 = String.UnicodeScalarView._foreignIndex(after:)();
      }

      else
      {
        if ((object & 0x2000000000000000) != 0)
        {
          v11 = countAndFlagsBits;
        }

        else
        {
          v10 = ((countAndFlagsBits & 0x1000000000000000) != 0 ? (object & 0xFFFFFFFFFFFFFFFLL) + 32 : _StringObject.sharedUTF8.getter());
          v11 = *v10;
        }

        v12 = v11;
        v13 = (__clz(~v11) - 24) << 16;
        v14 = v12 < 0 ? v13 : 65541;
      }

      if (v14 >> 14 != 4 * v9)
      {
        break;
      }

      result = specialized Collection.first.getter(countAndFlagsBits, object);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_43;
      }

      if ((result & 0xFFFFFF80) != 0)
      {
        break;
      }

      result = specialized Collection.first.getter(countAndFlagsBits, object);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_44;
      }

      v15 = result;

      if ((v15 & 0xFFFFFF00) != 0)
      {
        goto LABEL_37;
      }

LABEL_5:
      v7 = String.Iterator.next()();
      countAndFlagsBits = v7.value._countAndFlagsBits;
      object = v7.value._object;
      if (!v7.value._object)
      {
        goto LABEL_30;
      }
    }

    MEMORY[0x1AC57C110](countAndFlagsBits, object);
LABEL_4:

    goto LABEL_5;
  }

LABEL_30:

  v16 = String.count.getter();

  v17 = ceil(v2 / 3.0);
  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_38;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v17 >= 9.22337204e18)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v18 = v17 + v16;
  if (!__OFADD__(v17, v16))
  {
    result = v18 + v3;
    if (!__OFADD__(v18, v3))
    {
      return result;
    }

    goto LABEL_42;
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t Prompt.StringInterpolation.appendInterpolation(if:token:)(uint64_t (*a1)(__n128), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = type metadata accessor for Prompt.Delimiter(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - v13;
  result = a1(v12);
  if ((result & 1) == 0)
  {
    return result;
  }

  outlined init with copy of Prompt.PromptFragment(a3, v14, type metadata accessor for Prompt.SpecialToken);
  v16 = String.count.getter();
  v17 = *(v3 + 16);
  v18 = v17[2];
  v19 = *(*(v4 + 24) + 16);
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
    __break(1u);
    goto LABEL_9;
  }

  *&v14[*(v7 + 20)] = v16;
  *&v14[*(v7 + 24)] = v21;
  outlined init with copy of Prompt.PromptFragment(v14, v10, type metadata accessor for Prompt.Delimiter);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_9:
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18 + 1, 1, v17);
  }

  v23 = v17[2];
  v22 = v17[3];
  if (v23 >= v22 >> 1)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v17);
  }

  _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v14, type metadata accessor for Prompt.Delimiter);
  v17[2] = v23 + 1;
  result = _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v10, v17 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v23, type metadata accessor for Prompt.Delimiter);
  *(v4 + 16) = v17;
  return result;
}

void *protocol witness for StringInterpolationProtocol.init(literalCapacity:interpolationCount:) in conformance Prompt.StringInterpolation@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  MEMORY[0x1AC57C060]();
  v4 = a1 & ~(a1 >> 63);
  v5 = MEMORY[0x1E69E7CC0];
  a2[2] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0, MEMORY[0x1E69E7CC0]);
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0, v5);
  a2[3] = result;
  return result;
}

uint64_t Prompt.Rendering.originalPrompt.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Prompt.Rendering.renderedString.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Prompt.Rendering.detokenizedString.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t Prompt.Rendering.source.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[10];
  v3 = v1[11];
  v4 = v1[12];
  *a1 = v1[9];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

void __swiftcall Prompt.Rendering.init(segments:renderedString:originalPrompt:tokenIDs:)(TokenGeneration::Prompt::Rendering *__return_ptr retstr, Swift::OpaquePointer segments, Swift::String renderedString, Swift::String originalPrompt, Swift::OpaquePointer tokenIDs)
{
  object = originalPrompt._object;
  countAndFlagsBits = originalPrompt._countAndFlagsBits;
  v8 = renderedString._object;
  v9 = renderedString._countAndFlagsBits;
  if (one-time initialization token for prompt != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Log.prompt);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1A8E85000, v13, v14, "Using deprecated initialize: Prompt source will be bogus!", v15, 2u);
    MEMORY[0x1AC57DBF0](v15, -1, -1);
  }

  v16 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  retstr->originalPrompt._countAndFlagsBits = countAndFlagsBits;
  retstr->originalPrompt._object = object;
  retstr->renderedString._countAndFlagsBits = v9;
  retstr->renderedString._object = v8;
  retstr->segments = segments;
  retstr->tokenIDs = tokenIDs;
  retstr->detokenizedString.value._countAndFlagsBits = 0;
  retstr->detokenizedString.value._object = 0;
  retstr->userInfo._rawValue = v16;
  retstr->source.identifier._countAndFlagsBits = 0;
  retstr->source.identifier._object = 0xE000000000000000;
  retstr->source.version._countAndFlagsBits = 0;
  retstr->source.version._object = 0xE000000000000000;
}

TokenGeneration::Prompt::Rendering::Source __swiftcall Prompt.Rendering.Source.init(identifier:version:)(Swift::String identifier, Swift::String version)
{
  *v2 = identifier;
  v2[1] = version;
  result.version = version;
  result.identifier = identifier;
  return result;
}

void __swiftcall Prompt.Rendering.init(source:segments:renderedString:originalPrompt:tokenIDs:userInfo:)(TokenGeneration::Prompt::Rendering *__return_ptr retstr, TokenGeneration::Prompt::Rendering::Source source, Swift::OpaquePointer segments, Swift::String renderedString, Swift::String originalPrompt, Swift::OpaquePointer tokenIDs, Swift::OpaquePointer userInfo)
{
  v7 = *(source.identifier._countAndFlagsBits + 16);
  v8 = *(source.identifier._countAndFlagsBits + 24);
  retstr->source.identifier = *source.identifier._countAndFlagsBits;
  retstr->source.version._countAndFlagsBits = v7;
  retstr->source.version._object = v8;
  retstr->renderedString._countAndFlagsBits = source.version._countAndFlagsBits;
  retstr->renderedString._object = source.version._object;
  retstr->originalPrompt._countAndFlagsBits = segments._rawValue;
  retstr->originalPrompt._object = renderedString._countAndFlagsBits;
  retstr->segments._rawValue = source.identifier._object;
  retstr->tokenIDs._rawValue = renderedString._object;
  retstr->detokenizedString.value._object = 0;
  retstr->userInfo._rawValue = originalPrompt._countAndFlagsBits;
  retstr->detokenizedString.value._countAndFlagsBits = 0;
}

void __swiftcall Prompt.Rendering.init(source:segments:renderedString:originalPrompt:tokenIDs:userInfo:detokenizedString:)(TokenGeneration::Prompt::Rendering *__return_ptr retstr, TokenGeneration::Prompt::Rendering::Source source, Swift::OpaquePointer segments, Swift::String renderedString, Swift::String originalPrompt, Swift::OpaquePointer tokenIDs, Swift::OpaquePointer userInfo, Swift::String_optional detokenizedString)
{
  v8 = *(source.identifier._countAndFlagsBits + 16);
  v9 = *(source.identifier._countAndFlagsBits + 24);
  retstr->source.identifier = *source.identifier._countAndFlagsBits;
  retstr->source.version._countAndFlagsBits = v8;
  retstr->source.version._object = v9;
  retstr->renderedString._countAndFlagsBits = source.version._countAndFlagsBits;
  retstr->renderedString._object = source.version._object;
  retstr->originalPrompt._countAndFlagsBits = segments._rawValue;
  retstr->originalPrompt._object = renderedString._countAndFlagsBits;
  retstr->segments._rawValue = source.identifier._object;
  retstr->tokenIDs._rawValue = renderedString._object;
  retstr->detokenizedString.value._object = tokenIDs._rawValue;
  retstr->userInfo._rawValue = originalPrompt._countAndFlagsBits;
  retstr->detokenizedString.value._countAndFlagsBits = originalPrompt._object;
}

uint64_t Prompt.Rendering.Source.version.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Prompt.Rendering.Source.version.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t static Prompt.Rendering.Source.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t Prompt.Rendering.Source.hash(into:)(uint64_t a1)
{
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int Prompt.Rendering.Source.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Prompt.Rendering.Source()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Prompt.Rendering.Source(uint64_t a1)
{
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Prompt.Rendering.Source(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Prompt.Rendering.Source(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t Prompt.Rendering.hash(into:)(uint64_t a1)
{
  v4 = v1[4];
  v3 = v1[5];
  v5 = v1[7];
  v6 = v1[8];
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x1AC57CB80](*(v4 + 16));
  v7 = *(v4 + 16);
  if (v7)
  {
    v8 = v4 + 40;
    do
    {

      String.hash(into:)();

      v8 += 16;
      --v7;
    }

    while (v7);
  }

  MEMORY[0x1AC57CB80](*(v3 + 16));
  v9 = *(v3 + 16);
  if (v9)
  {
    v10 = (v3 + 32);
    do
    {
      v11 = *v10++;
      MEMORY[0x1AC57CB80](v11);
      --v9;
    }

    while (v9);
  }

  if (v5)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  specialized Dictionary<>.hash(into:)(a1, v6);
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int Prompt.Rendering.hashValue.getter()
{
  Hasher.init(_seed:)();
  Prompt.Rendering.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Prompt.Rendering()
{
  Hasher.init(_seed:)();
  Prompt.Rendering.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Prompt.Rendering(uint64_t a1)
{
  Hasher.init(_seed:)();
  Prompt.Rendering.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t static Prompt.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || !_sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration6PromptV9DelimiterV_Tt1g5(v2, v5))
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration6PromptV10AttachmentV_Tt1g5(v3, v4);
}

uint64_t Prompt.hash(into:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  String.hash(into:)();
  specialized Array<A>.hash(into:)(a1, v4);

  return specialized Array<A>.hash(into:)(a1, v3);
}

Swift::Int Prompt.hashValue.getter()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  Hasher.init(_seed:)();
  String.hash(into:)();
  specialized Array<A>.hash(into:)(v4, v2);
  specialized Array<A>.hash(into:)(v4, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Prompt()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  Hasher.init(_seed:)();
  String.hash(into:)();
  specialized Array<A>.hash(into:)(v4, v2);
  specialized Array<A>.hash(into:)(v4, v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Prompt(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  String.hash(into:)();
  specialized Array<A>.hash(into:)(a1, v4);

  return specialized Array<A>.hash(into:)(a1, v3);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Prompt(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  Hasher.init(_seed:)();
  String.hash(into:)();
  specialized Array<A>.hash(into:)(v5, v3);
  specialized Array<A>.hash(into:)(v5, v2);
  return Hasher._finalize()();
}

__n128 protocol witness for ExpressibleByStringInterpolation.init(stringInterpolation:) in conformance Prompt@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = *a1;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 24) = v2;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Prompt(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || !_sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration6PromptV9DelimiterV_Tt1g5(v2, v5))
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration6PromptV10AttachmentV_Tt1g5(v3, v4);
}

unint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1AC57C180](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for Prompt.PromptMarker(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for Prompt.PromptMarker(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for Prompt.Attachment(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for Prompt.Attachment(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for Prompt.PromptMarker(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for Prompt.PromptMarker(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v34 = type metadata accessor for Prompt.PromptMarker(0);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - v15;
  v27 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v32 = v17;
    v26 = v18;
    v22 = v17 + v18 * a3;
LABEL_4:
    v30 = v19;
    v31 = a3;
    v28 = v22;
    v29 = v21;
    while (1)
    {
      outlined init with copy of Prompt.PromptFragment(v22, v16, type metadata accessor for Prompt.PromptMarker);
      outlined init with copy of Prompt.PromptFragment(v19, v12, type metadata accessor for Prompt.PromptMarker);
      v23 = closure #1 in Prompt.promptFragments()(v16, v12);
      _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v12, type metadata accessor for Prompt.PromptMarker);
      _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v16, type metadata accessor for Prompt.PromptMarker);
      if (v4)
      {
        break;
      }

      if (v23)
      {
        if (!v32)
        {
          __break(1u);
          return;
        }

        v24 = v33;
        _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v22, v33, type metadata accessor for Prompt.PromptMarker);
        swift_arrayInitWithTakeFrontToBack();
        _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v24, v19, type metadata accessor for Prompt.PromptMarker);
        v19 += v20;
        v22 += v20;
        if (!__CFADD__(v21++, 1))
        {
          continue;
        }
      }

      a3 = v31 + 1;
      v19 = v30 + v26;
      v21 = v29 - 1;
      v22 = v28 + v26;
      if (v31 + 1 != v27)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

{
  v8 = type metadata accessor for Prompt.Attachment(0);
  MEMORY[0x1EEE9AC00](v8);
  v38 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v29 - v15;
  v31 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v36 = -v18;
    v37 = v17;
    v20 = a1 - a3;
    v30 = v18;
    v21 = v17 + v18 * a3;
LABEL_5:
    v34 = v19;
    v35 = a3;
    v32 = v21;
    v33 = v20;
    while (1)
    {
      outlined init with copy of Prompt.Turn(v21, v16, type metadata accessor for Prompt.Attachment);
      outlined init with copy of Prompt.Turn(v19, v12, type metadata accessor for Prompt.Attachment);
      v22 = *(v8 + 24);
      v23 = v8;
      v24 = *&v16[v22];
      v25 = *&v12[v22];
      outlined destroy of Prompt.ResponseFormat(v12, type metadata accessor for Prompt.Attachment);
      outlined destroy of Prompt.ResponseFormat(v16, type metadata accessor for Prompt.Attachment);
      v26 = v24 < v25;
      v8 = v23;
      if (!v26)
      {
LABEL_4:
        a3 = v35 + 1;
        v19 = v34 + v30;
        v20 = v33 - 1;
        v21 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v37)
      {
        break;
      }

      v27 = v38;
      outlined init with take of Prompt.ResponseFormat(v21, v38, type metadata accessor for Prompt.Attachment);
      swift_arrayInitWithTakeFrontToBack();
      outlined init with take of Prompt.ResponseFormat(v27, v19, type metadata accessor for Prompt.Attachment);
      v19 += v36;
      v21 += v36;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

{
  v34 = type metadata accessor for Prompt.PromptMarker(0);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - v15;
  v27 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v32 = v17;
    v26 = v18;
    v22 = v17 + v18 * a3;
LABEL_4:
    v30 = v19;
    v31 = a3;
    v28 = v22;
    v29 = v21;
    while (1)
    {
      _s15TokenGeneration6PromptV4TurnVWOcTm_0(v22, v16, type metadata accessor for Prompt.PromptMarker);
      _s15TokenGeneration6PromptV4TurnVWOcTm_0(v19, v12, type metadata accessor for Prompt.PromptMarker);
      v23 = closure #1 in Prompt.init(_:)(v16, v12);
      outlined destroy of Prompt.Turn(v12, type metadata accessor for Prompt.PromptMarker);
      outlined destroy of Prompt.Turn(v16, type metadata accessor for Prompt.PromptMarker);
      if (v4)
      {
        break;
      }

      if (v23)
      {
        if (!v32)
        {
          __break(1u);
          return;
        }

        v24 = v33;
        _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v22, v33, type metadata accessor for Prompt.PromptMarker);
        swift_arrayInitWithTakeFrontToBack();
        _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v24, v19, type metadata accessor for Prompt.PromptMarker);
        v19 += v20;
        v22 += v20;
        if (!__CFADD__(v21++, 1))
        {
          continue;
        }
      }

      a3 = v31 + 1;
      v19 = v30 + v26;
      v21 = v29 - 1;
      v22 = v28 + v26;
      if (v31 + 1 != v27)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v153 = a1;
  v178 = type metadata accessor for Prompt.Delimiter(0);
  MEMORY[0x1EEE9AC00](v178);
  v9 = &v148 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = type metadata accessor for Prompt.Attachment(0);
  MEMORY[0x1EEE9AC00](v177);
  v11 = &v148 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Prompt.PromptMarker(0);
  v164 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v154 = &v148 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v174 = &v148 - v15;
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v18);
  v171 = &v148 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v170 = &v148 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v148 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v175 = &v148 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v180 = &v148 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v179 = &v148 - v30;
  MEMORY[0x1EEE9AC00](v31);
  MEMORY[0x1EEE9AC00](v32);
  v151 = &v148 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v148 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v166 = a3;
  v42 = *(a3 + 8);
  if (v42 >= 1)
  {
    v149 = &v148 - v38;
    v150 = v36;
    v160 = v41;
    v43 = 0;
    v44 = MEMORY[0x1E69E7CC0];
    v152 = a4;
    v168 = v40;
    v169 = v39;
    v176 = v24;
    v148 = v12;
    v159 = v11;
    while (1)
    {
      v45 = v43;
      v46 = v43 + 1;
      v157 = v44;
      v156 = v45;
      if (v46 >= v42)
      {
        v55 = v46;
        goto LABEL_27;
      }

      v167 = v42;
      v47 = *v166;
      v48 = *(v164 + 72);
      v49 = *v166 + v48 * v46;
      a3 = v149;
      outlined init with copy of Prompt.PromptFragment(v49, v149, type metadata accessor for Prompt.PromptMarker);
      v172 = v47;
      v50 = v47 + v48 * v156;
      v51 = v150;
      outlined init with copy of Prompt.PromptFragment(v50, v150, type metadata accessor for Prompt.PromptMarker);
      LODWORD(v173) = closure #1 in Prompt.promptFragments()(a3, v51);
      if (v5)
      {
        _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v51, type metadata accessor for Prompt.PromptMarker);
        _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(a3, type metadata accessor for Prompt.PromptMarker);
        goto LABEL_135;
      }

      v165 = 0;
      _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v51, type metadata accessor for Prompt.PromptMarker);
      _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(a3, type metadata accessor for Prompt.PromptMarker);
      v52 = v156 + 2;
      v53 = v172 + v48 * (v156 + 2);
      v54 = v151;
      do
      {
        v55 = v167;
        if (v167 == v52)
        {
          goto LABEL_11;
        }

        v56 = v9;
        v57 = v48;
        outlined init with copy of Prompt.PromptFragment(v53, v54, type metadata accessor for Prompt.PromptMarker);
        v58 = v160;
        outlined init with copy of Prompt.PromptFragment(v49, v160, type metadata accessor for Prompt.PromptMarker);
        v59 = v165;
        v60 = closure #1 in Prompt.promptFragments()(v54, v58);
        v165 = v59;
        if (v59)
        {
          _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v58, type metadata accessor for Prompt.PromptMarker);
          _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v54, type metadata accessor for Prompt.PromptMarker);

          return;
        }

        v61 = v60;
        a3 = type metadata accessor for Prompt.PromptMarker;
        _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v58, type metadata accessor for Prompt.PromptMarker);
        _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v54, type metadata accessor for Prompt.PromptMarker);
        ++v52;
        v48 = v57;
        v53 += v57;
        v49 += v57;
        v9 = v56;
        v11 = v159;
      }

      while (((v173 ^ v61) & 1) == 0);
      v55 = v52 - 1;
LABEL_11:
      v5 = v165;
      a4 = v152;
      v45 = v156;
      if ((v173 & 1) == 0)
      {
        goto LABEL_25;
      }

      if (v55 < v156)
      {
        goto LABEL_158;
      }

      if (v156 >= v55)
      {
LABEL_25:
        v24 = v176;
        goto LABEL_27;
      }

      a3 = v48 * (v55 - 1);
      v62 = v55 * v48;
      v167 = v55;
      v63 = v156;
      v64 = v156 * v48;
      do
      {
        if (v63 != --v55)
        {
          v173 = v55;
          v65 = *v166;
          if (!*v166)
          {
            goto LABEL_162;
          }

          v172 = v65 + v64;
          _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v65 + v64, v154, type metadata accessor for Prompt.PromptMarker);
          if (v64 < a3 || v172 >= v65 + v62)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v64 != a3)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v154, v65 + a3, type metadata accessor for Prompt.PromptMarker);
          v45 = v156;
          v55 = v173;
        }

        ++v63;
        a3 -= v48;
        v62 -= v48;
        v64 += v48;
      }

      while (v63 < v55);
      v5 = v165;
      a4 = v152;
      v24 = v176;
      v55 = v167;
LABEL_27:
      v66 = v166[1];
      if (v55 >= v66)
      {
        goto LABEL_36;
      }

      if (__OFSUB__(v55, v45))
      {
        goto LABEL_154;
      }

      if (v55 - v45 >= a4)
      {
LABEL_36:
        v68 = v55;
        if (v55 < v45)
        {
          goto LABEL_153;
        }

        goto LABEL_37;
      }

      if (__OFADD__(v45, a4))
      {
        break;
      }

      if ((v45 + a4) >= v66)
      {
        v67 = v166[1];
      }

      else
      {
        v67 = v45 + a4;
      }

      if (v67 < v45)
      {
        goto LABEL_157;
      }

      if (v55 == v67)
      {
        goto LABEL_36;
      }

      v165 = v5;
      v113 = *v166;
      v114 = *(v164 + 72);
      v115 = *v166 + v114 * (v55 - 1);
      v172 = -v114;
      v173 = v113;
      v116 = v45 - v55;
      v155 = v114;
      a4 = v113 + v55 * v114;
      v158 = v67;
      while (2)
      {
        v167 = v55;
        v161 = a4;
        v162 = v116;
        v163 = v115;
        v117 = v115;
        while (2)
        {
          v118 = v179;
          outlined init with copy of Prompt.PromptFragment(a4, v179, type metadata accessor for Prompt.PromptMarker);
          outlined init with copy of Prompt.PromptFragment(v117, v180, type metadata accessor for Prompt.PromptMarker);
          v119 = v175;
          outlined init with copy of Prompt.PromptFragment(v118, v175, type metadata accessor for Prompt.PromptMarker);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v119, v9, type metadata accessor for Prompt.Delimiter);
            v120 = *&v9[*(v178 + 20)];
            v121 = type metadata accessor for Prompt.Delimiter;
            v122 = v9;
          }

          else
          {
            _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v119, v11, type metadata accessor for Prompt.Attachment);
            v120 = *&v11[*(v177 + 20)];
            v121 = type metadata accessor for Prompt.Attachment;
            v122 = v11;
          }

          _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v122, v121);
          outlined init with copy of Prompt.PromptFragment(v180, v24, type metadata accessor for Prompt.PromptMarker);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v24, v9, type metadata accessor for Prompt.Delimiter);
            v123 = *&v9[*(v178 + 20)];
            v124 = type metadata accessor for Prompt.Delimiter;
            v125 = v9;
          }

          else
          {
            _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v24, v11, type metadata accessor for Prompt.Attachment);
            v123 = *&v11[*(v177 + 20)];
            v124 = type metadata accessor for Prompt.Attachment;
            v125 = v11;
          }

          _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v125, v124);
          if (v120 == v123)
          {
            v126 = v170;
            outlined init with copy of Prompt.PromptFragment(v180, v170, type metadata accessor for Prompt.PromptMarker);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v126, v9, type metadata accessor for Prompt.Delimiter);
              v127 = *&v9[*(v178 + 24)];
              v128 = type metadata accessor for Prompt.Delimiter;
              v129 = v9;
            }

            else
            {
              _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v126, v11, type metadata accessor for Prompt.Attachment);
              v127 = *&v11[*(v177 + 24)];
              v128 = type metadata accessor for Prompt.Attachment;
              v129 = v11;
            }

            _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v129, v128);
            v133 = v168;
            outlined init with copy of Prompt.PromptFragment(v179, v168, type metadata accessor for Prompt.PromptMarker);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v133, v9, type metadata accessor for Prompt.Delimiter);
              v134 = *(v178 + 24);
              goto LABEL_108;
            }

            _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v133, v11, type metadata accessor for Prompt.Attachment);
            v139 = *(v177 + 24);
LABEL_111:
            v136 = *&v11[v139];
            v137 = type metadata accessor for Prompt.Attachment;
            v138 = v11;
          }

          else
          {
            v130 = v171;
            outlined init with copy of Prompt.PromptFragment(v180, v171, type metadata accessor for Prompt.PromptMarker);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v130, v9, type metadata accessor for Prompt.Delimiter);
              v127 = *&v9[*(v178 + 20)];
              v131 = type metadata accessor for Prompt.Delimiter;
              v132 = v9;
            }

            else
            {
              _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v130, v11, type metadata accessor for Prompt.Attachment);
              v127 = *&v11[*(v177 + 20)];
              v131 = type metadata accessor for Prompt.Attachment;
              v132 = v11;
            }

            _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v132, v131);
            v135 = v169;
            outlined init with copy of Prompt.PromptFragment(v179, v169, type metadata accessor for Prompt.PromptMarker);
            if (swift_getEnumCaseMultiPayload() != 1)
            {
              _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v135, v11, type metadata accessor for Prompt.Attachment);
              v139 = *(v177 + 20);
              goto LABEL_111;
            }

            _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v135, v9, type metadata accessor for Prompt.Delimiter);
            v134 = *(v178 + 20);
LABEL_108:
            v136 = *&v9[v134];
            v137 = type metadata accessor for Prompt.Delimiter;
            v138 = v9;
          }

          _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v138, v137);
          v140 = v127 < v136;
          a3 = type metadata accessor for Prompt.PromptMarker;
          _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v180, type metadata accessor for Prompt.PromptMarker);
          _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v179, type metadata accessor for Prompt.PromptMarker);
          if (v140)
          {
            if (!v173)
            {
              goto LABEL_159;
            }

            a3 = type metadata accessor for Prompt.PromptMarker;
            v141 = v174;
            _s15TokenGeneration6PromptV10AttachmentVWObTm_0(a4, v174, type metadata accessor for Prompt.PromptMarker);
            swift_arrayInitWithTakeFrontToBack();
            _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v141, v117, type metadata accessor for Prompt.PromptMarker);
            v117 += v172;
            a4 += v172;
            v142 = __CFADD__(v116++, 1);
            v24 = v176;
            if (v142)
            {
              goto LABEL_89;
            }

            continue;
          }

          break;
        }

        v24 = v176;
LABEL_89:
        v55 = v167 + 1;
        v115 = v163 + v155;
        v116 = v162 - 1;
        a4 = v161 + v155;
        v68 = v158;
        if (v167 + 1 != v158)
        {
          continue;
        }

        break;
      }

      v5 = v165;
      v45 = v156;
      if (v158 < v156)
      {
        goto LABEL_153;
      }

LABEL_37:
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v44 = v157;
      }

      else
      {
        v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v157 + 2) + 1, 1, v157);
      }

      a3 = *(v44 + 2);
      v69 = *(v44 + 3);
      a4 = a3 + 1;
      if (a3 >= v69 >> 1)
      {
        v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v69 > 1), a3 + 1, 1, v44);
      }

      *(v44 + 2) = a4;
      v70 = &v44[16 * a3];
      *(v70 + 4) = v45;
      *(v70 + 5) = v68;
      v173 = *v153;
      if (!v173)
      {
        goto LABEL_163;
      }

      v158 = v68;
      if (a3)
      {
        while (1)
        {
          v71 = a4 - 1;
          if (a4 >= 4)
          {
            break;
          }

          if (a4 == 3)
          {
            v72 = *(v44 + 4);
            v73 = *(v44 + 5);
            v82 = __OFSUB__(v73, v72);
            v74 = v73 - v72;
            v75 = v82;
LABEL_56:
            if (v75)
            {
              goto LABEL_142;
            }

            v88 = &v44[16 * a4];
            v90 = *v88;
            v89 = *(v88 + 1);
            v91 = __OFSUB__(v89, v90);
            v92 = v89 - v90;
            v93 = v91;
            if (v91)
            {
              goto LABEL_145;
            }

            v94 = &v44[16 * v71 + 32];
            v96 = *v94;
            v95 = *(v94 + 1);
            v82 = __OFSUB__(v95, v96);
            v97 = v95 - v96;
            if (v82)
            {
              goto LABEL_148;
            }

            if (__OFADD__(v92, v97))
            {
              goto LABEL_149;
            }

            if (v92 + v97 >= v74)
            {
              if (v74 < v97)
              {
                v71 = a4 - 2;
              }

              goto LABEL_77;
            }

            goto LABEL_70;
          }

          v98 = &v44[16 * a4];
          v100 = *v98;
          v99 = *(v98 + 1);
          v82 = __OFSUB__(v99, v100);
          v92 = v99 - v100;
          v93 = v82;
LABEL_70:
          if (v93)
          {
            goto LABEL_144;
          }

          v101 = &v44[16 * v71];
          v103 = *(v101 + 4);
          v102 = *(v101 + 5);
          v82 = __OFSUB__(v102, v103);
          v104 = v102 - v103;
          if (v82)
          {
            goto LABEL_147;
          }

          if (v104 < v92)
          {
            goto LABEL_3;
          }

LABEL_77:
          a3 = v71 - 1;
          if (v71 - 1 >= a4)
          {
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            v143 = specialized _ArrayBuffer._consumeAndCreateNew()(a4);
            goto LABEL_124;
          }

          if (!*v166)
          {
            goto LABEL_160;
          }

          v109 = v44;
          a4 = *&v44[16 * a3 + 32];
          v110 = *&v44[16 * v71 + 40];
          specialized _merge<A>(low:mid:high:buffer:by:)(*v166 + *(v164 + 72) * a4, *v166 + *(v164 + 72) * *&v44[16 * v71 + 32], *v166 + *(v164 + 72) * v110, v173);
          if (v5)
          {
            goto LABEL_135;
          }

          if (v110 < a4)
          {
            goto LABEL_138;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v111 = v109;
          }

          else
          {
            v111 = specialized _ArrayBuffer._consumeAndCreateNew()(v109);
          }

          v24 = v176;
          if (a3 >= *(v111 + 2))
          {
            goto LABEL_139;
          }

          v112 = &v111[16 * a3];
          *(v112 + 4) = a4;
          *(v112 + 5) = v110;
          v181 = v111;
          specialized Array.remove(at:)(v71);
          v44 = v181;
          a4 = *(v181 + 2);
          if (a4 <= 1)
          {
            goto LABEL_3;
          }
        }

        v76 = &v44[16 * a4 + 32];
        v77 = *(v76 - 64);
        v78 = *(v76 - 56);
        v82 = __OFSUB__(v78, v77);
        v79 = v78 - v77;
        if (v82)
        {
          goto LABEL_140;
        }

        v81 = *(v76 - 48);
        v80 = *(v76 - 40);
        v82 = __OFSUB__(v80, v81);
        v74 = v80 - v81;
        v75 = v82;
        if (v82)
        {
          goto LABEL_141;
        }

        v83 = &v44[16 * a4];
        v85 = *v83;
        v84 = *(v83 + 1);
        v82 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v82)
        {
          goto LABEL_143;
        }

        v82 = __OFADD__(v74, v86);
        v87 = v74 + v86;
        if (v82)
        {
          goto LABEL_146;
        }

        if (v87 >= v79)
        {
          v105 = &v44[16 * v71 + 32];
          v107 = *v105;
          v106 = *(v105 + 1);
          v82 = __OFSUB__(v106, v107);
          v108 = v106 - v107;
          if (v82)
          {
            goto LABEL_152;
          }

          if (v74 < v108)
          {
            v71 = a4 - 2;
          }

          goto LABEL_77;
        }

        goto LABEL_56;
      }

LABEL_3:
      v42 = v166[1];
      v43 = v158;
      a4 = v152;
      if (v158 >= v42)
      {
        goto LABEL_121;
      }
    }

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
    goto LABEL_164;
  }

  v44 = MEMORY[0x1E69E7CC0];
LABEL_121:
  a3 = *v153;
  if (*v153)
  {
    a4 = v44;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_155;
    }

    v143 = a4;
LABEL_124:
    v181 = v143;
    a4 = *(v143 + 2);
    if (a4 < 2)
    {
LABEL_135:

      return;
    }

    while (*v166)
    {
      v144 = *&v143[16 * a4];
      v145 = v143;
      v146 = *&v143[16 * a4 + 24];
      specialized _merge<A>(low:mid:high:buffer:by:)(*v166 + *(v164 + 72) * v144, *v166 + *(v164 + 72) * *&v143[16 * a4 + 16], *v166 + *(v164 + 72) * v146, a3);
      if (v5)
      {
        goto LABEL_135;
      }

      if (v146 < v144)
      {
        goto LABEL_150;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v145 = specialized _ArrayBuffer._consumeAndCreateNew()(v145);
      }

      if (a4 - 2 >= *(v145 + 2))
      {
        goto LABEL_151;
      }

      v147 = &v145[16 * a4];
      *v147 = v144;
      *(v147 + 1) = v146;
      v181 = v145;
      specialized Array.remove(at:)(a4 - 1);
      v143 = v181;
      a4 = *(v181 + 2);
      if (a4 <= 1)
      {
        goto LABEL_135;
      }
    }

    goto LABEL_161;
  }

LABEL_164:
  __break(1u);
}

{
  v5 = v4;
  v153 = a1;
  v178 = type metadata accessor for Prompt.Delimiter(0);
  MEMORY[0x1EEE9AC00](v178);
  v9 = &v148 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = type metadata accessor for Prompt.Attachment(0);
  MEMORY[0x1EEE9AC00](v177);
  v11 = &v148 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Prompt.PromptMarker(0);
  v164 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v154 = &v148 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v174 = &v148 - v15;
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v18);
  v171 = &v148 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v170 = &v148 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v148 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v175 = &v148 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v180 = &v148 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v179 = &v148 - v30;
  MEMORY[0x1EEE9AC00](v31);
  MEMORY[0x1EEE9AC00](v32);
  v151 = &v148 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v148 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v166 = a3;
  v42 = *(a3 + 8);
  if (v42 >= 1)
  {
    v149 = &v148 - v38;
    v150 = v36;
    v160 = v41;
    v43 = 0;
    v44 = MEMORY[0x1E69E7CC0];
    v152 = a4;
    v168 = v40;
    v169 = v39;
    v176 = v24;
    v148 = v12;
    v159 = v11;
    while (1)
    {
      v45 = v43;
      v46 = v43 + 1;
      v157 = v44;
      v156 = v45;
      if (v46 >= v42)
      {
        v55 = v46;
        goto LABEL_27;
      }

      v167 = v42;
      v47 = *v166;
      v48 = *(v164 + 72);
      v49 = *v166 + v48 * v46;
      a3 = v149;
      _s15TokenGeneration6PromptV4TurnVWOcTm_0(v49, v149, type metadata accessor for Prompt.PromptMarker);
      v172 = v47;
      v50 = v47 + v48 * v156;
      v51 = v150;
      _s15TokenGeneration6PromptV4TurnVWOcTm_0(v50, v150, type metadata accessor for Prompt.PromptMarker);
      LODWORD(v173) = closure #1 in Prompt.init(_:)(a3, v51);
      if (v5)
      {
        outlined destroy of Prompt.Turn(v51, type metadata accessor for Prompt.PromptMarker);
        outlined destroy of Prompt.Turn(a3, type metadata accessor for Prompt.PromptMarker);
        goto LABEL_135;
      }

      v165 = 0;
      outlined destroy of Prompt.Turn(v51, type metadata accessor for Prompt.PromptMarker);
      outlined destroy of Prompt.Turn(a3, type metadata accessor for Prompt.PromptMarker);
      v52 = v156 + 2;
      v53 = v172 + v48 * (v156 + 2);
      v54 = v151;
      do
      {
        v55 = v167;
        if (v167 == v52)
        {
          goto LABEL_11;
        }

        v56 = v9;
        v57 = v48;
        _s15TokenGeneration6PromptV4TurnVWOcTm_0(v53, v54, type metadata accessor for Prompt.PromptMarker);
        v58 = v160;
        _s15TokenGeneration6PromptV4TurnVWOcTm_0(v49, v160, type metadata accessor for Prompt.PromptMarker);
        v59 = v165;
        v60 = closure #1 in Prompt.init(_:)(v54, v58);
        v165 = v59;
        if (v59)
        {
          outlined destroy of Prompt.Turn(v58, type metadata accessor for Prompt.PromptMarker);
          outlined destroy of Prompt.Turn(v54, type metadata accessor for Prompt.PromptMarker);

          return;
        }

        v61 = v60;
        a3 = type metadata accessor for Prompt.PromptMarker;
        outlined destroy of Prompt.Turn(v58, type metadata accessor for Prompt.PromptMarker);
        outlined destroy of Prompt.Turn(v54, type metadata accessor for Prompt.PromptMarker);
        ++v52;
        v48 = v57;
        v53 += v57;
        v49 += v57;
        v9 = v56;
        v11 = v159;
      }

      while (((v173 ^ v61) & 1) == 0);
      v55 = v52 - 1;
LABEL_11:
      v5 = v165;
      a4 = v152;
      v45 = v156;
      if ((v173 & 1) == 0)
      {
        goto LABEL_25;
      }

      if (v55 < v156)
      {
        goto LABEL_158;
      }

      if (v156 >= v55)
      {
LABEL_25:
        v24 = v176;
        goto LABEL_27;
      }

      a3 = v48 * (v55 - 1);
      v62 = v55 * v48;
      v167 = v55;
      v63 = v156;
      v64 = v156 * v48;
      do
      {
        if (v63 != --v55)
        {
          v173 = v55;
          v65 = *v166;
          if (!*v166)
          {
            goto LABEL_162;
          }

          v172 = v65 + v64;
          _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v65 + v64, v154, type metadata accessor for Prompt.PromptMarker);
          if (v64 < a3 || v172 >= v65 + v62)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v64 != a3)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v154, v65 + a3, type metadata accessor for Prompt.PromptMarker);
          v45 = v156;
          v55 = v173;
        }

        ++v63;
        a3 -= v48;
        v62 -= v48;
        v64 += v48;
      }

      while (v63 < v55);
      v5 = v165;
      a4 = v152;
      v24 = v176;
      v55 = v167;
LABEL_27:
      v66 = v166[1];
      if (v55 >= v66)
      {
        goto LABEL_36;
      }

      if (__OFSUB__(v55, v45))
      {
        goto LABEL_154;
      }

      if (v55 - v45 >= a4)
      {
LABEL_36:
        v68 = v55;
        if (v55 < v45)
        {
          goto LABEL_153;
        }

        goto LABEL_37;
      }

      if (__OFADD__(v45, a4))
      {
        break;
      }

      if ((v45 + a4) >= v66)
      {
        v67 = v166[1];
      }

      else
      {
        v67 = v45 + a4;
      }

      if (v67 < v45)
      {
        goto LABEL_157;
      }

      if (v55 == v67)
      {
        goto LABEL_36;
      }

      v165 = v5;
      v113 = *v166;
      v114 = *(v164 + 72);
      v115 = *v166 + v114 * (v55 - 1);
      v172 = -v114;
      v173 = v113;
      v116 = v45 - v55;
      v155 = v114;
      a4 = v113 + v55 * v114;
      v158 = v67;
      while (2)
      {
        v167 = v55;
        v161 = a4;
        v162 = v116;
        v163 = v115;
        v117 = v115;
        while (2)
        {
          v118 = v179;
          _s15TokenGeneration6PromptV4TurnVWOcTm_0(a4, v179, type metadata accessor for Prompt.PromptMarker);
          _s15TokenGeneration6PromptV4TurnVWOcTm_0(v117, v180, type metadata accessor for Prompt.PromptMarker);
          v119 = v175;
          _s15TokenGeneration6PromptV4TurnVWOcTm_0(v118, v175, type metadata accessor for Prompt.PromptMarker);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v119, v9, type metadata accessor for Prompt.Delimiter);
            v120 = *&v9[*(v178 + 20)];
            v121 = type metadata accessor for Prompt.Delimiter;
            v122 = v9;
          }

          else
          {
            _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v119, v11, type metadata accessor for Prompt.Attachment);
            v120 = *&v11[*(v177 + 20)];
            v121 = type metadata accessor for Prompt.Attachment;
            v122 = v11;
          }

          outlined destroy of Prompt.Turn(v122, v121);
          _s15TokenGeneration6PromptV4TurnVWOcTm_0(v180, v24, type metadata accessor for Prompt.PromptMarker);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v24, v9, type metadata accessor for Prompt.Delimiter);
            v123 = *&v9[*(v178 + 20)];
            v124 = type metadata accessor for Prompt.Delimiter;
            v125 = v9;
          }

          else
          {
            _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v24, v11, type metadata accessor for Prompt.Attachment);
            v123 = *&v11[*(v177 + 20)];
            v124 = type metadata accessor for Prompt.Attachment;
            v125 = v11;
          }

          outlined destroy of Prompt.Turn(v125, v124);
          if (v120 == v123)
          {
            v126 = v170;
            _s15TokenGeneration6PromptV4TurnVWOcTm_0(v179, v170, type metadata accessor for Prompt.PromptMarker);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v126, v9, type metadata accessor for Prompt.Delimiter);
              v127 = *&v9[*(v178 + 24)];
              v128 = type metadata accessor for Prompt.Delimiter;
              v129 = v9;
            }

            else
            {
              _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v126, v11, type metadata accessor for Prompt.Attachment);
              v127 = *&v11[*(v177 + 24)];
              v128 = type metadata accessor for Prompt.Attachment;
              v129 = v11;
            }

            outlined destroy of Prompt.Turn(v129, v128);
            v133 = v168;
            _s15TokenGeneration6PromptV4TurnVWOcTm_0(v180, v168, type metadata accessor for Prompt.PromptMarker);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v133, v9, type metadata accessor for Prompt.Delimiter);
              v134 = *(v178 + 24);
              goto LABEL_108;
            }

            _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v133, v11, type metadata accessor for Prompt.Attachment);
            v139 = *(v177 + 24);
LABEL_111:
            v136 = *&v11[v139];
            v137 = type metadata accessor for Prompt.Attachment;
            v138 = v11;
          }

          else
          {
            v130 = v171;
            _s15TokenGeneration6PromptV4TurnVWOcTm_0(v179, v171, type metadata accessor for Prompt.PromptMarker);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v130, v9, type metadata accessor for Prompt.Delimiter);
              v127 = *&v9[*(v178 + 20)];
              v131 = type metadata accessor for Prompt.Delimiter;
              v132 = v9;
            }

            else
            {
              _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v130, v11, type metadata accessor for Prompt.Attachment);
              v127 = *&v11[*(v177 + 20)];
              v131 = type metadata accessor for Prompt.Attachment;
              v132 = v11;
            }

            outlined destroy of Prompt.Turn(v132, v131);
            v135 = v169;
            _s15TokenGeneration6PromptV4TurnVWOcTm_0(v180, v169, type metadata accessor for Prompt.PromptMarker);
            if (swift_getEnumCaseMultiPayload() != 1)
            {
              _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v135, v11, type metadata accessor for Prompt.Attachment);
              v139 = *(v177 + 20);
              goto LABEL_111;
            }

            _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v135, v9, type metadata accessor for Prompt.Delimiter);
            v134 = *(v178 + 20);
LABEL_108:
            v136 = *&v9[v134];
            v137 = type metadata accessor for Prompt.Delimiter;
            v138 = v9;
          }

          outlined destroy of Prompt.Turn(v138, v137);
          v140 = v127 < v136;
          a3 = type metadata accessor for Prompt.PromptMarker;
          outlined destroy of Prompt.Turn(v180, type metadata accessor for Prompt.PromptMarker);
          outlined destroy of Prompt.Turn(v179, type metadata accessor for Prompt.PromptMarker);
          if (v140)
          {
            if (!v173)
            {
              goto LABEL_159;
            }

            a3 = type metadata accessor for Prompt.PromptMarker;
            v141 = v174;
            _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(a4, v174, type metadata accessor for Prompt.PromptMarker);
            swift_arrayInitWithTakeFrontToBack();
            _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v141, v117, type metadata accessor for Prompt.PromptMarker);
            v117 += v172;
            a4 += v172;
            v142 = __CFADD__(v116++, 1);
            v24 = v176;
            if (v142)
            {
              goto LABEL_89;
            }

            continue;
          }

          break;
        }

        v24 = v176;
LABEL_89:
        v55 = v167 + 1;
        v115 = v163 + v155;
        v116 = v162 - 1;
        a4 = v161 + v155;
        v68 = v158;
        if (v167 + 1 != v158)
        {
          continue;
        }

        break;
      }

      v5 = v165;
      v45 = v156;
      if (v158 < v156)
      {
        goto LABEL_153;
      }

LABEL_37:
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v44 = v157;
      }

      else
      {
        v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v157 + 2) + 1, 1, v157);
      }

      a3 = *(v44 + 2);
      v69 = *(v44 + 3);
      a4 = a3 + 1;
      if (a3 >= v69 >> 1)
      {
        v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v69 > 1), a3 + 1, 1, v44);
      }

      *(v44 + 2) = a4;
      v70 = &v44[16 * a3];
      *(v70 + 4) = v45;
      *(v70 + 5) = v68;
      v173 = *v153;
      if (!v173)
      {
        goto LABEL_163;
      }

      v158 = v68;
      if (a3)
      {
        while (1)
        {
          v71 = a4 - 1;
          if (a4 >= 4)
          {
            break;
          }

          if (a4 == 3)
          {
            v72 = *(v44 + 4);
            v73 = *(v44 + 5);
            v82 = __OFSUB__(v73, v72);
            v74 = v73 - v72;
            v75 = v82;
LABEL_56:
            if (v75)
            {
              goto LABEL_142;
            }

            v88 = &v44[16 * a4];
            v90 = *v88;
            v89 = *(v88 + 1);
            v91 = __OFSUB__(v89, v90);
            v92 = v89 - v90;
            v93 = v91;
            if (v91)
            {
              goto LABEL_145;
            }

            v94 = &v44[16 * v71 + 32];
            v96 = *v94;
            v95 = *(v94 + 1);
            v82 = __OFSUB__(v95, v96);
            v97 = v95 - v96;
            if (v82)
            {
              goto LABEL_148;
            }

            if (__OFADD__(v92, v97))
            {
              goto LABEL_149;
            }

            if (v92 + v97 >= v74)
            {
              if (v74 < v97)
              {
                v71 = a4 - 2;
              }

              goto LABEL_77;
            }

            goto LABEL_70;
          }

          v98 = &v44[16 * a4];
          v100 = *v98;
          v99 = *(v98 + 1);
          v82 = __OFSUB__(v99, v100);
          v92 = v99 - v100;
          v93 = v82;
LABEL_70:
          if (v93)
          {
            goto LABEL_144;
          }

          v101 = &v44[16 * v71];
          v103 = *(v101 + 4);
          v102 = *(v101 + 5);
          v82 = __OFSUB__(v102, v103);
          v104 = v102 - v103;
          if (v82)
          {
            goto LABEL_147;
          }

          if (v104 < v92)
          {
            goto LABEL_3;
          }

LABEL_77:
          a3 = v71 - 1;
          if (v71 - 1 >= a4)
          {
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            v143 = specialized _ArrayBuffer._consumeAndCreateNew()(a4);
            goto LABEL_124;
          }

          if (!*v166)
          {
            goto LABEL_160;
          }

          v109 = v44;
          a4 = *&v44[16 * a3 + 32];
          v110 = *&v44[16 * v71 + 40];
          specialized _merge<A>(low:mid:high:buffer:by:)(*v166 + *(v164 + 72) * a4, *v166 + *(v164 + 72) * *&v44[16 * v71 + 32], *v166 + *(v164 + 72) * v110, v173);
          if (v5)
          {
            goto LABEL_135;
          }

          if (v110 < a4)
          {
            goto LABEL_138;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v111 = v109;
          }

          else
          {
            v111 = specialized _ArrayBuffer._consumeAndCreateNew()(v109);
          }

          v24 = v176;
          if (a3 >= *(v111 + 2))
          {
            goto LABEL_139;
          }

          v112 = &v111[16 * a3];
          *(v112 + 4) = a4;
          *(v112 + 5) = v110;
          v181 = v111;
          specialized Array.remove(at:)(v71);
          v44 = v181;
          a4 = *(v181 + 2);
          if (a4 <= 1)
          {
            goto LABEL_3;
          }
        }

        v76 = &v44[16 * a4 + 32];
        v77 = *(v76 - 64);
        v78 = *(v76 - 56);
        v82 = __OFSUB__(v78, v77);
        v79 = v78 - v77;
        if (v82)
        {
          goto LABEL_140;
        }

        v81 = *(v76 - 48);
        v80 = *(v76 - 40);
        v82 = __OFSUB__(v80, v81);
        v74 = v80 - v81;
        v75 = v82;
        if (v82)
        {
          goto LABEL_141;
        }

        v83 = &v44[16 * a4];
        v85 = *v83;
        v84 = *(v83 + 1);
        v82 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v82)
        {
          goto LABEL_143;
        }

        v82 = __OFADD__(v74, v86);
        v87 = v74 + v86;
        if (v82)
        {
          goto LABEL_146;
        }

        if (v87 >= v79)
        {
          v105 = &v44[16 * v71 + 32];
          v107 = *v105;
          v106 = *(v105 + 1);
          v82 = __OFSUB__(v106, v107);
          v108 = v106 - v107;
          if (v82)
          {
            goto LABEL_152;
          }

          if (v74 < v108)
          {
            v71 = a4 - 2;
          }

          goto LABEL_77;
        }

        goto LABEL_56;
      }

LABEL_3:
      v42 = v166[1];
      v43 = v158;
      a4 = v152;
      if (v158 >= v42)
      {
        goto LABEL_121;
      }
    }

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
    goto LABEL_164;
  }

  v44 = MEMORY[0x1E69E7CC0];
LABEL_121:
  a3 = *v153;
  if (*v153)
  {
    a4 = v44;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_155;
    }

    v143 = a4;
LABEL_124:
    v181 = v143;
    a4 = *(v143 + 2);
    if (a4 < 2)
    {
LABEL_135:

      return;
    }

    while (*v166)
    {
      v144 = *&v143[16 * a4];
      v145 = v143;
      v146 = *&v143[16 * a4 + 24];
      specialized _merge<A>(low:mid:high:buffer:by:)(*v166 + *(v164 + 72) * v144, *v166 + *(v164 + 72) * *&v143[16 * a4 + 16], *v166 + *(v164 + 72) * v146, a3);
      if (v5)
      {
        goto LABEL_135;
      }

      if (v146 < v144)
      {
        goto LABEL_150;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v145 = specialized _ArrayBuffer._consumeAndCreateNew()(v145);
      }

      if (a4 - 2 >= *(v145 + 2))
      {
        goto LABEL_151;
      }

      v147 = &v145[16 * a4];
      *v147 = v144;
      *(v147 + 1) = v146;
      v181 = v145;
      specialized Array.remove(at:)(a4 - 1);
      v143 = v181;
      a4 = *(v181 + 2);
      if (a4 <= 1)
      {
        goto LABEL_135;
      }
    }

    goto LABEL_161;
  }

LABEL_164:
  __break(1u);
}

void specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v63 = type metadata accessor for Prompt.PromptMarker(0);
  MEMORY[0x1EEE9AC00](v63);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v52 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v52 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v52 - v17;
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_64;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_65;
  }

  v22 = (a2 - a1) / v20;
  v66 = a1;
  v65 = a4;
  v62 = v20;
  if (v22 >= v21 / v20)
  {
    v25 = v21 / v20 * v20;
    v58 = v16;
    if (a4 < a2 || a2 + v25 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v26 = v11;
    }

    else
    {
      v26 = v11;
      if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v35 = a4 + v25;
    v36 = v4;
    if (v25 >= 1)
    {
      v37 = -v62;
      v38 = a4 + v25;
      v55 = a4;
      v56 = a1;
      v54 = -v62;
      do
      {
        v52 = v35;
        v39 = a2 + v37;
        v57 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v66 = a2;
            v64 = v52;
            goto LABEL_62;
          }

          v61 = a3;
          v62 = v38;
          v53 = v35;
          v60 = (v38 + v37);
          outlined init with copy of Prompt.PromptFragment(v38 + v37, v26, type metadata accessor for Prompt.PromptMarker);
          v42 = v26;
          v43 = v58;
          outlined init with copy of Prompt.PromptFragment(v39, v58, type metadata accessor for Prompt.PromptMarker);
          v44 = closure #1 in Prompt.promptFragments()(v42, v43);
          if (v36)
          {
            _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v43, type metadata accessor for Prompt.PromptMarker);
            _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v42, type metadata accessor for Prompt.PromptMarker);
            v66 = v57;
            v64 = v53;
            goto LABEL_62;
          }

          v45 = v44;
          v59 = 0;
          v46 = v39;
          v47 = v61;
          v48 = v61 + v37;
          _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v43, type metadata accessor for Prompt.PromptMarker);
          _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v42, type metadata accessor for Prompt.PromptMarker);
          v26 = v42;
          if (v45)
          {
            break;
          }

          v49 = v60;
          v35 = v60;
          a3 = v47 + v37;
          if (v47 < v62 || v48 >= v62)
          {
            v40 = v60;
            swift_arrayInitWithTakeFrontToBack();
            v35 = v40;
            v39 = v46;
            v36 = v59;
          }

          else
          {
            v50 = v47 == v62;
            v39 = v46;
            v36 = v59;
            if (!v50)
            {
              v51 = v60;
              swift_arrayInitWithTakeBackToFront();
              v35 = v51;
            }
          }

          v38 = v35;
          a1 = v56;
          v41 = v49 > v55;
          v37 = v54;
          a2 = v57;
          if (!v41)
          {
            goto LABEL_58;
          }
        }

        a3 = v47 + v37;
        if (v47 < v57 || v48 >= v57)
        {
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
          v36 = v59;
          v37 = v54;
        }

        else
        {
          a2 = v46;
          v36 = v59;
          v37 = v54;
          if (v47 != v57)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v56;
        v38 = v62;
        v35 = v53;
      }

      while (v62 > v55);
    }

LABEL_58:
    v66 = a2;
    v64 = v35;
  }

  else
  {
    v23 = v22 * v20;
    if (a4 < a1 || a1 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v24 = v4;
    }

    else
    {
      v24 = v4;
      if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v61 = a4 + v23;
    v64 = a4 + v23;
    if (v23 >= 1 && a2 < a3)
    {
      v28 = v62;
      v59 = v18;
      v60 = v14;
      while (1)
      {
        v29 = a3;
        outlined init with copy of Prompt.PromptFragment(a2, v18, type metadata accessor for Prompt.PromptMarker);
        outlined init with copy of Prompt.PromptFragment(a4, v14, type metadata accessor for Prompt.PromptMarker);
        v30 = closure #1 in Prompt.promptFragments()(v18, v14);
        if (v24)
        {
          break;
        }

        v31 = v30;
        v32 = v14;
        v33 = a4;
        _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v32, type metadata accessor for Prompt.PromptMarker);
        _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v18, type metadata accessor for Prompt.PromptMarker);
        if (v31)
        {
          v34 = a2 + v28;
          if (a1 < a2 || a1 >= v34)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v34;
            a3 = v29;
          }

          else
          {
            a3 = v29;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v34;
          }
        }

        else
        {
          a4 += v28;
          if (a1 < v33 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v29;
          }

          else
          {
            a3 = v29;
            if (a1 != v33)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v65 = v33 + v28;
        }

        v14 = v60;
        v28 = v62;
        a1 += v62;
        v66 = a1;
        v18 = v59;
        if (a4 >= v61 || a2 >= a3)
        {
          goto LABEL_62;
        }
      }

      _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v14, type metadata accessor for Prompt.PromptMarker);
      _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v18, type metadata accessor for Prompt.PromptMarker);
    }
  }

LABEL_62:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v66, &v65, &v64);
}

{
  v8 = type metadata accessor for Prompt.Attachment(0);
  MEMORY[0x1EEE9AC00](v8);
  v50 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v49 = &v40 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_63;
  }

  v15 = (a2 - a1) / v13;
  v53 = a1;
  v52 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v25 = a4 + v17;
    if (v17 >= 1)
    {
      v26 = -v13;
      v27 = v25;
      v44 = a4;
      v45 = a1;
      v48 = v8;
      v43 = -v13;
      do
      {
        v41 = v25;
        v28 = a2;
        v29 = a2 + v26;
        v46 = a2;
        v47 = a2 + v26;
        while (1)
        {
          if (v28 <= a1)
          {
            v53 = v28;
            v51 = v41;
            goto LABEL_60;
          }

          v31 = a3;
          v42 = v25;
          a3 += v26;
          v32 = v27 + v26;
          v33 = v49;
          outlined init with copy of Prompt.Turn(v27 + v26, v49, type metadata accessor for Prompt.Attachment);
          v34 = v50;
          outlined init with copy of Prompt.Turn(v29, v50, type metadata accessor for Prompt.Attachment);
          v35 = *(v8 + 24);
          v36 = *(v33 + v35);
          v37 = *(v34 + v35);
          outlined destroy of Prompt.ResponseFormat(v34, type metadata accessor for Prompt.Attachment);
          outlined destroy of Prompt.ResponseFormat(v33, type metadata accessor for Prompt.Attachment);
          if (v36 < v37)
          {
            break;
          }

          v25 = v32;
          if (v31 < v27 || a3 >= v27)
          {
            v30 = v48;
            swift_arrayInitWithTakeFrontToBack();
            v29 = v47;
            v8 = v30;
            v26 = v43;
          }

          else
          {
            v29 = v47;
            v8 = v48;
            v26 = v43;
            if (v31 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v32;
          a1 = v45;
          v28 = v46;
          if (v32 <= v44)
          {
            a2 = v46;
            goto LABEL_59;
          }
        }

        v38 = v44;
        if (v31 < v46 || a3 >= v46)
        {
          a2 = v47;
          v8 = v48;
          swift_arrayInitWithTakeFrontToBack();
          v25 = v42;
          v26 = v43;
        }

        else
        {
          v39 = v31 == v46;
          a2 = v47;
          v8 = v48;
          v25 = v42;
          v26 = v43;
          if (!v39)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v45;
      }

      while (v27 > v38);
    }

LABEL_59:
    v53 = a2;
    v51 = v25;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v47 = a4 + v16;
    v51 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      v46 = a3;
      v48 = v8;
      do
      {
        v19 = v49;
        outlined init with copy of Prompt.Turn(a2, v49, type metadata accessor for Prompt.Attachment);
        v20 = v50;
        outlined init with copy of Prompt.Turn(a4, v50, type metadata accessor for Prompt.Attachment);
        v21 = *(v8 + 24);
        v22 = *(v19 + v21);
        v23 = *(v20 + v21);
        outlined destroy of Prompt.ResponseFormat(v20, type metadata accessor for Prompt.Attachment);
        outlined destroy of Prompt.ResponseFormat(v19, type metadata accessor for Prompt.Attachment);
        if (v22 >= v23)
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            v8 = v48;
            swift_arrayInitWithTakeFrontToBack();
            v24 = v46;
          }

          else
          {
            v24 = v46;
            v8 = v48;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v52 = a4 + v13;
          a4 += v13;
        }

        else if (a1 < a2 || a1 >= a2 + v13)
        {
          v8 = v48;
          swift_arrayInitWithTakeFrontToBack();
          a2 += v13;
          v24 = v46;
        }

        else
        {
          v24 = v46;
          v8 = v48;
          if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v13;
        }

        a1 += v13;
        v53 = a1;
      }

      while (a4 < v47 && a2 < v24);
    }
  }

LABEL_60:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v53, &v52, &v51);
}

{
  v63 = type metadata accessor for Prompt.PromptMarker(0);
  MEMORY[0x1EEE9AC00](v63);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v52 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v52 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v52 - v17;
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_64;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_65;
  }

  v22 = (a2 - a1) / v20;
  v66 = a1;
  v65 = a4;
  v62 = v20;
  if (v22 >= v21 / v20)
  {
    v25 = v21 / v20 * v20;
    v58 = v16;
    if (a4 < a2 || a2 + v25 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v26 = v11;
    }

    else
    {
      v26 = v11;
      if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v35 = a4 + v25;
    v36 = v4;
    if (v25 >= 1)
    {
      v37 = -v62;
      v38 = a4 + v25;
      v55 = a4;
      v56 = a1;
      v54 = -v62;
      do
      {
        v52 = v35;
        v39 = a2 + v37;
        v57 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v66 = a2;
            v64 = v52;
            goto LABEL_62;
          }

          v61 = a3;
          v62 = v38;
          v53 = v35;
          v60 = (v38 + v37);
          _s15TokenGeneration6PromptV4TurnVWOcTm_0(v38 + v37, v26, type metadata accessor for Prompt.PromptMarker);
          v42 = v26;
          v43 = v58;
          _s15TokenGeneration6PromptV4TurnVWOcTm_0(v39, v58, type metadata accessor for Prompt.PromptMarker);
          v44 = closure #1 in Prompt.init(_:)(v42, v43);
          if (v36)
          {
            outlined destroy of Prompt.Turn(v43, type metadata accessor for Prompt.PromptMarker);
            outlined destroy of Prompt.Turn(v42, type metadata accessor for Prompt.PromptMarker);
            v66 = v57;
            v64 = v53;
            goto LABEL_62;
          }

          v45 = v44;
          v59 = 0;
          v46 = v39;
          v47 = v61;
          v48 = v61 + v37;
          outlined destroy of Prompt.Turn(v43, type metadata accessor for Prompt.PromptMarker);
          outlined destroy of Prompt.Turn(v42, type metadata accessor for Prompt.PromptMarker);
          v26 = v42;
          if (v45)
          {
            break;
          }

          v49 = v60;
          v35 = v60;
          a3 = v47 + v37;
          if (v47 < v62 || v48 >= v62)
          {
            v40 = v60;
            swift_arrayInitWithTakeFrontToBack();
            v35 = v40;
            v39 = v46;
            v36 = v59;
          }

          else
          {
            v50 = v47 == v62;
            v39 = v46;
            v36 = v59;
            if (!v50)
            {
              v51 = v60;
              swift_arrayInitWithTakeBackToFront();
              v35 = v51;
            }
          }

          v38 = v35;
          a1 = v56;
          v41 = v49 > v55;
          v37 = v54;
          a2 = v57;
          if (!v41)
          {
            goto LABEL_58;
          }
        }

        a3 = v47 + v37;
        if (v47 < v57 || v48 >= v57)
        {
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
          v36 = v59;
          v37 = v54;
        }

        else
        {
          a2 = v46;
          v36 = v59;
          v37 = v54;
          if (v47 != v57)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v56;
        v38 = v62;
        v35 = v53;
      }

      while (v62 > v55);
    }

LABEL_58:
    v66 = a2;
    v64 = v35;
  }

  else
  {
    v23 = v22 * v20;
    if (a4 < a1 || a1 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v24 = v4;
    }

    else
    {
      v24 = v4;
      if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v61 = a4 + v23;
    v64 = a4 + v23;
    if (v23 >= 1 && a2 < a3)
    {
      v28 = v62;
      v59 = v18;
      v60 = v14;
      while (1)
      {
        v29 = a3;
        _s15TokenGeneration6PromptV4TurnVWOcTm_0(a2, v18, type metadata accessor for Prompt.PromptMarker);
        _s15TokenGeneration6PromptV4TurnVWOcTm_0(a4, v14, type metadata accessor for Prompt.PromptMarker);
        v30 = closure #1 in Prompt.init(_:)(v18, v14);
        if (v24)
        {
          break;
        }

        v31 = v30;
        v32 = v14;
        v33 = a4;
        outlined destroy of Prompt.Turn(v32, type metadata accessor for Prompt.PromptMarker);
        outlined destroy of Prompt.Turn(v18, type metadata accessor for Prompt.PromptMarker);
        if (v31)
        {
          v34 = a2 + v28;
          if (a1 < a2 || a1 >= v34)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v34;
            a3 = v29;
          }

          else
          {
            a3 = v29;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v34;
          }
        }

        else
        {
          a4 += v28;
          if (a1 < v33 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v29;
          }

          else
          {
            a3 = v29;
            if (a1 != v33)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v65 = v33 + v28;
        }

        v14 = v60;
        v28 = v62;
        a1 += v62;
        v66 = a1;
        v18 = v59;
        if (a4 >= v61 || a2 >= a3)
        {
          goto LABEL_62;
        }
      }

      outlined destroy of Prompt.Turn(v14, type metadata accessor for Prompt.PromptMarker);
      outlined destroy of Prompt.Turn(v18, type metadata accessor for Prompt.PromptMarker);
    }
  }

LABEL_62:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v66, &v65, &v64, type metadata accessor for Prompt.PromptMarker);
}

unint64_t *specialized _NativeDictionary.filter(_:)(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = specialized closure #1 in _NativeDictionary.filter(_:)(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVyS2SG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_aB15VKXEfU_SS_SSTG5AHxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyS2SIsgnndzo_Tf1nc_n157_s15TokenGeneration6PromptV28getLocalizationOverrideValue4from5token6localeSSSgSDyAC07SpecialA0VSDyS2SGG_AJ10Foundation6LocaleVSgtFZSbSS3key_SS5valuet_tXEfU_Tf1nnc_n(v8, v4, v2);
  result = MEMORY[0x1AC57DBF0](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    v14 = (*(a3 + 56) + 16 * v11);
    v16 = *v14;
    v15 = v14[1];
    v17 = v16 & 0xFFFFFFFFFFFFLL;
    if ((v15 & 0x2000000000000000) != 0)
    {
      v18 = HIBYTE(v15) & 0xF;
    }

    else
    {
      v18 = v17;
    }

    if (v18)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return specialized _NativeDictionary.extractDictionary(using:count:)(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVyS2SG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_aB15VKXEfU_SS_SSTG5AHxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyS2SIsgnndzo_Tf1nc_n157_s15TokenGeneration6PromptV28getLocalizationOverrideValue4from5token6localeSSSgSDyAC07SpecialA0VSDyS2SGG_AJ10Foundation6LocaleVSgtFZSbSS3key_SS5valuet_tXEfU_Tf1nnc_n(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = specialized closure #1 in _NativeDictionary.filter(_:)(result, a2, a3);

    return v6;
  }

  return result;
}

Swift::Int specialized _NativeDictionary.extractDictionary(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v35 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = 16 * (v13 | (v11 << 6));
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = (v17 + v16);
    v22 = v21[1];
    v36 = *v21;
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = 16 * v26;
    v32 = (*(v9 + 48) + v31);
    *v32 = v19;
    v32[1] = v20;
    v33 = (*(v9 + 56) + v31);
    *v33 = v36;
    v33[1] = v22;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v35;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t _StringGuts.validateScalarIndex(_:)(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = _StringGuts.validateSubscalarIndex(_:)(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | _StringGuts.scalarAlignSlow(_:)(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t _StringGuts.validateSubscalarIndex(_:)(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t _StringGuts.scalarAlignSlow(_:)(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = _StringObject.sharedUTF8.getter();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x1EEE6A340]();
    }
  }

  return result;
}

BOOL specialized static Data.== infix(_:_:)(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          outlined copy of Data._Representation(a3, a4);
          return specialized Data.withUnsafeBytes<A>(_:)(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t specialized static Prompt.ImageEmbeddingAttachment.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = a1[4];
  v3 = a1[5];
  v6 = a2[4];
  v5 = a2[5];
  v7 = a2[3];
  v8 = a1[3];
  v9 = specialized static Data.== infix(_:_:)(a1[1], a1[2], a2[1], a2[2]);
  result = 0;
  if (v9 && v8 == v7)
  {
    if (v4 == v6 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t specialized static Prompt.ResponseFormat.SchemaDetails.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a2[3];
  if (v5)
  {
    if (v6)
    {
      v7 = a1[2] == a2[2] && v5 == v6;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_13;
      }
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

LABEL_13:
  v8 = *(type metadata accessor for Prompt.ResponseFormat.SchemaDetails(0) + 24);

  return MEMORY[0x1EEE0AC58](a1 + v8, a2 + v8);
}

uint64_t specialized static Prompt.ResponseFormat.GrammarDetails.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v7 = a2[2];
  v6 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (v6 && (v2 == v7 && v4 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

LABEL_9:
  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t specialized static Prompt.ResponseFormat.Kind.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Prompt.ResponseFormat.SchemaDetails(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v31[-2] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for Prompt.ResponseFormat.Kind(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v31[-2] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v31[-2] - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV14ResponseFormatV4KindO_AGtMd, &_s15TokenGeneration6PromptV14ResponseFormatV4KindO_AGtMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v31[-2] - v14;
  v17 = &v31[-2] + *(v16 + 56) - v14;
  outlined init with copy of Prompt.PromptFragment(a1, &v31[-2] - v14, type metadata accessor for Prompt.ResponseFormat.Kind);
  outlined init with copy of Prompt.PromptFragment(a2, v17, type metadata accessor for Prompt.ResponseFormat.Kind);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with copy of Prompt.PromptFragment(v15, v9, type metadata accessor for Prompt.ResponseFormat.Kind);
    v18 = v9[1];
    v19 = v9[3];
    v20 = v9[5];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v21 = v9[4];
      v22 = v9[2];
      v23 = *v9;
      v24 = *v17;
      v25 = *(v17 + 1);
      v26 = *(v17 + 2);
      v27 = *(v17 + 5);
      v34[0] = v23;
      v34[1] = v18;
      v34[2] = v22;
      v34[3] = v19;
      v34[4] = v21;
      v34[5] = v20;
      v31[0] = v24;
      v31[1] = v25;
      v31[2] = v26;
      v30 = *(v17 + 24);
      v32 = v30;
      v33 = v27;
      v28 = specialized static Prompt.ResponseFormat.GrammarDetails.== infix(_:_:)(v34, v31);

LABEL_9:
      _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v15, type metadata accessor for Prompt.ResponseFormat.Kind);
      return v28 & 1;
    }
  }

  else
  {
    outlined init with copy of Prompt.PromptFragment(v15, v12, type metadata accessor for Prompt.ResponseFormat.Kind);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v17, v6, type metadata accessor for Prompt.ResponseFormat.SchemaDetails);
      v28 = specialized static Prompt.ResponseFormat.SchemaDetails.== infix(_:_:)(v12, v6);
      _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v6, type metadata accessor for Prompt.ResponseFormat.SchemaDetails);
      _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v12, type metadata accessor for Prompt.ResponseFormat.SchemaDetails);
      goto LABEL_9;
    }

    _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v12, type metadata accessor for Prompt.ResponseFormat.SchemaDetails);
  }

  outlined destroy of [Regex2BNF.CharacterPredicate](v15, &_s15TokenGeneration6PromptV14ResponseFormatV4KindO_AGtMd, &_s15TokenGeneration6PromptV14ResponseFormatV4KindO_AGtMR);
  v28 = 0;
  return v28 & 1;
}

BOOL specialized static Prompt.Rendering.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[7];
  v24 = a1[8];
  v20 = a1[9];
  v19 = a1[10];
  v15 = a1[12];
  v16 = a1[11];
  v7 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[7];
  v21 = a2[6];
  v22 = a1[6];
  v23 = a2[8];
  v17 = a2[10];
  v18 = a2[9];
  v13 = a2[12];
  v14 = a2[11];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v2 != v7 || v4 != v8) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v3, v10) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(v5, v9) & 1) == 0)
  {
    return 0;
  }

  if (v6)
  {
    if (!v11 || (v22 != v21 || v6 != v11) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  return (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSTt1g5(v24, v23) & 1) != 0 && (v20 == v18 && v19 == v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) && (v16 == v14 && v15 == v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
}

uint64_t specialized static Prompt.AttachmentContent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  *&v61 = a2;
  v3 = type metadata accessor for Prompt.ResponseFormat(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v59 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Prompt.AttachmentContent(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v59 - v9);
  MEMORY[0x1EEE9AC00](v11);
  v60 = &v59 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v59 - v14);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v59 - v17);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v59 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v59 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV17AttachmentContentO_AEtMd, &_s15TokenGeneration6PromptV17AttachmentContentO_AEtMR);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v59 + *(v27 + 56) - v26;
  v29 = a1;
  v30 = &v59 - v26;
  outlined init with copy of Prompt.PromptFragment(v29, &v59 - v26, type metadata accessor for Prompt.AttachmentContent);
  outlined init with copy of Prompt.PromptFragment(v61, v28, type metadata accessor for Prompt.AttachmentContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        outlined init with copy of Prompt.PromptFragment(v30, v21, type metadata accessor for Prompt.AttachmentContent);
        v38 = *(v21 + 1);
        v37 = *(v21 + 2);
        v39 = *(v21 + 5);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v40 = *v28;
          v41 = *(v28 + 1);
          v42 = *(v28 + 4);
          v43 = *(v28 + 5);
          LOBYTE(v66[0]) = *v21;
          v66[1] = v38;
          v66[2] = v37;
          v67 = *(v21 + 24);
          v68 = v39;
          LOBYTE(v62[0]) = v40;
          v62[1] = v41;
          v61 = *(v28 + 1);
          v63 = v61;
          v64 = v42;
          v65 = v43;
          v44 = specialized static Prompt.ImageEmbeddingAttachment.== infix(_:_:)(v66, v62);
          outlined consume of Data._Representation(v41, v61);

          outlined consume of Data._Representation(v38, v37);
LABEL_23:

          goto LABEL_24;
        }

        outlined consume of Data._Representation(v38, v37);
LABEL_28:

        goto LABEL_29;
      }

      outlined init with copy of Prompt.PromptFragment(v30, v18, type metadata accessor for Prompt.AttachmentContent);
      v48 = *v18;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v49 = *v28;
        type metadata accessor for NSObject();
        v44 = static NSObject.== infix(_:_:)();

        goto LABEL_24;
      }
    }

    else
    {
      outlined init with copy of Prompt.PromptFragment(v30, v24, type metadata accessor for Prompt.AttachmentContent);
      v47 = *(v24 + 1);
      v46 = *(v24 + 2);
      if (!swift_getEnumCaseMultiPayload())
      {
        v55 = *v28;
        v56 = *(v28 + 1);
        v57 = *(v28 + 2);
        if (*v24 == v55)
        {
          v58 = specialized static Data.== infix(_:_:)(v47, v46, v56, v57);
          outlined consume of Data._Representation(v56, v57);
          outlined consume of Data._Representation(v47, v46);
          if (v58)
          {
            goto LABEL_37;
          }
        }

        else
        {
          outlined consume of Data._Representation(v56, v57);
          outlined consume of Data._Representation(v47, v46);
        }

        goto LABEL_38;
      }

      outlined consume of Data._Representation(v47, v46);
    }

LABEL_29:
    outlined destroy of [Regex2BNF.CharacterPredicate](v30, &_s15TokenGeneration6PromptV17AttachmentContentO_AEtMd, &_s15TokenGeneration6PromptV17AttachmentContentO_AEtMR);
LABEL_30:
    v44 = 0;
    return v44 & 1;
  }

  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      outlined init with copy of Prompt.PromptFragment(v30, v10, type metadata accessor for Prompt.AttachmentContent);
      v45 = *v10;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v44 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ29GenerativeFunctionsFoundation4ToolV_Tt1g5(v45, *v28);

        goto LABEL_23;
      }
    }

    else
    {
      outlined init with copy of Prompt.PromptFragment(v30, v7, type metadata accessor for Prompt.AttachmentContent);
      v53 = *v7;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v44 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration6PromptV8ToolCallV_Tt1g5(v53, *v28);

        goto LABEL_23;
      }
    }

    goto LABEL_28;
  }

  if (EnumCaseMultiPayload == 3)
  {
    outlined init with copy of Prompt.PromptFragment(v30, v15, type metadata accessor for Prompt.AttachmentContent);
    v32 = *v15;
    v33 = v15[1];
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v34 = *v28;
      v35 = *(v28 + 1);
      if (_sSasSQRzlE2eeoiySbSayxG_ABtFZs7Float16V_Tt1g5(v32, v34))
      {
        v36 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(v33, v35);

        if ((v36 & 1) == 0)
        {
          goto LABEL_38;
        }

LABEL_37:
        _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v30, type metadata accessor for Prompt.AttachmentContent);
        v44 = 1;
        return v44 & 1;
      }

LABEL_38:
      _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v30, type metadata accessor for Prompt.AttachmentContent);
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  v50 = v60;
  outlined init with copy of Prompt.PromptFragment(v30, v60, type metadata accessor for Prompt.AttachmentContent);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v50, type metadata accessor for Prompt.ResponseFormat);
    goto LABEL_29;
  }

  v51 = v28;
  v52 = v59;
  _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v51, v59, type metadata accessor for Prompt.ResponseFormat);
  v44 = specialized static Prompt.ResponseFormat.Kind.== infix(_:_:)(v50, v52);
  _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v52, type metadata accessor for Prompt.ResponseFormat);
  _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v50, type metadata accessor for Prompt.ResponseFormat);
LABEL_24:
  _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v30, type metadata accessor for Prompt.AttachmentContent);
  return v44 & 1;
}

uint64_t specialized static Prompt.SpecialToken.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSg_ADtMd, &_s10Foundation6LocaleVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  if (*a1 != *a2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_9;
  }

  v29 = v7;
  v30 = type metadata accessor for Prompt.SpecialToken(0);
  v14 = *(v30 + 20);
  v15 = *(v11 + 48);
  outlined init with copy of (String, Any)(a1 + v14, v13, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  outlined init with copy of (String, Any)(a2 + v14, &v13[v15], &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    outlined init with copy of (String, Any)(v13, v10, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v19 = &v13[v15];
      v20 = v29;
      (*(v5 + 32))(v29, v19, v4);
      lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770], MEMORY[0x1E6969788]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *(v5 + 8);
      v22(v20, v4);
      v22(v10, v4);
      outlined destroy of [Regex2BNF.CharacterPredicate](v13, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
      if ((v21 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_12;
    }

    (*(v5 + 8))(v10, v4);
LABEL_8:
    outlined destroy of [Regex2BNF.CharacterPredicate](v13, &_s10Foundation6LocaleVSg_ADtMd, &_s10Foundation6LocaleVSg_ADtMR);
    goto LABEL_9;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  outlined destroy of [Regex2BNF.CharacterPredicate](v13, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
LABEL_12:
  v23 = v30;
  v24 = *(v30 + 24);
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  v28 = v27[1];
  if (v26)
  {
    if (v28 && (*v25 == *v27 && v26 == v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      goto LABEL_19;
    }
  }

  else if (!v28)
  {
LABEL_19:
    v17 = *(a1 + *(v23 + 28)) ^ *(a2 + *(v23 + 28)) ^ 1;
    return v17 & 1;
  }

LABEL_9:
  v17 = 0;
  return v17 & 1;
}

uint64_t outlined init with copy of Prompt.PromptFragment(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s15TokenGeneration6PromptV10AttachmentVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type Locale and conformance Locale(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined assign with take of Locale?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of Prompt.RenderedPromptFragment(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Prompt.PreprocessedImageAttachment and conformance Prompt.PreprocessedImageAttachment()
{
  result = lazy protocol witness table cache variable for type Prompt.PreprocessedImageAttachment and conformance Prompt.PreprocessedImageAttachment;
  if (!lazy protocol witness table cache variable for type Prompt.PreprocessedImageAttachment and conformance Prompt.PreprocessedImageAttachment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Prompt.PreprocessedImageAttachment and conformance Prompt.PreprocessedImageAttachment);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Prompt.PreprocessedImageAttachment and conformance Prompt.PreprocessedImageAttachment;
  if (!lazy protocol witness table cache variable for type Prompt.PreprocessedImageAttachment and conformance Prompt.PreprocessedImageAttachment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Prompt.PreprocessedImageAttachment and conformance Prompt.PreprocessedImageAttachment);
  }

  return result;
}

unint64_t type metadata accessor for NSObject()
{
  result = lazy cache variable for type metadata for NSObject;
  if (!lazy cache variable for type metadata for NSObject)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSObject);
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC19TokenGenerationCore4RuleV_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type Rule and conformance Rule();
  result = MEMORY[0x1AC57C380](v2, &type metadata for Rule, v3);
  v10 = result;
  if (v2)
  {
    v5 = (a1 + 48);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v8 = *(v5 - 2);

      specialized Set._Variant.insert(_:)(&v9, v8, v7, v6);

      v5 += 3;
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC19TokenGenerationCore4RuleV_s10ArraySliceVyAFGTt0g5Tf4gX_n(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 1;
  v4 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = lazy protocol witness table accessor for type Rule and conformance Rule();
  result = MEMORY[0x1AC57C380](v4, &type metadata for Rule, v7);
  v16 = result;
  v8 = v3 - a2;
  if (v3 != a2)
  {
    if (a2 <= v3)
    {
      v9 = v3;
    }

    else
    {
      v9 = a2;
    }

    v10 = v9 - a2;
    v11 = (v6 + 24 * a2 + 8);
    while (v10)
    {
      v13 = *v11;
      v12 = v11[1];
      v14 = *(v11 - 1);

      specialized Set._Variant.insert(_:)(&v15, v14, v13, v12);

      --v10;
      v11 += 3;
      if (!--v8)
      {
        return v16;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC19TokenGenerationCore17NonTerminalSymbolV_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type NonTerminalSymbol and conformance NonTerminalSymbol();
  result = MEMORY[0x1AC57C380](v2, &type metadata for NonTerminalSymbol, v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;

      specialized Set._Variant.insert(_:)(&v8, v7, v6);

      v5 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation12CharacterSetV_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for CharacterSet();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet, MEMORY[0x1E69680B8], MEMORY[0x1E69680C0]);
  result = MEMORY[0x1AC57C380](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      specialized Set._Variant.insert(_:)(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSJ_SaySJGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1AC57C380](v2, MEMORY[0x1E69E5EE0], MEMORY[0x1E69E5EE8]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      specialized Set._Variant.insert(_:)(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t specialized static Prompt.getLocalizationOverrideValue(from:token:locale:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Prompt.SpecialToken(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v37 - v10;
  v12 = type metadata accessor for Locale();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v16)
    {
      outlined init with copy of (String, Any)(a3, v11, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
      if ((*(v13 + 48))(v11, 1, v12) == 1)
      {
        outlined destroy of [Regex2BNF.CharacterPredicate](v11, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
        if (one-time initialization token for prompt != -1)
        {
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        __swift_project_value_buffer(v17, static Log.prompt);
        outlined init with copy of Prompt.PromptFragment(a2, v8, type metadata accessor for Prompt.SpecialToken);
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v37 = v21;
          *v20 = 136642819;
          v22 = *v8;
          v23 = v8[1];

          _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v8, type metadata accessor for Prompt.SpecialToken);
          v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v37);

          *(v20 + 4) = v24;
          _os_log_impl(&dword_1A8E85000, v18, v19, "Locale is not provided hence could not find localization override for special token: %{sensitive}s", v20, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v21);
          MEMORY[0x1AC57DBF0](v21, -1, -1);
          MEMORY[0x1AC57DBF0](v20, -1, -1);
        }

        else
        {

          _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v8, type metadata accessor for Prompt.SpecialToken);
        }
      }

      else
      {
        (*(v13 + 32))(v15, v11, v12);

        v26 = specialized _NativeDictionary.filter(_:)(v25);

        v38 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVyS2S_GTt0g5(v27);
        specialized Set._Variant.insert(_:)(&v37, 28261, 0xE200000000000000);

        v28 = closure #2 in static Prompt.getLocalizationOverrideValue(from:token:locale:)(&v38);
        v30 = v29;

        if (!v30)
        {
          (*(v13 + 8))(v15, v12);

          return v28;
        }

        if (v26[2])
        {
          v31 = specialized __RawDictionaryStorage.find<A>(_:)(v28, v30);
          v33 = v32;

          if (v33)
          {
            v34 = *(v26[7] + 16 * v31);
            v35 = *(v13 + 8);

            v35(v15, v12);

            return v34;
          }
        }

        else
        {
        }

        (*(v13 + 8))(v15, v12);
      }
    }
  }

  return 0;
}

uint64_t specialized static Prompt.+= infix(_:_:)(void *a1, uint64_t *a2)
{
  v57 = type metadata accessor for Prompt.Attachment(0);
  v4 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v50 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v56 = v48 - v7;
  v8 = type metadata accessor for Prompt.Delimiter(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v48 - v13;
  v15 = *a2;
  v53 = a2[1];
  v54 = v15;
  v16 = a2[2];
  v55 = a2[3];
  result = String.count.getter();
  v18 = a1 + 3;
  v19 = a1 + 2;
  v20 = *(a1[2] + 16);
  v21 = *(a1[3] + 16);
  v58 = v20 + v21;
  v59 = result;
  if (!__OFADD__(v20, v21))
  {
    v52 = a1;
    v22 = *(v16 + 16);
    v23 = MEMORY[0x1E69E7CC0];
    v51 = v18;
    if (v22)
    {
      v48[1] = v19;
      v49 = v4;
      v60 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22, 0);
      v23 = v60;
      v24 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v25 = v16 + v24;
      v26 = *(v9 + 72);
      while (1)
      {
        outlined init with copy of Prompt.PromptFragment(v25, v11, type metadata accessor for Prompt.Delimiter);
        result = outlined init with copy of Prompt.PromptFragment(v11, v14, type metadata accessor for Prompt.SpecialToken);
        v27 = *&v11[*(v8 + 20)];
        v28 = v27 + v59;
        if (__OFADD__(v27, v59))
        {
          break;
        }

        v29 = *&v11[*(v8 + 24)];
        result = _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v11, type metadata accessor for Prompt.Delimiter);
        v30 = v29 + v58;
        if (__OFADD__(v29, v58))
        {
          goto LABEL_19;
        }

        *&v14[*(v8 + 20)] = v28;
        *&v14[*(v8 + 24)] = v30;
        v60 = v23;
        v32 = *(v23 + 16);
        v31 = *(v23 + 24);
        if (v32 >= v31 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1);
          v23 = v60;
        }

        *(v23 + 16) = v32 + 1;
        _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v14, v23 + v24 + v32 * v26, type metadata accessor for Prompt.Delimiter);
        v25 += v26;
        if (!--v22)
        {
          v4 = v49;
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
    }

    else
    {
LABEL_10:
      specialized Array.append<A>(contentsOf:)(v23);
      v33 = v55;
      v34 = v56;
      v35 = *(v55 + 16);
      v36 = MEMORY[0x1E69E7CC0];
      v37 = v57;
      if (!v35)
      {
LABEL_17:
        specialized Array.append<A>(contentsOf:)(v36);
        return MEMORY[0x1AC57C120](v54, v53);
      }

      v60 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35, 0);
      v36 = v60;
      v38 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v39 = v33 + v38;
      v40 = *(v4 + 72);
      v41 = v50;
      while (1)
      {
        outlined init with copy of Prompt.PromptFragment(v39, v41, type metadata accessor for Prompt.Attachment);
        result = outlined init with copy of Prompt.PromptFragment(v41, v34, type metadata accessor for Prompt.AttachmentContent);
        v42 = *(v41 + *(v37 + 20));
        v43 = v42 + v59;
        if (__OFADD__(v42, v59))
        {
          break;
        }

        v44 = *(v41 + *(v37 + 24));
        result = _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v41, type metadata accessor for Prompt.Attachment);
        v45 = v44 + v58;
        if (__OFADD__(v44, v58))
        {
          goto LABEL_21;
        }

        *(v34 + *(v37 + 20)) = v43;
        *(v34 + *(v37 + 24)) = v45;
        v60 = v36;
        v47 = *(v36 + 16);
        v46 = *(v36 + 24);
        if (v47 >= v46 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1);
          v36 = v60;
        }

        *(v36 + 16) = v47 + 1;
        _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v34, v36 + v38 + v47 * v40, type metadata accessor for Prompt.Attachment);
        v39 += v40;
        if (!--v35)
        {
          goto LABEL_17;
        }
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v3 = *a2;
  v8[0] = 0;
  v8[1] = 0xE000000000000000;
  MEMORY[0x1AC57C060](0);
  v4 = MEMORY[0x1E69E7CC0];
  v8[2] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, MEMORY[0x1E69E7CC0]);
  v8[3] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, v4);
  v7 = v3;
  v5.surface.super.isa = &v7;
  Prompt.StringInterpolation.appendInterpolation(imageSurface:)(v5);
  specialized static Prompt.+= infix(_:_:)(a1, v8);
}

uint64_t specialized static Prompt.+= infix(_:_:)(void *a1, uint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0xE000000000000000;
  MEMORY[0x1AC57C060](0);
  v4 = MEMORY[0x1E69E7CC0];
  v6[2] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, MEMORY[0x1E69E7CC0]);
  v6[3] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, v4);
  Prompt.StringInterpolation.appendInterpolation(token:)(a2);
  specialized static Prompt.+= infix(_:_:)(a1, v6);
}

{
  v4 = type metadata accessor for Prompt.AttachmentContent(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  MEMORY[0x1AC57C060](0, v5);
  v8 = MEMORY[0x1E69E7CC0];
  v10[2] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, MEMORY[0x1E69E7CC0]);
  v10[3] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, v8);
  outlined init with copy of Prompt.PromptFragment(a2, v7, type metadata accessor for Prompt.ResponseFormat);
  swift_storeEnumTagMultiPayload();
  Prompt.StringInterpolation.appendInterpolation(attachment:)(v7);
  _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v7, type metadata accessor for Prompt.AttachmentContent);
  specialized static Prompt.+= infix(_:_:)(a1, v10);
}

uint64_t specialized static Prompt.+= infix(_:_:)(void *a1, char *a2)
{
  v3 = *a2;
  v4 = *(a2 + 1);
  v5 = *(a2 + 2);
  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  MEMORY[0x1AC57C060](0);
  v6 = MEMORY[0x1E69E7CC0];
  v11[2] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, MEMORY[0x1E69E7CC0]);
  v11[3] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, v6);
  v8[0] = v3;
  v9 = v4;
  v10 = v5;
  Prompt.StringInterpolation.appendInterpolation(image:)(v8);
  specialized static Prompt.+= infix(_:_:)(a1, v11);
}

{
  v4 = *a2;
  v5 = *(a2 + 5);
  v13 = 0;
  *&v14 = 0xE000000000000000;
  MEMORY[0x1AC57C060](0);
  v6 = MEMORY[0x1E69E7CC0];
  *(&v14 + 1) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, MEMORY[0x1E69E7CC0]);
  v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, v6);
  LOBYTE(v9) = v4;
  v7 = *(a2 + 8);
  v11 = *(a2 + 24);
  v10 = v7;
  v12 = v5;
  Prompt.StringInterpolation.appendInterpolation(imageEmbedding:)(&v9);
  v9 = v13;
  v10 = v14;
  *&v11 = v15;
  specialized static Prompt.+= infix(_:_:)(a1, &v9);
}

uint64_t specialized static Prompt.+= infix(_:_:)(void *a1, __int128 *a2)
{
  v7[0] = 0;
  v7[1] = 0xE000000000000000;
  MEMORY[0x1AC57C060](0);
  v4 = MEMORY[0x1E69E7CC0];
  v7[2] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, MEMORY[0x1E69E7CC0]);
  v7[3] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, v4);
  v6 = *a2;
  Prompt.StringInterpolation.appendInterpolation(preprocessedImage:)(&v6);
  specialized static Prompt.+= infix(_:_:)(a1, v7);
}

unint64_t lazy protocol witness table accessor for type Prompt.ImageEmbeddingAttachment.Encoding and conformance Prompt.ImageEmbeddingAttachment.Encoding()
{
  result = lazy protocol witness table cache variable for type Prompt.ImageEmbeddingAttachment.Encoding and conformance Prompt.ImageEmbeddingAttachment.Encoding;
  if (!lazy protocol witness table cache variable for type Prompt.ImageEmbeddingAttachment.Encoding and conformance Prompt.ImageEmbeddingAttachment.Encoding)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Prompt.ImageEmbeddingAttachment.Encoding and conformance Prompt.ImageEmbeddingAttachment.Encoding);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Prompt.ImageEmbeddingAttachment and conformance Prompt.ImageEmbeddingAttachment()
{
  result = lazy protocol witness table cache variable for type Prompt.ImageEmbeddingAttachment and conformance Prompt.ImageEmbeddingAttachment;
  if (!lazy protocol witness table cache variable for type Prompt.ImageEmbeddingAttachment and conformance Prompt.ImageEmbeddingAttachment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Prompt.ImageEmbeddingAttachment and conformance Prompt.ImageEmbeddingAttachment);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Prompt.ImageAttachment.Format and conformance Prompt.ImageAttachment.Format()
{
  result = lazy protocol witness table cache variable for type Prompt.ImageAttachment.Format and conformance Prompt.ImageAttachment.Format;
  if (!lazy protocol witness table cache variable for type Prompt.ImageAttachment.Format and conformance Prompt.ImageAttachment.Format)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Prompt.ImageAttachment.Format and conformance Prompt.ImageAttachment.Format);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Prompt.ImageAttachment and conformance Prompt.ImageAttachment()
{
  result = lazy protocol witness table cache variable for type Prompt.ImageAttachment and conformance Prompt.ImageAttachment;
  if (!lazy protocol witness table cache variable for type Prompt.ImageAttachment and conformance Prompt.ImageAttachment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Prompt.ImageAttachment and conformance Prompt.ImageAttachment);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Prompt.ImageSurfaceAttachment and conformance Prompt.ImageSurfaceAttachment()
{
  result = lazy protocol witness table cache variable for type Prompt.ImageSurfaceAttachment and conformance Prompt.ImageSurfaceAttachment;
  if (!lazy protocol witness table cache variable for type Prompt.ImageSurfaceAttachment and conformance Prompt.ImageSurfaceAttachment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Prompt.ImageSurfaceAttachment and conformance Prompt.ImageSurfaceAttachment);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Prompt.ResponseFormat.GrammarDetails and conformance Prompt.ResponseFormat.GrammarDetails()
{
  result = lazy protocol witness table cache variable for type Prompt.ResponseFormat.GrammarDetails and conformance Prompt.ResponseFormat.GrammarDetails;
  if (!lazy protocol witness table cache variable for type Prompt.ResponseFormat.GrammarDetails and conformance Prompt.ResponseFormat.GrammarDetails)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Prompt.ResponseFormat.GrammarDetails and conformance Prompt.ResponseFormat.GrammarDetails);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Prompt.ToolDefinitions and conformance Prompt.ToolDefinitions()
{
  result = lazy protocol witness table cache variable for type Prompt.ToolDefinitions and conformance Prompt.ToolDefinitions;
  if (!lazy protocol witness table cache variable for type Prompt.ToolDefinitions and conformance Prompt.ToolDefinitions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Prompt.ToolDefinitions and conformance Prompt.ToolDefinitions);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Prompt.Rendering.Source and conformance Prompt.Rendering.Source()
{
  result = lazy protocol witness table cache variable for type Prompt.Rendering.Source and conformance Prompt.Rendering.Source;
  if (!lazy protocol witness table cache variable for type Prompt.Rendering.Source and conformance Prompt.Rendering.Source)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Prompt.Rendering.Source and conformance Prompt.Rendering.Source);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Prompt.Rendering and conformance Prompt.Rendering()
{
  result = lazy protocol witness table cache variable for type Prompt.Rendering and conformance Prompt.Rendering;
  if (!lazy protocol witness table cache variable for type Prompt.Rendering and conformance Prompt.Rendering)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Prompt.Rendering and conformance Prompt.Rendering);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Prompt and conformance Prompt()
{
  result = lazy protocol witness table cache variable for type Prompt and conformance Prompt;
  if (!lazy protocol witness table cache variable for type Prompt and conformance Prompt)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Prompt and conformance Prompt);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Prompt and conformance Prompt;
  if (!lazy protocol witness table cache variable for type Prompt and conformance Prompt)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Prompt and conformance Prompt);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Prompt and conformance Prompt;
  if (!lazy protocol witness table cache variable for type Prompt and conformance Prompt)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Prompt and conformance Prompt);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Prompt and conformance Prompt;
  if (!lazy protocol witness table cache variable for type Prompt and conformance Prompt)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Prompt and conformance Prompt);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Prompt.StringInterpolation and conformance Prompt.StringInterpolation()
{
  result = lazy protocol witness table cache variable for type Prompt.StringInterpolation and conformance Prompt.StringInterpolation;
  if (!lazy protocol witness table cache variable for type Prompt.StringInterpolation and conformance Prompt.StringInterpolation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Prompt.StringInterpolation and conformance Prompt.StringInterpolation);
  }

  return result;
}

void type metadata completion function for Prompt.SpecialToken(uint64_t a1)
{
  type metadata accessor for Locale?(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Locale?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Locale?)
  {
    type metadata accessor for Locale();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Locale?);
    }
  }
}

uint64_t getEnumTagSinglePayload for Prompt.ImageEmbeddingAttachment(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Prompt.ImageEmbeddingAttachment(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_21Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(0, a2, a3);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_22Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = (a5)(0, a2, a3, a4);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t type metadata completion function for Prompt.Delimiter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for Prompt.AttachmentContent(uint64_t a1)
{
  type metadata accessor for Prompt.ResponseFormat(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for [Prompt.ToolCall], &type metadata for Prompt.ToolCall, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for String?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for Prompt.ImageAttachment(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Prompt.ImageAttachment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t type metadata completion function for Prompt.ResponseFormat(uint64_t a1)
{
  result = type metadata accessor for Prompt.ResponseFormat.Kind(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for Prompt.ResponseFormat.Kind(uint64_t a1)
{
  result = type metadata accessor for Prompt.ResponseFormat.SchemaDetails(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}