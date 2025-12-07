uint64_t CUJSONValue.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = sub_247BBE27C(0, 1, 1, MEMORY[0x277D84F90]);
    v6 = (a1 + 48);
    do
    {
      v7 = *(v6 - 2);
      v8 = *(v6 - 1);
      v9 = *v6;
      sub_247BC2D0C(v7, v8, *v6);
      v11 = *(v5 + 2);
      v10 = *(v5 + 3);
      if (v11 >= v10 >> 1)
      {
        v5 = sub_247BBE27C((v10 > 1), v11 + 1, 1, v5);
      }

      v6 += 24;
      *(v5 + 2) = v11 + 1;
      v12 = &v5[24 * v11];
      *(v12 + 4) = v7;
      *(v12 + 5) = v8;
      v12[48] = v9;
      --v3;
    }

    while (v3);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

uint64_t CUJSONValue.init(BOOLeanLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result & 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return result;
}

unsigned __int8 *sub_247BA90C0@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return result;
}

uint64_t CUJSONValue.init(dictionaryLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = *(a1 + 16);
  if (!v32)
  {
    v4 = MEMORY[0x277D84F98];
LABEL_17:

    *a2 = v4;
    *(a2 + 8) = 0;
    *(a2 + 16) = 2;
    return result;
  }

  v2 = 0;
  v3 = (a1 + 64);
  v4 = MEMORY[0x277D84F98];
  v31 = a1;
  while (v2 < *(a1 + 16))
  {
    v11 = *(v3 - 4);
    v10 = *(v3 - 3);
    v13 = *(v3 - 2);
    v12 = *(v3 - 1);
    v14 = *v3;

    sub_247BC2D0C(v13, v12, v14);

    sub_247BC2D0C(v13, v12, v14);
    sub_247BC2D30(v13, v12, v14);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = sub_247B9B134(v11, v10);
    v18 = v4[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      goto LABEL_19;
    }

    v22 = v17;
    if (v4[3] < v21)
    {
      sub_247BBEF44(v21, isUniquelyReferenced_nonNull_native);
      v16 = sub_247B9B134(v11, v10);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_21;
      }

LABEL_11:
      if (v22)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v28 = v16;
    sub_247BBF734();
    v16 = v28;
    if (v22)
    {
LABEL_3:
      v5 = v16;

      v6 = v4[7] + 24 * v5;
      v7 = *v6;
      v8 = *(v6 + 8);
      *v6 = v13;
      *(v6 + 8) = v12;
      v9 = *(v6 + 16);
      *(v6 + 16) = v14;
      sub_247BC2D30(v7, v8, v9);
      goto LABEL_4;
    }

LABEL_12:
    v4[(v16 >> 6) + 8] |= 1 << v16;
    v24 = (v4[6] + 16 * v16);
    *v24 = v11;
    v24[1] = v10;
    v25 = v4[7] + 24 * v16;
    *v25 = v13;
    *(v25 + 8) = v12;
    *(v25 + 16) = v14;
    v26 = v4[2];
    v20 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (v20)
    {
      goto LABEL_20;
    }

    v4[2] = v27;
LABEL_4:
    ++v2;
    v3 += 40;
    a1 = v31;
    if (v32 == v2)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_247BF73C0();
  __break(1u);
  return result;
}

void CUJSONValue.init(floatLiteral:)(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 3;
}

void *sub_247BA931C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 3;
  return result;
}

uint64_t CUJSONValue.init(integerLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 4;
  return result;
}

void *sub_247BA9340@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 4;
  return result;
}

void CUJSONValue.init(nilLiteral:)(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 6;
}

void sub_247BA9364(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 6;
}

uint64_t CUJSONValue.init(stringLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 5;
  return result;
}

void *sub_247BA9384@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  *(a2 + 8) = v2;
  *(a2 + 16) = 5;
  return result;
}

uint64_t CUKeyPathModifiable.set<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = MEMORY[0x277D84308];
  MEMORY[0x28223BE20](a1);
  (*(v7 + 16))(&v9 - v6);
  swift_setAtWritableKeyPath();
  return (*(*(*(v4 + *v5) - 8) + 32))(a2, v2);
}

uint64_t CUKeyPathModifiable.setIf<A>(_:_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = MEMORY[0x277D84308];
  v8 = *(*a1 + *MEMORY[0x277D84308] + 8);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v15 - v11;
  if (v13(v10))
  {
    (*(v9 + 16))(v12, a2, v8);
    swift_setAtWritableKeyPath();
  }

  return (*(*(*(v6 + *v7) - 8) + 32))(a3, v3);
}

uint64_t CUKeyPathModifiable.setIfNonNil<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = *(*a1 + *MEMORY[0x277D84308] + 8);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = *(v8 + 16);
  v12(&v17 - v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DD98, &qword_247BFA8E8);
  if (swift_dynamicCast())
  {
    v17 = a3;
    v18 = v3;
    sub_247B93B4C(v19, v21);
    v14 = v22;
    v15 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    if ((*(v15 + 8))(v14, v15))
    {
      (*(*(*(v6 + *MEMORY[0x277D84308]) - 8) + 32))(v17, v18);
      return __swift_destroy_boxed_opaque_existential_1Tm(v21);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    a3 = v17;
    v3 = v18;
  }

  else
  {
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    sub_247B9CAD0(v19, &qword_27EE5DDA0, &qword_247BFA8F0);
  }

  (v12)(v11, a2, v7);
  swift_setAtWritableKeyPath();
  return (*(*(*(v6 + *MEMORY[0x277D84308]) - 8) + 32))(a3, v3);
}

Swift::String __swiftcall CULocalizedString(environment:bundle:bundleID:table:key:localization:)(CoreUtilsSwift::CUEnvironmentValues environment, NSBundle_optional bundle, Swift::String_optional bundleID, Swift::String_optional table, Swift::String key, Swift::String_optional localization)
{
  countAndFlagsBits = key._countAndFlagsBits;
  object = table.value._object;
  v8 = table.value._countAndFlagsBits;
  v9 = bundleID.value._object;
  v10 = bundleID.value._countAndFlagsBits;
  is_nil = bundle.is_nil;
  isa = bundle.value.super.isa;
  v13 = *environment._values._rawValue;
  if (localization.value._countAndFlagsBits)
  {
    *(&localizations + 1) = bundleID.value._countAndFlagsBits;
    v14 = bundleID.value._object;
    v15 = table.value._countAndFlagsBits;
    v16 = table.value._object;
    v17 = key._countAndFlagsBits;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DDA8, &qword_247BFA8F8);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_247BFA840;
    *(v18 + 32) = key._object;
    *(v18 + 40) = localization.value._countAndFlagsBits;
    countAndFlagsBits = v17;
    object = v16;
    v8 = v15;
    v9 = v14;
    v10 = *(&localizations + 1);
  }

  else
  {
    v18 = 0;
  }

  v26 = v13;

  LOBYTE(localizations) = 1;
  v28._object = v18;
  v27.value.super.isa = isa;
  v27.is_nil = is_nil;
  v19.value._countAndFlagsBits = v10;
  v19.value._object = v9;
  v20.value._countAndFlagsBits = v8;
  v20.value._object = object;
  v28._countAndFlagsBits = countAndFlagsBits;
  v21 = CULocalizedString(environment:bundle:bundleID:table:key:localizations:lookupPreferredLocalizations:)(&v26, v27, v19, v20, v28, localizations, SBYTE9(localizations));

  v22 = v21._countAndFlagsBits;
  v23 = v21._object;
  result._object = v23;
  result._countAndFlagsBits = v22;
  return result;
}

Swift::String __swiftcall CULocalizedString(environment:bundle:bundleID:table:key:localizations:lookupPreferredLocalizations:)(CoreUtilsSwift::CUEnvironmentValues environment, NSBundle_optional bundle, Swift::String_optional bundleID, Swift::String_optional table, Swift::String key, Swift::OpaquePointer_optional localizations, Swift::Bool lookupPreferredLocalizations)
{
  countAndFlagsBits = key._countAndFlagsBits;
  object = table.value._object;
  v73 = bundleID.value._object;
  v74 = table.value._countAndFlagsBits;
  v9 = bundleID.value._countAndFlagsBits;
  isa = bundle.value.super.isa;
  v12 = sub_247BF5E40();
  v13 = *(v12 - 8);
  v70 = v12;
  v71 = v13;
  v14 = MEMORY[0x28223BE20](v12);
  v69 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v67 - v16;
  v18 = *environment._values._rawValue;
  if (isa)
  {
    v19 = isa;
  }

  else if (!v9 || (v20 = sub_247BF6470(), v19 = [objc_opt_self() bundleWithIdentifier_], v20, !v19))
  {
    v19 = [objc_opt_self() mainBundle];
  }

  if (key._object)
  {
    v72 = v18;
    v21 = isa;
  }

  else
  {
    v44 = isa;
    if ((localizations.value._rawValue & 1) == 0)
    {
      goto LABEL_36;
    }

    v72 = v18;
    v45 = sub_247BF6470();
    v46 = *MEMORY[0x277CBF008];
    v47 = sub_247BF6470();
    v48 = CFPreferencesCopyValue(v45, v46, v47, *MEMORY[0x277CBF010]);

    if (!v48 || (*&v78 = v48, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DFC0, &qword_247BFBC30), (swift_dynamicCast() & 1) == 0))
    {
      sub_247BF5F90();
    }
  }

  v22 = [(objc_class *)v19 localizations];
  if (!v22)
  {
    sub_247BF66C0();
    v22 = sub_247BF66A0();
  }

  v23 = objc_opt_self();
  v24 = sub_247BF66A0();

  v25 = [v23 preferredLocalizationsFromArray:v22 forPreferences:v24];

  v26 = sub_247BF66C0();
  if (*(v26 + 16))
  {

    v27 = sub_247BF6470();

    v28 = sub_247BF6470();
    v29 = sub_247BF6470();
    v68 = v17;
    v30 = countAndFlagsBits;
    v31 = v29;
    v32 = sub_247BF6470();

    v33 = [(objc_class *)v19 URLForResource:v27 withExtension:v28 subdirectory:v31 localization:v32];

    countAndFlagsBits = v30;
    v34 = v68;

    v18 = v72;
    if (v33)
    {
      v35 = v69;
      sub_247BF5E30();

      v36 = v71;
      v37 = v35;
      v38 = v70;
      (*(v71 + 32))(v34, v37, v70);
      v39 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
      v40 = sub_247BF5E20();
      v41 = [v39 initWithContentsOfURL_];

      if (v41)
      {
        *&v78 = v18;
        if (CUEnvironmentValues.greenTea.getter())
        {
          *&v76 = 5523295;
          *(&v76 + 1) = 0xE300000000000000;
          *&v75 = object;
          *(&v75 + 1) = v30;

          *&v75 = sub_247BF65F0();
          *(&v75 + 1) = v42;
          sub_247BF6530();
          v76 = v75;
          v43 = [v41 __swift_objectForKeyedSubscript_];
          swift_unknownObjectRelease();
          if (v43)
          {
            sub_247BF6BB0();
            swift_unknownObjectRelease();
          }

          else
          {
            v76 = 0u;
            v77 = 0u;
          }

          v78 = v76;
          v79 = v77;
          v38 = v70;
          v49 = v68;
          if (*(&v77 + 1))
          {
            if (swift_dynamicCast())
            {
              (*(v71 + 8))(v49, v38);

LABEL_34:
              v52 = *(&v75 + 1);
              v51 = v75;
              goto LABEL_48;
            }
          }

          else
          {
            sub_247B9CAD0(&v78, &unk_27EE5DDB0, &unk_247BFA900);
          }
        }

        *&v76 = object;
        *(&v76 + 1) = v30;

        v50 = [v41 __swift_objectForKeyedSubscript_];
        swift_unknownObjectRelease();
        if (v50)
        {
          sub_247BF6BB0();
          swift_unknownObjectRelease();

          (*(v71 + 8))(v68, v38);
        }

        else
        {
          (*(v71 + 8))(v68, v38);

          v76 = 0u;
          v77 = 0u;
        }

        v78 = v76;
        v79 = v77;
        if (*(&v77 + 1))
        {
          if (swift_dynamicCast())
          {

            goto LABEL_34;
          }
        }

        else
        {
          sub_247B9CAD0(&v78, &unk_27EE5DDB0, &unk_247BFA900);
        }
      }

      else
      {
        (*(v36 + 8))(v34, v38);
      }
    }
  }

  else
  {

    v18 = v72;
  }

LABEL_36:
  *&v78 = v18;
  if (CUEnvironmentValues.greenTea.getter())
  {
    *&v78 = 5523295;
    *(&v78 + 1) = 0xE300000000000000;
    v72 = object;
    *&v76 = object;
    *(&v76 + 1) = countAndFlagsBits;

    *&v76 = sub_247BF65F0();
    *(&v76 + 1) = v53;
    sub_247BF6530();
    v54 = v76;
    v55 = sub_247BF6470();
    if (v74)
    {
      v56 = sub_247BF6470();
    }

    else
    {
      v56 = 0;
    }

    v57 = [(objc_class *)v19 localizedStringForKey:v55 value:0 table:v56];

    v51 = sub_247BF6480();
    v52 = v58;

    if (__PAIR128__(v52, v51) == v54)
    {
    }

    else
    {
      v59 = sub_247BF7180();

      if ((v59 & 1) == 0)
      {

        goto LABEL_48;
      }
    }
  }

  v60 = sub_247BF6470();
  if (v74)
  {
    v61 = sub_247BF6470();
  }

  else
  {
    v61 = 0;
  }

  v62 = [(objc_class *)v19 localizedStringForKey:v60 value:0 table:v61];

  v51 = sub_247BF6480();
  v52 = v63;

LABEL_48:
  v64 = v51;
  v65 = v52;
  result._object = v65;
  result._countAndFlagsBits = v64;
  return result;
}

void CULogHandle.ulog(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_247BF6470();
  [v2 ulog:a1 message:v4];
}

uint64_t CUOrderedDictionary.__allocating_init()()
{
  v0 = swift_allocObject();
  CUOrderedDictionary.init()();
  return v0;
}

void *CUOrderedDictionary.init()()
{
  type metadata accessor for CUOrderedDictionary.Node(0, *(*v0 + 80), *(*v0 + 88), *(*v0 + 96));
  v1 = sub_247BF62B0();
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = v1;
  return v0;
}

uint64_t CUOrderedDictionary.append(key:value:)(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v4 = *(*v2 + 88);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v20 - v7;
  v10 = *(v9 + 80);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v6);
  v13 = &v20 - v12;
  v22 = *(v14 + 96);
  type metadata accessor for CUOrderedDictionary.Node(0, v10, v4, v22);
  v15 = *(v11 + 16);
  v23 = a1;
  v15(v13, a1, v10);
  (*(v5 + 16))(v8, v21, v4);
  v16 = v2[4];
  v17 = sub_247BAA694(v13, v8, v16, 0);
  v18 = v17;
  if (!v2[3])
  {
    v2[3] = v17;
  }

  if (v16)
  {
    *(v16 + *(*v16 + 128)) = v18;
  }

  v2[4] = v18;
  swift_retain_n();

  v15(v13, v23, v10);
  v24 = v18;
  swift_beginAccess();
  sub_247BF6330();
  sub_247BF6350();
  swift_endAccess();
}

uint64_t sub_247BAA694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v9 = *v8;
  *(v8 + *(*v8 + 120)) = 0;
  *(v8 + *(*v8 + 128)) = 0;
  (*(*(*(v9 + 80) - 8) + 32))(v8 + *(*v8 + 104), a1);
  (*(*(*(v9 + 88) - 8) + 32))(v8 + *(*v8 + 112), a2);
  *(v8 + *(*v8 + 120)) = a3;
  *(v8 + *(*v8 + 128)) = a4;
  return v8;
}

uint64_t CUOrderedDictionary.remove(key:)@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  swift_beginAccess();
  v5 = v4[11];
  type metadata accessor for CUOrderedDictionary.Node(255, v4[10], v5, v4[12]);
  sub_247BF6330();
  sub_247BF6300();
  swift_endAccess();
  if (v13)
  {
    if (v2[3] == v13)
    {
      v2[3] = *(v13 + *(*v13 + 128));
    }

    if (v2[4] == v13)
    {
      v2[4] = *(v13 + *(*v13 + 120));
    }

    v8 = *v13;
    v9 = *(*v13 + 120);
    v10 = *(v13 + v9);
    if (v10)
    {
      *(v10 + *(*v10 + 128)) = *(v13 + *(*v13 + 128));

      v8 = *v13;
    }

    v11 = *(v13 + *(v8 + 128));
    if (v11)
    {
      *(v11 + *(*v11 + 120)) = *(v13 + v9);

      v8 = *v13;
    }

    v6 = *(v5 - 8);
    (*(v6 + 16))(a2, v13 + *(v8 + 112), v5);

    v7 = 0;
  }

  else
  {
    v6 = *(v5 - 8);
    v7 = 1;
  }

  return (*(v6 + 56))(a2, v7, 1, v5);
}

Swift::Void __swiftcall CUOrderedDictionary.removeAll()()
{
  v1 = v0;
  v2 = *v0;
  swift_beginAccess();
  type metadata accessor for CUOrderedDictionary.Node(255, v2[10], v2[11], v2[12]);
  sub_247BF6330();
  sub_247BF6320();
  swift_endAccess();
  v1[3] = 0;

  v1[4] = 0;
}

uint64_t CUOrderedDictionary.subscript.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  swift_beginAccess();
  v5 = v4[11];
  type metadata accessor for CUOrderedDictionary.Node(0, v4[10], v5, v4[12]);
  sub_247BF6340();
  swift_endAccess();
  if (!v8)
  {
    return (*(*(v5 - 8) + 56))(a2, 1, 1, v5);
  }

  v6 = *(v5 - 8);
  (*(v6 + 16))(a2, v8 + *(*v8 + 112), v5);

  return (*(v6 + 56))(a2, 0, 1, v5);
}

uint64_t sub_247BAADC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 24);
  v7 = sub_247BF6AC0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - v12;
  (*(v14 + 16))(&v16 - v12, a3, v6);
  (*(v8 + 16))(v11, a1, v7);
  return CUOrderedDictionary.subscript.setter(v11, v13);
}

uint64_t CUOrderedDictionary.subscript.setter(char *a1, uint64_t a2)
{
  v20 = *v2;
  v5 = *(v20 + 88);
  v6 = sub_247BF6AC0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v19 - v12;
  v14 = *(v5 - 8);
  MEMORY[0x28223BE20](v11);
  v16 = &v19 - v15;
  (*(v7 + 16))(v13, a1, v6);
  if ((*(v14 + 48))(v13, 1, v5) == 1)
  {
    v17 = *(v7 + 8);
    v17(v13, v6);
    CUOrderedDictionary.remove(key:)(v10);
    (*(*(*(v20 + 80) - 8) + 8))(a2);
    v17(a1, v6);
    return (v17)(v10, v6);
  }

  else
  {
    (*(v14 + 32))(v16, v13, v5);
    CUOrderedDictionary.append(key:value:)(a2, v16);
    (*(*(*(v20 + 80) - 8) + 8))(a2);
    (*(v7 + 8))(a1, v6);
    return (*(v14 + 8))(v16, v5);
  }
}

void (*CUOrderedDictionary.subscript.modify(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x48uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v2;
  v7 = *v2;
  v8 = sub_247BF6AC0();
  v6[1] = v8;
  v9 = *(v8 - 8);
  v6[2] = v9;
  v10 = *(v9 + 64);
  if (v4)
  {
    v6[3] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[3] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v6[4] = v11;
  v13 = *(v7 + 80);
  v6[5] = v13;
  v14 = *(v13 - 8);
  v15 = v14;
  v6[6] = v14;
  v16 = *(v14 + 64);
  if (v4)
  {
    v6[7] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v6[7] = malloc(*(v14 + 64));
    v17 = malloc(v16);
  }

  v6[8] = v17;
  (*(v15 + 16))();
  CUOrderedDictionary.subscript.getter(v12);
  return sub_247BAB420;
}

void sub_247BAB420(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 56);
  v4 = *(*a1 + 64);
  if (a2)
  {
    v5 = v2[5];
    v6 = v2[6];
    v8 = v2[3];
    v7 = v2[4];
    v9 = v2[1];
    v10 = v2[2];
    (*(v10 + 16))(v8, v7, v9);
    (*(v6 + 32))(v3, v4, v5);
    CUOrderedDictionary.subscript.setter(v8, v3);
    (*(v10 + 8))(v7, v9);
  }

  else
  {
    v8 = v2[3];
    v7 = v2[4];
    CUOrderedDictionary.subscript.setter(v7, v4);
  }

  free(v4);
  free(v3);
  free(v7);
  free(v8);

  free(v2);
}

uint64_t CUOrderedDictionary.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = *(v4 + *(*v4 + 128));
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);

    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v8 = *(TupleTypeMetadata2 + 48);
    (*(*(v5 - 8) + 16))(a2, v4 + *(*v4 + 104), v5);
    (*(*(v6 - 8) + 16))(a2 + v8, v4 + *(*v4 + 112), v6);

    v9 = *(*(TupleTypeMetadata2 - 8) + 56);
    v10 = a2;
    v11 = 0;
    v12 = TupleTypeMetadata2;
  }

  else
  {
    v13 = swift_getTupleTypeMetadata2();
    v9 = *(*(v13 - 8) + 56);
    v12 = v13;
    v10 = a2;
    v11 = 1;
  }

  return v9(v10, v11, 1, v12);
}

uint64_t sub_247BAB6C8()
{
  v1 = *v0;
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 104));
  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 112));

  return swift_deallocClassInstance();
}

uint64_t CUOrderedSet.count.getter()
{
  v1 = *v0;
  swift_beginAccess();
  type metadata accessor for CUOrderedSet.Node(0, *(v1 + 80), *(v1 + 88), v2);

  v3 = sub_247BF6310();

  return v3;
}

uint64_t CUOrderedSet.__allocating_init()()
{
  v0 = swift_allocObject();
  CUOrderedSet.init()(v0, v1, v2, v3);
  return v0;
}

