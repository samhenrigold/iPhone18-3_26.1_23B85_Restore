id sub_26A0678E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803692A8, &qword_26A09F4B0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v63 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803692B0, &qword_26A09F4B8);
  v75 = *(v5 - 8);
  v76 = v5;
  v72 = v75[8];
  v6 = MEMORY[0x28223BE20](v5);
  v73 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v71 = &v63 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v74 = &v63 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v63 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369260, &qword_26A09F480);
  v66 = *(v14 - 8);
  v67 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v63 - v18;
  v69 = v0;
  sub_26A09DE14();
  v20 = *MEMORY[0x277D85778];
  v21 = v2;
  v22 = *(v2 + 104);
  v22(v4, v20, v1);
  v65 = v19;
  sub_26A09E004();
  v23 = *(v21 + 8);
  v23(v4, v1);
  v22(v4, v20, v1);
  v64 = v17;
  v24 = v74;
  sub_26A09E004();
  v23(v4, v1);
  v25 = v75;
  v26 = v75[2];
  v27 = v71;
  v68 = v13;
  v28 = v13;
  v29 = v76;
  v26(v71, v28, v76);
  v30 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v70 = swift_allocObject();
  v31 = v25[4];
  v31(v70 + v30, v27, v29);
  v32 = v73;
  v33 = v24;
  v34 = v29;
  v26(v73, v33, v29);
  v35 = swift_allocObject();
  v31(v35 + v30, v32, v34);
  v36 = type metadata accessor for AuthorizationExtensionProvider.Observer();
  v37 = objc_allocWithZone(v36);
  v38 = &v37[OBJC_IVAR____TtCC18SmartStackSettings30AuthorizationExtensionProvider8Observer_updateHandler];
  v39 = v70;
  *v38 = sub_26A06A058;
  *(v38 + 1) = v39;
  v40 = &v37[OBJC_IVAR____TtCC18SmartStackSettings30AuthorizationExtensionProvider8Observer_queryHandler];
  *v40 = sub_26A069F30;
  *(v40 + 1) = v35;
  v77.receiver = v37;
  v77.super_class = v36;
  v41 = objc_msgSendSuper2(&v77, sel_init);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v43 = OBJC_IVAR____TtC18SmartStackSettings30AuthorizationExtensionProvider_lsApplicationWorkspace;
    v44 = v69;
    *(v69 + OBJC_IVAR____TtC18SmartStackSettings30AuthorizationExtensionProvider_lsApplicationWorkspace) = result;
    v45 = [objc_allocWithZone(MEMORY[0x277D0ACB0]) init];
    *(v44 + OBJC_IVAR____TtC18SmartStackSettings30AuthorizationExtensionProvider_applicationLibrary) = v45;
    [*(v44 + v43) addObserver_];
    v46 = objc_allocWithZone(MEMORY[0x277CC5DF8]);
    v47 = sub_26A09DE74();
    v48 = [v46 initWithExtensionPointIdentifier_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803692B8, &unk_26A09F4C0);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_26A09F1F0;
    *(v49 + 32) = v48;
    v50 = objc_allocWithZone(MEMORY[0x277CC5E00]);
    sub_26A069F94(0, &qword_2803692C0, 0x277CC5DF8);
    v51 = v48;
    v52 = v41;
    v53 = sub_26A09DF74();

    v54 = [v50 initWithQueries:v53 delegate:v52];

    *(v44 + OBJC_IVAR____TtC18SmartStackSettings30AuthorizationExtensionProvider_extensionQueryController) = v54;
    v56 = v65;
    v55 = v66;
    v57 = *(v66 + 16);
    v58 = v67;
    v57(v44 + OBJC_IVAR____TtC18SmartStackSettings30AuthorizationExtensionProvider_allowedAppIdentifiersChangedStream, v65, v67);
    v59 = v64;
    v57(v44 + OBJC_IVAR____TtC18SmartStackSettings30AuthorizationExtensionProvider_onboardingPropertiesByAppChangedStream, v64, v58);
    [v54 resume];

    v60 = v75[1];
    v61 = v76;
    v60(v74, v76);
    v62 = *(v55 + 8);
    v62(v59, v58);
    v60(v68, v61);
    v62(v56, v58);
    return v44;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26A067FB0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803692C8, &unk_26A09F8F0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - v2;
  sub_26A09E014();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_26A06807C()
{
  v1 = v0;
  v2 = sub_26A09DC84();
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x277D84FA0];
  v30 = [objc_opt_self() enumeratorWithOptions_];
  sub_26A09E0E4();
  v5 = OBJC_IVAR____TtC18SmartStackSettings30AuthorizationExtensionProvider_applicationLibrary;
  v35 = OBJC_IVAR____TtC18SmartStackSettings30AuthorizationExtensionProvider_logger;
  sub_26A09DC74();
  if (v39)
  {
    *&v6 = 136446210;
    v29 = v6;
    *&v6 = 136315138;
    v28 = v6;
    v33 = v5;
    v34 = v0;
    do
    {
      sub_26A0697B4(v38, v37);
      sub_26A069F94(0, &qword_280369268, 0x277CC1E70);
      if (swift_dynamicCast())
      {
        v7 = v36;
        v8 = [v36 bundleIdentifier];
        if (v8)
        {
          v9 = v8;
          v10 = sub_26A09DEA4();
          v12 = v11;
          v13 = [*(v1 + v5) applicationInfoForBundleIdentifier_];

          if (v13)
          {
            if ([v13 type])
            {
              sub_26A09352C(v37, v10, v12);
            }

            else
            {

              v14 = sub_26A09DE04();
              v15 = sub_26A09E124();

              if (os_log_type_enabled(v14, v15))
              {
                v16 = swift_slowAlloc();
                v17 = swift_slowAlloc();
                *&v37[0] = v17;
                *v16 = v28;
                v18 = sub_26A089EEC(v10, v12, v37);

                *(v16 + 4) = v18;
                _os_log_impl(&dword_26A066000, v14, v15, "Filtering %s due to internal", v16, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v17);
                v19 = v17;
                v5 = v33;
                MEMORY[0x26D65A520](v19, -1, -1);
                v20 = v16;
                v1 = v34;
                MEMORY[0x26D65A520](v20, -1, -1);
              }

              else
              {
              }
            }
          }

          else
          {

            v21 = sub_26A09DE04();
            v22 = sub_26A09E114();

            if (os_log_type_enabled(v21, v22))
            {
              v23 = swift_slowAlloc();
              v24 = swift_slowAlloc();
              *&v37[0] = v24;
              *v23 = v29;
              v25 = sub_26A089EEC(v10, v12, v37);

              *(v23 + 4) = v25;
              v5 = v33;
              _os_log_impl(&dword_26A066000, v21, v22, "Unable to get application info for %{public}s", v23, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v24);
              MEMORY[0x26D65A520](v24, -1, -1);
              v26 = v23;
              v1 = v34;
              MEMORY[0x26D65A520](v26, -1, -1);
            }

            else
            {
            }
          }
        }

        else
        {
        }
      }

      sub_26A09DC74();
    }

    while (v39);
  }

  (*(v31 + 8))(v4, v32);

  return v40;
}

unint64_t sub_26A0684DC()
{
  v1 = v0;
  v80 = *MEMORY[0x277D85DE8];
  v2 = sub_26A0765E0(MEMORY[0x277D84F90]);
  v72 = v2;
  v3 = [*(v1 + OBJC_IVAR____TtC18SmartStackSettings30AuthorizationExtensionProvider_extensionQueryController) extensionIdentities];
  sub_26A069F94(0, &qword_280369270, 0x277CC5DD8);
  v4 = sub_26A09DF84();

  if (v4 >> 62)
  {
    v6 = sub_26A09E224();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_36:

    return v2;
  }

  v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_36;
  }

LABEL_3:
  if (v6 < 1)
  {
    __break(1u);
  }

  v7 = 0;
  v69 = OBJC_IVAR____TtC18SmartStackSettings30AuthorizationExtensionProvider_logger;
  v70 = v4 & 0xC000000000000001;
  v8 = 0x279C9C000;
  *&v5 = 136446210;
  v65 = v5;
  *&v5 = 136446466;
  v63 = v5;
  v64 = v1;
  v66 = v4;
  v68 = v6;
  do
  {
    if (v70)
    {
      v9 = MEMORY[0x26D659D40](v7, v4);
    }

    else
    {
      v9 = *(v4 + 8 * v7 + 32);
    }

    v10 = v9;
    v11 = [v9 containingBundleRecord];
    if (v11 && (v12 = v11, v13 = [v11 *(v8 + 1504)], v12, v13))
    {
      v14 = sub_26A09DEA4();
      v16 = v15;
    }

    else
    {
      v14 = 0;
      v16 = 0;
    }

    v17 = [v10 *(v8 + 1504)];
    v71 = sub_26A09DEA4();
    v19 = v18;

    if (v16)
    {
      v20 = objc_opt_self();
      v75 = 0;
      v21 = v10;
      v22 = [v20 extensionWithIdentity:v21 error:&v75];
      if (v22)
      {
        v23 = v22;
        v24 = v75;

        v25 = [v23 _extensionBundle];
        if (v25)
        {
          v67 = v25;
          sub_26A069810(v67, v76);
          if (v76[0])
          {
            v73 = v76[0];

            sub_26A069DDC(&v73, &qword_280369278, &qword_26A09F488);
            v74 = v77;
            sub_26A069D88(&v74);
            v79 = v78;
            sub_26A069DDC(&v79, &qword_280369280, &unk_26A09F490);

            sub_26A0791A0(v76, v14, v16);

            v26 = sub_26A09DE04();
            v27 = sub_26A09E124();

            if (os_log_type_enabled(v26, v27))
            {
              v28 = swift_slowAlloc();
              v29 = swift_slowAlloc();
              v75 = v29;
              *v28 = v63;
              v30 = sub_26A089EEC(v71, v19, &v75);
              v71 = v26;
              v31 = v30;

              *(v28 + 4) = v31;
              *(v28 + 12) = 2082;
              v32 = sub_26A089EEC(v14, v16, &v75);

              *(v28 + 14) = v32;
              v33 = v71;
              _os_log_impl(&dword_26A066000, v71, v27, "Found onboarding properties for widget extension %{public}s in %{public}s", v28, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x26D65A520](v29, -1, -1);
              v34 = v28;
              v4 = v66;
              MEMORY[0x26D65A520](v34, -1, -1);
            }

            else
            {
            }

            v6 = v68;
          }

          else
          {

            v56 = sub_26A09DE04();
            v57 = sub_26A09E124();

            if (os_log_type_enabled(v56, v57))
            {
              v58 = swift_slowAlloc();
              v59 = swift_slowAlloc();
              v75 = v59;
              *v58 = v65;
              v60 = sub_26A089EEC(v71, v19, &v75);

              *(v58 + 4) = v60;
              v4 = v66;
              _os_log_impl(&dword_26A066000, v56, v57, "No widget extension onboarding properties for %{public}s", v58, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v59);
              MEMORY[0x26D65A520](v59, -1, -1);
              v61 = v58;
              v6 = v68;
              MEMORY[0x26D65A520](v61, -1, -1);
            }

            else
            {
            }
          }
        }

        else
        {
        }
      }

      else
      {
        v41 = v75;

        v42 = sub_26A09DC64();

        swift_willThrow();

        v43 = v42;
        v44 = sub_26A09DE04();
        v45 = sub_26A09E114();

        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v75 = v47;
          *v46 = v63;
          v48 = sub_26A089EEC(v71, v19, &v75);

          *(v46 + 4) = v48;
          *(v46 + 12) = 2080;
          ErrorValue = swift_getErrorValue();
          MEMORY[0x28223BE20](ErrorValue);
          (*(v51 + 16))(&v63 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
          v52 = sub_26A09DEB4();
          v54 = sub_26A089EEC(v52, v53, &v75);
          v6 = v68;

          *(v46 + 14) = v54;
          _os_log_impl(&dword_26A066000, v44, v45, "Widget extension %{public}s error: %s", v46, 0x16u);
          swift_arrayDestroy();
          v55 = v47;
          v4 = v66;
          MEMORY[0x26D65A520](v55, -1, -1);
          MEMORY[0x26D65A520](v46, -1, -1);
        }

        else
        {
        }
      }

      v8 = 0x279C9C000uLL;
    }

    else
    {

      v35 = sub_26A09DE04();
      v36 = sub_26A09E114();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v75 = v38;
        *v37 = v65;
        v39 = sub_26A089EEC(v71, v19, &v75);

        *(v37 + 4) = v39;
        v4 = v66;
        _os_log_impl(&dword_26A066000, v35, v36, "No app bundle identifier for %{public}s", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v38);
        MEMORY[0x26D65A520](v38, -1, -1);
        v40 = v37;
        v6 = v68;
        MEMORY[0x26D65A520](v40, -1, -1);
      }

      else
      {
      }
    }

    ++v7;
  }

  while (v6 != v7);

  return v72;
}

uint64_t sub_26A068E18()
{
  v1 = OBJC_IVAR____TtC18SmartStackSettings30AuthorizationExtensionProvider_logger;
  v2 = sub_26A09DE24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC18SmartStackSettings30AuthorizationExtensionProvider_allowedAppIdentifiersChangedStream;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369260, &qword_26A09F480);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC18SmartStackSettings30AuthorizationExtensionProvider_onboardingPropertiesByAppChangedStream, v4);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

