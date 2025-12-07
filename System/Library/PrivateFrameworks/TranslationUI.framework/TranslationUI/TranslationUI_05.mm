uint64_t Locale.ltIdentifier.getter(uint64_t a1)
{
  sub_26F49D988();
  sub_26F3BDC0C();
  v1 = sub_26F49FFF8();

  return v1;
}

uint64_t Locale.sqDisplayName(context:in:)(unint64_t a1)
{
  v2 = sub_26F49D9F8();
  if (a1 >= 6)
  {
    result = sub_26F4A0488();
    __break(1u);
  }

  else
  {
    v3 = v2;
    v4 = qword_26F4A7748[a1];
    v5 = sub_26F49D9F8();
    v6 = [v3 lt:v4 displayNameForContext:v5 inTargetLocale:?];

    if (!v6)
    {
      return 0;
    }

    v7 = sub_26F49F8C8();

    return v7;
  }

  return result;
}

uint64_t Locale.sqDisplaySubname(context:in:)(unint64_t a1)
{
  v2 = sub_26F49D9F8();
  if (a1 >= 6)
  {
    result = sub_26F4A0488();
    __break(1u);
  }

  else
  {
    v3 = v2;
    v4 = qword_26F4A7748[a1];
    v5 = sub_26F49D9F8();
    v6 = [v3 lt:v4 displaySubnameForContext:v5 inTargetLocale:?];

    if (!v6)
    {
      return 0;
    }

    v7 = sub_26F49F8C8();

    return v7;
  }

  return result;
}

Swift::String_optional __swiftcall Locale.localizedString(forRegion:context:short:)(Swift::String forRegion, NSFormattingContext context, Swift::Bool a3)
{
  v5 = sub_26F49D9F8();
  v6 = sub_26F49F898();
  v7 = [v5 localizedStringForRegion:v6 context:context short:a3];

  if (v7)
  {
    v8 = sub_26F49F8C8();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = v8;
  v12 = v10;
  result.value._object = v12;
  result.value._countAndFlagsBits = v11;
  return result;
}

uint64_t Locale.languageIdentifier.getter(uint64_t a1)
{
  v1 = sub_26F49D9F8();
  v2 = [v1 languageIdentifier];

  v3 = sub_26F49F8C8();
  return v3;
}

uint64_t sub_26F4249C8()
{
  v1 = *v0;
  sub_26F4A0528();
  MEMORY[0x274391330](v1);
  return sub_26F4A0568();
}

uint64_t sub_26F424A3C(uint64_t a1)
{
  v2 = *v1;
  sub_26F4A0528();
  MEMORY[0x274391330](v2);
  return sub_26F4A0568();
}

unint64_t sub_26F424A80@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_26F4252E4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

Swift::String __swiftcall Locale.ltLocalizedAppString(_:table:bundle:)(Swift::String _, Swift::String table, NSBundle bundle)
{
  v4 = [(objc_class *)bundle.super.isa localizations];
  if (!v4)
  {
    sub_26F49FAF8();
    v4 = sub_26F49FAD8();
  }

  v5 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0160, &unk_26F4A7660);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26F4A3150;
  *(v6 + 32) = sub_26F49D988();
  *(v6 + 40) = v7;
  v8 = sub_26F49FAD8();

  v9 = [v5 preferredLocalizationsFromArray:v4 forPreferences:v8];

  v10 = sub_26F49FAF8();
  if (*(v10 + 16))
  {
    v11 = sub_26F49F898();
    v12 = sub_26F49F898();
    v13 = sub_26F49F898();
    if (*(v10 + 16))
    {

      v14 = sub_26F49F898();
    }

    else
    {

      v14 = 0;
    }

    v15 = [(objc_class *)bundle.super.isa localizedStringForKey:v11 value:v12 table:v13 localization:v14];
  }

  else
  {

    v12 = sub_26F49F898();
    v13 = sub_26F49F898();
    v14 = sub_26F49F898();
    v15 = [(objc_class *)bundle.super.isa localizedStringForKey:v12 value:v13 table:v14];
  }

  v16 = sub_26F49F8C8();
  v18 = v17;

  v19 = v16;
  v20 = v18;
  result._object = v20;
  result._countAndFlagsBits = v19;
  return result;
}

uint64_t Locale.isChinese.getter(uint64_t a1)
{
  v1 = sub_26F49D9F8();
  v2 = [v1 languageIdentifier];

  sub_26F49F8C8();
  LOBYTE(v1) = sub_26F49FA48();

  return v1 & 1;
}

Swift::Bool __swiftcall Locale.supportsVerticalText()()
{
  v0 = sub_26F49DA98();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF918, &qword_26F4A5810);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  sub_26F49DAA8();
  sub_26F49DA58();
  (*(v1 + 8))(v3, v0);
  v7 = sub_26F49D9B8();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_26F3EB7AC(v6);
    v9 = 0;
  }

  else
  {
    v10 = sub_26F49D998();
    v12 = v11;
    (*(v8 + 8))(v6, v7);
    v13 = v10 == 24938 && v12 == 0xE200000000000000;
    if (v13 || (sub_26F4A0458() & 1) != 0 || (v10 == 26746 ? (v14 = v12 == 0xE200000000000000) : (v14 = 0), v14))
    {

      v9 = 1;
    }

    else
    {
      v9 = sub_26F4A0458();
    }
  }

  return v9 & 1;
}

uint64_t NSLocale.sqDisplayName(context:in:)(unint64_t a1)
{
  if (a1 >= 6)
  {
    result = sub_26F4A0488();
    __break(1u);
  }

  else
  {
    v2 = v1;
    v3 = qword_26F4A7748[a1];
    v4 = sub_26F49D9F8();
    v5 = [v2 lt:v3 displayNameForContext:v4 inTargetLocale:?];

    if (!v5)
    {
      return 0;
    }

    v6 = sub_26F49F8C8();

    return v6;
  }

  return result;
}

uint64_t NSLocale.sqDisplaySubname(context:in:)(unint64_t a1)
{
  if (a1 >= 6)
  {
    result = sub_26F4A0488();
    __break(1u);
  }

  else
  {
    v2 = v1;
    v3 = qword_26F4A7748[a1];
    v4 = sub_26F49D9F8();
    v5 = [v2 lt:v3 displaySubnameForContext:v4 inTargetLocale:?];

    if (!v5)
    {
      return 0;
    }

    v6 = sub_26F49F8C8();

    return v6;
  }

  return result;
}

id sub_26F4251A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, char *))
{
  v8 = sub_26F49DAB8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F49DA18();
  v12 = a1;
  a5(a3, v11);
  v14 = v13;

  (*(v9 + 8))(v11, v8);
  if (v14)
  {
    v15 = sub_26F49F898();
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

unint64_t sub_26F4252E4(unint64_t result)
{
  if (result > 5)
  {
    return 0;
  }

  return result;
}

Swift::Bool __swiftcall Locale.isRTL()()
{
  v0 = sub_26F49DA98();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F49DAA8();
  v4 = sub_26F49DA78();
  (*(v1 + 8))(v3, v0);
  return v4 == 2;
}

Swift::Bool __swiftcall Locale.isTraditionalChinese()()
{
  v0 = sub_26F49DA98();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E05A8, &qword_26F4A7780);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v25 - v5;
  if (sub_26F49D988() == 0x57545F687ALL && v7 == 0xE500000000000000)
  {
    goto LABEL_3;
  }

  v8 = sub_26F4A0458();

  if (v8)
  {
    goto LABEL_5;
  }

  sub_26F49DAA8();
  sub_26F49DA88();
  (*(v1 + 8))(v3, v0);
  v11 = sub_26F49DA38();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v6, 1, v11) == 1)
  {
    sub_26F425724(v6);
    goto LABEL_9;
  }

  v18 = sub_26F49D998();
  v20 = v19;
  (*(v12 + 8))(v6, v11);
  v26 = v18;
  v27 = v20;
  sub_26F3BDC0C();
  v21 = sub_26F49FFD8();
  v23 = v22;

  if (v21 != 1414414664 || v23 != 0xE400000000000000)
  {
    v24 = sub_26F4A0458();

    if (v24)
    {
      goto LABEL_5;
    }

LABEL_9:
    v13 = sub_26F49D9F8();
    v14 = [v13 languageIdentifier];

    v15 = sub_26F49F8C8();
    v17 = v16;

    v26 = v15;
    v27 = v17;
    v25[0] = 0x2D746E61482DLL;
    v25[1] = 0xE600000000000000;
    sub_26F3BDC0C();
    v9 = sub_26F4A0028();

    return v9 & 1;
  }

LABEL_3:

LABEL_5:
  v9 = 1;
  return v9 & 1;
}

uint64_t sub_26F425724(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E05A8, &qword_26F4A7780);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Bool __swiftcall Locale.isSimplifiedChinese()()
{
  v0 = sub_26F49DA98();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E05A8, &qword_26F4A7780);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v25 - v5;
  if (sub_26F49D988() == 0x4E435F687ALL && v7 == 0xE500000000000000)
  {
    goto LABEL_3;
  }

  v8 = sub_26F4A0458();

  if (v8)
  {
    goto LABEL_5;
  }

  sub_26F49DAA8();
  sub_26F49DA88();
  (*(v1 + 8))(v3, v0);
  v11 = sub_26F49DA38();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v6, 1, v11) == 1)
  {
    sub_26F425724(v6);
    goto LABEL_9;
  }

  v18 = sub_26F49D998();
  v20 = v19;
  (*(v12 + 8))(v6, v11);
  v26 = v18;
  v27 = v20;
  sub_26F3BDC0C();
  v21 = sub_26F49FFD8();
  v23 = v22;

  if (v21 != 1397637448 || v23 != 0xE400000000000000)
  {
    v24 = sub_26F4A0458();

    if (v24)
    {
      goto LABEL_5;
    }

LABEL_9:
    v13 = sub_26F49D9F8();
    v14 = [v13 languageIdentifier];

    v15 = sub_26F49F8C8();
    v17 = v16;

    v26 = v15;
    v27 = v17;
    v25[0] = 0x2D736E61482DLL;
    v25[1] = 0xE600000000000000;
    sub_26F3BDC0C();
    v9 = sub_26F4A0028();

    return v9 & 1;
  }

LABEL_3:

LABEL_5:
  v9 = 1;
  return v9 & 1;
}

uint64_t sub_26F425AB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_26F427178();
  v3 = sub_26F49FAF8();

  v2(v3);
}

uint64_t static LocaleService.lastTargetLocale.getter(uint64_t a1)
{
  _sSo14NSUserDefaultsC13TranslationUIE016translationGroupB0ABvgZ_0();
  v2 = v1;
  v3 = sub_26F49F898();
  v4 = [v2 stringForKey_];

  if (v4)
  {
    sub_26F49F8C8();
  }

  return sub_26F49D978();
}

void static LocaleService.localePairs(forSpeech:completion:)(char a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 5;
  }

  v6 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v9[4] = sub_26F426F70;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_26F425AB4;
  v9[3] = &block_descriptor_6;
  v8 = _Block_copy(v9);

  [v6 availableLocalePairsForTask:v5 useDedicatedMachPort:1 completion:v8];
  _Block_release(v8);
}

void *sub_26F425D00(unint64_t a1, void (*a2)(uint64_t, void, __n128), uint64_t a3)
{
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0150, &qword_26F4A6680);
  v6 = *(v22 - 8);
  v7 = MEMORY[0x28223BE20](v22);
  v9 = &v20 - v8;
  if (a1 >> 62)
  {
    v10 = sub_26F4A00A8();
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
LABEL_13:
    a2(v11, 0, v7);
  }

  v23 = MEMORY[0x277D84F90];
  result = sub_26F4033E4(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v20 = a3;
    v21 = a2;
    v13 = 0;
    v11 = v23;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x274390F80](v13, a1);
      }

      else
      {
        v14 = *(a1 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = [v14 sourceLocale];
      sub_26F49DA18();

      v17 = [v15 targetLocale];
      sub_26F49DA18();

      v23 = v11;
      v19 = *(v11 + 16);
      v18 = *(v11 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_26F4033E4((v18 > 1), v19 + 1, 1);
        v11 = v23;
      }

      ++v13;
      *(v11 + 16) = v19 + 1;
      sub_26F427108(v9, v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v19);
    }

    while (v10 != v13);
    a2 = v21;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t static LocaleService.sanitizeLocale(_:supportedLocales:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  static Locale.ensureSupported(locale:availableLocales:)(a1, &v18 - v9);
  sub_26F3B8DD4(v10, v7, &qword_2806DEFD8, &qword_26F4A3670);
  v11 = sub_26F49DAB8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v7, 1, v11) == 1)
  {
    v14 = objc_opt_self();
    v15 = sub_26F49D9F8();
    v16 = [v14 lt:v15 fallbackForLocale:?];

    sub_26F49DA18();
    sub_26F3B6B4C(v10, &qword_2806DEFD8, &qword_26F4A3670);
    result = v13(v7, 1, v11);
    if (result != 1)
    {
      return sub_26F3B6B4C(v7, &qword_2806DEFD8, &qword_26F4A3670);
    }
  }

  else
  {
    sub_26F3B6B4C(v10, &qword_2806DEFD8, &qword_26F4A3670);
    return (*(v12 + 32))(a3, v7, v11);
  }

  return result;
}

uint64_t static LocaleService.supportedTargetLocale(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26F49DAB8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  (*(v7 + 16))(aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6, v9);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v12 = (v11 + ((v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v12 = a2;
  v12[1] = a3;
  v13 = objc_opt_self();
  v14 = swift_allocObject();
  *(v14 + 16) = sub_26F426F90;
  *(v14 + 24) = v11;
  aBlock[4] = sub_26F4271D8;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26F425AB4;
  aBlock[3] = &block_descriptor_10;
  v15 = _Block_copy(aBlock);

  [v13 availableLocalePairsForTask:5 useDedicatedMachPort:1 completion:v15];
  _Block_release(v15);
}

uint64_t sub_26F426360(void *a1, char a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0150, &qword_26F4A6680);
  v10 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v52 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v53 = &v45 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E05B0, &unk_26F4A77A0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v45 - v15);
  v17 = sub_26F49DAB8();
  v55 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v45 - v21;
  if (a2)
  {
    if (qword_280F66C10 != -1)
    {
      swift_once();
    }

    v23 = sub_26F49DCA8();
    __swift_project_value_buffer(v23, qword_280F67EB8);
    v24 = a1;
    v25 = sub_26F49DC88();
    v26 = sub_26F49FDD8();
    sub_26F4270FC(a1, 1);
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      v29 = sub_26F49D7E8();
      *(v27 + 4) = v29;
      *v28 = v29;
      _os_log_impl(&dword_26F39E000, v25, v26, "Failed to obtain supported target locale: %@", v27, 0xCu);
      sub_26F3B6B4C(v28, &qword_2806DF258, &qword_26F4A6220);
      MEMORY[0x274391F70](v28, -1, -1);
      MEMORY[0x274391F70](v27, -1, -1);
    }

    *v16 = a1;
    swift_storeEnumTagMultiPayload();
    v30 = a1;
    a4(v16);
    return sub_26F3B6B4C(v16, &qword_2806E05B0, &unk_26F4A77A0);
  }

  else
  {
    v50 = v16;
    v32 = a1[2];
    if (v32)
    {
      v45 = &v45 - v21;
      v46 = a3;
      v47 = v14;
      v48 = a5;
      v49 = a4;
      v56 = MEMORY[0x277D84F90];
      sub_26F40333C(0, v32, 0);
      v33 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v51 = *(v10 + 72);
      v34 = v56;
      v35 = (v55 + 32);
      v36 = (v55 + 8);
      do
      {
        v37 = v53;
        sub_26F3B8DD4(v33, v53, &qword_2806E0150, &qword_26F4A6680);
        v38 = v52;
        sub_26F427108(v37, v52);
        v39 = *v35;
        (*v35)(v19, v38 + *(v54 + 48), v17);
        (*v36)(v38, v17);
        v56 = v34;
        v41 = *(v34 + 16);
        v40 = *(v34 + 24);
        if (v41 >= v40 >> 1)
        {
          sub_26F40333C((v40 > 1), v41 + 1, 1);
          v34 = v56;
        }

        *(v34 + 16) = v41 + 1;
        v39((v34 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v41), v19, v17);
        v33 += v51;
        --v32;
      }

      while (v32);
      a4 = v49;
      a3 = v46;
      v22 = v45;
    }

    v42 = v22;
    static LocaleService.sanitizeLocale(_:supportedLocales:)(a3, v22);

    v43 = v55;
    v44 = v50;
    (*(v55 + 16))(v50, v42, v17);
    swift_storeEnumTagMultiPayload();
    a4(v44);
    sub_26F3B6B4C(v44, &qword_2806E05B0, &unk_26F4A77A0);
    return (*(v43 + 8))(v42, v17);
  }
}