void *CUOrderedSet.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CUOrderedSet.Node(0, *(*v4 + 80), *(*v4 + 88), a4);
  v5 = sub_247BF62B0();
  v4[3] = 0;
  v4[4] = 0;
  v4[2] = v5;
  return v4;
}

uint64_t CUOrderedSet.append(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = v16 - v6;
  v10 = type metadata accessor for CUOrderedSet.Node(0, v4, *(v8 + 88), v9);
  v11 = *(v5 + 16);
  v11(v7, a1, v4);
  v12 = *(v2 + 32);
  v16[1] = v10;
  v13 = sub_247BABB84(v7, v12, 0);
  v14 = v13;
  if (!*(v2 + 24))
  {
    *(v2 + 24) = v13;
  }

  if (v12)
  {
    *(v12 + *(*v12 + 112)) = v14;
  }

  *(v2 + 32) = v14;
  swift_retain_n();

  v11(v7, a1, v4);
  v16[5] = v14;
  swift_beginAccess();
  sub_247BF6330();
  sub_247BF6350();
  swift_endAccess();
}

uint64_t sub_247BABB84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = *v6;
  *(v6 + *(*v6 + 104)) = 0;
  *(v6 + *(*v6 + 112)) = 0;
  (*(*(*(v7 + 80) - 8) + 32))(v6 + *(*v6 + 96), a1);
  *(v6 + *(*v6 + 104)) = a2;
  *(v6 + *(*v6 + 112)) = a3;
  return v6;
}

uint64_t CUOrderedSet.remove(_:)@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  swift_beginAccess();
  v5 = *(v4 + 80);
  type metadata accessor for CUOrderedSet.Node(255, v5, *(v4 + 88), v6);
  sub_247BF6330();
  sub_247BF6300();
  swift_endAccess();
  if (v14)
  {
    if (v2[3] == v14)
    {
      v2[3] = *(v14 + *(*v14 + 112));
    }

    if (v2[4] == v14)
    {
      v2[4] = *(v14 + *(*v14 + 104));
    }

    v9 = *v14;
    v10 = *(*v14 + 104);
    v11 = *(v14 + v10);
    if (v11)
    {
      *(v11 + *(*v11 + 112)) = *(v14 + *(*v14 + 112));

      v9 = *v14;
    }

    v12 = *(v14 + *(v9 + 112));
    if (v12)
    {
      *(v12 + *(*v12 + 104)) = *(v14 + v10);

      v9 = *v14;
    }

    v7 = *(v5 - 8);
    (*(v7 + 16))(a2, v14 + *(v9 + 96), v5);

    v8 = 0;
  }

  else
  {
    v7 = *(v5 - 8);
    v8 = 1;
  }

  return (*(v7 + 56))(a2, v8, 1, v5);
}

Swift::Void __swiftcall CUOrderedSet.removeAll()()
{
  v1 = v0;
  v2 = *v0;
  swift_beginAccess();
  type metadata accessor for CUOrderedSet.Node(255, *(v2 + 80), *(v2 + 88), v3);
  sub_247BF6330();
  sub_247BF6320();
  swift_endAccess();
  v1[3] = 0;

  v1[4] = 0;
}

uint64_t CUOrderedSet.removeFirst()@<X0>(uint64_t a1@<X8>)
{
  if (v1[3])
  {

    CUOrderedSet.remove(_:)(a1);
  }

  else
  {
    v4 = *(*(*(*v1 + 80) - 8) + 56);

    return v4(a1, 1, 1);
  }
}

uint64_t CUOrderedSet.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = *(v4 + *(*v4 + 112));
    v5 = *(*v4 + 96);
    v6 = *(a1 + 16);
    v13 = *(v6 - 8);
    v7 = *(v13 + 16);

    v7(a2, v4 + v5, v6);

    v8 = *(v13 + 56);
    v9 = a2;
    v10 = 0;
    v11 = v6;
  }

  else
  {
    v11 = *(a1 + 16);
    v8 = *(*(v11 - 8) + 56);
    v9 = a2;
    v10 = 1;
  }

  return v8(v9, v10, 1, v11);
}

uint64_t sub_247BAC274()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));

  return swift_deallocClassInstance();
}

void *sub_247BAC35C()
{

  return v0;
}

uint64_t CUOrderedSet.__deallocating_deinit()
{
  CUOrderedSet.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_247BAC3C0@<X0>(void *a1@<X8>)
{
  CUOrderedSet.makeIterator()(a1);
}

uint64_t sub_247BAC3F8(uint64_t a1, uint64_t a2)
{
  v3 = sub_247BC3054(v2, a1, a2);

  return v3;
}

uint64_t _s14CoreUtilsSwift21CUOSStateHandlerAsyncC5title13dispatchQueue6logger05stateE0ACSS_So03OS_H13_queue_serialC2os6LoggerVSSSgyYaYbYActcfC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v32 = a5;
  v37 = a4;
  v30 = a1;
  v31 = sub_247BF6A70();
  MEMORY[0x28223BE20](v31);
  v34 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_247BF62A0();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = sub_247BF6A10();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + OBJC_IVAR____TtC14CoreUtilsSwift21CUOSStateHandlerAsync__osStateHandler) = 0;
  *(v16 + 16) = a3;
  v17 = OBJC_IVAR____TtC14CoreUtilsSwift21CUOSStateHandlerAsync__logger;
  v18 = sub_247BF60B0();
  v35 = *(v18 - 8);
  v36 = v18;
  (*(v35 + 16))(v16 + v17, a4, v18);
  v19 = (v16 + OBJC_IVAR____TtC14CoreUtilsSwift21CUOSStateHandlerAsync__stateHandler);
  *v19 = v32;
  v19[1] = a6;
  v33 = a6;
  v20 = (v16 + OBJC_IVAR____TtC14CoreUtilsSwift21CUOSStateHandlerAsync__title);
  *v20 = v30;
  v20[1] = a2;
  v29[1] = sub_247BC3818(0, &qword_27EE5DD10, 0x277D85C90);
  (*(v13 + 104))(v15, *MEMORY[0x277D85268], v12);
  swift_bridgeObjectRetain_n();
  v32 = a3;

  sub_247BF6290();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_247BC2A28(&qword_27EE5DDC0, MEMORY[0x277D852D8], MEMORY[0x277D852E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DDC8, &qword_247BFA910);
  sub_247BC34F4(&qword_27EE5DDD0, &qword_27EE5DDC8, &qword_247BFA910, MEMORY[0x277D83970]);
  sub_247BF6BD0();
  v21 = sub_247BF6A80();
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = objc_allocWithZone(MEMORY[0x277D028D0]);

  v24 = sub_247BF6470();

  aBlock[4] = sub_247BC2DD8;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247BBD9D4;
  aBlock[3] = &block_descriptor;
  v25 = _Block_copy(aBlock);
  v26 = [v23 initWithTitle:v24 dispatchQueue:v21 handler:v25];

  _Block_release(v25);

  (*(v35 + 8))(v37, v36);

  v27 = *(v16 + OBJC_IVAR____TtC14CoreUtilsSwift21CUOSStateHandlerAsync__osStateHandler);
  *(v16 + OBJC_IVAR____TtC14CoreUtilsSwift21CUOSStateHandlerAsync__osStateHandler) = v26;

  return v16;
}

uint64_t _s14CoreUtilsSwift21CUOSStateHandlerAsyncC5title13dispatchQueue6logger05stateE0ACSS_So03OS_H13_queue_serialC2os6LoggerVSSSgyYaYbYActcfc(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v36 = a4;
  v37 = a6;
  v32 = a5;
  v30[2] = a1;
  v34 = sub_247BF6A70();
  MEMORY[0x28223BE20](v34);
  v33 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_247BF62A0();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = sub_247BF6A10();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v7 + OBJC_IVAR____TtC14CoreUtilsSwift21CUOSStateHandlerAsync__osStateHandler) = 0;
  *(v7 + 16) = a3;
  v18 = OBJC_IVAR____TtC14CoreUtilsSwift21CUOSStateHandlerAsync__logger;
  v35 = sub_247BF60B0();
  v31 = *(v35 - 8);
  (*(v31 + 16))(v7 + v18, a4, v35);
  v19 = (v7 + OBJC_IVAR____TtC14CoreUtilsSwift21CUOSStateHandlerAsync__stateHandler);
  v20 = v37;
  *v19 = v32;
  v19[1] = v20;
  v21 = (v7 + OBJC_IVAR____TtC14CoreUtilsSwift21CUOSStateHandlerAsync__title);
  *v21 = a1;
  v21[1] = a2;
  v30[1] = sub_247BC3818(0, &qword_27EE5DD10, 0x277D85C90);
  (*(v15 + 104))(v17, *MEMORY[0x277D85268], v14);
  swift_bridgeObjectRetain_n();
  v32 = a3;

  sub_247BF6290();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_247BC2A28(&qword_27EE5DDC0, MEMORY[0x277D852D8], MEMORY[0x277D852E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DDC8, &qword_247BFA910);
  sub_247BC34F4(&qword_27EE5DDD0, &qword_27EE5DDC8, &qword_247BFA910, MEMORY[0x277D83970]);
  sub_247BF6BD0();
  v22 = sub_247BF6A80();
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = objc_allocWithZone(MEMORY[0x277D028D0]);

  v25 = sub_247BF6470();

  aBlock[4] = sub_247BC5BD8;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247BBD9D4;
  aBlock[3] = &block_descriptor_24;
  v26 = _Block_copy(aBlock);
  v27 = [v24 initWithTitle:v25 dispatchQueue:v22 handler:v26];

  _Block_release(v26);

  (*(v31 + 8))(v36, v35);

  v28 = *(v7 + OBJC_IVAR____TtC14CoreUtilsSwift21CUOSStateHandlerAsync__osStateHandler);
  *(v7 + OBJC_IVAR____TtC14CoreUtilsSwift21CUOSStateHandlerAsync__osStateHandler) = v27;

  return v7;
}

uint64_t sub_247BACD60(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = CUOSStateHandlerAsync.generate()();

    if (v1.value._object)
    {
      return v1.value._countAndFlagsBits;
    }
  }

  return 7104878;
}

Swift::String_optional __swiftcall CUOSStateHandlerAsync.generate()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DD00, &qword_247BFA890);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v31[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v31[-1] - v6;

  v8 = sub_247BF6090();
  v9 = sub_247BF6A00();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v31[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_247BBE628(*(v1 + OBJC_IVAR____TtC14CoreUtilsSwift21CUOSStateHandlerAsync__title), *(v1 + OBJC_IVAR____TtC14CoreUtilsSwift21CUOSStateHandlerAsync__title + 8), v31);
    _os_log_impl(&dword_247B92000, v8, v9, "Generating %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x24C1B5910](v11, -1, -1);
    MEMORY[0x24C1B5910](v10, -1, -1);
  }

  type metadata accessor for CUOSStateHandlerAsync.OutputWrapper();
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  v13 = dispatch_semaphore_create(0);
  v14 = *(v1 + 16);
  v15 = sub_247BF67E0();
  v16 = *(v15 - 8);
  (*(v16 + 56))(v7, 1, 1, v15);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = v12;
  v18[3] = v17;
  v18[4] = v13;
  sub_247BC5B0C(v7, v5, &qword_27EE5DD00, &qword_247BFA890);
  v19 = (*(v16 + 48))(v5, 1, v15);
  v20 = v14;

  v21 = v13;
  if (v19 == 1)
  {
    sub_247B9CAD0(v5, &qword_27EE5DD00, &qword_247BFA890);
  }

  else
  {
    sub_247BF67D0();
    (*(v16 + 8))(v5, v15);
  }

  v22 = sub_247BC2908();
  v23 = swift_allocObject();
  *(v23 + 16) = &unk_247BFA920;
  *(v23 + 24) = v18;
  v31[1] = 6;
  v31[2] = 0;
  v31[3] = v20;
  v31[4] = v22;
  v24 = v20;

  swift_task_create();
  sub_247B9CAD0(v7, &qword_27EE5DD00, &qword_247BFA890);

  sub_247BF6A50();

  v25 = *(v12 + 16);
  v26 = *(v12 + 24);

  v27 = v25;
  v28 = v26;
  result.value._object = v28;
  result.value._countAndFlagsBits = v27;
  return result;
}

uint64_t sub_247BAD1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[5] = a2;
  return MEMORY[0x2822009F8](sub_247BAD1E8, 0, 0);
}

uint64_t sub_247BAD1E8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC14CoreUtilsSwift21CUOSStateHandlerAsync__stateHandler);
    v0[8] = *(Strong + OBJC_IVAR____TtC14CoreUtilsSwift21CUOSStateHandlerAsync__stateHandler + 8);

    v7 = (v2 + *v2);
    v3 = swift_task_alloc();
    v0[9] = v3;
    *v3 = v0;
    v3[1] = sub_247BAD370;

    return v7();
  }

  else
  {
    v5 = v0[5];
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;

    sub_247BF6A60();
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_247BAD370(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = a2;

  return MEMORY[0x2822009F8](sub_247BAD490, 0, 0);
}

uint64_t sub_247BAD490()
{
  *(*(v0 + 40) + 16) = *(v0 + 80);

  sub_247BF6A60();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t CUOSStateHandlerAsync.deinit()
{
  v1 = OBJC_IVAR____TtC14CoreUtilsSwift21CUOSStateHandlerAsync__logger;
  v2 = sub_247BF60B0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t CUOSStateHandlerAsync.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC14CoreUtilsSwift21CUOSStateHandlerAsync__logger;
  v2 = sub_247BF60B0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t CUTask.__allocating_init(_:cancelOnDeinit:)(uint64_t a1, char a2)
{
  result = swift_allocObject();
  *(result + 16) = a2;
  *(result + 24) = a1;
  return result;
}

uint64_t CUTask.init(_:cancelOnDeinit:)(uint64_t a1, char a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = a1;
  return v2;
}

uint64_t CUTask.deinit()
{
  if (*(v0 + 16) == 1)
  {

    sub_247BF67F0();
  }

  return v0;
}

uint64_t CUTask.__deallocating_deinit()
{
  CUTask.deinit();

  return swift_deallocClassInstance();
}

uint64_t _s14CoreUtilsSwift6CUTaskCAAs5NeverORs_rlE8priority14cancelOnDeinit9operationACyxAEGScPSg_SbxyYaYbYActcfC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DD00, &qword_247BFA890);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - v9;
  sub_247BC5B0C(a1, &v13 - v9, &qword_27EE5DD00, &qword_247BFA890);
  v11 = sub_247BAD910(0, 0, v10, a3, a4, *(v4 + 80));
  sub_247B9CAD0(a1, &qword_27EE5DD00, &qword_247BFA890);
  result = swift_allocObject();
  *(result + 16) = 1;
  *(result + 24) = v11;
  return result;
}

uint64_t sub_247BAD910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DD00, &qword_247BFA890);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v26[-1] - v12;
  v27[0] = a4;
  v27[1] = a5;
  sub_247BC5B0C(a3, &v26[-1] - v12, &qword_27EE5DD00, &qword_247BFA890);
  v14 = sub_247BF67E0();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_247B9CAD0(v13, &qword_27EE5DD00, &qword_247BFA890);
  }

  else
  {
    sub_247BF67D0();
    (*(v15 + 8))(v13, v14);
  }

  v17 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_247BF6740();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_247BF64B0();
      sub_247BBDB40(v21 + 32, v27, a6, v26);

      v22 = v26[0];
      sub_247B9CAD0(a3, &qword_27EE5DD00, &qword_247BFA890);

      return v22;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_247B9CAD0(a3, &qword_27EE5DD00, &qword_247BFA890);
  v23 = swift_allocObject();
  v23[2] = a6;
  v23[3] = a4;
  v23[4] = a5;
  if (v20 | v18)
  {
    v26[1] = 0;
    v26[2] = 0;
    v26[3] = v18;
    v26[4] = v20;
  }

  return swift_task_create();
}

uint64_t _s14CoreUtilsSwift6CUTaskCAAs5Error_pRs_rlE8priority14cancelOnDeinit9operationACyxsAD_pGScPSg_SbxyYaYbKYActcfC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DD00, &qword_247BFA890);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v14 - v10;
  sub_247BC5B0C(a1, &v14 - v10, &qword_27EE5DD00, &qword_247BFA890);
  v12 = sub_247BADCB8(0, 0, v11, a3, a4, *(v4 + 80));
  sub_247B9CAD0(a1, &qword_27EE5DD00, &qword_247BFA890);
  result = swift_allocObject();
  *(result + 16) = a2;
  *(result + 24) = v12;
  return result;
}

uint64_t sub_247BADCB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DD00, &qword_247BFA890);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24[-1] - v11;
  v24[5] = a4;
  v24[6] = a5;
  sub_247BC5B0C(a3, &v24[-1] - v11, &qword_27EE5DD00, &qword_247BFA890);
  v13 = sub_247BF67E0();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_247B9CAD0(v12, &qword_27EE5DD00, &qword_247BFA890);
  }

  else
  {
    sub_247BF67D0();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_247BF6740();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_247BF64B0();
      sub_247BBDE1C(v20 + 32, v24);

      v21 = v24[0];
      sub_247B9CAD0(a3, &qword_27EE5DD00, &qword_247BFA890);

      return v21;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_247B9CAD0(a3, &qword_27EE5DD00, &qword_247BFA890);
  if (v19 | v17)
  {
    v24[1] = 0;
    v24[2] = 0;
    v24[3] = v17;
    v24[4] = v19;
  }

  return swift_task_create();
}

uint64_t Task.cuTask.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CUTask(0, a2, a3, a4);
  v5 = swift_allocObject();
  *(v5 + 16) = 1;
  *(v5 + 24) = a1;

  return v5;
}