uint64_t type metadata accessor for AuthorizationExtensionProvider(uint64_t a1)
{
  result = qword_280369138;
  if (!qword_280369138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26A068FB4(uint64_t a1)
{
  sub_26A09DE24();
  if (v1 <= 0x3F)
  {
    sub_26A06A004(319, &qword_280369148, MEMORY[0x277D84F78] + 8, MEMORY[0x277D857B8]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

id sub_26A069194()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26A06929C(uint64_t a1, id *a2)
{
  result = sub_26A09DE84();
  *a2 = 0;
  return result;
}

uint64_t sub_26A069314(uint64_t a1, id *a2)
{
  v3 = sub_26A09DE94();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_26A069394@<X0>(uint64_t *a2@<X8>)
{
  sub_26A09DEA4();
  v3 = sub_26A09DE74();

  *a2 = v3;
  return result;
}

uint64_t sub_26A0693D8()
{
  v0 = sub_26A09DEA4();
  v1 = MEMORY[0x26D659980](v0);

  return v1;
}

uint64_t sub_26A069414(uint64_t a1)
{
  sub_26A09DEA4();
  sub_26A09DEE4();
}

uint64_t sub_26A069468(uint64_t a1)
{
  sub_26A09DEA4();
  sub_26A09E514();
  sub_26A09DEE4();
  v1 = sub_26A09E534();

  return v1;
}

_DWORD *sub_26A0694DC@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_26A0694F8(void *a1, uint64_t *a2)
{
  v2 = sub_26A09DEA4();
  v4 = v3;
  if (v2 == sub_26A09DEA4() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_26A09E4D4();
  }

  return v7 & 1;
}

uint64_t sub_26A069580@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_26A09DE74();

  *a2 = v3;
  return result;
}

uint64_t sub_26A0695C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26A09DEA4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0695F4(uint64_t a1)
{
  v2 = sub_26A0696F4(&qword_280369250, &unk_26A09F3E8);
  v3 = sub_26A0696F4(&qword_280369258, &unk_26A09F390);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_26A0696F4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HKTypeIdentifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

_OWORD *sub_26A0697B4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void sub_26A069810(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v43[4] = a1;
  v4 = off_287AFC868;
  sub_26A069F94(0, &qword_280369288, 0x277CCA8D8);
  v5 = v4();
  if (!v5)
  {
    goto LABEL_42;
  }

  v6 = v5;
  if (!*(v5 + 16) || (v7 = sub_26A099F20(0xD000000000000013, 0x800000026A0A0FB0), (v8 & 1) == 0))
  {

LABEL_43:
    v25 = 0;
    v36 = 0;
    v31 = 0;
    v33 = 0;
LABEL_44:
    v37 = 0;
    v38 = 0;
    goto LABEL_45;
  }

  sub_26A069E3C(*(v6 + 56) + 32 * v7, v43);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369290, &qword_26A09F7E0);
  v9 = MEMORY[0x277D84F70];
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_42:

    goto LABEL_43;
  }

  v10 = v42[0];
  if (*(v42[0] + 16))
  {
    v11 = sub_26A099F20(0x7A69726F68747561, 0xEE00736E6F697461);
    if (v12)
    {
      sub_26A069E3C(*(v42[0] + 56) + 32 * v11, v43);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803692A0, &qword_26A09F900);
      if (swift_dynamicCast())
      {
        v13 = *(v42[0] + 16);
        if (v13)
        {
          v14 = v42[0] + 32;
          v15 = MEMORY[0x277D84F90];
          while (1)
          {
            sub_26A069E3C(v14, v43);
            sub_26A069E3C(v43, v42);
            if (swift_dynamicCast())
            {
              break;
            }

            __swift_destroy_boxed_opaque_existential_0(v43);
LABEL_12:
            v14 += 32;
            if (!--v13)
            {

              goto LABEL_33;
            }
          }

          v16 = v9;
          v17 = sub_26A09E3B4();

          if (v17 > 2)
          {
            if (v17 != 3)
            {
LABEL_18:
              __swift_destroy_boxed_opaque_existential_0(v43);
LABEL_24:
              v9 = v16;
              goto LABEL_12;
            }
          }

          else if (v17 >= 2)
          {
            goto LABEL_18;
          }

          __swift_destroy_boxed_opaque_existential_0(v43);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v15 = sub_26A07B4A8(0, *(v15 + 2) + 1, 1, v15);
          }

          v19 = *(v15 + 2);
          v18 = *(v15 + 3);
          v20 = v19 + 1;
          if (v19 >= v18 >> 1)
          {
            v21 = sub_26A07B4A8((v18 > 1), v19 + 1, 1, v15);
            v20 = v19 + 1;
            v15 = v21;
          }

          *(v15 + 2) = v20;
          *&v15[8 * v19 + 32] = v17;
          goto LABEL_24;
        }

        v15 = MEMORY[0x277D84F90];
LABEL_33:
        v24 = sub_26A0806A0(v15);
LABEL_34:
        v25 = v24;

        if (*(v10 + 16))
        {
          goto LABEL_35;
        }

LABEL_41:

        goto LABEL_42;
      }
    }
  }

  if (*(v42[0] + 16))
  {
    v22 = sub_26A099F20(0x7A69726F68747561, 0xEE00736E6F697461);
    if (v23)
    {
      sub_26A069E3C(*(v42[0] + 56) + 32 * v22, v43);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369298, &unk_26A09F4A0);
      if (swift_dynamicCast())
      {
        v24 = sub_26A0875EC(v42[0]);
        goto LABEL_34;
      }
    }
  }

  v25 = MEMORY[0x277D84FA0];
  if (!*(v42[0] + 16))
  {
    goto LABEL_41;
  }

LABEL_35:
  v26 = sub_26A099F20(1954047348, 0xE400000000000000);
  if ((v27 & 1) == 0)
  {
    goto LABEL_41;
  }

  sub_26A069E3C(*(v10 + 56) + 32 * v26, v43);
  if (!swift_dynamicCast())
  {
    goto LABEL_41;
  }

  v28 = sub_26A09DE74();

  v29 = sub_26A09DE74();
  v30 = [a1 localizedStringForKey:v28 value:v29 table:0];

  v31 = sub_26A09DEA4();
  v33 = v32;

  if (*(v10 + 16) && (v34 = sub_26A099F20(0xD000000000000010, 0x800000026A0A0DD0), (v35 & 1) != 0) && (sub_26A069E3C(*(v10 + 56) + 32 * v34, v43), swift_dynamicCast()))
  {
    v36 = LOBYTE(v42[0]);
  }

  else
  {
    v36 = 0;
  }

  if (!*(v10 + 16) || (v39 = sub_26A099F20(7107189, 0xE300000000000000), (v40 & 1) == 0))
  {

    goto LABEL_44;
  }

  sub_26A069E3C(*(v10 + 56) + 32 * v39, v43);

  v41 = swift_dynamicCast();
  v37 = v42[0];
  v38 = v42[1];
  if (!v41)
  {
    v37 = 0;
    v38 = 0;
  }

LABEL_45:
  *a2 = v25;
  a2[1] = v36;
  a2[2] = v31;
  a2[3] = v33;
  a2[4] = v37;
  a2[5] = v38;
}

uint64_t sub_26A069DDC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_26A069E3C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t objectdestroyTm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803692B0, &qword_26A09F4B8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26A069F94(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_26A06A004(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t AuthorizationManager.__allocating_init(eligibilityDefaults:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CoreLocationAuthorizationProvider(0);
  v4 = swift_allocObject();
  sub_26A09DE14();
  v5 = (v4 + OBJC_IVAR____TtC18SmartStackSettings33CoreLocationAuthorizationProvider_observationBlock);
  *v5 = 0;
  v5[1] = 0;
  v6 = OBJC_IVAR____TtC18SmartStackSettings33CoreLocationAuthorizationProvider_locationManagersByApp;
  v7 = MEMORY[0x277D84F90];
  *(v4 + v6) = sub_26A076734(MEMORY[0x277D84F90]);
  v8 = OBJC_IVAR____TtC18SmartStackSettings33CoreLocationAuthorizationProvider_cachedLocationByApp;
  *(v4 + v8) = sub_26A07685C(v7);
  v9 = type metadata accessor for HealthKitAuthorizationProvider(0);
  swift_allocObject();
  v10 = sub_26A081854();
  v11 = type metadata accessor for AuthorizationPersistence(0);
  swift_allocObject();
  v12 = AuthorizationPersistence.init(defaultsDomain:)(a1, a2);
  v13 = type metadata accessor for AuthorizationExtensionProvider(0);
  swift_allocObject();
  v36[3] = v9;
  v36[4] = &off_287AFC5F0;
  v36[0] = v10;
  v35 = &off_287AFC588;
  v34 = v11;
  v32 = &off_287AFC108;
  v33[0] = v12;
  v31 = v13;
  v30[0] = sub_26A0678E8();
  v14 = swift_allocObject();
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v36, v9);
  MEMORY[0x28223BE20](v15);
  v17 = (&v30[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v33, v34);
  MEMORY[0x28223BE20](v19);
  v21 = (&v30[-1] - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
  MEMORY[0x28223BE20](v23);
  v25 = (&v30[-1] - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  v27 = sub_26A075E18(v4, *v17, *v21, *v25, v14, 86400.0);
  __swift_destroy_boxed_opaque_existential_0(v30);
  __swift_destroy_boxed_opaque_existential_0(v33);
  __swift_destroy_boxed_opaque_existential_0(v36);
  return v27;
}

uint64_t sub_26A06A408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  if (qword_280369100 != -1)
  {
    swift_once();
  }

  type metadata accessor for AuthorizationActor();
  sub_26A077D64(&qword_280369810, type metadata accessor for AuthorizationActor, &protocol conformance descriptor for AuthorizationActor);
  v6 = sub_26A09DFA4();

  return MEMORY[0x2822009F8](sub_26A06A4F8, v6, v5);
}

uint64_t sub_26A06A4F8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_26A06A594();
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

void *sub_26A06A594()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803694B8, &qword_26A09F708);
  v127 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v127 - v2;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803693F8, &qword_26A09F5A8);
  v131 = *(v132 - 8);
  v129 = *(v131 + 64);
  MEMORY[0x28223BE20](v132);
  v130 = &v127 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369340, &qword_26A09F530);
  MEMORY[0x28223BE20](v5 - 8);
  v153 = &v127 - v6;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369260, &qword_26A09F480);
  v147 = *(v152 - 8);
  v7 = MEMORY[0x28223BE20](v152);
  v134 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v144 = &v127 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v133 = &v127 - v12;
  v149 = v13;
  MEMORY[0x28223BE20](v11);
  v146 = &v127 - v14;
  v15 = sub_26A09DE24();
  v16 = *(v15 - 1);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A06D4E8();
  v19 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_locationAuthorizationProvider;
  swift_beginAccess();
  v128 = v19;
  result = sub_26A079100(v0 + v19, &v156, &qword_280369388, &qword_26A09F588);
  v21 = v157;
  if (!v157)
  {
    __break(1u);
    goto LABEL_19;
  }

  v150 = v158;
  v151 = __swift_project_boxed_opaque_existential_1(&v156, v157);
  v22 = v16;
  v23 = *(v16 + 16);
  v148 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_logger;
  v140 = (v16 + 16);
  v138 = v23;
  v23(&v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v0 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_logger, v15);
  v24 = *(v16 + 80);
  v25 = (v24 + 16) & ~v24;
  v26 = (v17 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v137 = v24;
  v27 = swift_allocObject();
  v28 = *(v22 + 32);
  v139 = v25;
  v29 = v27 + v25;
  v30 = v28;
  v142 = v18;
  v145 = v15;
  v143 = v22 + 32;
  v28(v29, v18, v15);
  v141 = v26;
  *(v27 + v26) = v0;
  v31 = v150;
  v154 = v0;
  v32 = v150[2];

  v32(sub_26A0782A0, v27, v21, v31);

  __swift_destroy_boxed_opaque_existential_0(&v156);
  v33 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_healthAuthorizationProvider;
  swift_beginAccess();
  v34 = v154 + v33;
  v35 = v154;
  result = sub_26A079100(v34, &v156, &qword_280369398, &qword_26A09F590);
  if (!v157)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  __swift_project_boxed_opaque_existential_1(&v156, v157);
  v36 = v142;
  v37 = v145;
  v138(v142, v35 + v148, v145);
  v38 = v141;
  v39 = swift_allocObject();
  v30(v39 + v139, v36, v37);
  *(v39 + v38) = v35;

  sub_26A081A18(sub_26A078364, v39);

  __swift_destroy_boxed_opaque_existential_0(&v156);
  v40 = (v35 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_extensionProvider);
  result = swift_beginAccess();
  v41 = v40[3];
  v42 = v147;
  if (!v41)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v43 = __swift_project_boxed_opaque_existential_1(v40, v41);
  v44 = *(v42 + 16);
  v45 = *v43 + OBJC_IVAR____TtC18SmartStackSettings30AuthorizationExtensionProvider_allowedAppIdentifiersChangedStream;
  v145 = v40;
  v46 = v146;
  v47 = v152;
  v44(v146, v45, v152);
  v48 = sub_26A09DFF4();
  v49 = *(v48 - 8);
  v50 = *(v49 + 56);
  v143 = v48;
  v151 = v50;
  v142 = (v49 + 56);
  (v50)(v153, 1, 1);
  v51 = swift_allocObject();
  swift_weakInit();
  v52 = v133;
  v140 = v44;
  v141 = v42 + 16;
  v44(v133, v46, v47);
  v53 = qword_280369100;

  if (v53 != -1)
  {
    swift_once();
  }

  v54 = off_280369A30;
  v55 = sub_26A077D64(&qword_280369810, type metadata accessor for AuthorizationActor, &protocol conformance descriptor for AuthorizationActor);
  v56 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v57 = (v149 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
  v138 = *(v42 + 80);
  v58 = swift_allocObject();
  *(v58 + 16) = v54;
  *(v58 + 24) = v55;
  v149 = v55;
  v59 = *(v42 + 32);
  v139 = v56;
  v60 = v58 + v56;
  v61 = v152;
  v137 = v42 + 32;
  v136 = v59;
  v59(v60, v52, v152);
  v135 = v57;
  *(v58 + v57) = v51;
  v150 = v54;
  swift_retain_n();

  v62 = v153;
  sub_26A06B90C(0, 0, v153, &unk_26A09F738, v58);

  result = v145;
  v63 = v145[3];
  if (!v63)
  {
    goto LABEL_21;
  }

  v64 = v61;
  v65 = v52;
  v66 = __swift_project_boxed_opaque_existential_1(v145, v63);
  v67 = v144;
  v68 = v61;
  v69 = v140;
  v140(v144, *v66 + OBJC_IVAR____TtC18SmartStackSettings30AuthorizationExtensionProvider_onboardingPropertiesByAppChangedStream, v68);
  v151(v62, 1, 1, v143);
  v70 = v62;
  v71 = swift_allocObject();
  v72 = v154;
  swift_weakInit();
  v69(v65, v67, v64);
  v73 = v135;
  v74 = swift_allocObject();
  v75 = v149;
  *(v74 + 16) = v150;
  *(v74 + 24) = v75;
  v136(v74 + v139, v65, v64);
  *(v74 + v73) = v71;

  sub_26A06B90C(0, 0, v70, &unk_26A09F748, v74);

  v76 = (v72 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_ineligibilityStore);
  result = swift_beginAccess();
  v77 = v76[3];
  if (!v77)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  __swift_project_boxed_opaque_existential_1(v76, v77);
  v78 = v134;
  AuthorizationPersistence.externalChangeStream.getter();
  v79 = v70;
  v80 = v143;
  v151(v79, 1, 1, v143);
  v81 = swift_allocObject();
  swift_weakInit();
  v140(v65, v78, v64);
  v82 = v135;
  v83 = swift_allocObject();
  v84 = v149;
  *(v83 + 16) = v150;
  *(v83 + 24) = v84;
  v136(v83 + v139, v65, v64);
  *(v83 + v82) = v81;

  v85 = v153;
  sub_26A06B90C(0, 0, v153, &unk_26A09F758, v83);

  v151(v85, 1, 1, v80);
  v86 = v154;
  v87 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_userConfiguredAppIdentifierStream;
  v88 = swift_allocObject();
  swift_weakInit();
  v89 = v131;
  v90 = v130;
  v91 = v132;
  (*(v131 + 16))(v130, v86 + v87, v132);
  v92 = (*(v89 + 80) + 32) & ~*(v89 + 80);
  v93 = (v129 + v92 + 7) & 0xFFFFFFFFFFFFFFF8;
  v94 = swift_allocObject();
  v95 = v149;
  *(v94 + 16) = v150;
  *(v94 + 24) = v95;
  (*(v89 + 32))(v94 + v92, v90, v91);
  *(v94 + v93) = v88;
  sub_26A06B90C(0, 0, v153, &unk_26A09F768, v94);

  v96 = v145;
  v97 = v145[3];
  if (!v97)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  __swift_project_boxed_opaque_existential_1(v145, v97);
  v98 = sub_26A0684DC();
  v99 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_onboardingPropertiesByApp;
  swift_beginAccess();
  *(v86 + v99) = v98;

  v100 = v96[3];
  if (!v100)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  v101 = v86;
  __swift_project_boxed_opaque_existential_1(v96, v100);
  v102 = sub_26A06807C();
  v103 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_allowedApps;
  *(v101 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_allowedApps) = v102;

  v104 = sub_26A09DE04();
  v105 = sub_26A09E124();

  v106 = os_log_type_enabled(v104, v105);
  v153 = v103;
  if (v106)
  {
    v107 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v156 = v108;
    *v107 = 136446210;

    v109 = sub_26A09E0A4();
    v111 = v110;

    v112 = sub_26A089EEC(v109, v111, &v156);

    *(v107 + 4) = v112;
    _os_log_impl(&dword_26A066000, v104, v105, "Initial app list: %{public}s", v107, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v108);
    MEMORY[0x26D65A520](v108, -1, -1);
    MEMORY[0x26D65A520](v107, -1, -1);
  }

  result = sub_26A079100(v101 + v128, &v156, &qword_280369388, &qword_26A09F588);
  v113 = v157;
  if (!v157)
  {
    goto LABEL_25;
  }

  v114 = v158;
  __swift_project_boxed_opaque_existential_1(&v156, v157);
  v155 = *(v101 + v153);
  v151 = v114[3];

  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369438, &qword_26A09F648);
  v116 = sub_26A0789F8();
  (v151)(&v155, v115, v116, v113, v114);

  __swift_destroy_boxed_opaque_existential_0(&v156);

  sub_26A06D8F4(v117);

  sub_26A070F60();
  *(v101 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_started) = 1;
  v118 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_startedContinuations;
  v119 = *(v101 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_startedContinuations);
  v120 = *(v119 + 16);
  if (v120)
  {
    v153 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_startedContinuations;
    v121 = *(v127 + 16);
    v122 = v119 + ((*(v127 + 80) + 32) & ~*(v127 + 80));
    v123 = *(v127 + 72);
    v124 = (v127 + 8);

    do
    {
      v121(v3, v122, v1);
      sub_26A09DFD4();
      (*v124)(v3, v1);
      v122 += v123;
      --v120;
    }

    while (v120);

    v118 = v153;
  }

  v125 = *(v147 + 8);
  v126 = v152;
  v125(v134, v152);
  v125(v144, v126);
  v125(v146, v126);
  *(v154 + v118) = MEMORY[0x277D84F90];
}

uint64_t sub_26A06B5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369340, &qword_26A09F530);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_26A079100(a3, v25 - v10, &qword_280369340, &qword_26A09F530);
  v12 = sub_26A09DFF4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_26A069DDC(v11, &qword_280369340, &qword_26A09F530);
  }

  else
  {
    sub_26A09DFE4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_26A09DFA4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_26A09DEC4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803694B0, &qword_26A09F6D8);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_26A069DDC(a3, &qword_280369340, &qword_26A09F530);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_26A069DDC(a3, &qword_280369340, &qword_26A09F530);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803694B0, &qword_26A09F6D8);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_26A06B90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369340, &qword_26A09F530);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_26A079100(a3, v25 - v10, &qword_280369340, &qword_26A09F530);
  v12 = sub_26A09DFF4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_26A069DDC(v11, &qword_280369340, &qword_26A09F530);
  }

  else
  {
    sub_26A09DFE4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_26A09DFA4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_26A09DEC4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_26A069DDC(a3, &qword_280369340, &qword_26A09F530);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_26A069DDC(a3, &qword_280369340, &qword_26A09F530);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t AuthorizationManager.descriptorCollectionStream.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369340, &qword_26A09F530);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v19 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369348, &qword_26A09F538);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v19 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369350, &qword_26A09F540);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = v19 - v13;
  *v7 = 1;
  (*(v5 + 104))(v7, *MEMORY[0x277D85768], v4);
  sub_26A09E004();
  (*(v5 + 8))(v7, v4);
  v15 = sub_26A09DFF4();
  (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
  (*(v9 + 16))(v12, v14, v8);
  v16 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 4) = v19[1];
  (*(v9 + 32))(&v17[v16], v12, v8);

  sub_26A06B90C(0, 0, v3, &unk_26A09F550, v17);

  return (*(v9 + 8))(v14, v8);
}

uint64_t sub_26A06BF28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_26A06BFC4;

  return sub_26A06C0B8(a5);
}

uint64_t sub_26A06BFC4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26A06C0B8(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369488, &qword_26A09F698);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369350, &qword_26A09F540);
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  if (qword_280369100 != -1)
  {
    swift_once();
  }

  v2[11] = off_280369A30;
  type metadata accessor for AuthorizationActor();
  v2[12] = sub_26A077D64(&qword_280369810, type metadata accessor for AuthorizationActor, &protocol conformance descriptor for AuthorizationActor);
  v6 = sub_26A09DFA4();
  v2[13] = v6;
  v2[14] = v5;

  return MEMORY[0x2822009F8](sub_26A06C280, v6, v5);
}

uint64_t sub_26A06C280()
{
  v1 = v0[4];
  if (*(v1 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_started))
  {
    (*(v0[9] + 16))(v0[10], v0[3], v0[8]);
    v2 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_descriptorCollectionContinuations;
    v3 = *(v1 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_descriptorCollectionContinuations);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + v2) = v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v3 = sub_26A07B5B4(0, v3[2] + 1, 1, v3);
      *(v1 + v2) = v3;
    }

    v6 = v3[2];
    v5 = v3[3];
    if (v6 >= v5 >> 1)
    {
      v3 = sub_26A07B5B4((v5 > 1), v6 + 1, 1, v3);
    }

    v8 = v0[9];
    v7 = v0[10];
    v9 = v0[8];
    v10 = v0[4];
    v3[2] = v6 + 1;
    (*(v8 + 32))(v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6, v7, v9);
    *(v1 + v2) = v3;
    v11 = v10 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_descriptorCollectionMutex;
    os_unfair_lock_lock((v10 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_descriptorCollectionMutex));
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v12 = v0[7];
    v13 = v0[5];
    v14 = v0[6];
    v0[2] = *(v11 + 8);

    sub_26A09E024();
    (*(v14 + 8))(v12, v13);
    os_unfair_lock_unlock(v11);

    v15 = v0[1];

    return v15();
  }

  else
  {
    v17 = swift_task_alloc();
    v0[15] = v17;
    *v17 = v0;
    v17[1] = sub_26A06C52C;

    return MEMORY[0x2822007B8]();
  }
}

uint64_t sub_26A06C52C()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_26A06C64C, v3, v2);
}