uint64_t static LocaleService.supportedTargetLocaleSync(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  MEMORY[0x28223BE20](v3);
  v40 = &v32 - v4;
  v5 = sub_26F49F6E8();
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x28223BE20](v5);
  v36 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = &v32 - v8;
  v9 = sub_26F49DAB8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = swift_allocBox();
  v34 = v12;
  v35 = v13;
  (*(v10 + 56))(v13, 1, 1, v9);
  v14 = dispatch_group_create();
  dispatch_group_enter(v14);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v12;
  (*(v10 + 16))(&v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v17 = swift_allocObject();
  v33 = *(v10 + 32);
  v33(v17 + v16, &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v18 = (v17 + ((v11 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = sub_26F426F94;
  v18[1] = v15;
  v19 = objc_opt_self();
  v20 = swift_allocObject();
  *(v20 + 16) = sub_26F4271D4;
  *(v20 + 24) = v17;
  aBlock[4] = sub_26F4271D8;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26F425AB4;
  aBlock[3] = &block_descriptor_24;
  v21 = _Block_copy(aBlock);
  v22 = v14;

  [v19 availableLocalePairsForTask:5 useDedicatedMachPort:1 completion:v21];

  _Block_release(v21);

  v23 = v36;
  sub_26F49F6D8();
  v24 = v37;
  sub_26F49F6F8();
  v25 = *(v38 + 8);
  v26 = v23;
  v27 = v39;
  v25(v26, v39);
  sub_26F49FE18();
  v28 = v40;
  v25(v24, v27);
  v29 = v35;
  swift_beginAccess();
  sub_26F3B8DD4(v29, v28, &qword_2806DEFD8, &qword_26F4A3670);
  v30 = *(v10 + 48);
  if (v30(v28, 1, v9) == 1)
  {
    sub_26F49D978();

    if (v30(v28, 1, v9) != 1)
    {
      sub_26F3B6B4C(v28, &qword_2806DEFD8, &qword_26F4A3670);
    }
  }

  else
  {

    v33(v41, v28, v9);
  }
}

void sub_26F426D7C(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E05B0, &unk_26F4A77A0);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  v11 = swift_projectBox();
  sub_26F3B8DD4(a1, v10, &qword_2806E05B0, &unk_26F4A77A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26F3B6B4C(v10, &qword_2806E05B0, &unk_26F4A77A0);
  }

  else
  {
    v12 = sub_26F49DAB8();
    v13 = *(v12 - 8);
    (*(v13 + 32))(v7, v10, v12);
    (*(v13 + 56))(v7, 0, 1, v12);
    swift_beginAccess();
    sub_26F3D27D4(v7, v11);
  }

  dispatch_group_leave(a2);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_2Tm()
{
  v1 = sub_26F49DAB8();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_26F42703C(void *a1, char a2)
{
  v5 = *(sub_26F49DAB8() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_26F426360(a1, a2 & 1, v2 + v6, v8, v9);
}

void sub_26F4270FC(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_26F427108(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0150, &qword_26F4A6680);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26F427178()
{
  result = qword_280F65698;
  if (!qword_280F65698)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280F65698);
  }

  return result;
}

uint64_t sub_26F4271DC(uint64_t a1)
{
  v2 = sub_26F49DAB8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v18 = MEMORY[0x277D84F90];
    sub_26F403404(0, v6, 0);
    v7 = v18;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v12 = *(v8 + 56);
    do
    {
      v9(v5, v11, v2);
      swift_dynamicCast();
      v18 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_26F403404((v13 > 1), v14 + 1, 1);
        v7 = v18;
      }

      *(v7 + 16) = v14 + 1;
      sub_26F3BE15C(&v17, (v7 + 32 * v14 + 32));
      v11 += v12;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t NSArray.sortedLocalized(for:)(uint64_t a1)
{
  sub_26F49DAB8();
  sub_26F49FAE8();
  __break(1u);

  __break(1u);
  return result;
}

id sub_26F427514(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26F49DAB8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F49DA18();
  v8 = a1;
  NSArray.sortedLocalized(for:)(v7);

  (*(v5 + 8))(v7, v4);
  v9 = sub_26F49FAD8();

  return v9;
}

BOOL sub_26F427634(uint64_t a1)
{
  v1 = sub_26F49D9F8();
  v2 = sub_26F49D9F8();
  v3 = [v1 lt:0 displayNameForContext:v2 inTargetLocale:?];

  if (v3)
  {
    sub_26F49F8C8();
  }

  v4 = sub_26F49D9F8();
  v5 = sub_26F49D9F8();
  v6 = [v4 lt:0 displaySubnameForContext:v5 inTargetLocale:?];

  if (v6)
  {
    v7 = sub_26F49F8C8();
    v9 = v8;

    MEMORY[0x2743907E0](v7, v9);

    MEMORY[0x2743907E0](32, 0xE100000000000000);
  }

  v10 = sub_26F49D9F8();
  v11 = sub_26F49D9F8();
  v12 = [v10 lt:0 displayNameForContext:v11 inTargetLocale:?];

  if (v12)
  {
    sub_26F49F8C8();
  }

  v13 = sub_26F49D9F8();
  v14 = sub_26F49D9F8();
  v15 = [v13 lt:0 displaySubnameForContext:v14 inTargetLocale:?];

  if (v15)
  {
    v16 = sub_26F49F8C8();
    v18 = v17;

    MEMORY[0x2743907E0](v16, v18);

    MEMORY[0x2743907E0](32, 0xE100000000000000);
  }

  sub_26F3BDC0C();
  v19 = sub_26F4A0008();

  return v19 == -1;
}

uint64_t sub_26F4279E0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_26F49DCA8();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_26F49DC98();
}

uint64_t sub_26F427A58()
{
  v0 = sub_26F49DCA8();
  __swift_allocate_value_buffer(v0, qword_2806EA8C0);
  __swift_project_value_buffer(v0, qword_2806EA8C0);
  return sub_26F49DC98();
}

uint64_t sub_26F427AD8()
{
  v0 = sub_26F49DCA8();
  __swift_allocate_value_buffer(v0, qword_2806EA8D8);
  __swift_project_value_buffer(v0, qword_2806EA8D8);
  return sub_26F49DC98();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_26F427BBC()
{
  v0 = sub_26F49DCA8();
  __swift_allocate_value_buffer(v0, qword_280F67ED0);
  __swift_project_value_buffer(v0, qword_280F67ED0);
  return sub_26F49DC98();
}

uint64_t sub_26F427C3C()
{
  v0 = sub_26F49DCA8();
  __swift_allocate_value_buffer(v0, qword_2806EA8F0);
  __swift_project_value_buffer(v0, qword_2806EA8F0);
  return sub_26F49DC98();
}

uint64_t LTUILocalizedStrings.string.getter()
{
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_26F49D7D8();

  return v2;
}

uint64_t LTUILocalizedStrings.hashValue.getter()
{
  sub_26F4A0528();
  MEMORY[0x274391330](0);
  return sub_26F4A0568();
}

uint64_t sub_26F427DE4()
{
  sub_26F4A0528();
  MEMORY[0x274391330](0);
  return sub_26F4A0568();
}

uint64_t sub_26F427E50(uint64_t a1)
{
  sub_26F4A0528();
  MEMORY[0x274391330](0);
  return sub_26F4A0568();
}

unint64_t sub_26F427E94()
{
  result = qword_2806E05B8;
  if (!qword_2806E05B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E05B8);
  }

  return result;
}

uint64_t sub_26F427EF8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0x6F4C746567726174;
  v6 = 0xEC000000656C6163;
  if (a1 != 5)
  {
    v5 = 0x6E656469666E6F63;
    v6 = 0xEA00000000006563;
  }

  v7 = 0x6F4C656372756F73;
  v8 = 0xEC000000656C6163;
  if (a1 != 3)
  {
    v7 = 0x7453746567726174;
    v8 = 0xEC000000676E6972;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0xE500000000000000;
  v10 = 0x7865646E69;
  if (a1 != 1)
  {
    v10 = 0x7453656372756F73;
    v9 = 0xEC000000676E6972;
  }

  if (a1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (a1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 2)
  {
    v12 = v3;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v14 = 0xE200000000000000;
      if (v11 != 25705)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    if (a2 == 1)
    {
      v14 = 0xE500000000000000;
      if (v11 != 0x7865646E69)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v17 = 0x656372756F73;
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 != 5)
      {
        v14 = 0xEA00000000006563;
        if (v11 != 0x6E656469666E6F63)
        {
          goto LABEL_37;
        }

        goto LABEL_34;
      }

      v13 = 0x746567726174;
      goto LABEL_27;
    }

    if (a2 == 3)
    {
      v13 = 0x656372756F73;
LABEL_27:
      v15 = v13 & 0xFFFFFFFFFFFFLL | 0x6F4C000000000000;
      v16 = 1701601635;
      goto LABEL_33;
    }

    v17 = 0x746567726174;
  }

  v15 = v17 & 0xFFFFFFFFFFFFLL | 0x7453000000000000;
  v16 = 1735289202;
LABEL_33:
  v14 = v16 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
  if (v11 != v15)
  {
LABEL_37:
    v18 = sub_26F4A0458();
    goto LABEL_38;
  }

LABEL_34:
  if (v12 != v14)
  {
    goto LABEL_37;
  }

  v18 = 1;
LABEL_38:

  return v18 & 1;
}

uint64_t sub_26F428114(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB000000006E6F69;
  v3 = 0x7463416B63697571;
  v4 = a1;
  v5 = 0x800000026F4AC300;
  v6 = 0xD000000000000015;
  if (a1 != 5)
  {
    v6 = 0x657469726F766166;
    v5 = 0xEC00000062615473;
  }

  v7 = 0x61546172656D6163;
  v8 = 0xE900000000000062;
  if (a1 != 3)
  {
    v7 = 0x61737265766E6F63;
    v8 = 0xEF6261546E6F6974;
  }

  if (a1 > 4u)
  {
    v9 = v5;
  }

  else
  {
    v6 = v7;
    v9 = v8;
  }

  v10 = 0xD000000000000011;
  v11 = 0x800000026F4AC2B0;
  v12 = 0x74616C736E617274;
  v13 = 0xEE006261546E6F69;
  if (a1 == 1)
  {
    v12 = 0x7463416B63697571;
    v13 = 0xEB000000006E6F69;
  }

  if (a1)
  {
    v10 = v12;
    v11 = v13;
  }

  if (a1 <= 2u)
  {
    v14 = v10;
  }

  else
  {
    v14 = v6;
  }

  if (v4 <= 2)
  {
    v15 = v11;
  }

  else
  {
    v15 = v9;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v2 = 0x800000026F4AC2B0;
      if (v14 != 0xD000000000000011)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    if (a2 != 1)
    {
      v2 = 0xEE006261546E6F69;
      if (v14 != 0x74616C736E617274)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0x800000026F4AC300;
        if (v14 != 0xD000000000000015)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = 0xEC00000062615473;
        if (v14 != 0x657469726F766166)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }

    if (a2 == 3)
    {
      v2 = 0xE900000000000062;
      if (v14 != 0x61546172656D6163)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v3 = 0x61737265766E6F63;
    v2 = 0xEF6261546E6F6974;
  }

  if (v14 != v3)
  {
LABEL_37:
    v16 = sub_26F4A0458();
    goto LABEL_38;
  }

LABEL_34:
  if (v15 != v2)
  {
    goto LABEL_37;
  }

  v16 = 1;
LABEL_38:

  return v16 & 1;
}

uint64_t sub_26F428380(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6F4C656372756F73;
  v3 = a1;
  v4 = 0x6554656372756F73;
  if (a1 != 2)
  {
    v4 = 0x6554746567726174;
  }

  v5 = 0x6F4C746567726174;
  if (!a1)
  {
    v5 = 0x6F4C656372756F73;
  }

  if (a1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  if (v3 <= 1)
  {
    v7 = 0xEC000000656C6163;
  }

  else
  {
    v7 = 0xEA00000000007478;
  }

  v8 = 0x6554656372756F73;
  if (a2 != 2)
  {
    v8 = 0x6554746567726174;
  }

  if (a2)
  {
    v2 = 0x6F4C746567726174;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = 0xEC000000656C6163;
  }

  else
  {
    v10 = 0xEA00000000007478;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26F4A0458();
  }

  return v11 & 1;
}

uint64_t sub_26F4284CC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000657275;
  v3 = 0x6C69614664616572;
  v4 = a1;
  if (a1 <= 2u)
  {
    v11 = 0xD000000000000010;
    v12 = 0x800000026F4AC340;
    if (a1 != 1)
    {
      v11 = 0x546C6C6174736E69;
      v12 = 0xEE0074756F656D69;
    }

    if (a1)
    {
      v9 = v11;
    }

    else
    {
      v9 = 0x6C69614664616572;
    }

    if (v4)
    {
      v10 = v12;
    }

    else
    {
      v10 = 0xEB00000000657275;
    }
  }

  else
  {
    v5 = 0x800000026F4AC380;
    v6 = 0xD00000000000001ALL;
    if (a1 == 5)
    {
      v6 = 0xD000000000000016;
    }

    else
    {
      v5 = 0x800000026F4AC3A0;
    }

    v7 = 0x466C6C6174736E69;
    v8 = 0xEE006572756C6961;
    if (a1 != 3)
    {
      v7 = 0x6E61697261567369;
      v8 = 0xE900000000000074;
    }

    if (a1 <= 4u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v6;
    }

    if (v4 <= 4)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 > 2u)
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0x800000026F4AC380;
        if (v9 != 0xD000000000000016)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v2 = 0x800000026F4AC3A0;
        if (v9 != 0xD00000000000001ALL)
        {
          goto LABEL_40;
        }
      }

      goto LABEL_37;
    }

    if (a2 == 3)
    {
      v13 = 0x466C6C6174736E69;
      v14 = 0x6572756C6961;
      goto LABEL_33;
    }

    v3 = 0x6E61697261567369;
    v2 = 0xE900000000000074;
    goto LABEL_36;
  }

  if (!a2)
  {
LABEL_36:
    if (v9 != v3)
    {
LABEL_40:
      v15 = sub_26F4A0458();
      goto LABEL_41;
    }

    goto LABEL_37;
  }

  if (a2 != 1)
  {
    v13 = 0x546C6C6174736E69;
    v14 = 0x74756F656D69;
LABEL_33:
    v2 = v14 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
    if (v9 != v13)
    {
      goto LABEL_40;
    }

    goto LABEL_37;
  }

  v2 = 0x800000026F4AC340;
  if (v9 != 0xD000000000000010)
  {
    goto LABEL_40;
  }

LABEL_37:
  if (v10 != v2)
  {
    goto LABEL_40;
  }

  v15 = 1;
LABEL_41:

  return v15 & 1;
}

uint64_t sub_26F428744(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000656C62;
  v3 = 0x616C696176616E75;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x656E6E6F63736964;
    }

    else
    {
      v5 = 0x616C696176616E75;
    }

    if (v4)
    {
      v6 = 0xEC00000064657463;
    }

    else
    {
      v6 = 0xEB00000000656C62;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xE800000000000000;
    v5 = 0x72616C756C6C6563;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 1768319351;
    }

    else
    {
      v5 = 0x6465726977;
    }

    if (v4 == 3)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  v7 = 0xE800000000000000;
  v8 = 0x72616C756C6C6563;
  v9 = 0xE400000000000000;
  v10 = 1768319351;
  if (a2 != 3)
  {
    v10 = 0x6465726977;
    v9 = 0xE500000000000000;
  }

  if (a2 != 2)
  {
    v8 = v10;
    v7 = v9;
  }

  if (a2)
  {
    v3 = 0x656E6E6F63736964;
    v2 = 0xEC00000064657463;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v7;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_26F4A0458();
  }

  return v13 & 1;
}

uint64_t sub_26F4288C4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED0000656C676E41;
  v3 = 0x656E696C65736162;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6E6172546A6F7270;
    }

    else
    {
      v5 = 0xD000000000000012;
    }

    if (v4 == 2)
    {
      v6 = 0xED00006D726F6673;
    }

    else
    {
      v6 = 0x800000026F4AC610;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 1684108657;
    }

    else
    {
      v5 = 0x656E696C65736162;
    }

    if (v4)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xED0000656C676E41;
    }
  }

  v7 = 0x6E6172546A6F7270;
  v8 = 0x800000026F4AC610;
  if (a2 == 2)
  {
    v8 = 0xED00006D726F6673;
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  if (a2)
  {
    v3 = 1684108657;
    v2 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26F4A0458();
  }

  return v11 & 1;
}

uint64_t sub_26F428A18(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0x67696C4174786574;
    v10 = 0xED0000746E656D6ELL;
    if (a1 != 6)
    {
      v9 = 0xD00000000000001BLL;
      v10 = 0x800000026F4AC6C0;
    }

    v11 = 0x664F7265626D756ELL;
    v12 = 0xED000073656E694CLL;
    if (a1 != 4)
    {
      v11 = 0xD000000000000015;
      v12 = 0x800000026F4AC690;
    }

    if (a1 <= 5u)
    {
      v7 = v11;
    }

    else
    {
      v7 = v9;
    }

    if (v2 <= 5)
    {
      v8 = v12;
    }

    else
    {
      v8 = v10;
    }
  }

  else
  {
    v3 = 0xE200000000000000;
    v4 = 25705;
    v5 = 0x695473646E756F62;
    v6 = 0xEF706D617473656DLL;
    if (a1 != 2)
    {
      v5 = 0x7061726761726170;
      v6 = 0xEA00000000007368;
    }

    if (a1)
    {
      v4 = 0x73646E756F62;
      v3 = 0xE600000000000000;
    }

    if (a1 <= 1u)
    {
      v7 = v4;
    }

    else
    {
      v7 = v5;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v6;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v13 = 0xEF706D617473656DLL;
        if (v7 != 0x695473646E756F62)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v13 = 0xEA00000000007368;
        if (v7 != 0x7061726761726170)
        {
          goto LABEL_46;
        }
      }
    }

    else if (a2)
    {
      v13 = 0xE600000000000000;
      if (v7 != 0x73646E756F62)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v13 = 0xE200000000000000;
      if (v7 != 25705)
      {
        goto LABEL_46;
      }
    }

    goto LABEL_44;
  }

  if (a2 <= 5u)
  {
    if (a2 != 4)
    {
      v13 = 0x800000026F4AC690;
      if (v7 != 0xD000000000000015)
      {
        goto LABEL_46;
      }

      goto LABEL_44;
    }

    v14 = 0x664F7265626D756ELL;
    v15 = 0x73656E694CLL;
    goto LABEL_35;
  }

  if (a2 == 6)
  {
    v14 = 0x67696C4174786574;
    v15 = 0x746E656D6ELL;
LABEL_35:
    v13 = v15 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
    if (v7 != v14)
    {
      goto LABEL_46;
    }

    goto LABEL_44;
  }

  v13 = 0x800000026F4AC6C0;
  if (v7 != 0xD00000000000001BLL)
  {
LABEL_46:
    v16 = sub_26F4A0458();
    goto LABEL_47;
  }

LABEL_44:
  if (v8 != v13)
  {
    goto LABEL_46;
  }

  v16 = 1;
LABEL_47:

  return v16 & 1;
}

uint64_t sub_26F428CDC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x7466654C706F74;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x654C6D6F74746F62;
    }

    else
    {
      v4 = 0x69526D6F74746F62;
    }

    if (v3 == 2)
    {
      v5 = 0xEA00000000007466;
    }

    else
    {
      v5 = 0xEB00000000746867;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x7468676952706F74;
    }

    else
    {
      v4 = 0x7466654C706F74;
    }

    if (v3)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0x654C6D6F74746F62;
  v8 = 0xEA00000000007466;
  if (a2 != 2)
  {
    v7 = 0x69526D6F74746F62;
    v8 = 0xEB00000000746867;
  }

  if (a2)
  {
    v2 = 0x7468676952706F74;
    v6 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26F4A0458();
  }

  return v11 & 1;
}

uint64_t static NetworkPathService.isDisconnected()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26F428ECC;

  return static NetworkPathService.read()(v0 + 24);
}

uint64_t sub_26F428ECC()
{

  return MEMORY[0x2822009F8](sub_26F428FC8, 0, 0);
}

uint64_t sub_26F428FC8()
{
  if (*(v0 + 24) <= 1u && *(v0 + 24))
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_26F4A0458();
  }

  v2 = *(v0 + 8);

  return v2(v1 & 1);
}

uint64_t NetworkPath.description.getter()
{
  v1 = *v0;
  v2 = 0x616C696176616E75;
  v3 = 0x72616C756C6C6563;
  v4 = 1768319351;
  if (v1 != 3)
  {
    v4 = 0x6465726977;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656E6E6F63736964;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

TranslationUI::NetworkPath_optional __swiftcall NetworkPath.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26F4A02A8();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_26F4291E8()
{
  sub_26F4A0528();
  sub_26F49F9A8();

  return sub_26F4A0568();
}

uint64_t sub_26F4292D0(uint64_t a1)
{
  sub_26F49F9A8();
}

uint64_t sub_26F4293A4(uint64_t a1)
{
  sub_26F4A0528();
  sub_26F49F9A8();

  return sub_26F4A0568();
}

void sub_26F429494(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000656C62;
  v4 = 0x616C696176616E75;
  v5 = 0xE800000000000000;
  v6 = 0x72616C756C6C6563;
  v7 = 0xE400000000000000;
  v8 = 1768319351;
  if (v2 != 3)
  {
    v8 = 0x6465726977;
    v7 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x656E6E6F63736964;
    v3 = 0xEC00000064657463;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_26F4295E8()
{
  v1 = *v0;
  v2 = 0x616C696176616E75;
  v3 = 0x72616C756C6C6563;
  v4 = 1768319351;
  if (v1 != 3)
  {
    v4 = 0x6465726977;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656E6E6F63736964;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t static NetworkPathService.read()(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for Signpost(0);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F429718, 0, 0);
}

uint64_t sub_26F429718()
{
  v13 = v0;
  if (qword_280F657C0 != -1)
  {
    swift_once();
  }

  v1 = sub_26F49DCA8();
  __swift_project_value_buffer(v1, qword_280F67DF8);
  v2 = sub_26F49DC88();
  v3 = sub_26F49FDB8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_26F39E000, v2, v3, "Network status read", v4, 2u);
    MEMORY[0x274391F70](v4, -1, -1);
  }

  sub_26F3B2404(&v12);
  if (v12 == 5)
  {
    v5 = v0[3];
    sub_26F43762C(12, 0, v5);
    sub_26F49DE98();
    swift_allocObject();
    v6 = sub_26F49DE88();
    v0[4] = v6;
    v7 = swift_task_alloc();
    v0[5] = v7;
    *(v7 + 16) = v6;
    *(v7 + 24) = v5;
    v8 = swift_task_alloc();
    v0[6] = v8;
    *v8 = v0;
    v8[1] = sub_26F42994C;
    v9 = v0[2];

    return MEMORY[0x2822007B8](v9, 0, 0, 0x292864616572, 0xE600000000000000, sub_26F429DC4, v7, &type metadata for NetworkPath);
  }

  else
  {
    *v0[2] = v12;

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_26F42994C()
{

  return MEMORY[0x2822009F8](sub_26F429A64, 0, 0);
}

uint64_t sub_26F429A64()
{
  v1 = *(v0 + 24);

  sub_26F429DCC(v1);

  v2 = *(v0 + 8);

  return v2();
}

void sub_26F429AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v5 = sub_26F49F6A8();
  v26 = *(v5 - 8);
  v27 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Signpost(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E05D0, &qword_26F4A79B8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v24 - v15;
  (*(v12 + 16))(&v24 - v15, a1, v11, v14);
  sub_26F42A644(a3, &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v18 = (v13 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (*(v9 + 80) + v18 + 8) & ~*(v9 + 80);
  v20 = swift_allocObject();
  (*(v12 + 32))(v20 + v17, v16, v11);
  *(v20 + v18) = v25;
  sub_26F42A6A8(&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);

  sub_26F49DE58();
  sub_26F3B2E18();
  v22 = v26;
  v21 = v27;
  (*(v26 + 104))(v7, *MEMORY[0x277D851C8], v27);
  v23 = sub_26F49FE88();
  (*(v22 + 8))(v7, v21);
  sub_26F49DE68();
}

uint64_t sub_26F429DCC(uint64_t a1)
{
  v2 = type metadata accessor for Signpost(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26F429E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24[1] = a3;
  v24[2] = a4;
  v24[0] = a2;
  v4 = sub_26F49DE48();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26F49DEB8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v24 - v13;
  sub_26F49DEC8();
  v15.n128_f64[0] = (*(v9 + 104))(v11, *MEMORY[0x277CD8F78], v8);
  sub_26F42A7FC(v15);
  v16 = sub_26F49F868();
  v17 = *(v9 + 8);
  v17(v11, v8);
  v17(v14, v8);
  if (v16)
  {
    v18 = *(v5 + 104);
    v18(v7, *MEMORY[0x277CD8CA0], v4);
    v19 = sub_26F49DEA8();
    v20 = *(v5 + 8);
    v20(v7, v4);
    if (v19)
    {
      v25 = 4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E05D0, &qword_26F4A79B8);
    }

    else
    {
      v18(v7, *MEMORY[0x277CD8CA8], v4);
      v21 = sub_26F49DEA8();
      v20(v7, v4);
      if (v21)
      {
        v26 = 3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E05D0, &qword_26F4A79B8);
      }

      else
      {
        v18(v7, *MEMORY[0x277CD8CB8], v4);
        v22 = sub_26F49DEA8();
        v20(v7, v4);
        if (v22)
        {
          v27 = 2;
        }

        else
        {
          v28 = 0;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E05D0, &qword_26F4A79B8);
      }
    }
  }

  else
  {
    v29 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E05D0, &qword_26F4A79B8);
  }

  sub_26F49FB88();
  sub_26F49DE78();
  return sub_26F437AD0();
}

void sub_26F42A1D0(_BYTE *a1@<X8>)
{
  v2 = sub_26F49F958();
  v3 = getenv((v2 + 32));

  if (v3)
  {
    v4 = sub_26F49F9F8();
    v6 = sub_26F3CBEC4(v4, v5);

    if (v6)
    {
      sub_26F4A00F8();
      if (*(v6 + 16) && (v7 = sub_26F45FD44(v29), (v8 & 1) != 0))
      {
        sub_26F3B2DBC(*(v6 + 56) + 32 * v7, v30);
        sub_26F3B2D68(v29);

        if (swift_dynamicCast())
        {
          v9._countAndFlagsBits = 0x4F5754454E5F544CLL;
          v9._object = 0xEF485441505F4B52;
          NetworkPath.init(rawValue:)(v9);
          v10 = LOBYTE(v29[0]);
          if (LOBYTE(v29[0]) != 5)
          {
            if (qword_280F657C0 != -1)
            {
              swift_once();
            }

            v11 = sub_26F49DCA8();
            __swift_project_value_buffer(v11, qword_280F67DF8);
            v12 = sub_26F49DC88();
            v13 = sub_26F49FDB8();
            if (os_log_type_enabled(v12, v13))
            {
              v14 = swift_slowAlloc();
              v15 = swift_slowAlloc();
              v29[0] = v15;
              v16 = 0xEB00000000656C62;
              v17 = 0x616C696176616E75;
              *v14 = 136315138;
              v18 = 0xE800000000000000;
              v19 = 0x72616C756C6C6563;
              v20 = 0xE400000000000000;
              v21 = 1768319351;
              if (v10 != 3)
              {
                v21 = 0x6465726977;
                v20 = 0xE500000000000000;
              }

              if (v10 != 2)
              {
                v19 = v21;
                v18 = v20;
              }

              if (v10)
              {
                v17 = 0x656E6E6F63736964;
                v16 = 0xEC00000064657463;
              }

              if (v10 <= 1)
              {
                v22 = v17;
              }

              else
              {
                v22 = v19;
              }

              if (v10 <= 1)
              {
                v23 = v16;
              }

              else
              {
                v23 = v18;
              }

              v24 = sub_26F3B38D0(v22, v23, v29);

              *(v14 + 4) = v24;
              _os_log_impl(&dword_26F39E000, v12, v13, "Network path fixture found %s", v14, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v15);
              MEMORY[0x274391F70](v15, -1, -1);
              MEMORY[0x274391F70](v14, -1, -1);
            }

            goto LABEL_30;
          }
        }
      }

      else
      {

        sub_26F3B2D68(v29);
      }
    }
  }

  if (qword_280F657C0 != -1)
  {
    swift_once();
  }

  v25 = sub_26F49DCA8();
  __swift_project_value_buffer(v25, qword_280F67DF8);
  v26 = sub_26F49DC88();
  v27 = sub_26F49FDB8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_26F39E000, v26, v27, "Network path fixture not found", v28, 2u);
    MEMORY[0x274391F70](v28, -1, -1);
  }

  LOBYTE(v10) = 5;
LABEL_30:
  *a1 = v10;
}

unint64_t sub_26F42A57C()
{
  result = qword_2806E05C0;
  if (!qword_2806E05C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E05C0);
  }

  return result;
}

unint64_t sub_26F42A5F0()
{
  result = qword_2806E05C8;
  if (!qword_2806E05C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E05C8);
  }

  return result;
}

uint64_t sub_26F42A644(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Signpost(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F42A6A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Signpost(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F42A70C(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E05D0, &qword_26F4A79B8) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for Signpost(0) - 8);
  v7 = *(v1 + v5);
  v8 = v1 + ((v5 + *(v6 + 80) + 8) & ~*(v6 + 80));

  return sub_26F429E28(a1, v1 + v4, v7, v8);
}

unint64_t sub_26F42A7FC(__n128 a1)
{
  result = qword_2806E05D8;
  if (!qword_2806E05D8)
  {
    sub_26F49DEB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E05D8);
  }

  return result;
}

uint64_t sub_26F42A858@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v1 = sub_26F49EAC8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0600, &qword_26F4A7A98);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0608, &qword_26F4A7AA0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v43 - v11;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0610, &qword_26F4A7AA8);
  MEMORY[0x28223BE20](v44);
  v14 = &v43 - v13;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0618, &qword_26F4A7AB0);
  MEMORY[0x28223BE20](v45);
  v16 = &v43 - v15;
  sub_26F49EAD8();
  sub_26F49F5A8();
  sub_26F49E3D8();
  (*(v2 + 32))(v8, v4, v1);
  v17 = &v8[*(v6 + 44)];
  v18 = v52;
  *(v17 + 4) = v51;
  *(v17 + 5) = v18;
  *(v17 + 6) = v53;
  v19 = v48;
  *v17 = v47;
  *(v17 + 1) = v19;
  v20 = v50;
  *(v17 + 2) = v49;
  *(v17 + 3) = v20;
  sub_26F49F228();
  sub_26F49EAE8();
  v21 = sub_26F49F268();

  LOBYTE(v4) = sub_26F49EC48();
  sub_26F3BBAEC(v8, v12, &qword_2806E0600, &qword_26F4A7A98);
  v22 = &v12[*(v10 + 44)];
  *v22 = v21;
  v22[8] = v4;
  if (sub_26F49EAE8())
  {
    v23 = sub_26F49F288();
  }

  else
  {
    v24 = [objc_opt_self() systemBackgroundColor];
    v23 = sub_26F49F218();
  }

  v25 = v23;
  KeyPath = swift_getKeyPath();
  sub_26F3BBAEC(v12, v14, &qword_2806E0608, &qword_26F4A7AA0);
  v27 = &v14[*(v44 + 36)];
  *v27 = KeyPath;
  v27[1] = v25;
  sub_26F49ECA8();
  v28 = sub_26F49ECB8();

  v29 = swift_getKeyPath();
  sub_26F3BBAEC(v14, v16, &qword_2806E0610, &qword_26F4A7AA8);
  v30 = &v16[*(v45 + 36)];
  *v30 = v29;
  v30[1] = v28;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0620, &qword_26F4A7B18);
  v32 = v46;
  v33 = (v46 + *(v31 + 36));
  v34 = *(sub_26F49E3A8() + 20);
  v35 = *MEMORY[0x277CE0118];
  v36 = sub_26F49E7C8();
  (*(*(v36 - 8) + 104))(&v33[v34], v35, v36);
  __asm { FMOV            V0.2D, #10.0 }

  *v33 = _Q0;
  *&v33[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF0A8, &qword_26F4A7B20) + 36)] = 256;
  return sub_26F3BBAEC(v16, v32, &qword_2806E0618, &qword_26F4A7AB0);
}