id CUTrafficFlags.description.getter(unsigned int a1)
{
  result = CUTrafficFlagsToString(a1);
  if (result)
  {
    v2 = result;
    v3 = sub_247BF6480();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_247BAE0F0()
{
  result = CUTrafficFlagsToString(*v0);
  if (result)
  {
    v2 = result;
    v3 = sub_247BF6480();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CUIPAddress.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DDD8, &qword_247BFA930);
  MEMORY[0x28223BE20](v3 - 8);
  v50 = &v42 - v4;
  v5 = sub_247BF6220();
  v6 = *(v5 - 8);
  v46 = v5;
  v47 = v6;
  MEMORY[0x28223BE20](v5);
  v45 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DDE0, &qword_247BFA938);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v42 - v9;
  v11 = sub_247BF61E0();
  v48 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CUIPAddress(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = v54;
  sub_247BF74C0();
  if (v18)
  {
    goto LABEL_3;
  }

  v43 = v13;
  v44 = v16;
  v54 = v14;
  v19 = v50;
  __swift_project_boxed_opaque_existential_1(&v51, v53);
  v20 = sub_247BF71A0();
  v22 = v21;
  __swift_destroy_boxed_opaque_existential_1Tm(&v51);
  v25 = v17;

  v26 = v10;
  sub_247BF6200();
  v27 = v48;
  v28 = v10;
  v29 = v11;
  if ((*(v48 + 48))(v28, 1, v11) != 1)
  {

    v37 = *(v27 + 32);
    v38 = v43;
    v37(v43, v26, v11);
    v39 = v44;
    v37(v44, v38, v29);
    v33 = v49;
LABEL_10:
    swift_storeEnumTagMultiPayload();
    sub_247BC2F38(v39, v33);
    v23 = v25;
    return __swift_destroy_boxed_opaque_existential_1Tm(v23);
  }

  sub_247B9CAD0(v26, &qword_27EE5DDE0, &qword_247BFA938);

  sub_247BF6240();
  v30 = v46;
  v31 = v47;
  v32 = (*(v47 + 48))(v19, 1, v46);
  v33 = v49;
  if (v32 != 1)
  {

    v40 = *(v31 + 32);
    v41 = v45;
    v40(v45, v19, v30);
    v39 = v44;
    v40(v44, v41, v30);
    goto LABEL_10;
  }

  sub_247B9CAD0(v19, &qword_27EE5DDD8, &qword_247BFA930);
  v34 = sub_247BF6D40();
  swift_allocError();
  v36 = v35;
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_247BF74B0();
  v51 = 0;
  v52 = 0xE000000000000000;
  sub_247BF6CF0();

  v51 = 0xD00000000000001ALL;
  v52 = 0x8000000247C00F60;
  MEMORY[0x24C1B4020](v20, v22);

  sub_247BF6D30();
  (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D84168], v34);
  swift_willThrow();
  v17 = v25;
LABEL_3:
  v23 = v17;
  return __swift_destroy_boxed_opaque_existential_1Tm(v23);
}

uint64_t CUIPAddress.encode(to:)(void *a1)
{
  v2 = sub_247BF6220();
  v23 = *(v2 - 8);
  v24 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v22 = &v21 - v6;
  v7 = sub_247BF61E0();
  v21 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - v11;
  v13 = type metadata accessor for CUIPAddress(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_247BF74F0();
  sub_247BC2F9C(v25, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = v22;
    v16 = v23;
    v18 = v24;
    (*(v23 + 32))(v22, v15, v24);
    (*(v16 + 16))(v5, v17, v18);
    sub_247BF6490();
    __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
    sub_247BF7210();
    (*(v16 + 8))(v17, v18);
  }

  else
  {
    v19 = v21;
    (*(v21 + 32))(v12, v15, v7);
    (*(v19 + 16))(v10, v12, v7);
    sub_247BF6490();
    __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
    sub_247BF7210();
    (*(v19 + 8))(v12, v7);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v26);
}

uint64_t CUIPAddress.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v37 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DDD8, &qword_247BFA930);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v32 - v6;
  v8 = sub_247BF6220();
  v34 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v33 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DDE0, &qword_247BFA938);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v32 - v11;
  v13 = sub_247BF61E0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);

  v17 = a1;
  sub_247BF6200();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v18 = v37;
    sub_247B9CAD0(v12, &qword_27EE5DDE0, &qword_247BFA938);

    v19 = v17;
    sub_247BF6240();
    v20 = v34;
    if ((*(v34 + 48))(v7, 1, v8) == 1)
    {
      sub_247B9CAD0(v7, &qword_27EE5DDD8, &qword_247BFA930);
      v21 = *MEMORY[0x277CCA590];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DDE8, &qword_247BFA940);
      inited = swift_initStackObject();
      *(inited + 32) = 0x4D726F7272457563;
      *(inited + 16) = xmmword_247BFA840;
      *(inited + 40) = 0xEA00000000006773;
      v35 = 0;
      v36 = 0xE000000000000000;
      v23 = v21;
      sub_247BF6CF0();

      v35 = 0xD00000000000001ALL;
      v36 = 0x8000000247C00F60;
      MEMORY[0x24C1B4020](v19, a2);

      v24 = v35;
      v25 = v36;
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 48) = v24;
      *(inited + 56) = v25;
      sub_247BC1964(inited);
      swift_setDeallocating();
      sub_247B9CAD0(inited + 32, &qword_27EE5DDF0, &qword_247BFA948);
      v26 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v27 = sub_247BF62E0();

      [v26 initWithDomain:v23 code:-6705 userInfo:v27];

      return swift_willThrow();
    }

    v30 = *(v20 + 32);
    v31 = v33;
    v30(v33, v7, v8);
    v30(v18, v31, v8);
  }

  else
  {

    v29 = *(v14 + 32);
    v29(v16, v12, v13);
    v29(v37, v16, v13);
  }

  type metadata accessor for CUIPAddress(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t CUIPAddress.description.getter()
{
  v1 = v0;
  v2 = sub_247BF6220();
  v22 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - v6;
  v8 = sub_247BF61E0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - v13;
  v15 = type metadata accessor for CUIPAddress(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247BC2F9C(v1, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = v22;
    (*(v22 + 32))(v7, v17, v2);
    (*(v18 + 16))(v5, v7, v2);
    v19 = sub_247BF6490();
    (*(v18 + 8))(v7, v2);
  }

  else
  {
    (*(v9 + 32))(v14, v17, v8);
    (*(v9 + 16))(v12, v14, v8);
    v19 = sub_247BF6490();
    (*(v9 + 8))(v14, v8);
  }

  return v19;
}

uint64_t CUIPAddress.nwEndpointHost.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CUIPAddress(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247BC2F9C(v2, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_247BF6220();
    v8 = MEMORY[0x277CD8AE0];
  }

  else
  {
    v7 = sub_247BF61E0();
    v8 = MEMORY[0x277CD8AD8];
  }

  (*(*(v7 - 8) + 32))(a1, v6);
  v9 = *v8;
  v10 = sub_247BF6160();
  return (*(*(v10 - 8) + 104))(a1, v9, v10);
}

uint64_t CUIPAddress.hash(into:)(uint64_t a1)
{
  v2 = sub_247BF6220();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_247BF61E0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CUIPAddress(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247BC2F9C(v1, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v12, v2);
    MEMORY[0x24C1B4F40](1);
    sub_247BC2A28(&qword_27EE5DDF8, MEMORY[0x277CD8C88], MEMORY[0x277CD8C90]);
    sub_247BF63A0();
    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    (*(v7 + 32))(v9, v12, v6);
    MEMORY[0x24C1B4F40](0);
    sub_247BC2A28(&unk_27EE5DE00, MEMORY[0x277CD8C70], MEMORY[0x277CD8C78]);
    sub_247BF63A0();
    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t CUIPAddress.hashValue.getter()
{
  sub_247BF7460();
  CUIPAddress.hash(into:)(v1);
  return sub_247BF74A0();
}

uint64_t sub_247BAF5DC()
{
  sub_247BF7460();
  CUIPAddress.hash(into:)(v1);
  return sub_247BF74A0();
}

uint64_t sub_247BAF620(uint64_t a1)
{
  sub_247BF7460();
  CUIPAddress.hash(into:)(v2);
  return sub_247BF74A0();
}

uint64_t CUMACAddress.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) == 6)
  {
    v3 = *(a1 + 36);
    v4 = *(a1 + 32);

    *a2 = v4;
    *(a2 + 4) = v3;
  }

  else
  {

    v6 = *MEMORY[0x277CCA590];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DDE8, &qword_247BFA940);
    inited = swift_initStackObject();
    *(inited + 32) = 0x4D726F7272457563;
    *(inited + 16) = xmmword_247BFA840;
    *(inited + 40) = 0xEA00000000006773;
    v8 = v6;
    sub_247BF6CF0();

    v9 = sub_247BF6FD0();
    MEMORY[0x24C1B4020](v9);

    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = 0xD00000000000001ALL;
    *(inited + 56) = 0x8000000247C00F80;
    sub_247BC1964(inited);
    swift_setDeallocating();
    sub_247B9CAD0(inited + 32, &qword_27EE5DDF0, &qword_247BFA948);
    v10 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v11 = sub_247BF62E0();

    [v10 initWithDomain:v8 code:-6705 userInfo:v11];

    return swift_willThrow();
  }

  return result;
}

uint64_t CUMACAddress.init(_:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_247BC3000();
  v7 = MEMORY[0x277D837D0];
  v8 = StringProtocol.parseHex()(MEMORY[0x277D837D0], v6);
  if (*(v8 + 2) != 6)
  {

    v18 = *MEMORY[0x277CCA590];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DDE8, &qword_247BFA940);
    inited = swift_initStackObject();
    *(inited + 32) = 0x4D726F7272457563;
    *(inited + 16) = xmmword_247BFA840;
    *(inited + 40) = 0xEA00000000006773;
    v20 = v18;
    sub_247BF6CF0();

    MEMORY[0x24C1B4020](a1, a2);

    *(inited + 72) = v7;
    *(inited + 48) = 0xD00000000000001CLL;
    *(inited + 56) = 0x8000000247C00FA0;
    sub_247BC1964(inited);
    swift_setDeallocating();
    sub_247B9CAD0(inited + 32, &qword_27EE5DDF0, &qword_247BFA948);
    v21 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v22 = sub_247BF62E0();

    [v21 initWithDomain:v20 code:-6705 userInfo:v22];

    return swift_willThrow();
  }

  v9 = v8;

  v11 = *(v9 + 2);
  if (!v11)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v11 == 1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v11 < 3)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v11 == 3)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v11 >= 5)
  {
    if (v11 != 5)
    {
      v12 = v9;
      v13 = v9[32];
      v14 = v12[33];
      v15 = v12[34];
      v16 = v12[35];
      v17 = *(v12 + 18);

      *a3 = v13;
      *(a3 + 1) = v14;
      *(a3 + 2) = v15;
      *(a3 + 3) = v16;
      *(a3 + 4) = v17;
      return result;
    }

    goto LABEL_15;
  }

LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t CUMACAddress.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_247BF74C0();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    v5 = sub_247BF71A0();
    CUMACAddress.init(_:)(v5, v6, &v10);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    v7 = v11;
    *a2 = v10;
    *(a2 + 4) = v7;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t CUMACAddress.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_247BF74F0();
  CUMACAddress.description.getter();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_247BF7210();

  return __swift_destroy_boxed_opaque_existential_1Tm(v2);
}

void *CUMACAddress.description.getter()
{
  v1 = *(v0 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DE10, &qword_247BFA950);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_247BFA850;
  *(v2 + 32) = *v0;
  *(v2 + 36) = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DE18, &qword_247BFA958);
  v4 = sub_247BC34F4(&unk_27EE5DE20, &qword_27EE5DE18, &qword_247BFA958, MEMORY[0x277D83970]);
  v5 = sub_247BC3C54();
  v6 = sub_247BE7230();
  v7 = sub_247BE7238();
  v9 = Sequence<>.hexString(separator:uppercase:maxBytes:truncator:)(58, 0xE100000000000000, v5 & 1, v6, v7, v8, v3, v4);

  return v9;
}

double CUMACAddress.bytes.getter()
{
  v1 = *(v0 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DE10, &qword_247BFA950);
  v2 = swift_allocObject();
  *&result = 6;
  *(v2 + 16) = xmmword_247BFA850;
  *(v2 + 32) = *v0;
  *(v2 + 36) = v1;
  return result;
}

Swift::String __swiftcall CUMACAddress.description(separator:uppercase:)(Swift::String separator, Swift::Bool uppercase)
{
  object = separator._object;
  countAndFlagsBits = separator._countAndFlagsBits;
  v6 = *(v2 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DE10, &qword_247BFA950);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_247BFA850;
  *(v7 + 32) = *v2;
  *(v7 + 36) = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DE18, &qword_247BFA958);
  v9 = sub_247BC34F4(&unk_27EE5DE20, &qword_27EE5DE18, &qword_247BFA958, MEMORY[0x277D83970]);
  v10 = sub_247BE7230();
  v11 = sub_247BE7238();
  v13 = Sequence<>.hexString(separator:uppercase:maxBytes:truncator:)(countAndFlagsBits, object, uppercase, v10, v11, v12, v8, v9);
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result._object = v17;
  result._countAndFlagsBits = v16;
  return result;
}

uint64_t CUMACAddress.hash(into:)()
{
  sub_247BF7480();
  sub_247BF7480();
  sub_247BF7480();
  sub_247BF7480();
  sub_247BF7480();
  return sub_247BF7480();
}

uint64_t CUMACAddress.hashValue.getter()
{
  sub_247BF7460();
  sub_247BF7480();
  sub_247BF7480();
  sub_247BF7480();
  sub_247BF7480();
  sub_247BF7480();
  sub_247BF7480();
  return sub_247BF74A0();
}

uint64_t sub_247BB008C()
{
  sub_247BF7460();
  sub_247BF7480();
  sub_247BF7480();
  sub_247BF7480();
  sub_247BF7480();
  sub_247BF7480();
  sub_247BF7480();
  return sub_247BF74A0();
}

uint64_t sub_247BB013C()
{
  sub_247BF7480();
  sub_247BF7480();
  sub_247BF7480();
  sub_247BF7480();
  sub_247BF7480();
  return sub_247BF7480();
}

uint64_t sub_247BB01BC(uint64_t a1)
{
  sub_247BF7460();
  sub_247BF7480();
  sub_247BF7480();
  sub_247BF7480();
  sub_247BF7480();
  sub_247BF7480();
  sub_247BF7480();
  return sub_247BF74A0();
}

uint64_t sub_247BB02D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, uint64_t a5@<X3>)
{
  v7 = type metadata accessor for CUWeakBox(0, *(a2 + a3 - 8), a3, a5);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v11, a1, v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  result = (*(v8 + 8))(v11, v7);
  *a4 = Strong;
  return result;
}

uint64_t CUWeakBox.item.setter(uint64_t a1)
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t (*CUWeakBox.item.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_247BB0430;
}

uint64_t sub_247BB0430(void *a1)
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t CUWeakBox.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  result = swift_unknownObjectRelease();
  *(a2 + 8) = a1;
  return result;
}

uint64_t CUWeakBox.hashValue.getter()
{
  sub_247BF7460();
  MEMORY[0x24C1B4F40](*(v0 + 8));
  return sub_247BF74A0();
}

uint64_t sub_247BB0544(uint64_t a1)
{
  sub_247BF7460();
  CUWeakBox.hash(into:)();
  return sub_247BF74A0();
}

uint64_t CUXPCCoder.init()@<X0>(uint64_t *a1@<X8>)
{
  sub_247BF5D40();
  swift_allocObject();
  *a1 = sub_247BF5D30();
  sub_247BF5CC0();
  swift_allocObject();
  result = sub_247BF5CB0();
  a1[1] = result;
  return result;
}

xpc_object_t CUXPCCoder.encode<A>(message:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  empty = xpc_dictionary_create_empty();
  v5 = sub_247BF5D10();
  if (!v3)
  {
    v7 = v5;
    v8 = v6;
    v9 = Data.xpcObjectRepresentation.getter(v5, v6);
    sub_247BC2AC4(v7, v8);
    xpc_dictionary_set_value(empty, "data", v9);
  }

  swift_unknownObjectRelease();
  return empty;
}

xpc_object_t Data.xpcObjectRepresentation.getter(uint64_t a1, unint64_t a2)
{
  v2 = BYTE5(a2);
  bytes[2] = *MEMORY[0x277D85DE8];
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      memset(bytes, 0, 14);
      v4 = 0;
      return xpc_data_create(bytes, v4);
    }

    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    a1 = sub_247BF5DA0();
    v7 = a1;
    if (a1)
    {
      a1 = sub_247BF5DC0();
      if (__OFSUB__(v5, a1))
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v7 += v5 - a1;
    }

    v8 = __OFSUB__(v6, v5);
    v9 = v6 - v5;
    if (!v8)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v3)
  {
    bytes[0] = a1;
    LOWORD(bytes[1]) = a2;
    BYTE2(bytes[1]) = BYTE2(a2);
    BYTE3(bytes[1]) = BYTE3(a2);
    BYTE4(bytes[1]) = BYTE4(a2);
    v4 = BYTE6(a2);
    BYTE5(bytes[1]) = v2;
    return xpc_data_create(bytes, v4);
  }

  v10 = a1;
  v9 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
    goto LABEL_27;
  }

  v7 = sub_247BF5DA0();
  if (v7)
  {
    v11 = sub_247BF5DC0();
    if (!__OFSUB__(v10, v11))
    {
      v7 += v10 - v11;
      goto LABEL_15;
    }

LABEL_28:
    __break(1u);
  }

LABEL_15:
  v12 = sub_247BF5DB0();
  if (v12 >= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = v12;
  }

  if (v7)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  return xpc_data_create(v7, v14);
}

uint64_t CUXPCCoder.encode<A>(message:into:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = sub_247BF5D10();
  if (!v4)
  {
    v8 = result;
    v9 = v7;
    v10 = Data.xpcObjectRepresentation.getter(result, v7);
    sub_247BC2AC4(v8, v9);
    xpc_dictionary_set_value(a2, "data", v10);
    return swift_unknownObjectRelease();
  }

  return result;
}

void CUXPCCoder.encode(error:into:)(void *a1, void *a2)
{
  type metadata accessor for CUError();
  v5 = a1;
  v10 = CUError.__allocating_init(_:)(a1);
  sub_247BC2A28(&qword_27EE5DFF0, type metadata accessor for CUError, &protocol conformance descriptor for CUError);
  v6 = sub_247BF5D10();
  v8 = v7;

  if (!v2)
  {
    v9 = Data.xpcObjectRepresentation.getter(v6, v8);
    sub_247BC2AC4(v6, v8);
    xpc_dictionary_set_value(a2, "error", v9);
    swift_unknownObjectRelease();
  }
}

uint64_t CUXPCCoder.decode<A>(_:)(void *a1)
{
  length[1] = *MEMORY[0x277D85DE8];
  length[0] = 0;
  data = xpc_dictionary_get_data(a1, "data", length);
  if (data)
  {
    v7 = sub_247BC3110(data, length[0]);
    v9 = v8;
    sub_247BF5C90();
    return sub_247BC2AC4(v7, v9);
  }

  else
  {
    v11 = xpc_dictionary_get_data(a1, "error", length);
    if (v11)
    {
      v12 = v11;
      type metadata accessor for CUError();
      v13 = sub_247BC3110(v12, length[0]);
      v15 = v14;
      sub_247BC2A28(&qword_27EE5DE30, type metadata accessor for CUError, &protocol conformance descriptor for CUError);
      sub_247BF5C90();
      result = sub_247BC2AC4(v13, v15);
      if (!v4)
      {
        return swift_willThrow();
      }
    }

    else
    {
      v16 = sub_247BF6130();
      swift_unknownObjectRelease();
      if (v16 == a1)
      {
        type metadata accessor for CUError();
        v20 = 0x65746E6920435058;
        v18 = 0xEF64657470757272;
        v19 = -71142;
      }

      else
      {
        v17 = sub_247BF6120();
        swift_unknownObjectRelease();
        type metadata accessor for CUError();
        if (v17 == a1)
        {
          v20 = 0x61766E6920435058;
          v18 = 0xEF6465746164696CLL;
          v19 = -71148;
        }

        else
        {
          v18 = 0x8000000247C00FC0;
          v19 = -6700;
          v20 = 0xD000000000000012;
        }
      }

      CUError.__allocating_init(_:_:_:)(v19, v20, v18, 0);
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t FNV1a<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 2166136261;
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v15[-v11];
  (*(v6 + 16))(v8, a1, a2);
  sub_247BF6610();
  swift_getAssociatedConformanceWitness();
  sub_247BF6AE0();
  if ((v17 & 1) == 0)
  {
    v13 = v16;
    do
    {
      v5 = 16777619 * (v5 ^ v13);
      sub_247BF6AE0();
      v13 = v16;
    }

    while (v17 != 1);
  }

  (*(v10 + 8))(v12, AssociatedTypeWitness);
  return v5;
}

uint64_t Actor.cuWithIsolation<A>(_:)(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_247B96F0C;

  return v7(a1, v2);
}

uint64_t cuWithCheckedThrowingContinuation<A, B>(environment:timeout:isolation:onStart:onCancel:onTimeout:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 96) = v17;
  *(v8 + 104) = v18;
  *(v8 + 80) = v15;
  *(v8 + 88) = v16;
  *(v8 + 64) = v14;
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 168) = a5;
  *(v8 + 32) = a4;
  *(v8 + 40) = a6;
  *(v8 + 16) = a1;
  *(v8 + 24) = a3;
  v9 = *a2;
  *(v8 + 112) = v19;
  *(v8 + 120) = v9;
  v11 = sub_247BF6740();
  *(v8 + 128) = v11;
  *(v8 + 136) = v10;

  return MEMORY[0x2822009F8](sub_247BB1020, v11, v10);
}

uint64_t sub_247BB1020()
{
  v24 = v0;
  if (*(v0 + 168))
  {
    v1 = 0;
    v2 = 0;
    v3 = 1;
  }

  else
  {
    v13[2] = *(v0 + 120);
    CUEnvironmentValues.clock.getter(&v14);
    v18 = v14;
    v19 = v15;
    v20 = v16;
    v21 = v17;
    CUClock.now.getter();

    v23 = v22;
    CUClock.Instant.advanced(by:)(v13);
    v1 = v13[0];
    v2 = v13[1];
    v3 = *(v0 + 168);
  }

  v4 = *(v0 + 72);
  v5 = swift_task_alloc();
  *(v0 + 144) = v5;
  v6 = *(v0 + 112);
  v7 = *(v0 + 40);
  v8 = *(v0 + 56);
  v9 = *(v0 + 80);
  *(v5 + 16) = *(v0 + 96);
  *(v5 + 32) = v6;
  *(v5 + 48) = v7;
  *(v5 + 64) = v8;
  *(v5 + 80) = v4;
  *(v5 + 88) = v1;
  *(v5 + 96) = v2;
  *(v5 + 104) = v3 & 1;
  *(v5 + 112) = v9;
  v10 = swift_task_alloc();
  *(v0 + 152) = v10;
  *v10 = v0;
  v10[1] = sub_247BB11FC;
  v11 = *(v0 + 16);
  v26 = *(v0 + 104);

  return MEMORY[0x282200740](v11);
}

uint64_t sub_247BB11FC()
{
  v2 = *v1;
  v2[20] = v0;

  if (v0)
  {
    v3 = v2[16];
    v4 = v2[17];

    return MEMORY[0x2822009F8](sub_247BB1334, v3, v4);
  }

  else
  {

    v5 = v2[1];

    return v5();
  }
}

uint64_t sub_247BB1334()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247BB1398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 120) = v19;
  *(v8 + 128) = v20;
  *(v8 + 104) = v17;
  *(v8 + 112) = v18;
  *(v8 + 96) = v16;
  *(v8 + 200) = v15;
  *(v8 + 80) = v14;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = sub_247BF6AC0();
  *(v8 + 136) = v9;
  *(v8 + 144) = *(v9 - 8);
  *(v8 + 152) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DD00, &qword_247BFA890);
  *(v8 + 160) = swift_task_alloc();
  v11 = sub_247BF6740();
  *(v8 + 168) = v11;
  *(v8 + 176) = v10;

  return MEMORY[0x2822009F8](sub_247BB14EC, v11, v10);
}

uint64_t sub_247BB14EC()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 112);
  v29 = *(v0 + 200);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 56);
  v6 = *(v0 + 32);
  v31 = *(v0 + 120);
  v26 = *(v0 + 40);
  v7 = CUEnvironmentValues.dispatchQueue.getter();
  v8 = sub_247BC2908();
  v9 = sub_247BF67E0();
  v24 = *(*(v9 - 8) + 56);
  v25 = v9;
  v24(v1, 1, 1);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = v2;
  *(v10 + 40) = v31;
  *(v10 + 56) = v26;
  *(v10 + 72) = v5;
  *(v10 + 80) = v6;
  *(v10 + 88) = v3;
  *(v10 + 96) = v4;
  swift_unknownObjectRetain();

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE5DC08, &qword_247BF9F90);
  v11 = sub_247BF6850();
  sub_247BB27F0(v7, v8, v1, &unk_247BFBA88, v10, v11);

  sub_247B9CAD0(v1, &qword_27EE5DD00, &qword_247BFA890);
  if ((v29 & 1) == 0)
  {
    v12 = *(v0 + 160);
    v13 = *(v0 + 128);
    v14 = *(v0 + 104);
    v30 = *(v0 + 96);
    v15 = *(v0 + 32);
    v16 = *(v0 + 40);
    v27 = *(v0 + 112);
    v28 = *(v0 + 80);
    v17 = CUEnvironmentValues.dispatchQueue.getter();
    (v24)(v12, 1, 1, v25);
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    *(v18 + 32) = v27;
    *(v18 + 48) = v13;
    *(v18 + 56) = v15;
    *(v18 + 64) = v28;
    *(v18 + 80) = v30;
    *(v18 + 88) = v14;
    *(v18 + 96) = v16;
    swift_unknownObjectRetain();

    sub_247BB27F0(v17, v8, v12, &unk_247BFBA98, v18, v11);

    sub_247B9CAD0(v12, &qword_27EE5DD00, &qword_247BFA890);
  }

  v19 = *(v0 + 128);
  v20 = *(v0 + 40);
  v21 = swift_task_alloc();
  *(v0 + 184) = v21;
  *v21 = v0;
  v21[1] = sub_247BB1820;
  v22 = *(v0 + 152);

  return MEMORY[0x2822004D0](v22, v20, v19, v11);
}