uint64_t sub_26A06C64C()
{
  v1 = v0[4];
  (*(v0[9] + 16))(v0[10], v0[3], v0[8]);
  v2 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_descriptorCollectionContinuations;
  v3 = *(v1 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_descriptorCollectionContinuations);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v2) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_26A07B5B4(0, v3[2] + 1, 1, v3);
    *(v1 + v2) = v3;
  }

  v6 = v3[2];
  v5 = v3[3];
  if (v6 >= v5 >> 1)
  {
    v3 = sub_26A07B5B4((v5 > 1), v6 + 1, 1, v3);
  }

  v8 = v0[9];
  v7 = v0[10];
  v9 = v0[8];
  v10 = v0[4];
  v3[2] = v6 + 1;
  (*(v8 + 32))(v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6, v7, v9);
  *(v1 + v2) = v3;
  v11 = v10 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_descriptorCollectionMutex;
  os_unfair_lock_lock((v10 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_descriptorCollectionMutex));
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = v0[7];
  v13 = v0[5];
  v14 = v0[6];
  v0[2] = *(v11 + 8);

  sub_26A09E024();
  (*(v14 + 8))(v12, v13);
  os_unfair_lock_unlock(v11);

  v15 = v0[1];

  return v15();
}

void AuthorizationManager.descriptorCollection.getter(void *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_descriptorCollectionMutex;
  os_unfair_lock_lock(v3);
  *a1 = *(v3 + 8);

  os_unfair_lock_unlock(v3);
}

uint64_t sub_26A06C89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_26A06C8C0, 0, 0);
}

uint64_t sub_26A06C8C0()
{
  if (qword_280369100 != -1)
  {
    swift_once();
  }

  type metadata accessor for AuthorizationActor();
  sub_26A077D64(&qword_280369810, type metadata accessor for AuthorizationActor, &protocol conformance descriptor for AuthorizationActor);
  v1 = sub_26A09DFA4();

  return MEMORY[0x2822009F8](sub_26A06C9AC, v1, v0);
}

uint64_t sub_26A06C9AC()
{
  sub_26A06CA14(v0[3], v0[4], 0);
  v1 = v0[1];

  return v1();
}

uint64_t sub_26A06CA14(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = v3 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_descriptorCollectionMutex;
  os_unfair_lock_lock((v3 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_descriptorCollectionMutex));
  v9 = *(v8 + 8);

  os_unfair_lock_unlock(v8);
  if (*(v9 + 16) && (v10 = sub_26A099F20(a1, a2), (v11 & 1) != 0))
  {
    v12 = *(v9 + 56) + 72 * v10;
    v33 = *v12;
    v14 = *(v12 + 32);
    v13 = *(v12 + 48);
    v15 = *(v12 + 64);
    v34 = *(v12 + 16);
    v35 = v14;
    v37 = v15;
    v36 = v13;
    sub_26A077C4C(&v33, &v45);

    v40 = v35;
    v41 = v36;
    v42 = v37;
    v38 = v33;
    v39 = v34;
    v47 = v35;
    v48 = v36;
    v49 = v37;
    v45 = v33;
    v46 = v34;
    AuthorizationDescriptor.eligibleAuthorizations.getter();
    v47 = v40;
    v48 = v41;
    v49 = v42;
    v45 = v38;
    v46 = v39;
    v44 = v16;
    if ((a3 & 1) == 0)
    {
LABEL_4:
      sub_26A069DDC(&v45, &qword_280369490, &qword_26A09F6A0);
      goto LABEL_9;
    }
  }

  else
  {

    v49 = 0;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v44 = MEMORY[0x277D84FA0];
    if ((a3 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  if (*(&v45 + 1))
  {
    v38 = v45;
    v39 = v46;
    v40 = v47;
    v41 = v48;
    v42 = v49;
    AuthorizationDescriptor.eligibleForModalIncidentalUsePrompt.getter();
    v18 = v17;
    sub_26A069DDC(&v45, &qword_280369490, &qword_26A09F6A0);
    if (v18)
    {
      sub_26A09367C(&v38, 2);
      sub_26A077CFC(v38);
      goto LABEL_10;
    }
  }

LABEL_9:
  sub_26A095A78(2, &v38);
  sub_26A07800C(v38);
LABEL_10:
  v19 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_ineligibilityStore;
  swift_beginAccess();
  result = sub_26A079100(v4 + v19, &v38, &qword_2803693A8, &qword_26A09F598);
  if (*(&v39 + 1))
  {
    v21 = *__swift_project_boxed_opaque_existential_1(&v38, *(&v39 + 1));
    v22 = OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_ineligibleAuthorizationTypeByApp;
    swift_beginAccess();
    v23 = *(v21 + v22);
    if (*(v23 + 16) && (v24 = sub_26A099F20(a1, a2), (v25 & 1) != 0))
    {
      v26 = *(*(v23 + 56) + 8 * v24);
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      v26 = MEMORY[0x277D84FA0];
    }

    sub_26A079600(v27, v26);
    v29 = v28;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = *(v21 + v22);
    *(v21 + v22) = 0x8000000000000000;
    sub_26A07E4B8(v29, a1, a2, isUniquelyReferenced_nonNull_native);

    *(v21 + v22) = v43;
    swift_endAccess();
    sub_26A07A33C();

    __swift_destroy_boxed_opaque_existential_0(&v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369480, &qword_26A09F690);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26A09F500;
    *(inited + 32) = a1;
    *(inited + 40) = a2;

    v32 = sub_26A08A494(inited);
    swift_setDeallocating();
    sub_26A069D88(inited + 32);
    sub_26A06D8F4(v32);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26A06CDD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369340, &qword_26A09F530);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - v10;
  v12 = sub_26A09DFF4();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v6;
  v13[5] = a1;
  v13[6] = a2;

  sub_26A06B90C(0, 0, v11, a4, v13);
}

uint64_t sub_26A06CEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_26A06CF14, 0, 0);
}

uint64_t sub_26A06CF14()
{
  if (qword_280369100 != -1)
  {
    swift_once();
  }

  type metadata accessor for AuthorizationActor();
  sub_26A077D64(&qword_280369810, type metadata accessor for AuthorizationActor, &protocol conformance descriptor for AuthorizationActor);
  v1 = sub_26A09DFA4();

  return MEMORY[0x2822009F8](sub_26A06D000, v1, v0);
}

uint64_t sub_26A06D000()
{
  sub_26A06D064(v0[3], v0[4]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_26A06D064(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369830, "J*");
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v19[-v10];
  v12 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_ineligibilityStore;
  swift_beginAccess();
  result = sub_26A079100(v2 + v12, v20, &qword_2803693A8, &qword_26A09F598);
  if (!v21)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  __swift_project_boxed_opaque_existential_1(v20, v21);
  AuthorizationPersistence.dismissalDate(for:)(a1, a2, v11);
  v14 = sub_26A09DD34();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v11, 1, v14);
  sub_26A069DDC(v11, &qword_280369830, "J*");
  __swift_destroy_boxed_opaque_existential_0(v20);
  if (v16 == 1)
  {
    result = sub_26A079100(v3 + v12, v20, &qword_2803693A8, &qword_26A09F598);
    if (v21)
    {
      __swift_project_boxed_opaque_existential_1(v20, v21);
      sub_26A09DD24();
      (*(v15 + 56))(v9, 0, 1, v14);
      AuthorizationPersistence.updateDismissalDate(_:for:)(v9, a1, a2);
      sub_26A069DDC(v9, &qword_280369830, "J*");
      __swift_destroy_boxed_opaque_existential_0(v20);
      sub_26A070F60();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369480, &qword_26A09F690);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_26A09F500;
      *(inited + 32) = a1;
      *(inited + 40) = a2;

      v18 = sub_26A08A494(inited);
      swift_setDeallocating();
      sub_26A069D88(inited + 32);
      sub_26A06D8F4(v18);
    }

    goto LABEL_8;
  }

  return sub_26A06CA14(a1, a2, 1);
}

uint64_t AuthorizationManager.updateUserConfiguredAppIdentifiers<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369360, &qword_26A09F578);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - v10;
  (*(v5 + 16))(v7, a1, a2);
  v13[1] = sub_26A09E0C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369370, &qword_26A09F580);
  sub_26A09E024();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_26A06D4E8()
{
  v1 = sub_26A09DDF4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280369100 != -1)
  {
    swift_once();
  }

  v5 = *(off_280369A30 + 2);
  swift_unownedRetainStrong();
  v6 = v5;
  swift_unownedRetain();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = v0;
  sub_26A09DDE4();
  v7 = sub_26A09DDD4();

  swift_unownedRelease();
  (*(v2 + 8))(v4, v1);
  *(v0 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_stateDumpHandle) = v7;
}

uint64_t sub_26A06D698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a1;
  v6[12] = a4;
  return MEMORY[0x2822009F8](sub_26A06D6BC, 0, 0);
}

uint64_t sub_26A06D6BC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 120) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 104);
    v2 = *(v0 + 112);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369480, &qword_26A09F690);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26A09F500;
    *(inited + 32) = v3;
    *(inited + 40) = v2;

    *(v0 + 128) = sub_26A08A494(inited);
    swift_setDeallocating();
    sub_26A069D88(inited + 32);
    if (qword_280369100 != -1)
    {
      swift_once();
    }

    type metadata accessor for AuthorizationActor();
    sub_26A077D64(&qword_280369810, type metadata accessor for AuthorizationActor, &protocol conformance descriptor for AuthorizationActor);
    v6 = sub_26A09DFA4();

    return MEMORY[0x2822009F8](sub_26A06D878, v6, v5);
  }

  else
  {
    **(v0 + 88) = 1;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_26A06D878()
{
  sub_26A06D8F4(*(v0 + 128));

  return MEMORY[0x2822009F8](sub_26A07919C, 0, 0);
}

uint64_t sub_26A06D8F4(int64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369488, &qword_26A09F698);
  v69 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v68 - v4;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369350, &qword_26A09F540);
  v72 = *(v71 - 8);
  MEMORY[0x28223BE20](v71 - 8);
  v70 = &v68 - v6;
  v86 = v1;
  v73 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_descriptorsByApp;
  v7 = *&v1[OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_descriptorsByApp];
  v131 = MEMORY[0x277D84FA0];
  v132 = v7;
  v8 = a1 + 56;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 56);
  v12 = (v9 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v82 = a1;

  v13 = 0;
  v87 = v3;
  v80 = v7;
  v81 = v5;
  v74 = a1 + 56;
  while (v11)
  {
    v16 = v13;
LABEL_10:
    v17 = (*(v82 + 48) + ((v16 << 10) | (16 * __clz(__rbit64(v11)))));
    v18 = *v17;
    v19 = v17[1];

    sub_26A07182C(v18, v19, &v108);
    v128 = v110;
    v129 = v111;
    v130 = v112;
    v126 = v108;
    v127 = v109;
    v20 = *(v7 + 16);
    v85 = v18;
    if (v20 && (v21 = sub_26A099F20(v18, v19), (v22 & 1) != 0))
    {
      v23 = *(v7 + 56) + 72 * v21;
      v108 = *v23;
      v24 = *(v23 + 64);
      v26 = *(v23 + 32);
      v25 = *(v23 + 48);
      v109 = *(v23 + 16);
      v110 = v26;
      v111 = v25;
      v112 = v24;
      v78 = *(&v108 + 1);
      v79 = v108;
      v83 = *(&v109 + 1);
      v84 = v109;
      v27 = v12;
      v29 = *(&v26 + 1);
      v28 = v26;
      v30 = *(&v25 + 1);
      v31 = v25;
      sub_26A077C4C(&v108, &v103);
      v32 = v30;
      v33 = v31;
      v34 = v29;
      v36 = v78;
      v35 = v79;
      v37 = v28;
      v12 = v27;
      v8 = v74;
      v39 = v83;
      v38 = v84;
      v40 = v24;
    }

    else
    {
      v35 = 0;
      v36 = 0;
      v38 = 0;
      v39 = 0;
      v37 = 0;
      v34 = 0;
      v33 = 0;
      v32 = 0;
      v40 = 0;
    }

    v11 &= v11 - 1;
    v41 = v126;
    v122 = v127;
    v123 = v128;
    v124 = v129;
    v125 = v130;
    if (*(&v126 + 1))
    {
      v108 = v126;
      v109 = v127;
      v110 = v128;
      v111 = v129;
      v112 = v130;
      v103 = v126;
      v104 = v127;
      v105 = v128;
      v106 = v129;
      v107 = v130;
      if (!v36)
      {
        v75 = v32;
        v76 = v33;
        v77 = v34;
        v78 = v37;
        v83 = v39;
        v84 = v38;
        v79 = v40;
        v100 = v110;
        v101 = v111;
        v102 = v112;
        v98 = v108;
        v99 = v109;
        sub_26A079100(&v126, v96, &qword_280369490, &qword_26A09F6A0);
        sub_26A079100(&v108, v96, &qword_280369490, &qword_26A09F6A0);
        sub_26A077BF8(&v98);
        goto LABEL_21;
      }

      *&v89 = v35;
      *(&v89 + 1) = v36;
      *&v90 = v38;
      *(&v90 + 1) = v39;
      *&v91 = v37;
      *(&v91 + 1) = v34;
      *&v92 = v33;
      *(&v92 + 1) = v32;
      v93 = v40;
      sub_26A079100(&v126, v88, &qword_280369490, &qword_26A09F6A0);
      sub_26A079100(&v108, v88, &qword_280369490, &qword_26A09F6A0);
      v42 = _s18SmartStackSettings23AuthorizationDescriptorV2eeoiySbAC_ACtFZ_0(&v103, &v89);
      v94[2] = v91;
      v94[3] = v92;
      v95 = v93;
      v94[0] = v89;
      v94[1] = v90;
      sub_26A077BF8(v94);
      v96[2] = v105;
      v96[3] = v106;
      v97 = v107;
      v96[0] = v103;
      v96[1] = v104;
      sub_26A077BF8(v96);
      v98 = v41;
      v99 = v122;
      v100 = v123;
      v101 = v124;
      v102 = v125;
      sub_26A069DDC(&v98, &qword_280369490, &qword_26A09F6A0);
      if (v42)
      {

        v43 = &v126;
        goto LABEL_26;
      }

LABEL_22:
      v7 = v80;
      v5 = v81;

      v44 = v85;
      sub_26A09352C(&v108, v85, v19);

      if (*(&v126 + 1))
      {
        v133[2] = v128;
        v133[3] = v129;
        v134 = v130;
        v133[0] = v126;
        v133[1] = v127;
        v14 = v132;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v108 = v14;
        sub_26A07EC14(v133, v44, v19, isUniquelyReferenced_nonNull_native);

        v132 = v108;
      }

      else
      {
        sub_26A07BA80(v44, v19, &v103);

        v110 = v105;
        v111 = v106;
        v112 = v107;
        v108 = v103;
        v109 = v104;
        sub_26A069DDC(&v108, &qword_280369490, &qword_26A09F6A0);
      }

      v13 = v16;
    }

    else
    {
      if (v36)
      {
        v75 = v32;
        v76 = v33;
        v77 = v34;
        v78 = v37;
        v83 = v39;
        v84 = v38;
        v79 = v40;
        sub_26A079100(&v126, &v108, &qword_280369490, &qword_26A09F6A0);
LABEL_21:
        v108 = v41;
        v109 = v122;
        v110 = v123;
        v111 = v124;
        v112 = v125;
        v113 = v35;
        v114 = v36;
        v115 = v84;
        v116 = v83;
        v117 = v78;
        v118 = v77;
        v119 = v76;
        v120 = v75;
        v121 = v79;
        sub_26A069DDC(&v108, &qword_280369498, &qword_26A09F6A8);
        goto LABEL_22;
      }

      v108 = v41;
      v109 = v122;
      v110 = v123;
      v111 = v124;
      v112 = v125;
      v43 = &v108;
LABEL_26:
      sub_26A069DDC(v43, &qword_280369490, &qword_26A09F6A0);
      v13 = v16;
      v7 = v80;
      v5 = v81;
    }
  }

  while (2)
  {
    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_41;
    }

    if (v16 < v12)
    {
      v11 = *(v8 + 8 * v16);
      ++v13;
      if (v11)
      {
        goto LABEL_10;
      }

      continue;
    }

    break;
  }

  v45 = v131;
  v46 = v132;
  if (!*(v131 + 16))
  {
  }

  v47 = v73;
  *&v86[v73] = v132;
  v83 = v46;

  v48 = sub_26A09DE04();
  v49 = sub_26A09E124();
  v50 = os_log_type_enabled(v48, v49);
  v84 = v45;
  if (v50)
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *&v108 = v52;
    *v51 = 136446210;

    v53 = sub_26A09E0A4();
    v55 = v54;

    v56 = sub_26A089EEC(v53, v55, &v108);

    *(v51 + 4) = v56;
    v47 = v73;
    _os_log_impl(&dword_26A066000, v48, v49, "Updating descriptor collection for keys: %{public}s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v52);
    MEMORY[0x26D65A520](v52, -1, -1);
    MEMORY[0x26D65A520](v51, -1, -1);
  }

  v7 = v72;
  v11 = *&v86[v47];
  v16 = &v86[OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_descriptorCollectionMutex];

  os_unfair_lock_lock(v16);

  if (qword_280369100 != -1)
  {
LABEL_41:
    swift_once();
  }

  type metadata accessor for AuthorizationActor();
  sub_26A077D64(&qword_280369810, type metadata accessor for AuthorizationActor, &protocol conformance descriptor for AuthorizationActor);
  sub_26A09DFA4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(v16 + 8) = v11;
  v57 = *&v86[OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_descriptorCollectionContinuations];
  v58 = *(v57 + 2);
  if (v58)
  {
    v82 = v16;
    v60 = *(v7 + 16);
    v59 = v7 + 16;
    v61 = &v57[(*(v59 + 64) + 32) & ~*(v59 + 64)];
    v85 = *(v59 + 56);
    v86 = v60;
    v62 = v5;
    v63 = (v69 + 8);

    v81 = v57;

    v64 = v11;
    v65 = v70;
    v66 = v71;
    do
    {
      (v86)(v65, v61, v66);
      *&v108 = v64;

      sub_26A09E024();
      (*v63)(v62, v87);
      (*(v59 - 8))(v65, v66);
      v61 += v85;
      --v58;
    }

    while (v58);

    v16 = v82;
  }

  os_unfair_lock_unlock(v16);
}

uint64_t sub_26A06E2F4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369340, &qword_26A09F530);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v26 - v13;

  v15 = sub_26A09DE04();
  v16 = sub_26A09E124();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v26 = a4;
    v18 = a7;
    v19 = v17;
    v20 = swift_slowAlloc();
    v27 = v20;
    *v19 = 136446210;
    *(v19 + 4) = sub_26A089EEC(a1, a2, &v27);
    _os_log_impl(&dword_26A066000, v15, v16, a5, v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x26D65A520](v20, -1, -1);
    v21 = v19;
    a7 = v18;
    MEMORY[0x26D65A520](v21, -1, -1);
  }

  v22 = sub_26A09DFF4();
  (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v23;
  v24[5] = a1;
  v24[6] = a2;

  sub_26A06B5F8(0, 0, v14, a7, v24);
}