uint64_t PanelButtonStyle.makeBody(configuration:)(uint64_t a1)
{
  v2 = sub_26F49EC08();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E05E0, &qword_26F4A79C0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v13[-v8];
  (*(v3 + 16))(&v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v2, v7);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  (*(v3 + 32))(v11 + v10, &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v2);
  v14 = a1;
  sub_26F49EBD8();
  sub_26F42B770(&qword_2806E05E8, MEMORY[0x277CDE500], MEMORY[0x277CDE4F8]);
  sub_26F49F398();
  sub_26F3B18CC(&qword_2806E05F0, &qword_2806E05E0, &qword_26F4A79C0, MEMORY[0x277CDF028]);
  sub_26F42AFB0();
  sub_26F49EF58();
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_26F42AFB0()
{
  result = qword_2806E05F8;
  if (!qword_2806E05F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E05F8);
  }

  return result;
}

uint64_t sub_26F42B020(uint64_t a1)
{
  v2 = sub_26F49EC08();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E05E0, &qword_26F4A79C0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v13[-v8];
  (*(v3 + 16))(&v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v2, v7);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  (*(v3 + 32))(v11 + v10, &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v2);
  v14 = a1;
  sub_26F49EBD8();
  sub_26F42B770(&qword_2806E05E8, MEMORY[0x277CDE500], MEMORY[0x277CDE4F8]);
  sub_26F49F398();
  sub_26F3B18CC(&qword_2806E05F0, &qword_2806E05E0, &qword_26F4A79C0, MEMORY[0x277CDF028]);
  sub_26F42AFB0();
  sub_26F49EF58();
  return (*(v6 + 8))(v9, v5);
}

uint64_t objectdestroyTm_10()
{
  v1 = sub_26F49EC08();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

unint64_t sub_26F42B3D4()
{
  result = qword_2806E0628;
  if (!qword_2806E0628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0620, &qword_26F4A7B18);
    sub_26F42B48C();
    sub_26F3B18CC(&qword_2806DF0E0, &qword_2806DF0A8, &qword_26F4A7B20, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0628);
  }

  return result;
}

unint64_t sub_26F42B48C()
{
  result = qword_2806E0630;
  if (!qword_2806E0630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0618, &qword_26F4A7AB0);
    sub_26F42B544();
    sub_26F3B18CC(&qword_2806DF210, &qword_2806DF218, &qword_26F4A4B40, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0630);
  }

  return result;
}

unint64_t sub_26F42B544()
{
  result = qword_2806E0638;
  if (!qword_2806E0638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0610, &qword_26F4A7AA8);
    sub_26F42B5FC();
    sub_26F3B18CC(&qword_2806DF560, &qword_2806DF568, &unk_26F4A45A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0638);
  }

  return result;
}

unint64_t sub_26F42B5FC()
{
  result = qword_2806E0640;
  if (!qword_2806E0640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0608, &qword_26F4A7AA0);
    sub_26F42B6B4();
    sub_26F3B18CC(&qword_2806DF2E0, &qword_2806DF2E8, &qword_26F4A3D78, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0640);
  }

  return result;
}

unint64_t sub_26F42B6B4()
{
  result = qword_2806E0648;
  if (!qword_2806E0648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0600, &qword_26F4A7A98);
    sub_26F42B770(&qword_2806DECF8, MEMORY[0x277CDE278], MEMORY[0x277CDE270]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0648);
  }

  return result;
}

uint64_t sub_26F42B770(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t PlayButton.Size.hashValue.getter()
{
  v1 = *v0;
  sub_26F4A0528();
  MEMORY[0x274391330](v1);
  return sub_26F4A0568();
}

uint64_t PlayButton.init(isPlaying:size:action:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a2;
  *a5 = result;
  *(a5 + 8) = a3;
  *(a5 + 16) = a4;
  *(a5 + 1) = v5;
  return result;
}

uint64_t PlayButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0650, &qword_26F4A7B28);
  MEMORY[0x28223BE20](v28);
  v30 = &v25 - v2;
  v3 = sub_26F49E358();
  v32 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0658, &qword_26F4A7B30);
  v31 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0660, &qword_26F4A7B38);
  v26 = *(v9 - 8);
  v27 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  v12 = *v1;
  v13 = v1[1];
  v14 = *(v1 + 1);
  v15 = *(v1 + 2);
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  *(v16 + 17) = v13;
  *(v16 + 24) = v14;
  *(v16 + 32) = v15;
  v33 = v12;
  v34 = v13;
  v17 = v11;
  v18 = v30;
  v35 = v14;
  v36 = v15;
  sub_26F3ACF68(v14, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0668, &qword_26F4A7B40);
  sub_26F42C0EC();
  sub_26F49F398();
  sub_26F49E348();
  v19 = sub_26F3B18CC(&qword_2806E06B0, &qword_2806E0658, &qword_26F4A7B30, MEMORY[0x277CDF028]);
  v20 = sub_26F42C2E8(&qword_2806DF160, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  sub_26F49EF48();
  (*(v32 + 8))(v5, v3);
  (*(v31 + 8))(v8, v6);
  v21 = *MEMORY[0x277CDFA00];
  v22 = sub_26F49E2C8();
  (*(*(v22 - 8) + 104))(v18, v21, v22);
  sub_26F42C2E8(&qword_2806E06B8, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_26F49F868();
  if (result)
  {
    v37 = v6;
    v38 = v3;
    v39 = v19;
    v40 = v20;
    swift_getOpaqueTypeConformance2();
    sub_26F3B18CC(&qword_2806E06C0, &qword_2806E0650, &qword_26F4A7B28, MEMORY[0x277D84470]);
    v24 = v27;
    sub_26F49EFF8();
    sub_26F3B6B4C(v18, &qword_2806E0650, &qword_26F4A7B28);
    return (*(v26 + 8))(v17, v24);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26F42BD3C()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_26F42BD6C@<X0>(unsigned int a1@<W0>, uint64_t a4@<X8>)
{
  v31 = a4;
  v5 = BYTE1(a1);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E06D0, &qword_26F4A7C80);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E06A0, &qword_26F4A7B58);
  MEMORY[0x28223BE20](v9);
  v11 = (&v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - v13;
  if (v5 == 2)
  {
    v15 = sub_26F49F2B8();
    v16 = (v11 + *(v9 + 36));
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFCA0, &qword_26F4A55E8) + 28);
    v18 = *MEMORY[0x277CE1048];
    v19 = sub_26F49F2E8();
    (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
    *v16 = swift_getKeyPath();
    *v11 = v15;
    sub_26F42C7C0(v11, v14);
    sub_26F42C830(v14, v8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0680, &qword_26F4A7B48);
    sub_26F42C178();
    sub_26F42C230();
    sub_26F49E928();
    return sub_26F3B6B4C(v14, &qword_2806E06A0, &qword_26F4A7B58);
  }

  else
  {
    v21 = sub_26F49F5A8();
    v23 = v22;
    sub_26F42C3A4(a1 & 0xFFFFFF01, &v34);
    v24 = v35;
    v25 = v36;
    v26 = BYTE1(v36);
    v30 = v34;
    v32 = v36;
    sub_26F49F5A8();
    sub_26F49E0C8();
    *&v33[6] = v34;
    *&v33[22] = v35;
    *&v33[38] = v36;
    *v8 = v21;
    *(v8 + 1) = v23;
    *(v8 + 1) = v30;
    *(v8 + 2) = v24;
    v8[48] = v25;
    v8[49] = v26;
    v27 = *v33;
    v28 = *&v33[16];
    v29 = *&v33[32];
    *(v8 + 12) = *&v33[46];
    *(v8 + 82) = v29;
    *(v8 + 66) = v28;
    *(v8 + 50) = v27;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0680, &qword_26F4A7B48);
    sub_26F42C178();
    sub_26F42C230();
    return sub_26F49E928();
  }
}

unint64_t sub_26F42C0EC()
{
  result = qword_2806E0670;
  if (!qword_2806E0670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0668, &qword_26F4A7B40);
    sub_26F42C178();
    sub_26F42C230();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0670);
  }

  return result;
}

unint64_t sub_26F42C178()
{
  result = qword_2806E0678;
  if (!qword_2806E0678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0680, &qword_26F4A7B48);
    sub_26F3B18CC(&qword_2806E0688, &qword_2806E0690, &qword_26F4A7B50, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0678);
  }

  return result;
}

unint64_t sub_26F42C230()
{
  result = qword_2806E0698;
  if (!qword_2806E0698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E06A0, &qword_26F4A7B58);
    sub_26F3B18CC(&qword_2806E06A8, &qword_2806DFCA0, &qword_26F4A55E8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0698);
  }

  return result;
}

uint64_t sub_26F42C2E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26F42C334()
{
  result = qword_2806E06C8;
  if (!qword_2806E06C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E06C8);
  }

  return result;
}

uint64_t sub_26F42C3A4@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v16 = a1;
  v3 = sub_26F49F2C8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F49F2B8();
  v15 = *MEMORY[0x277CE0FE0];
  v14 = *(v4 + 104);
  v14(v6);
  v7 = sub_26F49F2F8();

  v8 = *(v4 + 8);
  v8(v6, v3);
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  v11 = sub_26F49F298();
  sub_26F49F2B8();
  (v14)(v6, v15, v3);
  v12 = sub_26F49F2F8();

  v8(v6, v3);
  *a2 = v7;
  *(a2 + 8) = v11;
  *(a2 + 16) = v12;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
}

uint64_t sub_26F42C604(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_26F42C660(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_26F42C6F8(uint64_t a1)
{
  v2 = sub_26F49F2E8();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_26F49E428();
}

uint64_t sub_26F42C7C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E06A0, &qword_26F4A7B58);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F42C830(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E06A0, &qword_26F4A7B58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t (*EnvironmentValues.presentLanguageSelection.getter())()
{
  sub_26F42CA04();
  sub_26F49E688();
  *(swift_allocObject() + 16) = v1;
  return sub_26F42CA58;
}

uint64_t (*EnvironmentValues._presentLanguageSelection.getter())()
{
  sub_26F42CA04();
  sub_26F49E688();
  *(swift_allocObject() + 16) = v1;
  return sub_26F42CEC0;
}

unint64_t sub_26F42CA04()
{
  result = qword_2806E06D8;
  if (!qword_2806E06D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E06D8);
  }

  return result;
}

uint64_t sub_26F42CAA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_26F42CA04();
  return sub_26F49E698();
}

void (*EnvironmentValues.presentLanguageSelection.modify(uint64_t *a1))(uint64_t **a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
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
  *(v3 + 40) = sub_26F42CA04();
  sub_26F49E688();
  v5 = swift_allocObject();
  *(v5 + 16) = *(v4 + 16);
  *v4 = sub_26F42CEC0;
  *(v4 + 8) = v5;
  return sub_26F42CBF4;
}

uint64_t sub_26F42CC30(void *a1)
{
  sub_26F42CA04();

  return sub_26F49E698();
}

void (*EnvironmentValues._presentLanguageSelection.modify(uint64_t *a1))(uint64_t **a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
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
  *(v3 + 40) = sub_26F42CA04();
  sub_26F49E688();
  v5 = swift_allocObject();
  *(v5 + 16) = *(v4 + 16);
  *v4 = sub_26F42CEC0;
  *(v4 + 8) = v5;
  return sub_26F42CD50;
}

void sub_26F42CD8C(uint64_t **a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    *(v10 + 24) = v7;
    v6[2] = a6;
    v6[3] = v10;

    sub_26F49E698();
  }

  else
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v8;
    *(v12 + 24) = v7;
    v6[2] = a4;
    v6[3] = v12;
    sub_26F49E698();
  }

  free(v6);
}

double keypath_getTm@<D0>(_OWORD *a1@<X8>)
{
  sub_26F42CA04();
  sub_26F49E688();
  result = *&v3;
  *a1 = v3;
  return result;
}

void Reachability.networkStatus.getter(_BYTE *a1@<X8>)
{
  v20[1] = *MEMORY[0x277D85DE8];
  sub_26F42D980(v20);
  v3 = LOBYTE(v20[0]);
  if (LOBYTE(v20[0]) == 3)
  {
    v4 = *(v1 + 48);
    if (v4 && (LODWORD(v20[0]) = 0, SCNetworkReachabilityGetFlags(v4, v20)) && (v20[0] & 2) != 0)
    {
      v15 = *(v1 + 48);
      if (v15 && (LODWORD(v20[0]) = 0, SCNetworkReachabilityGetFlags(v15, v20)) && (v20[0] & 4) != 0)
      {
        LOBYTE(v3) = 0;
        v16 = *(v1 + 48);
        if (!v16)
        {
          goto LABEL_19;
        }
      }

      else
      {
        LOBYTE(v3) = 1;
        v16 = *(v1 + 48);
        if (!v16)
        {
          goto LABEL_19;
        }
      }

      LODWORD(v20[0]) = 0;
      if (SCNetworkReachabilityGetFlags(v16, v20) && (v20[0] & 0x20) != 0)
      {
        goto LABEL_29;
      }

      v17 = *(v1 + 48);
      if (!v17)
      {
        goto LABEL_19;
      }

      LODWORD(v20[0]) = 0;
      if (SCNetworkReachabilityGetFlags(v17, v20))
      {
        if ((v20[0] & 8) != 0)
        {
LABEL_29:
          v18 = *(v1 + 48);
          if (!v18 || (LODWORD(v20[0]) = 0, !SCNetworkReachabilityGetFlags(v18, v20)) || (v20[0] & 0x10) == 0)
          {
            LOBYTE(v3) = 1;
          }
        }
      }

      v19 = *(v1 + 48);
      if (v19)
      {
        LODWORD(v20[0]) = 0;
        if (SCNetworkReachabilityGetFlags(v19, v20))
        {
          if ((v20[0] & 0x40000) != 0)
          {
            LOBYTE(v3) = 2;
          }
        }
      }
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  else
  {
    if (qword_280F657C0 != -1)
    {
      swift_once();
    }

    v5 = sub_26F49DCA8();
    __swift_project_value_buffer(v5, qword_280F67DF8);
    v6 = sub_26F49DC88();
    v7 = sub_26F49FDB8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v20[0] = v9;
      *v8 = 136446210;
      v10 = 0xE400000000000000;
      v11 = 1768319319;
      if (v3 != 1)
      {
        v11 = 0x72616C756C6C6543;
        v10 = 0xE800000000000000;
      }

      if (v3)
      {
        v12 = v11;
      }

      else
      {
        v12 = 0x656E6E6F43206F4ELL;
      }

      if (v3)
      {
        v13 = v10;
      }

      else
      {
        v13 = 0xED00006E6F697463;
      }

      v14 = sub_26F3B38D0(v12, v13, v20);

      *(v8 + 4) = v14;
      _os_log_impl(&dword_26F39E000, v6, v7, "Using network status of '%{public}s' since the debug preference is set", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x274391F70](v9, -1, -1);
      MEMORY[0x274391F70](v8, -1, -1);
    }
  }

LABEL_19:
  *a1 = v3;
}

TranslationUI::NetworkStatus_optional __swiftcall NetworkStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26F4A02A8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t NetworkStatus.rawValue.getter()
{
  v1 = 1768319319;
  if (*v0 != 1)
  {
    v1 = 0x72616C756C6C6543;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656E6E6F43206F4ELL;
  }
}

uint64_t sub_26F42D250(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1768319319;
  if (v2 != 1)
  {
    v4 = 0x72616C756C6C6543;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x656E6E6F43206F4ELL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xED00006E6F697463;
  }

  v7 = 0xE400000000000000;
  v8 = 1768319319;
  if (*a2 != 1)
  {
    v8 = 0x72616C756C6C6543;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x656E6E6F43206F4ELL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xED00006E6F697463;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26F4A0458();
  }

  return v11 & 1;
}

uint64_t sub_26F42D34C()
{
  sub_26F4A0528();
  sub_26F49F9A8();

  return sub_26F4A0568();
}

uint64_t sub_26F42D3F4(uint64_t a1)
{
  sub_26F49F9A8();
}

uint64_t sub_26F42D488(uint64_t a1)
{
  sub_26F4A0528();
  sub_26F49F9A8();

  return sub_26F4A0568();
}

void sub_26F42D538(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006E6F697463;
  v4 = 0xE400000000000000;
  v5 = 1768319319;
  if (v2 != 1)
  {
    v5 = 0x72616C756C6C6543;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656E6E6F43206F4ELL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_26F42D5B8()
{
  result = sub_26F49F898();
  qword_2806E06E0 = result;
  return result;
}

id static Reachability.reachibilityChangedNotification.getter()
{
  if (qword_2806DE7A8 != -1)
  {
    swift_once();
  }

  v1 = qword_2806E06E0;

  return v1;
}

uint64_t Reachability.__allocating_init(networkReachability:)(uint64_t a1)
{
  v2 = swift_allocObject();
  Reachability.init(networkReachability:)(a1);
  return v2;
}

uint64_t Reachability.init(networkReachability:)(uint64_t a1)
{
  v12 = a1;
  v11 = sub_26F49FE48();
  v2 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26F49FE28();
  MEMORY[0x28223BE20](v5);
  v6 = sub_26F49F6C8();
  MEMORY[0x28223BE20](v6 - 8);
  *(v1 + 44) = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 60) = 1;
  sub_26F3B2E18();
  sub_26F49F6B8();
  v13 = MEMORY[0x277D84F90];
  sub_26F42DA04(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E06E8, &qword_26F4A7D10);
  sub_26F42DA5C();
  sub_26F4A0058();
  (*(v2 + 104))(v4, *MEMORY[0x277D85260], v11);
  *(v1 + 64) = sub_26F49FE78();
  *(v1 + 72) = 0;
  *(v1 + 80) = [objc_opt_self() defaultCenter];
  v8 = *(v1 + 48);
  *(v1 + 48) = v12;

  return v1;
}

uint64_t Reachability.deinit()
{
  sub_26F3ACE98(*(v0 + 16), *(v0 + 24));
  sub_26F3ACE98(*(v0 + 32), *(v0 + 40));

  return v0;
}

uint64_t Reachability.__deallocating_deinit()
{
  sub_26F3ACE98(*(v0 + 16), *(v0 + 24));
  sub_26F3ACE98(*(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

void sub_26F42D980(char *a2@<X8>)
{
  _sSo14NSUserDefaultsC13TranslationUIE016translationGroupB0ABvgZ_0();
  v4 = v3;
  v5 = sub_26F49F898();
  v6 = [v4 integerForKey_];

  if (v6 >= 4)
  {
    v7 = 3;
  }

  else
  {
    v7 = 3 - v6;
  }

  *a2 = v7;
}

unint64_t sub_26F42DA04(__n128 a1)
{
  result = qword_280F65690;
  if (!qword_280F65690)
  {
    sub_26F49FE28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F65690);
  }

  return result;
}

unint64_t sub_26F42DA5C()
{
  result = qword_280F656C0;
  if (!qword_280F656C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E06E8, &qword_26F4A7D10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F656C0);
  }

  return result;
}

unint64_t sub_26F42DAC4()
{
  result = qword_2806E06F0;
  if (!qword_2806E06F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E06F0);
  }

  return result;
}

uint64_t sub_26F42DB78(uint64_t a1, uint64_t a2)
{
  v4 = sub_26F49DAB8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4, v9);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v7, v15, v4);
    sub_26F435E54(qword_2806E07F0, MEMORY[0x277CC9788], MEMORY[0x277CC97A0]);
    v22 = sub_26F49F868();
    v23 = *v18;
    (*v18)(v7, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_26F42DD8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    for (i = (a2 + 56); ; i += 48)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2);
      if (!v9 && (sub_26F4A0458() & 1) == 0)
      {
        break;
      }

      if (v6)
      {
        v10 = v8 ^ 1;
        if (v7 != (v5 != 0))
        {
          v10 = 1;
        }

        if (v10)
        {
          return 0;
        }
      }

      else if (v8)
      {
        return 0;
      }

      v3 += 48;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_26F42DE5C(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      LOBYTE(v4) = 1;
      return v4 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v4 = v12 - 4;
        v13 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x274390F80](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v4 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v14 = *(v3 + 8 * v12);

          if (!v11)
          {
LABEL_24:
            if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v15 = *(a2 + 8 * v12);

            goto LABEL_26;
          }
        }

        v15 = MEMORY[0x274390F80](v12 - 4, a2);
LABEL_26:
        LOBYTE(v4) = MEMORY[0x27438E800](v14 + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel_locale, v15 + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel_locale);

        if (v4)
        {
          ++v12;
          if (v13 != v5)
          {
            continue;
          }
        }

        return v4 & 1;
      }
    }

    v16 = (v3 + 32);
    v17 = (a2 + 32);
    v18 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v19 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v20 = v5 - 1;
    while (1)
    {
      if (!v18)
      {
        goto LABEL_40;
      }

      if (!v19)
      {
        break;
      }

      v21 = *v16++;
      a2 = v21;
      v22 = *v17++;
      v3 = v22;
      v23 = OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel_locale;

      v4 = MEMORY[0x27438E800](a2 + v23, v22 + v23);

      v25 = v20-- != 0;
      if (v4)
      {
        --v19;
        --v18;
        if (v25)
        {
          continue;
        }
      }

      return v4 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_26F4A00A8();
  }

  result = sub_26F4A00A8();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  LOBYTE(v4) = 0;
  return v4 & 1;
}