uint64_t sub_247BB1820()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = *(v2 + 176);
  v4 = *(v2 + 168);
  if (v0)
  {
    v5 = sub_247BB1B3C;
  }

  else
  {
    v5 = sub_247BB195C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_247BB195C()
{
  v1 = v0[19];
  v2 = v0[15];
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[18] + 8))(v1, v0[17]);
    type metadata accessor for CUError();
    CUError.__allocating_init(_:_:_:)(-6723, 0xD00000000000001DLL, 0x8000000247C01380, 0);
    swift_willThrow();
  }

  else
  {
    (*(v3 + 32))(v0[2], v1, v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC08, &qword_247BF9F90);
  sub_247BF6840();

  v4 = v0[1];

  return v4();
}

uint64_t sub_247BB1B3C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC08, &qword_247BF9F90);
  sub_247BF6840();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247BB1BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 80) = v11;
  *(v8 + 88) = v12;
  *(v8 + 64) = v10;
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  *(v8 + 16) = a1;
  *(v8 + 24) = a4;
  return MEMORY[0x2822009F8](sub_247BB1C1C, 0, 0);
}

uint64_t sub_247BB1C1C()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  v13 = *(v0 + 24);
  v7 = swift_task_alloc();
  v8 = *(v0 + 48);
  *(v6 + 16) = v3;
  *(v6 + 24) = v2;
  *(v6 + 32) = v1;
  *(v6 + 40) = v13;
  *(v6 + 56) = v5;
  *(v0 + 104) = v7;
  *(v7 + 16) = v3;
  *(v7 + 24) = v2;
  *(v7 + 32) = v1;
  *(v7 + 40) = v8;
  *(v7 + 56) = v4;
  *(v7 + 64) = v13;
  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  *v9 = v0;
  v9[1] = sub_247BB1D6C;
  v10 = *(v0 + 80);
  v11 = *(v0 + 16);

  return MEMORY[0x282200830](v11, &unk_247BFBAA8, v6, sub_247BC55E0, v7, v13, v1, v10);
}

uint64_t sub_247BB1D6C()
{
  v2 = *v1;
  *(v2 + 120) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_247BB1EB4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_247BB1EB4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247BB1F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_247BB1F4C, 0, 0);
}

uint64_t sub_247BB1F4C()
{
  if (sub_247BF6800())
  {
    type metadata accessor for CUError();
    CUError.__allocating_init(_:_:_:)(-6723, 0xD00000000000001FLL, 0x8000000247C01400, 0);
    swift_willThrow();
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = *(v0 + 64);
    v4 = *(v0 + 40);
    v5 = swift_task_alloc();
    *(v0 + 72) = v5;
    v6 = *(v0 + 48);
    v7 = *(v0 + 24);
    *(v5 + 40) = v7;
    v8 = v7;
    *(v5 + 16) = v6;
    *(v5 + 32) = v3;
    *(v5 + 56) = v4;
    v9 = swift_task_alloc();
    *(v0 + 80) = v9;
    *v9 = v0;
    v9[1] = sub_247BB20F0;
    v10 = *(v0 + 56);
    v11 = *(v0 + 16);

    return MEMORY[0x2822008A0](v11, v8, v3, 0xD00000000000005CLL, 0x8000000247C013A0, sub_247BC569C, v5, v10);
  }
}

uint64_t sub_247BB20F0()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_247BB222C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_247BB222C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247BB2290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_247BF6740();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v15 = swift_allocObject();
  v15[2] = a7;
  v15[3] = a8;
  v15[4] = a9;
  v15[5] = a1;
  v15[6] = a2;
  sub_247BBDED8(sub_247BC57C8, v15, v9, a7, a8, a9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_247BF6CF0();
    MEMORY[0x24C1B4020](0xD00000000000003FLL, 0x8000000247C01450);
    sub_247BF7140();
    MEMORY[0x24C1B4020](46, 0xE100000000000000);
    result = sub_247BF6E80();
    __break(1u);
  }

  return result;
}

uint64_t sub_247BB2444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a6;
  v29 = a7;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DD00, &qword_247BFA890);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v28 - v16;
  v35 = a1;
  v30 = CUEnvironmentValues.dispatchQueue.getter();
  v18 = sub_247BF67E0();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v17, 1, 1, v18);
  v20 = swift_allocObject();
  v22 = v28;
  v21 = v29;
  v20[2] = a5;
  v20[3] = v22;
  v20[4] = v21;
  v20[5] = a2;
  v20[6] = a3;
  v20[7] = a4;
  sub_247BC5B0C(v17, v15, &qword_27EE5DD00, &qword_247BFA890);
  LODWORD(a1) = (*(v19 + 48))(v15, 1, v18);

  swift_unknownObjectRetain();
  if (a1 == 1)
  {
    sub_247B9CAD0(v15, &qword_27EE5DD00, &qword_247BFA890);
  }

  else
  {
    sub_247BF67D0();
    (*(v19 + 8))(v15, v18);
  }

  v23 = sub_247BC2908();
  v24 = swift_allocObject();
  *(v24 + 16) = &unk_247BFBAB8;
  *(v24 + 24) = v20;
  v31 = 6;
  v32 = 0;
  v25 = v30;
  v33 = v30;
  v34 = v23;

  v26 = v25;
  swift_task_create();
  sub_247B9CAD0(v17, &qword_27EE5DD00, &qword_247BFA890);
}

uint64_t sub_247BB26F8(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v8 = (a2 + *a2);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_247B95F40;

  return v8(a4);
}

uint64_t sub_247BB27F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DD00, &qword_247BFA890);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v24 - v12;
  v14 = *v6;
  v15 = swift_taskGroup_addPending();
  if (v15)
  {
    v24[0] = a2;
    sub_247BC5B0C(a3, v13, &qword_27EE5DD00, &qword_247BFA890);
    v16 = sub_247BF67E0();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v13, 1, v16) == 1)
    {
      sub_247B9CAD0(v13, &qword_27EE5DD00, &qword_247BFA890);
      if (*(a5 + 16))
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_247BF67D0();
      (*(v17 + 8))(v13, v16);
      if (*(a5 + 16))
      {
LABEL_4:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v18 = sub_247BF6740();
        v20 = v19;
        swift_unknownObjectRelease();
        if (a1)
        {
LABEL_5:
          swift_unknownObjectRetain();
          if (v20 | v18)
          {
            v26[0] = 0;
            v26[1] = 0;
            v21 = v26;
            v26[2] = v18;
            v26[3] = v20;
          }

          else
          {
            v21 = 0;
          }

          v25[0] = 1;
          v25[1] = v21;
          v25[2] = v14;
          if (a1 != 1)
          {
            v24[1] = 6;
            v24[2] = v25;
            v24[3] = a1;
            v24[4] = v24[0];
          }

LABEL_16:
          swift_task_create();
          goto LABEL_17;
        }

LABEL_10:
        v22 = (v20 | v18);
        if (v20 | v18)
        {
          v28[0] = 0;
          v28[1] = 0;
          v22 = v28;
          v28[2] = v18;
          v28[3] = v20;
        }

        v27[0] = 1;
        v27[1] = v22;
        v27[2] = v14;
        v26[4] = 6;
        v26[5] = v27;
        v26[6] = 0;
        v26[7] = v24[0];
        goto LABEL_16;
      }
    }

    v18 = 0;
    v20 = 0;
    if (a1)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_17:

  return v15 & 1;
}

uint64_t sub_247BB2A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[21] = a8;
  v8[22] = v10;
  v8[19] = a6;
  v8[20] = a7;
  v8[17] = a4;
  v8[18] = a5;
  return MEMORY[0x2822009F8](sub_247BB2AC8, 0, 0);
}

uint64_t sub_247BB2AC8()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  *(v0 + 128) = *(v0 + 136);
  CUEnvironmentValues.clock.getter(v0 + 16);
  v3 = *(v0 + 32);
  *(v0 + 64) = *(v0 + 16);
  v4 = *(v0 + 48);
  *(v0 + 80) = v3;
  *(v0 + 96) = v4;
  *(v0 + 112) = v2;
  *(v0 + 120) = v1;
  v5 = swift_task_alloc();
  *(v0 + 184) = v5;
  *v5 = v0;
  v5[1] = sub_247BB2BA8;

  return CUClock.sleep(until:tolerance:)((v0 + 112), 0, 0, 1);
}

uint64_t sub_247BB2BA8()
{
  v2 = *v1;
  v2[24] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_247BB2F50, 0, 0);
  }

  else
  {
    v3 = v2[20];

    v7 = (v3 + *v3);
    v4 = swift_task_alloc();
    v2[25] = v4;
    *v4 = v2;
    v4[1] = sub_247BB2DC8;
    v5 = v2[22];

    return v7(v5);
  }
}

uint64_t sub_247BB2DC8()
{

  return MEMORY[0x2822009F8](sub_247BB2EC4, 0, 0);
}

uint64_t sub_247BB2EC4()
{
  type metadata accessor for CUError();
  CUError.__allocating_init(_:_:_:)(-6722, 0, 0, 0);
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t _s14CoreUtilsSwift13cuWithTimeout11environment7timeout9isolation9operationxAA19CUEnvironmentValuesV_s8DurationVScA_pSgYixyYaYbKYActYaKs8SendableRzlF(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v14;
  v8[6] = a6;
  v8[7] = a7;
  v8[4] = a4;
  v8[5] = a5;
  v8[2] = a1;
  v8[3] = a3;
  v8[10] = *a2;
  if (a5)
  {
    swift_getObjectType();
    v9 = sub_247BF6740();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v8[11] = v9;
  v8[12] = v11;

  return MEMORY[0x2822009F8](sub_247BB3018, v9, v11);
}

uint64_t sub_247BB3018()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  v6 = *(v0 + 56);
  *(v5 + 16) = v2;
  *(v5 + 24) = v6;
  *(v5 + 40) = v1;
  *(v5 + 48) = v4;
  *(v5 + 56) = v3;
  v7 = swift_task_alloc();
  *(v0 + 112) = v7;
  *v7 = v0;
  v7[1] = sub_247BB311C;
  v8 = *(v0 + 16);

  return MEMORY[0x282200740](v8);
}

uint64_t sub_247BB311C()
{
  v2 = *v1;
  v2[15] = v0;

  if (v0)
  {
    v3 = v2[11];
    v4 = v2[12];

    return MEMORY[0x2822009F8](sub_247BB3254, v3, v4);
  }

  else
  {

    v5 = v2[1];

    return v5();
  }
}

uint64_t sub_247BB3254()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247BB32B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v9 = sub_247BF6AC0();
  v8[10] = v9;
  v8[11] = *(v9 - 8);
  v8[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DD00, &qword_247BFA890);
  v8[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_247BB33C0, 0, 0);
}

uint64_t sub_247BB33C0()
{
  v1 = v0[13];
  v2 = v0[9];
  v13 = v0[7];
  v14 = v0[8];
  v12 = v0[6];
  v4 = v0[4];
  v3 = v0[5];
  v5 = sub_247BF67E0();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE5DC08, &qword_247BF9F90);
  v7 = sub_247BF6850();
  sub_247BB3970(v1, v4, v3, v7);
  sub_247B9CAD0(v1, &qword_27EE5DD00, &qword_247BFA890);
  v6(v1, 1, 1, v5);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;
  v8[5] = v12;
  v8[6] = v13;
  v8[7] = v14;

  sub_247BB3970(v1, &unk_247BFBA78, v8, v7);
  sub_247B9CAD0(v1, &qword_27EE5DD00, &qword_247BFA890);
  v9 = swift_task_alloc();
  v0[14] = v9;
  *v9 = v0;
  v9[1] = sub_247BB35D8;
  v10 = v0[12];

  return MEMORY[0x2822004D0](v10, 0, 0, v7);
}

uint64_t sub_247BB35D8()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_247BB38CC;
  }

  else
  {
    v2 = sub_247BB36EC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_247BB36EC()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[11] + 8))(v1, v0[10]);
    type metadata accessor for CUError();
    CUError.__allocating_init(_:_:_:)(-6700, 0xD000000000000015, 0x8000000247C01360, 0);
    swift_willThrow();
  }

  else
  {
    (*(v3 + 32))(v0[2], v1, v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC08, &qword_247BF9F90);
  sub_247BF6840();

  v4 = v0[1];

  return v4();
}

uint64_t sub_247BB38CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC08, &qword_247BF9F90);
  sub_247BF6840();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247BB3970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DD00, &qword_247BFA890);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v19 - v8;
  v10 = *v4;
  v11 = swift_taskGroup_addPending();
  if ((v11 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_247BC5B0C(a1, v9, &qword_27EE5DD00, &qword_247BFA890);
  v12 = sub_247BF67E0();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v9, 1, v12) != 1)
  {
    sub_247BF67D0();
    (*(v13 + 8))(v9, v12);
    if (*(a3 + 16))
    {
      goto LABEL_4;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    goto LABEL_8;
  }

  sub_247B9CAD0(v9, &qword_27EE5DD00, &qword_247BFA890);
  if (!*(a3 + 16))
  {
    goto LABEL_7;
  }

LABEL_4:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_247BF6740();
  v16 = v15;
  swift_unknownObjectRelease();
LABEL_8:
  v17 = (v16 | v14);
  if (v16 | v14)
  {
    v20[0] = 0;
    v20[1] = 0;
    v17 = v20;
    v20[2] = v14;
    v20[3] = v16;
  }

  v19[1] = 1;
  v19[2] = v17;
  v19[3] = v10;
  swift_task_create();
LABEL_11:

  return v11 & 1;
}

uint64_t sub_247BB3B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  return MEMORY[0x2822009F8](sub_247BB3BA8, 0, 0);
}

uint64_t sub_247BB3BA8()
{
  v0[8] = v0[9];
  CUEnvironmentValues.clock.getter((v0 + 2));
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_247BB3C74;
  v3 = v0[10];
  v2 = v0[11];

  return sub_247BB3E40(v3, v2, 0, 0, 1);
}

uint64_t sub_247BB3C74()
{
  v2 = *v1;
  *(v2 + 104) = v0;

  sub_247BC520C(v2 + 16);
  if (v0)
  {
    v3 = sub_247BB3E28;
  }

  else
  {
    v3 = sub_247BB3D90;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_247BB3D90()
{
  type metadata accessor for CUError();
  CUError.__allocating_init(_:_:_:)(-6722, 0x74756F656D6954, 0xE700000000000000, 0);
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247BB3E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 88) = a1;
  *(v6 + 96) = a2;
  *(v6 + 64) = a3;
  *(v6 + 72) = a4;
  *(v6 + 80) = a5 & 1;
  v7 = v5[1];
  *(v6 + 16) = *v5;
  *(v6 + 32) = v7;
  *(v6 + 48) = v5[2];
  return MEMORY[0x2822009F8](sub_247BB3E7C, 0, 0);
}

uint64_t sub_247BB3E7C()
{
  v1 = sub_247BC5260();
  sub_247BF73E0();
  sub_247B96584();
  sub_247BF6D80();
  v2 = swift_task_alloc();
  *(v0 + 136) = v2;
  *v2 = v0;
  v2[1] = sub_247BB3F70;

  return MEMORY[0x2822008C8](v0 + 104, v0 + 64, &type metadata for CUClock, v1);
}

uint64_t sub_247BB3F70()
{
  v2 = *v1;
  *(v2 + 144) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_247BB40A4, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t cuWithTimeoutIsolated<A, B>(environment:isolation:timeout:operation:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v14;
  v8[6] = a6;
  v8[7] = a7;
  v8[4] = a4;
  v8[5] = a5;
  v8[2] = a1;
  v8[3] = a3;
  v9 = *a2;
  v8[10] = v15;
  v8[11] = v9;
  v11 = sub_247BF6740();
  v8[12] = v11;
  v8[13] = v10;

  return MEMORY[0x2822009F8](sub_247BB4154, v11, v10);
}

uint64_t sub_247BB4154()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  v7 = *(v0 + 48);
  *(v6 + 16) = *(v0 + 64);
  *(v6 + 32) = v1;
  *(v6 + 40) = v7;
  *(v6 + 56) = v5;
  *(v6 + 64) = v2;
  *(v6 + 72) = v4;
  *(v6 + 80) = v3;
  v8 = swift_task_alloc();
  *(v0 + 120) = v8;
  *v8 = v0;
  v8[1] = sub_247BB4264;
  v9 = *(v0 + 16);

  return MEMORY[0x282200740](v9);
}

uint64_t sub_247BB4264()
{
  v2 = *v1;
  v2[16] = v0;

  if (v0)
  {
    v3 = v2[12];
    v4 = v2[13];

    return MEMORY[0x2822009F8](sub_247BB439C, v3, v4);
  }

  else
  {

    v5 = v2[1];

    return v5();
  }
}

uint64_t sub_247BB439C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247BB4400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = v15;
  v8[12] = v16;
  v8[9] = a8;
  v8[10] = v14;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  v9 = sub_247BF6AC0();
  v8[13] = v9;
  v8[14] = *(v9 - 8);
  v8[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DD00, &qword_247BFA890);
  v8[16] = swift_task_alloc();
  v11 = sub_247BF6740();
  v8[17] = v11;
  v8[18] = v10;

  return MEMORY[0x2822009F8](sub_247BB453C, v11, v10);
}

uint64_t sub_247BB453C()
{
  v1 = v0[16];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  v17 = v0[8];
  v18 = v0[9];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[4];
  v16 = v0[7];
  v8 = sub_247BF67E0();
  v15 = *(*(v8 - 8) + 56);
  v15(v1, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v4;
  v9[5] = v3;
  v9[6] = v2;
  v9[7] = v7;
  v9[8] = v6;
  v9[9] = v5;

  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE5DC08, &qword_247BF9F90);
  v10 = sub_247BF6850();
  sub_247BB3970(v1, &unk_247BFBA50, v9, v10);
  sub_247B9CAD0(v1, &qword_27EE5DD00, &qword_247BFA890);
  v15(v1, 1, 1, v8);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v4;
  v11[5] = v3;
  v11[6] = v2;
  v11[7] = v16;
  v11[8] = v17;
  v11[9] = v18;

  sub_247BB3970(v1, &unk_247BFBA60, v11, v10);
  sub_247B9CAD0(v1, &qword_27EE5DD00, &qword_247BFA890);
  v12 = swift_task_alloc();
  v0[19] = v12;
  *v12 = v0;
  v12[1] = sub_247BB47B0;
  v13 = v0[15];

  return MEMORY[0x2822004D0](v13, v5, v2, v10);
}

uint64_t sub_247BB47B0()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_247BB4ACC;
  }

  else
  {
    v5 = sub_247BB48EC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_247BB48EC()
{
  v1 = v0[15];
  v2 = v0[11];
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[14] + 8))(v1, v0[13]);
    type metadata accessor for CUError();
    CUError.__allocating_init(_:_:_:)(-6700, 0xD000000000000015, 0x8000000247C01360, 0);
    swift_willThrow();
  }

  else
  {
    (*(v3 + 32))(v0[2], v1, v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC08, &qword_247BF9F90);
  sub_247BF6840();

  v4 = v0[1];

  return v4();
}

uint64_t sub_247BB4ACC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC08, &qword_247BF9F90);
  sub_247BF6840();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247BB4B70(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v11 = (a4 + *a4);
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_247B95F40;

  return v11(a1, a6);
}

uint64_t sub_247BB4C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  return MEMORY[0x2822009F8](sub_247BB4CA4, 0, 0);
}

uint64_t sub_247BB4CA4()
{
  v0[8] = v0[9];
  CUEnvironmentValues.clock.getter((v0 + 2));
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_247BB4D70;
  v3 = v0[10];
  v2 = v0[11];

  return sub_247BB3E40(v3, v2, 0, 0, 1);
}