uint64_t sub_26A06E520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a1;
  v6[12] = a4;
  return MEMORY[0x2822009F8](sub_26A06E544, 0, 0);
}

uint64_t sub_26A06E544()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 120) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 104);
    v2 = *(v0 + 112);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369480, &qword_26A09F690);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26A09F500;
    *(inited + 32) = v3;
    *(inited + 40) = v2;

    *(v0 + 128) = sub_26A08A494(inited);
    swift_setDeallocating();
    sub_26A069D88(inited + 32);
    if (qword_280369100 != -1)
    {
      swift_once();
    }

    type metadata accessor for AuthorizationActor();
    sub_26A077D64(&qword_280369810, type metadata accessor for AuthorizationActor, &protocol conformance descriptor for AuthorizationActor);
    v6 = sub_26A09DFA4();

    return MEMORY[0x2822009F8](sub_26A06E700, v6, v5);
  }

  else
  {
    **(v0 + 88) = 1;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_26A06E700()
{
  sub_26A06D8F4(*(v0 + 128));

  return MEMORY[0x2822009F8](sub_26A06E77C, 0, 0);
}

uint64_t sub_26A06E7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803694D8, &qword_26A09F778);
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  if (qword_280369100 != -1)
  {
    swift_once();
  }

  v5[10] = off_280369A30;
  type metadata accessor for AuthorizationActor();
  v5[11] = sub_26A077D64(&qword_280369810, type metadata accessor for AuthorizationActor, &protocol conformance descriptor for AuthorizationActor);
  v8 = sub_26A09DFA4();
  v5[12] = v8;
  v5[13] = v7;

  return MEMORY[0x2822009F8](sub_26A06E904, v8, v7);
}

uint64_t sub_26A06E904()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369260, &qword_26A09F480);
  sub_26A09E044();
  swift_beginAccess();
  v1 = v0[10];
  v2 = v0[11];
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_26A06E9F0;
  v4 = v0[7];

  return MEMORY[0x2822003E8](v0 + 15, v1, v2, v4);
}

uint64_t sub_26A06E9F0()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_26A06EB10, v3, v2);
}

uint64_t sub_26A06EB10()
{
  if (*(v0 + 120) == 1 || !swift_weakLoadStrong())
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    goto LABEL_6;
  }

  if (sub_26A09E084())
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

LABEL_6:

    v1 = *(v0 + 8);

    return v1();
  }

  sub_26A06EC70();

  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = swift_task_alloc();
  *(v0 + 112) = v5;
  *v5 = v0;
  v5[1] = sub_26A06E9F0;
  v6 = *(v0 + 56);

  return MEMORY[0x2822003E8](v0 + 120, v3, v4, v6);
}

void sub_26A06EC70()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_extensionProvider);
  swift_beginAccess();
  v3 = v2[3];
  if (!v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(v2, v3);
  v4 = sub_26A06807C();
  v5 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_allowedApps;
  v39[0] = v4;

  sub_26A074C64(v6, v7);
  v8 = v4;

  v9 = sub_26A09DE04();
  v10 = sub_26A09E124();

  v37 = v5;
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v36 = v4;
    v12 = swift_slowAlloc();
    v39[0] = v12;
    *v11 = 136446466;

    v13 = v8;
    v14 = sub_26A09E0A4();
    v16 = v15;

    v17 = v14;
    v8 = v13;
    v18 = sub_26A089EEC(v17, v16, v39);

    *(v11 + 4) = v18;
    *(v11 + 12) = 2082;
    v19 = sub_26A09E0A4();
    v21 = sub_26A089EEC(v19, v20, v39);

    *(v11 + 14) = v21;
    _os_log_impl(&dword_26A066000, v9, v10, "Updating allowed apps: %{public}s\nChanged: %{public}s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D65A520](v12, -1, -1);
    MEMORY[0x26D65A520](v11, -1, -1);
  }

  v22 = v2[3];
  if (!v22)
  {
    goto LABEL_9;
  }

  v23 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v24 = *(v22 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v36 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v26);

  v27 = sub_26A06807C();
  (*(v24 + 8))(v26, v22);
  *(v1 + v37) = v27;

  v28 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_locationAuthorizationProvider;
  swift_beginAccess();
  sub_26A079100(v1 + v28, v39, &qword_280369388, &qword_26A09F588);
  v29 = v40;
  if (!v40)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v30 = v41;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  v38[0] = v27;
  v31 = *(v30 + 24);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369438, &qword_26A09F648);
  v33 = sub_26A0789F8();
  v31(v38, v32, v33, v29, v30);

  __swift_destroy_boxed_opaque_existential_0(v39);
  v34 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_healthAuthorizationProvider;
  swift_beginAccess();
  sub_26A079100(v1 + v34, v39, &qword_280369398, &qword_26A09F590);
  if (v40)
  {
    __swift_project_boxed_opaque_existential_1(v39, v40);

    sub_26A074528(v35);

    __swift_destroy_boxed_opaque_existential_0(v39);
    sub_26A06D8F4(v8);

    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_26A06F0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803694D8, &qword_26A09F778);
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  if (qword_280369100 != -1)
  {
    swift_once();
  }

  v5[10] = off_280369A30;
  type metadata accessor for AuthorizationActor();
  v5[11] = sub_26A077D64(&qword_280369810, type metadata accessor for AuthorizationActor, &protocol conformance descriptor for AuthorizationActor);
  v8 = sub_26A09DFA4();
  v5[12] = v8;
  v5[13] = v7;

  return MEMORY[0x2822009F8](sub_26A06F224, v8, v7);
}

uint64_t sub_26A06F224()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369260, &qword_26A09F480);
  sub_26A09E044();
  swift_beginAccess();
  v1 = v0[10];
  v2 = v0[11];
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_26A06F310;
  v4 = v0[7];

  return MEMORY[0x2822003E8](v0 + 15, v1, v2, v4);
}

uint64_t sub_26A06F310()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_26A06F430, v3, v2);
}

uint64_t sub_26A06F430()
{
  if (*(v0 + 120) == 1 || !swift_weakLoadStrong())
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    goto LABEL_6;
  }

  v1 = sub_26A09E084();
  if (v1)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

LABEL_6:

    v2 = *(v0 + 8);

    return v2();
  }

  sub_26A06F590(v1);

  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  *v6 = v0;
  v6[1] = sub_26A06F310;
  v7 = *(v0 + 56);

  return MEMORY[0x2822003E8](v0 + 120, v4, v5, v7);
}

void *sub_26A06F590(uint64_t a1)
{
  v2 = v1;
  v108 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_logger;
  v3 = sub_26A09DE04();
  v4 = sub_26A09E124();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_26A066000, v3, v4, "Updating app onboarding properties", v5, 2u);
    MEMORY[0x26D65A520](v5, -1, -1);
  }

  v6 = (v2 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_extensionProvider);
  result = swift_beginAccess();
  v8 = v6[3];
  if (!v8)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v107 = v6;
  __swift_project_boxed_opaque_existential_1(v6, v8);
  v9 = sub_26A0684DC();
  v10 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_onboardingPropertiesByApp;
  swift_beginAccess();
  v114 = v10;

  v11 = sub_26A08184C();

  v13 = sub_26A0796FC(v12, v11);
  v127 = MEMORY[0x277D84FA0];
  v14 = v13 + 56;
  v15 = 1 << *(v13 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v13 + 56);
  v18 = (v15 + 63) >> 6;
  v115 = v13;

  v19 = 0;
  v112 = v2;
  v113 = v9;
  v111 = v18;
  v109 = v14;
  if (v17)
  {
    while (1)
    {
      while (1)
      {
LABEL_11:
        v21 = (*(v115 + 48) + ((v19 << 10) | (16 * __clz(__rbit64(v17)))));
        v23 = *v21;
        v22 = v21[1];
        swift_beginAccess();
        v24 = *(v2 + v114);
        if (*(v24 + 16))
        {

          v25 = sub_26A099F20(v23, v22);
          if (v26)
          {
            v27 = *(v24 + 56) + 48 * v25;
            v28 = *v27;
            v29 = *(v27 + 8);
            v30 = *(v27 + 24);
            v121 = *(v27 + 16);
            v31 = *(v27 + 32);
            v122 = *(v27 + 40);

            v119 = v28;
            v32 = v29;

            v120 = v30;
          }

          else
          {
            v119 = 0;
            v32 = 0;
            v121 = 0;
            v120 = 0;
            v31 = 0;
            v122 = 0;
          }
        }

        else
        {
          v119 = 0;
          v32 = 0;
          v121 = 0;
          v120 = 0;
          v31 = 0;
          v122 = 0;
        }

        swift_endAccess();
        v33 = *(v9 + 16);
        v117 = v22;
        v116 = v23;
        v118 = v31;
        if (v33)
        {
          v34 = v32;
          v35 = sub_26A099F20(v23, v22);
          if (v36)
          {
            v37 = *(v9 + 56) + 48 * v35;
            v38 = *v37;
            v39 = *(v37 + 8);
            v40 = *(v37 + 16);
            v41 = *(v37 + 24);
            v43 = *(v37 + 32);
            v42 = *(v37 + 40);

            v44 = v43;
            v45 = v40;
            v46 = v42;
          }

          else
          {
            v38 = 0;
            v39 = 0;
            v45 = 0;
            v41 = 0;
            v44 = 0;
            v46 = 0;
          }

          v47 = v119;
          v32 = v34;
        }

        else
        {
          v38 = 0;
          v39 = 0;
          v45 = 0;
          v41 = 0;
          v44 = 0;
          v46 = 0;
          v47 = v119;
        }

        v17 &= v17 - 1;
        if (!v47)
        {
          break;
        }

        if (!v38)
        {
          goto LABEL_35;
        }

        v48 = v45;
        v49 = v44;
        sub_26A078AA8(v38, v39, v45, v41, v44, v46);
        v110 = v32;
        sub_26A078AA8(v47, v32, v121, v120, v118, v122);
        if ((sub_26A086CF8(v47, v38) & 1) == 0)
        {

          sub_26A078A5C(v38, v39, v48, v41, v49, v46);
          sub_26A078A5C(v47, v110, v121, v120, v118, v122);

LABEL_44:

          v2 = v112;
          v9 = v113;
          v69 = v117;
          v18 = v111;
          v14 = v109;
          goto LABEL_45;
        }

        v106 = v38;
        v50 = v48;
        v51 = v41;
        if (v110 != v39)
        {

          sub_26A078A5C(v106, v39, v48, v41, v49, v46);
          sub_26A078A5C(v119, v110, v121, v120, v118, v122);

          goto LABEL_44;
        }

        v52 = v122;
        v14 = v109;
        if (v121 != v50 || (v53 = v50, v120 != v41))
        {
          v54 = sub_26A09E4D4();
          v52 = v122;
          v53 = v50;
          if ((v54 & 1) == 0)
          {
            v105 = v50;

            sub_26A078A5C(v106, v110, v50, v41, v49, v46);
            sub_26A078A5C(v119, v110, v121, v120, v118, v122);

LABEL_51:

            goto LABEL_38;
          }
        }

        if (!v52)
        {
          sub_26A078A5C(v106, v110, v53, v41, v49, v46);
          sub_26A078A5C(v119, v110, v121, v120, v118, 0);

          if (!v46)
          {

            v74 = v119;
            v75 = v110;
            v76 = v121;
            v77 = v120;
            v78 = v118;
            v79 = 0;
            goto LABEL_55;
          }

          v63 = v119;
          v64 = v110;
          v65 = v121;
          v66 = v120;
          v67 = v118;
          v68 = 0;
          goto LABEL_37;
        }

        if (!v46)
        {
          v70 = v53;
          v71 = v52;

          sub_26A078A5C(v106, v110, v70, v41, v49, 0);
          sub_26A078A5C(v119, v110, v121, v120, v118, v71);

          goto LABEL_51;
        }

        if (v118 == v49 && v52 == v46)
        {
          v46 = v52;

          v55 = v118;
          sub_26A078A5C(v106, v110, v50, v51, v118, v46);
          v56 = v119;
          v57 = v110;
          v58 = v121;
          v59 = v120;
          sub_26A078A5C(v119, v110, v121, v120, v118, v46);
LABEL_53:

          v74 = v56;
          v75 = v57;
          v76 = v58;
          v77 = v59;
          v78 = v55;
          v79 = v46;
LABEL_55:
          result = sub_26A078A5C(v74, v75, v76, v77, v78, v79);
          goto LABEL_41;
        }

        v55 = v118;
        v104 = v49;
        v72 = v46;
        v46 = v52;
        LODWORD(v105) = sub_26A09E4D4();

        v73 = v51;

        v57 = v110;
        sub_26A078A5C(v106, v110, v50, v73, v104, v72);
        v56 = v119;
        v58 = v121;
        v59 = v120;
        sub_26A078A5C(v119, v110, v121, v120, v118, v46);
        if (v105)
        {
          goto LABEL_53;
        }

        v63 = v119;
        v64 = v110;
        v65 = v121;
        v66 = v120;
        v67 = v118;
LABEL_36:
        v68 = v46;
LABEL_37:
        sub_26A078A5C(v63, v64, v65, v66, v67, v68);
LABEL_38:
        v2 = v112;
        v9 = v113;
        v69 = v117;
        v18 = v111;
LABEL_45:
        sub_26A09352C(&v124, v116, v69);

        if (!v17)
        {
          goto LABEL_7;
        }
      }

      if (v38)
      {
LABEL_35:
        v60 = v47;
        v61 = v45;
        v62 = v44;
        sub_26A078A5C(v60, v32, v121, v120, v118, v122);
        v63 = v38;
        v64 = v39;
        v65 = v61;
        v66 = v41;
        v67 = v62;
        goto LABEL_36;
      }

LABEL_41:
      v2 = v112;
      v9 = v113;
      v18 = v111;
      if (!v17)
      {
        goto LABEL_7;
      }
    }
  }

  while (1)
  {
LABEL_7:
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_64;
    }

    if (v20 >= v18)
    {
      break;
    }

    v17 = *(v14 + 8 * v20);
    ++v19;
    if (v17)
    {
      v19 = v20;
      goto LABEL_11;
    }
  }

  v80 = sub_26A09DE04();
  v81 = sub_26A09E124();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v124 = v83;
    *v82 = 136446210;
    swift_beginAccess();

    v84 = sub_26A09E0A4();
    v86 = v85;

    v87 = sub_26A089EEC(v84, v86, &v124);

    *(v82 + 4) = v87;
    _os_log_impl(&dword_26A066000, v80, v81, "Properties changed for: %{public}s", v82, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v83);
    MEMORY[0x26D65A520](v83, -1, -1);
    MEMORY[0x26D65A520](v82, -1, -1);
  }

  result = v107;
  v88 = v107[3];
  if (!v88)
  {
    goto LABEL_65;
  }

  v89 = __swift_project_boxed_opaque_existential_1(v107, v107[3]);
  v90 = *(v88 - 8);
  MEMORY[0x28223BE20](v89);
  v92 = &v103 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v90 + 16))(v92);

  v93 = sub_26A0684DC();
  (*(v90 + 8))(v92, v88);
  *(v2 + v114) = v93;

  v94 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_locationAuthorizationProvider;
  swift_beginAccess();
  result = sub_26A079100(v2 + v94, &v124, &qword_280369388, &qword_26A09F588);
  v95 = v125;
  if (!v125)
  {
    goto LABEL_66;
  }

  v96 = v126;
  __swift_project_boxed_opaque_existential_1(&v124, v125);
  v123[0] = *(v2 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_allowedApps);
  v97 = *(v96 + 24);

  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369438, &qword_26A09F648);
  v99 = sub_26A0789F8();
  v97(v123, v98, v99, v95, v96);

  __swift_destroy_boxed_opaque_existential_0(&v124);
  v100 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_healthAuthorizationProvider;
  swift_beginAccess();
  result = sub_26A079100(v2 + v100, &v124, &qword_280369398, &qword_26A09F590);
  if (v125)
  {
    __swift_project_boxed_opaque_existential_1(&v124, v125);

    sub_26A074528(v101);

    __swift_destroy_boxed_opaque_existential_0(&v124);
    swift_beginAccess();

    sub_26A06D8F4(v102);
    return swift_bridgeObjectRelease_n();
  }

LABEL_67:
  __break(1u);
  return result;
}

uint64_t sub_26A070394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803694D8, &qword_26A09F778);
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  if (qword_280369100 != -1)
  {
    swift_once();
  }

  v5[10] = off_280369A30;
  type metadata accessor for AuthorizationActor();
  v5[11] = sub_26A077D64(&qword_280369810, type metadata accessor for AuthorizationActor, &protocol conformance descriptor for AuthorizationActor);
  v8 = sub_26A09DFA4();
  v5[12] = v8;
  v5[13] = v7;

  return MEMORY[0x2822009F8](sub_26A0704F4, v8, v7);
}

uint64_t sub_26A0704F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369260, &qword_26A09F480);
  sub_26A09E044();
  swift_beginAccess();
  v1 = v0[10];
  v2 = v0[11];
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_26A0705E0;
  v4 = v0[7];

  return MEMORY[0x2822003E8](v0 + 15, v1, v2, v4);
}

uint64_t sub_26A0705E0()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_26A070700, v3, v2);
}

uint64_t sub_26A070700()
{
  if (*(v0 + 120) == 1 || !swift_weakLoadStrong())
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    goto LABEL_6;
  }

  if (sub_26A09E084())
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

LABEL_6:

    v1 = *(v0 + 8);

    return v1();
  }

  sub_26A06D8F4(v3);

  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  *v6 = v0;
  v6[1] = sub_26A0705E0;
  v7 = *(v0 + 56);

  return MEMORY[0x2822003E8](v0 + 120, v4, v5, v7);
}

uint64_t sub_26A07087C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803694D0, &qword_26A09F770);
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  if (qword_280369100 != -1)
  {
    swift_once();
  }

  v5[11] = off_280369A30;
  type metadata accessor for AuthorizationActor();
  v5[12] = sub_26A077D64(&qword_280369810, type metadata accessor for AuthorizationActor, &protocol conformance descriptor for AuthorizationActor);
  v8 = sub_26A09DFA4();
  v5[13] = v8;
  v5[14] = v7;

  return MEMORY[0x2822009F8](sub_26A0709DC, v8, v7);
}

uint64_t sub_26A0709DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803693F8, &qword_26A09F5A8);
  sub_26A09E044();
  swift_beginAccess();
  v1 = v0[11];
  v2 = v0[12];
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_26A070AC8;
  v4 = v0[8];

  return MEMORY[0x2822003E8](v0 + 5, v1, v2, v4);
}

uint64_t sub_26A070AC8()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_26A070BE8, v3, v2);
}