uint64_t sub_26F42E0B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedTranslations.Translation(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      return 1;
    }

    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_26F435F94(v13, v10, type metadata accessor for SharedTranslations.Translation);
      sub_26F435F94(v14, v6, type metadata accessor for SharedTranslations.Translation);
      if ((MEMORY[0x27438E800](v10, v6) & 1) == 0 || (MEMORY[0x27438E800](&v10[v4[5]], &v6[v4[5]]) & 1) == 0)
      {
        break;
      }

      v16 = v4[6];
      v17 = *&v10[v16];
      v18 = *&v10[v16 + 8];
      v19 = &v6[v16];
      v20 = v17 == *v19 && v18 == *(v19 + 1);
      if (!v20 && (sub_26F4A0458() & 1) == 0)
      {
        break;
      }

      v21 = v4[7];
      v22 = *&v10[v21];
      v23 = *&v10[v21 + 8];
      v24 = &v6[v21];
      if (v22 == *v24 && v23 == *(v24 + 1))
      {
        sub_26F435FFC(v6, type metadata accessor for SharedTranslations.Translation);
        sub_26F435FFC(v10, type metadata accessor for SharedTranslations.Translation);
      }

      else
      {
        v26 = sub_26F4A0458();
        sub_26F435FFC(v6, type metadata accessor for SharedTranslations.Translation);
        sub_26F435FFC(v10, type metadata accessor for SharedTranslations.Translation);
        if ((v26 & 1) == 0)
        {
          return 0;
        }
      }

      v14 += v15;
      v13 += v15;
      if (!--v11)
      {
        return 1;
      }
    }

    sub_26F435FFC(v6, type metadata accessor for SharedTranslations.Translation);
    sub_26F435FFC(v10, type metadata accessor for SharedTranslations.Translation);
  }

  return 0;
}

uint64_t sub_26F42E338(uint64_t a1, uint64_t a2)
{
  v34 = a1;
  v3 = sub_26F49DAB8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v29 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFC28, &qword_26F4A8110);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  v9 = type metadata accessor for LanguageOption(0) - 8;
  MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - v13;
  v15 = *(a2 + 16);
  if (!v15)
  {
    return 0;
  }

  v16 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v17 = *(v11 + 72);
  v18 = (v4 + 48);
  v31 = (v4 + 8);
  v27 = (v4 + 32);
  v28 = v6;
  v32 = v17;
  v33 = v12;
  while (1)
  {
    sub_26F435F94(v16, v14, type metadata accessor for LanguageOption);
    v19 = *(v6 + 48);
    sub_26F435F94(v14, v8, type metadata accessor for LanguageOption);
    sub_26F435F94(v34, &v8[v19], type metadata accessor for LanguageOption);
    v20 = *v18;
    v21 = (*v18)(v8, 2, v3);
    if (v21)
    {
      break;
    }

    v22 = v33;
    sub_26F435F94(v8, v33, type metadata accessor for LanguageOption);
    if (v20(&v8[v19], 2, v3))
    {
      (*v31)(v22, v3);
      v17 = v32;
      goto LABEL_4;
    }

    v23 = v29;
    (*v27)(v29, &v8[v19], v3);
    v30 = MEMORY[0x27438E800](v22, v23);
    v24 = *v31;
    v25 = v23;
    v6 = v28;
    (*v31)(v25, v3);
    v24(v22, v3);
    sub_26F435FFC(v8, type metadata accessor for LanguageOption);
    sub_26F435FFC(v14, type metadata accessor for LanguageOption);
    v17 = v32;
    if (v30)
    {
      return 1;
    }

LABEL_5:
    v16 += v17;
    if (!--v15)
    {
      return 0;
    }
  }

  if (v21 != 1)
  {
    if (v20(&v8[v19], 2, v3) == 2)
    {
      goto LABEL_15;
    }

    goto LABEL_4;
  }

  if (v20(&v8[v19], 2, v3) != 1)
  {
LABEL_4:
    sub_26F3B6B4C(v8, &qword_2806DFC28, &qword_26F4A8110);
    sub_26F435FFC(v14, type metadata accessor for LanguageOption);
    goto LABEL_5;
  }

LABEL_15:
  sub_26F435FFC(v8, type metadata accessor for LanguageOption);
  sub_26F435FFC(v14, type metadata accessor for LanguageOption);
  return 1;
}

uint64_t sub_26F42E750(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedTranslations.Translation(0);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v10 = *(v5 + 72);
    do
    {
      sub_26F435F94(v9, v7, type metadata accessor for SharedTranslations.Translation);
      if (MEMORY[0x27438E800](v7, a1) & 1) != 0 && (MEMORY[0x27438E800](&v7[v4[5]], a1 + v4[5]) & 1) != 0 && ((v11 = v4[6], v12 = *&v7[v11], v13 = *&v7[v11 + 8], v14 = (a1 + v11), v12 == *v14) ? (v15 = v13 == v14[1]) : (v15 = 0), v15 || (sub_26F4A0458()))
      {
        v16 = v4[7];
        v17 = *&v7[v16];
        v18 = *&v7[v16 + 8];
        v19 = (a1 + v16);
        if (v17 == *v19 && v18 == v19[1])
        {
          sub_26F435FFC(v7, type metadata accessor for SharedTranslations.Translation);
          return 1;
        }

        v21 = sub_26F4A0458();
        sub_26F435FFC(v7, type metadata accessor for SharedTranslations.Translation);
        if (v21)
        {
          return 1;
        }
      }

      else
      {
        sub_26F435FFC(v7, type metadata accessor for SharedTranslations.Translation);
      }

      v9 += v10;
      --v8;
    }

    while (v8);
  }

  return 0;
}

id sub_26F42E988()
{
  v1 = OBJC_IVAR____TtC13TranslationUI18SharedTranslations_presentedItemOperationQueue;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_26F42EA3C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13TranslationUI18SharedTranslations_presentedItemOperationQueue;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_26F42EA94(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC13TranslationUI18SharedTranslations_presentedItemOperationQueue;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t sub_26F42EC90@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13TranslationUI18SharedTranslations_presentedItemURL;
  swift_beginAccess();
  return sub_26F42ECE8(v1 + v3, a1);
}

uint64_t sub_26F42ECE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF2A0, &qword_26F4A7190);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F42EE98(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13TranslationUI18SharedTranslations_presentedItemURL;
  swift_beginAccess();
  sub_26F42EEF8(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_26F42EEF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF2A0, &qword_26F4A7190);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F42EF68(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF2A0, &qword_26F4A7190);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_26F42ECE8(a1, &v10 - v5);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC13TranslationUI18SharedTranslations_presentedItemURL;
  swift_beginAccess();
  sub_26F42EEF8(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t sub_26F42F088(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC13TranslationUI18SharedTranslations_translations;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

double sub_26F42F0F0()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_26F42F138(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13TranslationUI18SharedTranslations_translations;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_26F42F1F0@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC13TranslationUI18SharedTranslations_presentedItemChangedAction);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_26F435DA4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_26F3ACF68(v4, v5);
}

uint64_t sub_26F42F290(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_26F435D9C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC13TranslationUI18SharedTranslations_presentedItemChangedAction);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_26F3ACF68(v3, v4);
  return sub_26F3ACE98(v8, v9);
}

uint64_t sub_26F42F358()
{
  v1 = (v0 + OBJC_IVAR____TtC13TranslationUI18SharedTranslations_presentedItemChangedAction);
  swift_beginAccess();
  v2 = *v1;
  sub_26F3ACF68(*v1, v1[1]);
  return v2;
}

uint64_t sub_26F42F3B4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC13TranslationUI18SharedTranslations_presentedItemChangedAction);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_26F3ACE98(v6, v7);
}

char *static SharedTranslations.translationGroupSharedTranslations()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF2A0, &qword_26F4A7190);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v25 - v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  v15 = [objc_opt_self() defaultManager];
  v16 = sub_26F49F898();
  v17 = [v15 containerURLForSecurityApplicationGroupIdentifier_];

  if (v17)
  {
    sub_26F49D848();

    v18 = sub_26F49D878();
    (*(*(v18 - 8) + 56))(v11, 0, 1, v18);
  }

  else
  {
    v18 = sub_26F49D878();
    (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
  }

  sub_26F42F7E8(v11, v14);
  sub_26F42ECE8(v14, v5);
  sub_26F49D878();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  if (v20(v5, 1, v18) == 1)
  {
    sub_26F3B6B4C(v5, &qword_2806DF2A0, &qword_26F4A7190);
    v21 = 1;
  }

  else
  {
    sub_26F49D838();
    (*(v19 + 8))(v5, v18);
    v21 = 0;
  }

  (*(v19 + 56))(v8, v21, 1, v18);
  sub_26F42ECE8(v8, v2);
  result = (v20)(v2, 1, v18);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v23 = objc_allocWithZone(type metadata accessor for SharedTranslations(0));
    v24 = SharedTranslations.init(_:)(v2);
    sub_26F3B6B4C(v8, &qword_2806DF2A0, &qword_26F4A7190);
    sub_26F3B6B4C(v14, &qword_2806DF2A0, &qword_26F4A7190);
    return v24;
  }

  return result;
}

uint64_t sub_26F42F7E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF2A0, &qword_26F4A7190);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *SharedTranslations.init(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  MEMORY[0x28223BE20](v3 - 8);
  v33 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF2A0, &qword_26F4A7190);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v33 - v6;
  v8 = OBJC_IVAR____TtC13TranslationUI18SharedTranslations_presentedItemOperationQueue;
  *&v1[v8] = [objc_opt_self() mainQueue];
  v9 = OBJC_IVAR____TtC13TranslationUI18SharedTranslations_presentedItemURL;
  v10 = sub_26F49D878();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v12(&v1[v9], 1, 1, v10);
  *&v1[OBJC_IVAR____TtC13TranslationUI18SharedTranslations_translations] = MEMORY[0x277D84F90];
  v13 = &v1[OBJC_IVAR____TtC13TranslationUI18SharedTranslations_presentedItemChangedAction];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = OBJC_IVAR____TtC13TranslationUI18SharedTranslations_fileAccessQueue;
  v15 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  [v15 setQualityOfService_];
  *&v1[v14] = v15;
  v16 = type metadata accessor for SharedTranslations(0);
  v34.receiver = v1;
  v34.super_class = v16;
  v17 = objc_msgSendSuper2(&v34, sel_init);
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 defaultManager];
  sub_26F49D858();
  v21 = sub_26F49F898();

  LOBYTE(v17) = [v20 fileExistsAtPath_];

  if ((v17 & 1) == 0)
  {
    if (qword_280F657B8 != -1)
    {
      swift_once();
    }

    v22 = sub_26F49DCA8();
    __swift_project_value_buffer(v22, qword_280F67DE0);
    v23 = sub_26F49DC88();
    v24 = sub_26F49FDB8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_26F39E000, v23, v24, "Shared translations file doesn't exist, creating empty file", v25, 2u);
      MEMORY[0x274391F70](v25, -1, -1);
    }

    sub_26F43316C();
  }

  v26 = objc_opt_self();
  v27 = v19;
  [v26 addFilePresenter_];
  (*(v11 + 16))(v7, a1, v10);
  v12(v7, 0, 1, v10);
  v28 = OBJC_IVAR____TtC13TranslationUI18SharedTranslations_presentedItemURL;
  swift_beginAccess();
  sub_26F42EEF8(v7, v27 + v28);
  swift_endAccess();
  v29 = sub_26F49FC08();
  v30 = v33;
  (*(*(v29 - 8) + 56))(v33, 1, 1, v29);
  v31 = swift_allocObject();
  v31[2] = 0;
  v31[3] = 0;
  v31[4] = v27;
  sub_26F40570C(0, 0, v30, &unk_26F4A7E68, v31);

  (*(v11 + 8))(a1, v10);
  return v27;
}

uint64_t sub_26F42FD10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF2A0, &qword_26F4A7190);
  v4[14] = swift_task_alloc();
  v5 = sub_26F49D878();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F42FE08, 0, 0);
}

uint64_t sub_26F42FE08()
{
  v1 = v0[15];
  v2 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = OBJC_IVAR____TtC13TranslationUI18SharedTranslations_presentedItemURL;
  swift_beginAccess();
  sub_26F42ECE8(v4 + v5, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_26F3B6B4C(v0[14], &qword_2806DF2A0, &qword_26F4A7190);

    v6 = v0[1];

    return v6();
  }

  else
  {
    (*(v0[16] + 32))(v0[17], v0[14], v0[15]);

    return MEMORY[0x2822009F8](sub_26F42FF48, 0, 0);
  }
}

uint64_t sub_26F42FF48()
{
  v1 = v0[17];
  v2 = v0[13];
  v0[2] = v0;
  v0[3] = sub_26F42FFF0;
  v3 = swift_continuation_init();
  sub_26F4308F0(v3, v1, v2);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26F42FFF0()
{

  return MEMORY[0x2822009F8](sub_26F436088, 0, 0);
}

id SharedTranslations.__deallocating_deinit()
{
  sub_26F4301E8();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharedTranslations(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26F4301E8()
{
  v1 = sub_26F49F698();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26F49F6C8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F3B0C24(0, &qword_280F65680, 0x277D85C78);
  v9 = sub_26F49FE58();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_26F43508C;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26F3B3308;
  aBlock[3] = &block_descriptor_7;
  v11 = _Block_copy(aBlock);
  v12 = v0;

  sub_26F49F6B8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_26F435E54(&qword_280F65710, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0720, &unk_26F4A7E70);
  sub_26F4350EC();
  sub_26F4A0058();
  MEMORY[0x274390C60](0, v8, v4, v11);
  _Block_release(v11);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_26F4304AC()
{
  v1[13] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF2A0, &qword_26F4A7190);
  v1[14] = swift_task_alloc();
  v2 = sub_26F49D878();
  v1[15] = v2;
  v1[16] = *(v2 - 8);
  v1[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F4305A4, 0, 0);
}

uint64_t sub_26F4305A4()
{
  v1 = v0[15];
  v2 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = OBJC_IVAR____TtC13TranslationUI18SharedTranslations_presentedItemURL;
  swift_beginAccess();
  sub_26F42ECE8(v4 + v5, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_26F3B6B4C(v0[14], &qword_2806DF2A0, &qword_26F4A7190);

    v6 = v0[1];

    return v6();
  }

  else
  {
    (*(v0[16] + 32))(v0[17], v0[14], v0[15]);

    return MEMORY[0x2822009F8](sub_26F4306E4, 0, 0);
  }
}

uint64_t sub_26F4306E4()
{
  v1 = v0[17];
  v2 = v0[13];
  v0[2] = v0;
  v0[3] = sub_26F43078C;
  v3 = swift_continuation_init();
  sub_26F4308F0(v3, v1, v2);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26F43078C()
{

  return MEMORY[0x2822009F8](sub_26F43086C, 0, 0);
}

uint64_t sub_26F43086C()
{
  (*(v0[16] + 8))(v0[17], v0[15]);

  v1 = v0[1];

  return v1();
}

void sub_26F4308F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_opt_self();
  v6 = sub_26F49D828();
  v7 = [v5 readingIntentWithURL:v6 options:1];

  v8 = [objc_allocWithZone(MEMORY[0x277CCA9E8]) initWithFilePresenter_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0730, &unk_26F4A7E80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_26F4A7E40;
  *(v9 + 32) = v7;
  sub_26F3B0C24(0, &qword_280F65668, 0x277CCA9E0);
  v10 = v7;
  v11 = sub_26F49FAD8();

  v12 = *(a3 + OBJC_IVAR____TtC13TranslationUI18SharedTranslations_fileAccessQueue);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a1;
  v14[4] = v10;
  v17[4] = sub_26F435F88;
  v17[5] = v14;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_26F3B3644;
  v17[3] = &block_descriptor_61_0;
  v15 = _Block_copy(v17);
  v16 = v10;

  [v8 coordinateAccessWithIntents:v11 queue:v12 byAccessor:v15];
  _Block_release(v15);
}

void sub_26F430AFC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_26F49D878();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    swift_continuation_throwingResume();
    return;
  }

  v11 = Strong;
  if (a1)
  {
    if (qword_280F657B8 != -1)
    {
      swift_once();
    }

    v12 = sub_26F49DCA8();
    __swift_project_value_buffer(v12, qword_280F67DE0);
    v13 = a1;
    v14 = sub_26F49DC88();
    v15 = sub_26F49FDD8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = sub_26F49D7E8();
      *(v16 + 4) = v18;
      *v17 = v18;
      _os_log_impl(&dword_26F39E000, v14, v15, "Failed to load shared translations from disk: %@", v16, 0xCu);
      sub_26F3B6B4C(v17, &qword_2806DF258, &qword_26F4A6220);
      MEMORY[0x274391F70](v17, -1, -1);
      MEMORY[0x274391F70](v16, -1, -1);
    }

    goto LABEL_21;
  }

  v19 = [a4 URL];
  sub_26F49D848();

  v20 = sub_26F49D888();
  v22 = v21;
  (*(v7 + 8))(v9, v6);
  sub_26F49D6B8();
  swift_allocObject();
  sub_26F49D6A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E07E0, &unk_26F4A8100);
  sub_26F435EA4(&qword_280F656E0, &qword_280F65AB8, &protocol conformance descriptor for SharedTranslations.Translation, MEMORY[0x277D83978]);
  sub_26F49D698();
  v23 = v35[1];
  v24 = OBJC_IVAR____TtC13TranslationUI18SharedTranslations_translations;
  swift_beginAccess();

  v26 = sub_26F42E0B4(v25, v23);

  if (v26)
  {

    if (qword_280F657B8 != -1)
    {
      swift_once();
    }

    v27 = sub_26F49DCA8();
    __swift_project_value_buffer(v27, qword_280F67DE0);
    v14 = sub_26F49DC88();
    v28 = sub_26F49FDB8();
    if (!os_log_type_enabled(v14, v28))
    {
      goto LABEL_18;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_26F39E000, v14, v28, "Did not load translations from disk because no changes", v29, 2u);
    v30 = v29;
  }

  else
  {
    *&v11[v24] = v23;

    if (qword_280F657B8 != -1)
    {
      swift_once();
    }

    v31 = sub_26F49DCA8();
    __swift_project_value_buffer(v31, qword_280F67DE0);
    v32 = v11;
    v14 = sub_26F49DC88();
    v33 = sub_26F49FDB8();
    if (!os_log_type_enabled(v14, v33))
    {

      goto LABEL_20;
    }

    v34 = swift_slowAlloc();
    *v34 = 134217984;
    *(v34 + 4) = *(*&v11[v24] + 16);

    _os_log_impl(&dword_26F39E000, v14, v33, "Loaded %ld translations from disk", v34, 0xCu);
    v30 = v34;
  }

  MEMORY[0x274391F70](v30, -1, -1);
LABEL_18:

LABEL_20:
  sub_26F3C8F70(v20, v22);
LABEL_21:

  swift_continuation_throwingResume();
}