uint64_t sub_247BB4D70()
{
  v2 = *v1;
  *(v2 + 104) = v0;

  sub_247BC520C(v2 + 16);
  if (v0)
  {
    v3 = sub_247BC5C24;
  }

  else
  {
    v3 = sub_247BC5C40;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t Array.cuRemoveAll(keepingCapacity:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;

  sub_247BF6710();
  return v3;
}

uint64_t Set.cuRemoveAll(keepingCapacity:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;

  sub_247BF68F0();
  return v3;
}

uint64_t BidirectionalCollection<>.suffix(afterLastOf:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24[1] = a1;
  v24[2] = a4;
  v26 = a5;
  v7 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v25 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[3] = *(v9 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24[0] = sub_247BF6AC0();
  v11 = *(v24[0] - 8);
  v12 = MEMORY[0x28223BE20](v24[0]);
  v14 = v24 - v13;
  v15 = *(AssociatedTypeWitness - 8);
  v16 = MEMORY[0x28223BE20](v12);
  v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v24 - v19;
  sub_247BF63F0();
  v21 = (v7 + 16);
  if ((*(v15 + 48))(v14, 1, AssociatedTypeWitness) == 1)
  {
    (*(v11 + 8))(v14, v24[0]);
    (*v21)(v25, v5, a2);
    sub_247BF6940();
    sub_247BF69B0();
    return (*(v15 + 8))(v18, AssociatedTypeWitness);
  }

  else
  {
    (*(v15 + 32))(v20, v14, AssociatedTypeWitness);
    (*v21)(v25, v5, a2);
    sub_247BF6960();
    sub_247BF69B0();
    v23 = *(v15 + 8);
    v23(v18, AssociatedTypeWitness);
    return (v23)(v20, AssociatedTypeWitness);
  }
}

uint64_t BinaryFloatingPoint.map(from:to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20[2] = a2;
  v20[3] = a4;
  v5 = *(a3 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v20 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v20 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = v20 - v15;
  v20[1] = *(*(*(v17 + 16) + 16) + 8);
  sub_247BF6EA0();
  sub_247BF6450();
  sub_247BF6EA0();
  sub_247BF6370();
  v18 = *(v5 + 8);
  v18(v8, a3);
  v18(v11, a3);
  sub_247BF6EA0();
  sub_247BF6900();
  v18(v11, a3);
  v18(v14, a3);
  sub_247BF6E90();
  return (v18)(v16, a3);
}

uint64_t Collection.penultimate()@<X0>(uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v20[-v9];
  if (sub_247BF6950() >= 2)
  {
    sub_247BF69A0();
    sub_247BF6980();
    v14 = *(v5 + 8);
    v14(v8, AssociatedTypeWitness);
    v15 = sub_247BF69C0();
    v17 = v16;
    v18 = swift_getAssociatedTypeWitness();
    v19 = *(v18 - 8);
    (*(v19 + 16))(a3, v17, v18);
    v15(v20, 0);
    v14(v10, AssociatedTypeWitness);
    return (*(v19 + 56))(a3, 0, 1, v18);
  }

  else
  {
    v11 = swift_getAssociatedTypeWitness();
    v12 = *(*(v11 - 8) + 56);

    return v12(a3, 1, 1, v11);
  }
}

uint64_t Collection.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_247BF6AC0();
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v37 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x28223BE20](v9);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v37 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v42 = &v37 - v21;
  if (a1 < 0)
  {
    v23 = swift_getAssociatedTypeWitness();
    v24 = *(*(v23 - 8) + 56);

    return v24(a4, 1, 1, v23);
  }

  else
  {
    v38 = v20;
    v39 = v19;
    v41 = a4;
    sub_247BF6940();
    sub_247BF69A0();
    v40 = v4;
    sub_247BF6970();
    v22 = *(v12 + 8);
    v22(v15, AssociatedTypeWitness);
    v22(v18, AssociatedTypeWitness);
    if ((*(v12 + 48))(v11, 1, AssociatedTypeWitness) == 1)
    {
      (*(v38 + 8))(v11, v39);
    }

    else
    {
      v26 = v42;
      (*(v12 + 32))(v42, v11, AssociatedTypeWitness);
      sub_247BF69A0();
      swift_getAssociatedConformanceWitness();
      v27 = v22;
      v28 = sub_247BF6420();
      v27(v18, AssociatedTypeWitness);
      if (v28)
      {
        v29 = v27;
        v30 = sub_247BF69C0();
        v32 = v31;
        v33 = swift_getAssociatedTypeWitness();
        v34 = *(v33 - 8);
        v35 = v41;
        (*(v34 + 16))(v41, v32, v33);
        v30(v43, 0);
        v29(v26, AssociatedTypeWitness);
        return (*(v34 + 56))(v35, 0, 1, v33);
      }

      v27(v26, AssociatedTypeWitness);
    }

    v36 = swift_getAssociatedTypeWitness();
    return (*(*(v36 - 8) + 56))(v41, 1, 1, v36);
  }
}

uint64_t Collection.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v46 = a5;
  v45 = a2;
  v48 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_247BF6AC0();
  v43 = *(v7 - 8);
  v44 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v42 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  v15 = MEMORY[0x28223BE20](v11);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v42 - v17;
  MEMORY[0x28223BE20](v16);
  v21 = &v42 - v20;
  v47 = (v14 + 8);
  v22 = (v14 + 48);
  if ((a1 & 0x8000000000000000) == 0)
  {
    sub_247BF69A0();
    sub_247BF6970();
    v23 = *v47;
    (*v47)(v18, AssociatedTypeWitness);
    if ((*v22)(v13, 1, AssociatedTypeWitness) == 1)
    {
      (*(v43 + 8))(v13, v44);
    }

    else
    {
      (*(v14 + 32))(v21, v13, AssociatedTypeWitness);
      sub_247BF69A0();
      swift_getAssociatedConformanceWitness();
      v26 = sub_247BF6420();
      v23(v18, AssociatedTypeWitness);
      if (v26)
      {
        v27 = sub_247BF69C0();
        v29 = v28;
        v30 = swift_getAssociatedTypeWitness();
        v31 = *(v30 - 8);
        v32 = v46;
        (*(v31 + 16))(v46, v29, v30);
        v27(v49, 0);
        v23(v21, AssociatedTypeWitness);
        return (*(v31 + 56))(v32, 0, 1, v30);
      }

      v23(v21, AssociatedTypeWitness);
    }

    goto LABEL_14;
  }

  v24 = v19;
  sub_247BF6940();
  sub_247BF6970();
  v25 = *v47;
  (*v47)(v18, AssociatedTypeWitness);
  if ((*v22)(v10, 1, AssociatedTypeWitness) == 1)
  {
    (*(v43 + 8))(v10, v44);
    goto LABEL_14;
  }

  (*(v14 + 32))(v24, v10, AssociatedTypeWitness);
  sub_247BF6940();
  swift_getAssociatedConformanceWitness();
  v34 = sub_247BF6430();
  v25(v18, AssociatedTypeWitness);
  if ((v34 & 1) == 0)
  {
    v25(v24, AssociatedTypeWitness);
LABEL_14:
    v41 = swift_getAssociatedTypeWitness();
    return (*(*(v41 - 8) + 56))(v46, 1, 1, v41);
  }

  v35 = sub_247BF69C0();
  v37 = v36;
  v38 = swift_getAssociatedTypeWitness();
  v39 = *(v38 - 8);
  v40 = v46;
  (*(v39 + 16))(v46, v37, v38);
  v35(v49, 0);
  v25(v24, AssociatedTypeWitness);
  return (*(v39 + 56))(v40, 0, 1, v38);
}

uint64_t Comparable.clamped(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247BF6450();
  sub_247BF73A0();
  sub_247BF7390();
  return (*(v4 + 8))(v6, a2);
}

{
  return sub_247BF7390();
}

{
  return sub_247BF73A0();
}

unint64_t Data.init(xpcObject:)(void *a1)
{
  v2 = MEMORY[0x24C1B5CC0]();
  if (v2 == sub_247BF60C0())
  {
    length = xpc_data_get_length(a1);
    if (length < 1)
    {
      swift_unknownObjectRelease();
      return 0;
    }

    v9 = length;
    bytes_ptr = xpc_data_get_bytes_ptr(a1);
    if (bytes_ptr)
    {
      v3 = sub_247BC3110(bytes_ptr, v9);
      swift_unknownObjectRelease();
      return v3;
    }

    v3 = type metadata accessor for CUError();
    v5 = 0x8000000247C01010;
    v6 = -6700;
    v4 = 0xD000000000000020;
  }

  else
  {
    v3 = type metadata accessor for CUError();
    v4 = 0xD000000000000022;
    v5 = 0x8000000247C00FE0;
    v6 = -6705;
  }

  CUError.__allocating_init(_:_:_:)(v6, v4, v5, 0);
  swift_willThrow();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t Data.cuNormalizedJSONData.getter(uint64_t a1, unint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_self();
  v5 = sub_247BF5E70();
  *&v17 = 0;
  v6 = [v4 JSONObjectWithData:v5 options:0 error:&v17];

  v7 = v17;
  if (v6)
  {
    sub_247BF6BB0();
    swift_unknownObjectRelease();
    sub_247B9471C(v16, &v17);
    __swift_project_boxed_opaque_existential_1(&v17, v18);
    v8 = sub_247BF7170();
    *&v16[0] = 0;
    v9 = [v4 dataWithJSONObject:v8 options:10 error:v16];
    swift_unknownObjectRelease();
    v10 = *&v16[0];
    if (v9)
    {
      a1 = sub_247BF5E80();
    }

    else
    {
      v13 = v10;
      v14 = sub_247BF5E10();

      swift_willThrow();
      sub_247BC2A70(a1, a2);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v17);
  }

  else
  {
    v11 = v7;
    v12 = sub_247BF5E10();

    swift_willThrow();
    sub_247BC2A70(a1, a2);
  }

  return a1;
}

uint64_t Data.cuNormalizedJSONString.getter(uint64_t a1, unint64_t a2)
{
  v2 = Data.cuNormalizedJSONData.getter(a1, a2);
  v4 = v3;
  v5 = sub_247BC1428(v2, v3);
  if (v6)
  {
    goto LABEL_8;
  }

  v11 = v2;
  v12 = v4;
  sub_247BC2A70(v2, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DD40, &qword_247BFA8C8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    sub_247B9CAD0(v9, &qword_27EE5DD48, &qword_247BFA8D0);
LABEL_7:
    v5 = sub_247BBF8CC(v2, v4);
LABEL_8:
    v7 = v5;
    sub_247BC2AC4(v2, v4);
    return v7;
  }

  sub_247B93B4C(v9, v13);
  __swift_project_boxed_opaque_existential_1(v13, v14);
  if ((sub_247BF6F00() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    goto LABEL_7;
  }

  sub_247BC2AC4(v2, v4);
  __swift_project_boxed_opaque_existential_1(v13, v14);
  sub_247BF6EF0();
  v7 = *&v9[0];
  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  return v7;
}

uint64_t OS_dispatch_queue.serialDispatchQueue.getter()
{
  v1 = sub_247BF6A10();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_247BF6A70();
  MEMORY[0x28223BE20](v5);
  v6 = sub_247BF62A0();
  MEMORY[0x28223BE20](v6 - 8);
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    v9 = v0;
    return v8;
  }

  else
  {
    v18 = sub_247BC3818(0, &qword_27EE5DD10, 0x277D85C90);
    v11 = sub_247BF6A40();
    v16 = v12;
    v17 = v11;
    sub_247BF6290();
    v19 = MEMORY[0x277D84F90];
    sub_247BC2A28(&qword_27EE5DDC0, MEMORY[0x277D852D8], MEMORY[0x277D852E0]);
    v15 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DDC8, &qword_247BFA910);
    sub_247BC34F4(&qword_27EE5DDD0, &qword_27EE5DDC8, &qword_247BFA910, MEMORY[0x277D83970]);
    sub_247BF6BD0();
    (*(v2 + 104))(v4, *MEMORY[0x277D85268], v15);
    v13 = v0;
    return sub_247BF6A80();
  }
}

uint64_t static OS_dispatch_queue_serial.mainSerialQueue.getter()
{
  v0 = sub_247BF6A10();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_247BF6A70();
  MEMORY[0x28223BE20](v4);
  v5 = sub_247BF62A0();
  MEMORY[0x28223BE20](v5 - 8);
  sub_247BF6A20();
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {
    v13 = sub_247BC3818(0, &qword_27EE5DD10, 0x277D85C90);
    v7 = sub_247BF6A40();
    v11 = v8;
    v12 = v7;
    sub_247BF6290();
    v14 = MEMORY[0x277D84F90];
    sub_247BC2A28(&qword_27EE5DDC0, MEMORY[0x277D852D8], MEMORY[0x277D852E0]);
    v10 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DDC8, &qword_247BFA910);
    sub_247BC34F4(&qword_27EE5DDD0, &qword_27EE5DDC8, &qword_247BFA910, MEMORY[0x277D83970]);
    sub_247BF6BD0();
    (*(v1 + 104))(v3, *MEMORY[0x277D85268], v10);
    return sub_247BF6A80();
  }

  return result;
}