uint64_t sub_26A070BE8()
{
  v1 = v0[5];
  if (v1)
  {
    if (swift_weakLoadStrong())
    {
      sub_26A070D4C(v1);

      v2 = v0[11];
      v3 = v0[12];
      v4 = swift_task_alloc();
      v0[15] = v4;
      *v4 = v0;
      v4[1] = sub_26A070AC8;
      v5 = v0[8];

      return MEMORY[0x2822003E8](v0 + 5, v2, v3, v5);
    }

    (*(v0[9] + 8))(v0[10], v0[8]);
  }

  else
  {
    (*(v0[9] + 8))(v0[10], v0[8]);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_26A070D4C(int64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_userConfiguredAppIdentifiers;
  v20 = a1;

  sub_26A074C64(v5, v6);
  v7 = v20;

  v8 = sub_26A09DE04();
  v9 = sub_26A09E124();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = v19;
    *v10 = 136446466;

    v11 = sub_26A09E0A4();
    v13 = v12;

    v14 = sub_26A089EEC(v11, v13, &v20);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    v15 = sub_26A09E0A4();
    v17 = sub_26A089EEC(v15, v16, &v20);

    *(v10 + 14) = v17;
    _os_log_impl(&dword_26A066000, v8, v9, "Updating user configured app identifiers: %{public}s\nChanged: %{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D65A520](v19, -1, -1);
    MEMORY[0x26D65A520](v10, -1, -1);
  }

  *(v2 + v4) = a1;

  sub_26A06D8F4(v7);
}

void sub_26A070F60()
{
  v1 = v0;
  v2 = sub_26A09DD34();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v43 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v43 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369830, "J*");
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v43 - v16;
  v18 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_ineligibilityStore;
  swift_beginAccess();
  sub_26A079100(v1 + v18, aBlock, &qword_2803693A8, &qword_26A09F598);
  if (v49)
  {
    __swift_project_boxed_opaque_existential_1(aBlock, v49);
    sub_26A09DD14();
    AuthorizationPersistence.nextDismissalExpirationDate(after:timeout:)(v11, v17);
    v46 = *(v3 + 8);
    v46(v11, v2);
    __swift_destroy_boxed_opaque_existential_0(aBlock);
    v47 = v17;
    sub_26A079100(v17, v15, &qword_280369830, "J*");
    if ((*(v3 + 48))(v15, 1, v2) == 1)
    {
      sub_26A069DDC(v15, &qword_280369830, "J*");
      v19 = sub_26A09DE04();
      v20 = sub_26A09E0F4();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_26A066000, v19, v20, "No upcoming dismissal expirations, not scheduling a new timer", v21, 2u);
        MEMORY[0x26D65A520](v21, -1, -1);
      }

      sub_26A069DDC(v47, &qword_280369830, "J*");
    }

    else
    {
      (*(v3 + 32))(v9, v15, v2);
      v22 = swift_allocObject();
      swift_weakInit();
      v23 = objc_allocWithZone(MEMORY[0x277CBEBB8]);

      v24 = sub_26A09DCD4();
      v50 = sub_26A077D44;
      v51 = v22;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_26A074A0C;
      v49 = &block_descriptor;
      v25 = _Block_copy(aBlock);
      v26 = [v23 initWithFireDate:v24 interval:0 repeats:v25 block:0.0];
      _Block_release(v25);

      v27 = [objc_opt_self() mainRunLoop];
      v28 = *MEMORY[0x277CBE640];
      v44 = v26;
      [v27 addTimer:v26 forMode:v28];

      v29 = *(v3 + 16);
      v30 = v6;
      v45 = v9;
      v29(v6, v9, v2);
      v31 = sub_26A09DE04();
      v32 = sub_26A09E0F4();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        aBlock[0] = v34;
        *v33 = 136315138;
        sub_26A077D64(&qword_2803694A8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v35 = sub_26A09E4B4();
        v37 = v36;
        v46(v30, v2);
        v38 = sub_26A089EEC(v35, v37, aBlock);

        *(v33 + 4) = v38;
        _os_log_impl(&dword_26A066000, v31, v32, "Scheduled dismissal update timer for %s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v34);
        MEMORY[0x26D65A520](v34, -1, -1);
        MEMORY[0x26D65A520](v33, -1, -1);
      }

      else
      {

        v46(v6, v2);
      }

      v39 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_dismissalTimer;
      swift_beginAccess();
      v40 = *(v1 + v39);
      v41 = v45;
      if (v40)
      {
        swift_endAccess();
        [v40 invalidate];
        v46(v41, v2);
        sub_26A069DDC(v47, &qword_280369830, "J*");
      }

      else
      {
        v46(v45, v2);
        sub_26A069DDC(v47, &qword_280369830, "J*");
        swift_endAccess();
      }

      v42 = *(v1 + v39);
      *(v1 + v39) = v44;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_26A0715F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803694B8, &qword_26A09F708);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - v6;
  if (qword_280369100 != -1)
  {
    swift_once();
  }

  type metadata accessor for AuthorizationActor();
  sub_26A077D64(&qword_280369810, type metadata accessor for AuthorizationActor, &protocol conformance descriptor for AuthorizationActor);
  sub_26A09DFA4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v5 + 16))(v7, a1, v4);
  v8 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_startedContinuations;
  v9 = *(a2 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_startedContinuations);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v8) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_26A07B5D8(0, v9[2] + 1, 1, v9);
    *(a2 + v8) = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_26A07B5D8((v11 > 1), v12 + 1, 1, v9);
  }

  v9[2] = v12 + 1;
  result = (*(v5 + 32))(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, v7, v4);
  *(a2 + v8) = v9;
  return result;
}

void sub_26A07182C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = v3;
  v8 = *(v3 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_allowedApps);

  v73 = a1;
  v9 = sub_26A091978(a1, a2, v8);

  if ((v9 & 1) == 0)
  {
    *(a3 + 64) = 0;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  v10 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_onboardingPropertiesByApp;
  swift_beginAccess();
  v11 = *(v7 + v10);
  v69 = a3;
  if (*(v11 + 16) && (v12 = sub_26A099F20(v73, a2), (v13 & 1) != 0))
  {
    v14 = *(v11 + 56) + 48 * v12;
    v15 = *v14;
    v68 = *(v14 + 8);
    v16 = *(v14 + 24);
    v67 = *(v14 + 16);
    v64 = *(v14 + 40);
    v65 = *(v14 + 32);

    v66 = v16;
  }

  else
  {
    v15 = 0;
    v68 = 0;
    v66 = 0;
    v67 = 0;
    v64 = 0;
    v65 = 0;
  }

  swift_endAccess();
  v17 = sub_26A077544(MEMORY[0x277D84F90]);
  v71 = v15;
  if (!v15)
  {
    v39 = 0;
    while (1)
    {
      v40 = *(&unk_287AFC078 + v39 + 32);
      v75[0] = v40;
      sub_26A077CA8(v40);
      sub_26A071DE4(v73, a2, v75, v76);
      v41 = v76[0];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v75[0] = v17;
      v43 = sub_26A099F98(v40);
      v45 = v17[2];
      v46 = (v44 & 1) == 0;
      v36 = __OFADD__(v45, v46);
      v47 = v45 + v46;
      if (v36)
      {
        goto LABEL_61;
      }

      v48 = v44;
      if (v17[3] < v47)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_36;
      }

      v52 = v43;
      sub_26A07F948();
      v43 = v52;
      v17 = v75[0];
      if ((v48 & 1) == 0)
      {
LABEL_37:
        v17[(v43 >> 6) + 8] |= 1 << v43;
        *(v17[6] + 8 * v43) = v40;
        *(v17[7] + v43) = v41;
        v50 = v17[2];
        v36 = __OFADD__(v50, 1);
        v51 = v50 + 1;
        if (v36)
        {
          goto LABEL_62;
        }

        v17[2] = v51;
        goto LABEL_30;
      }

LABEL_29:
      *(v17[7] + v43) = v41;
      sub_26A077CFC(v40);
LABEL_30:
      v39 += 8;
      if (v39 == 40)
      {
        v53 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_healthAuthorizationProvider;
        swift_beginAccess();
        sub_26A079100(v7 + v53, v75, &qword_280369398, &qword_26A09F590);
        if (!v75[3])
        {
          goto LABEL_65;
        }

        v54 = sub_26A083068(v73, a2);
        sub_26A069DDC(v75, &qword_280369398, &qword_26A09F590);
        v15 = 0;
        v38 = v65;
        if (v54)
        {
          v55 = swift_isUniquelyReferenced_nonNull_native();
          v75[0] = v17;
          sub_26A07EACC(3, 4, v55);
          v17 = v75[0];
        }

LABEL_44:
        v75[0] = 2;
        sub_26A071DE4(v73, a2, v75, &v74);
        v56 = v74;
        v57 = swift_isUniquelyReferenced_nonNull_native();
        v75[0] = v17;
        sub_26A07EACC(v56, 2, v57);
        v58 = v75[0];
        if (v15)
        {
          v59 = v15;
        }

        else
        {
          v59 = MEMORY[0x277D84FA0];
        }

        if (v15)
        {
          v60 = v64;
        }

        else
        {
          v60 = 0;
        }

        if (v15)
        {
          v61 = v66;
        }

        else
        {
          v38 = 0;
          v61 = 0;
        }

        if (v15)
        {
          v62 = v67;
        }

        else
        {
          v62 = 0;
        }

        if (v15)
        {
          v63 = v68;
        }

        else
        {
          v63 = 0;
        }

        sub_26A077CB8(0, 0, 0, 0);
        *v69 = v73;
        *(v69 + 8) = a2;
        *(v69 + 16) = v59;
        *(v69 + 24) = v58;
        *(v69 + 32) = v63;
        *(v69 + 40) = v62;
        *(v69 + 48) = v61;
        *(v69 + 56) = v38;
        *(v69 + 64) = v60;
        return;
      }
    }

    sub_26A07C75C(v47, isUniquelyReferenced_nonNull_native);
    v43 = sub_26A099F98(v40);
    if ((v48 & 1) != (v49 & 1))
    {
      goto LABEL_66;
    }

LABEL_36:
    v17 = v75[0];
    if ((v48 & 1) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_29;
  }

  v18 = v15 + 56;
  v19 = 1 << *(v15 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v15 + 56);
  v22 = (v19 + 63) >> 6;

  v23 = 0;
  v70 = a2;
  while (v21)
  {
    v24 = v23;
LABEL_18:
    v25 = *(*(v15 + 48) + ((v24 << 9) | (8 * __clz(__rbit64(v21)))));
    v75[0] = v25;
    sub_26A077CA8(v25);
    sub_26A071DE4(v73, a2, v75, v76);
    v72 = v76[0];
    v26 = swift_isUniquelyReferenced_nonNull_native();
    v75[0] = v17;
    v28 = sub_26A099F98(v25);
    v29 = v17[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_63;
    }

    v32 = v27;
    if (v17[3] >= v31)
    {
      if ((v26 & 1) == 0)
      {
        sub_26A07F948();
      }
    }

    else
    {
      sub_26A07C75C(v31, v26);
      v33 = sub_26A099F98(v25);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_66;
      }

      v28 = v33;
    }

    v21 &= v21 - 1;
    v17 = v75[0];
    if (v32)
    {
      *(*(v75[0] + 56) + v28) = v72;
      sub_26A077CFC(v25);
    }

    else
    {
      *(v75[0] + 8 * (v28 >> 6) + 64) |= 1 << v28;
      *(v17[6] + 8 * v28) = v25;
      *(v17[7] + v28) = v72;
      v35 = v17[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_64;
      }

      v17[2] = v37;
    }

    v23 = v24;
    a2 = v70;
    v15 = v71;
  }

  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v24 >= v22)
    {

      v38 = v65;
      goto LABEL_44;
    }

    v21 = *(v18 + 8 * v24);
    ++v23;
    if (v21)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  sub_26A09E504();
  __break(1u);
}

uint64_t sub_26A071DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char *a4@<X8>)
{
  v5 = v4;
  v38[0] = *a3;
  v9 = v38[0];
  result = sub_26A0722EC(a1, a2, v38);
  v11 = result;
  if (v9 <= 1)
  {
    if (v9)
    {
      if (v9 != 1)
      {
        goto LABEL_29;
      }

      v16 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_locationAuthorizationProvider;
      swift_beginAccess();
      result = sub_26A079100(v5 + v16, v38, &qword_280369388, &qword_26A09F588);
      v17 = v39;
      if (!v39)
      {
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v18 = v40;
      __swift_project_boxed_opaque_existential_1(v38, v39);
      (*(v18 + 8))(&v37, a1, a2, v17, v18);
      v19 = v37 | ((WORD2(v37) | (BYTE6(v37) << 16)) << 32);
      result = __swift_destroy_boxed_opaque_existential_0(v38);
      if ((v19 & 0xFF00000000) == 0x200000000)
      {
        goto LABEL_39;
      }

      v15 = 2;
      if (v19 > 2)
      {
        if (v19 != 3 && v19 != 4)
        {
          goto LABEL_56;
        }

        goto LABEL_55;
      }

      if (v19)
      {
        if (v19 != 2)
        {
          goto LABEL_56;
        }

        goto LABEL_41;
      }
    }

    else
    {
      v24 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_locationAuthorizationProvider;
      swift_beginAccess();
      result = sub_26A079100(v5 + v24, v38, &qword_280369388, &qword_26A09F588);
      v25 = v39;
      if (!v39)
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v26 = v40;
      __swift_project_boxed_opaque_existential_1(v38, v39);
      (*(v26 + 8))(&v37, a1, a2, v25, v26);
      v23 = v37 | ((WORD2(v37) | (BYTE6(v37) << 16)) << 32);
      result = __swift_destroy_boxed_opaque_existential_0(v38);
      if ((v23 & 0xFF00000000) == 0x200000000)
      {
        goto LABEL_39;
      }

      v15 = 2;
      if (v23 > 2)
      {
        if (v23 != 3)
        {
          if (v23 != 4)
          {
            goto LABEL_56;
          }

          v35 = *(v5 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_userConfiguredAppIdentifiers);

          v36 = sub_26A091978(a1, a2, v35);

          if ((v36 & 1) == 0)
          {
            v32 = (v11 & BYTE6(v23) & 1) == 0;
LABEL_36:
            if (v32)
            {
              v15 = 2;
            }

            else
            {
              v15 = 1;
            }

            goto LABEL_56;
          }
        }

LABEL_55:
        v15 = 3;
        goto LABEL_56;
      }

      if (v23)
      {
        goto LABEL_27;
      }
    }

LABEL_35:
    v32 = (v11 & 1) == 0;
    goto LABEL_36;
  }

  switch(v9)
  {
    case 2:
      v20 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_locationAuthorizationProvider;
      swift_beginAccess();
      result = sub_26A079100(v5 + v20, v38, &qword_280369388, &qword_26A09F588);
      v21 = v39;
      if (!v39)
      {
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      v22 = v40;
      __swift_project_boxed_opaque_existential_1(v38, v39);
      (*(v22 + 8))(&v37, a1, a2, v21, v22);
      v23 = v37 | ((WORD2(v37) | (BYTE6(v37) << 16)) << 32);
      result = __swift_destroy_boxed_opaque_existential_0(v38);
      if ((v23 & 0xFF00000000) == 0x200000000)
      {
        goto LABEL_39;
      }

      v15 = 2;
      if (v23 > 2)
      {
        if (v23 == 3)
        {
          goto LABEL_55;
        }

        if (v23 != 4)
        {
          goto LABEL_56;
        }

        v33 = *(v5 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_userConfiguredAppIdentifiers);

        v34 = sub_26A091978(a1, a2, v33);

        v15 = 3;
        if ((v34 & 1) != 0 || (v23 & 0x100000000) != 0)
        {
          goto LABEL_56;
        }

LABEL_46:
        if ((v23 & 0x10000000000) == 0 || (v11 & 1) == 0)
        {
          v15 = 2;
        }

        else
        {
          v15 = 1;
        }

        goto LABEL_56;
      }

      if (!v23)
      {
        goto LABEL_46;
      }

LABEL_27:
      if (v23 != 2)
      {
        goto LABEL_56;
      }

      goto LABEL_41;
    case 3:
      goto LABEL_55;
    case 4:
      v12 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_healthAuthorizationProvider;
      swift_beginAccess();
      result = sub_26A079100(v5 + v12, v38, &qword_280369398, &qword_26A09F590);
      if (v39)
      {
        v13 = sub_26A083068(a1, a2);
        result = sub_26A069DDC(v38, &qword_280369398, &qword_26A09F590);
        v14 = (v13 & 1) == 0;
        goto LABEL_7;
      }

      goto LABEL_59;
  }

LABEL_29:
  v27 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_healthAuthorizationProvider;
  swift_beginAccess();
  result = sub_26A079100(v5 + v27, v38, &qword_280369398, &qword_26A09F590);
  if (v39)
  {
    __swift_project_boxed_opaque_existential_1(v38, v39);
    v28 = sub_26A081988(a1, a2);
    result = __swift_destroy_boxed_opaque_existential_0(v38);
    if (v28)
    {
      if (*(v28 + 16))
      {
        v29 = sub_26A09A024(v9);
        if (v30)
        {
          v31 = *(*(v28 + 56) + 8 * v29);

          if (v31 != 104)
          {
            if (v31 != 100)
            {
              result = HKAuthorizationStatusAllowsReading();
              v14 = result == 0;
LABEL_7:
              if (v14)
              {
                v15 = 2;
              }

              else
              {
                v15 = 3;
              }

              goto LABEL_56;
            }

            goto LABEL_35;
          }

LABEL_41:
          v15 = 4;
          goto LABEL_56;
        }
      }

      v15 = 2;
LABEL_56:
      *a4 = v15;
      return result;
    }

LABEL_39:
    v15 = 0;
    goto LABEL_56;
  }

LABEL_62:
  __break(1u);
  return result;
}

uint64_t sub_26A0722EC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v8 = sub_26A09DD34();
  v39 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v38 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v37 = &v35 - v12;
  MEMORY[0x28223BE20](v11);
  v36 = &v35 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369830, "J*");
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v35 - v18;
  v20 = *a3;
  v21 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_ineligibilityStore;
  swift_beginAccess();
  result = sub_26A079100(v4 + v21, v40, &qword_2803693A8, &qword_26A09F598);
  if (!v41)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  v23 = *__swift_project_boxed_opaque_existential_1(v40, v41);
  v24 = OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_ineligibleAuthorizationTypeByApp;
  swift_beginAccess();
  v25 = *(v23 + v24);
  if (*(v25 + 16) && (v26 = sub_26A099F20(a1, a2), (v27 & 1) != 0))
  {
    v28 = *(*(v25 + 56) + 8 * v26);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v28 = MEMORY[0x277D84FA0];
  }

  __swift_destroy_boxed_opaque_existential_0(v40);
  if (sub_26A091A70(v20, v28))
  {

    return 0;
  }

  result = sub_26A079100(v4 + v21, v40, &qword_2803693A8, &qword_26A09F598);
  if (!v41)
  {
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(v40, v41);
  AuthorizationPersistence.dismissalDate(for:)(a1, a2, v19);
  __swift_destroy_boxed_opaque_existential_0(v40);
  sub_26A079100(v19, v17, &qword_280369830, "J*");
  v29 = v39;
  if ((*(v39 + 48))(v17, 1, v8) == 1)
  {
    sub_26A069DDC(v19, &qword_280369830, "J*");
    sub_26A069DDC(v17, &qword_280369830, "J*");
  }

  else
  {
    v30 = v36;
    (*(v29 + 32))(v36, v17, v8);
    v31 = v37;
    sub_26A09DD14();
    v32 = v38;
    sub_26A09DCC4();
    v33 = sub_26A09DCF4();
    v34 = *(v29 + 8);
    v34(v32, v8);
    v34(v31, v8);
    v34(v30, v8);
    sub_26A069DDC(v19, &qword_280369830, "J*");
    if (v33)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_26A0726E4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369340, &qword_26A09F530);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_26A09DFF4();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a2;

  sub_26A06B5F8(0, 0, v5, &unk_26A09F6C0, v7);
}

uint64_t sub_26A0727F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_26A072810, 0, 0);
}