uint64_t sub_26F431164(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SharedTranslations.Translation(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF2A0, &qword_26F4A7190);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v34 - v8;
  v10 = sub_26F49D878();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC13TranslationUI18SharedTranslations_presentedItemURL;
  swift_beginAccess();
  sub_26F42ECE8(v2 + v14, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_26F3B6B4C(v9, &qword_2806DF2A0, &qword_26F4A7190);
  }

  (*(v11 + 32))(v13, v9, v10);
  v37 = a1;
  v16 = objc_opt_self();
  v17 = sub_26F49D828();
  v38 = v10;
  v18 = v17;
  v19 = [v16 readingIntentWithURL:v17 options:0];

  v20 = sub_26F49D828();
  v21 = [v16 writingIntentWithURL:v20 options:4];

  v36 = [objc_allocWithZone(MEMORY[0x277CCA9E8]) initWithFilePresenter_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0730, &unk_26F4A7E80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_26F4A7E50;
  *(v22 + 32) = v19;
  *(v22 + 40) = v21;
  sub_26F3B0C24(0, &qword_280F65668, 0x277CCA9E0);
  v23 = v19;
  v35 = v11;
  v24 = v23;
  v25 = v21;
  v26 = sub_26F49FAD8();

  v34 = *(v2 + OBJC_IVAR____TtC13TranslationUI18SharedTranslations_fileAccessQueue);
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_26F435F94(v37, &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharedTranslations.Translation);
  v28 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = v27;
  *(v29 + 24) = v24;
  sub_26F435170(&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28);
  *(v29 + ((v6 + v28 + 7) & 0xFFFFFFFFFFFFFFF8)) = v25;
  aBlock[4] = sub_26F4351D4;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26F3B3644;
  aBlock[3] = &block_descriptor_13;
  v30 = _Block_copy(aBlock);
  v31 = v24;
  v32 = v25;

  v33 = v36;
  [v36 coordinateAccessWithIntents:v26 queue:v34 byAccessor:v30];
  _Block_release(v30);

  return (*(v35 + 8))(v13, v38);
}

void sub_26F4315F0(void *a1, uint64_t a2, void *a3, unint64_t a4, void *a5)
{
  v72 = a5;
  v74 = a4;
  v7 = sub_26F49F698();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v70 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_26F49F6C8();
  v69 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v68 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SharedTranslations.Translation(0);
  v73 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26F49D878();
  v75 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v60 - v18;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    if (a1)
    {
      if (qword_280F657B8 != -1)
      {
        swift_once();
      }

      v22 = sub_26F49DCA8();
      __swift_project_value_buffer(v22, qword_280F67DE0);
      v23 = a1;
      v24 = sub_26F49DC88();
      v25 = sub_26F49FDD8();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *v26 = 138412290;
        v28 = sub_26F49D7E8();
        *(v26 + 4) = v28;
        *v27 = v28;
        _os_log_impl(&dword_26F39E000, v24, v25, "Failed to write translations to disk: %@", v26, 0xCu);
        sub_26F3B6B4C(v27, &qword_2806DF258, &qword_26F4A6220);
        MEMORY[0x274391F70](v27, -1, -1);
        MEMORY[0x274391F70](v26, -1, -1);
      }
    }

    else
    {
      v65 = v8;
      v66 = v7;
      v29 = [a3 URL];
      sub_26F49D848();

      v30 = sub_26F49D888();
      v32 = v31;
      v67 = *(v75 + 8);
      v67(v19, v14);
      sub_26F49D6B8();
      swift_allocObject();
      v33 = sub_26F49D6A8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E07E0, &unk_26F4A8100);
      sub_26F435EA4(&qword_280F656E0, &qword_280F65AB8, &protocol conformance descriptor for SharedTranslations.Translation, MEMORY[0x277D83978]);
      sub_26F49D698();
      v64 = v33;
      v59 = aBlock[0];
      if (qword_280F657B8 != -1)
      {
        swift_once();
      }

      v40 = sub_26F49DCA8();
      __swift_project_value_buffer(v40, qword_280F67DE0);
      v41 = v21;
      v42 = sub_26F49DC88();
      v63 = sub_26F49FDB8();
      if (os_log_type_enabled(v42, v63))
      {
        v43 = swift_slowAlloc();
        v61 = v42;
        v44 = v43;
        *v43 = 134217984;
        v62 = v30;
        v45 = OBJC_IVAR____TtC13TranslationUI18SharedTranslations_translations;
        swift_beginAccess();
        *(v44 + 1) = *(*&v41[v45] + 16);

        v46 = v61;
        _os_log_impl(&dword_26F39E000, v61, v63, "Read %ld translations from disk", v44, 0xCu);
        MEMORY[0x274391F70](v44, -1, -1);

        sub_26F3C8F70(v62, v32);
      }

      else
      {

        sub_26F3C8F70(v30, v32);
      }

      sub_26F435F94(v74, v13, type metadata accessor for SharedTranslations.Translation);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v59 = sub_26F4463B0(0, v59[2] + 1, 1, v59);
      }

      v35 = v59[2];
      v34 = v59[3];
      if (v35 >= v34 >> 1)
      {
        v59 = sub_26F4463B0((v34 > 1), v35 + 1, 1, v59);
      }

      v59[2] = v35 + 1;
      sub_26F435170(v13, v59 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v35);
      sub_26F49D728();
      swift_allocObject();
      sub_26F49D718();
      aBlock[0] = v59;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E07E0, &unk_26F4A8100);
      sub_26F435EA4(&qword_280F656E8, &qword_280F65AC0, &protocol conformance descriptor for SharedTranslations.Translation, MEMORY[0x277D83948]);
      v36 = sub_26F49D708();
      v38 = v37;

      v39 = [v72 URL];
      sub_26F49D848();

      sub_26F49D8A8();
      v67(v16, v14);
      if (qword_280F657B8 != -1)
      {
        swift_once();
      }

      v47 = sub_26F49DCA8();
      __swift_project_value_buffer(v47, qword_280F67DE0);

      v48 = sub_26F49DC88();
      v49 = sub_26F49FDF8();
      v50 = os_log_type_enabled(v48, v49);
      v74 = v38;
      if (v50)
      {
        v51 = swift_slowAlloc();
        *v51 = 134217984;
        *(v51 + 4) = v59[2];

        _os_log_impl(&dword_26F39E000, v48, v49, "Wrote total of %ld (already on disk + 1) shared translations to disk", v51, 0xCu);
        MEMORY[0x274391F70](v51, -1, -1);
      }

      else
      {
      }

      sub_26F3B0C24(0, &qword_280F65680, 0x277D85C78);
      v52 = sub_26F49FE58();
      v53 = swift_allocObject();
      *(v53 + 16) = v59;
      *(v53 + 24) = v21;
      aBlock[4] = sub_26F435E9C;
      aBlock[5] = v53;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_26F3B3308;
      aBlock[3] = &block_descriptor_54;
      v54 = _Block_copy(aBlock);
      v55 = v21;

      v56 = v68;
      sub_26F49F6B8();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_26F435E54(&qword_280F65710, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0720, &unk_26F4A7E70);
      sub_26F4350EC();
      v57 = v70;
      v58 = v66;
      sub_26F4A0058();
      MEMORY[0x274390C60](0, v56, v57, v54);
      _Block_release(v54);

      sub_26F3C8F70(v36, v74);

      (*(v65 + 8))(v57, v58);
      (*(v69 + 8))(v56, v71);
    }
  }
}

uint64_t sub_26F43232C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC13TranslationUI18SharedTranslations_translations;
  swift_beginAccess();
  v5 = *(a2 + v4);

  v6 = sub_26F42E0B4(a1, v5);

  if ((v6 & 1) == 0)
  {
    *(a2 + v4) = a1;
  }

  return result;
}

uint64_t sub_26F4323C4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13TranslationUI18SharedTranslations_translations;
  swift_beginAccess();
  v4 = *(v1 + v3);

  LOBYTE(a1) = sub_26F42E750(a1, v4);

  return a1 & 1;
}

uint64_t sub_26F432438()
{
  v1[8] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF2A0, &qword_26F4A7190);
  v1[9] = swift_task_alloc();
  v2 = sub_26F49D878();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F432530, 0, 0);
}

uint64_t sub_26F432530()
{
  if (qword_280F657B8 != -1)
  {
    swift_once();
  }

  v1 = sub_26F49DCA8();
  __swift_project_value_buffer(v1, qword_280F67DE0);
  v2 = sub_26F49DC88();
  v3 = sub_26F49FDF8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_26F39E000, v2, v3, "Clearing loaded translations then disk", v4, 2u);
    MEMORY[0x274391F70](v4, -1, -1);
  }

  v5 = v0[10];
  v6 = v0[11];
  v8 = v0[8];
  v7 = v0[9];

  v9 = OBJC_IVAR____TtC13TranslationUI18SharedTranslations_translations;
  swift_beginAccess();
  *(v8 + v9) = MEMORY[0x277D84F90];

  v10 = OBJC_IVAR____TtC13TranslationUI18SharedTranslations_presentedItemURL;
  swift_beginAccess();
  sub_26F42ECE8(v8 + v10, v7);
  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    sub_26F3B6B4C(v0[9], &qword_2806DF2A0, &qword_26F4A7190);

    v11 = v0[1];

    return v11();
  }

  else
  {
    v13 = v0[12];
    v14 = v0[8];
    (*(v0[11] + 32))(v13, v0[9], v0[10]);
    v15 = swift_task_alloc();
    v0[13] = v15;
    *(v15 + 16) = v13;
    *(v15 + 24) = v14;
    v16 = swift_task_alloc();
    v0[14] = v16;
    *v16 = v0;
    v16[1] = sub_26F4327E8;
    v17 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822007B8](v16, 0, 0, 0x7369447261656C63, 0xEB0000000029286BLL, sub_26F435274, v15, v17);
  }
}

uint64_t sub_26F4327E8()
{

  return MEMORY[0x2822009F8](sub_26F432900, 0, 0);
}

uint64_t sub_26F432900()
{
  (*(v0[11] + 8))(v0[12], v0[10]);

  v1 = v0[1];

  return v1();
}

void sub_26F432984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E07D8, &qword_26F4A80F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = aBlock - v8;
  v10 = objc_opt_self();
  v11 = sub_26F49D828();
  v12 = [v10 writingIntentWithURL:v11 options:4];

  v13 = [objc_allocWithZone(MEMORY[0x277CCA9E8]) initWithFilePresenter_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0730, &unk_26F4A7E80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_26F4A7E40;
  *(v14 + 32) = v12;
  sub_26F3B0C24(0, &qword_280F65668, 0x277CCA9E0);
  v15 = v12;
  v16 = sub_26F49FAD8();

  v17 = *(a3 + OBJC_IVAR____TtC13TranslationUI18SharedTranslations_fileAccessQueue);
  (*(v6 + 16))(v9, a1, v5);
  v18 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v19 = swift_allocObject();
  (*(v6 + 32))(v19 + v18, v9, v5);
  *(v19 + ((v7 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;
  aBlock[4] = sub_26F435DAC;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26F3B3644;
  aBlock[3] = &block_descriptor_48;
  v20 = _Block_copy(aBlock);
  v21 = v15;

  [v13 coordinateAccessWithIntents:v16 queue:v17 byAccessor:v20];
  _Block_release(v20);
}

uint64_t sub_26F432C4C(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_26F49D878();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (qword_280F657B8 != -1)
    {
      swift_once();
    }

    v10 = sub_26F49DCA8();
    __swift_project_value_buffer(v10, qword_280F67DE0);
    v11 = a1;
    v12 = sub_26F49DC88();
    v13 = sub_26F49FDD8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = sub_26F49D7E8();
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&dword_26F39E000, v12, v13, "Failed to remove translations from disk: %@", v14, 0xCu);
      sub_26F3B6B4C(v15, &qword_2806DF258, &qword_26F4A6220);
      MEMORY[0x274391F70](v15, -1, -1);
      MEMORY[0x274391F70](v14, -1, -1);
    }
  }

  else
  {
    v17 = v7;
    sub_26F49D728();
    swift_allocObject();
    sub_26F49D718();
    v27[1] = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E07E0, &unk_26F4A8100);
    sub_26F435EA4(&qword_280F656E8, &qword_280F65AC0, &protocol conformance descriptor for SharedTranslations.Translation, MEMORY[0x277D83948]);
    v18 = sub_26F49D708();
    v20 = v19;
    v21 = [a3 URL];
    sub_26F49D848();

    sub_26F49D8A8();
    (*(v6 + 8))(v9, v17);
    if (qword_280F657B8 != -1)
    {
      swift_once();
    }

    v22 = sub_26F49DCA8();
    __swift_project_value_buffer(v22, qword_280F67DE0);
    v23 = sub_26F49DC88();
    v24 = sub_26F49FDF8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_26F39E000, v23, v24, "Cleared shared translations from disk", v25, 2u);
      MEMORY[0x274391F70](v25, -1, -1);
    }

    sub_26F3C8F70(v18, v20);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E07D8, &qword_26F4A80F8);
  return sub_26F49FB88();
}

void sub_26F43316C()
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v1 = [objc_allocWithZone(MEMORY[0x277CCA9E8]) initWithFilePresenter_];
  v2 = sub_26F49D828();
  aBlock[4] = sub_26F433708;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26F43370C;
  aBlock[3] = &block_descriptor_64;
  v3 = _Block_copy(aBlock);

  aBlock[0] = 0;
  [v1 coordinateWritingItemAtURL:v2 options:0 error:aBlock byAccessor:v3];
  _Block_release(v3);

  v4 = aBlock[0];
  v5 = aBlock[0];
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_4;
  }

  if (!v5)
  {
    goto LABEL_8;
  }

  if (qword_280F657B8 != -1)
  {
    goto LABEL_10;
  }

LABEL_4:
  v6 = sub_26F49DCA8();
  __swift_project_value_buffer(v6, qword_280F67DE0);
  v7 = v5;
  v8 = sub_26F49DC88();
  v9 = sub_26F49FDD8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v4;
    v12 = v7;
    _os_log_impl(&dword_26F39E000, v8, v9, "Failed to create empty SharedFavorites.json file: %@", v10, 0xCu);
    sub_26F3B6B4C(v11, &qword_2806DF258, &qword_26F4A6220);
    MEMORY[0x274391F70](v11, -1, -1);
    MEMORY[0x274391F70](v10, -1, -1);
    v7 = v8;
    v13 = v1;
    v8 = v12;
    v1 = v12;
  }

  else
  {
    v13 = v7;
  }

LABEL_8:
}

uint64_t sub_26F433414(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26F3CF3AC;

  return sub_26F42FD10(a1, v4, v5, v6);
}

uint64_t sub_26F4334C8(uint64_t a1)
{
  sub_26F49D728();
  swift_allocObject();
  sub_26F49D718();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E07E0, &unk_26F4A8100);
  sub_26F435EA4(&qword_280F656E8, &qword_280F65AC0, &protocol conformance descriptor for SharedTranslations.Translation, MEMORY[0x277D83948]);
  v1 = sub_26F49D708();
  v3 = v2;
  sub_26F49D8A8();
  sub_26F3C8F70(v1, v3);
}

uint64_t sub_26F43370C(uint64_t a1, uint64_t a2)
{
  v3 = sub_26F49D878();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_26F49D848();
  v7(v6);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_26F4337F0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  if (qword_280F657B8 != -1)
  {
    swift_once();
  }

  v5 = sub_26F49DCA8();
  __swift_project_value_buffer(v5, qword_280F67DE0);
  v6 = sub_26F49DC88();
  v7 = sub_26F49FDB8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_26F39E000, v6, v7, "File update detected", v8, 2u);
    MEMORY[0x274391F70](v8, -1, -1);
  }

  v9 = sub_26F49FC08();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v1;
  v11 = v1;
  sub_26F40570C(0, 0, v4, &unk_26F4A7E98, v10);
}

uint64_t sub_26F4339B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF2A0, &qword_26F4A7190);
  v4[17] = swift_task_alloc();
  v5 = sub_26F49D878();
  v4[18] = v5;
  v4[19] = *(v5 - 8);
  v4[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F433AAC, 0, 0);
}

uint64_t sub_26F433AAC()
{
  v1 = v0[18];
  v2 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = OBJC_IVAR____TtC13TranslationUI18SharedTranslations_presentedItemURL;
  swift_beginAccess();
  sub_26F42ECE8(v4 + v5, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_26F3B6B4C(v0[17], &qword_2806DF2A0, &qword_26F4A7190);
    v6 = v0[16] + OBJC_IVAR____TtC13TranslationUI18SharedTranslations_presentedItemChangedAction;
    swift_beginAccess();
    v7 = *v6;
    if (*v6)
    {
      v8 = *(v6 + 8);

      v7(v9);
      sub_26F3ACE98(v7, v8);
    }

    v10 = v0[1];

    return v10();
  }

  else
  {
    (*(v0[19] + 32))(v0[20], v0[17], v0[18]);

    return MEMORY[0x2822009F8](sub_26F433C38, 0, 0);
  }
}

uint64_t sub_26F433C38()
{
  v1 = v0[20];
  v2 = v0[16];
  v0[2] = v0;
  v0[3] = sub_26F433CE0;
  v3 = swift_continuation_init();
  sub_26F4308F0(v3, v1, v2);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26F433CE0()
{

  return MEMORY[0x2822009F8](sub_26F433DC0, 0, 0);
}

uint64_t sub_26F433DC0()
{
  (*(v0[19] + 8))(v0[20], v0[18]);
  v1 = v0[16] + OBJC_IVAR____TtC13TranslationUI18SharedTranslations_presentedItemChangedAction;
  swift_beginAccess();
  v2 = *v1;
  if (*v1)
  {
    v3 = *(v1 + 8);

    v2(v4);
    sub_26F3ACE98(v2, v3);
  }

  v5 = v0[1];

  return v5();
}

id SharedTranslations.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t SharedTranslations.Translation.sourceLocale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26F49DAB8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SharedTranslations.Translation.sourceLocale.setter(uint64_t a1)
{
  v3 = sub_26F49DAB8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SharedTranslations.Translation.targetLocale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SharedTranslations.Translation(0) + 20);
  v4 = sub_26F49DAB8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SharedTranslations.Translation.targetLocale.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SharedTranslations.Translation(0) + 20);
  v4 = sub_26F49DAB8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SharedTranslations.Translation.sourceText.getter()
{
  v1 = *(v0 + *(type metadata accessor for SharedTranslations.Translation(0) + 24));

  return v1;
}

uint64_t SharedTranslations.Translation.sourceText.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SharedTranslations.Translation(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SharedTranslations.Translation.targetText.getter()
{
  v1 = *(v0 + *(type metadata accessor for SharedTranslations.Translation(0) + 28));

  return v1;
}

uint64_t SharedTranslations.Translation.targetText.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SharedTranslations.Translation(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SharedTranslations.Translation.init(sourceLocale:targetLocale:sourceText:targetText:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = sub_26F49DAB8();
  v15 = *(*(v14 - 8) + 32);
  v15(a7, a1, v14);
  v16 = type metadata accessor for SharedTranslations.Translation(0);
  result = (v15)(a7 + v16[5], a2, v14);
  v18 = (a7 + v16[6]);
  *v18 = a3;
  v18[1] = a4;
  v19 = (a7 + v16[7]);
  *v19 = a5;
  v19[1] = a6;
  return result;
}

uint64_t SharedTranslations.Translation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_26F49DAB8();
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v33 - v7;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0740, &qword_26F4A7EA0);
  v36 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v10 = v33 - v9;
  v11 = type metadata accessor for SharedTranslations.Translation(0);
  MEMORY[0x28223BE20](v11);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26F435330();
  v39 = v10;
  v14 = v41;
  sub_26F4A0588();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v15 = v8;
  v34 = v5;
  v17 = v36;
  v16 = v37;
  v41 = v11;
  v18 = v38;
  v45 = 2;
  v19 = sub_26F4A02F8();
  v20 = v41;
  v21 = &v13[*(v41 + 24)];
  *v21 = v19;
  v21[1] = v22;
  v33[1] = v22;
  v44 = 3;
  v23 = sub_26F4A02F8();
  v24 = &v13[*(v20 + 28)];
  *v24 = v23;
  v24[1] = v25;
  v43 = 0;
  v33[0] = 0;
  sub_26F4A02F8();
  v26 = v15;
  sub_26F49D978();
  v27 = v13;
  v28 = v13;
  v29 = v18;
  v30 = *(v16 + 32);
  v30(v28, v26, v29);
  v42 = 1;
  sub_26F4A02F8();
  v31 = v34;
  sub_26F49D978();
  (*(v17 + 8))(v39, v40);
  v30((v27 + *(v41 + 20)), v31, v29);
  sub_26F435F94(v27, v35, type metadata accessor for SharedTranslations.Translation);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_26F435FFC(v27, type metadata accessor for SharedTranslations.Translation);
}