void static DispatchTimeInterval.cuSeconds(_:)(void *a1@<X8>, double a2@<D0>)
{
  if (a2 < 0.0)
  {
    goto LABEL_2;
  }

  if (a2 < 9223372040.0)
  {
    v4 = a2 * 1000000000.0;
    if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v4 > -9.22337204e18)
    {
      if (v4 < 9.22337204e18)
      {
        *a1 = v4;
        v3 = MEMORY[0x277D85168];
        goto LABEL_22;
      }

      goto LABEL_27;
    }

    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (a2 < 9.22337204e12)
  {
    v5 = a2 * 1000000.0;
    if (*&v5 >> 52 <= 0x7FEuLL)
    {
      if (v5 > -9.22337204e18)
      {
        if (v5 < 9.22337204e18)
        {
          *a1 = v5;
          v3 = MEMORY[0x277D85170];
          goto LABEL_22;
        }

        goto LABEL_30;
      }

LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (a2 < 9.22337204e15)
  {
    v6 = a2 * 1000.0;
    if (*&v6 >> 52 <= 0x7FEuLL)
    {
      if (v6 > -9.22337204e18)
      {
        if (v6 < 9.22337204e18)
        {
          *a1 = v6;
          v3 = MEMORY[0x277D85178];
          goto LABEL_22;
        }

        goto LABEL_33;
      }

LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (a2 < 9.22337204e18)
  {
    if (*&a2 >> 52 <= 0x7FEuLL)
    {
      if (a2 > -9.22337204e18)
      {
        *a1 = a2;
        v3 = MEMORY[0x277D85188];
        goto LABEL_22;
      }

LABEL_35:
      __break(1u);
      return;
    }

LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

LABEL_2:
  v3 = MEMORY[0x277D85180];
LABEL_22:
  v7 = *v3;
  v8 = sub_247BF6270();
  v9 = *(*(v8 - 8) + 104);

  v9(a1, v7, v8);
}

uint64_t Duration.cuAbsoluteValue.getter(uint64_t a1, uint64_t a2)
{
  sub_247BF7580();
  if (sub_247BF7520())
  {
    sub_247BF7580();
    return sub_247BF7550();
  }

  return a1;
}

double Duration.cuSeconds.getter(uint64_t a1, uint64_t a2)
{
  v2 = sub_247BF7510();
  sub_247BF7510();
  return v3 / 1.0e18 + v2;
}

BOOL Duration.cuWithin(fraction:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  sub_247BF7550();
  sub_247BF7580();
  if (sub_247BF7520())
  {
    sub_247BF7580();
    sub_247BF7550();
  }

  sub_247BF7530();
  sub_247BF7580();
  if (sub_247BF7520())
  {
    sub_247BF7580();
    sub_247BF7550();
  }

  return (sub_247BF7520() & 1) == 0;
}

uint64_t FixedWidthInteger.init<A>(bigEndianBytes:offset:end:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v34 = a1;
  v38 = a3;
  v33 = a8;
  MEMORY[0x28223BE20](a1);
  v32 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(*(*(v14 + 8) + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  result = sub_247BF6E30();
  if ((result & 7) != 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  v17 = result;
  v30 = a2;
  v18 = v38;
  v19 = v34;
  result = sub_247BF6930();
  if (result < v17 >> 3)
  {
    sub_247BC353C();
    swift_allocError();
    *v20 = 3;
    swift_willThrow();
    v21 = swift_getAssociatedTypeWitness();
    (*(*(v21 - 8) + 8))(v18, v21);
    return (*(*(a5 - 8) + 8))(v19, a5);
  }

  v29 = a7;
  if (__OFSUB__(v17, 8))
  {
    goto LABEL_8;
  }

  v22 = sub_247BF6E30();
  v35 = 0;
  v36 = v22;
  v37 = 8;
  swift_getAssociatedConformanceWitness();
  sub_247BF7370();
  v23 = sub_247BF7160();
  v31 = &v29;
  MEMORY[0x28223BE20](v23);
  *(&v29 - 8) = a4;
  *(&v29 - 7) = a5;
  v24 = a5;
  v26 = v29;
  v25 = v30;
  *(&v29 - 6) = a6;
  *(&v29 - 5) = v26;
  v27 = v34;
  *(&v29 - 4) = v34;
  *(&v29 - 3) = v25;
  *(&v29 - 2) = v17 - 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DE38, &qword_247BFA9B0);
  sub_247BC34F4(&qword_27EE5DE40, &qword_27EE5DE38, &qword_247BFA9B0, MEMORY[0x277D84EF8]);
  sub_247BF6640();
  v28 = swift_getAssociatedTypeWitness();
  (*(*(v28 - 8) + 8))(v38, v28);
  return (*(*(v24 - 8) + 8))(v27, v24);
}

uint64_t sub_247BB74B4(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v47 = a8;
  v48 = a5;
  v49 = a7;
  v50 = a3;
  v46 = a2;
  v41 = a1;
  v11 = *(*(a9 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v39 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v38 - v17;
  v19 = *(a6 - 8);
  v20 = MEMORY[0x28223BE20](v16);
  v22 = v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = v38 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = v38 - v26;
  v46 = *v46;
  v28 = *(v13 + 16);
  v44 = a4;
  v38[0] = v28;
  v38[1] = v13 + 16;
  v28(v18, a4, AssociatedTypeWitness);
  v43 = v11;
  v29 = sub_247BF69C0();
  LOBYTE(a4) = *v30;
  v29(v51, 0);
  v42 = v13;
  v31 = *(v13 + 8);
  v40 = v18;
  v45 = AssociatedTypeWitness;
  v31(v18, AssociatedTypeWitness);
  LOBYTE(v51[0]) = a4;
  sub_247BC5054();
  result = sub_247BF6B30();
  if (__OFSUB__(v48, v46))
  {
    __break(1u);
  }

  else
  {
    v51[0] = v48 - v46;
    sub_247BC360C();
    sub_247BF6B30();
    sub_247BF6E70();
    v48 = v31;
    v33 = v44;
    v34 = *(v19 + 8);
    v34(v22, a6);
    v34(v25, a6);
    sub_247BF6B50();
    v34(v27, a6);
    v35 = v39;
    v36 = v45;
    (v38[0])(v39, v33, v45);
    v37 = v40;
    sub_247BF6960();
    v48(v35, v36);
    return (*(v42 + 40))(v33, v37, v36);
  }

  return result;
}

uint64_t FixedWidthInteger.init<A>(littleEndianBytes:offset:end:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v22 = a2;
  v23 = a7;
  v24 = a3;
  v28 = a1;
  v21[2] = a8;
  MEMORY[0x28223BE20](a1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  result = sub_247BF6E30();
  if ((result & 7) != 0)
  {
    __break(1u);
  }

  else
  {
    v13 = result;
    if (sub_247BF6930() >= result >> 3)
    {
      v25 = 0;
      v26 = v13;
      v27 = 8;
      swift_getAssociatedConformanceWitness();
      sub_247BF7370();
      v16 = sub_247BF7160();
      v21[1] = v21;
      MEMORY[0x28223BE20](v16);
      v21[-6] = a4;
      v21[-5] = a5;
      v17 = v22;
      v18 = v23;
      v21[-4] = a6;
      v21[-3] = v18;
      v19 = v28;
      v21[-2] = v28;
      v21[-1] = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DE38, &qword_247BFA9B0);
      sub_247BC34F4(&qword_27EE5DE40, &qword_27EE5DE38, &qword_247BFA9B0, MEMORY[0x277D84EF8]);
      sub_247BF6640();
      v20 = swift_getAssociatedTypeWitness();
      (*(*(v20 - 8) + 8))(v24, v20);
      return (*(*(a5 - 8) + 8))(v19, a5);
    }

    else
    {
      sub_247BC353C();
      swift_allocError();
      *v14 = 3;
      swift_willThrow();
      v15 = swift_getAssociatedTypeWitness();
      (*(*(v15 - 8) + 8))(v24, v15);
      return (*(*(a5 - 8) + 8))(v28, a5);
    }
  }

  return result;
}

uint64_t sub_247BB7C0C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43 = a7;
  v9 = a4;
  v39 = a4;
  v45 = a1;
  v46 = *(*(a8 + 8) + 8);
  v47 = a3;
  v38 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v44 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  v42 = *(a5 - 8);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v34 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v34 - v23;
  v34 = *a2;
  v26 = v25;
  v37 = v25;
  v40 = *(v25 + 16);
  v41 = v25 + 16;
  v40(v16, v9, AssociatedTypeWitness);
  v35 = v16;
  v27 = sub_247BF69C0();
  LOBYTE(v9) = *v28;
  v27(v48, 0);
  v36 = *(v26 + 8);
  v36(v16, AssociatedTypeWitness);
  LOBYTE(v48[0]) = v9;
  sub_247BC5054();
  sub_247BF6B30();
  v48[0] = v34;
  sub_247BC360C();
  sub_247BF6B30();
  sub_247BF6E70();
  v29 = *(v42 + 8);
  v29(v19, a5);
  v29(v22, a5);
  sub_247BF6B50();
  v29(v24, a5);
  v30 = v44;
  v31 = v39;
  v40(v44, v39, AssociatedTypeWitness);
  v32 = v35;
  sub_247BF6960();
  v36(v30, AssociatedTypeWitness);
  return (*(v37 + 40))(v31, v32, AssociatedTypeWitness);
}

uint64_t FixedWidthInteger.init<A>(bigEndianBytes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = a3;
  v19 = a5;
  v15 = a1;
  MEMORY[0x28223BE20](a1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  result = sub_247BF6E30();
  v9 = result - 8;
  if (__OFSUB__(result, 8))
  {
    __break(1u);
  }

  else
  {
    v16 = 0;
    v17 = sub_247BF6E30();
    v18 = 8;
    swift_getAssociatedConformanceWitness();
    sub_247BF7370();
    v10 = sub_247BF7160();
    v13[1] = v13;
    MEMORY[0x28223BE20](v10);
    v11 = v14;
    v13[-6] = a2;
    v13[-5] = v11;
    v12 = v19;
    v13[-4] = a4;
    v13[-3] = v12;
    v13[-2] = v15;
    v13[-1] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DE38, &qword_247BFA9B0);
    sub_247BC34F4(&qword_27EE5DE40, &qword_27EE5DE38, &qword_247BFA9B0, MEMORY[0x277D84EF8]);
    return sub_247BF6640();
  }

  return result;
}

uint64_t sub_247BB8210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a4;
  v25 = a7;
  v9 = *(a5 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v23 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  v19 = *v18;
  sub_247BF6AE0();
  if (v29)
  {
    sub_247BC353C();
    swift_allocError();
    *v20 = 3;
    return swift_willThrow();
  }

  else
  {
    v23 = a1;
    v27 = v28;
    sub_247BC5054();
    result = sub_247BF6B30();
    if (__OFSUB__(v24, v19))
    {
      __break(1u);
    }

    else
    {
      v26 = v24 - v19;
      sub_247BC360C();
      sub_247BF6B30();
      sub_247BF6E70();
      v22 = *(v9 + 8);
      v22(v12, a5);
      v22(v15, a5);
      sub_247BF6B50();
      return (v22)(v17, a5);
    }
  }

  return result;
}

uint64_t FixedWidthInteger.init<A>(littleEndianBytes:)(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  sub_247BF6E30();
  swift_getAssociatedConformanceWitness();
  sub_247BF7370();
  sub_247BF7160();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DE38, &qword_247BFA9B0);
  sub_247BC34F4(&qword_27EE5DE40, &qword_27EE5DE38, &qword_247BFA9B0, MEMORY[0x277D84EF8]);
  return sub_247BF6640();
}

uint64_t sub_247BB8658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a4 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v22 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = v22 - v15;
  v18 = *v17;
  sub_247BF6AE0();
  if (v25)
  {
    sub_247BC353C();
    swift_allocError();
    *v19 = 3;
    return swift_willThrow();
  }

  else
  {
    v23 = v24;
    v22[1] = a1;
    sub_247BC5054();
    sub_247BF6B30();
    v22[3] = v18;
    sub_247BC360C();
    sub_247BF6B30();
    sub_247BF6E70();
    v21 = *(v8 + 8);
    v21(v11, a4);
    v21(v14, a4);
    sub_247BF6B50();
    return (v21)(v16, a4);
  }
}

uint64_t sub_247BB88D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(char *, uint64_t, uint64_t, uint64_t, uint64_t)@<X5>, uint64_t a6@<X8>)
{
  v20 = a5;
  v19 = a4;
  v17 = a6;
  v18 = a2;
  v8 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v17 - v13;
  (*(v8 + 16))(v10, a1, a3);
  sub_247BF6610();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20(v14, v18, AssociatedTypeWitness, v19, AssociatedConformanceWitness);
  (*(v8 + 8))(a1, a3);
  return (*(v12 + 8))(v14, AssociatedTypeWitness);
}

char *sub_247BB8AD0(int a1)
{
  v2 = sub_247BBE398(0, 1, 1, MEMORY[0x277D84F90]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  v5 = v4 + 1;
  if (v4 >= v3 >> 1)
  {
    v2 = sub_247BBE398((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v5;
  v2[v4 + 32] = HIBYTE(a1);
  v6 = *(v2 + 3);
  v7 = v4 + 2;
  if (v5 >= v6 >> 1)
  {
    v2 = sub_247BBE398((v6 > 1), v4 + 2, 1, v2);
  }

  *(v2 + 2) = v7;
  v2[v5 + 32] = BYTE2(a1);
  v8 = *(v2 + 3);
  v9 = v4 + 3;
  if (v7 >= v8 >> 1)
  {
    v2 = sub_247BBE398((v8 > 1), v4 + 3, 1, v2);
  }

  *(v2 + 2) = v9;
  v2[v7 + 32] = BYTE1(a1);
  v10 = *(v2 + 3);
  if (v9 >= v10 >> 1)
  {
    v2 = sub_247BBE398((v10 > 1), v4 + 4, 1, v2);
  }

  *(v2 + 2) = v4 + 4;
  v2[v9 + 32] = a1;
  return v2;
}

char *sub_247BB8C04(uint64_t a1)
{
  v2 = sub_247BBE398(0, 1, 1, MEMORY[0x277D84F90]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  v5 = v4 + 1;
  if (v4 >= v3 >> 1)
  {
    v2 = sub_247BBE398((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v5;
  v2[v4 + 32] = HIBYTE(a1);
  v6 = *(v2 + 3);
  v7 = v4 + 2;
  if (v5 >= v6 >> 1)
  {
    v2 = sub_247BBE398((v6 > 1), v5 + 1, 1, v2);
  }

  *(v2 + 2) = v7;
  v2[v5 + 32] = BYTE6(a1);
  v8 = *(v2 + 3);
  v9 = v5 + 2;
  if (v7 >= v8 >> 1)
  {
    v2 = sub_247BBE398((v8 > 1), v7 + 1, 1, v2);
  }

  *(v2 + 2) = v9;
  v2[v7 + 32] = BYTE5(a1);
  v10 = *(v2 + 3);
  v11 = v7 + 2;
  if (v9 >= v10 >> 1)
  {
    v2 = sub_247BBE398((v10 > 1), v9 + 1, 1, v2);
  }

  *(v2 + 2) = v11;
  v2[v9 + 32] = BYTE4(a1);
  v12 = *(v2 + 3);
  v13 = v9 + 2;
  if (v11 >= v12 >> 1)
  {
    v2 = sub_247BBE398((v12 > 1), v11 + 1, 1, v2);
  }

  *(v2 + 2) = v13;
  v2[v11 + 32] = BYTE3(a1);
  v14 = *(v2 + 3);
  v15 = v11 + 2;
  if (v13 >= v14 >> 1)
  {
    v2 = sub_247BBE398((v14 > 1), v13 + 1, 1, v2);
  }

  *(v2 + 2) = v15;
  v2[v13 + 32] = BYTE2(a1);
  v16 = *(v2 + 3);
  v17 = v11 + 3;
  if (v15 >= v16 >> 1)
  {
    v2 = sub_247BBE398((v16 > 1), v15 + 1, 1, v2);
  }

  *(v2 + 2) = v17;
  v2[v15 + 32] = BYTE1(a1);
  v18 = *(v2 + 3);
  v19 = v13 + 3;
  if (v17 >= v18 >> 1)
  {
    v2 = sub_247BBE398((v18 > 1), v19, 1, v2);
  }

  *(v2 + 2) = v19;
  v2[v17 + 32] = a1;
  return v2;
}

uint64_t FixedWidthInteger.bigEndianBytes.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v24 - v11;
  (*(v4 + 16))(v6, v2, a1);
  swift_getAssociatedConformanceWitness();
  v27 = v12;
  sub_247BF6B30();
  swift_getAssociatedConformanceWitness();
  result = sub_247BF6E30();
  v26 = result - 8;
  if (__OFSUB__(result, 8))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  result = sub_247BF6E30();
  v14 = v25 + 8;
  v25 = result;
  if (result > 0)
  {
    v15 = 0;
    v16 = MEMORY[0x277D84F90];
    v24[1] = v14 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    while (1)
    {
      v17 = __OFADD__(v15, 8) ? 0x7FFFFFFFFFFFFFFFLL : v15 + 8;
      v18 = __OFSUB__(v26, v15);
      v19 = v26 - v15;
      if (v18)
      {
        break;
      }

      v28 = v19;
      sub_247BC360C();
      sub_247BF6B40();
      v20 = sub_247BF6B60();
      v21 = *v14;
      (*v14)(v10, AssociatedTypeWitness);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_247BBE398(0, *(v16 + 16) + 1, 1, v16);
        v16 = result;
      }

      v23 = *(v16 + 16);
      v22 = *(v16 + 24);
      if (v23 >= v22 >> 1)
      {
        result = sub_247BBE398((v22 > 1), v23 + 1, 1, v16);
        v16 = result;
      }

      *(v16 + 16) = v23 + 1;
      *(v16 + v23 + 32) = v20;
      v15 = v17;
      if (v17 >= v25)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  v21 = *v14;
  v16 = MEMORY[0x277D84F90];
LABEL_15:
  v21(v27, AssociatedTypeWitness);
  return v16;
}

char *sub_247BB9190(int a1)
{
  v2 = sub_247BBE398(0, 1, 1, MEMORY[0x277D84F90]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  v5 = v3 >> 1;
  v6 = v4 + 1;
  if (v3 >> 1 <= v4)
  {
    v2 = sub_247BBE398((v3 > 1), v4 + 1, 1, v2);
    v3 = *(v2 + 3);
    v5 = v3 >> 1;
  }

  *(v2 + 2) = v6;
  v2[v4 + 32] = a1;
  v7 = v4 + 2;
  if (v5 <= v6)
  {
    v2 = sub_247BBE398((v3 > 1), v4 + 2, 1, v2);
    v3 = *(v2 + 3);
    v5 = v3 >> 1;
  }

  *(v2 + 2) = v7;
  v2[v6 + 32] = BYTE1(a1);
  v8 = v4 + 3;
  if (v5 <= v7)
  {
    v2 = sub_247BBE398((v3 > 1), v4 + 3, 1, v2);
    v3 = *(v2 + 3);
    v5 = v3 >> 1;
  }

  *(v2 + 2) = v8;
  v2[v7 + 32] = BYTE2(a1);
  if (v5 <= v8)
  {
    v2 = sub_247BBE398((v3 > 1), v4 + 4, 1, v2);
  }

  *(v2 + 2) = v4 + 4;
  v2[v8 + 32] = HIBYTE(a1);
  return v2;
}

char *sub_247BB92D4(uint64_t a1)
{
  v2 = sub_247BBE398(0, 1, 1, MEMORY[0x277D84F90]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  v5 = v3 >> 1;
  v6 = v4 + 1;
  if (v3 >> 1 <= v4)
  {
    v2 = sub_247BBE398((v3 > 1), v4 + 1, 1, v2);
    v3 = *(v2 + 3);
    v5 = v3 >> 1;
  }

  *(v2 + 2) = v6;
  v2[v4 + 32] = a1;
  v7 = v4 + 2;
  if (v5 <= v6)
  {
    v2 = sub_247BBE398((v3 > 1), v4 + 2, 1, v2);
    v3 = *(v2 + 3);
    v5 = v3 >> 1;
  }

  *(v2 + 2) = v7;
  v2[v6 + 32] = BYTE1(a1);
  v8 = v4 + 3;
  if (v5 <= v7)
  {
    v2 = sub_247BBE398((v3 > 1), v4 + 3, 1, v2);
    v3 = *(v2 + 3);
    v5 = v3 >> 1;
  }

  *(v2 + 2) = v8;
  v2[v7 + 32] = BYTE2(a1);
  v9 = v4 + 4;
  if (v5 <= v8)
  {
    v2 = sub_247BBE398((v3 > 1), v4 + 4, 1, v2);
    v3 = *(v2 + 3);
    v5 = v3 >> 1;
  }

  *(v2 + 2) = v9;
  v2[v8 + 32] = BYTE3(a1);
  v10 = v4 + 5;
  if (v5 <= v9)
  {
    v2 = sub_247BBE398((v3 > 1), v4 + 5, 1, v2);
    v3 = *(v2 + 3);
    v5 = v3 >> 1;
  }

  *(v2 + 2) = v10;
  v2[v9 + 32] = BYTE4(a1);
  v11 = v4 + 6;
  if (v5 <= v10)
  {
    v2 = sub_247BBE398((v3 > 1), v4 + 6, 1, v2);
    v3 = *(v2 + 3);
    v5 = v3 >> 1;
  }

  *(v2 + 2) = v11;
  v2[v10 + 32] = BYTE5(a1);
  v12 = v4 + 7;
  if (v5 <= v11)
  {
    v2 = sub_247BBE398((v3 > 1), v4 + 7, 1, v2);
    v3 = *(v2 + 3);
    v5 = v3 >> 1;
  }

  *(v2 + 2) = v12;
  v2[v11 + 32] = BYTE6(a1);
  if (v5 <= v12)
  {
    v2 = sub_247BBE398((v3 > 1), v4 + 8, 1, v2);
  }

  *(v2 + 2) = v4 + 8;
  v2[v12 + 32] = HIBYTE(a1);
  return v2;
}

char *FixedWidthInteger.littleEndianBytes.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v24 - v13;
  (*(v5 + 16))(v7, v3, a1);
  swift_getAssociatedConformanceWitness();
  v26 = v14;
  sub_247BF6B30();
  swift_getAssociatedConformanceWitness();
  v25 = sub_247BF6E30();
  if (v25 <= 0)
  {
    v20 = *(v9 + 8);
    v16 = MEMORY[0x277D84F90];
  }

  else
  {
    v24[2] = sub_247BC360C();
    v15 = 0;
    v16 = MEMORY[0x277D84F90];
    v17 = (v9 + 8);
    v24[1] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    do
    {
      if (__OFADD__(v15, 8))
      {
        v18 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v15 + 8;
      }

      v27 = v15;
      sub_247BF6B40();
      v19 = sub_247BF6B60();
      v20 = *v17;
      (*v17)(v12, AssociatedTypeWitness);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_247BBE398(0, *(v16 + 2) + 1, 1, v16);
      }

      v22 = *(v16 + 2);
      v21 = *(v16 + 3);
      if (v22 >= v21 >> 1)
      {
        v16 = sub_247BBE398((v21 > 1), v22 + 1, 1, v16);
      }

      *(v16 + 2) = v22 + 1;
      v16[v22 + 32] = v19;
      v15 = v18;
    }

    while (v18 < v25);
  }

  v20(v26, AssociatedTypeWitness);
  return v16;
}

uint64_t FixedWidthInteger.init(exactlyThrowing:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v16 = a4;
  v6 = sub_247BF6AC0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - v8;
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  MEMORY[0x28223BE20](v10);
  (*(v12 + 16))(&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_247BF6910();
  v13 = *(a2 - 8);
  if ((*(v13 + 48))(v9, 1, a2) == 1)
  {
    (*(v7 + 8))(v9, v6);
    type metadata accessor for CUError();
    CUError.__allocating_init(_:_:_:)(-6710, 0x65766F2074736143, 0xED0000776F6C6672, 0);
    swift_willThrow();
  }

  else
  {
    (*(v13 + 32))(v16, v9, a2);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t FixedWidthInteger.addingThrowingOverflow(_:)@<X0>(uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  result = sub_247BF6E40();
  if (result)
  {
    type metadata accessor for CUError();
    CUError.__allocating_init(_:_:_:)(-6710, 0xD000000000000010, 0x8000000247C01040, 0);
    swift_willThrow();
    return (*(*(a2 - 8) + 8))(a4, a2);
  }

  return result;
}

float sub_247BB9BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *__return_ptr, char *, uint64_t, char *, void, uint64_t, uint64_t, uint64_t))
{
  v24 = a6;
  v22 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v21 - v13;
  v15 = *(a4 - 8);
  MEMORY[0x28223BE20](v12);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v17, a1, a4);
  (*(v11 + 16))(v14, a3, AssociatedTypeWitness);
  v18 = sub_247BC3660();
  v19 = v23;
  v24(&v25, v17, v22, v14, MEMORY[0x277D84CC0], a4, v18, a5);
  (*(v11 + 8))(a3, AssociatedTypeWitness);
  (*(v15 + 8))(a1, a4);
  if (!v19)
  {
    return *&v25;
  }

  return result;
}

float Float.init<A>(bigEndianBytes:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_247BB9E60(a1, a2, a3, FixedWidthInteger.init<A>(bigEndianBytes:));
}

{
  return sub_247BB9F30(a1, a2, a3, FixedWidthInteger.init<A>(bigEndianBytes:));
}

float Float.init<A>(littleEndianBytes:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_247BB9E60(a1, a2, a3, FixedWidthInteger.init<A>(littleEndianBytes:));
}

{
  return sub_247BB9F30(a1, a2, a3, FixedWidthInteger.init<A>(littleEndianBytes:));
}

float sub_247BB9E60(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t, void, uint64_t, uint64_t, uint64_t))
{
  v9 = sub_247BC3660();
  a4(&v11, a1, MEMORY[0x277D84CC0], a2, v9, a3);
  if (!v4)
  {
    return *&v11;
  }

  return result;
}

float sub_247BB9F30(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, char *, void, uint64_t, uint64_t, uint64_t))
{
  v9 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a1, a2);
  v12 = sub_247BC3660();
  a4(&v15, v11, MEMORY[0x277D84CC0], a2, v12, a3);
  (*(v9 + 8))(a1, a2);
  if (!v4)
  {
    return *&v15;
  }

  return result;
}

double sub_247BBA0C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(double *__return_ptr, char *, uint64_t, char *, void, uint64_t, uint64_t, uint64_t))
{
  v24 = a6;
  v22 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v21 - v13;
  v15 = *(a4 - 8);
  MEMORY[0x28223BE20](v12);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v17, a1, a4);
  (*(v11 + 16))(v14, a3, AssociatedTypeWitness);
  v18 = sub_247BC36B4();
  v19 = v23;
  v24(&v25, v17, v22, v14, MEMORY[0x277D84D38], a4, v18, a5);
  (*(v11 + 8))(a3, AssociatedTypeWitness);
  (*(v15 + 8))(a1, a4);
  if (!v19)
  {
    return v25;
  }

  return result;
}

double Double.init<A>(bigEndianBytes:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_247BBA360(a1, a2, a3, FixedWidthInteger.init<A>(bigEndianBytes:));
}

{
  return sub_247BBA430(a1, a2, a3, FixedWidthInteger.init<A>(bigEndianBytes:));
}

double Double.init<A>(littleEndianBytes:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_247BBA360(a1, a2, a3, FixedWidthInteger.init<A>(littleEndianBytes:));
}

{
  return sub_247BBA430(a1, a2, a3, FixedWidthInteger.init<A>(littleEndianBytes:));
}

double sub_247BBA360(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(double *__return_ptr, uint64_t, void, uint64_t, uint64_t, uint64_t))
{
  v9 = sub_247BC36B4();
  a4(&v11, a1, MEMORY[0x277D84D38], a2, v9, a3);
  if (!v4)
  {
    return v11;
  }

  return result;
}

double sub_247BBA430(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(double *__return_ptr, char *, void, uint64_t, uint64_t, uint64_t))
{
  v9 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a1, a2);
  v12 = sub_247BC36B4();
  a4(&v15, v11, MEMORY[0x277D84D38], a2, v12, a3);
  (*(v9 + 8))(a1, a2);
  if (!v4)
  {
    return v15;
  }

  return result;
}

uint64_t Numeric<>.cuIsApproximatelyEqual(to:absoluteTolerance:relativeTolerance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v14 = a5;
  v15 = a6;
  KeyPath = swift_getKeyPath();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = AdditiveArithmetic.cuIsApproximatelyEqual<A>(to:absoluteTolerance:relativeTolerance:norm:)(a1, a2, a3, sub_247BC3708, v13, a4, AssociatedTypeWitness, *(v14 + 8), v15);

  return v11 & 1;
}

uint64_t AdditiveArithmetic.cuIsApproximatelyEqual<A>(to:absoluteTolerance:relativeTolerance:norm:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v44 = a4;
  v46 = a3;
  v47 = a2;
  v12 = *(a6 - 8);
  v40 = a5;
  v41 = v12;
  v13 = MEMORY[0x28223BE20](a1);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v13);
  v45 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v38 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v38 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v42 = &v38 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v38 - v27;
  v30 = v29;
  if (sub_247BF6460())
  {
    v31 = 1;
  }

  else
  {
    v38 = a9;
    sub_247BF6EA0();
    v39 = v28;
    v32 = v44;
    v44(v15);
    (*(v41 + 8))(v15, a6);
    v32(v9);
    v33 = v39;
    v32(v30);
    v34 = v42;
    sub_247BF7390();
    v35 = *(v43 + 8);
    v35(v21, a7);
    v35(v24, a7);
    sub_247BF6900();
    v36 = v45;
    sub_247BF7390();
    v35(v24, a7);
    if (sub_247BF6380())
    {
      v31 = sub_247BF6440();
    }

    else
    {
      v31 = 0;
    }

    v35(v36, a7);
    v35(v34, a7);
    v35(v33, a7);
  }

  return v31 & 1;
}

uint64_t NWEndpoint.init(_:defaultPort:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v86 = a3;
  v94 = a4;
  v102 = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DE68, &qword_247BFA9E8);
  MEMORY[0x28223BE20](v6 - 8);
  v85 = &v79 - v7;
  v8 = sub_247BF61A0();
  v92 = *(v8 - 8);
  v93 = v8;
  MEMORY[0x28223BE20](v8);
  v91 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DDD8, &qword_247BFA930);
  MEMORY[0x28223BE20](v10 - 8);
  v90 = &v79 - v11;
  v12 = sub_247BF6220();
  v88 = *(v12 - 8);
  v89 = v12;
  MEMORY[0x28223BE20](v12);
  v87 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DE70, &qword_247BFA9F0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v97 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v95 = &v79 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DDE0, &qword_247BFA938);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v79 - v19;
  v21 = sub_247BF61E0();
  v96 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_247BF6160();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(v101, 0, 28);
  v28 = a1;
  v98 = a2;
  sub_247BF64B0();
  v29 = StringToSockAddr();

  if (!v29)
  {
    v79 = v23;
    v34 = v96;
    v80 = v21;
    v35 = v97;
    v81 = v27;
    v82 = v25;
    v83 = v24;
    v84 = v28;
    v36 = v98;
    v37 = v101[0];
    v38 = *(v101 + 2);
    if (BYTE1(v101[0]) == 30)
    {
      *(&v44 + 1) = WORD5(v101[1]);
      *&v44 = *(&v101[1] + 2);
      *&v100 = *(v101 + 2) >> 48;
      *(&v100 + 1) = *(v101 + 10) >> 48;
      v45 = sub_247BBB688(&v100, v101);
      v47 = v46;
      LOBYTE(v101[0]) = v37;
      BYTE1(v101[0]) = 30;
      WORD1(v101[0]) = v38;
      DWORD1(v101[0]) = v38 >> 16;
      *(v101 + 8) = v100;
      DWORD2(v101[1]) = v44 >> 48;
      if ((v44 >> 48))
      {
        v49 = v35;
        sub_247BF6260();
      }

      else
      {
        v48 = sub_247BF6250();
        v49 = v35;
        (*(*(v48 - 8) + 56))(v35, 1, 1, v48);
      }

      v54 = v84;
      v56 = v89;
      v55 = v90;
      sub_247BC5B0C(v49, v95, &qword_27EE5DE70, &qword_247BFA9F0);
      sub_247BC2A70(v45, v47);
      sub_247BF6230();
      v57 = v88;
      v58 = (*(v88 + 48))(v55, 1, v56);
      v59 = v87;
      if (v58 == 1)
      {
        sub_247B9CAD0(v55, &qword_27EE5DDD8, &qword_247BFA930);
        type metadata accessor for CUError();
        *&v100 = 0;
        *(&v100 + 1) = 0xE000000000000000;
        sub_247BF6CF0();

        *&v100 = 0xD00000000000001BLL;
        *(&v100 + 1) = 0x8000000247C01080;
        MEMORY[0x24C1B4020](v54, v36);

        CUError.__allocating_init(_:_:_:)(-6700, v100, *(&v100 + 1), 0);
        swift_willThrow();
        sub_247BC2AC4(v45, v47);
        return sub_247B9CAD0(v49, &qword_27EE5DE70, &qword_247BFA9F0);
      }

      sub_247B9CAD0(v49, &qword_27EE5DE70, &qword_247BFA9F0);
      sub_247BC2AC4(v45, v47);

      v60 = *(v57 + 32);
      v60(v59, v55, v56);
      v61 = v59;
      v52 = v81;
      v60(v81, v61, v56);
      v53 = MEMORY[0x277CD8AE0];
    }

    else
    {
      if (BYTE1(v101[0]) != 2)
      {
        type metadata accessor for CUError();
        *&v100 = 0;
        *(&v100 + 1) = 0xE000000000000000;
        sub_247BF6CF0();

        *&v100 = 0xD00000000000001ALL;
        *(&v100 + 1) = 0x8000000247C01060;
        MEMORY[0x24C1B4020](v84, v36);

        CUError.__allocating_init(_:_:_:)(-6735, v100, *(&v100 + 1), 0);
        return swift_willThrow();
      }

      LOBYTE(v100) = v101[0];
      BYTE1(v100) = 2;
      *(&v100 + 2) = *(v101 + 2);
      *(&v100 + 10) = *(v101 + 10);
      HIWORD(v100) = HIWORD(v101[0]);
      v39 = sub_247BBB688(&v100 + 4, &v100 + 8);
      v41 = v40;
      v101[0] = v100;
      v42 = sub_247BF6250();
      (*(*(v42 - 8) + 56))(v95, 1, 1, v42);
      sub_247BC2A70(v39, v41);
      sub_247BF61F0();
      v43 = v80;
      if ((*(v34 + 48))(v20, 1, v80) == 1)
      {
        sub_247B9CAD0(v20, &qword_27EE5DDE0, &qword_247BFA938);
        type metadata accessor for CUError();
        *&v100 = 0;
        *(&v100 + 1) = 0xE000000000000000;
        sub_247BF6CF0();

        *&v100 = 0xD00000000000001BLL;
        *(&v100 + 1) = 0x8000000247C010E0;
        MEMORY[0x24C1B4020](v84, v36);

        CUError.__allocating_init(_:_:_:)(-6700, v100, *(&v100 + 1), 0);
        swift_willThrow();
        return sub_247BC2AC4(v39, v41);
      }

      sub_247BC2AC4(v39, v41);

      v50 = *(v34 + 32);
      v51 = v79;
      v50(v79, v20, v43);
      v52 = v81;
      v50(v81, v51, v43);
      v53 = MEMORY[0x277CD8AD8];
    }

    v62 = v82;
    v63 = v83;
    (*(v82 + 104))(v52, *v53, v83);
    Port = SockAddrGetPort();
    v66 = v93;
    v65 = v94;
    v68 = v91;
    v67 = v92;
    if (Port < 1)
    {
      sub_247BF6170();
    }

    else
    {
      v69 = Port;
      if (Port >= 0x10000)
      {
        type metadata accessor for CUError();
        *&v100 = 0;
        *(&v100 + 1) = 0xE000000000000000;
        sub_247BF6CF0();

        *&v100 = 0xD000000000000013;
        *(&v100 + 1) = 0x8000000247C010C0;
        v99 = v69;
        v70 = sub_247BF6FD0();
        MEMORY[0x24C1B4020](v70);

        v72 = *(&v100 + 1);
        v71 = v100;
        v73 = -6705;
LABEL_23:
        CUError.__allocating_init(_:_:_:)(v73, v71, v72, 0);
        swift_willThrow();
        return (*(v62 + 8))(v52, v63);
      }

      v74 = v85;
      sub_247BF6180();
      if ((*(v67 + 48))(v74, 1, v66) == 1)
      {
        sub_247B9CAD0(v74, &qword_27EE5DE68, &qword_247BFA9E8);
        type metadata accessor for CUError();
        *&v100 = 0;
        *(&v100 + 1) = 0xE000000000000000;
        sub_247BF6CF0();

        *&v100 = 0xD000000000000017;
        *(&v100 + 1) = 0x8000000247C010A0;
        v99 = v69;
        v75 = sub_247BF6FD0();
        MEMORY[0x24C1B4020](v75);

        v72 = *(&v100 + 1);
        v71 = v100;
        v73 = -6700;
        goto LABEL_23;
      }

      (*(v67 + 32))(v68, v74, v66);
    }

    v76 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DE78, &unk_247BFA9F8) + 48);
    (*(v62 + 32))(v65, v52, v63);
    (*(v67 + 32))(v65 + v76, v68, v66);
    v77 = *MEMORY[0x277CD8B08];
    v78 = sub_247BF61C0();
    return (*(*(v78 - 8) + 104))(v65, v77, v78);
  }

  type metadata accessor for CUError();
  v30 = sub_247BF6480();
  v32 = v31;
  *&v100 = 0;
  *(&v100 + 1) = 0xE000000000000000;
  sub_247BF6CF0();

  *&v100 = 0x7320504920646142;
  *(&v100 + 1) = 0xEF203A676E697274;
  MEMORY[0x24C1B4020](v28, v98);

  CUError.__allocating_init(domain:code:message:underlying:)(v30, v32, v29, v100, *(&v100 + 1), 0);
  return swift_willThrow();
}

uint64_t sub_247BBB688(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x277D838B0];
  v8[4] = MEMORY[0x277CC9C18];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x277D838B0]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_247BC3058(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_247BC4FD8(v3, v4);
    }

    else
    {
      v6 = sub_247BC4F54(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return v6;
}

uint64_t NWEndpoint.Port.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v19 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DE68, &qword_247BFA9E8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v20[-1] - v8;
  v10 = sub_247BF61A0();
  v22 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v20[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_247BF74C0();
  if (v2)
  {
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v20, v21);
    sub_247BF71F0();
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    sub_247BF6180();
    v13 = v22;
    if ((*(v22 + 48))(v9, 1, v10) != 1)
    {
LABEL_9:
      v18 = *(v13 + 32);
      v18(v12, v9, v10);
      v18(v19, v12, v10);
      return __swift_destroy_boxed_opaque_existential_1Tm(a1);
    }

    sub_247B9CAD0(v9, &qword_27EE5DE68, &qword_247BFA9E8);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_247BF74C0();
  __swift_project_boxed_opaque_existential_1(v20, v21);
  sub_247BF71A0();
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  sub_247BF61B0();
  v13 = v22;
  if ((*(v22 + 48))(v7, 1, v10) != 1)
  {
    v9 = v7;
    goto LABEL_9;
  }

  sub_247B9CAD0(v7, &qword_27EE5DE68, &qword_247BFA9E8);
  v14 = sub_247BF6D40();
  swift_allocError();
  v16 = v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_247BF74B0();
  sub_247BF6D30();
  (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D84168], v14);
  swift_willThrow();
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t NWEndpoint.Port.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_247BF74F0();
  sub_247BF6190();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_247BF7260();
  return __swift_destroy_boxed_opaque_existential_1Tm(v2);
}