uint64_t sub_26A072810()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    if (qword_280369100 != -1)
    {
      swift_once();
    }

    type metadata accessor for AuthorizationActor();
    sub_26A077D64(&qword_280369810, type metadata accessor for AuthorizationActor, &protocol conformance descriptor for AuthorizationActor);
    v3 = sub_26A09DFA4();

    return MEMORY[0x2822009F8](sub_26A072960, v3, v2);
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_26A072960(uint64_t a1)
{
  sub_26A0729F8(a1);

  return MEMORY[0x2822009F8](sub_26A0729D0, 0, 0);
}

void sub_26A0729F8(uint64_t a1)
{
  v1 = sub_26A09DE04();
  v2 = sub_26A09E124();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_26A066000, v1, v2, "Dismissal timer fired", v3, 2u);
    MEMORY[0x26D65A520](v3, -1, -1);
  }

  sub_26A06D8F4(v4);

  sub_26A070F60();
}

uint64_t sub_26A072ACC(uint64_t a1)
{
  v2 = sub_26A09DE24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unownedRetainStrong();
  (*(v3 + 16))(v5, a1 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_logger, v2);

  v6 = sub_26A09DE04();
  v7 = sub_26A09E124();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_26A066000, v6, v7, "Performing AuthorizationManager statedump", v8, 2u);
    MEMORY[0x26D65A520](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  swift_unownedRetainStrong();
  sub_26A072CC4();

  sub_26A09DD74();
  sub_26A09DD54();
  sub_26A09DD64();

  sub_26A09DDC4();
}

uint64_t sub_26A072CC4()
{
  v1 = sub_26A0779DC(MEMORY[0x277D84F90]);
  v2 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_onboardingPropertiesByApp;
  swift_beginAccess();
  v66 = v0;
  v3 = *(v0 + v2);
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v69 = v3;

  v9 = 0;
  v10 = MEMORY[0x277D837D0];
  v67 = v8;
  v68 = v4;
  while (v7)
  {
    v73 = v1;
    v13 = v9;
LABEL_12:
    v14 = __clz(__rbit64(v7)) | (v13 << 6);
    v15 = (*(v69 + 48) + 16 * v14);
    v16 = v15[1];
    v71 = *v15;
    v17 = *(v69 + 56) + 48 * v14;
    v18 = *v17;
    v19 = *(v17 + 8);
    strcpy(&v75, "authorizations");
    HIBYTE(v75) = -18;

    v72 = v16;

    sub_26A09E284();
    sub_26A0741A0(v18);
    *&v75 = v20;

    sub_26A074E4C(&v75);
    v70 = 0;

    v21 = v75;
    v79[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803694E8, &qword_26A09F8E0);
    v79[5] = v21;
    *&v75 = 0xD000000000000010;
    *(&v75 + 1) = 0x800000026A0A0DD0;
    sub_26A09E284();
    v81 = MEMORY[0x277D839B0];
    v80[40] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803694F0, &qword_26A09F7C0);
    v22 = sub_26A09E394();

    sub_26A079100(v79, &v75, &qword_2803694F8, &unk_26A09F7C8);
    v23 = sub_26A09A0B8(&v75);
    v1 = v73;
    if (v24)
    {
      goto LABEL_31;
    }

    *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v23;
    v25 = v22[6] + 40 * v23;
    v26 = v75;
    v27 = v76;
    *(v25 + 32) = v77;
    *v25 = v26;
    *(v25 + 16) = v27;
    sub_26A0697B4(v78, (v22[7] + 32 * v23));
    v28 = v22[2];
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (v29)
    {
      goto LABEL_32;
    }

    v22[2] = v30;
    sub_26A079100(v80, &v75, &qword_2803694F8, &unk_26A09F7C8);
    v31 = sub_26A09A0B8(&v75);
    if (v32)
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      v65 = v70;
LABEL_36:

      __break(1u);
      return result;
    }

    *(v22 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v31;
    v33 = v22[6] + 40 * v31;
    v34 = v75;
    v35 = v76;
    *(v33 + 32) = v77;
    *v33 = v34;
    *(v33 + 16) = v35;
    sub_26A0697B4(v78, (v22[7] + 32 * v31));
    v36 = v22[2];
    v29 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v29)
    {
      goto LABEL_32;
    }

    v22[2] = v37;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803694F8, &unk_26A09F7C8);
    swift_arrayDestroy();

    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369298, &unk_26A09F4A0);
    *&v82 = v22;
    sub_26A0697B4(&v82, &v75);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = sub_26A099F20(v71, v72);
    v41 = v73[2];
    v42 = (v40 & 1) == 0;
    v29 = __OFADD__(v41, v42);
    v43 = v41 + v42;
    if (v29)
    {
      goto LABEL_33;
    }

    v44 = v40;
    if (v73[3] >= v43)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v49 = v39;
        sub_26A07FF40();
        v39 = v49;
      }
    }

    else
    {
      sub_26A07D3D8(v43, isUniquelyReferenced_nonNull_native);
      v39 = sub_26A099F20(v71, v72);
      if ((v44 & 1) != (v45 & 1))
      {
        sub_26A09E504();
        __break(1u);
        v65 = v10;
        goto LABEL_36;
      }
    }

    v7 &= v7 - 1;
    if (v44)
    {
      v11 = v39;

      v12 = (v73[7] + 32 * v11);
      __swift_destroy_boxed_opaque_existential_0(v12);
      sub_26A0697B4(&v75, v12);
    }

    else
    {
      v73[(v39 >> 6) + 8] |= 1 << v39;
      v46 = (v73[6] + 16 * v39);
      *v46 = v71;
      v46[1] = v72;
      sub_26A0697B4(&v75, (v73[7] + 32 * v39));
      v47 = v73[2];
      v29 = __OFADD__(v47, 1);
      v48 = v47 + 1;
      if (v29)
      {
        goto LABEL_34;
      }

      v73[2] = v48;
    }

    v9 = v13;
    v8 = v67;
    v4 = v68;
  }

  while (1)
  {
    v13 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_31;
    }

    if (v13 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v13);
    ++v9;
    if (v7)
    {
      v73 = v1;
      goto LABEL_12;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369500, &qword_26A09F7D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A09F510;
  *(inited + 32) = 0x64657472617473;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = *(v66 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_started);
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 80) = 0x416465776F6C6C61;
  *(inited + 88) = 0xEB00000000737070;
  v51 = *(v66 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_allowedApps);
  v52 = *(v51 + 16);
  if (v52)
  {
    v53 = sub_26A07B7E4(v52, 0);
    v54 = sub_26A075AB8(&v75, v53 + 4, v52, v51);
    v55 = v75;
    v74 = v54;

    sub_26A0790E8(v55, *(&v55 + 1));
    if (v74 != v52)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v53 = MEMORY[0x277D84F90];
  }

  *&v75 = v53;

  sub_26A074E4C(&v75);

  v56 = v75;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803694E8, &qword_26A09F8E0);
  *(inited + 96) = v56;
  *(inited + 120) = v57;
  *(inited + 128) = 0xD000000000000019;
  *(inited + 136) = 0x800000026A0A1290;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369290, &qword_26A09F7E0);
  *(inited + 144) = v1;
  *(inited + 168) = v58;
  *(inited + 176) = 0xD000000000000014;
  *(inited + 184) = 0x800000026A0A1430;
  v59 = v66 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_descriptorCollectionMutex;
  os_unfair_lock_lock((v66 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_descriptorCollectionMutex));
  v60 = *(v59 + 8);

  os_unfair_lock_unlock(v59);
  *&v75 = v60;
  v61 = sub_26A073480();

  *(inited + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369298, &unk_26A09F4A0);
  *(inited + 192) = v61;
  v62 = sub_26A0779DC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369508, &qword_26A09F7E8);
  swift_arrayDestroy();
  v63 = sub_26A07365C(v62);

  return v63;
}

uint64_t sub_26A073480()
{
  v1 = *v0;
  v2 = sub_26A0779DC(MEMORY[0x277D84F90]);

  result = sub_26A08184C();
  v4 = result;
  v5 = 0;
  v6 = result + 56;
  v7 = 1 << *(result + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(result + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = v9;
LABEL_10:
    v9 = (v11 - 1) & v11;
    if (*(v1 + 16))
    {
      v13 = (*(v4 + 48) + ((v5 << 10) | (16 * __clz(__rbit64(v11)))));
      v15 = *v13;
      v14 = v13[1];

      v16 = sub_26A099F20(v15, v14);
      if (v17)
      {
        v18 = *(v1 + 56) + 72 * v16;
        v24 = *(v18 + 16);
        v25 = *(v18 + 32);
        v26 = *(v18 + 48);
        v27 = *(v18 + 64);
        v23 = *v18;
        v19 = sub_26A073B88();
        *(&v24 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369298, &unk_26A09F4A0);
        *&v23 = v19;
        sub_26A0697B4(&v23, v22);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_26A07EDB4(v22, v15, v14, isUniquelyReferenced_nonNull_native);
      }
    }
  }

  while (1)
  {
    v12 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      v21 = sub_26A07365C(v2);

      return v21;
    }

    v11 = *(v6 + 8 * v12);
    ++v5;
    if (v11)
    {
      v5 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26A07365C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803694F0, &qword_26A09F7C0);
    v2 = sub_26A09E394();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_26A069E3C(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_26A0697B4(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_26A0697B4(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_26A0697B4(v31, v32);
    result = sub_26A09E264();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_26A0697B4(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t AuthorizationManager.deinit()
{
  v1 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_logger;
  v2 = sub_26A09DE24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_26A069DDC(v0 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_locationAuthorizationProvider, &qword_280369388, &qword_26A09F588);
  sub_26A069DDC(v0 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_healthAuthorizationProvider, &qword_280369398, &qword_26A09F590);
  sub_26A069DDC(v0 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_ineligibilityStore, &qword_2803693A8, &qword_26A09F598);
  sub_26A069DDC(v0 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_extensionProvider, &qword_2803693B8, &qword_26A09F5A0);

  sub_26A076D40(v0 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_descriptorCollectionMutex + 8);

  v3 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_userConfiguredAppIdentifierStream;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803693F8, &qword_26A09F5A8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_userConfiguredAppIdentifierContinuation;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369370, &qword_26A09F580);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return v0;
}

uint64_t AuthorizationManager.__deallocating_deinit()
{
  AuthorizationManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

unint64_t sub_26A073B88()
{
  v47 = *v0;
  v48 = *(v0 + 8);
  v1 = *(v0 + 24);
  v49 = *(v0 + 16);
  v65 = *(v0 + 32);
  v2 = *(v0 + 49);
  v63 = *(v0 + 33);
  *v64 = v2;
  *&v64[15] = *(v0 + 64);
  v3 = sub_26A0778C8(MEMORY[0x277D84F90]);
  v4 = v1 + 64;
  v5 = 1 << *(v1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v1 + 64);
  v8 = (v5 + 63) >> 6;
  v52 = v1;

  v9 = 0;
  v50 = v8;
  v51 = v1 + 64;
  while (v7)
  {
    v11 = v9;
LABEL_11:
    v12 = *(*(v52 + 48) + 8 * (__clz(__rbit64(v7)) | (v11 << 6)));
    v53 = v12;
    if (v12 <= 1)
    {
      if (!v12)
      {
        v13 = 0x6F4C737961776C61;
        v14 = 0xEE006E6F69746163;
        goto LABEL_23;
      }

      if (v12 == 1)
      {
        v13 = 0x636F4C6573556E69;
        v14 = 0xED00006E6F697461;
        goto LABEL_23;
      }
    }

    else
    {
      switch(v12)
      {
        case 2:
          v13 = 0xD000000000000013;
          v14 = 0x800000026A0A0D90;
          goto LABEL_23;
        case 3:
          v14 = 0xEE006E6F69746365;
          v13 = 0x746544646E756F73;
          goto LABEL_23;
        case 4:
          v13 = 0x694B68746C616568;
          v14 = 0xEF73736170794274;
          goto LABEL_23;
      }
    }

    v57 = 0xEA00000000002D74;
    v15 = sub_26A09DEA4();
    v17 = v16;
    sub_26A077CA8(v12);
    MEMORY[0x26D659940](v15, v17);

    v13 = 0x694B68746C616568;
    v14 = 0xEA00000000002D74;
LABEL_23:
    v18 = sub_26A09DEB4();
    v20 = v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = v3;
    v22 = v13;
    v8 = sub_26A099F20(v13, v14);
    v24 = v3;
    v25 = v3[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_34;
    }

    v28 = v23;
    if (v24[3] >= v27)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_26A07FDC8();
      }
    }

    else
    {
      sub_26A07D118(v27, isUniquelyReferenced_nonNull_native);
      v29 = sub_26A099F20(v22, v14);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_36;
      }

      v8 = v29;
    }

    v7 &= v7 - 1;
    if (v28)
    {

      v3 = v56;
      v10 = (v56[7] + 16 * v8);
      *v10 = v18;
      v10[1] = v20;

      sub_26A077CFC(v53);
    }

    else
    {
      v3 = v56;
      v56[(v8 >> 6) + 8] |= 1 << v8;
      v31 = (v3[6] + 16 * v8);
      *v31 = v22;
      v31[1] = v14;
      v32 = (v3[7] + 16 * v8);
      *v32 = v18;
      v32[1] = v20;
      sub_26A077CFC(v53);
      v33 = v3[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_35;
      }

      v3[2] = v35;
    }

    v9 = v11;
    v8 = v50;
    v4 = v51;
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369510, &qword_26A09F7F0);
      v36 = v3;
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_26A09F520;
      v38 = MEMORY[0x277D837D0];
      sub_26A09E284();
      v56 = v47;
      v57 = v48;
      v58 = v49;
      v59 = v52;
      v60 = v65;
      v61 = v63;
      *v62 = *v64;
      *&v62[15] = *&v64[15];
      AuthorizationDescriptor.eligibleForModalIncidentalUsePrompt.getter();
      v39 = MEMORY[0x277D839B0];
      *(inited + 96) = MEMORY[0x277D839B0];
      *(inited + 72) = v40 & 1;
      sub_26A09E284();
      *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369518, &qword_26A09F7F8);
      *(inited + 144) = v36;

      sub_26A09E284();
      *(inited + 240) = v38;
      *(inited + 216) = v47;
      *(inited + 224) = v48;
      v55 = 0x800000026A0A14C0;

      sub_26A09E284();
      sub_26A0741A0(v49);
      v42 = v41;

      v54 = v42;

      sub_26A074E4C(&v54);

      v43 = v54;
      *(inited + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803694E8, &qword_26A09F8E0);
      *(inited + 288) = v43;
      v54 = 0xD000000000000010;
      v55 = 0x800000026A0A0DD0;
      sub_26A09E284();
      v44 = v65;
      *(inited + 384) = v39;
      *(inited + 360) = v44;
      v45 = sub_26A07778C(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803694F8, &unk_26A09F7C8);
      swift_arrayDestroy();
      return v45;
    }

    v7 = *(v4 + 8 * v11);
    ++v9;
    if (v7)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  sub_26A09E504();
  __break(1u);

  __break(1u);
  return result;
}

void sub_26A0741A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return;
  }

  v33 = MEMORY[0x277D84F90];
  v31 = *(a1 + 16);
  sub_26A0803D0(0, v1, 0);
  v2 = v33;
  v3 = a1 + 56;
  v4 = sub_26A09E1E4();
  v6 = v31;
  v5 = a1;
  v7 = v4;
  v8 = 0;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v5 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v3 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_33;
    }

    v11 = *(v5 + 36);
    v12 = *(*(v5 + 48) + 8 * v7);
    if (v12 <= 1)
    {
      if (!v12)
      {
        v13 = 0x6F4C737961776C61;
        v14 = 0xEE006E6F69746163;
        goto LABEL_20;
      }

      if (v12 == 1)
      {
        v13 = 0x636F4C6573556E69;
        v14 = 0xED00006E6F697461;
        goto LABEL_20;
      }
    }

    else
    {
      switch(v12)
      {
        case 2:
          v13 = 0xD000000000000013;
          v14 = 0x800000026A0A0D90;
          goto LABEL_20;
        case 3:
          v14 = 0xEE006E6F69746365;
          v13 = 0x746544646E756F73;
          goto LABEL_20;
        case 4:
          v13 = 0x694B68746C616568;
          v14 = 0xEF73736170794274;
          goto LABEL_20;
      }
    }

    v15 = *(v5 + 36);
    v29 = sub_26A09DEA4();
    v17 = v16;
    sub_26A077CA8(v12);
    MEMORY[0x26D659940](v29, v17);

    sub_26A077CFC(v12);
    v11 = v15;
    v6 = v31;
    v5 = a1;
    v13 = 0x694B68746C616568;
    v14 = 0xEA00000000002D74;