uint64_t SharedTranslations.Translation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0750, &qword_26F4A7EA8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26F435330();
  sub_26F4A0598();
  sub_26F49D988();
  v8[15] = 0;
  sub_26F4A0398();
  if (v1)
  {
    (*(v4 + 8))(v6, v3);
  }

  else
  {

    type metadata accessor for SharedTranslations.Translation(0);
    sub_26F49D988();
    v8[14] = 1;
    sub_26F4A0398();

    v8[13] = 2;
    sub_26F4A0398();
    v8[12] = 3;
    sub_26F4A0398();
    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_26F434A88()
{
  sub_26F4A0528();
  sub_26F49F9A8();

  return sub_26F4A0568();
}

uint64_t sub_26F434B58(uint64_t a1)
{
  sub_26F49F9A8();
}

uint64_t sub_26F434C14(uint64_t a1)
{
  sub_26F4A0528();
  sub_26F49F9A8();

  return sub_26F4A0568();
}

unint64_t sub_26F434CE0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26F435D50(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26F434D10(uint64_t *a1@<X8>)
{
  v2 = 0x6F4C656372756F73;
  v3 = 0x6554656372756F73;
  if (*v1 != 2)
  {
    v3 = 0x6554746567726174;
  }

  if (*v1)
  {
    v2 = 0x6F4C746567726174;
  }

  if (*v1 <= 1u)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  if (*v1 <= 1u)
  {
    v5 = 0xEC000000656C6163;
  }

  else
  {
    v5 = 0xEA00000000007478;
  }

  *a1 = v4;
  a1[1] = v5;
}

uint64_t sub_26F434D9C()
{
  v1 = 0x6F4C656372756F73;
  v2 = 0x6554656372756F73;
  if (*v0 != 2)
  {
    v2 = 0x6554746567726174;
  }

  if (*v0)
  {
    v1 = 0x6F4C746567726174;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_26F434E24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26F435D50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26F434E4C(uint64_t a1)
{
  v2 = sub_26F435330();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26F434E88(uint64_t a1)
{
  v2 = sub_26F435330();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static SharedTranslations.Translation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x27438E800]() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for SharedTranslations.Translation(0);
  if ((MEMORY[0x27438E800](a1 + v4[5], a2 + v4[5]) & 1) == 0)
  {
    return 0;
  }

  v5 = v4[6];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_26F4A0458() & 1) == 0)
  {
    return 0;
  }

  v10 = v4[7];
  v11 = *(a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  if (v11 == *v13 && v12 == v13[1])
  {
    return 1;
  }

  return sub_26F4A0458();
}

uint64_t sub_26F434FC4(uint64_t a1, uint64_t a2, int *a3)
{
  if ((MEMORY[0x27438E800]() & 1) == 0 || (MEMORY[0x27438E800](a1 + a3[5], a2 + a3[5]) & 1) == 0)
  {
    return 0;
  }

  v6 = a3[6];
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_26F4A0458() & 1) == 0)
  {
    return 0;
  }

  v11 = a3[7];
  v12 = *(a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  if (v12 == *v14 && v13 == v14[1])
  {
    return 1;
  }

  return sub_26F4A0458();
}

id sub_26F43508C()
{
  v1 = *(v0 + 16);
  v2 = objc_opt_self();

  return [v2 removeFilePresenter_];
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_26F4350EC()
{
  result = qword_280F656C8;
  if (!qword_280F656C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2806E0720, &unk_26F4A7E70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F656C8);
  }

  return result;
}

uint64_t sub_26F435170(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedTranslations.Translation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_26F4351D4(void *a1)
{
  v3 = *(type metadata accessor for SharedTranslations.Translation(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);

  sub_26F4315F0(a1, v6, v7, v1 + v4, v5);
}

uint64_t sub_26F43527C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26F3CF3AC;

  return sub_26F4339B4(a1, v4, v5, v6);
}

unint64_t sub_26F435330()
{
  result = qword_2806E0748;
  if (!qword_2806E0748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0748);
  }

  return result;
}

void sub_26F43538C(uint64_t a1)
{
  sub_26F435A00(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of SharedTranslations.loadTranslations()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xE8);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26F3CEEAC;

  return v5();
}

uint64_t dispatch thunk of SharedTranslations.clear()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x100);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26F3CF3AC;

  return v5();
}

void sub_26F435A00(uint64_t a1)
{
  if (!qword_280F663B0)
  {
    sub_26F49D878();
    v1 = sub_26F49FFC8();
    if (!v2)
    {
      atomic_store(v1, &qword_280F663B0);
    }
  }
}

uint64_t sub_26F435A80(uint64_t a1)
{
  result = sub_26F49DAB8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SharedTranslations.Translation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SharedTranslations.Translation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26F435C4C()
{
  result = qword_2806E07C0;
  if (!qword_2806E07C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E07C0);
  }

  return result;
}

unint64_t sub_26F435CA4()
{
  result = qword_2806E07C8;
  if (!qword_2806E07C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E07C8);
  }

  return result;
}

unint64_t sub_26F435CFC()
{
  result = qword_2806E07D0;
  if (!qword_2806E07D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E07D0);
  }

  return result;
}

unint64_t sub_26F435D50(uint64_t a1, uint64_t a2)
{
  v2 = sub_26F4A02A8();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26F435DAC(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E07D8, &qword_26F4A80F8) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_26F432C4C(a1, v1 + v4, v5);
}

uint64_t sub_26F435E54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26F435EA4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2806E07E0, &unk_26F4A8100);
    sub_26F435E54(a2, type metadata accessor for SharedTranslations.Translation, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroyTm_11(void (*a1)(void))
{
  a1(*(v1 + 16));

  return swift_deallocObject();
}

uint64_t sub_26F435F94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26F435FFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SheetPanel.init(content:button:)(void (*a1)(void), uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  a1();
  v14[0] = a5;
  v14[1] = a6;
  v14[2] = a7;
  v14[3] = a8;
  type metadata accessor for SheetPanel(0, v14);
  a3();
}

uint64_t SheetPanel.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v52 = a2;
  v5 = *(a1 - 1);
  v50 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v51 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v37 - v8;
  *&v49 = *(v10 + 16);
  sub_26F49E308();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF9F0, &unk_26F4A5E80);
  sub_26F49E308();
  *&v48 = a1[4];
  v53[10] = v48;
  v53[11] = MEMORY[0x277CDFC48];
  WitnessTable = swift_getWitnessTable();
  v12 = sub_26F436628();
  v53[8] = WitnessTable;
  v53[9] = v12;
  swift_getWitnessTable();
  sub_26F49F428();
  v13 = sub_26F49E308();
  v46 = v13;
  v41 = a1[3];
  v14 = sub_26F49E308();
  v15 = swift_getWitnessTable();
  v16 = MEMORY[0x277CDF918];
  v53[6] = v15;
  v53[7] = MEMORY[0x277CDF918];
  v17 = swift_getWitnessTable();
  v44 = v17;
  v39 = a1[5];
  v53[4] = v39;
  v53[5] = v16;
  v45 = v14;
  v43 = swift_getWitnessTable();
  v53[0] = v13;
  v53[1] = v14;
  v53[2] = v17;
  v53[3] = v43;
  v42 = type metadata accessor for BottomPanelContainer(0, v53);
  v47 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v38 = v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v40 = v37 - v21;
  v22 = v5;
  v23 = *(v5 + 16);
  v23(v9, v3, a1, v20);
  v24 = (*(v22 + 80) + 48) & ~*(v22 + 80);
  v25 = swift_allocObject();
  *&v26 = v49;
  *(&v26 + 1) = v41;
  v49 = v26;
  *&v27 = v48;
  *(&v27 + 1) = v39;
  v48 = v27;
  *(v25 + 16) = v26;
  *(v25 + 32) = v27;
  v28 = *(v22 + 32);
  v28(v25 + v24, v9, a1);
  v29 = v51;
  (v23)(v51, v37[1], a1);
  v30 = swift_allocObject();
  v31 = v48;
  *(v30 + 16) = v49;
  *(v30 + 32) = v31;
  v28(v30 + v24, v29, a1);
  v32 = v38;
  BottomPanelContainer.init(content:panel:)(sub_26F43688C, sub_26F436CC0, v46, v45, v44, v43, v38);
  v33 = v42;
  swift_getWitnessTable();
  v34 = v40;
  sub_26F3B6C60();
  v35 = *(v47 + 8);
  v35(v32, v33);
  sub_26F3B6C60();
  return (v35)(v34, v33);
}

unint64_t sub_26F436628()
{
  result = qword_2806DF9E8;
  if (!qword_2806DF9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF9F0, &unk_26F4A5E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF9E8);
  }

  return result;
}

uint64_t sub_26F43668C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v16[1] = a6;
  sub_26F49E308();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF9F0, &unk_26F4A5E80);
  sub_26F49E308();
  v16[12] = a4;
  v16[13] = MEMORY[0x277CDFC48];
  v16[10] = swift_getWitnessTable();
  v16[11] = sub_26F436628();
  swift_getWitnessTable();
  v11 = sub_26F49F428();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v16 - v13;
  v16[4] = a2;
  v16[5] = a3;
  v16[6] = a4;
  v16[7] = a5;
  v16[8] = a1;
  sub_26F49E7F8();
  sub_26F49F418();
  sub_26F49EC48();
  swift_getWitnessTable();
  sub_26F49F138();
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_26F4368A4@<X0>(uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v19[1] = a3;
  v4 = sub_26F49E308();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v19 - v6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF9F0, &unk_26F4A5E80);
  v8 = sub_26F49E308();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v19 - v13;
  sub_26F49F188();
  v19[4] = a2;
  v19[5] = MEMORY[0x277CDFC48];
  WitnessTable = swift_getWitnessTable();
  sub_26F49F0B8();
  (*(v5 + 8))(v7, v4);
  v16 = sub_26F436628();
  v19[2] = WitnessTable;
  v19[3] = v16;
  swift_getWitnessTable();
  sub_26F3B6C60();
  v17 = *(v9 + 8);
  v17(v11, v8);
  sub_26F3B6C60();
  return (v17)(v14, v8);
}

uint64_t sub_26F436B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = a2;
  v6[1] = a3;
  v6[2] = a4;
  v6[3] = a5;
  type metadata accessor for SheetPanel(0, v6);
  sub_26F49EC48();
  return sub_26F49F138();
}

uint64_t objectdestroyTm_12()
{
  v2 = *(v0 + 40);
  v7 = *(v0 + 16);
  v1 = v7;
  v8 = *(v0 + 24);
  v6 = v8;
  v9 = v2;
  v3 = (type metadata accessor for SheetPanel(0, &v7) - 8);
  v4 = (*(*v3 + 80) + 48) & ~*(*v3 + 80);
  (*(*(v1 - 8) + 8))(v0 + v4, v1);
  (*(*(v6 - 8) + 8))(v0 + v4 + v3[15]);
  return swift_deallocObject();
}

uint64_t sub_26F436CD8(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v10[0] = v1[2];
  v2 = v10[0];
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v6 = *(type metadata accessor for SheetPanel(0, v10) - 8);
  v7 = v1 + ((*(v6 + 80) + 48) & ~*(v6 + 80));

  return a1(v7, v2, v3, v4, v5);
}

uint64_t sub_26F436DE0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26F436E6C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_26F437048(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

uint64_t type metadata accessor for Signpost(uint64_t a1)
{
  result = qword_280F66AC0;
  if (!qword_280F66AC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26F437388(uint64_t a1)
{
  sub_26F49DC28();
  if (v1 <= 0x3F)
  {
    sub_26F49DBF8();
    if (v2 <= 0x3F)
    {
      sub_26F43742C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26F43742C(uint64_t a1)
{
  if (!qword_280F663C8)
  {
    sub_26F49DC68();
    v1 = sub_26F49FFC8();
    if (!v2)
    {
      atomic_store(v1, &qword_280F663C8);
    }
  }
}

uint64_t getEnumTagSinglePayload for Signpost.Operation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Signpost.Operation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26F4375D8()
{
  result = qword_2806E0878;
  if (!qword_2806E0878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0878);
  }

  return result;
}

uint64_t sub_26F43762C@<X0>(uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v7 = sub_26F49DBF8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  v14 = type metadata accessor for Signpost(0);
  v28 = *(v14 + 24);
  *(a4 + v28) = 0;
  v15 = v14;
  sub_26F49DC18();
  *(a4 + *(v15 + 28)) = v5;
  v16 = *(v15 + 20);
  sub_26F49DC08();
  result = sub_26F49DBD8();
  if ((a3 & 1) == 0)
  {
    v27 = sub_26F437D50(v5);
    v18 = v8;
    v19 = *(v8 + 16);
    v19(v13, a4 + v16, v7);
    v20 = sub_26F49DC08();
    v21 = sub_26F49FEC8();
    result = sub_26F49FFA8();
    if (result)
    {
      v26 = v8;
      if (!v27)
      {
        __break(1u);
        return result;
      }

      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = sub_26F49DBE8();
      _os_signpost_emit_with_name_impl(&dword_26F39E000, v20, v21, v23, v27, "", v22, 2u);
      MEMORY[0x274391F70](v22, -1, -1);
      v18 = v26;
    }

    v19(v10, v13, v7);
    sub_26F49DC68();
    swift_allocObject();
    v24 = sub_26F49DC58();
    result = (*(v18 + 8))(v13, v7);
    *(a4 + v28) = v24;
  }

  return result;
}

uint64_t sub_26F437948(char a1)
{
  v3 = sub_26F49DBF8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Signpost(0);
  (*(v4 + 16))(v6, v1 + *(v7 + 20), v3);
  v8 = sub_26F49DC08();
  v9 = sub_26F49FED8();
  if (sub_26F49FFA8())
  {
    if (a1)
    {
      v10 = "failure";
    }

    else
    {
      v10 = "success";
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = sub_26F49DBE8();
    _os_signpost_emit_with_name_impl(&dword_26F39E000, v8, v9, v12, v10, "", v11, 2u);
    MEMORY[0x274391F70](v11, -1, -1);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_26F437AD0()
{
  v1 = sub_26F49DC38();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_26F49DBF8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = type metadata accessor for Signpost(0);
  if (*(v0 + *(result + 24)))
  {
    v10 = sub_26F437D50(*(v0 + *(result + 28)));

    v11 = sub_26F49DC08();
    sub_26F49DC48();
    v16 = sub_26F49FEB8();
    result = sub_26F49FFA8();
    if (result)
    {
      if (!v10)
      {
        __break(1u);
        return result;
      }

      sub_26F49DC78();

      if ((*(v2 + 88))(v4, v1) == *MEMORY[0x277D85B00])
      {
        v12 = "[Error] Interval already ended";
      }

      else
      {
        (*(v2 + 8))(v4, v1);
        v12 = "";
      }

      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = sub_26F49DBE8();
      _os_signpost_emit_with_name_impl(&dword_26F39E000, v11, v16, v14, v10, v12, v13, 2u);
      MEMORY[0x274391F70](v13, -1, -1);
    }

    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

const char *sub_26F437D50(char a1)
{
  result = "lid_pass";
  switch(a1)
  {
    case 1:
      result = "translate_pass";
      break;
    case 2:
      result = "network_path";
      break;
    case 3:
      result = "ondevice_path";
      break;
    case 4:
      result = "cache_path";
      break;
    case 5:
      result = "read_status";
      break;
    case 6:
      result = "read_available";
      break;
    case 7:
      result = "read_selected";
      break;
    case 8:
      result = "read_installed";
      break;
    case 9:
      result = "download";
      break;
    case 10:
      result = "pair_state";
      break;
    case 11:
      result = "passthrough_pair";
      break;
    case 12:
      result = "network_available";
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26F437E54()
{
  v1 = sub_26F49DBF8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v8 = sub_26F49DC28();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for Signpost(0);
  v13 = *(result + 24);
  if (!*(v0 + v13))
  {
    v14 = result;
    v25 = v9;
    (*(v9 + 16))(v11, v0, v8);
    v23 = sub_26F437D50(*(v0 + *(v14 + 28)));
    v15 = *(v14 + 20);
    v16 = *(v2 + 16);
    v26 = v0;
    v24 = v16;
    v16(v7, (v0 + v15), v1);
    v17 = sub_26F49DC08();
    v22 = sub_26F49FEC8();
    result = sub_26F49FFA8();
    if (result)
    {
      v21 = v2;
      if (!v23)
      {
        __break(1u);
        return result;
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = sub_26F49DBE8();
      _os_signpost_emit_with_name_impl(&dword_26F39E000, v17, v22, v19, v23, "", v18, 2u);
      MEMORY[0x274391F70](v18, -1, -1);
      v2 = v21;
    }

    v24(v4, v7, v1);
    sub_26F49DC68();
    swift_allocObject();
    v20 = sub_26F49DC58();
    (*(v2 + 8))(v7, v1);
    result = (*(v25 + 8))(v11, v8);
    *(v26 + v13) = v20;
  }

  return result;
}

uint64_t sub_26F438134()
{
  v1 = sub_26F49E678();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for SimpleExpandingText(0) + 44);
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_26F49FDE8();
    v8 = sub_26F49EC18();
    sub_26F49DBC8();

    sub_26F49E668();
    swift_getAtKeyPath();
    j__swift_release(v6);
    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_26F438288@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26F49E678();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF3B0, &unk_26F4A8280);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SimpleExpandingText(0);
  sub_26F3B8DD4(v1 + *(v10 + 48), v9, &qword_2806DF3B0, &unk_26F4A8280);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26F49E2E8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_26F49FDE8();
    v13 = sub_26F49EC18();
    sub_26F49DBC8();

    sub_26F49E668();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t SimpleExpandingText.init(_:isExpanded:_:buttonAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v13 = type metadata accessor for SimpleExpandingText(0);
  v14 = v13[6];
  v15 = sub_26F49DAB8();
  (*(*(v15 - 8) + 56))(a9 + v14, 1, 1, v15);
  v16 = (a9 + v13[7]);
  v17 = a9 + v13[8];
  sub_26F49F338();
  *v17 = v28;
  *(v17 + 8) = v29;
  v18 = (a9 + v13[9]);
  sub_26F49F338();
  *v18 = v28;
  v18[1] = v29;
  v19 = a9 + v13[10];
  sub_26F49F338();
  *v19 = v28;
  *(v19 + 8) = v29;
  v20 = a9 + v13[11];
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;
  v21 = v13[12];
  *(a9 + v21) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF3B0, &unk_26F4A8280);
  swift_storeEnumTagMultiPayload();
  sub_26F49EE48();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  result = sub_26F3D27D4(a6, a9 + v14);
  *v16 = a7;
  v16[1] = a8;
  return result;
}

uint64_t type metadata accessor for SimpleExpandingText(uint64_t a1)
{
  result = qword_2806E0898;
  if (!qword_2806E0898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL sub_26F4386B0()
{
  v1 = type metadata accessor for SimpleExpandingText(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v69 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF4B8, &qword_26F4A41C0);
  MEMORY[0x28223BE20](v7 - 8);
  v86 = &v69 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF4C0, &qword_26F4A8460);
  MEMORY[0x28223BE20](v9 - 8);
  v84 = &v69 - v10;
  v11 = sub_26F49EE38();
  v12 = *(v11 - 8);
  v87 = v11;
  v88 = v12;
  MEMORY[0x28223BE20](v11);
  v85 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26F49EE58();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v83 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v69 - v18;
  v20 = (v0 + *(v1 + 36));
  v21 = *v20;
  v22 = v20[1];
  v90 = *v20;
  v91 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEAA0, &qword_26F4A2550);
  sub_26F49F348();
  if (v89 <= 0.0)
  {
    if (qword_2806DE798 != -1)
    {
      swift_once();
    }

    v64 = sub_26F49DCA8();
    __swift_project_value_buffer(v64, qword_2806EA8D8);
    sub_26F43AEC4(v0, v3);
    v60 = sub_26F49DC88();
    v65 = sub_26F49FDC8();
    if (os_log_type_enabled(v60, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 134217984;
      v67 = sub_26F49F9B8();
      sub_26F43B860(v3);
      *(v66 + 4) = v67;
      _os_log_impl(&dword_26F39E000, v60, v65, "Text of len %ld hard isMultiline due to: zero availableWidth", v66, 0xCu);
      MEMORY[0x274391F70](v66, -1, -1);
    }

    else
    {
      sub_26F43B860(v3);
    }

    v57 = 1;
  }

  else
  {
    v80 = v6;
    v90 = v21;
    v91 = v22;
    sub_26F49F348();
    v23 = *(v15 + 16);
    v70 = *(v1 + 52);
    v72 = v23;
    v23(v19, (v0 + v70), v14);
    v24 = sub_26F438134();
    v81 = v14;
    v82 = v0;
    if (!v24)
    {
      sub_26F49ECA8();
    }

    v25 = sub_26F49EEA8();
    v27 = v26;
    v29 = v28;

    v30 = sub_26F49EE08();
    v31 = *(v30 - 8);
    v78 = *(v31 + 56);
    v79 = v30;
    v77 = v31 + 56;
    v78(v84, 1, 1);
    v32 = sub_26F49EEB8();
    v33 = *(v32 - 8);
    v34 = *(v33 + 56);
    v76 = v32;
    v75 = v34;
    v74 = v33 + 56;
    (v34)(v86, 1, 1);
    v35 = v85;
    sub_26F49EE28();
    sub_26F49EE18();
    v37 = v36;
    sub_26F3B8D40(v25, v27, v29 & 1);

    v38 = *(v88 + 8);
    v88 += 8;
    v73 = v38;
    v38(v35, v87);
    v39 = v19;
    v40 = v81;
    v71 = *(v15 + 8);
    v71(v39, v81);
    v41 = v82;
    v72(v83, v82 + v70, v40);
    v42 = v41[1];
    v90 = *v41;
    v91 = v42;
    sub_26F3BDC0C();

    v43 = sub_26F49EED8();
    v45 = v44;
    v47 = v46;
    if (!sub_26F438134())
    {
      sub_26F49ECA8();
    }

    v48 = sub_26F49EEA8();
    v50 = v49;
    v52 = v51;
    sub_26F3B8D40(v43, v45, v47 & 1);

    (v78)(v84, 1, 1, v79);
    v75(v86, 1, 1, v76);
    v53 = v85;
    sub_26F49EE28();
    v54 = v83;
    sub_26F49EE18();
    v56 = v55;
    sub_26F3B8D40(v48, v50, v52 & 1);

    v73(v53, v87);
    v71(v54, v81);
    v57 = v37 < v56;
    if (qword_2806DE798 != -1)
    {
      swift_once();
    }

    v58 = sub_26F49DCA8();
    __swift_project_value_buffer(v58, qword_2806EA8D8);
    v59 = v80;
    sub_26F43AEC4(v82, v80);
    v60 = sub_26F49DC88();
    v61 = sub_26F49FDC8();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 67109376;
      *(v62 + 4) = v37 < v56;
      *(v62 + 8) = 2048;
      v63 = sub_26F49F9B8();
      sub_26F43B860(v59);
      *(v62 + 10) = v63;
      _os_log_impl(&dword_26F39E000, v60, v61, "isMultiline: %{BOOL}d for text of %ld characters (approx)", v62, 0x12u);
      MEMORY[0x274391F70](v62, -1, -1);
    }

    else
    {
      sub_26F43B860(v59);
    }
  }

  return v57;
}

uint64_t sub_26F438EE8@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF528, &qword_26F4A4218);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v64 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF530, &unk_26F4A83F0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v64 - v14;
  v16 = sub_26F49F258();
  if (a1)
  {
    sub_26F49E768();
    v17 = sub_26F49EEC8();
    v69 = v16;
    v70 = v12;
    v18 = v17;
    v67 = v6;
    v20 = v19;
    v21 = v15;
    v23 = v22;
    sub_26F49ECA8();
    v71 = a3;
    v64 = sub_26F49EEA8();
    v65 = v9;
    v66 = a2;
    v25 = v24;
    v68 = v7;
    v27 = v26;
    v29 = v28;

    v30 = v23 & 1;
    v15 = v21;
    sub_26F3B8D40(v18, v20, v30);

    LOBYTE(v20) = sub_26F49EC78();
    sub_26F49DF78();
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v27 &= 1u;
    LOBYTE(v89) = v27;
    LOBYTE(v86) = 0;
    v39 = sub_26F49F248();
    KeyPath = swift_getKeyPath();
    v41 = sub_26F49EC78();
    sub_26F49DF78();
    LOBYTE(v86) = 0;
    *&v89 = v64;
    *(&v89 + 1) = v25;
    LOBYTE(v90[0]) = v27;
    *(&v90[0] + 1) = v29;
    LOBYTE(v90[1]) = v20;
    *(&v90[1] + 1) = v32;
    *&v90[2] = v34;
    *(&v90[2] + 1) = v36;
    *&v90[3] = v38;
    BYTE8(v90[3]) = 0;
    *&v90[4] = KeyPath;
    *(&v90[4] + 1) = v39;
    LOBYTE(v90[5]) = v41;
    v16 = v69;
    *(&v90[5] + 1) = v42;
    *&v90[6] = v43;
    *(&v90[6] + 1) = v44;
    *&v90[7] = v45;
    BYTE8(v90[7]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF540, &unk_26F4A8430);
    sub_26F3D3734();
    v46 = v65;
    v12 = v70;
    sub_26F49F078();
    v75[6] = v90[5];
    v76[0] = v90[6];
    *(v76 + 9) = *(&v90[6] + 9);
    v75[2] = v90[1];
    v75[3] = v90[2];
    v75[4] = v90[3];
    v75[5] = v90[4];
    v75[0] = v89;
    v75[1] = v90[0];
    sub_26F3B6B4C(v75, &qword_2806DF540, &unk_26F4A8430);
    v47 = sub_26F49E6D8();
    v74 = 0;
    sub_26F4394DC(&v89);
    v81 = v90[3];
    v82 = v90[4];
    v83 = v90[5];
    v77 = v89;
    v78 = v90[0];
    v79 = v90[1];
    v80 = v90[2];
    v84[0] = v89;
    v84[1] = v90[0];
    v84[2] = v90[1];
    v84[3] = v90[2];
    v84[4] = v90[3];
    v84[5] = v90[4];
    v85 = v90[5];
    sub_26F3B8DD4(&v77, &v86, &qword_2806DF570, &qword_26F4A4260);
    a3 = v71;
    sub_26F3B6B4C(v84, &qword_2806DF570, &qword_26F4A4260);
    *(&v73[3] + 7) = v80;
    *(&v73[4] + 7) = v81;
    *(&v73[5] + 7) = v82;
    *(v73 + 7) = v77;
    *(&v73[1] + 7) = v78;
    *(&v73[6] + 7) = v83;
    *(&v73[2] + 7) = v79;
    LOBYTE(v20) = v74;
    v48 = sub_26F49F5A8();
    v86 = v47;
    LOBYTE(v87[0]) = v20;
    *(&v87[3] + 1) = v73[3];
    v49 = v73[3];
    v50 = v73[4];
    *(&v87[4] + 1) = v73[4];
    v51 = v73[5];
    *(&v87[5] + 1) = v73[5];
    *(&v87[5] + 10) = *(&v73[5] + 9);
    *(v87 + 1) = v73[0];
    v52 = v73[0];
    v53 = v73[1];
    *(&v87[1] + 1) = v73[1];
    v54 = v73[2];
    *(&v87[2] + 1) = v73[2];
    *&v88 = v48;
    *(&v88 + 1) = v55;
    v56 = v67;
    v57 = (v46 + *(v67 + 36));
    v58 = v87[6];
    v57[6] = v87[5];
    v57[7] = v58;
    v57[8] = v88;
    v59 = v87[2];
    v57[2] = v87[1];
    v57[3] = v59;
    v60 = v87[4];
    v57[4] = v87[3];
    v57[5] = v60;
    v61 = v87[0];
    *v57 = v86;
    v57[1] = v61;
    *(&v90[3] + 1) = v49;
    *(&v90[4] + 1) = v50;
    *(&v90[5] + 1) = v51;
    *(&v90[5] + 10) = *(&v73[5] + 9);
    *(v90 + 1) = v52;
    *(&v90[1] + 1) = v53;
    v89 = v47;
    LOBYTE(v90[0]) = v20;
    *(&v90[2] + 1) = v54;
    *&v90[7] = v48;
    *(&v90[7] + 1) = v55;
    sub_26F3B8DD4(&v86, &v72, &qword_2806DF578, &unk_26F4A8440);
    sub_26F3B6B4C(&v89, &qword_2806DF578, &unk_26F4A8440);
    sub_26F3BBAEC(v46, v15, &qword_2806DF528, &qword_26F4A4218);
    (*(v68 + 56))(v15, 0, 1, v56);
  }

  else
  {
    (*(v7 + 56))(v15, 1, 1, v6);
  }

  sub_26F3B8DD4(v15, v12, &qword_2806DF530, &unk_26F4A83F0);
  *a3 = v16;
  *(a3 + 8) = 256;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF538, &qword_26F4A4220);
  sub_26F3B8DD4(v12, a3 + *(v62 + 48), &qword_2806DF530, &unk_26F4A83F0);

  sub_26F3B6B4C(v15, &qword_2806DF530, &unk_26F4A83F0);
  sub_26F3B6B4C(v12, &qword_2806DF530, &unk_26F4A83F0);
}

uint64_t sub_26F4394DC@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF580, &qword_26F4A4268);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_26F4A3B80;
  sub_26F49F258();
  sub_26F4396B4();
  v3 = sub_26F49F268();

  *(v2 + 32) = v3;
  sub_26F49F258();
  sub_26F4396B4();
  v4 = sub_26F49F268();

  *(v2 + 40) = v4;
  sub_26F49F678();
  sub_26F49F688();
  MEMORY[0x274390330](v2);
  sub_26F49E268();
  sub_26F49F5A8();
  sub_26F49E0C8();
  v5 = sub_26F49F248();
  v6 = v19;
  v12[2] = v18;
  v12[3] = v19;
  v12[4] = v20;
  v7 = v20;
  v8 = v21;
  v13 = v21;
  v10 = v17;
  v12[0] = v16;
  v9 = v16;
  v12[1] = v17;
  *(a1 + 32) = v18;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *a1 = v9;
  *(a1 + 16) = v10;
  *(a1 + 80) = v8;
  *(a1 + 88) = v5;
  *(a1 + 96) = 256;
  sub_26F3B8DD4(v12, v14, &qword_2806DF588, &unk_26F4A8450);
  v14[2] = v18;
  v14[3] = v19;
  v14[4] = v20;
  v15 = v21;
  v14[0] = v16;
  v14[1] = v17;
  return sub_26F3B6B4C(v14, &qword_2806DF588, &unk_26F4A8450);
}

uint64_t sub_26F4396B4()
{
  v1 = sub_26F49E2E8();
  v26 = *(v1 - 8);
  v27 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - v5;
  v7 = sub_26F49DA98();
  v24 = *(v7 - 8);
  v25 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24 - v11;
  v13 = sub_26F49DAB8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SimpleExpandingText(0);
  sub_26F3B8DD4(v0 + *(v17 + 24), v12, &qword_2806DEFD8, &qword_26F4A3670);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_26F3B6B4C(v12, &qword_2806DEFD8, &qword_26F4A3670);
    sub_26F438288(v6);
    v19 = v26;
    v18 = v27;
    (*(v26 + 104))(v3, *MEMORY[0x277CDFA90], v27);
    v20 = sub_26F49E2D8();
    v21 = *(v19 + 8);
    v21(v3, v18);
    v21(v6, v18);
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    sub_26F49DAA8();
    v22 = sub_26F49DA78();
    (*(v24 + 8))(v9, v25);
    (*(v14 + 8))(v16, v13);
    v20 = v22 == 2;
  }

  return v20 & 1;
}

uint64_t SimpleExpandingText.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v51 = a1;
  v49 = sub_26F49E2E8();
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v46 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF420, &qword_26F4A8290);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v41 - v5);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0880, &qword_26F4A8298) - 8;
  MEMORY[0x28223BE20](v45);
  v43 = &v41 - v7;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0888, &unk_26F4A82A0) - 8;
  MEMORY[0x28223BE20](v50);
  v48 = &v41 - v8;
  v9 = type metadata accessor for SimpleExpandingText(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F43AEC4(v1, v12);
  sub_26F49FBD8();
  v13 = sub_26F49FBC8();
  v14 = *(v10 + 80);
  v15 = (v14 + 32) & ~v14;
  v44 = v11;
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 16) = v13;
  *(v16 + 24) = v17;
  sub_26F43AF28(v12, v16 + v15);
  sub_26F43AEC4(v1, v12);
  v18 = sub_26F49FBC8();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = v17;
  sub_26F43AF28(v12, v19 + v15);
  sub_26F49F478();
  v20 = v52;
  v41 = v52;
  LODWORD(v18) = v53;
  *v6 = sub_26F49F5C8();
  v6[1] = v21;
  v22 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF3D8, &qword_26F4A3F48) + 44);
  v42 = v2;
  sub_26F43A12C(v2, v20, *(&v20 + 1), v18, v22);
  KeyPath = swift_getKeyPath();
  v24 = sub_26F4396B4();
  v25 = v46;
  v26 = v47;
  v27 = MEMORY[0x277CDFA90];
  if ((v24 & 1) == 0)
  {
    v27 = MEMORY[0x277CDFA88];
  }

  v28 = v49;
  (*(v47 + 104))(v46, *v27, v49);
  v29 = v43;
  v30 = &v43[*(v45 + 44)];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF3E0, &qword_26F4A82B0);
  (*(v26 + 32))(v30 + *(v31 + 28), v25, v28);
  *v30 = KeyPath;
  sub_26F3BBAEC(v6, v29, &qword_2806DF420, &qword_26F4A8290);
  sub_26F49F5A8();
  sub_26F49E3D8();

  v32 = v48;
  sub_26F3BBAEC(v29, v48, &qword_2806E0880, &qword_26F4A8298);
  v33 = (v32 + *(v50 + 44));
  v34 = v57;
  v33[4] = v56;
  v33[5] = v34;
  v33[6] = v58;
  v35 = v53;
  *v33 = v52;
  v33[1] = v35;
  v36 = v55;
  v33[2] = v54;
  v33[3] = v36;
  sub_26F43AEC4(v42, v12);
  v37 = swift_allocObject();
  sub_26F43AF28(v12, v37 + ((v14 + 16) & ~v14));
  v38 = v51;
  sub_26F3BBAEC(v32, v51, &qword_2806E0888, &unk_26F4A82A0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0890, &qword_26F4A82B8);
  v40 = (v38 + *(result + 36));
  *v40 = sub_26F43AE1C;
  v40[1] = 0;
  v40[2] = sub_26F43B2E8;
  v40[3] = v37;
  return result;
}