uint64_t sub_247BBBBF4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_247BF74F0();
  sub_247BF6190();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_247BF7260();
  return __swift_destroy_boxed_opaque_existential_1Tm(v2);
}

uint64_t Optional.unwrap(_:file:line:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, unsigned int a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>, uint64_t a8@<X2>)
{
  v9 = v8;
  v26 = a5;
  v25 = a4;
  v24 = a3;
  v15 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v17, v9, v18);
  v19 = *(a6 + 16);
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v17, 1, v19) == 1)
  {
    v22 = (*(v15 + 8))(v17, a6);
    MEMORY[0x28223BE20](v22);
    *(&v23 - 4) = v19;
    *(&v23 - 3) = v9;
    *(&v23 - 2) = a1;
    *(&v23 - 1) = a2;
    fatalError(_:file:line:)(sub_247BC3710, (&v23 - 6), a8, v24, v25, v26);
  }

  return (*(v20 + 32))(a7, v17, v19);
}

uint64_t sub_247BBBFF0()
{
  CUPairingSetupCodeTypeToString(*v0);

  return sub_247BF6560();
}

uint64_t sub_247BBC0B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3();
  v4 = sub_247BF64B0();
  fputs((v4 + 32), v3);
}

uint64_t sub_247BBC138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = a5();
  v6 = sub_247BF64B0();
  fputs((v6 + 32), v5);
}

uint64_t String.init(xpcObject:)(void *a1)
{
  if (xpc_string_get_string_ptr(a1))
  {
    v1 = sub_247BF6560();
    swift_unknownObjectRelease();
    return v1;
  }

  else
  {
    type metadata accessor for CUError();
    CUError.__allocating_init(_:_:_:)(-6756, 0xD000000000000026, 0x8000000247C01100, 0);
    swift_willThrow();
    return swift_unknownObjectRelease();
  }
}

uint64_t UInt8.init<A>(bytes:offset:end:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v19[-v12];
  if (sub_247BF6930() < 1)
  {
    sub_247BC353C();
    swift_allocError();
    *v17 = 3;
    swift_willThrow();
    (*(v11 + 8))(a3, AssociatedTypeWitness);
    (*(*(a4 - 8) + 8))(a1, a4);
  }

  else
  {
    v14 = sub_247BF69C0();
    a5 = *v15;
    v14(v19, 0);
    (*(v11 + 32))(v13, a2, AssociatedTypeWitness);
    sub_247BF6960();
    v16 = *(v11 + 8);
    v16(a3, AssociatedTypeWitness);
    (*(*(a4 - 8) + 8))(a1, a4);
    v16(v13, AssociatedTypeWitness);
  }

  return a5;
}

unint64_t static UInt64.randomRecognizableIdentifier.getter()
{
  result = sub_247BC0690(0xF4240uLL);
  if (is_mul_ok(result + 1, 0xF4240uLL))
  {
    return (1000000 * (result + 1)) | 1;
  }

  __break(1u);
  return result;
}

uint64_t static NSUserDefaults.allKeys(suiteName:)(uint64_t a1)
{
  v1 = sub_247BF6470();
  v2 = CFPreferencesCopyKeyList(v1, *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);

  if (v2)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_247BF66B0();
    }
  }

  return MEMORY[0x277D84F90];
}

Swift::Bool_optional __swiftcall NSUserDefaults.BOOLLike(forKey:)(Swift::String forKey)
{
  v2 = sub_247BF6470();
  v3 = [v1 objectForKey_];

  if (!v3)
  {
    return 2;
  }

  sub_247BF6BB0();
  swift_unknownObjectRelease();
  sub_247B9471C(v9, v10);
  sub_247B9B1AC(v10, v9);
  sub_247BC3818(0, &qword_27EE5DE80, 0x277CCABB0);
  if (swift_dynamicCast())
  {
    v4.value = [v8 BOOLValue];

    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    return v4;
  }

  sub_247B9B1AC(v10, v9);
  if (!swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    return 2;
  }

  v9[0] = v8;
  v6 = sub_247BC3000();
  if (StringProtocol.isTrue.getter(MEMORY[0x277D837D0], v6))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v10);

    return 1;
  }

  else
  {
    v9[0] = v8;
    v7 = StringProtocol.isFalse.getter(MEMORY[0x277D837D0], v6);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);

    if (v7)
    {
      return 0;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int_optional __swiftcall NSUserDefaults.intLike(forKey:)(Swift::String forKey)
{
  v2 = sub_247BF6470();
  v3 = [v1 objectForKey_];

  if (!v3)
  {
    goto LABEL_26;
  }

  sub_247BF6BB0();
  swift_unknownObjectRelease();
  sub_247B9471C(v33, v34);
  sub_247B9B1AC(v34, v33);
  sub_247BC3818(0, &qword_27EE5DE80, 0x277CCABB0);
  if (!swift_dynamicCast())
  {
    sub_247B9B1AC(v34, v33);
    v5 = swift_dynamicCast();
    if (v5)
    {
      v7 = HIBYTE(*(&v32 + 1)) & 0xFLL;
      v8 = v32 & 0xFFFFFFFFFFFFLL;
      if ((*(&v32 + 1) & 0x2000000000000000) != 0)
      {
        v9 = HIBYTE(*(&v32 + 1)) & 0xFLL;
      }

      else
      {
        v9 = v32 & 0xFFFFFFFFFFFFLL;
      }

      if (!v9)
      {
        goto LABEL_71;
      }

      if ((*(&v32 + 1) & 0x1000000000000000) != 0)
      {

        v4 = sub_247BC071C(v32, *(&v32 + 1), 10);
        v31 = v30;

        if (v31)
        {
LABEL_71:
          v33[0] = v32;
          v28 = sub_247BC3000();
          if (StringProtocol.isTrue.getter(MEMORY[0x277D837D0], v28))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v34);

            v6 = 0;
            v5 = 1;
          }

          else
          {
            v33[0] = v32;
            v29 = StringProtocol.isFalse.getter(MEMORY[0x277D837D0], v28);
            __swift_destroy_boxed_opaque_existential_1Tm(v34);

            v5 = 0;
            v6 = !v29;
          }

          goto LABEL_27;
        }

LABEL_75:

        goto LABEL_4;
      }

      if ((*(&v32 + 1) & 0x2000000000000000) != 0)
      {
        *&v33[0] = v32;
        *(&v33[0] + 1) = *(&v32 + 1) & 0xFFFFFFFFFFFFFFLL;
        if (v32 == 43)
        {
          if (v7)
          {
            if (--v7)
            {
              v4 = 0;
              v20 = v33 + 1;
              while (1)
              {
                v21 = *v20 - 48;
                if (v21 > 9)
                {
                  break;
                }

                v22 = 10 * v4;
                if ((v4 * 10) >> 64 != (10 * v4) >> 63)
                {
                  break;
                }

                v4 = v22 + v21;
                if (__OFADD__(v22, v21))
                {
                  break;
                }

                ++v20;
                if (!--v7)
                {
                  goto LABEL_70;
                }
              }
            }

            goto LABEL_69;
          }

LABEL_80:
          __break(1u);
          goto LABEL_81;
        }

        if (v32 != 45)
        {
          if (v7)
          {
            v4 = 0;
            v25 = v33;
            while (1)
            {
              v26 = *v25 - 48;
              if (v26 > 9)
              {
                break;
              }

              v27 = 10 * v4;
              if ((v4 * 10) >> 64 != (10 * v4) >> 63)
              {
                break;
              }

              v4 = v27 + v26;
              if (__OFADD__(v27, v26))
              {
                break;
              }

              ++v25;
              if (!--v7)
              {
                goto LABEL_70;
              }
            }
          }

          goto LABEL_69;
        }

        if (v7)
        {
          if (--v7)
          {
            v4 = 0;
            v14 = v33 + 1;
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                break;
              }

              v16 = 10 * v4;
              if ((v4 * 10) >> 64 != (10 * v4) >> 63)
              {
                break;
              }

              v4 = v16 - v15;
              if (__OFSUB__(v16, v15))
              {
                break;
              }

              ++v14;
              if (!--v7)
              {
                goto LABEL_70;
              }
            }
          }

          goto LABEL_69;
        }
      }

      else
      {
        if ((v32 & 0x1000000000000000) != 0)
        {
          v5 = (*(&v32 + 1) & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v5 = sub_247BF6D70();
        }

        v10 = *v5;
        if (v10 == 43)
        {
          if (v8 >= 1)
          {
            v7 = v8 - 1;
            if (v8 != 1)
            {
              v4 = 0;
              if (v5)
              {
                v17 = (v5 + 1);
                while (1)
                {
                  v18 = *v17 - 48;
                  if (v18 > 9)
                  {
                    goto LABEL_69;
                  }

                  v19 = 10 * v4;
                  if ((v4 * 10) >> 64 != (10 * v4) >> 63)
                  {
                    goto LABEL_69;
                  }

                  v4 = v19 + v18;
                  if (__OFADD__(v19, v18))
                  {
                    goto LABEL_69;
                  }

                  ++v17;
                  if (!--v7)
                  {
                    goto LABEL_70;
                  }
                }
              }

              goto LABEL_61;
            }

            goto LABEL_69;
          }

          goto LABEL_79;
        }

        if (v10 != 45)
        {
          if (v8)
          {
            v4 = 0;
            if (v5)
            {
              while (1)
              {
                v23 = *v5 - 48;
                if (v23 > 9)
                {
                  goto LABEL_69;
                }

                v24 = 10 * v4;
                if ((v4 * 10) >> 64 != (10 * v4) >> 63)
                {
                  goto LABEL_69;
                }

                v4 = v24 + v23;
                if (__OFADD__(v24, v23))
                {
                  goto LABEL_69;
                }

                ++v5;
                if (!--v8)
                {
                  goto LABEL_61;
                }
              }
            }

            goto LABEL_61;
          }

LABEL_69:
          v4 = 0;
          LOBYTE(v7) = 1;
LABEL_70:
          if (v7)
          {
            goto LABEL_71;
          }

          goto LABEL_75;
        }

        if (v8 >= 1)
        {
          v7 = v8 - 1;
          if (v8 != 1)
          {
            v4 = 0;
            if (v5)
            {
              v11 = (v5 + 1);
              while (1)
              {
                v12 = *v11 - 48;
                if (v12 > 9)
                {
                  goto LABEL_69;
                }

                v13 = 10 * v4;
                if ((v4 * 10) >> 64 != (10 * v4) >> 63)
                {
                  goto LABEL_69;
                }

                v4 = v13 - v12;
                if (__OFSUB__(v13, v12))
                {
                  goto LABEL_69;
                }

                ++v11;
                if (!--v7)
                {
                  goto LABEL_70;
                }
              }
            }

LABEL_61:
            LOBYTE(v7) = 0;
            goto LABEL_70;
          }

          goto LABEL_69;
        }

        __break(1u);
      }

      __break(1u);
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v34);
LABEL_26:
    v5 = 0;
    v6 = 1;
    goto LABEL_27;
  }

  v4 = [v32 integerValue];

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v34);
  v5 = v4;
  v6 = 0;
LABEL_27:
  LOBYTE(v8) = v6 & 1;
LABEL_81:
  result.is_nil = v8;
  result.value = v5;
  return result;
}

uint64_t UUID.init(node:)(uint64_t a1)
{
  v1 = sub_247BF5F30();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247BF5F20();
  return UUID.init(base:node:)(v3);
}

uint64_t UUID.init(base:node:)(uint64_t a1)
{
  sub_247BF5F10();
  sub_247BF5F00();
  v2 = sub_247BF5F30();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

double UUID.bytes.getter()
{
  v0 = sub_247BF5F10();
  v1 = v0;
  v3 = v2;
  v4 = v0 >> 8;
  v5 = v0 >> 16;
  v6 = v0 >> 24;
  v7 = HIDWORD(v0);
  v8 = v0 >> 40;
  v9 = HIWORD(v0);
  v10 = HIBYTE(v0);
  v11 = v2 >> 8;
  v14 = v2 >> 16;
  v15 = v2 >> 24;
  v16 = HIDWORD(v2);
  v17 = v2 >> 40;
  v18 = HIWORD(v2);
  v19 = HIBYTE(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DE10, &qword_247BFA950);
  v12 = swift_allocObject();
  *&result = 16;
  *(v12 + 16) = xmmword_247BFA860;
  *(v12 + 32) = v1;
  *(v12 + 33) = v4;
  *(v12 + 34) = v5;
  *(v12 + 35) = v6;
  *(v12 + 36) = v7;
  *(v12 + 37) = v8;
  *(v12 + 38) = v9;
  *(v12 + 39) = v10;
  *(v12 + 40) = v3;
  *(v12 + 41) = v11;
  *(v12 + 42) = v14;
  *(v12 + 43) = v15;
  *(v12 + 44) = v16;
  *(v12 + 45) = v17;
  *(v12 + 46) = v18;
  *(v12 + 47) = v19;
  return result;
}

double UUIDTtoBytes(_:)(char a1, char a2, char a3, char a4, char a5, char a6, char a7, char a8, int a9, int a10)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DE10, &qword_247BFA950);
  v18 = swift_allocObject();
  *&result = 16;
  *(v18 + 16) = xmmword_247BFA860;
  *(v18 + 32) = a1;
  *(v18 + 33) = a2;
  *(v18 + 34) = a3;
  *(v18 + 35) = a4;
  *(v18 + 36) = a5;
  *(v18 + 37) = a6;
  *(v18 + 38) = a7;
  *(v18 + 39) = a8;
  *(v18 + 40) = a9;
  *(v18 + 44) = a10;
  return result;
}

uint64_t OS_xpc_object.nestedDescription.getter()
{
  v1 = MEMORY[0x24C1B5BB0](v0);
  sub_247BF6560();
  free(v1);
  sub_247BC3000();
  v2 = sub_247BF6AF0();

  return v2;
}

unint64_t OS_xpc_object.cuData(_:)(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x24C1B5CC0](v2);
  if (v3 == sub_247BF6110() && (v7[0] = 0, v5 = sub_247BF64B0(), data = xpc_dictionary_get_data(v2, (v5 + 32), v7), , data))
  {
    return sub_247BC3110(data, v7[0]);
  }

  else
  {
    return 0;
  }
}

uint64_t OS_xpc_object.cuDecodedObject<A, B>(key:decoder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a7@<X8>)
{
  v10 = OS_xpc_object.cuData(_:)(a1, a2);
  if (v11 >> 60 == 15)
  {
    return (*(*(a3 - 8) + 56))(a7, 1, 1, a3);
  }

  v13 = v11;
  v14 = v10;
  sub_247BF6140();
  result = sub_247BC3860(v14, v13);
  if (!v7)
  {
    return (*(*(a3 - 8) + 56))(a7, 0, 1, a3);
  }

  return result;
}

void *OS_xpc_object.cuSetEncodedObject<A>(_:key:encoder:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_247BF6150();
  if (!v8)
  {
    v10 = Data.xpcObjectRepresentation.getter(v12, v13);
    sub_247BC2AC4(v12, v13);
    v11 = sub_247BF64B0();
    xpc_dictionary_set_value(v7, (v11 + 32), v10);
    swift_unknownObjectRelease();
  }

  return result;
}