LABEL_20:
    v19 = *(v2 + 16);
    v18 = *(v2 + 24);
    if (v19 >= v18 >> 1)
    {
      v30 = v11;
      sub_26A0803D0((v18 > 1), v19 + 1, 1);
      v11 = v30;
      v6 = v31;
      v5 = a1;
    }

    *(v2 + 16) = v19 + 1;
    v20 = v2;
    v21 = v2 + 16 * v19;
    *(v21 + 32) = v13;
    *(v21 + 40) = v14;
    v9 = 1 << *(v5 + 32);
    if (v7 >= v9)
    {
      goto LABEL_34;
    }

    v3 = a1 + 56;
    v22 = *(a1 + 56 + 8 * v10);
    if ((v22 & (1 << v7)) == 0)
    {
      goto LABEL_35;
    }

    if (v11 != *(v5 + 36))
    {
      goto LABEL_36;
    }

    v23 = v22 & (-2 << (v7 & 0x3F));
    if (v23)
    {
      v9 = __clz(__rbit64(v23)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v24 = v10 << 6;
      v25 = v10 + 1;
      v26 = (a1 + 64 + 8 * v10);
      while (v25 < (v9 + 63) >> 6)
      {
        v28 = *v26++;
        v27 = v28;
        v24 += 64;
        ++v25;
        if (v28)
        {
          sub_26A0790F0(v7, v11, 0);
          v6 = v31;
          v5 = a1;
          v9 = __clz(__rbit64(v27)) + v24;
          goto LABEL_4;
        }
      }

      sub_26A0790F0(v7, v11, 0);
      v6 = v31;
      v5 = a1;
    }

LABEL_4:
    ++v8;
    v7 = v9;
    v2 = v20;
    if (v8 == v6)
    {
      return;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

uint64_t sub_26A074528(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369340, &qword_26A09F530);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v44 = &i - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &i - v7;
  v9 = OBJC_IVAR____TtC18SmartStackSettings30HealthKitAuthorizationProvider_authorizationRecordByBundleIdentifier;
  swift_beginAccess();
  v51 = a1;

  v11 = sub_26A078C74(v10, sub_26A078AF8);

  v48 = v9;
  *(v1 + v9) = v11;

  v12 = a1 + 56;
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a1 + 56);
  v16 = (v13 + 63) >> 6;

  v18 = 0;
  v46 = a1;
  v47 = v16;
  v45 = v2;
  for (i = v8; v15; a1 = v46)
  {
LABEL_10:
    while (1)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v21 = (*(a1 + 48) + ((v18 << 10) | (16 * v20)));
      v22 = *v21;
      v23 = v21[1];
      v24 = v48;
      swift_beginAccess();
      v25 = *(*(v2 + v24) + 16);

      if (!v25)
      {
        break;
      }

      sub_26A099F20(v22, v23);
      if ((v26 & 1) == 0)
      {
        break;
      }

      swift_endAccess();

      v16 = v47;
      if (!v15)
      {
        goto LABEL_6;
      }
    }

    v49 = v22;
    swift_endAccess();
    v27 = sub_26A09DFF4();
    v50 = *(v27 - 8);
    (*(v50 + 56))(v8, 1, 1, v27);
    v28 = qword_280369100;

    v29 = v28 == -1;
    v30 = v8;
    v31 = v2;
    if (!v29)
    {
      swift_once();
    }

    v32 = off_280369A30;
    v33 = sub_26A077D64(&qword_280369810, type metadata accessor for AuthorizationActor, &protocol conformance descriptor for AuthorizationActor);
    v34 = swift_allocObject();
    v34[2] = v32;
    v34[3] = v33;
    v35 = v49;
    v34[4] = v31;
    v34[5] = v35;
    v34[6] = v23;
    v36 = v30;
    v37 = v44;
    sub_26A079100(v36, v44, &qword_280369340, &qword_26A09F530);
    LODWORD(v33) = (*(v50 + 48))(v37, 1, v27);

    if (v33 == 1)
    {
      sub_26A069DDC(v37, &qword_280369340, &qword_26A09F530);
    }

    else
    {
      sub_26A09DFE4();
      (*(v50 + 8))(v37, v27);
    }

    v38 = v34[2];
    swift_unknownObjectRetain();

    v2 = v45;
    if (v38)
    {
      swift_getObjectType();
      v39 = sub_26A09DFA4();
      v41 = v40;
      swift_unknownObjectRelease();
    }

    else
    {
      v39 = 0;
      v41 = 0;
    }

    v8 = i;
    sub_26A069DDC(i, &qword_280369340, &qword_26A09F530);
    v42 = swift_allocObject();
    *(v42 + 16) = &unk_26A09F780;
    *(v42 + 24) = v34;
    if (v41 | v39)
    {
      v52 = 0;
      v53 = 0;
      v54 = v39;
      v55 = v41;
    }

    v16 = v47;
    swift_task_create();
  }