void *sub_26F439F94@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  if (*(a1 + 24))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDE8, &qword_26F4A3110);
    result = MEMORY[0x274390240](&v5, v3);
  }

  else
  {
    type metadata accessor for SimpleExpandingText(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED98, &qword_26F4A4C00);
    result = sub_26F49F348();
  }

  *a2 = v5;
  return result;
}

uint64_t sub_26F43A048(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 24))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDE8, &qword_26F4A3110);
    sub_26F49F458();
  }

  else
  {
    type metadata accessor for SimpleExpandingText(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED98, &qword_26F4A4C00);
    return sub_26F49F358();
  }
}

uint64_t sub_26F43A12C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v98 = a4;
  v97 = a3;
  v96 = a2;
  v105 = a5;
  v88 = sub_26F49E358();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v86 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for SimpleExpandingText(0);
  v79 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v80 = v7;
  v81 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF4C8, &unk_26F4A8360);
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v83 = &v78 - v8;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF4D0, &qword_26F4A41C8);
  v101 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v82 = &v78 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF4D8, &unk_26F4A8370);
  MEMORY[0x28223BE20](v10 - 8);
  v104 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v102 = &v78 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF4E0, &qword_26F4A41D0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v78 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF4E8, &unk_26F4A8380);
  MEMORY[0x28223BE20](v17);
  v19 = &v78 - v18;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF4F0, &qword_26F4A41D8);
  MEMORY[0x28223BE20](v95);
  v93 = &v78 - v20;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF4F8, &unk_26F4A8390);
  MEMORY[0x28223BE20](v94);
  v100 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v78 - v23;
  MEMORY[0x28223BE20](v25);
  v99 = &v78 - v26;
  v27 = a1[1];
  *&v110 = *a1;
  *(&v110 + 1) = v27;
  sub_26F3BDC0C();

  v92 = sub_26F49EED8();
  v91 = v28;
  LOBYTE(v27) = v29;
  v90 = v30;
  sub_26F49F578();
  sub_26F49E3D8();
  v31 = v27 & 1;
  v117 = v27 & 1;
  v32 = a1;
  if (sub_26F4386B0())
  {
    v33 = v96;
    v107 = v96;
    v34 = v97;
    v108 = v97;
    v35 = v98 & 1;
    v109 = v98 & 1;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDE8, &qword_26F4A3110);
    MEMORY[0x274390240](&v106, v36);
    if (v106)
    {
      v37 = 0;
    }

    else
    {
      v38 = v32 + *(v89 + 40);
      v39 = *v38;
      v40 = *(v38 + 1);
      LOBYTE(v107) = v39;
      v108 = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED98, &qword_26F4A4C00);
      sub_26F49F348();
      v37 = v106;
    }
  }

  else
  {
    v33 = v96;
    v34 = v97;
    v37 = 0;
    v35 = v98 & 1;
  }

  *v16 = sub_26F49E6D8();
  *(v16 + 1) = 0;
  v16[16] = 0;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF500, &qword_26F4A41E0);
  sub_26F438EE8(v37, v32, &v16[*(v41 + 44)]);
  sub_26F3BBAEC(v16, &v19[*(v17 + 36)], &qword_2806DF4E0, &qword_26F4A41D0);
  v42 = v91;
  *v19 = v92;
  *(v19 + 1) = v42;
  v19[16] = v31;
  *(v19 + 3) = v90;
  v43 = v115;
  *(v19 + 6) = v114;
  *(v19 + 7) = v43;
  *(v19 + 8) = v116;
  v44 = v111;
  *(v19 + 2) = v110;
  *(v19 + 3) = v44;
  v45 = v113;
  *(v19 + 4) = v112;
  *(v19 + 5) = v45;
  v46 = v33;
  v107 = v33;
  v108 = v34;
  v47 = v34;
  v109 = v35;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDE8, &qword_26F4A3110);
  MEMORY[0x274390240](&v106);
  v49 = v106;
  v50 = (v106 & 1) == 0;
  KeyPath = swift_getKeyPath();
  v52 = v19;
  v53 = v93;
  sub_26F3BBAEC(v52, v93, &qword_2806DF4E8, &unk_26F4A8380);
  v54 = v53 + *(v95 + 36);
  *v54 = KeyPath;
  *(v54 + 8) = v50;
  *(v54 + 16) = v49;
  sub_26F3BBAEC(v53, v24, &qword_2806DF4F0, &qword_26F4A41D8);
  v24[*(v94 + 36)] = 0;
  v55 = v99;
  sub_26F3BBAEC(v24, v99, &qword_2806DF4F8, &unk_26F4A8390);
  if (sub_26F4386B0())
  {
    v107 = v46;
    v108 = v47;
    v109 = v35;
    MEMORY[0x274390240](&v106, v48);
    v56 = v102;
    if ((v106 & 1) != 0 || (v57 = v32 + *(v89 + 40), v58 = *v57, v59 = *(v57 + 1), LOBYTE(v107) = v58, v108 = v59, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED98, &qword_26F4A4C00), sub_26F49F348(), v106 != 1))
    {
      v72 = 1;
      v71 = v103;
    }

    else
    {
      v60 = v81;
      sub_26F43AEC4(v32, v81);
      v61 = (*(v79 + 80) + 33) & ~*(v79 + 80);
      v62 = swift_allocObject();
      *(v62 + 16) = v46;
      *(v62 + 24) = v47;
      *(v62 + 32) = v35;
      v63 = sub_26F43AF28(v60, v62 + v61);
      MEMORY[0x28223BE20](v63);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF510, &unk_26F4A83E0);
      sub_26F3D36B0();
      v64 = v83;
      sub_26F49F398();
      v65 = v86;
      sub_26F49E348();
      sub_26F3B18CC(&qword_2806DF520, &qword_2806DF4C8, &unk_26F4A8360, MEMORY[0x277CDF028]);
      sub_26F3CAB30();
      v66 = v82;
      v67 = v85;
      v68 = v88;
      sub_26F49EF48();
      (*(v87 + 8))(v65, v68);
      (*(v84 + 8))(v64, v67);
      v69 = sub_26F49F228();
      v70 = v103;
      *(v66 + *(v103 + 36)) = v69;
      sub_26F3BBAEC(v66, v56, &qword_2806DF4D0, &qword_26F4A41C8);
      v71 = v70;
      v72 = 0;
    }
  }

  else
  {
    v72 = 1;
    v71 = v103;
    v56 = v102;
  }

  (*(v101 + 56))(v56, v72, 1, v71);
  v73 = v100;
  sub_26F3B8DD4(v55, v100, &qword_2806DF4F8, &unk_26F4A8390);
  v74 = v104;
  sub_26F3A2864(v56, v104);
  v75 = v105;
  sub_26F3B8DD4(v73, v105, &qword_2806DF4F8, &unk_26F4A8390);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF508, &unk_26F4A83D0);
  sub_26F3A2864(v74, v75 + *(v76 + 48));
  sub_26F3A7F94(v56);
  sub_26F3B6B4C(v55, &qword_2806DF4F8, &unk_26F4A8390);
  sub_26F3A7F94(v74);
  return sub_26F3B6B4C(v73, &qword_2806DF4F8, &unk_26F4A8390);
}

uint64_t sub_26F43AC38(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v8 = a1;
  v9 = a2;
  v10 = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDE8, &qword_26F4A3110);
  MEMORY[0x274390240](&v7);
  LOBYTE(v8) = (v7 & 1) == 0;
  sub_26F49F458();

  result = type metadata accessor for SimpleExpandingText(0);
  v6 = (a4 + *(result + 28));
  if (*v6)
  {
    return (*v6)();
  }

  return result;
}

void sub_26F43AD0C(uint64_t a1@<X8>)
{
  sub_26F49E768();
  v2 = sub_26F49EEC8();
  v4 = v3;
  v6 = v5;
  sub_26F49ECA8();
  v7 = sub_26F49EEA8();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_26F3B8D40(v2, v4, v6 & 1);

  LOBYTE(v2) = sub_26F49EC78();
  sub_26F49DF78();
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  *(a1 + 32) = v2;
  *(a1 + 40) = v14;
  *(a1 + 48) = v15;
  *(a1 + 56) = v16;
  *(a1 + 64) = v17;
  *(a1 + 72) = 0;
}

uint64_t sub_26F43AE48(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for SimpleExpandingText(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEAA0, &qword_26F4A2550);
  return sub_26F49F358();
}

uint64_t sub_26F43AEC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SimpleExpandingText(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F43AF28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SimpleExpandingText(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_26F43AF8C@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for SimpleExpandingText(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_26F439F94(v4, a1);
}

uint64_t objectdestroyTm_13()
{
  v1 = type metadata accessor for SimpleExpandingText(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  if (*(v0 + v2 + 24))
  {
  }

  v4 = v1[6];
  v5 = sub_26F49DAB8();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v3 + v4, 1, v5))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  if (*(v3 + v1[7]))
  {
  }

  j__swift_release(*(v3 + v1[11]));
  v7 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF3B0, &unk_26F4A8280);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_26F49E2E8();
    (*(*(v8 - 8) + 8))(v3 + v7, v8);
  }

  else
  {
  }

  v9 = v1[13];
  v10 = sub_26F49EE58();
  (*(*(v10 - 8) + 8))(v3 + v9, v10);

  return swift_deallocObject();
}