Swift::Double __swiftcall OS_xpc_object.cuDouble(_:)(Swift::String a1)
{
  v2 = MEMORY[0x24C1B5CC0]();
  if (v2 != sub_247BF6110())
  {
    return NAN;
  }

  v4 = sub_247BF64B0();
  v5 = xpc_dictionary_get_double(v1, (v4 + 32));

  return v5;
}

Swift::String_optional __swiftcall OS_xpc_object.cuString(_:)(Swift::String a1)
{
  v2 = MEMORY[0x24C1B5CC0]();
  if (v2 == sub_247BF6110() && (v5 = sub_247BF64B0(), string = xpc_dictionary_get_string(v1, (v5 + 32)), , string))
  {
    v3 = sub_247BF6560();
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

Swift::OpaquePointer_optional __swiftcall OS_xpc_object.cuStringArray(_:skipBadValues:)(Swift::String _, Swift::Bool skipBadValues)
{
  v4 = sub_247BF64B0();
  v5 = xpc_dictionary_get_array(v2, (v4 + 32));

  if (v5)
  {
    v14 = MEMORY[0x277D84F90];
    v7 = swift_allocObject();
    *(v7 + 16) = skipBadValues;
    *(v7 + 24) = &v14;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_247BC3874;
    *(v8 + 24) = v7;
    aBlock[4] = sub_247BC3940;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_247BBD744;
    aBlock[3] = &block_descriptor_54;
    v9 = _Block_copy(aBlock);

    v10 = xpc_array_apply(v5, v9);
    swift_unknownObjectRelease();
    _Block_release(v9);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_7;
    }

    v5 = v14;

    if (!v10)
    {

      v5 = 0;
    }
  }

  v12 = v5;
LABEL_7:
  result.value._rawValue = v12;
  result.is_nil = v6;
  return result;
}

uint64_t sub_247BBD744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  swift_unknownObjectRetain();
  v6 = v5(a2, a3);
  swift_unknownObjectRelease();
  return v6 & 1;
}

Swift::UInt64 __swiftcall OS_xpc_object.cuUInt64(_:)(Swift::String a1)
{
  v2 = MEMORY[0x24C1B5CC0]();
  if (v2 != sub_247BF6110())
  {
    return 0;
  }

  v4 = sub_247BF64B0();
  v5 = xpc_dictionary_get_value(v1, (v4 + 32));

  if (!v5)
  {
    return 0;
  }

  v6 = MEMORY[0x24C1B5CC0](v5);
  if (sub_247BF60E0() == v6)
  {
    value = xpc_uint64_get_value(v5);
LABEL_9:
    v7 = value;
    goto LABEL_10;
  }

  if (sub_247BF60D0() == v6)
  {
    value = xpc_int64_get_value(v5);
    goto LABEL_9;
  }

  v7 = 0;
LABEL_10:
  swift_unknownObjectRelease();
  return v7;
}

uint64_t OS_xpc_object.cuUUID(_:)@<X0>(uint64_t a3@<X8>)
{
  sub_247BF64B0();
  v4 = CUXPCObjectGetUUID();

  if (v4)
  {
    sub_247BF5EF0();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_247BF5F30();
  v7 = *(*(v6 - 8) + 56);

  return v7(a3, v5, 1, v6);
}

uint64_t OS_xpc_object.cuSetUUID(_:key:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_247BF5EE0();
  sub_247BF64B0();
  CUXPCObjectSetUUID();
}

uint64_t sub_247BBD99C()
{

  return swift_deallocClassInstance();
}

id sub_247BBD9D4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  v3 = sub_247BF6470();

  return v3;
}

uint64_t sub_247BBDA48(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_247BC5BDC;

  return v6(a1);
}

uint64_t sub_247BBDB40@<X0>(uint64_t result@<X0>, uint64_t *a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  if (result)
  {
    v10 = *a5;
    v9 = a5[1];
    v11 = swift_allocObject();
    v11[2] = a6;
    v11[3] = v10;
    v11[4] = v9;

    result = swift_task_create();
    *a7 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_247BBDC2C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_247BBDD24;

  return v6(a1);
}

uint64_t sub_247BBDD24()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_247BBDE1C@<X0>(uint64_t result@<X0>, uint64_t *a7@<X8>)
{
  if (result)
  {

    result = swift_task_create();
    *a7 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_247BBDED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a1;
  v12[6] = a2;

  v14 = a3;
  sub_247BC57F0(&v14);
}

void *sub_247BBDF88(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DF50, &qword_247BFBB30);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DF48, &qword_247BFBB28) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DF48, &qword_247BFBB28) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_247BBE178(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DF28, &qword_247BFD270);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_247BBE27C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DF18, &qword_247BFBAF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_247BBE398(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DE10, &qword_247BFA950);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_247BBE48C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DDA8, &qword_247BFA8F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_247BBE598(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DF30, &qword_247BFBB10);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

unint64_t sub_247BBE628(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_247BBE6F4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_247B9B1AC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_247BBE6F4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_247BBE800(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_247BF6D70();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_247BBE800(uint64_t a1, unint64_t a2)
{
  v3 = sub_247BBE84C(a1, a2);
  sub_247BBE97C(byte_2859CD230);
  return v3;
}

void *sub_247BBE84C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_247BBEA68(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_247BF6D70();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_247BF6570();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_247BBEA68(v10, 0);
        result = sub_247BF6CB0();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

char *sub_247BBE97C(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_247BBE398(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v7 + 32], v6 + 32, v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_247BBEA68(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DE10, &qword_247BFA950);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_247BBEADC(uint64_t a1)
{
  v2 = sub_247BF6C50();

  return sub_247BBEB20(a1, v2);
}

unint64_t sub_247BBEB20(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_247BC5AB0(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x24C1B4730](v9, a1);
      sub_247BC5A5C(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

double sub_247BBEBE8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_247BBEADC(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_247BBF590();
      v9 = v11;
    }

    sub_247BC5A5C(*(v9 + 48) + 40 * v7);
    sub_247B9471C((*(v9 + 56) + 32 * v7), a2);
    sub_247BBF224(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_247BBEC8C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DF40, &qword_247BFBB20);
  result = sub_247BF6ED0();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_247B9471C((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_247BC5AB0(v23, &v36);
        sub_247B9B1AC(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_247BF6C50();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_247B9471C(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_247BBEF44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DF10, &qword_247BFBAF0);
  v38 = v4;
  result = sub_247BF6ED0();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v39 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v40 = *v22;
      v24 = *(v5 + 56) + 24 * v21;
      v25 = *v24;
      v26 = *(v24 + 8);
      v27 = *(v24 + 16);
      if ((v38 & 1) == 0)
      {

        sub_247BC2D0C(v25, v26, v27);
      }

      sub_247BF7460();
      sub_247BF6500();
      result = sub_247BF74A0();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v40;
      v16[1] = v23;
      v17 = *(v7 + 56) + 24 * v15;
      *v17 = v25;
      *(v17 + 8) = v26;
      *(v17 + 16) = v27;
      ++*(v7 + 16);
      v5 = v37;
      v12 = v39;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_247BBF224(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_247BF6BE0() + 1) & ~v5;
    do
    {
      sub_247BC5AB0(*(a2 + 48) + 40 * v6, v25);
      v10 = sub_247BF6C50();
      result = sub_247BC5A5C(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_247BBF3C8(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_247BBEADC(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_247BBF590();
      goto LABEL_7;
    }

    sub_247BBEC8C(v13, a3 & 1);
    v19 = sub_247BBEADC(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_247BC5AB0(a2, v21);
      return sub_247BBF514(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_247BF73C0();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);

  return sub_247B9471C(a1, v17);
}

_OWORD *sub_247BBF514(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_247B9471C(a3, (a4[7] + 32 * a1));
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

void *sub_247BBF590()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DF40, &qword_247BFBB20);
  v2 = *v0;
  v3 = sub_247BF6EC0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_247BC5AB0(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_247B9B1AC(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_247B9471C(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
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

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_247BBF734()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DF10, &qword_247BFBAF0);
  v2 = *v0;
  v3 = sub_247BF6EC0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = (*(v4 + 48) + v18);
        v26 = *(v22 + 16);
        *v25 = v21;
        v25[1] = v20;
        v27 = *(v4 + 56) + v17;
        *v27 = v23;
        *(v27 + 8) = v24;
        *(v27 + 16) = v26;

        result = sub_247BC2D0C(v23, v24, v26);
      }

      while (v12);
    }

    v15 = v8;
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

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_247BBF8CC(uint64_t a1, unint64_t a2)
{
  sub_247BC2A70(a1, a2);
  sub_247BC12AC(a1, a2);
  v4 = sub_247BF64E0();

  return v4;
}

uint64_t sub_247BBF938@<X0>(uint64_t *a3@<X8>)
{
  result = sub_247BF64E0();
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_247BBF974(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_247BC15D4(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_247BBF9E0(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_247BBF9E0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_247BF6FC0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DF20, &unk_247BFBB00);
        v5 = sub_247BF66E0();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_247BBFBD8(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_247BBFAE8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_247BBFAE8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 40 * a3 - 40;
    v8 = result - a3;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      v11 = v10 + 40;
      result = *(v10 + 40);
      v12 = result == *v10 && *(v10 + 48) == *(v10 + 8);
      if (v12 || (result = sub_247BF7180(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 40;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v14 = *(v10 + 40);
      v13 = *(v10 + 48);
      v15 = *(v10 + 72);
      v16 = *(v10 + 56);
      v17 = *(v10 + 16);
      v18 = *(v10 + 32);
      *v11 = *v10;
      *(v10 + 56) = v17;
      *v10 = v14;
      *(v10 + 8) = v13;
      *(v10 + 16) = v16;
      *(v10 + 32) = v15;
      v10 -= 40;
      *(v11 + 32) = v18;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_247BBFBD8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v107 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_106:
    v107 = *v107;
    if (!v107)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_247BC04D0(v9);
      v9 = result;
    }

    v97 = v9 + 16;
    v98 = *(v9 + 2);
    if (v98 >= 2)
    {
      while (1)
      {
        v99 = *v6;
        if (!*v6)
        {
          goto LABEL_142;
        }

        v100 = &v9[16 * v98];
        v6 = *v100;
        v101 = &v97[2 * v98];
        v102 = v101[1];
        sub_247BC01F4((v99 + 40 * *v100), (v99 + 40 * *v101), v99 + 40 * v102, v107);
        if (v5)
        {
        }

        if (v102 < v6)
        {
          goto LABEL_130;
        }

        if (v98 - 2 >= *v97)
        {
          goto LABEL_131;
        }

        *v100 = v6;
        *(v100 + 1) = v102;
        v103 = *v97 - v98;
        if (*v97 < v98)
        {
          goto LABEL_132;
        }

        v98 = *v97 - 1;
        result = memmove(v101, v101 + 2, 16 * v103);
        *v97 = v98;
        v6 = a3;
        if (v98 <= 1)
        {
        }
      }
    }
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v11 = *v6;
      v12 = (*v6 + 40 * v8);
      result = *v12;
      v13 = v12[1];
      v14 = (*v6 + 40 * v10);
      if (result == *v14 && v13 == v14[1])
      {
        v16 = 0;
      }

      else
      {
        result = sub_247BF7180();
        v16 = result;
      }

      v8 = v10 + 2;
      if (v10 + 2 < v7)
      {
        v17 = (v11 + 40 * v10 + 48);
        v18 = v17;
        do
        {
          result = v17[4];
          v20 = v18[5];
          v18 += 5;
          v19 = v20;
          if (result == *(v17 - 1) && v19 == *v17)
          {
            if (v16)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_247BF7180();
            if ((v16 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v8;
          v17 = v18;
        }

        while (v7 != v8);
        v8 = v7;
      }

LABEL_23:
      if (v16)
      {
LABEL_24:
        if (v8 < v10)
        {
          goto LABEL_135;
        }

        if (v10 < v8)
        {
          v22 = 40 * v8 - 8;
          v23 = 40 * v10 + 32;
          v24 = v8;
          v25 = v10;
          do
          {
            if (v25 != --v24)
            {
              v34 = *v6;
              if (!*v6)
              {
                goto LABEL_141;
              }

              v26 = (v34 + v23);
              v27 = (v34 + v22);
              v28 = *(v26 - 4);
              v29 = *(v26 - 3);
              v30 = *v26;
              v31 = *(v26 - 1);
              v32 = *v27;
              v33 = *(v27 - 1);
              *(v26 - 2) = *(v27 - 2);
              *(v26 - 1) = v33;
              *v26 = v32;
              *(v27 - 4) = v28;
              *(v27 - 3) = v29;
              *(v27 - 1) = v31;
              *v27 = v30;
            }

            ++v25;
            v22 -= 40;
            v23 += 40;
          }

          while (v25 < v24);
        }
      }
    }

    v35 = v6[1];
    if (v8 < v35)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_134;
      }

      if (v8 - v10 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v8 < v10)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_247BBE178(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v51 = *(v9 + 2);
    v50 = *(v9 + 3);
    v52 = v51 + 1;
    if (v51 >= v50 >> 1)
    {
      result = sub_247BBE178((v50 > 1), v51 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v52;
    v53 = &v9[16 * v51];
    *(v53 + 4) = v10;
    *(v53 + 5) = v8;
    v54 = *v107;
    if (!*v107)
    {
      goto LABEL_143;
    }

    if (v51)
    {
      while (1)
      {
        v55 = v52 - 1;
        if (v52 >= 4)
        {
          break;
        }

        if (v52 == 3)
        {
          v56 = *(v9 + 4);
          v57 = *(v9 + 5);
          v66 = __OFSUB__(v57, v56);
          v58 = v57 - v56;
          v59 = v66;
LABEL_75:
          if (v59)
          {
            goto LABEL_121;
          }

          v72 = &v9[16 * v52];
          v74 = *v72;
          v73 = *(v72 + 1);
          v75 = __OFSUB__(v73, v74);
          v76 = v73 - v74;
          v77 = v75;
          if (v75)
          {
            goto LABEL_124;
          }

          v78 = &v9[16 * v55 + 32];
          v80 = *v78;
          v79 = *(v78 + 1);
          v66 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v66)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v76, v81))
          {
            goto LABEL_128;
          }

          if (v76 + v81 >= v58)
          {
            if (v58 < v81)
            {
              v55 = v52 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v82 = &v9[16 * v52];
        v84 = *v82;
        v83 = *(v82 + 1);
        v66 = __OFSUB__(v83, v84);
        v76 = v83 - v84;
        v77 = v66;
LABEL_89:
        if (v77)
        {
          goto LABEL_123;
        }

        v85 = &v9[16 * v55];
        v87 = *(v85 + 4);
        v86 = *(v85 + 5);
        v66 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v66)
        {
          goto LABEL_126;
        }

        if (v88 < v76)
        {
          goto LABEL_3;
        }

LABEL_96:
        v93 = v55 - 1;
        if (v55 - 1 >= v52)
        {
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
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*v6)
        {
          goto LABEL_140;
        }

        v94 = *&v9[16 * v93 + 32];
        v95 = *&v9[16 * v55 + 40];
        sub_247BC01F4((*v6 + 40 * v94), (*v6 + 40 * *&v9[16 * v55 + 32]), *v6 + 40 * v95, v54);
        if (v5)
        {
        }

        if (v95 < v94)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_247BC04D0(v9);
        }

        if (v93 >= *(v9 + 2))
        {
          goto LABEL_118;
        }

        v96 = &v9[16 * v93];
        *(v96 + 4) = v94;
        *(v96 + 5) = v95;
        result = sub_247BC0444(v55);
        v52 = *(v9 + 2);
        if (v52 <= 1)
        {
          goto LABEL_3;
        }
      }

      v60 = &v9[16 * v52 + 32];
      v61 = *(v60 - 64);
      v62 = *(v60 - 56);
      v66 = __OFSUB__(v62, v61);
      v63 = v62 - v61;
      if (v66)
      {
        goto LABEL_119;
      }

      v65 = *(v60 - 48);
      v64 = *(v60 - 40);
      v66 = __OFSUB__(v64, v65);
      v58 = v64 - v65;
      v59 = v66;
      if (v66)
      {
        goto LABEL_120;
      }

      v67 = &v9[16 * v52];
      v69 = *v67;
      v68 = *(v67 + 1);
      v66 = __OFSUB__(v68, v69);
      v70 = v68 - v69;
      if (v66)
      {
        goto LABEL_122;
      }

      v66 = __OFADD__(v58, v70);
      v71 = v58 + v70;
      if (v66)
      {
        goto LABEL_125;
      }

      if (v71 >= v63)
      {
        v89 = &v9[16 * v55 + 32];
        v91 = *v89;
        v90 = *(v89 + 1);
        v66 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v66)
        {
          goto LABEL_129;
        }

        if (v58 < v92)
        {
          v55 = v52 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v10, a4))
  {
    goto LABEL_136;
  }

  v105 = v5;
  if (v10 + a4 >= v35)
  {
    v5 = v6[1];
  }

  else
  {
    v5 = v10 + a4;
  }

  if (v5 < v10)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v8 == v5)
  {
LABEL_54:
    v5 = v105;
    goto LABEL_55;
  }

  v36 = *v6;
  v37 = *v6 + 40 * v8 - 40;
  v104 = v10;
  v38 = v10 - v8;
LABEL_43:
  v39 = v38;
  v40 = v37;
  while (1)
  {
    v41 = v40 + 40;
    v42 = *(v40 + 40) == *v40 && *(v40 + 48) == *(v40 + 8);
    if (v42 || (result = sub_247BF7180(), (result & 1) == 0))
    {
LABEL_42:
      ++v8;
      v37 += 40;
      --v38;
      if (v8 != v5)
      {
        goto LABEL_43;
      }

      v8 = v5;
      v6 = a3;
      v10 = v104;
      goto LABEL_54;
    }

    if (!v36)
    {
      break;
    }

    v44 = *(v40 + 40);
    v43 = *(v40 + 48);
    v45 = *(v40 + 72);
    v46 = *(v40 + 56);
    v47 = *(v40 + 16);
    v48 = *(v40 + 32);
    *v41 = *v40;
    *(v40 + 56) = v47;
    *v40 = v44;
    *(v40 + 8) = v43;
    *(v40 + 16) = v46;
    *(v40 + 32) = v45;
    v40 -= 40;
    *(v41 + 32) = v48;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t sub_247BC01F4(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 40;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 40;
  if (v9 < v11)
  {
    v12 = 40 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 < 40)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v17 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v17 && (sub_247BF7180() & 1) != 0)
      {
        break;
      }

      v14 = v4;
      v17 = v7 == v4;
      v4 += 40;
      if (!v17)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 40;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v17 = v7 == v6;
    v6 += 40;
    if (v17)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v14;
    v16 = *(v14 + 1);
    *(v7 + 4) = *(v14 + 4);
    *v7 = v15;
    *(v7 + 1) = v16;
    goto LABEL_9;
  }

  v18 = 40 * v11;
  if (a4 != __src || &__src[v18] <= a4)
  {
    memmove(a4, __src, 40 * v11);
  }

  v13 = &v4[v18];
  if (v10 >= 40 && v6 > v7)
  {
LABEL_24:
    v19 = v6 - 40;
    v5 -= 40;
    v20 = v13;
    do
    {
      v21 = *(v20 - 40);
      v22 = *(v20 - 32);
      v20 -= 40;
      v23 = v21 == *(v6 - 5) && v22 == *(v6 - 4);
      if (!v23 && (sub_247BF7180() & 1) != 0)
      {
        if ((v5 + 40) != v6)
        {
          v26 = *v19;
          v27 = *(v6 - 24);
          *(v5 + 32) = *(v6 - 1);
          *v5 = v26;
          *(v5 + 16) = v27;
        }

        if (v13 <= v4 || (v6 -= 40, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_39;
        }

        goto LABEL_24;
      }

      if ((v5 + 40) != v13)
      {
        v24 = *v20;
        v25 = *(v20 + 16);
        *(v5 + 32) = *(v20 + 32);
        *v5 = v24;
        *(v5 + 16) = v25;
      }

      v5 -= 40;
      v13 = v20;
    }

    while (v20 > v4);
    v13 = v20;
  }

LABEL_39:
  v28 = 40 * ((v13 - v4) / 40);
  if (v6 != v4 || v6 >= &v4[v28])
  {
    memmove(v6, v4, v28);
  }

  return 1;
}

uint64_t sub_247BC0444(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_247BC04D0(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *sub_247BC04E4(void *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1 << *(a4 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v9 = 0;
    a3 = 0;
LABEL_24:
    *result = a4;
    result[1] = v4;
    result[2] = ~v5;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    v26 = result;
    v27 = a3;
    result = 0;
    v9 = 0;
    v25 = -1 << *(a4 + 32);
    v10 = (63 - v5) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_14:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v15 = v14 | (v9 << 6);
      v16 = a4;
      v17 = (*(a4 + 48) + 16 * v15);
      v18 = v17[1];
      v19 = *(a4 + 56) + 24 * v15;
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      *v8 = *v17;
      *(v8 + 8) = v18;
      *(v8 + 16) = v20;
      *(v8 + 24) = v21;
      *(v8 + 32) = v22;
      if (v11 == v27)
      {

        sub_247BC2D0C(v20, v21, v22);
        a4 = v16;
        v5 = v25;
        result = v26;
        a3 = v27;
        goto LABEL_24;
      }

      v8 += 40;

      sub_247BC2D0C(v20, v21, v22);
      result = v11;
      v23 = __OFADD__(v11++, 1);
      a4 = v16;
      if (v23)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_14;
      }
    }

    v7 = 0;
    if (v10 <= v9 + 1)
    {
      v24 = v9 + 1;
    }

    else
    {
      v24 = v10;
    }

    v9 = v24 - 1;
    a3 = result;
    v5 = v25;
    result = v26;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_247BC0690(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x24C1B5920](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x24C1B5920](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unsigned __int8 *sub_247BC071C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_247BF65F0();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_247BC0CA8(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_247BF6D70();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}