LABEL_6:
  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v16)
    {
    }

    v15 = *(v12 + 8 * v19);
    ++v18;
    if (v15)
    {
      v18 = v19;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void sub_26A074A0C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_26A074A74(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26A074B6C;

  return v6(a1);
}

uint64_t sub_26A074B6C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26A074C64(uint64_t result, uint64_t a2)
{
  v3 = 0;
  v22 = result;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v11 = (*(v22 + 48) + ((v3 << 10) | (16 * v10)));
      v13 = *v11;
      v12 = v11[1];
      v14 = *v2;
      if (*(*v2 + 16))
      {
        break;
      }

LABEL_7:
      v2 = v21;
      sub_26A09352C(&v23, v13, v12);

      if (!v7)
      {
        goto LABEL_8;
      }
    }

    sub_26A09E514();

    sub_26A09DEE4();
    v15 = sub_26A09E534();
    v16 = -1 << *(v14 + 32);
    v17 = v15 & ~v16;
    if (((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
      goto LABEL_7;
    }

    v18 = ~v16;
    while (1)
    {
      v19 = (*(v14 + 48) + 16 * v17);
      v20 = *v19 == v13 && v19[1] == v12;
      if (v20 || (sub_26A09E4D4() & 1) != 0)
      {
        break;
      }

      v17 = (v17 + 1) & v18;
      if (((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v2 = v21;
    sub_26A095EB0(v13, v12);
  }

  while (v7);
  while (1)
  {
LABEL_8:
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      return result;
    }

    if (v9 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_12;
    }
  }
}

uint64_t sub_26A074E4C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_26A0765CC(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_26A074EB8(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_26A074EB8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_26A09E4A4();
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
        v5 = sub_26A09DF94();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_26A075080(v7, v8, a1, v4);
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
    return sub_26A074FB0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26A074FB0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_26A09E4D4(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
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

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26A075080(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_26A075910(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_26A07565C((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_26A09E4D4();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_26A09E4D4();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_26A075924(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_26A075924((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
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

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_26A07565C((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_26A075910(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_26A075884(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_26A09E4D4(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
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

uint64_t sub_26A07565C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_26A09E4D4() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_26A09E4D4() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_26A075884(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_26A075910(v3);
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

char *sub_26A075924(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369528, &qword_26A09F808);
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

unint64_t *sub_26A075A28(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_26A078B00(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_26A075AB8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_26A075C10(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_26A075D04;

  return v5(v2 + 32);
}

uint64_t sub_26A075D04()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_26A075E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369340, &qword_26A09F530);
  MEMORY[0x28223BE20](v12 - 8);
  v50 = &v42 - v13;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803694C0, &qword_26A09F710);
  v14 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v16 = (&v42 - v15);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369370, &qword_26A09F580);
  v47 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v46 = &v42 - v17;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803693F8, &qword_26A09F5A8);
  v44 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v43 = &v42 - v18;
  v55[3] = type metadata accessor for CoreLocationAuthorizationProvider(0);
  v55[4] = &protocol witness table for CoreLocationAuthorizationProvider;
  v55[0] = a1;
  v54[3] = type metadata accessor for HealthKitAuthorizationProvider(0);
  v54[4] = &off_287AFC5F0;
  v54[0] = a2;
  v53[3] = type metadata accessor for AuthorizationPersistence(0);
  v53[4] = &off_287AFC588;
  v53[0] = a3;
  v52[3] = type metadata accessor for AuthorizationExtensionProvider(0);
  v52[4] = &off_287AFC108;
  v52[0] = a4;
  sub_26A09DE14();
  v19 = a5 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_locationAuthorizationProvider;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0;
  v20 = a5 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_healthAuthorizationProvider;
  *(v20 + 32) = 0;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  v21 = a5 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_ineligibilityStore;
  *v21 = 0u;
  *(v21 + 16) = 0u;
  *(v21 + 32) = 0;
  v22 = a5 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_extensionProvider;
  *(v22 + 32) = 0;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  *(a5 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_started) = 0;
  v23 = MEMORY[0x277D84F90];
  *(a5 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_startedContinuations) = MEMORY[0x277D84F90];
  v24 = a5 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_descriptorCollectionMutex;
  if (qword_280369108 != -1)
  {
    swift_once();
  }

  v25 = qword_280369B18;
  *v24 = 0;
  *(v24 + 8) = v25;
  *(a5 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_descriptorCollectionContinuations) = v23;
  v26 = MEMORY[0x277D84FA0];
  *(a5 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_allowedApps) = MEMORY[0x277D84FA0];
  v27 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_onboardingPropertiesByApp;

  *(a5 + v27) = sub_26A0765E0(v23);
  v28 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_descriptorsByApp;
  *(a5 + v28) = sub_26A077384(v23);
  *(a5 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_dismissalTimer) = 0;
  *(a5 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_userConfiguredAppIdentifiers) = v26;
  *(a5 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_stateDumpHandle) = 0;
  sub_26A0780DC(v55, v51);
  swift_beginAccess();
  sub_26A078140(v51, v19, &qword_280369388, &qword_26A09F588);
  swift_endAccess();
  sub_26A0780DC(v54, v51);
  swift_beginAccess();
  sub_26A078140(v51, v20, &qword_280369398, &qword_26A09F590);
  swift_endAccess();
  sub_26A0780DC(v53, v51);
  swift_beginAccess();
  sub_26A078140(v51, v21, &qword_2803693A8, &qword_26A09F598);
  swift_endAccess();
  sub_26A0780DC(v52, v51);
  swift_beginAccess();
  sub_26A078140(v51, v22, &qword_2803693B8, &qword_26A09F5A0);
  swift_endAccess();
  v29 = COERCE_DOUBLE(sub_26A09DD44());
  if (v30)
  {
    v29 = a6;
  }

  *(a5 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_dismissalTimeout) = v29;
  *v16 = 1;
  v31 = v49;
  (*(v14 + 104))(v16, *MEMORY[0x277D85768], v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369438, &qword_26A09F648);
  v32 = v43;
  v33 = v46;
  sub_26A09E004();
  (*(v14 + 8))(v16, v31);
  (*(v44 + 32))(a5 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_userConfiguredAppIdentifierStream, v32, v45);
  (*(v47 + 32))(a5 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_userConfiguredAppIdentifierContinuation, v33, v48);
  v34 = sub_26A09DFF4();
  v35 = v50;
  (*(*(v34 - 8) + 56))(v50, 1, 1, v34);
  v36 = swift_allocObject();
  swift_weakInit();
  v37 = qword_280369100;

  if (v37 != -1)
  {
    swift_once();
  }

  v38 = off_280369A30;
  v39 = sub_26A077D64(&qword_280369810, type metadata accessor for AuthorizationActor, &protocol conformance descriptor for AuthorizationActor);
  v40 = swift_allocObject();
  v40[2] = v38;
  v40[3] = v39;
  v40[4] = v36;

  sub_26A06B5F8(0, 0, v35, &unk_26A09F720, v40);

  __swift_destroy_boxed_opaque_existential_0(v55);
  __swift_destroy_boxed_opaque_existential_0(v52);
  __swift_destroy_boxed_opaque_existential_0(v53);
  __swift_destroy_boxed_opaque_existential_0(v54);
  return a5;
}

unint64_t sub_26A0765E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369538, &unk_26A09F930);
    v3 = sub_26A09E394();

    v4 = (a1 + 48);
    while (1)
    {
      v20 = v1;
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = *v4;
      v8 = *(v4 + 8);
      v10 = v4[2];
      v9 = v4[3];
      v11 = v4[4];
      v12 = v4[5];

      result = sub_26A099F20(v5, v6);
      if (v14)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = (v3[6] + 16 * result);
      *v15 = v5;
      v15[1] = v6;
      v16 = v3[7] + 48 * result;
      *v16 = v7;
      *(v16 + 8) = v8;
      *(v16 + 16) = v10;
      *(v16 + 24) = v9;
      *(v16 + 32) = v11;
      *(v16 + 40) = v12;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v4 += 8;
      v3[2] = v19;
      v1 = v20 - 1;
      if (v20 == 1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_26A076734(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369550, &unk_26A09F830);
    v3 = sub_26A09E394();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v15 = *i;

      v7 = v15;
      v8 = *(&v15 + 1);
      result = sub_26A099F20(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 16 * result) = v15;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_26A07685C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369548, &unk_26A0A05A0);
    v3 = sub_26A09E394();

    for (i = (a1 + 54); ; i += 24)
    {
      v5 = *(i - 22);
      v6 = *(i - 14);
      v7 = *(i - 6);
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;

      result = sub_26A099F20(v5, v6);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 16 * result);
      *v13 = v5;
      v13[1] = v6;
      v14 = v3[7] + 8 * result;
      *v14 = v7;
      *(v14 + 4) = v8;
      *(v14 + 5) = v9;
      *(v14 + 6) = v10;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_26A0769D0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369350, &qword_26A09F540);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26A076AA8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369350, &qword_26A09F540) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26A079198;

  return sub_26A06BF28(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_26A076BB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26A079198;

  return sub_26A06C89C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_26A076C78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26A079198;

  return sub_26A06CEF0(a1, v4, v5, v6, v7, v8);
}

uint64_t type metadata accessor for AuthorizationManager(uint64_t a1)
{
  result = qword_280369420;
  if (!qword_280369420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26A076DE8(uint64_t a1)
{
  sub_26A09DE24();
  if (v1 <= 0x3F)
  {
    sub_26A076FE4(319, &qword_280369430, MEMORY[0x277D857B8]);
    if (v2 <= 0x3F)
    {
      sub_26A076FE4(319, &qword_280369440, MEMORY[0x277D85788]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_26A076FE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280369438, &qword_26A09F648);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_26A077050()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369448, &unk_26A09F650);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

unint64_t sub_26A077080(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369540, &unk_26A09F820);
    v3 = sub_26A09E394();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_26A099F20(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_26A077198(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369468, &qword_26A09F670);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369470, &qword_26A09F678);
    v7 = sub_26A09E394();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_26A079100(v9, v5, &qword_280369468, &qword_26A09F670);
      v11 = *v5;
      v12 = v5[1];
      result = sub_26A099F20(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_26A09DD34();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_26A077384(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369450, &unk_26A09F910);
  v3 = sub_26A09E394();

  v4 = *(a1 + 64);
  v5 = *(a1 + 96);
  v29 = *(a1 + 80);
  v30 = v5;
  v31 = *(a1 + 112);
  v6 = *(a1 + 48);
  v26 = *(a1 + 32);
  v27 = v6;
  v28 = v4;
  v8 = *(&v26 + 1);
  v7 = v26;
  sub_26A079100(&v26, v25, &qword_280369458, &qword_26A09F660);
  result = sub_26A099F20(v7, v8);
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v11 = (a1 + 120);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v12 = (v3[6] + 16 * result);
    *v12 = v7;
    v12[1] = v8;
    v13 = v3[7] + 72 * result;
    *v13 = v27;
    v14 = v28;
    v15 = v29;
    v16 = v30;
    *(v13 + 64) = v31;
    *(v13 + 32) = v15;
    *(v13 + 48) = v16;
    *(v13 + 16) = v14;
    v17 = v3[2];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      break;
    }

    v3[2] = v19;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v20 = (v11 + 88);
    v21 = v11[2];
    v22 = v11[4];
    v29 = v11[3];
    v30 = v22;
    v31 = *(v11 + 10);
    v23 = v11[1];
    v26 = *v11;
    v27 = v23;
    v28 = v21;
    v8 = *(&v26 + 1);
    v7 = v26;
    sub_26A079100(&v26, v25, &qword_280369458, &qword_26A09F660);
    result = sub_26A099F20(v7, v8);
    v11 = v20;
    if (v24)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_26A077544(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803694A0, &qword_26A09F6B0);
    v3 = sub_26A09E394();

    for (i = (a1 + 40); ; i += 16)
    {
      v5 = *(i - 1);
      v6 = *i;
      sub_26A077CA8(v5);
      result = sub_26A099F98(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_26A07764C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_26A09E394();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_26A099F20(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_26A07778C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803694F0, &qword_26A09F7C0);
    v3 = sub_26A09E394();
    v4 = a1 + 32;

    while (1)
    {
      sub_26A079100(v4, v13, &qword_2803694F8, &unk_26A09F7C8);
      result = sub_26A09A0B8(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_26A0697B4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_26A0778C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369520, &qword_26A09F800);
    v3 = sub_26A09E394();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_26A099F20(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_26A0779DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369530, &unk_26A09F810);
    v3 = sub_26A09E394();
    v4 = a1 + 32;

    while (1)
    {
      sub_26A079100(v4, &v13, &qword_280369508, &qword_26A09F7E8);
      v5 = v13;
      v6 = v14;
      result = sub_26A099F20(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_26A0697B4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_26A077B0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803694E0, &qword_26A09F790);
    v3 = sub_26A09E394();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_26A09A024(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

id sub_26A077CA8(id result)
{
  if (result >= 5)
  {
    return result;
  }

  return result;
}

void sub_26A077CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

void sub_26A077CFC(id a1)
{
  if (a1 >= 5)
  {
  }
}

uint64_t sub_26A077D0C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26A077D64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A077DB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26A079198;

  return sub_26A0727F0(a1, v4, v5, v6);
}

uint64_t sub_26A077E64(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821FE8E8](v2, 32, 7);
}

uint64_t sub_26A077E9C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26A079198;

  return sub_26A075C10(a1, v4);
}

uint64_t sub_26A077F54(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26A06BFC4;

  return sub_26A075C10(a1, v4);
}

void sub_26A07800C(id a1)
{
  if (a1 != 5)
  {
    sub_26A077CFC(a1);
  }
}

uint64_t sub_26A07801C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26A079198;

  return sub_26A074A74(a1, v4);
}

uint64_t sub_26A0780DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26A078140(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_17Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26A0781E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26A06BFC4;

  return sub_26A06A408(a1, v4, v5, v6);
}

uint64_t objectdestroy_48Tm()
{
  v1 = sub_26A09DE24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_26A07838C(uint64_t a1, unint64_t a2, const char *a3, uint64_t a4, uint64_t a5, ...)
{
  v11 = *(sub_26A09DE24() - 8);
  v12 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  return sub_26A06E2F4(a1, a2, v5 + v12, *(v5 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8)), a3, a4, a5);
}

uint64_t sub_26A078460(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369260, &qword_26A09F480) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26A079198;

  return sub_26A06E7A4(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_26A07858C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369260, &qword_26A09F480) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26A079198;

  return sub_26A06F0C4(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_26A0786B8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369260, &qword_26A09F480) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26A079198;

  return sub_26A070394(a1, v6, v7, v1 + v5, v8);
}

uint64_t objectdestroy_55Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v7 + 8, v5 | 7);
}

uint64_t sub_26A0788CC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803693F8, &qword_26A09F5A8) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26A079198;

  return sub_26A07087C(a1, v6, v7, v1 + v5, v8);
}

unint64_t sub_26A0789F8()
{
  result = qword_2803694C8;
  if (!qword_2803694C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280369438, &qword_26A09F648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803694C8);
  }

  return result;
}

uint64_t sub_26A078A5C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26A078AA8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {
  }

  return result;
}

unint64_t *sub_26A078B00(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v21 = result;
  v22 = 0;
  v4 = 0;
  v5 = a3 + 64;
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
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(a3 + 56) + 8 * v13);

    v18 = a4(v15, v16, v17);

    if (v18)
    {
      *(v21 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
        return sub_26A09B3B8(v21, a2, v22, a3);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_26A09B3B8(v21, a2, v22, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_26A078C74(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = a1;
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v8 = v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_26A078B00(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_26A075A28(v10, v6, v4, a2);
  result = MEMORY[0x26D65A520](v10, -1, -1);
  if (!v2)
  {
    return v11;
  }

  return result;
}

uint64_t sub_26A078DF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26A079198;

  return sub_26A081FA0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_26A078EBC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26A079198;

  return sub_26A06E520(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_3Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26A078FCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26A079198;

  return sub_26A06D698(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_26A079094()
{
  swift_unownedRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26A0790F0(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_26A079100(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_26A0791A0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (*a1)
  {
    v8 = a1[2];
    v7 = a1[3];
    v9 = *(a1 + 8);
    *&v18 = *a1;
    BYTE8(v18) = v9 & 1;
    v19 = v8;
    v20 = v7;
    v21 = *(a1 + 2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_26A07E300(&v18, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  else
  {
    v12 = sub_26A099F20(a2, a3);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      *&v18 = *v4;
      if (!v15)
      {
        sub_26A07F200();
        v16 = v18;
      }

      result = sub_26A07DBF4(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_26A0792D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369830, "J*");
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_26A09DD34();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_26A0815B0(a1);
    sub_26A07B910(a2, a3, v9);

    return sub_26A0815B0(v9);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_26A07E658(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t AuthorizationPersistence.__allocating_init(defaultsDomain:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  AuthorizationPersistence.init(defaultsDomain:)(a1, a2);
  return v4;
}

uint64_t sub_26A0794E4(uint64_t a1)
{
  result = MEMORY[0x26D659AF0](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_26A09352C(v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_26A079600(uint64_t a1, void *a2)
{
  v3 = 0;
  v12[1] = a2;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = *(*(a1 + 48) + ((v9 << 9) | (8 * v10)));
    sub_26A077CA8(v11);
    sub_26A09367C(v12, v11);
    sub_26A077CFC(v12[0]);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_26A0796FC(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_26A09352C(v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t AuthorizationPersistence.init(defaultsDomain:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_26A09DE14();
  v5 = OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_ineligibleAuthorizationTypeByApp;
  v6 = MEMORY[0x277D84F90];
  *(v3 + v5) = sub_26A077184(MEMORY[0x277D84F90]);
  v7 = OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_dismissalDateByApp;
  *(v3 + v7) = sub_26A077198(v6);
  *(v3 + OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_ineligibilityObserver) = 0;
  *(v3 + OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_dismissalDateObserver) = 0;
  *(v3 + OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_changedContinuation) = v6;
  if (a2 && (v8 = objc_allocWithZone(MEMORY[0x277CBEBD0]), v9 = sub_26A09DE74(), , v10 = [v8 initWithSuiteName_], v9, v10))
  {
    *(v3 + OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_defaults) = v10;
    v11 = v10;
    v12 = [v11 dictionaryRepresentation];
    v13 = sub_26A09DE64();

    v14 = sub_26A080728(v13);
    v15 = OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_ineligibleAuthorizationTypeByApp;
    swift_beginAccess();
    *(v3 + v15) = v14;

    v16 = sub_26A080DC8(v13);

    v17 = OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_dismissalDateByApp;
    swift_beginAccess();
    *(v3 + v17) = v16;

    sub_26A09DD94();
    v18 = swift_allocObject();
    swift_weakInit();
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    *(v19 + 24) = v11;
    v20 = v11;

    v21 = sub_26A09DD84();
    v22 = *(v3 + OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_ineligibilityObserver);
    *(v3 + OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_ineligibilityObserver) = v21;

    v23 = swift_allocObject();
    swift_weakInit();

    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    *(v24 + 24) = v20;
    v25 = v20;
    v26 = sub_26A09DD84();
    v27 = *(v3 + OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_dismissalDateObserver);
    *(v3 + OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_dismissalDateObserver) = v26;
  }

  else
  {
    *(v3 + OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_defaults) = 0;
  }

  return v3;
}

uint64_t sub_26A079B44(uint64_t a1, void *a2, const char *a3, uint64_t (*a4)(uint64_t), uint64_t *a5)
{
  v37 = a3;
  v38 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803692C8, &unk_26A09F8F0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803692B0, &qword_26A09F4B8);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - v13;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    v35 = v8;
    v36 = a5;
    v17 = sub_26A09DE04();
    v18 = sub_26A09E124();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = v16;
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_26A066000, v17, v18, v37, v20, 2u);
      v21 = v20;
      v16 = v19;
      MEMORY[0x26D65A520](v21, -1, -1);
    }

    v22 = [a2 dictionaryRepresentation];
    v23 = sub_26A09DE64();

    v24 = v38(v23);

    v25 = *v36;
    swift_beginAccess();
    *(v16 + v25) = v24;

    v26 = *(v16 + OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_changedContinuation);
    v27 = v16;
    v28 = v26[2];
    if (v28)
    {
      v30 = *(v12 + 16);
      v29 = v12 + 16;
      v37 = v27;
      v38 = v30;
      v31 = v26 + ((*(v29 + 64) + 32) & ~*(v29 + 64));
      v32 = *(v29 + 56);
      v33 = (v35 + 8);
      v34 = (v29 - 8);
      v36 = v26;

      do
      {
        (v38)(v14, v31, v11);
        sub_26A09E014();
        (*v33)(v10, v7);
        (*v34)(v14, v11);
        v31 += v32;
        --v28;
      }

      while (v28);
    }

    else
    {
    }
  }

  return result;
}

uint64_t AuthorizationPersistence.externalChangeStream.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803692A8, &qword_26A09F4B0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803692B0, &qword_26A09F4B8);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  (*(v3 + 104))(v5, *MEMORY[0x277D85778], v2);
  sub_26A09E004();
  (*(v3 + 8))(v5, v2);
  (*(v7 + 16))(v10, v12, v6);
  v13 = OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_changedContinuation;
  v14 = *(v1 + OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_changedContinuation);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v13) = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_26A07B5FC(0, v14[2] + 1, 1, v14, &qword_2803695B8, &qword_26A09F8E8, &qword_2803692B0, &qword_26A09F4B8);
    *(v1 + v13) = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_26A07B5FC((v16 > 1), v17 + 1, 1, v14, &qword_2803695B8, &qword_26A09F8E8, &qword_2803692B0, &qword_26A09F4B8);
  }

  v14[2] = v17 + 1;
  (*(v7 + 32))(v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v17, v10, v6);
  *(v1 + v13) = v14;
  return (*(v7 + 8))(v12, v6);
}

uint64_t AuthorizationPersistence.ineligibleAuthorizationTypes(for:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_ineligibleAuthorizationTypeByApp;
  swift_beginAccess();
  if (*(*(v2 + v5) + 16) && (sub_26A099F20(a1, a2), (v6 & 1) != 0))
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    return MEMORY[0x277D84FA0];
  }
}

void AuthorizationPersistence.removeEligibility(authorizations:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_ineligibleAuthorizationTypeByApp;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (*(v8 + 16) && (v9 = sub_26A099F20(a2, a3), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v11 = MEMORY[0x277D84FA0];
  }

  sub_26A079600(v12, v11);
  v14 = v13;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v4 + v7);
  *(v4 + v7) = 0x8000000000000000;
  sub_26A07E4B8(v14, a2, a3, isUniquelyReferenced_nonNull_native);

  *(v4 + v7) = v16;
  swift_endAccess();
  sub_26A07A33C();
}

void sub_26A07A33C()
{
  v1 = sub_26A077638(MEMORY[0x277D84F90]);
  v2 = OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_ineligibleAuthorizationTypeByApp;
  swift_beginAccess();
  v33 = v0;
  v3 = *(v0 + v2);
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v35 = v3;

  v9 = 0;
  v34 = v4;
  while (v7)
  {
    v11 = v9;
LABEL_11:
    v12 = (*(v35 + 48) + 16 * (__clz(__rbit64(v7)) | (v11 << 6)));
    v14 = *v12;
    v13 = v12[1];

    sub_26A0741A0(v15);
    v36 = v16;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = sub_26A099F20(v14, v13);
    v20 = v1[2];
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      sub_26A09E504();
      __break(1u);
      return;
    }

    v24 = v19;
    if (v1[3] >= v23)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v29 = v18;
        sub_26A07FC68(&qword_280369460, &qword_26A09F668);
        v18 = v29;
      }
    }

    else
    {
      sub_26A07CE78(v23, isUniquelyReferenced_nonNull_native, &qword_280369460, &qword_26A09F668);
      v18 = sub_26A099F20(v14, v13);
      if ((v24 & 1) != (v25 & 1))
      {
        goto LABEL_26;
      }
    }

    v7 &= v7 - 1;
    if (v24)
    {
      v10 = v18;

      *(v1[7] + 8 * v10) = v36;
    }

    else
    {
      v1[(v18 >> 6) + 8] |= 1 << v18;
      v26 = (v1[6] + 16 * v18);
      *v26 = v14;
      v26[1] = v13;
      *(v1[7] + 8 * v18) = v36;
      v27 = v1[2];
      v22 = __OFADD__(v27, 1);
      v28 = v27 + 1;
      if (v22)
      {
        goto LABEL_25;
      }

      v1[2] = v28;
    }

    v9 = v11;
    v4 = v34;
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v11 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v11);
    ++v9;
    if (v7)
    {
      goto LABEL_11;
    }
  }

  v30 = *(v33 + OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_defaults);
  if (v30)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803694E8, &qword_26A09F8E0);
    v31 = sub_26A09DE54();

    v32 = sub_26A09DE74();
    [v30 setObject:v31 forKey:v32];
  }

  else
  {
  }
}

void AuthorizationPersistence.updateDismissalDate(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369830, "J*");
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  sub_26A0814D0(a1, &v14 - v9);
  swift_beginAccess();

  sub_26A0792D8(v10, a2, a3);
  swift_endAccess();
  v11 = *(v4 + OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_defaults);
  if (v11)
  {
    sub_26A09DD34();

    v12 = sub_26A09DE54();

    v13 = sub_26A09DE74();
    [v11 setObject:v12 forKey:v13];
  }
}

uint64_t AuthorizationPersistence.dismissalDate(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_dismissalDateByApp;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (*(v8 + 16) && (v9 = sub_26A099F20(a1, a2), (v10 & 1) != 0))
  {
    v11 = v9;
    v12 = *(v8 + 56);
    v13 = sub_26A09DD34();
    v14 = *(v13 - 8);
    (*(v14 + 16))(a3, v12 + *(v14 + 72) * v11, v13);
    (*(v14 + 56))(a3, 0, 1, v13);
  }

  else
  {
    v15 = sub_26A09DD34();
    (*(*(v15 - 8) + 56))(a3, 1, 1, v15);
  }

  return swift_endAccess();
}

uint64_t AuthorizationPersistence.nextDismissalExpirationDate(after:timeout:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v74 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369830, "J*");
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v60 - v6;
  v8 = sub_26A09DD34();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v61 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v60 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v60 - v16;
  MEMORY[0x28223BE20](v15);
  v68 = &v60 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369590, &qword_26A09F868);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v76 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v75 = &v60 - v22;
  v23 = *(v9 + 56);
  v63 = v9 + 56;
  v62 = v23;
  v23(a2, 1, 1, v8);
  v24 = OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_dismissalDateByApp;
  swift_beginAccess();
  v25 = *(v3 + v24);
  v26 = *(v25 + 64);
  v65 = v25 + 64;
  v27 = 1 << *(v25 + 32);
  v28 = v7;
  v29 = -1;
  if (v27 < 64)
  {
    v29 = ~(-1 << v27);
  }

  v30 = v29 & v26;
  v64 = (v27 + 63) >> 6;
  v81 = (v9 + 32);
  v71 = v25;
  v72 = (v9 + 8);
  v70 = v9;
  v66 = (v9 + 48);
  v67 = v9 + 16;

  v32 = 0;
  v78 = v28;
  v79 = a2;
  v69 = v14;
  v77 = v17;
  v73 = v8;
  while (v30)
  {
    v34 = v32;
LABEL_13:
    v36 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
    v37 = v36 | (v34 << 6);
    v38 = v70;
    v39 = (*(v71 + 48) + 16 * v37);
    v41 = *v39;
    v40 = v39[1];
    v42 = v68;
    (*(v70 + 16))(v68, *(v71 + 56) + *(v70 + 72) * v37, v8);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369598, &qword_26A09F870);
    v44 = *(v43 + 48);
    v45 = v8;
    v46 = v76;
    *v76 = v41;
    *(v46 + 1) = v40;
    (*(v38 + 32))(&v46[v44], v42, v45);
    (*(*(v43 - 8) + 56))(v46, 0, 1, v43);

    v80 = v34;
    v47 = v46;
    v28 = v78;
    a2 = v79;
    v14 = v69;
    v17 = v77;
LABEL_14:
    v48 = v75;
    sub_26A081540(v47, v75);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369598, &qword_26A09F870);
    if ((*(*(v49 - 8) + 48))(v48, 1, v49) == 1)
    {
    }

    v50 = *v81;
    v51 = v48 + *(v49 + 48);
    v8 = v73;
    (*v81)(v17, v51, v73);
    sub_26A09DCC4();
    if (sub_26A09DCE4())
    {
      sub_26A0814D0(a2, v28);
      if ((*v66)(v28, 1, v8) == 1)
      {
        (*v72)(v17, v8);
        sub_26A0815B0(a2);
        sub_26A0815B0(v28);
        v50(a2, v14, v8);
        result = v62(a2, 0, 1, v8);
        v32 = v80;
      }

      else
      {
        v52 = v17;
        v53 = v14;
        v54 = v61;
        v50(v61, v28, v8);
        v55 = sub_26A09DCF4();
        v56 = *v72;
        (*v72)(v54, v8);
        v56(v52, v8);
        if (v55)
        {
          v57 = v79;
          sub_26A0815B0(v79);
          v50(v57, v53, v8);
          a2 = v57;
          result = v62(v57, 0, 1, v8);
        }

        else
        {
          result = (v56)(v53, v8);
          a2 = v79;
        }

        v32 = v80;
        v14 = v53;
        v17 = v77;
        v28 = v78;
      }
    }

    else
    {
      v33 = *v72;
      (*v72)(v14, v8);
      result = (v33)(v17, v8);
      v32 = v80;
    }
  }

  if (v64 <= v32 + 1)
  {
    v35 = v32 + 1;
  }

  else
  {
    v35 = v64;
  }

  while (1)
  {
    v34 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v34 >= v64)
    {
      v80 = v35 - 1;
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369598, &qword_26A09F870);
      v59 = v76;
      (*(*(v58 - 8) + 56))(v76, 1, 1, v58);
      v47 = v59;
      v30 = 0;
      goto LABEL_14;
    }

    v30 = *(v65 + 8 * v34);
    ++v32;
    if (v30)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall AuthorizationPersistence.resetState(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369830, "J*");
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  swift_beginAccess();
  sub_26A07B910(countAndFlagsBits, object, v6);
  swift_endAccess();
  sub_26A0815B0(v6);
  v7 = *(v1 + OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_defaults);
  if (v7)
  {
    sub_26A09DD34();

    v8 = sub_26A09DE54();

    v9 = sub_26A09DE74();
    [v7 setObject:v8 forKey:v9];
  }

  swift_beginAccess();
  sub_26A07B868(countAndFlagsBits, object);
  swift_endAccess();

  sub_26A07A33C();
}

uint64_t AuthorizationPersistence.deinit()
{
  v1 = OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_logger;
  v2 = sub_26A09DE24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t AuthorizationPersistence.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_logger;
  v2 = sub_26A09DE24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

char *sub_26A07B39C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369480, &qword_26A09F690);
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

char *sub_26A07B4A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803695C8, &qword_26A09F908);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_26A07B5FC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_26A07B7E4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369480, &qword_26A09F690);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_26A07B868(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_26A099F20(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_26A07FC68(&qword_280369478, &unk_26A09F680);
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_26A07DDB0(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_26A07B910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_26A099F20(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_26A07F3B0();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_26A09DD34();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_26A07DF60(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_26A09DD34();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

double sub_26A07BA80@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_26A099F20(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_26A07FAA4();
      v10 = v15;
    }

    v11 = *(v10 + 56) + 72 * v8;
    v12 = *(v11 + 48);
    *(a3 + 32) = *(v11 + 32);
    *(a3 + 48) = v12;
    *(a3 + 64) = *(v11 + 64);
    v13 = *(v11 + 16);
    *a3 = *v11;
    *(a3 + 16) = v13;
    sub_26A07E14C(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 64) = 0;
    result = 0.0;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_26A07BB40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369538, &unk_26A09F930);
  v38 = v4;
  result = sub_26A09E384();
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
      v43 = *v22;
      v24 = *(v5 + 56) + 48 * v21;
      v25 = *v24;
      v42 = *(v24 + 8);
      v26 = *(v24 + 24);
      v27 = *(v24 + 40);
      v40 = *(v24 + 32);
      v41 = *(v24 + 16);
      if ((v38 & 1) == 0)
      {
      }

      sub_26A09E514();
      sub_26A09DEE4();
      result = sub_26A09E534();
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
      *v16 = v43;
      v16[1] = v23;
      v17 = *(v7 + 56) + 48 * v15;
      *v17 = v25;
      *(v17 + 8) = v42;
      *(v17 + 16) = v41;
      *(v17 + 24) = v26;
      *(v17 + 32) = v40;
      *(v17 + 40) = v27;
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

uint64_t sub_26A07BE48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = sub_26A09DD34();
  v5 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369470, &qword_26A09F678);
  v42 = v4;
  result = sub_26A09E384();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_26A09E514();
      sub_26A09DEE4();
      result = sub_26A09E534();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}