uint64_t sub_26F43B274(char *a1)
{
  v3 = *(type metadata accessor for SimpleExpandingText(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_26F43A048(a1, v4, v5, v6);
}

uint64_t sub_26F43B2E8(uint64_t *a1)
{
  v3 = *(type metadata accessor for SimpleExpandingText(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_26F43AE48(a1, v4);
}

void sub_26F43B39C(uint64_t a1)
{
  sub_26F3D33AC(319, &qword_2806DF450, &qword_2806DEDE8, &qword_26F4A3110, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_26F3D3410(319, &qword_280F66C80, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_26F3D33AC(319, &qword_2806DF458, &qword_2806DF460, &unk_26F4A8340, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_26F3D3360(319, &qword_2806DF468, MEMORY[0x277D839B0]);
        if (v4 <= 0x3F)
        {
          sub_26F3D3360(319, &qword_2806DEA48, MEMORY[0x277D85048]);
          if (v5 <= 0x3F)
          {
            sub_26F3D33AC(319, &qword_2806DF478, &qword_2806DF480, &qword_26F4A3FD0, MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              sub_26F3D3410(319, &qword_2806DF488, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
              if (v7 <= 0x3F)
              {
                sub_26F49EE58();
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_26F43B5C8()
{
  result = qword_2806E08A8;
  if (!qword_2806E08A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0890, &qword_26F4A82B8);
    sub_26F43B680();
    sub_26F3B18CC(&qword_2806E08C0, &qword_2806E08C8, &unk_26F4A8350, MEMORY[0x277CE06A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E08A8);
  }

  return result;
}

unint64_t sub_26F43B680()
{
  result = qword_2806E08B0;
  if (!qword_2806E08B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0888, &unk_26F4A82A0);
    sub_26F43B70C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E08B0);
  }

  return result;
}

unint64_t sub_26F43B70C()
{
  result = qword_2806E08B8;
  if (!qword_2806E08B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0880, &qword_26F4A8298);
    sub_26F3B18CC(&qword_2806DF418, &qword_2806DF420, &qword_26F4A8290, MEMORY[0x277CE11A8]);
    sub_26F3B18CC(&qword_2806DF430, &qword_2806DF3E0, &qword_26F4A82B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E08B8);
  }

  return result;
}

uint64_t sub_26F43B7F0()
{
  v1 = *(type metadata accessor for SimpleExpandingText(0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = v0 + ((*(v1 + 80) + 33) & ~*(v1 + 80));

  return sub_26F43AC38(v2, v3, v4, v5);
}

uint64_t sub_26F43B860(uint64_t a1)
{
  v2 = type metadata accessor for SimpleExpandingText(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

NSAttributedString __swiftcall String.applyingAttributes(from:)(NSAttributedString from)
{
  v2 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v3 = sub_26F49F898();
  v4 = [v2 initWithString_];

  v5 = [(objc_class *)from.super.isa length];
  v6 = v4;
  v7 = [v6 length];
  if (v7 >= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  [v6 beginEditing];
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_26F43BCD0;
  *(v10 + 24) = v9;
  v15[4] = sub_26F43BCD8;
  v15[5] = v10;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_26F43BC30;
  v15[3] = &block_descriptor_8;
  v11 = _Block_copy(v15);
  v12 = v6;

  [(objc_class *)from.super.isa enumerateAttributesInRange:0 options:v8 usingBlock:0, v11];
  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    [v12 endEditing];

    return v12;
  }

  return result;
}

void sub_26F43BAC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  while (v11)
  {
    v14 = v13;
LABEL_9:
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v16 = v15 | (v14 << 6);
    v17 = *(*(a1 + 48) + 8 * v16);
    sub_26F3B2DBC(*(a1 + 56) + 32 * v16, &v25);
    v24 = v17;
    sub_26F43BD70(&v24, &v22);
    v18 = v22;
    v19 = v17;

    __swift_project_boxed_opaque_existential_1(v23, v23[3]);
    v20 = sub_26F4A0448();
    __swift_destroy_boxed_opaque_existential_0(v23);
    [a5 addAttribute:v19 value:v20 range:{a2, a3}];
    swift_unknownObjectRelease();
    sub_26F43BDE0(&v24);
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v12)
    {

      return;
    }

    v11 = *(v8 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_26F43BC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  type metadata accessor for Key(0);
  sub_26F43BD18();
  v9 = sub_26F49F7F8();
  v8(v9, a3, a4, a5);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_26F43BD18()
{
  result = qword_2806DE8E8;
  if (!qword_2806DE8E8)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DE8E8);
  }

  return result;
}

uint64_t sub_26F43BD70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806DEF80, &unk_26F4A3640);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F43BDE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806DEF80, &unk_26F4A3640);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static String.TRANSLATION_LIMIT.setter(uint64_t a1)
{
  result = swift_beginAccess();
  qword_2806E08D0 = a1;
  return result;
}

id String.isWhitespaceOnly.getter(uint64_t a1, uint64_t a2)
{
  v2 = sub_26F49F898();
  v3 = [v2 lt_isWhiteSpaceOnlyString];

  return v3;
}

Swift::tuple_Bool_String __swiftcall String.truncated(limit:)(Swift::Int limit)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_26F49D768();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_26F49F9B8() >= limit)
  {
    v27 = v6;
    v11 = [objc_allocWithZone(MEMORY[0x277CD89E0]) initWithUnit_];
    v12 = sub_26F49F898();
    [v11 setString_];

    sub_26F49F9D8();
    v13 = sub_26F49FDA8();
    v15 = v14;
    v30 = v13;
    v31 = v14;
    v28 = v4;
    v29 = v3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E08D8, &qword_26F4A8468);
    sub_26F43C1F0();
    sub_26F3BDC0C();
    sub_26F49FF98();
    if (v16 >= 21)
    {
      v15 = sub_26F49F9D8();
    }

    v17 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v17 = v4 & 0xFFFFFFFFFFFFLL;
    }

    v10 = v15 >> 14 < 4 * v17;
    sub_26F49F9C8();
    v18 = sub_26F49FA68();
    v19 = MEMORY[0x274390760](v18);
    v21 = v20;

    v30 = v19;
    v31 = v21;
    sub_26F49D748();
    v4 = sub_26F49FFE8();
    v3 = v22;

    (*(v7 + 8))(v9, v27);
  }

  else
  {

    v10 = 0;
  }

  v23 = v10;
  v24 = v4;
  v25 = v3;
  result._1._object = v25;
  result._1._countAndFlagsBits = v24;
  result._0 = v23;
  return result;
}

unint64_t sub_26F43C1F0()
{
  result = qword_2806E08E0;
  if (!qword_2806E08E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E08D8, &qword_26F4A8468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E08E0);
  }

  return result;
}

Swift::tuple_Bool_NSAttributedString __swiftcall NSAttributedString.truncated(limit:)(Swift::Int limit)
{
  v3 = [v1 string];
  sub_26F49F8C8();

  v4 = sub_26F49F9B8();

  if (v4 >= limit)
  {
    v7 = [v1 string];
    sub_26F49F8C8();

    v13 = String.truncated(limit:)(limit);
    v6 = v13._0;
    countAndFlagsBits = v13._1._countAndFlagsBits;
    object = v13._1._object;

    v10 = MEMORY[0x274390820](countAndFlagsBits, object);

    v5 = [v1 attributedSubstringFromRange_];
  }

  else
  {
    v5 = v1;
    v6 = 0;
  }

  v11 = v6;
  result._1.super.isa = v5;
  result._0 = v11;
  return result;
}

uint64_t get_enum_tag_for_layout_string_SbIegy_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_26F43C3A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26F43C3F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_26F43C498(uint64_t a1)
{
  sub_26F3E5B60(319, &qword_2806E0900, &qword_2806E0908, &qword_26F4AB220, MEMORY[0x277CE11F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGRect(319);
    if (v2 <= 0x3F)
    {
      sub_26F3E5B60(319, &qword_2806DF458, &qword_2806DF460, &unk_26F4A8340, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26F43C5A8(void *a1)
{
  v3 = type metadata accessor for SystemWideConsentView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = sub_26F49DFD8();
  v74 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v12 = &v69 - v11;
  v75 = [a1 view];
  if (!v75)
  {
    __break(1u);
    return;
  }

  sub_26F3B0C24(0, &qword_2806E09C8, 0x277D73520);
  v13 = [objc_opt_self() _viewControllerForFullScreenPresentationFromView_];
  if (v13)
  {
    v14 = v13;
    v72 = a1;
    v73 = v6;
    v70 = v4;
    v71 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v16 = v14;
    if ([v16 isKindOfClass_])
    {
      v17 = [v16 presentingViewController];

      v16 = v17;
      if (!v17)
      {
        return;
      }
    }

    else
    {

      while (1)
      {
        v18 = [v16 presentedViewController];
        if (!v18)
        {
          break;
        }

        v19 = v18;
        if ([v18 isKindOfClass_])
        {

          break;
        }

        v20 = [v19 presentedViewController];

        v16 = v20;
        if (!v20)
        {
          goto LABEL_10;
        }
      }
    }

    v22 = v16;
    v23 = *v1;
    v24 = *(v1 + 1);
    v75 = v1;
    aBlock = v23;
    LODWORD(v25) = v1[16];
    v77 = v24;
    LOBYTE(v78) = v25;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDE8, &qword_26F4A3110);
    MEMORY[0x274390240](&v82);
    v27 = v22;
    if (v82 == 1)
    {
      v28 = [v22 presentedViewController];
      if (!v28)
      {
        v69 = v22;
        if (qword_2806DE788 != -1)
        {
          swift_once();
        }

        v44 = sub_26F49DCA8();
        __swift_project_value_buffer(v44, qword_2806EA8A8);
        v45 = sub_26F49DC88();
        v46 = sub_26F49FDF8();
        v47 = os_log_type_enabled(v45, v46);
        v48 = v71;
        if (v47)
        {
          v49 = swift_slowAlloc();
          *v49 = 0;
          _os_log_impl(&dword_26F39E000, v45, v46, "Creating new instance of system wide controller to present.", v49, 2u);
          MEMORY[0x274391F70](v49, -1, -1);
        }

        v50 = [objc_allocWithZone(MEMORY[0x277D73520]) initWithNibName:0 bundle:0];
        [v50 setModalPresentationStyle_];
        [v50 setConsentDisplayOnly_];
        sub_26F43D1A8(type metadata accessor for SystemWideConsentView, v12);
        v51 = v73;
        v52 = v74;
        (*(v74 + 104))(v8, *MEMORY[0x277CDF3C0], v73);
        v53 = sub_26F49DFC8();
        v54 = *(v52 + 8);
        v54(v8, v51);
        v54(v12, v51);
        if (v53)
        {
          v55 = 2;
        }

        else
        {
          v55 = 1;
        }

        [v50 setOverrideUserInterfaceStyle_];
        v56 = [v50 sheetPresentationController];
        if (v56)
        {
          v57 = v56;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0730, &unk_26F4A7E80);
          v58 = swift_allocObject();
          *(v58 + 16) = xmmword_26F4A7E50;
          v59 = objc_opt_self();
          *(v58 + 32) = [v59 mediumDetent];
          *(v58 + 40) = [v59 largeDetent];
          sub_26F3B0C24(0, &qword_2806E09D0, 0x277D75A28);
          v60 = sub_26F49FAD8();

          [v57 setDetents_];
        }

        v61 = [v50 popoverPresentationController];
        if (v61)
        {
          v62 = v61;
          v63 = [v72 view];
          [v62 setSourceView_];
        }

        v64 = [v50 popoverPresentationController];

        v65 = v75;
        if (v64)
        {
          [v64 setSourceRect_];
        }

        sub_26F43EF1C(v65, v48, type metadata accessor for SystemWideConsentView);
        v66 = (*(v70 + 80) + 24) & ~*(v70 + 80);
        v67 = swift_allocObject();
        *(v67 + 16) = v50;
        sub_26F43EDDC(v48, v67 + v66, type metadata accessor for SystemWideConsentView);
        v80 = sub_26F43EF84;
        v81 = v67;
        aBlock = MEMORY[0x277D85DD0];
        v77 = 1107296256;
        v78 = sub_26F3B3308;
        v79 = &block_descriptor_32;
        v68 = _Block_copy(&aBlock);
        v41 = v50;

        [v41 setDismissCompletionHandler_];
        _Block_release(v68);
        v22 = v69;
        [v69 presentViewController:v41 animated:1 completion:0];

        goto LABEL_46;
      }

      v27 = v28;
    }

    v71 = v26;

    v29 = [v22 presentedViewController];
    if (v29)
    {
      v30 = v29;
      objc_opt_self();
      v31 = swift_dynamicCastObjCClass();
      if (v31)
      {
        v32 = v31;
        v69 = v30;
        sub_26F43D1A8(type metadata accessor for SystemWideConsentView, v12);
        v33 = *MEMORY[0x277CDF3C0];
        LODWORD(v70) = v25;
        v25 = v74;
        v34 = *(v74 + 104);
        v75 = v24;
        v35 = v73;
        v34(v8, v33, v73);
        v36 = sub_26F49DFC8();
        v37 = *(v25 + 8);
        v37(v8, v35);
        v38 = v35;
        v24 = v75;
        v37(v12, v38);
        LOBYTE(v25) = v70;
        if (v36)
        {
          v39 = 2;
        }

        else
        {
          v39 = 1;
        }

        [v32 setOverrideUserInterfaceStyle_];
      }
    }

    v40 = [v22 presentedViewController];
    if (v40)
    {
      v41 = v40;
      objc_opt_self();
      v42 = swift_dynamicCastObjCClass();
      if (!v42)
      {
LABEL_46:

        return;
      }

      v43 = v42;
      aBlock = v23;
      v77 = v24;
      LOBYTE(v78) = v25;
      MEMORY[0x274390240](&v82, v71);
      if ((v82 & 1) == 0 && [v43 consentDisplayOnly])
      {
        [v72 dismissViewControllerAnimated:1 completion:0];
        goto LABEL_46;
      }
    }

    return;
  }

LABEL_10:
  v21 = v75;
}

void sub_26F43CEE4(void *a1, uint64_t a2)
{
  if (qword_2806DE788 != -1)
  {
    swift_once();
  }

  v4 = sub_26F49DCA8();
  __swift_project_value_buffer(v4, qword_2806EA8A8);
  v5 = a1;
  v6 = sub_26F49DC88();
  v7 = sub_26F49FDF8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67240192;
    *(v8 + 4) = [v5 userConsentConfirmed];

    _os_log_impl(&dword_26F39E000, v6, v7, "System wide dismissed, consent: %{BOOL,public}d", v8, 8u);
    MEMORY[0x274391F70](v8, -1, -1);
  }

  else
  {

    v6 = v5;
  }

  v9 = *(a2 + 56);
  if (v9)
  {
    v9([v5 userConsentConfirmed]);
  }
}

uint64_t sub_26F43D028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26F43ED2C(&qword_2806E09E0, type metadata accessor for SystemWideConsentView, &unk_26F4A86C8);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_26F43D0BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26F43ED2C(&qword_2806E09E0, type metadata accessor for SystemWideConsentView, &unk_26F4A86C8);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_26F43D150(uint64_t a1)
{
  sub_26F43ED2C(&qword_2806E09E0, type metadata accessor for SystemWideConsentView, &unk_26F4A86C8);
  sub_26F49EB98();
  __break(1u);
}

uint64_t sub_26F43D1A8@<X0>(uint64_t (*a1)(void, __n128)@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_26F49E678();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0910, &qword_26F4A85E8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v17 - v11;
  v13 = a1(0, v10);
  sub_26F3B8DD4(v2 + *(v13 + 28), v12, &qword_2806E0910, &qword_26F4A85E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_26F49DFD8();
    return (*(*(v14 - 8) + 32))(a2, v12, v14);
  }

  else
  {
    sub_26F49FDE8();
    v16 = sub_26F49EC18();
    sub_26F49DBC8();

    sub_26F49E668();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

void sub_26F43D3B8(void *a1)
{
  v96 = type metadata accessor for SystemWideSheetView(0);
  v98 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v99 = v2;
  v97 = &v94 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_26F49DFD8();
  v104 = *(v3 - 8);
  v105 = v3;
  MEMORY[0x28223BE20](v3);
  v103 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v102 = &v94 - v6;
  v7 = sub_26F49DAB8();
  v8 = *(v7 - 1);
  v100 = v7;
  v101 = v8;
  MEMORY[0x28223BE20](v7);
  v95 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  MEMORY[0x28223BE20](v10 - 8);
  v108 = &v94 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0908, &qword_26F4AB220);
  MEMORY[0x28223BE20](v12 - 8);
  v107 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v94 - v15;
  v109 = type metadata accessor for VisualTranslationModel(0);
  v17 = *(v109 - 8);
  *&v18 = MEMORY[0x28223BE20](v109).n128_u64[0];
  v106 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v21 = [a1 view];
  if (!v21)
  {
    goto LABEL_49;
  }

  v22 = v21;
  sub_26F3B0C24(0, &qword_2806E09C8, 0x277D73520);
  v23 = [objc_opt_self() _viewControllerForFullScreenPresentationFromView_];
  if (!v23)
  {
LABEL_10:

    v28 = v20;
LABEL_11:
    v26 = v28;
    goto LABEL_14;
  }

  v24 = v23;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v26 = v24;
  if ([v26 isKindOfClass_])
  {
    v27 = [v26 presentingViewController];

    v26 = v27;
    v28 = v20;
    if (v27)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  while (1)
  {
    v29 = [v26 presentedViewController];
    if (!v29)
    {
      break;
    }

    v30 = v29;
    if ([v29 isKindOfClass_])
    {

      break;
    }

    v31 = [v30 presentedViewController];

    v26 = v31;
    if (!v31)
    {
      goto LABEL_10;
    }
  }

  v28 = v20;
LABEL_14:
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E08E8, &unk_26F4A84F0);
  MEMORY[0x274390240]();
  v33 = (v17 + 48);
  v34 = *(v17 + 48);
  v35 = v109;
  v36 = v34(v16, 1, v109);
  v37 = v108;
  if (v36 == 1)
  {
    sub_26F43ED74(v16);
LABEL_18:
    v41 = [v26 presentedViewController];
    if (v41)
    {
      v42 = v41;
      objc_opt_self();
      v43 = swift_dynamicCastObjCClass();
      if (v43)
      {
        v44 = v43;
        v100 = v42;
        v45 = v102;
        sub_26F43D1A8(type metadata accessor for SystemWideSheetView, v102);
        v46 = *MEMORY[0x277CDF3C0];
        v106 = v32;
        v48 = v104;
        v47 = v105;
        v49 = *(v104 + 104);
        v108 = v33;
        v50 = v103;
        v49(v103, v46, v105);
        v51 = sub_26F49DFC8();
        v101 = v34;
        v52 = v28;
        v53 = v51;
        v54 = *(v48 + 8);
        v54(v50, v47);
        v54(v45, v47);
        v32 = v106;
        v35 = v109;
        v55 = (v53 & 1) == 0;
        v28 = v52;
        v34 = v101;
        if (v55)
        {
          v56 = 1;
        }

        else
        {
          v56 = 2;
        }

        [v44 setOverrideUserInterfaceStyle_];
      }
    }

    v57 = v107;
    MEMORY[0x274390240](v32);
    if (v34(v57, 1, v35) == 1)
    {
      sub_26F43ED74(v57);
      v58 = [v26 presentedViewController];
      if (v58)
      {

        [v28 dismissViewControllerAnimated:1 completion:0];
      }
    }

    else
    {

      sub_26F43ED74(v57);
    }

    return;
  }

  v38 = v16;
  v39 = v106;
  sub_26F43EDDC(v38, v106, type metadata accessor for VisualTranslationModel);
  v40 = [v26 presentedViewController];
  if (v40)
  {

    sub_26F43EEBC(v39, type metadata accessor for VisualTranslationModel);
    goto LABEL_18;
  }

  v59 = v28;
  v60 = [objc_allocWithZone(MEMORY[0x277D73520]) initWithNibName:0 bundle:0];
  [v60 setModalPresentationStyle_];
  v61 = *(v39 + *(v35 + 28));
  Array<A>.sourceParagraph.getter(v61);
  v62 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v63 = sub_26F49F898();

  v64 = [v62 initWithString_];

  [v60 setText_];
  v65 = *(v61 + 16);
  if (v65)
  {
    v66 = type metadata accessor for TextModel(0);
    sub_26F3B8DD4(v61 + *(v66 + 28) + ((*(*(v66 - 8) + 80) + 32) & ~*(*(v66 - 8) + 80)), v37, &qword_2806DEFD8, &qword_26F4A3670);
    v67 = v100;
    v68 = 0;
    if ((*(v101 + 6))(v37, 1, v100) != 1)
    {
      v68 = sub_26F49D9F8();
      (*(v101 + 1))(v37, v67);
    }
  }

  else
  {
    v67 = v100;
    (*(v101 + 7))(v37, 1, 1, v100);
    v68 = 0;
  }

  [v60 setSourceLocale_];

  if (!v65)
  {
    v72 = 0;
    goto LABEL_38;
  }

  if (!*(v61 + 16))
  {
    __break(1u);
LABEL_49:
    __break(1u);
    return;
  }

  v69 = type metadata accessor for TextModel(0);
  v70 = v101;
  v71 = v95;
  (*(v101 + 2))(v95, v61 + *(v69 + 36) + ((*(*(v69 - 8) + 80) + 32) & ~*(*(v69 - 8) + 80)), v67);
  v72 = sub_26F49D9F8();
  v70[1](v71, v67);
LABEL_38:
  [v60 setTargetLocale_];

  v73 = v102;
  sub_26F43D1A8(type metadata accessor for SystemWideSheetView, v102);
  v75 = v103;
  v74 = v104;
  v76 = v105;
  (*(v104 + 104))(v103, *MEMORY[0x277CDF3C0], v105);
  v77 = sub_26F49DFC8();
  v78 = *(v74 + 8);
  v78(v75, v76);
  v78(v73, v76);
  if (v77)
  {
    v79 = 2;
  }

  else
  {
    v79 = 1;
  }

  [v60 setOverrideUserInterfaceStyle_];
  v80 = [v60 sheetPresentationController];
  if (v80)
  {
    v81 = v80;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0730, &unk_26F4A7E80);
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_26F4A7E50;
    v83 = objc_opt_self();
    *(v82 + 32) = [v83 mediumDetent];
    *(v82 + 40) = [v83 largeDetent];
    sub_26F3B0C24(0, &qword_2806E09D0, 0x277D75A28);
    v84 = sub_26F49FAD8();

    [v81 setDetents_];
  }

  v85 = [v60 popoverPresentationController];
  if (v85)
  {
    v86 = v85;
    v87 = [v59 view];
    [v86 setSourceView_];
  }

  v88 = [v60 popoverPresentationController];

  v89 = v110;
  if (v88)
  {
    [v88 setSourceRect_];
  }

  v90 = v97;
  sub_26F43EF1C(v89, v97, type metadata accessor for SystemWideSheetView);
  v91 = (*(v98 + 80) + 16) & ~*(v98 + 80);
  v92 = swift_allocObject();
  sub_26F43EDDC(v90, v92 + v91, type metadata accessor for SystemWideSheetView);
  aBlock[4] = sub_26F43EE44;
  aBlock[5] = v92;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26F3B3308;
  aBlock[3] = &block_descriptor_9;
  v93 = _Block_copy(aBlock);

  [v60 setDismissCompletionHandler_];
  _Block_release(v93);
  [v26 presentViewController:v60 animated:1 completion:0];

  sub_26F43EEBC(v106, type metadata accessor for VisualTranslationModel);
}

uint64_t sub_26F43E064(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0908, &qword_26F4AB220);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - v6;
  v8 = type metadata accessor for VisualTranslationModel(0);
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_26F3B8DD4(v7, v4, &qword_2806E0908, &qword_26F4AB220);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E08E8, &unk_26F4A84F0);
  sub_26F49F458();
  sub_26F43ED74(v7);
  result = type metadata accessor for SystemWideSheetView(0);
  v10 = (a1 + *(result + 24));
  if (*v10)
  {
    return (*v10)();
  }

  return result;
}

uint64_t sub_26F43E1B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26F43ED2C(&qword_2806E09D8, type metadata accessor for SystemWideSheetView, &unk_26F4A8790);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_26F43E248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26F43ED2C(&qword_2806E09D8, type metadata accessor for SystemWideSheetView, &unk_26F4A8790);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_26F43E2DC(uint64_t a1)
{
  sub_26F43ED2C(&qword_2806E09D8, type metadata accessor for SystemWideSheetView, &unk_26F4A8790);
  sub_26F49EB98();
  __break(1u);
}