uint64_t UserDefault.defaultValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = sub_ABA9C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t static NSUserDefaults.Suite.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      if (a1 != a3 || a2 != a4)
      {
        return sub_ABB3C0();
      }

      return 1;
    }

    return 0;
  }

  return !a4;
}

void NSUserDefaults.Suite.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_ABB5D0(1uLL);

    sub_AB93F0();
  }

  else
  {
    sub_ABB5D0(0);
  }
}

Swift::Int NSUserDefaults.Suite.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_ABB5C0();
  if (a2)
  {
    sub_ABB5D0(1uLL);
    sub_AB93F0();
  }

  else
  {
    sub_ABB5D0(0);
  }

  return sub_ABB610();
}

Swift::Int sub_90B2FC()
{
  v1 = *(v0 + 8);
  sub_ABB5C0();
  if (v1)
  {
    sub_ABB5D0(1uLL);
    sub_AB93F0();
  }

  else
  {
    sub_ABB5D0(0);
  }

  return sub_ABB610();
}

void sub_90B36C(uint64_t a1)
{
  if (*(v1 + 8))
  {
    sub_ABB5D0(1uLL);

    sub_AB93F0();
  }

  else
  {
    sub_ABB5D0(0);
  }
}

Swift::Int sub_90B3E4(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_ABB5C0();
  if (v2)
  {
    sub_ABB5D0(1uLL);
    sub_AB93F0();
  }

  else
  {
    sub_ABB5D0(0);
  }

  return sub_ABB610();
}

uint64_t sub_90B450(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      if (*a1 != *a2 || v3 != v4)
      {
        return sub_ABB3C0();
      }

      return 1;
    }

    return 0;
  }

  return !v4;
}

id NSUserDefaults.init(suite:)(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSuiteName:0];
  }

  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_AB9260();
  v4 = [v2 initWithSuiteName:v3];

  if (!v4)
  {
    return 0;
  }

  return v4;
}

void (*NSUserDefaults.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x70uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[9] = a4;
  v8[10] = v4;
  v8[8] = a3;
  v10 = *(a3 - 8);
  v11 = v10;
  v8[11] = v10;
  v12 = *(v10 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v8[12] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v8[12] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v9[13] = v13;
  (*(v11 + 16))();
  NSUserDefaults.subscript.getter(v9);
  return sub_90B68C;
}

void sub_90B68C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[12];
  v3 = (*a1)[13];
  if (a2)
  {
    v5 = v2[11];
    v7 = v2[8];
    v6 = v2[9];
    sub_906F80(*a1, (v2 + 4));
    (*(v5 + 32))(v4, v3, v7);
    NSUserDefaults.subscript.setter((v2 + 4), v4, v7, v6);
    sub_8D1218(v2);
  }

  else
  {
    NSUserDefaults.subscript.setter(*a1, v2[13], v2[8], v2[9]);
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t NSUserDefaults.subscript.getter@<X0>(_OWORD *a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v9 = &v12 - v8;
  sub_AB96D0();
  v10 = NSUserDefaults.subscript.getter(a4);
  return (*(v7 + 8))(v9, AssociatedTypeWitness, v10);
}

uint64_t NSUserDefaults.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  sub_90E8DC(a1, a6, a2, a3, a4, a5);
  v8 = *(*(a3 - 8) + 8);

  return v8(a2, a3);
}

void (*NSUserDefaults.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t *a1, char a2, __n128 a3)
{
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x70uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[10] = a5;
  v10[11] = v5;
  v10[8] = a3;
  v10[9] = a4;
  v12 = *(a3 - 8);
  v13 = v12;
  v10[12] = v12;
  if (&_swift_coroFrameAlloc)
  {
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v14 = malloc(*(v12 + 64));
  }

  v11[13] = v14;
  (*(v13 + 16))();
  NSUserDefaults.subscript.getter(v11);
  return sub_90BA14;
}

void sub_90BA14(uint64_t *a1, char a2, __n128 a3)
{
  v3 = *a1;
  if (a2)
  {
    v5 = v3[12];
    v4 = v3[13];
    v6 = v3[10];
    v8 = v3[8];
    v7 = v3[9];
    sub_906F80(*a1, (v3 + 4));
    sub_90E8DC((v3 + 4), v9, v4, v8, v7, v6);
    (*(v5 + 8))(v4, v8);
    sub_8D1218(v3);
  }

  else
  {
    v10 = v3[12];
    v4 = v3[13];
    v11 = v3[8];
    sub_90E8DC(*a1, a3, v4, v11, v3[9], v3[10]);
    (*(v10 + 8))(v4, v11);
  }

  free(v4);

  free(v3);
}

uint64_t NSUserDefaults.Migrator.init(userDefaults:key:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  v9 = type metadata accessor for NSUserDefaults.Migrator(0, a3, a4, a5);
  v10 = *(*(a3 - 8) + 32);
  v11 = a6 + *(v9 + 44);

  return v10(v11, a2, a3);
}

uint64_t NSUserDefaults.Migrator.init<A>(userDefaults:key:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v14 = *(a3 - 8);
  __chkstk_darwin();
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB96D0();
  (*(*(a5 - 8) + 8))(a2, a5);
  *a7 = a1;
  v17 = type metadata accessor for NSUserDefaults.Migrator(0, a3, a4, a6);
  return (*(v14 + 32))(&a7[*(v17 + 44)], v16, a3);
}

uint64_t NSUserDefaults.Migrator.migrateValue<A, B>(to:valueTransformer:destination:)@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v60 = a2;
  v9 = v8;
  v55 = a7;
  v53 = a4;
  v59 = a3;
  v49 = a1;
  v56 = a8;
  v54 = a6;
  v48 = *(a6 - 8);
  __chkstk_darwin();
  v57 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  v58 = *(v13 - 8);
  __chkstk_darwin();
  v46 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v15;
  v51 = sub_ABA9C0();
  v50 = *(v51 - 8);
  __chkstk_darwin();
  v47 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v62 = &v46 - v17;
  v18 = *(a5 + 24);
  v67 = sub_ABA9C0();
  v63 = *(v67 - 8);
  __chkstk_darwin();
  v20 = &v46 - v19;
  v21 = *v9;
  v22 = *(a5 + 44);
  v23 = *(a5 + 32);
  NSUserDefaults.subscript.getter(v66);
  sub_906F80(v66, &v64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21230, &qword_B36BF0);
  v24 = swift_dynamicCast();
  v25 = *(v18 - 8);
  (*(v25 + 56))(v20, v24 ^ 1u, 1, v18);
  sub_906F80(v66, &v64);
  v26 = *(&v65 + 1);
  sub_8D1218(&v64);
  if (v26 && (*(v25 + 48))(v20, 1, v18) == 1)
  {
    _s8MigratorV5ErrorOMa(0, v13, v18, v23);
    swift_getWitnessTable();
    swift_allocError();
    (*(v58 + 16))(v27, v9 + v22, v13);
    swift_willThrow();
LABEL_5:
    sub_8D1218(v66);
    return (*(v63 + 8))(v20, v67);
  }

  v28 = v61;
  v29 = v62;
  v60(v20);
  if (v28)
  {
    goto LABEL_5;
  }

  v30 = v46;
  (*(v58 + 16))(v46, v9 + v22, v13);
  v64 = 0u;
  v65 = 0u;
  NSUserDefaults.subscript.setter(&v64, v30, v13, v23);
  v31 = v53;
  if (v53)
  {
    v61 = v53;
  }

  else
  {
    v61 = v21;
  }

  v32 = v52;
  v33 = v51;
  v34 = v50;
  v35 = v54;
  (*(v48 + 16))(v57, v49, v54);
  v36 = v47;
  (*(v34 + 16))(v47, v29, v33);
  v37 = v34;
  v38 = *(v32 - 8);
  if ((*(v38 + 48))(v36, 1, v32) == 1)
  {
    v39 = *(v37 + 8);
    v40 = v31;
    v39(v36, v33);
    v64 = 0u;
    v65 = 0u;
  }

  else
  {
    *(&v65 + 1) = v32;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v64);
    (*(v38 + 32))(boxed_opaque_existential_0, v36, v32);
    v42 = v31;
  }

  v43 = v33;
  v44 = v61;
  NSUserDefaults.subscript.setter(&v64, v57, v35, v55);

  sub_8D1218(v66);
  (*(v37 + 32))(v56, v62, v43);
  return (*(v63 + 8))(v20, v67);
}

uint64_t NSUserDefaults.Migrator.migrateValue<A, B>(to:valueTransformer:destination:)@<X0>(void (*a1)(char *)@<X1>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X4>, uint64_t a6@<X6>, uint64_t a8@<X8>, uint64_t a10)
{
  v22 = a6;
  v20 = a3;
  v21 = a4;
  v19 = a10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v16 = &v18 - v15;
  sub_AB96D0();
  NSUserDefaults.Migrator.migrateValue<A, B>(to:valueTransformer:destination:)(v16, a1, a2, v20, v21, AssociatedTypeWitness, v19, a8);
  return (*(v14 + 8))(v16, AssociatedTypeWitness);
}

double NSUserDefaults.Migrator.migrateValue<A>(to:destination:)@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(a3 + 24);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  NSUserDefaults.Migrator.migrateValue<A, B>(to:valueTransformer:destination:)(a1, sub_8CA53C, v13, a2, a3, a4, a5, a6);

  return result;
}

uint64_t NSUserDefaults.Migrator.migrateValue<A>(to:destination:)@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v16 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v13 = &v16 - v12;
  sub_AB96D0();
  v14 = NSUserDefaults.Migrator.migrateValue<A>(to:destination:)(v13, a1, a2, AssociatedTypeWitness, v16, a6);
  return (*(v11 + 8))(v13, AssociatedTypeWitness, v14);
}

uint64_t NSUserDefaults.migrateValue<A, B>(for:to:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v23 = a5;
  v24 = a2;
  v9 = *(a3 - 8);
  __chkstk_darwin();
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for NSUserDefaults.Migrator(0, v12, v13, v14);
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin();
  v19 = &v23 - v18;
  (*(v9 + 16))(v11, a1, a3, v17);
  *v19 = v5;
  (*(v9 + 32))(&v19[*(v15 + 44)], v11, a3);
  v20 = v5;
  v21 = NSUserDefaults.Migrator.migrateValue<A>(to:destination:)(a1, v24, v15, a3, a4, v23);
  return (*(v16 + 8))(v19, v15, v21);
}

uint64_t NSUserDefaults.migrateValue<A, B>(for:to:)@<X0>(void *a1@<X1>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v13 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v11 = &v13 - v10;
  sub_AB96D0();
  NSUserDefaults.migrateValue<A, B>(for:to:)(v11, a1, AssociatedTypeWitness, v13, a5);
  return (*(v9 + 8))(v11, AssociatedTypeWitness);
}

uint64_t NSUserDefaults.KeyValueRegistration.deinit()
{
  v1 = *(v0 + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaults20KeyValueRegistration_onInvalidate);

  v1(v2);

  sub_90FCBC(v0 + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaults20KeyValueRegistration_identifier, _s20KeyValueRegistrationC10IdentifierVMa);

  return v0;
}

uint64_t NSUserDefaults.KeyValueRegistration.__deallocating_deinit()
{
  v1 = *(v0 + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaults20KeyValueRegistration_onInvalidate);

  v1(v2);

  sub_90FCBC(v0 + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaults20KeyValueRegistration_identifier, _s20KeyValueRegistrationC10IdentifierVMa);

  return swift_deallocClassInstance();
}

void sub_90CAC8(uint64_t a1)
{
  if (qword_E1FE78 != -1)
  {
    swift_once();
  }

  v2 = qword_E212D0;
  v3 = *(qword_E212D0 + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaultsP33_0EE8F48931DDE162065F15584D7CE3A39_Observer_lock);
  os_unfair_lock_lock(*(v3 + 16));
  sub_90D3D0(v2, a1);
  v4 = *(v3 + 16);

  os_unfair_lock_unlock(v4);
}

uint64_t static NSUserDefaults.observe<A>(_:in:valueChanged:)(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = a6;
  v19 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v15 = &v18 - v14;
  sub_AB96D0();
  v16 = static NSUserDefaults.observe<A>(_:in:valueChanged:)(v15, a3, a4, a5, v18, AssociatedTypeWitness, v19);
  (*(v13 + 8))(v15, AssociatedTypeWitness);
  return v16;
}

id sub_90CCC8()
{
  result = [objc_allocWithZone(_s9_ObserverCMa()) init];
  qword_E212D0 = result;
  return result;
}

double sub_90CD98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  v52 = _s9_ObserverC18HandlerAssociationVMa(0);
  v55 = *(v52 - 8);
  __chkstk_darwin();
  v56 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaultsP33_0EE8F48931DDE162065F15584D7CE3A39_Observer_registeredSuites;
  swift_beginAccess();
  v9 = *(a1 + v8);
  v58 = a2;

  sub_90A57C(sub_90FD4C, v57, v9);
  v11 = v10;
  v13 = v12;
  v15 = v14;

  if (v15)
  {
    v51 = v4;
  }

  else
  {
    sub_13C80(0, qword_E21380, NSUserDefaults_ptr);
    v16 = (a2 + *(_s20KeyValueRegistrationC10IdentifierVMa(0) + 20));
    v11 = *v16;
    v13 = v16[1];

    v17 = NSUserDefaults.init(suite:)(v11, v13);
    if (!v17)
    {
      sub_90FD6C();
      swift_allocError();
      *v48 = v11;
      v48[1] = v13;
      swift_willThrow();

      return result;
    }

    v15 = v17;
    v51 = v4;
  }

  v18 = *(a1 + v8);
  v19 = *(v18 + 16);

  v20 = v15;
  if (v19)
  {

    v21 = sub_8E0C10(v11, v13, v20);
    if (v22)
    {
      v49 = *(*(v18 + 56) + 8 * v21);

      goto LABEL_10;
    }
  }

  v49 = sub_8C8BC0(_swiftEmptyArrayStorage);
LABEL_10:
  v23 = *(a1 + v8);
  v24 = *(v23 + 16);
  v50 = v11;
  if (!v24)
  {
LABEL_17:
    v34 = _swiftEmptyArrayStorage;
LABEL_18:
    v35 = (a2 + *(_s20KeyValueRegistrationC10IdentifierVMa(0) + 24));
    v30 = *v35;
    v31 = v35[1];
    v36 = sub_AB9260();
    [v20 addObserver:a1 forKeyPath:v36 options:0 context:0];

    goto LABEL_19;
  }

  v25 = sub_8E0C10(v11, v13, v20);
  if ((v26 & 1) == 0 || (v27 = *(*(v23 + 56) + 8 * v25), , , v28 = _s20KeyValueRegistrationC10IdentifierVMa(0), !*(v27 + 16)) || (v29 = (a2 + *(v28 + 24)), v30 = *v29, v31 = v29[1], v32 = sub_8E0A74(*v29, v31), (v33 & 1) == 0))
  {

    goto LABEL_17;
  }

  v34 = *(*(v27 + 56) + 8 * v32);

  if (!v34[2])
  {
    goto LABEL_18;
  }

LABEL_19:
  v37 = sub_AB3470();
  v38 = v56;
  (*(*(v37 - 8) + 16))(v56, a2, v37);
  v39 = (v38 + *(v52 + 20));
  v40 = v54;
  *v39 = v53;
  v39[1] = v40;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v34 = sub_8D84D4(0, v34[2] + 1, 1, v34);
  }

  v42 = v34[2];
  v41 = v34[3];
  if (v42 >= v41 >> 1)
  {
    v34 = sub_8D84D4((v41 > 1), v42 + 1, 1, v34);
  }

  v34[2] = v42 + 1;
  sub_90FDC0(v56, v34 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v42, _s9_ObserverC18HandlerAssociationVMa);

  v43 = v49;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v59 = v43;
  sub_8F48D0(v34, v30, v31, isUniquelyReferenced_nonNull_native);

  v45 = v59;
  swift_beginAccess();
  v46 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *(a1 + v8);
  *(a1 + v8) = 0x8000000000000000;
  sub_8F4728(v45, v50, v13, v20, v46);

  *(a1 + v8) = v60;
  swift_endAccess();

  return result;
}

uint64_t sub_90D29C()
{
  v1 = *(_s20KeyValueRegistrationC10IdentifierVMa(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_AB3470();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

void sub_90D3D0(uint64_t a1, uint64_t a2)
{
  _s9_ObserverC18HandlerAssociationVMa(0);
  __chkstk_darwin();
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaultsP33_0EE8F48931DDE162065F15584D7CE3A39_Observer_registeredSuites;
  swift_beginAccess();
  v7 = *(a1 + v6);
  v41 = a2;

  sub_90A57C(sub_90FE38, v40, v7);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  if (v13)
  {
    v39 = v9;
    v16 = (a2 + *(_s20KeyValueRegistrationC10IdentifierVMa(0) + 24));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v15 + 16);

    if (v19 && (v38 = v17, v20 = sub_8E0A74(v17, v18), (v21 & 1) != 0))
    {
      v37 = v18;
      v22 = *(*(v15 + 56) + 8 * v20);

      v45 = v22;
      __chkstk_darwin();
      *(&v34 - 2) = a2;

      v36 = sub_90A490(sub_90FD1C, (&v34 - 4), v22);
      v24 = v23;

      if (v24)
      {
      }

      else
      {

        v25 = v13;
        sub_900870(v36, v5);
        sub_90FCBC(v5, _s9_ObserverC18HandlerAssociationVMa);
        v36 = v45;
        v26 = v37;
        if (!*(v45 + 16))
        {
          v27 = v25;
          v28 = sub_AB9260();
          [v27 removeObserver:a1 forKeyPath:v28];
        }

        v29 = v25;
        v35 = sub_90DEE4(v44);
        v31 = sub_8EEB44(v43, v39, v11, v29);
        if (*v30)
        {
          v32 = v30;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v42 = *v32;
          *v32 = 0x8000000000000000;
          sub_8F48D0(v36, v38, v26, isUniquelyReferenced_nonNull_native);

          *v32 = v42;
        }

        else
        {
        }

        (v31)(v43, 0);

        (v35)(v44, 0);

        swift_bridgeObjectRelease_n();
      }
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }
  }
}

BOOL sub_90D760(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (a2 + *(_s20KeyValueRegistrationC10IdentifierVMa(0) + 20));
  v5 = v4[1];
  if (v3)
  {
    if (v5)
    {
      if (v2 != *v4 || v3 != v5)
      {
        return sub_ABB3C0() & 1;
      }

      return 1;
    }

    return 0;
  }

  return !v5;
}

double sub_90D7E8(uint64_t a1, NSString a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = a1;
  v10 = *(_s9_ObserverC18HandlerAssociationVMa(0) - 8);
  __chkstk_darwin();
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a2;
  if (!a2)
  {
LABEL_12:
    sub_906F80(a3, &v40);
    v26 = *(&v41 + 1);
    if (*(&v41 + 1))
    {
      __swift_project_boxed_opaque_existential_1(&v40, *(&v41 + 1));
      v27 = *(v26 - 8);
      v28 = __chkstk_darwin();
      v30 = v35 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v27 + 16))(v30, v28);
      v31 = sub_ABB3A0();
      (*(v27 + 8))(v30, v26);
      __swift_destroy_boxed_opaque_existential_0(&v40);
      if (a4)
      {
LABEL_14:
        type metadata accessor for NSKeyValueChangeKey(0);
        sub_90FBFC();
        v32.super.isa = sub_AB8FD0().super.isa;
LABEL_17:
        v33 = _s9_ObserverCMa();
        v39.receiver = v5;
        v39.super_class = v33;
        objc_msgSendSuper2(&v39, "observeValueForKeyPath:ofObject:change:context:", a2, v31, v32.super.isa, a5);

        swift_unknownObjectRelease();
        return result;
      }
    }

    else
    {
      v31 = 0;
      if (a4)
      {
        goto LABEL_14;
      }
    }

    v32.super.isa = 0;
    goto LABEL_17;
  }

  v14 = v11;
  sub_906F80(a3, &v40);
  if (!*(&v41 + 1))
  {
    sub_8D1218(&v40);
    goto LABEL_11;
  }

  sub_13C80(0, qword_E21380, NSUserDefaults_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    a2 = sub_AB9260();
    goto LABEL_12;
  }

  v15 = v38;
  v16 = *&v5[OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaultsP33_0EE8F48931DDE162065F15584D7CE3A39_Observer_lock];
  os_unfair_lock_lock(*(v16 + 16));
  v17 = v15;
  sub_90DBE0(v5, v15, v37, v36, &v40);
  os_unfair_lock_unlock(*(v16 + 16));
  v18 = *(v40 + 16);
  if (v18)
  {
    v19 = &v13[*(v14 + 20)];
    v20 = *(v10 + 80);
    v35[1] = v40;
    v21 = v40 + ((v20 + 32) & ~v20);
    v22 = *(v10 + 72);
    do
    {
      sub_90FC54(v21, v13, _s9_ObserverC18HandlerAssociationVMa);
      v23 = *v19;
      v24 = sub_AB9260();
      v25 = [v17 valueForKey:v24];

      if (v25)
      {
        sub_ABAB50();
        swift_unknownObjectRelease();
      }

      else
      {
        v40 = 0u;
        v41 = 0u;
      }

      v23(&v40);
      sub_8D1218(&v40);
      sub_90FCBC(v13, _s9_ObserverC18HandlerAssociationVMa);
      v21 += v22;
      --v18;
    }

    while (v18);
  }

  else
  {
  }

  return result;
}

void sub_90DBE0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaultsP33_0EE8F48931DDE162065F15584D7CE3A39_Observer_registeredSuites;
  swift_beginAccess();
  v11 = 0;
  v12 = *(a1 + v10);
  v13 = 1 << *(v12 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v12 + 64);
  v16 = _swiftEmptyArrayStorage;
  while (v15)
  {
    v17 = v11;
LABEL_10:
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v19 = v18 | (v17 << 6);
    if (*(*(v12 + 48) + 24 * v19 + 16) == a2)
    {
      v20 = *(*(v12 + 56) + 8 * v19);
      v21 = 1 << *(v20 + 32);
      v22 = -1;
      if (v21 < 64)
      {
        v22 = ~(-1 << v21);
      }

      v23 = v22 & *(v20 + 64);
      v24 = (v21 + 63) >> 6;

      v25 = 0;
      while (v23)
      {
LABEL_19:
        v27 = __clz(__rbit64(v23)) | (v25 << 6);
        v28 = (*(v20 + 48) + 16 * v27);
        v16 = *(*(v20 + 56) + 8 * v27);
        if (*v28 != a3 || v28[1] != a4)
        {
          v23 &= v23 - 1;
          if ((sub_ABB3C0() & 1) == 0)
          {
            continue;
          }
        }

LABEL_26:

        goto LABEL_27;
      }

      while (1)
      {
        v26 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          goto LABEL_29;
        }

        if (v26 >= v24)
        {
          v16 = _swiftEmptyArrayStorage;
          goto LABEL_26;
        }

        v23 = *(v20 + 64 + 8 * v26);
        ++v25;
        if (v23)
        {
          v25 = v26;
          goto LABEL_19;
        }
      }
    }
  }

  while (1)
  {
    v17 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v17 >= ((v13 + 63) >> 6))
    {
LABEL_27:
      *a5 = v16;
      return;
    }

    v15 = *(v12 + 64 + 8 * v17);
    ++v11;
    if (v15)
    {
      v11 = v17;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

uint64_t sub_90DF44(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_ABB3C0() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!v4)
  {
LABEL_8:
    sub_13C80(0, &unk_E211F0, NSObject_ptr);
    return sub_ABA790() & 1;
  }

  return 0;
}

id sub_90DFD0()
{
  v2.receiver = v0;
  v2.super_class = _s9_ObserverCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t NSUserDefaults.encodeValue(_:forKey:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_AB2B00();
  swift_allocObject();
  sub_AB2AF0();
  v5 = sub_AB2AE0();
  v7 = v6;

  isa = sub_AB3250().super.isa;
  v9 = sub_AB9260();
  [v4 setValue:isa forKey:v9];

  return sub_466B8(v5, v7);
}

uint64_t NSUserDefaults.decodeValue<A>(_:forKey:)@<X0>(uint64_t a3@<X3>, void *a5@<X8>)
{
  v8 = sub_AB9260();
  v9 = [v5 valueForKey:v8];

  if (v9)
  {
    sub_ABAB50();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16[0] = v14;
  v16[1] = v15;
  if (!*(&v15 + 1))
  {
    sub_8D1218(v16);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v10 = 1;
    return (*(*(a3 - 8) + 56))(a5, v10, 1, a3);
  }

  sub_AB2AD0();
  swift_allocObject();
  sub_AB2AC0();
  sub_AB2AB0();
  sub_466B8(v12, v13);

  v10 = 0;
  return (*(*(a3 - 8) + 56))(a5, v10, 1, a3);
}

uint64_t sub_90E630()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_E212D8);
  __swift_project_value_buffer(v0, qword_E212D8);
  return sub_AB4BB0();
}

uint64_t sub_90E6B0(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v6 = sub_ABA9C0();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v18 - v8;
  v10 = *(a2 + 16);
  v11 = __chkstk_darwin();
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v2 + *(a2 + 44), v10, v11);
  (*(v7 + 16))(v9, a1, v6);
  v15 = *(v5 - 8);
  if ((*(v15 + 48))(v9, 1, v5) == 1)
  {
    (*(v7 + 8))(v9, v6);
    v18 = 0u;
    v19 = 0u;
  }

  else
  {
    *(&v19 + 1) = v5;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v18);
    (*(v15 + 32))(boxed_opaque_existential_0, v9, v5);
  }

  return NSUserDefaults.subscript.setter(&v18, v13, v10, *(a2 + 32));
}

uint64_t sub_90E8DC(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin();
  v10 = &v12[-v9];
  sub_AB96D0();
  sub_906F80(a1, v12);
  NSUserDefaults.subscript.setter(v12, v10, AssociatedTypeWitness, a6);
  return sub_8D1218(a1);
}

unint64_t sub_90EA0C()
{
  result = qword_E212F8[0];
  if (!qword_E212F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_E212F8);
  }

  return result;
}

uint64_t sub_90EA60(uint64_t a1)
{
  result = sub_13C80(319, qword_E21380, NSUserDefaults_ptr);
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = sub_ABA9C0();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_90EB14(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  if (v6 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = *(v5 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v5 + 80);
  v15 = *(*(*(a3 + 16) - 8) + 64);
  v16 = *(v8 + 80);
  v17 = *(*(v7 - 8) + 64);
  if (!v10)
  {
    ++v17;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = a2 - v13;
  if (a2 <= v13)
  {
    goto LABEL_35;
  }

  v19 = v17 + ((v15 + v16 + ((v14 + 8) & ~v14)) & ~v16);
  v20 = 8 * v19;
  if (v19 <= 3)
  {
    v23 = ((v18 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v23))
    {
      v21 = *(a1 + v19);
      if (!v21)
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v23 > 0xFF)
    {
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v23 < 2)
    {
LABEL_35:
      if ((v12 & 0x80000000) != 0)
      {
        v28 = (a1 + v14 + 8) & ~v14;
        if (v6 == v13)
        {
          v29 = *(v5 + 48);

          return v29(v28);
        }

        else
        {
          v30 = (*(v9 + 48))((v28 + v15 + v16) & ~v16, v10, v7);
          if (v30 >= 2)
          {
            return v30 - 1;
          }

          else
          {
            return 0;
          }
        }
      }

      else
      {
        v27 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v27) = -1;
        }

        return (v27 + 1);
      }
    }
  }

  v21 = *(a1 + v19);
  if (!*(a1 + v19))
  {
    goto LABEL_35;
  }

LABEL_22:
  v24 = (v21 - 1) << v20;
  if (v19 > 3)
  {
    v24 = 0;
  }

  if (v19)
  {
    if (v19 <= 3)
    {
      v25 = v19;
    }

    else
    {
      v25 = 4;
    }

    if (v25 > 2)
    {
      if (v25 == 3)
      {
        v26 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v26 = *a1;
      }
    }

    else if (v25 == 1)
    {
      v26 = *a1;
    }

    else
    {
      v26 = *a1;
    }
  }

  else
  {
    v26 = 0;
  }

  return v13 + (v26 | v24) + 1;
}

void sub_90ED78(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = *(a4 + 24);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  v12 = *(v7 + 80);
  v13 = *(v7 + 64);
  v14 = *(v10 + 80);
  v15 = v11 - 1;
  if (!v11)
  {
    v15 = 0;
  }

  if (v8 <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = *(v7 + 84);
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  if (v11)
  {
    v18 = *(*(v9 - 8) + 64);
  }

  else
  {
    v18 = *(*(v9 - 8) + 64) + 1;
  }

  v19 = ((v13 + v14 + ((v12 + 8) & ~v12)) & ~v14) + v18;
  v20 = a3 >= v17;
  v21 = a3 - v17;
  if (v21 == 0 || !v20)
  {
LABEL_24:
    if (v17 < a2)
    {
      goto LABEL_25;
    }

    goto LABEL_34;
  }

  if (v19 > 3)
  {
    v6 = 1;
    if (v17 < a2)
    {
      goto LABEL_25;
    }

    goto LABEL_34;
  }

  v22 = ((v21 + ~(-1 << (8 * v19))) >> (8 * v19)) + 1;
  if (!HIWORD(v22))
  {
    if (v22 < 0x100)
    {
      v23 = 1;
    }

    else
    {
      v23 = 2;
    }

    if (v22 >= 2)
    {
      v6 = v23;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_24;
  }

  v6 = 4;
  if (v17 < a2)
  {
LABEL_25:
    v24 = ~v17 + a2;
    if (v19 < 4)
    {
      v25 = (v24 >> (8 * v19)) + 1;
      if (v19)
      {
        v26 = v24 & ~(-1 << (8 * v19));
        bzero(a1, v19);
        if (v19 != 3)
        {
          if (v19 == 2)
          {
            *a1 = v26;
            if (v6 > 1)
            {
LABEL_60:
              if (v6 == 2)
              {
                *&a1[v19] = v25;
              }

              else
              {
                *&a1[v19] = v25;
              }

              return;
            }
          }

          else
          {
            *a1 = v24;
            if (v6 > 1)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_57;
        }

        *a1 = v26;
        a1[2] = BYTE2(v26);
      }

      if (v6 > 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      bzero(a1, v19);
      *a1 = v24;
      v25 = 1;
      if (v6 > 1)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    if (v6)
    {
      a1[v19] = v25;
    }

    return;
  }

LABEL_34:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v19] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_41;
    }

    *&a1[v19] = 0;
  }

  else if (v6)
  {
    a1[v19] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_41;
  }

  if (!a2)
  {
    return;
  }

LABEL_41:
  if ((v16 & 0x80000000) != 0)
  {
    v28 = &a1[v12 + 8] & ~v12;
    if (v8 == v17)
    {
      v29 = *(v7 + 56);

      v29(v28);
    }

    else
    {
      v30 = *(v10 + 56);
      v31 = (v28 + v13 + v14) & ~v14;
      v32 = a2 + 1;

      v30(v31, v32, v11, v9);
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v27 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v27 = a2 - 1;
    }

    *a1 = v27;
  }
}

uint64_t sub_90F0AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_90F100(uint64_t a1)
{
  result = sub_13C80(319, qword_E21380, NSUserDefaults_ptr);
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

uint64_t sub_90F198(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_90F31C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

uint64_t sub_90F574(uint64_t a1)
{
  result = _s20KeyValueRegistrationC10IdentifierVMa(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_90F648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_AB3470();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_90F718(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_AB3470();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_90F7F0(uint64_t a1)
{
  result = sub_AB3470();
  if (v2 <= 0x3F)
  {
    result = sub_90F874();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_90F874()
{
  result = qword_E215E0;
  if (!qword_E215E0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_E215E0);
  }

  return result;
}

uint64_t sub_90F8D4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t sub_90F990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_AB3470();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_90FA64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_AB3470();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_90FB20(uint64_t a1)
{
  result = sub_AB3470();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_90FBA8()
{
  result = qword_E21728;
  if (!qword_E21728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E21728);
  }

  return result;
}

unint64_t sub_90FBFC()
{
  result = qword_E20048;
  if (!qword_E20048)
  {
    type metadata accessor for NSKeyValueChangeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E20048);
  }

  return result;
}

uint64_t sub_90FC54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_90FCBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_90FD6C()
{
  result = qword_E21730;
  if (!qword_E21730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E21730);
  }

  return result;
}

uint64_t sub_90FDC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_90FE58(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_AB9560();
  }

  else
  {
    return 0;
  }
}

void sub_90FEEC()
{
  v0 = 10;
  sub_910ADC(0, 10, 0);
  v1 = &unk_D44480;
  do
  {
    v5 = *(v1 - 1);
    v6 = *v1;
    swift_bridgeObjectRetain_n();
    v7._countAndFlagsBits = 115;
    v7._object = 0xE100000000000000;
    sub_AB94A0(v7);

    v3 = _swiftEmptyArrayStorage[2];
    v2 = _swiftEmptyArrayStorage[3];
    if (v3 >= v2 >> 1)
    {
      sub_910ADC((v2 > 1), v3 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v3 + 1;
    v4 = &_swiftEmptyArrayStorage[2 * v3];
    v4[4] = v5;
    v4[5] = v6;
    v1 += 2;
    --v0;
  }

  while (v0);
  sub_8E367C(&off_D44428);
  qword_E743F8 = _swiftEmptyArrayStorage;
}

uint64_t URL.replacingSchemeWithHTTP.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E212B0, &qword_B37C58);
  __chkstk_darwin();
  v3 = &v17[-v2];
  v4 = sub_AB2CE0();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_AB2C40();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_12E1C(v3, &qword_E212B0, &qword_B37C58);
LABEL_9:
    v13 = sub_AB31C0();
    return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }

  (*(v5 + 32))(v7, v3, v4);
  v8 = sub_AB2CA0();
  if (!v9)
  {
    (*(v5 + 8))(v7, v4);
    goto LABEL_9;
  }

  v10 = v8;
  v11 = v9;
  if (qword_E1FE90 != -1)
  {
    swift_once();
  }

  v18 = v10;
  v19 = v11;
  __chkstk_darwin();
  *&v17[-16] = &v18;
  if (sub_1B39BC(sub_911130, &v17[-32], v12))
  {
  }

  else
  {
    if (qword_E1FE88 != -1)
    {
      swift_once();
    }

    v18 = v10;
    v19 = v11;
    __chkstk_darwin();
    *&v17[-16] = &v18;
    v16 = sub_1B39BC(sub_91115C, &v17[-32], v15);

    if ((v16 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  sub_AB2CB0();
LABEL_14:
  sub_AB2C50();
  return (*(v5 + 8))(v7, v4);
}

Swift::Void __swiftcall URLComponents.appendPath(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = sub_AB2C90();
  v5 = sub_910464(v3, v4);
  v7 = v6;

  if (v7)
  {
    if (v5 == 47 && v7 == 0xE100000000000000)
    {

LABEL_6:
      v9 = sub_AB2C80();
      v15._countAndFlagsBits = countAndFlagsBits;
      v15._object = object;
      sub_AB94A0(v15);
      v9(v14, 0);
      return;
    }

    v8 = sub_ABB3C0();

    if (v8)
    {
      goto LABEL_6;
    }
  }

  v10 = sub_9104E4(countAndFlagsBits, object);
  v12 = v11;
  v13 = sub_AB2C80();
  v16._countAndFlagsBits = v10;
  v16._object = v12;
  sub_AB94A0(v16);

  v13(v14, 0);
}

uint64_t sub_910464(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_AB9440();
  return sub_AB9560();
}

uint64_t sub_9104E4(uint64_t a1, void *a2)
{
  v3 = a1;
  v4 = sub_90FE58(a1, a2);
  if (!v5)
  {
    goto LABEL_7;
  }

  if (v4 != 47 || v5 != 0xE100000000000000)
  {
    v6 = sub_ABB3C0();

    if (v6)
    {
      goto LABEL_6;
    }

LABEL_7:
    v8._countAndFlagsBits = v3;
    v8._object = a2;
    sub_AB94A0(v8);
    return 47;
  }

LABEL_6:

  return v3;
}

Swift::Void __swiftcall URLComponents.appendQueryItems(_:)(Swift::OpaquePointer a1)
{
  if (sub_AB2C20())
  {

    sub_8E3A84(v1);
  }

  else
  {
  }

  sub_AB2C30();
}

uint64_t URL.isSafariScriptURL.getter()
{
  v0 = sub_AB2C10();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21738, &qword_B37FF0);
  __chkstk_darwin();
  v5 = &v23 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E212B0, &qword_B37C58);
  __chkstk_darwin();
  v7 = &v23 - v6;
  v8 = sub_AB2CE0();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB2C40();
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    (*(v9 + 32))(v11, v7, v8);
    result = sub_AB2C20();
    if (!result)
    {
      (*(v9 + 8))(v11, v8);
      return 0;
    }

    v13 = result;
    v23 = v11;
    v24 = v9;
    v25 = v8;
    v26 = v5;
    v28 = *(result + 16);
    if (!v28)
    {
LABEL_18:

      (*(v24 + 8))(v23, v25);
      v22 = v26;
      (*(v1 + 56))(v26, 1, 1, v0);
      sub_12E1C(v22, &qword_E21738, &qword_B37FF0);
      return 0;
    }

    v14 = 0;
    v15 = result + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v27 = 0x8000000000B797B0;
    while (1)
    {
      if (v14 >= *(v13 + 16))
      {
        __break(1u);
        return result;
      }

      (*(v1 + 16))(v3, v15 + *(v1 + 72) * v14, v0);
      if (sub_AB2BF0() == 0x6E6F69746361 && v17 == 0xE600000000000000)
      {
      }

      else
      {
        v18 = sub_ABB3C0();

        if ((v18 & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      v19 = sub_AB2C00();
      if (v20)
      {
        if (v19 == 0xD000000000000016 && v20 == v27)
        {

LABEL_17:
          (*(v24 + 8))(v23, v25);

          v21 = v26;
          (*(v1 + 32))(v26, v3, v0);
          (*(v1 + 56))(v21, 0, 1, v0);
          sub_12E1C(v21, &qword_E21738, &qword_B37FF0);
          return 1;
        }

        v16 = sub_ABB3C0();

        if (v16)
        {
          goto LABEL_17;
        }
      }

LABEL_7:
      ++v14;
      result = (*(v1 + 8))(v3, v0);
      if (v28 == v14)
      {
        goto LABEL_18;
      }
    }
  }

  sub_12E1C(v7, &qword_E212B0, &qword_B37C58);
  return 0;
}

void *sub_910ABC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_910BF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_910ADC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_910EFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_910AFC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E212C8, &qword_B37D08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

void *sub_910BF0(void *result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E20470, &qword_B36B68);
  v10 = *(sub_AB3820() - 8);
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
  v15 = *(sub_AB3820() - 8);
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

void *sub_910DC8(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E212C0, &qword_B37D00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E212B8, &qword_B37CF8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_910EFC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E20948, &qword_B36EA0);
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
    v10 = _swiftEmptyArrayStorage;
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

uint64_t sub_911008(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = sub_ABAE20();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_ABB060();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

const char *Feature.MediaPlayer.feature.getter(unsigned __int8 a1)
{
  v1 = "image_decoding";
  v2 = "QueueFA";
  if (a1 != 2)
  {
    v2 = "RSuntory";
  }

  if (a1)
  {
    v1 = "UpgradeOnPlay";
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

const char *sub_9111EC()
{
  v1 = "image_decoding";
  v2 = "QueueFA";
  if (*v0 != 2)
  {
    v2 = "RSuntory";
  }

  if (*v0)
  {
    v1 = "UpgradeOnPlay";
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

unint64_t sub_9112C8()
{
  result = qword_E21740;
  if (!qword_E21740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E21740);
  }

  return result;
}

unint64_t sub_911320()
{
  result = qword_E21748;
  if (!qword_E21748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E21748);
  }

  return result;
}

unint64_t sub_911378()
{
  result = qword_E21750;
  if (!qword_E21750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E21750);
  }

  return result;
}

unint64_t sub_9113D0()
{
  result = qword_E21758;
  if (!qword_E21758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E21758);
  }

  return result;
}

const char *Feature.Music.feature.getter(char a1)
{
  result = "potluck";
  switch(a1)
  {
    case 1:
      result = "bilby";
      break;
    case 2:
      result = "symphony";
      break;
    case 3:
      result = "qulh";
      break;
    case 4:
      result = "image_playground_covers";
      break;
    case 5:
      result = "in_with_the_new";
      break;
    case 6:
      result = "despacito";
      break;
    case 7:
      result = "despacito_server";
      break;
    case 8:
      result = "atv_sing";
      break;
    case 9:
      result = "lucky_roll";
      break;
    case 10:
      result = "motion_over_media_remote";
      break;
    case 11:
      result = "ipad_motion_background";
      break;
    case 12:
      result = "quick_search";
      break;
    case 13:
      result = "pins_widget";
      break;
    case 14:
      result = "jafar";
      break;
    case 15:
      result = "jose";
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_91160C()
{
  result = qword_E21760;
  if (!qword_E21760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E21760);
  }

  return result;
}

uint64_t FeatureFlagsKey.isEnabled.getter(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v6[3] = a1;
  v6[4] = a2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v6);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_0, v2, v3);
  LOBYTE(v3) = sub_AB3A70();
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v3 & 1;
}

uint64_t GestureRecognizerHandler.__allocating_init<A>(gestureRecognizer:handler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  GestureRecognizerHandler.init<A>(gestureRecognizer:handler:)(a1, a2, a3, a4);
  return v8;
}

uint64_t GestureRecognizerHandler.init<A>(gestureRecognizer:handler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v9 = swift_allocObject();
  v9[2] = a4;
  v9[3] = a2;
  v9[4] = a3;
  *(v4 + 24) = sub_8D0B90;
  *(v4 + 32) = v9;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;

    [v11 addTarget:v4 action:"handleActionFromGestureRecognizer:"];
  }

  return v4;
}

uint64_t sub_911854()
{

  return swift_deallocObject();
}

uint64_t GestureRecognizerHandler.deinit()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong removeTarget:v0 action:"handleActionFromGestureRecognizer:"];
  }

  swift_unknownObjectWeakDestroy();

  return v0;
}

uint64_t GestureRecognizerHandler.__deallocating_deinit()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong removeTarget:v0 action:"handleActionFromGestureRecognizer:"];
  }

  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_9119C8()
{
  result = swift_slowAlloc();
  qword_E21768 = result;
  return result;
}

uint64_t UIGestureRecognizerHandling<>.addHandler(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_E1FE98 != -1)
  {
    swift_once();
  }

  v8 = qword_E21768;
  if (objc_getAssociatedObject(v4, qword_E21768))
  {
    sub_ABAB50();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18[0] = v16;
  v18[1] = v17;
  if (*(&v17 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21770, &qword_B38378);
    if (swift_dynamicCast())
    {
      v9 = v15;
      goto LABEL_11;
    }
  }

  else
  {
    sub_8D1218(v18);
  }

  v9 = _swiftEmptyArrayStorage;
LABEL_11:
  *&v18[0] = v9;
  type metadata accessor for GestureRecognizerHandler();
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a1;
  v10[4] = a2;
  v11 = swift_allocObject();
  v12 = v4;

  GestureRecognizerHandler.init<A>(gestureRecognizer:handler:)(v12, sub_911C9C, v10, a3);

  sub_AB9730();
  if (*(&dword_10 + (*&v18[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v18[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_AB97A0();
  }

  sub_AB97F0();
  isa = sub_AB9740().super.isa;

  objc_setAssociatedObject(v12, v8, isa, &dword_0 + 1);

  return v11;
}

uint64_t sub_911C38(void *a1, void (*a2)(void *, id), uint64_t a3, uint64_t a4)
{
  v5[3] = a4;
  v5[4] = &protocol witness table for UIGestureRecognizer;
  v5[0] = a1;
  a2(v5, [a1 state]);
  return __swift_destroy_boxed_opaque_existential_0(v5);
}

void UIGestureRecognizerHandling<>.removeHandler(_:)(uint64_t a1)
{
  v2 = v1;
  if (qword_E1FE98 != -1)
  {
LABEL_25:
    swift_once();
  }

  v4 = qword_E21768;
  if (objc_getAssociatedObject(v2, qword_E21768))
  {
    sub_ABAB50();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16[0] = v14;
  v16[1] = v15;
  if (*(&v15 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21770, &qword_B38378);
    if (swift_dynamicCast())
    {
      v5 = v13;
      goto LABEL_10;
    }
  }

  else
  {
    sub_8D1218(v16);
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_10:
  *&v16[0] = _swiftEmptyArrayStorage;
  if (v5 >> 62)
  {
    v6 = sub_ABB060();
    if (v6)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v6 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
    if (v6)
    {
LABEL_12:
      v11 = v4;
      v12 = v2;
      v7 = 0;
      v2 = (v5 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = sub_ABAE20();
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_22:
            __break(1u);
LABEL_23:
            v4 = v11;
            v2 = v12;
            break;
          }
        }

        else
        {
          if (v7 >= *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            goto LABEL_25;
          }

          v8 = *(v5 + 8 * v7 + 32);

          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_22;
          }
        }

        if (v8 == a1)
        {
        }

        else
        {
          sub_ABAE90();
          sub_ABAED0();
          sub_ABAEE0();
          sub_ABAEA0();
        }

        ++v7;
        if (v9 == v6)
        {
          goto LABEL_23;
        }
      }
    }
  }

  type metadata accessor for GestureRecognizerHandler();
  isa = sub_AB9740().super.isa;

  objc_setAssociatedObject(v2, v4, isa, &dword_0 + 1);
}

uint64_t KeyboardAvoidance.animationOptions.getter()
{
  result = *(v0 + 72) << 16;
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

double KeyboardAvoidance.init(notification:)@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  sub_9130B0(a2, v6);
  v3 = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = v3;
  *(a1 + 64) = v6[4];
  *(a1 + 80) = v7;
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  return result;
}

void KeyboardAvoidance.animate(alongsideKeyboard:completion:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = *(v4 + 72) << 16;
  if (v5 < 0)
  {
    __break(1u);
  }

  else
  {
    v13 = a1;
    v14 = a2;
    v9 = _NSConcreteStackBlock;
    v10 = 1107296256;
    v11 = sub_1B5EB4;
    v12 = &block_descriptor_242;
    v8 = _Block_copy(&v9);

    if (a3)
    {
      v13 = a3;
      v14 = a4;
      v9 = _NSConcreteStackBlock;
      v10 = 1107296256;
      v11 = sub_1811AC;
      v12 = &block_descriptor_3_11;
      a3 = _Block_copy(&v9);
    }

    [objc_opt_self() animateWithDuration:v5 delay:v8 options:a3 animations:*(v4 + 64) completion:0.0];
    _Block_release(a3);
    _Block_release(v8);
  }
}

void KeyboardAvoidance.animate(alongsideKeyboard:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_opt_self();
  v6 = *(v2 + 72) << 16;
  if (v6 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = v5;
    v8 = *(v2 + 64);
    v10[4] = a1;
    v10[5] = a2;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_1B5EB4;
    v10[3] = &block_descriptor_6_6;
    v9 = _Block_copy(v10);

    [v7 animateWithDuration:v6 delay:v9 options:0 animations:v8 completion:0.0];
    _Block_release(v9);
  }
}

Swift::Void __swiftcall KeyboardAvoidance.animateContentScrollView(in:)(UIViewController in)
{
  v3 = swift_allocObject();
  v4 = *(v1 + 48);
  *(v3 + 48) = *(v1 + 32);
  *(v3 + 64) = v4;
  *(v3 + 80) = *(v1 + 64);
  *(v3 + 96) = *(v1 + 80);
  v5 = *(v1 + 16);
  *(v3 + 16) = *v1;
  *(v3 + 32) = v5;
  *(v3 + 104) = in;
  v6 = objc_opt_self();
  v7 = *(v1 + 72) << 16;
  if (v7 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = v6;
    v9 = *(v1 + 64);
    v12[4] = sub_9135B0;
    v12[5] = v3;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_1B5EB4;
    v12[3] = &block_descriptor_9_8;
    v10 = _Block_copy(v12);
    v11 = in.super.super.isa;

    [v8 animateWithDuration:v7 delay:v10 options:0 animations:v9 completion:0.0];
    _Block_release(v10);
  }
}

Swift::Void __swiftcall KeyboardAvoidance.applyAdditionalSafeAreaInsets(to:)(UIViewController to)
{
  if ([(objc_class *)to.super.super.isa isViewLoaded])
  {
    v3 = [(objc_class *)to.super.super.isa view];
    if (v3)
    {
      v4 = v3;
      [v3 convertRect:0 fromView:{v1[4], v1[5], v1[6], v1[7]}];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v13 = [(objc_class *)to.super.super.isa view];
      if (v13)
      {
        v14 = v13;
        [v13 safeAreaInsets];
        v16 = v15;

        [(objc_class *)to.super.super.isa additionalSafeAreaInsets];
        v18 = v16 - v17;
        [v4 frame];
        Height = CGRectGetHeight(v23);
        v24.origin.x = v6;
        v24.origin.y = v8;
        v24.size.width = v10;
        v24.size.height = v12;
        MinY = CGRectGetMinY(v24);

        if (Height - MinY - v18 < 0.0)
        {
          v21 = 0.0;
        }

        else
        {
          v21 = Height - MinY - v18;
        }

        [(objc_class *)to.super.super.isa setAdditionalSafeAreaInsets:0.0, 0.0, v21, 0.0];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void KeyboardAvoidance.additionalSafeAreaInsets(for:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = 0.0;
  if (![a1 isViewLoaded] || (v6 = objc_msgSend(a1, "view")) == 0)
  {
    v24 = 1;
LABEL_8:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = v5;
    *(a2 + 24) = 0;
    *(a2 + 32) = v24;
    return;
  }

  v7 = v6;
  [v6 convertRect:0 fromView:{v2[4], v2[5], v2[6], v2[7]}];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [a1 view];
  if (v16)
  {
    v17 = v16;
    [v16 safeAreaInsets];
    v19 = v18;

    [a1 additionalSafeAreaInsets];
    v21 = v19 - v20;
    [v7 frame];
    Height = CGRectGetHeight(v25);
    v26.origin.x = v9;
    v26.origin.y = v11;
    v26.size.width = v13;
    v26.size.height = v15;
    MinY = CGRectGetMinY(v26);

    v24 = 0;
    if (Height - MinY - v21 < 0.0)
    {
      v5 = 0.0;
    }

    else
    {
      v5 = Height - MinY - v21;
    }

    goto LABEL_8;
  }

  __break(1u);
}

void KeyboardAvoidance.recommendedScrollRect(in:preferredVisibleRect:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = swift_allocObject();
  sub_913870(a1, v54);
  if (v55)
  {
    swift_deallocUninitializedObject();
LABEL_12:
    v36 = 0uLL;
    v37 = 1;
    width = 0.0;
    v38 = 0.0;
    goto LABEL_13;
  }

  v8 = v54[1];
  *(v7 + 16) = v54[0];
  *(v7 + 32) = v8;
  v9 = [a1 contentScrollViewForEdge:1];
  if (!v9)
  {
    goto LABEL_11;
  }

  v10 = v9;
  v11 = [a1 view];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 window];

    if (!v13 || (v14 = [v13 windowScene], v13, !v14) || (v15 = objc_msgSend(v14, "screen"), v14, !v15))
    {

      goto LABEL_12;
    }

    *(v7 + 16) = 0;
    v16 = swift_allocObject();
    [v10 bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    *(v16 + 16) = v17;
    *(v16 + 24) = v19;
    *(v16 + 32) = v21;
    v23 = [v15 coordinateSpace];
    v24 = v3[4];
    v25 = v3[5];
    v26 = v3[6];
    v27 = v3[7];
    v28 = v10;
    [v23 convertRect:v28 toCoordinateSpace:{v24, v25, v26, v27}];
    v30 = v29;

    swift_unknownObjectRelease();
    v31 = v30 - v20;
    *(v16 + 40) = v30 - v20;
    v56.origin.x = v18;
    v56.origin.y = v20;
    v56.size.width = v22;
    v56.size.height = v30 - v20;
    Height = CGRectGetHeight(v56);
    if (CGRectGetHeight(*(v7 + 16)) > Height)
    {
      v51 = *(v7 + 16);
      width = *(v7 + 32);
      v34 = *(v7 + 40);
      v57.origin.x = v18;
      v57.origin.y = v20;
      v57.size.width = v22;
      v57.size.height = v31;
      v35 = CGRectGetHeight(v57);

      v36 = v51;
      v37 = 0;
      v38 = v34 - v35;
LABEL_13:
      *a3 = v36;
      *(a3 + 16) = width;
      *(a3 + 24) = v38;
      *(a3 + 32) = v37;
      return;
    }

    if ((*(a2 + 32) & 1) == 0)
    {
      v63.size.width = *(a2 + 16);
      v63.size.height = *(a2 + 24);
      v63.origin.x = *a2;
      v43 = *(a2 + 8);
      v63.origin.y = v43;
      v59 = CGRectUnion(*(v7 + 16), v63);
      y = v59.origin.y;
      x = v59.origin.x;
      width = v59.size.width;
      v38 = v59.size.height;
      v59.origin.x = v18;
      v59.origin.y = v20;
      v59.size.width = v22;
      v59.size.height = v31;
      v44 = CGRectGetHeight(v59);
      v60.origin.y = y;
      v60.origin.x = x;
      v60.size.width = width;
      v60.size.height = v38;
      if (CGRectGetHeight(v60) <= v44)
      {
        v61.origin.x = v18;
        v61.origin.y = v20;
        v61.size.width = v22;
        v61.size.height = v31;
        v45 = CGRectGetWidth(v61);
        v62.origin.y = y;
        v62.origin.x = x;
        v62.size.width = width;
        v62.size.height = v38;
        if (CGRectGetWidth(v62) <= v45)
        {

          v37 = 0;
          *&v36 = x;
          goto LABEL_22;
        }
      }

      v42 = v43;
LABEL_21:
      v46 = sub_913A20(v7, v16, v28, v42);
      y = v47;
      v53 = v46;
      width = v48;
      v38 = v49;

      *&v36 = v53;
      v37 = 0;
LABEL_22:
      *(&v36 + 1) = y;
      goto LABEL_13;
    }

    [v28 contentOffset];
    v40 = v39;
    if (v39 > CGRectGetMinY(*(v7 + 16)) || (v58.origin.x = v18, v58.origin.y = v20, v58.size.width = v22, v58.size.height = v31, v41 = v40 + CGRectGetHeight(v58), CGRectGetMaxY(*(v7 + 16)) > v41))
    {
      v42 = v40;
      goto LABEL_21;
    }

LABEL_11:

    goto LABEL_12;
  }

  __break(1u);
}

uint64_t static KeyboardAvoidance.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if (CGRectEqualToRect(*a1, *a2) && CGRectEqualToRect(*(a1 + 32), *(a2 + 32)) && *(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72))
  {
    v4 = *(a1 + 80) ^ *(a2 + 80) ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_912AF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v16 = *(a1 + 64);
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v15 = *(a2 + 64);
  v12 = *(a2 + 72);
  v13 = *(a2 + 80);
  result = CGRectEqualToRect(*a1, *a2);
  if (result)
  {
    v17.origin.x = v2;
    v17.origin.y = v3;
    v17.size.width = v4;
    v17.size.height = v5;
    v18.origin.x = v8;
    v18.origin.y = v9;
    v18.size.width = v10;
    v18.size.height = v11;
    result = CGRectEqualToRect(v17, v18);
    if (result)
    {
      result = 0;
      if (v16 == v15)
      {
        if (v6 == v12)
        {
          return v7 ^ v13 ^ 1u;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

void *KeyboardObserver.init(options:update:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(a1 + 16);
  if (!v5)
  {
    return v4;
  }

  sub_ABAEC0();
  v6 = v4 + 56;
  v7 = sub_ABABC0();
  v8 = *(v4 + 36);
  result = objc_opt_self();
  v23 = result;
  v24 = v4;
  v22 = v4 + 56;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v4 + 32))
  {
    if ((*(v6 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_20;
    }

    v10 = *(*(v4 + 48) + v7);
    v26 = v5;
    v27 = v8;
    if (v10 > 2)
    {
      v11 = UIKeyboardDidHideNotification;
      if (v10 != 3)
      {
        v11 = UIKeyboardWillChangeFrameNotification;
        if (v10 != 4)
        {
          v11 = UIKeyboardDidChangeFrameNotification;
        }
      }
    }

    else
    {
      v11 = UIKeyboardWillShowNotification;
      if (v10)
      {
        v11 = UIKeyboardDidShowNotification;
        if (v10 != 1)
        {
          v11 = UIKeyboardWillHideNotification;
        }
      }
    }

    v12 = v11;
    v13 = swift_allocObject();
    *(v13 + 16) = a2;
    *(v13 + 24) = a3;
    *(v13 + 32) = v10;
    type metadata accessor for NotificationObserver();
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v14 + 16) = v12;
    swift_unknownObjectWeakAssign();
    *(v14 + 32) = 1;
    *(v14 + 48) = sub_913B88;
    *(v14 + 56) = v13;
    v15 = a3;

    v16 = v12;

    v17 = [v23 defaultCenter];
    *(v14 + 40) = v17;
    v18 = *(v14 + 16);
    Strong = swift_unknownObjectWeakLoadStrong();
    v20 = v17;

    v21 = v18;
    [v20 addObserver:v14 selector:"handleNotification:" name:v21 object:Strong];

    swift_unknownObjectRelease();
    sub_ABAE90();
    sub_ABAED0();
    sub_ABAEE0();
    result = sub_ABAEA0();
    v4 = v24;
    if (v7 >= -(-1 << *(v24 + 32)))
    {
      goto LABEL_21;
    }

    v6 = v22;
    if ((*(v22 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v27 != *(v24 + 36))
    {
      goto LABEL_23;
    }

    result = sub_ABABE0();
    v7 = result;
    v8 = *(v24 + 36);
    v5 = v26 - 1;
    a3 = v15;
    if (v26 == 1)
    {

      return v4;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

void sub_912F8C(uint64_t a1, uint64_t (*a2)(uint64_t, _OWORD *), uint64_t a3, uint64_t a4)
{
  sub_AB2BD0();
  v7 = __chkstk_darwin();
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, a1, v7);
  sub_9130B0(v9, v12);
  if (v13 != 2)
  {
    v14[3] = v12[3];
    v14[4] = v12[4];
    v14[1] = v12[1];
    v14[2] = v12[2];
    v14[0] = v12[0];
    v15 = v13;
    a2(a4, v14);
  }
}

void sub_9130B0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_AB2BC0();
  if (!v4)
  {
    goto LABEL_19;
  }

  v5 = v4;
  v44 = sub_AB92A0();
  sub_ABAD10();
  if (!*(v5 + 16))
  {
    goto LABEL_18;
  }

  v6 = sub_2EC004(v49);
  if ((v7 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_808B0(*(v5 + 56) + 32 * v6, v50);
  sub_8085C(v49);
  sub_13C80(0, &qword_E1FEB0, NSValue_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  [v44 CGRectValue];
  v42 = v9;
  v43 = v8;
  v40 = v10;
  v41 = v11;

  v45 = sub_AB92A0();
  sub_ABAD10();
  if (!*(v5 + 16))
  {
    goto LABEL_18;
  }

  v12 = sub_2EC004(v49);
  if ((v13 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_808B0(*(v5 + 56) + 32 * v12, v50);
  sub_8085C(v49);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  [v45 CGRectValue];
  v38 = v15;
  v39 = v14;
  v36 = v16;
  v37 = v17;

  v46 = sub_AB92A0();
  sub_ABAD10();
  if (!*(v5 + 16))
  {
    goto LABEL_18;
  }

  v18 = sub_2EC004(v49);
  if ((v19 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_808B0(*(v5 + 56) + 32 * v18, v50);
  sub_8085C(v49);
  sub_13C80(0, &qword_E209D8, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  [v46 floatValue];
  v21 = v20;

  v47 = sub_AB92A0();
  sub_ABAD10();
  if (!*(v5 + 16))
  {
    goto LABEL_18;
  }

  v22 = sub_2EC004(v49);
  if ((v23 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_808B0(*(v5 + 56) + 32 * v22, v50);
  sub_8085C(v49);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_22:
    v35 = sub_AB2BD0();
    (*(*(v35 - 8) + 8))(a1, v35);

    goto LABEL_20;
  }

  v24 = [v47 integerValue];

  v48 = sub_AB92A0();
  sub_ABAD10();
  if (!*(v5 + 16) || (v25 = sub_2EC004(v49), (v26 & 1) == 0))
  {
LABEL_18:

    sub_8085C(v49);
    goto LABEL_19;
  }

  sub_808B0(*(v5 + 56) + 32 * v25, v50);
  sub_8085C(v49);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    v34 = sub_AB2BD0();
    (*(*(v34 - 8) + 8))(a1, v34);
LABEL_20:
    v24 = 0;
    v30 = 0uLL;
    v27 = 2;
    v29 = 0.0;
    v31 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
    goto LABEL_21;
  }

  v27 = [v48 BOOLValue];

  v28 = sub_AB2BD0();
  (*(*(v28 - 8) + 8))(a1, v28);
  v29 = v21;
  *&v30 = v43;
  *(&v30 + 1) = v40;
  *&v31 = v42;
  *(&v31 + 1) = v41;
  *&v32 = v39;
  *(&v32 + 1) = v36;
  *&v33 = v38;
  *(&v33 + 1) = v37;
LABEL_21:
  *a2 = v30;
  *(a2 + 16) = v31;
  *(a2 + 32) = v32;
  *(a2 + 48) = v33;
  *(a2 + 64) = v29;
  *(a2 + 72) = v24;
  *(a2 + 80) = v27;
}

double block_copy_helper_242(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_913578()
{

  return swift_deallocObject();
}

void sub_9135B0()
{
  v1 = *(v0 + 104);
  KeyboardAvoidance.applyAdditionalSafeAreaInsets(to:)(v1);

  sub_913600(v1);
}

void sub_913600(void *a1)
{
  v1 = [a1 contentScrollView];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 firstResponder];
    if (v3)
    {
      v30 = v3;
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4)
      {
        v5 = v4;
        v6 = v30;
        v7 = [v5 superview];
        if (v7)
        {
          v8 = v7;
          sub_13C80(0, &qword_E21208, UIView_ptr);
          while (1)
          {
            v9 = v2;
            v10 = v8;
            v11 = sub_ABA790();

            if (v11)
            {
              break;
            }

            objc_opt_self();
            if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
            {
              v10 = v10;

              v5 = v10;
              break;
            }

            v8 = [v10 superview];

            if (!v8)
            {
              goto LABEL_10;
            }
          }
        }

        else
        {
LABEL_10:
          v10 = 0;
        }

        [v5 frame];
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v21 = [v5 superview];
        [v2 convertRect:v21 fromView:{v14, v16, v18, v20}];
        v23 = v22;
        v25 = v24;
        v27 = v26;
        v29 = v28;

        [v2 scrollRectToVisible:0 animated:{v23, v25, v27, v29}];
      }

      v12 = v30;
    }

    else
    {
      v12 = v2;
    }
  }
}

void sub_913870(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = 1;
  v5 = [a1 contentScrollViewForEdge:1];
  v6 = 0uLL;
  if (!v5)
  {
    v28 = 0uLL;
    goto LABEL_11;
  }

  v7 = v5;
  v8 = [v5 firstResponder];
  if (!v8)
  {

    goto LABEL_10;
  }

  v9 = v8;
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {
LABEL_8:

LABEL_10:
    v4 = 1;
    v28 = 0uLL;
    v6 = 0uLL;
    goto LABEL_11;
  }

  v11 = v10;
  v12 = [a1 view];
  if (v12)
  {
    v13 = v12;
    v14 = [v11 isDescendantOfView:v12];

    if (v14)
    {
      [v11 frame];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v23 = [v11 superview];
      [v7 convertRect:v23 fromView:{v16, v18, v20, v22}];
      v30 = v24;
      v31 = v25;
      v29 = v26;
      v32 = v27;

      *&v28 = v29;
      *&v6 = v30;
      v4 = 0;
      *(&v6 + 1) = v31;
      *(&v28 + 1) = v32;
LABEL_11:
      *a2 = v6;
      *(a2 + 16) = v28;
      *(a2 + 32) = v4;
      return;
    }

    goto LABEL_8;
  }

  __break(1u);
}

double sub_913A20(uint64_t a1, uint64_t a2, void *a3, CGFloat a4)
{
  swift_beginAccess();
  v8 = *(a1 + 16);
  swift_beginAccess();
  CGRectGetHeight(*(a2 + 16));
  swift_beginAccess();
  CGRectGetHeight(*(a1 + 16));
  swift_beginAccess();
  if (CGRectGetMinY(*(a1 + 16)) > a4)
  {
    [a3 adjustedContentInset];
    swift_beginAccess();
    CGRectGetMaxY(*(a1 + 16));
  }

  return v8;
}

uint64_t sub_913B50()
{

  return swift_deallocObject();
}

unint64_t sub_913B98()
{
  result = qword_E21840;
  if (!qword_E21840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E21840);
  }

  return result;
}

__n128 __swift_memcpy81_8_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_913C10(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 81))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 80);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_913C64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = a2 + 1;
    }
  }

  return result;
}

uint64_t Signpost.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_AB4B00();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

id Signpost.log.getter()
{
  v1 = *(v0 + *(type metadata accessor for Signpost(0) + 20));

  return v1;
}

uint64_t type metadata accessor for Signpost(uint64_t a1)
{
  result = qword_E218A8;
  if (!qword_E218A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Signpost.init(name:object:log:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v27 = a3;
  v25 = a1;
  v26 = a2;
  v24 = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21848, &qword_B38518);
  __chkstk_darwin();
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v24 - v9;
  v11 = sub_AB4B00();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v24 - v15;
  v17 = a5;
  swift_unknownObjectRetain();
  sub_AB4AC0();
  (*(v12 + 16))(v10, v16, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  sub_91430C(v10, v8);
  v18 = *(v12 + 48);
  if (v18(v8, 1, v11) == 1)
  {
    v19 = v17;
    sub_AB4AD0();
    swift_unknownObjectRelease();
    sub_91437C(v10);
    (*(v12 + 8))(v16, v11);
    if (v18(v8, 1, v11) != 1)
    {
      sub_91437C(v8);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    sub_91437C(v10);
    (*(v12 + 8))(v16, v11);
    (*(v12 + 32))(v14, v8, v11);
  }

  v20 = v24;
  (*(v12 + 32))(v24, v14, v11);
  result = type metadata accessor for Signpost(0);
  *(v20 + *(result + 20)) = v17;
  v22 = v20 + *(result + 24);
  v23 = v26;
  *v22 = v25;
  *(v22 + 8) = v23;
  *(v22 + 16) = v27;
  return result;
}

uint64_t Signpost.init(name:id:log:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v22 = a3;
  v21 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21848, &qword_B38518);
  __chkstk_darwin();
  v11 = &v21 - v10;
  v12 = sub_AB4B00();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_91430C(a4, v11);
  v16 = *(v13 + 48);
  if (v16(v11, 1, v12) == 1)
  {
    v17 = a5;
    sub_AB4AD0();
    sub_91437C(a4);
    if (v16(v11, 1, v12) != 1)
    {
      sub_91437C(v11);
    }
  }

  else
  {
    sub_91437C(a4);
    (*(v13 + 32))(v15, v11, v12);
  }

  (*(v13 + 32))(a6, v15, v12);
  result = type metadata accessor for Signpost(0);
  *(a6 + *(result + 20)) = a5;
  v19 = a6 + *(result + 24);
  v20 = v21;
  *v19 = a1;
  *(v19 + 8) = v20;
  *(v19 + 16) = v22;
  return result;
}

uint64_t sub_91430C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21848, &qword_B38518);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_91437C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21848, &qword_B38518);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_91445C(uint64_t a1, uint64_t (*a2)(void))
{
  a2();
  type metadata accessor for Signpost(0);

  return sub_AB4AB0();
}

uint64_t sub_9144E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t (*a6)(void))
{
  a6();
  type metadata accessor for Signpost(0);
  return sub_AB4AA0();
}

uint64_t static Signpost.interval<A>(name:log:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X3>, uint64_t (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v34 = a6;
  v35 = a5;
  v36 = a4;
  v32 = a3;
  v30 = a1;
  v31 = a2;
  v33 = a7;
  v7 = sub_AB4B00();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21848, &qword_B38518);
  __chkstk_darwin();
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v29 - v13;
  v15 = type metadata accessor for Signpost(0);
  __chkstk_darwin();
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin();
  v20 = &v29 - v19;
  (*(v8 + 56))(v14, 1, 1, v7, v18);
  sub_91430C(v14, v12);
  v21 = *(v8 + 48);
  if (v21(v12, 1, v7) == 1)
  {
    v22 = v36;
    sub_AB4AD0();
    sub_91437C(v14);
    if (v21(v12, 1, v7) != 1)
    {
      sub_91437C(v12);
    }
  }

  else
  {
    sub_91437C(v14);
    (*(v8 + 32))(v10, v12, v7);
  }

  (*(v8 + 32))(v17, v10, v7);
  v23 = v36;
  *&v17[*(v15 + 20)] = v36;
  v24 = &v17[*(v15 + 24)];
  v25 = v31;
  *v24 = v30;
  *(v24 + 1) = v25;
  v24[16] = v32;
  sub_5E810C(v17, v20);
  v26 = v23;
  sub_ABA230();
  v27 = sub_AB4AB0();
  v35(v27);
  sub_ABA220();
  sub_AB4AB0();
  return sub_5E7F5C(v20);
}

uint64_t sub_9148C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_AB4B00();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_914990(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_AB4B00();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_914A48(uint64_t a1)
{
  result = sub_AB4B00();
  if (v2 <= 0x3F)
  {
    result = sub_914AD4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_914AD4()
{
  result = qword_E218B8;
  if (!qword_E218B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_E218B8);
  }

  return result;
}

void UnfairLock.locked<A>(_:)(void (*a1)(void))
{
  os_unfair_lock_lock(*(v1 + 16));
  a1();
  os_unfair_lock_unlock(*(v1 + 16));
}

uint64_t UnfairLock.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = swift_slowAlloc();
  *(v0 + 16) = v1;
  *v1 = 0;
  return v0;
}

uint64_t UnfairLock.init()()
{
  v1 = swift_slowAlloc();
  *(v0 + 16) = v1;
  *v1 = 0;
  return v0;
}

uint64_t UnfairLock.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t WeakArray.endIndex.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for WeakArray.WeakBox(0, a2, a2, a4);

  return sub_AB9850();
}

uint64_t WeakArray.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for WeakArray.WeakBox(0, a3, a3, a4);
  sub_AB9880();
  Strong = swift_unknownObjectWeakLoadStrong();
  (*(*(v4 - 8) + 8))(v7, v4);
  return Strong;
}

{
  type metadata accessor for WeakArray.WeakBox(255, a3, a3, a4);
  sub_AB9870();
  swift_getWitnessTable();
  sub_AB9C50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E20998, &unk_B37050);
  v8 = sub_AB9DE0();
  result = 0;
  if (v8)
  {
    return WeakArray.subscript.getter(a1, a2, a3, v7);
  }

  return result;
}

Swift::Int __swiftcall WeakArray.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t WeakArray.init(_:)(uint64_t a1, uint64_t a2)
{
  v11[5] = a1;
  v11[2] = a2;
  v3 = sub_AB9870();
  v5 = type metadata accessor for WeakArray.WeakBox(0, a2, a2, v4);
  WitnessTable = swift_getWitnessTable();
  sub_8DB18C(sub_914F48, v11, v3, v5, &type metadata for Never, WitnessTable, &protocol witness table for Never, v7);
  v9 = v8;

  return v9;
}

void sub_914F48()
{
  swift_unknownObjectRetain();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
}

uint64_t WeakArray.append(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  swift_unknownObjectRetain();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  type metadata accessor for WeakArray.WeakBox(255, v2, v2, v3);
  sub_AB9870();
  return sub_AB9820();
}

uint64_t WeakArray.remove(at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for WeakArray.WeakBox(255, *(a2 + 16), *(a2 + 16), a4);
  sub_AB9870();
  sub_AB9840();
  Strong = swift_unknownObjectWeakLoadStrong();
  (*(*(v4 - 8) + 8))(v7, v4);
  return Strong;
}

uint64_t WeakArray.remove(_:)(uint64_t a1, uint64_t a2)
{
  WeakArray.reap()();
  type metadata accessor for WeakArray.WeakBox(255, *(a2 + 16), *(a2 + 16), v3);
  sub_AB9870();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_AB9DC0();
}

Swift::Void __swiftcall WeakArray.reap()()
{
  type metadata accessor for WeakArray.WeakBox(255, *(v0 + 16), *(v0 + 16), v1);
  sub_AB9870();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_AB9DC0();
}

uint64_t sub_915238(uint64_t a1)
{
  v2 = *(v1 + 24);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_unknownObjectRelease();
    return v4 == v2;
  }

  return result;
}

BOOL sub_915280(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_unknownObjectRelease();
  }

  return Strong == 0;
}

uint64_t WeakArray.allElements.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for WeakArray(0, a2, a3, a4);
  swift_getWitnessTable();
  return sub_AB95C0();
}

uint64_t sub_9153E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  result = WeakArray.endIndex.getter(*v4, *(a1 + 16), a3, a4);
  *a2 = result;
  return result;
}

uint64_t (*sub_91541C(uint64_t **a1, uint64_t *a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x30uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = sub_9154F4(v7, *a2, *v3, *(a3 + 16));
  v8[4] = v10;
  v8[5] = v9;
  return sub_9154AC;
}

void sub_9154AC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1);

  free(v1);
}

void *sub_9155F4@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_91560C(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

uint64_t sub_91564C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return Collection.underestimatedCount.getter(a1, WitnessTable);
}

uint64_t sub_9156A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v4 = sub_915840(v1, a1, WitnessTable);

  return v4;
}

uint64_t sub_9156FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_915738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_915774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_AB9170();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_AB9DF0();
  result = sub_AB9170();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_915844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t), __n128 a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_AB9170();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v14 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v14 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t WeakValuesDictionary.__allocating_init()()
{
  v0 = swift_allocObject();
  WeakValuesDictionary.init()();
  return v0;
}

void *WeakValuesDictionary.init()()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = sub_8C8F2C();
  swift_getTupleTypeMetadata2();
  v4 = sub_AB97C0();
  v5 = sub_8E116C(v4, v2, v3, *(v1 + 96));

  v0[2] = v5;
  return v0;
}

uint64_t WeakValuesDictionary.subscript.getter(uint64_t a1)
{
  swift_beginAccess();
  sub_8C8F2C();

  sub_AB90A0();

  if (v5[0])
  {
    if ([v5[0] weakObjectValue])
    {
      sub_ABAB50();

      swift_unknownObjectRelease();
    }

    else
    {

      v3 = 0u;
      v4 = 0u;
    }

    *v5 = v3;
    v6 = v4;
    if (*(&v4 + 1))
    {
      if (swift_dynamicCast())
      {
        return v2;
      }
    }

    else
    {
      sub_8D1218(v5);
    }
  }

  return 0;
}

void WeakValuesDictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  v8 = __chkstk_darwin();
  if (v9)
  {
    (*(v6 + 16))(&v12 - v7, a2, v5, v8);
    v12 = a1;
    swift_unknownObjectRetain();
    v10 = sub_ABB3A0();
    v11 = [objc_opt_self() valueWithWeakObject:v10];
    swift_unknownObjectRelease();
    v13 = v11;
    swift_beginAccess();
    sub_8C8F2C();
    sub_AB9080();
    sub_AB90B0();
    swift_endAccess();
    swift_unknownObjectRelease_n();
    (*(v6 + 8))(a2, v5);
  }

  else
  {
    swift_beginAccess();
    sub_8C8F2C();
    sub_AB9080();
    sub_AB9010();
    swift_endAccess();
    (*(v6 + 8))(a2, v5);
  }
}

void (*WeakValuesDictionary.subscript.modify(uint64_t **a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  v5[1] = v2;
  v7 = *(*v2 + 80);
  v5[2] = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  v5[3] = v8;
  v10 = *(v8 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v5[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v8 + 64));
    v11 = malloc(v10);
  }

  v6[5] = v11;
  (*(v9 + 16))();
  *v6 = WeakValuesDictionary.subscript.getter(a2);
  return sub_915F14;
}

void sub_915F14(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    (*(v2[3] + 32))((*a1)[4], v4, v2[2]);
    v5 = swift_unknownObjectRetain();
    WeakValuesDictionary.subscript.setter(v5, v3);
    swift_unknownObjectRelease();
  }

  else
  {
    WeakValuesDictionary.subscript.setter(**a1, v4);
  }

  free(v4);
  free(v3);

  free(v2);
}

Swift::Void __swiftcall WeakValuesDictionary.compact()()
{
  v68 = *v0;
  v1 = *(v68 + 80);
  v59 = *(v1 - 8);
  __chkstk_darwin();
  v57 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = &v54 - v3;
  v55 = v5;
  __chkstk_darwin();
  v69 = &v54 - v6;
  v60 = sub_8C8F2C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v65 = sub_ABA9C0();
  v8 = *(v65 - 8);
  __chkstk_darwin();
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v54 - v11;
  v78 = sub_AB97C0();
  swift_beginAccess();
  v58 = v0;
  v13 = v0[2];
  if ((v13 & 0xC000000000000001) != 0)
  {
    v14 = sub_ABAF90();
    v15 = 0;
    v16 = 0;
    v70 = 0;
    v17 = v14 | 0x8000000000000000;
  }

  else
  {
    v18 = -1 << *(v13 + 32);
    v16 = ~v18;
    v15 = v13 + 64;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v70 = v20 & *(v13 + 64);
    v17 = v13;
  }

  v72 = (v59 + 32);
  v64 = TupleTypeMetadata2 - 8;
  v56 = v16;
  v21 = (v16 + 64) >> 6;
  v73 = (v59 + 16);
  v63 = (v8 + 32);
  v71 = (v59 + 8);

  v22 = 0;
  v62 = v10;
  v61 = v12;
  v66 = v15;
  v67 = v17;
  v23 = v70;
  while (1)
  {
    v70 = v23;
    if ((v17 & 0x8000000000000000) != 0)
    {
      if (sub_ABAFC0())
      {
        v40 = v39;
        v41 = v69;
        sub_ABB380();
        swift_unknownObjectRelease();
        *&v75 = v40;
        swift_dynamicCast();
        v42 = *&v77[0];
        v43 = *(TupleTypeMetadata2 + 48);
        v44 = v41;
        v10 = v62;
        (*v72)(v62, v44, v1);
        *&v10[v43] = v42;
        v37 = *(TupleTypeMetadata2 - 8);
        (*(v37 + 56))(v10, 0, 1, TupleTypeMetadata2);
      }

      else
      {
        v37 = *(TupleTypeMetadata2 - 8);
        (*(v37 + 56))(v10, 1, 1, TupleTypeMetadata2);
      }

      v27 = v22;
      v74 = v70;
      v12 = v61;
    }

    else
    {
      v24 = v23;
      v25 = v22;
      if (v23)
      {
LABEL_21:
        v74 = (v24 - 1) & v24;
        v29 = __clz(__rbit64(v24)) | (v25 << 6);
        v30 = v4;
        v31 = v59;
        v32 = v69;
        (*(v59 + 16))(v69, *(v17 + 48) + *(v59 + 72) * v29, v1);
        v33 = *(*(v17 + 56) + 8 * v29);
        v34 = *(TupleTypeMetadata2 + 48);
        v35 = *(v31 + 32);
        v4 = v30;
        v10 = v62;
        v36 = v32;
        v12 = v61;
        v35(v62, v36, v1);
        *&v10[v34] = v33;
        v37 = *(TupleTypeMetadata2 - 8);
        (*(v37 + 56))(v10, 0, 1, TupleTypeMetadata2);
        v38 = v33;
        v27 = v25;
      }

      else
      {
        v26 = v21 <= v22 + 1 ? v22 + 1 : v21;
        v27 = v26 - 1;
        v28 = v22;
        while (1)
        {
          v25 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            __break(1u);
LABEL_46:
            __break(1u);
            return;
          }

          if (v25 >= v21)
          {
            break;
          }

          v24 = *(v15 + 8 * v25);
          ++v28;
          if (v24)
          {
            v17 = v67;
            goto LABEL_21;
          }
        }

        v37 = *(TupleTypeMetadata2 - 8);
        (*(v37 + 56))(v10, 1, 1, TupleTypeMetadata2);
        v74 = 0;
      }
    }

    (*v63)(v12, v10, v65);
    if ((*(v37 + 48))(v12, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v45 = *&v12[*(TupleTypeMetadata2 + 48)];
    (*v72)(v4, v12, v1);
    if ([v45 weakObjectValue])
    {
      sub_ABAB50();
      swift_unknownObjectRelease();
    }

    else
    {
      v75 = 0u;
      v76 = 0u;
    }

    v77[0] = v75;
    v77[1] = v76;
    if (!*(&v76 + 1))
    {
      sub_8D1218(v77);
LABEL_9:
      (*v73)(v69, v4, v1);
      sub_AB9870();
      sub_AB9820();

      (*v71)(v4, v1);
      goto LABEL_10;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_9;
    }

    (*v71)(v4, v1);

    swift_unknownObjectRelease();
LABEL_10:
    v22 = v27;
    v23 = v74;
    v15 = v66;
    v17 = v67;
  }

  sub_2BB88(v67);
  v46 = v78;
  v47 = sub_AB9850();
  v48 = v59;
  v49 = v57;
  if (!v47)
  {
    goto LABEL_44;
  }

  v50 = 0;
  while (2)
  {
    v51 = sub_AB97E0();
    sub_AB9790();
    if (v51)
    {
      (*(v48 + 16))(v49, v46 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v50, v1);
      v52 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        break;
      }

      goto LABEL_38;
    }

    v53 = sub_ABAE10();
    if (v55 != 8)
    {
      goto LABEL_46;
    }

    *&v77[0] = v53;
    (*v73)(v49, v77, v1);
    swift_unknownObjectRelease();
    v52 = v50 + 1;
    if (!__OFADD__(v50, 1))
    {
LABEL_38:
      swift_beginAccess();
      sub_AB9080();
      sub_AB9010();
      swift_endAccess();

      (*v71)(v49, v1);
      ++v50;
      if (v52 == sub_AB9850())
      {
        goto LABEL_44;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_44:
}

id sub_917450()
{
  result = sub_917470();
  qword_E74400 = result;
  return result;
}

id sub_917470()
{
  v0 = sub_AB31C0();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v52 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E28, &unk_B38A80) - 8);
  __chkstk_darwin();
  v53 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v48 - v5;
  __chkstk_darwin();
  v8 = &v48 - v7;
  __chkstk_darwin();
  v55 = &v48 - v9;
  __chkstk_darwin();
  v11 = &v48 - v10;
  v54 = sub_9190B4(_swiftEmptyArrayStorage);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E30, &qword_B396F0);
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v56 = *(v3 + 72);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_AF8820;
  v58 = v12;
  v51 = v13;
  v14 = v13 + v12;
  v15 = objc_opt_self();
  v16 = [v15 mainBundle];
  v17 = [v16 resourceURL];

  if (v17)
  {
    sub_AB3150();

    v18 = *(v1 + 56);
    v19 = v11;
    v20 = 0;
  }

  else
  {
    v18 = *(v1 + 56);
    v19 = v11;
    v20 = 1;
  }

  v57 = v18;
  v18(v19, v20, 1, v0);
  sub_918DE4(v11, v14);
  type metadata accessor for BundleFinder();
  v21 = [v15 bundleForClass:swift_getObjCClassFromMetadata()];
  v22 = [v21 resourceURL];

  if (v22)
  {
    v23 = v55;
    sub_AB3150();

    v24 = 0;
  }

  else
  {
    v24 = 1;
    v23 = v55;
  }

  v25 = (v1 + 56);
  v26 = v57;
  v57(v23, v24, 1, v0);
  v49 = v1;
  v27 = v56;
  sub_918DE4(v23, v14 + v56);
  v28 = [v15 mainBundle];
  v29 = [v28 bundleURL];

  sub_AB3150();
  v55 = v25;
  v26(v14 + 2 * v27, 0, 1, v0);
  v59 = v54;
  sub_923698(v51);
  v30 = v59;
  v31 = v59[2];
  v32 = v53;
  if (v31)
  {
    v33 = 0;
    v34 = v58 + v59;
    v58 = (v49 + 6);
    v54 = (v49 + 1);
    v49 += 4;
    v50 = "F0E546A8DF70B34912BundleFinder";
    v51 = v31;
    while (v33 < v30[2])
    {
      sub_918E54(v34, v6);
      v35 = *v58;
      if ((*v58)(v6, 1, v0) == 1)
      {
        sub_918EC4(v6);
        v36 = 1;
      }

      else
      {
        sub_AB3120();
        (*v54)(v6, v0);
        v36 = 0;
      }

      v57(v8, v36, 1, v0);
      sub_918E54(v8, v32);
      if (v35(v32, 1, v0) == 1)
      {
        sub_918EC4(v8);
      }

      else
      {
        v37 = v30;
        v38 = v8;
        v39 = v6;
        v40 = v52;
        (*v49)(v52, v32, v0);
        v41 = objc_allocWithZone(NSBundle);
        sub_AB30F0(v42);
        v44 = v43;
        v45 = [v41 initWithURL:v43];

        v32 = v53;
        v46 = v40;
        v6 = v39;
        v8 = v38;
        v30 = v37;
        v31 = v51;
        (*v54)(v46, v0);
        sub_918EC4(v8);
        if (v45)
        {

          return v45;
        }
      }

      ++v33;
      v34 += v56;
      if (v31 == v33)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

LABEL_19:
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

uint64_t variable initialization expression of LyricsOptionsManager.observers()
{
  v0 = type metadata accessor for LyricsOptionsManager.Observer();

  return WeakArray.init(_:)(_swiftEmptyArrayStorage, v0);
}

void variable initialization expression of SyncedLyricsViewController.Specs.selectedLinePosition(uint64_t a1@<X8>)
{
  *a1 = 0x4028000000000000;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
}

unint64_t sub_917BA4()
{
  result = qword_E23D60;
  if (!qword_E23D60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_E23D60);
  }

  return result;
}

id sub_917CAC(double *a1, double a2)
{
  v2 = [objc_opt_self() systemFontOfSize:a2 weight:*a1];

  return v2;
}

id variable initialization expression of SyncedLyricsViewController.Specs.automaticallyCreatedDisclaimerFont()
{
  v0 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline];

  return v0;
}

id variable initialization expression of SyncedLyricsViewController.Specs.selectedUpcomingTextColor()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v1 colorWithAlphaComponent:0.35];

  v3 = [v0 labelColor];
  v4 = [v3 colorWithAlphaComponent:0.85];

  v5 = objc_allocWithZone(UIColor);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v2;
  v12[4] = sub_9190B0;
  v12[5] = v6;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_119878;
  v12[3] = &block_descriptor_33_6;
  v7 = _Block_copy(v12);
  v8 = v4;
  v9 = v2;

  v10 = [v5 initWithDynamicProvider:v7];

  _Block_release(v7);
  return v10;
}

id variable initialization expression of SyncedLyricsViewController.Specs.deselectedTextColor()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v1 colorWithAlphaComponent:0.175];

  v3 = [v0 labelColor];
  v4 = [v3 colorWithAlphaComponent:0.4];

  v5 = objc_allocWithZone(UIColor);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v2;
  v12[4] = sub_9190B0;
  v12[5] = v6;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_119878;
  v12[3] = &block_descriptor_40_0;
  v7 = _Block_copy(v12);
  v8 = v4;
  v9 = v2;

  v10 = [v5 initWithDynamicProvider:v7];

  _Block_release(v7);
  return v10;
}

id variable initialization expression of SyncedLyricsViewController.Specs.selectedBackgroundVocalsTextColor()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v1 colorWithAlphaComponent:0.35];

  v3 = [v0 labelColor];
  v4 = [v3 colorWithAlphaComponent:0.85];

  v5 = objc_allocWithZone(UIColor);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v2;
  v12[4] = sub_9190B0;
  v12[5] = v6;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_119878;
  v12[3] = &block_descriptor_47_2;
  v7 = _Block_copy(v12);
  v8 = v4;
  v9 = v2;

  v10 = [v5 initWithDynamicProvider:v7];

  _Block_release(v7);
  return v10;
}

id variable initialization expression of SyncedLyricsViewController.Specs.selectedUpcomingBackgroundVocalsTextColor()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v1 colorWithAlphaComponent:0.175];

  v3 = [v0 labelColor];
  v4 = [v3 colorWithAlphaComponent:0.65];

  v5 = objc_allocWithZone(UIColor);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v2;
  v12[4] = sub_9190B0;
  v12[5] = v6;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_119878;
  v12[3] = &block_descriptor_54_2;
  v7 = _Block_copy(v12);
  v8 = v4;
  v9 = v2;

  v10 = [v5 initWithDynamicProvider:v7];

  _Block_release(v7);
  return v10;
}

id variable initialization expression of SyncedLyricsViewController.Specs.deselectedScrollTextColor()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v1 colorWithAlphaComponent:0.4];

  v3 = [v0 labelColor];
  v4 = [v3 colorWithAlphaComponent:0.4];

  v5 = objc_allocWithZone(UIColor);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v2;
  v12[4] = sub_9190B0;
  v12[5] = v6;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_119878;
  v12[3] = &block_descriptor_61_1;
  v7 = _Block_copy(v12);
  v8 = v4;
  v9 = v2;

  v10 = [v5 initWithDynamicProvider:v7];

  _Block_release(v7);
  return v10;
}

id sub_918664(SEL *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_opt_self();
  v8 = [v7 whiteColor];
  v9 = [v7 *a1];
  v10 = objc_allocWithZone(UIColor);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = v8;
  v17[4] = a3;
  v17[5] = v11;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_119878;
  v17[3] = a4;
  v12 = _Block_copy(v17);
  v13 = v9;
  v14 = v8;

  v15 = [v10 initWithDynamicProvider:v12];

  _Block_release(v12);
  return v15;
}

id variable initialization expression of SyncedLyricsViewController.Specs.lineProgressionBackgroundVocalsGradientColor()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v1 colorWithAlphaComponent:0.175];

  v3 = [v0 tintColor];
  v4 = [v3 colorWithAlphaComponent:0.175];

  v5 = objc_allocWithZone(UIColor);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v2;
  v12[4] = sub_9190B0;
  v12[5] = v6;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_119878;
  v12[3] = &block_descriptor_75_3;
  v7 = _Block_copy(v12);
  v8 = v4;
  v9 = v2;

  v10 = [v5 initWithDynamicProvider:v7];

  _Block_release(v7);
  return v10;
}

CGFloat sub_91894C@<D0>(_OWORD *a1@<X8>, CGFloat a2@<D0>)
{
  CGAffineTransformMakeScale(&v6, a2, a2);
  result = v6.a;
  v4 = *&v6.c;
  v5 = *&v6.tx;
  *a1 = *&v6.a;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

id variable initialization expression of SyncedLyricsViewController.Specs.highlightViewBackgroundColor()
{
  v0 = objc_allocWithZone(UIColor);

  return [v0 initWithWhite:1.0 alpha:0.08];
}

double variable initialization expression of SyncedLyricsViewController.Specs.lineChangeSpringTimingParametersValues()
{
  v0 = Int.seconds.getter(1);
  Int.seconds.getter(100);
  Int.seconds.getter(18);
  return v0;
}

uint64_t sub_918A48()
{

  return swift_deallocObject();
}

double block_copy_helper_243(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id variable initialization expression of SyncedLyricsViewController.tapFeedbackGenerator()
{
  v0 = objc_allocWithZone(UISelectionFeedbackGenerator);

  return [v0 init];
}

uint64_t sub_918B88@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

id sub_918C14(void (*a1)(void))
{
  a1(0);
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v1 init];
}

uint64_t sub_918C58(uint64_t a1)
{
  sub_918FBC(&qword_E23D70, &unk_B38C10);
  sub_918FBC(&qword_E21E60, &unk_B38B64);

  return sub_ABB110();
}

__n128 __swift_memcpy16_8_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy32_8_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy48_8_2(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_918DE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E28, &unk_B38A80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_918E54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E28, &unk_B38A80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_918EC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E28, &unk_B38A80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_918FBC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    _s3__C3KeyVMa_2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_9190B4(uint64_t a1)
{
  v2 = sub_AB31C0();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E28, &unk_B38A80);
  v6 = *(v19 - 8);
  __chkstk_darwin();
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v20 = _swiftEmptyArrayStorage;
    sub_927600(0, v9, 0);
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v10 = v20;
    v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v17 = *(v11 + 56);
    v18 = v12;
    do
    {
      v18(v5, v13, v2);
      swift_dynamicCast();
      v20 = v10;
      v15 = v10[2];
      v14 = v10[3];
      if (v15 >= v14 >> 1)
      {
        sub_927600((v14 > 1), v15 + 1, 1);
        v10 = v20;
      }

      v10[2] = v15 + 1;
      sub_918DE4(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15);
      v13 += v17;
      --v9;
    }

    while (v9);
  }

  return v10;
}

void *sub_9192E8(uint64_t a1)
{
  v2 = type metadata accessor for Lyrics.TextLine(0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_927660(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_9319C8(v8, v5, type metadata accessor for Lyrics.TextLine);
      v17 = v7;
      v11 = v7[2];
      v10 = v7[3];
      if (v11 >= v10 >> 1)
      {
        sub_927660((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = &protocol witness table for Lyrics.TextLine;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v14);
      sub_9319C8(v5, boxed_opaque_existential_0, type metadata accessor for Lyrics.TextLine);
      v7[2] = v11 + 1;
      sub_70DF8(&v14, &v7[5 * v11 + 4]);
      sub_931A30(v5, type metadata accessor for Lyrics.TextLine);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

void TimedElement.timeRange.getter(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 8))();
  if (v4 > (*(a2 + 16))(a1, a2))
  {
    __break(1u);
  }
}

uint64_t sub_919594()
{
  v0 = sub_952EC4(&off_D471D0);
  result = swift_arrayDestroy();
  static Lyrics.chineseLanguages = v0;
  return result;
}

uint64_t *Lyrics.chineseLanguages.unsafeMutableAddressor()
{
  if (qword_E21C98 != -1)
  {
    swift_once();
  }

  return &static Lyrics.chineseLanguages;
}

uint64_t sub_9196E8()
{
  v0 = sub_92C724(&off_D47210);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22648, &qword_B39880);
  result = swift_arrayDestroy();
  static Lyrics.scriptMap = v0;
  return result;
}

uint64_t *Lyrics.scriptMap.unsafeMutableAddressor()
{
  if (qword_E21CA0 != -1)
  {
    swift_once();
  }

  return &static Lyrics.scriptMap;
}

double Lyrics.Word.startTime.getter()
{
  v1 = *(v0 + 32);
  if (*(v1 + 16))
  {
    return *(v1 + 32);
  }

  else
  {
    return 0.0;
  }
}

double Lyrics.Word.endTime.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);
  if (v2)
  {
    return *(v1 + 56 * v2 - 16);
  }

  else
  {
    return 0.0;
  }
}

double Lyrics.Word.Emphasis.factor.getter(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    return 0.0;
  }

  return result;
}

BOOL static Lyrics.Word.Emphasis.__derived_enum_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    return (a4 & 1) != 0;
  }

  if (a4)
  {
    return 0;
  }

  return *&a1 == *&a3;
}

void Lyrics.Word.Emphasis.hash(into:)(uint64_t a1, Swift::UInt64 a2, char a3)
{
  if (a3)
  {
    sub_ABB5D0(0);
  }

  else
  {
    sub_ABB5D0(1uLL);
    if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = 0;
    }

    sub_ABB600(v4);
  }
}

Swift::Int Lyrics.Word.Emphasis.hashValue.getter(Swift::UInt64 a1, char a2)
{
  sub_ABB5C0();
  if (a2)
  {
    sub_ABB5D0(0);
  }

  else
  {
    sub_ABB5D0(1uLL);
    if ((a1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = 0;
    }

    sub_ABB600(v4);
  }

  return sub_ABB610();
}

void sub_919928()
{
  if (*(v0 + 8))
  {
    sub_ABB5D0(0);
  }

  else
  {
    v1 = *v0;
    sub_ABB5D0(1uLL);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v2 = v1;
    }

    else
    {
      v2 = 0;
    }

    sub_ABB600(v2);
  }
}

Swift::Int sub_919978(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_ABB5C0();
  if (v3)
  {
    sub_ABB5D0(0);
  }

  else
  {
    sub_ABB5D0(1uLL);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v2;
    }

    else
    {
      v4 = 0;
    }

    sub_ABB600(v4);
  }

  return sub_ABB610();
}

BOOL sub_9199E4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_919A24(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 80);
    for (i = a2 + 40; *(v3 - 6) == *(i - 8) && *(v3 - 5) == *i; i += 56)
    {
      v7 = *(v3 - 2);
      v6 = *(v3 - 1);
      v8 = *v3;
      v10 = *(i + 24);
      v9 = *(i + 32);
      v11 = *(i + 40);
      if (*(v3 - 4) == *(i + 8) && *(v3 - 3) == *(i + 16))
      {
        result = 0;
      }

      else
      {
        v13 = sub_ABB3C0();
        result = 0;
        if ((v13 & 1) == 0)
        {
          return result;
        }
      }

      if (v7 != v10 || v6 != v9 || *&v8 != v11)
      {
        return result;
      }

      v3 += 7;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void Lyrics.Word.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  if (*v2 == 0.0)
  {
    v4 = 0.0;
  }

  sub_ABB600(*&v4);
  v5 = *(v2 + 8);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  sub_ABB600(*&v5);
  sub_AB93F0();
  sub_92C59C(a1, *(v2 + 32));
  if (*(v2 + 48))
  {
    sub_ABB5D0(0);
  }

  else
  {
    v6 = *(v2 + 40);
    sub_ABB5D0(1uLL);
    if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    sub_ABB600(v7);
  }
}

Swift::Int Lyrics.Word.hashValue.getter()
{
  sub_ABB5C0();
  Lyrics.Word.hash(into:)(v1);
  return sub_ABB610();
}

Swift::Int sub_919BF8(uint64_t a1)
{
  sub_ABB5C0();
  Lyrics.Word.hash(into:)(v2);
  return sub_ABB610();
}

uint64_t sub_919C34(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _s7LyricsX0A0C4WordV23__derived_struct_equalsySbAE_AEtFZ_0(v5, v7) & 1;
}

void Lyrics.Syllable.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  sub_ABB600(*&v2);
  v3 = *(v1 + 8);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  sub_ABB600(*&v3);
  sub_AB93F0();
  v4 = *(v1 + 40);
  sub_ABB5D0(*(v1 + 32));
  sub_ABB5D0(v4);
  sub_ABB5D0(*(v1 + 48));
}

Swift::Int Lyrics.Syllable.hashValue.getter()
{
  sub_ABB5C0();
  Lyrics.Syllable.hash(into:)(v1);
  return sub_ABB610();
}

Swift::Int sub_919D64(uint64_t a1)
{
  sub_ABB5C0();
  Lyrics.Syllable.hash(into:)(v2);
  return sub_ABB610();
}

BOOL sub_919DA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _s7LyricsX0A0C8SyllableV23__derived_struct_equalsySbAE_AEtFZ_0(v5, v7);
}

double Lyrics.TextLine.backgroundVocals.getter@<D0>(_OWORD *a1@<X8>)
{
  v3 = type metadata accessor for Lyrics.TextLine(0);
  (*(v1 + *(v3 + 72)))(v7);
  v4 = v7[1];
  *a1 = v7[0];
  a1[1] = v4;
  result = *&v8;
  v6 = v9;
  a1[2] = v8;
  a1[3] = v6;
  return result;
}

uint64_t Lyrics.TextLine.backgroundText.getter()
{
  v1 = type metadata accessor for Lyrics.TextLine(0);
  (*(v0 + *(v1 + 72)))(v4);
  if (!v4[3])
  {
    return 0;
  }

  v2 = v4[2];

  sub_12E1C(v4, &qword_E21E80, &qword_B38CE0);
  return v2;
}

double Lyrics.TextLine.capabilities.getter()
{
  type metadata accessor for Lyrics.TextLine(0);

  return result;
}

uint64_t Lyrics.TextLine.translationKey.getter()
{
  v1 = *(v0 + *(type metadata accessor for Lyrics.TextLine(0) + 52));

  return v1;
}

uint64_t Lyrics.TextLine.debugDescription.getter()
{
  sub_ABAD90(54);
  v3._object = 0x8000000000B79AE0;
  v3._countAndFlagsBits = 0xD000000000000014;
  sub_AB94A0(v3);
  v4._countAndFlagsBits = sub_ABB330();
  sub_AB94A0(v4);

  v5._countAndFlagsBits = 0x6954747261747320;
  v5._object = 0xEB000000003D656DLL;
  sub_AB94A0(v5);
  sub_AB9AB0();
  v6._countAndFlagsBits = 0x656D6954646E6520;
  v6._object = 0xE90000000000003DLL;
  sub_AB94A0(v6);
  sub_AB9AB0();
  v7._countAndFlagsBits = 0x3D7478657420;
  v7._object = 0xE600000000000000;
  sub_AB94A0(v7);
  v1 = type metadata accessor for Lyrics.TextLine(0);
  v8._countAndFlagsBits = (*(v0 + *(v1 + 64)))();
  sub_AB94A0(v8);

  return 0;
}

uint64_t Lyrics.TextLine.textAlignment.getter()
{
  v1 = type metadata accessor for Lyrics.TextLine(0);
  if ((*(v0 + *(v1 + 56)))())
  {
    if ((*(v0 + *(v1 + 32)) & 1) == 0)
    {
      return 2;
    }
  }

  else if (*(v0 + *(v1 + 32)))
  {
    return 2;
  }

  return 0;
}

uint64_t Lyrics.TextLine.init(lineIndex:startTime:endTime:primaryVocalsStartTime:primaryVocalsEndTime:isFirstLineOfParagraph:language:translationKey:agentAlignment:capabilities:localizedLyricsDirectionProvider:localizedDirectionProvider:localizedTextProvider:localizedWordsProvider:localizedBackgroundVocalsProvider:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v31 = type metadata accessor for Lyrics.TextLine(0);
  v32 = v31[7];
  v33 = sub_AB35A0();
  (*(*(v33 - 8) + 56))(a9 + v32, 1, 1, v33);
  *(a9 + 16) = a1;
  *a9 = a10;
  *(a9 + 8) = a11;
  *(a9 + v31[10]) = a12;
  *(a9 + v31[11]) = a13;
  *(a9 + v31[12]) = a2;
  result = sub_160B4(a3, a9 + v32, &qword_E21E88, &qword_B38CE8);
  v35 = (a9 + v31[13]);
  *v35 = a4;
  v35[1] = a5;
  *(a9 + v31[8]) = a6 & 1;
  *(a9 + v31[9]) = a7;
  v36 = (a9 + v31[14]);
  *v36 = a8;
  v36[1] = a14;
  v37 = (a9 + v31[15]);
  *v37 = a15;
  v37[1] = a16;
  v38 = (a9 + v31[16]);
  *v38 = a17;
  v38[1] = a18;
  v39 = (a9 + v31[17]);
  *v39 = a19;
  v39[1] = a20;
  v40 = (a9 + v31[18]);
  *v40 = a21;
  v40[1] = a22;
  return result;
}

double Lyrics.TextLine.hash(into:)(uint64_t a1)
{
  sub_ABB5D0(*(v1 + 16));
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  sub_ABB600(*&v2);
  v3 = *(v1 + 8);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  sub_ABB600(*&v3);
  v4 = type metadata accessor for Lyrics.TextLine(0);
  (*(v1 + *(v4 + 64)))();
  sub_AB93F0();

  return result;
}

Swift::Int Lyrics.TextLine.hashValue.getter()
{
  sub_ABB5C0();
  Lyrics.TextLine.hash(into:)(v1);
  return sub_ABB610();
}

uint64_t sub_91A63C(uint64_t a1)
{
  if ((*(v1 + *(a1 + 56)))())
  {
    if (*(v1 + *(a1 + 32)))
    {
      return 0;
    }
  }

  else if ((*(v1 + *(a1 + 32)) & 1) == 0)
  {
    return 0;
  }

  return 2;
}

Swift::Int sub_91A6D0(uint64_t a1)
{
  sub_ABB5C0();
  Lyrics.TextLine.hash(into:)(v2);
  return sub_ABB610();
}

uint64_t Lyrics.InstrumentalLine.textAlignment.getter(uint64_t a1, char a2)
{
  if (a2)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t Lyrics.InstrumentalLine.debugDescription.getter(double a1, double a2)
{
  sub_ABAD90(54);
  v3._object = 0x8000000000B79B00;
  v3._countAndFlagsBits = 0xD00000000000001CLL;
  sub_AB94A0(v3);
  v4._countAndFlagsBits = sub_ABB330();
  sub_AB94A0(v4);

  v5._countAndFlagsBits = 0x6954747261747320;
  v5._object = 0xEB000000003D656DLL;
  sub_AB94A0(v5);
  sub_AB9AB0();
  v6._countAndFlagsBits = 0x656D6954646E6520;
  v6._object = 0xE90000000000003DLL;
  sub_AB94A0(v6);
  sub_AB9AB0();
  return 0;
}

uint64_t Lyrics.SongwritersLine.textAlignment.getter()
{
  if (*(v0 + 24))
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t Lyrics.SongwritersLine.debugDescription.getter()
{
  sub_ABAD90(68);
  v1._object = 0x8000000000B79B20;
  v1._countAndFlagsBits = 0xD00000000000001BLL;
  sub_AB94A0(v1);
  v2._countAndFlagsBits = sub_ABB330();
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0x6954747261747320;
  v3._object = 0xEB000000003D656DLL;
  sub_AB94A0(v3);
  sub_AB9AB0();
  v4._countAndFlagsBits = 0x656D6954646E6520;
  v4._object = 0xE90000000000003DLL;
  sub_AB94A0(v4);
  sub_AB9AB0();
  v5._countAndFlagsBits = 0x697277676E6F7320;
  v5._object = 0xED00003D73726574;
  sub_AB94A0(v5);
  v6._countAndFlagsBits = sub_AB9770();
  sub_AB94A0(v6);

  return 0;
}

double sub_91AA40@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v5 = (a1 + *(type metadata accessor for Lyrics.TextLine(0) + 52));
  v6 = v5[1];
  if (v6 && (v7 = *v5, v8 = *(v2 + *(type metadata accessor for Lyrics.Translation(0) + 32)), *(v8 + 16)) && (v9 = sub_2EBF88(v7, v6), (v10 & 1) != 0))
  {
    v11 = (*(v8 + 56) + 88 * v9);
    v13 = *v11;
    v12 = v11[1];
    v14 = v11[6];
    if (v14)
    {
      v15 = v11[5];
    }

    else
    {
      v15 = 0;
    }

    v19 = type metadata accessor for Lyrics.Translation.Line(0);
    v20 = *(v19 + 24);
    v21 = sub_AB35A0();
    (*(*(v21 - 8) + 16))(&a2[v20], v3, v21);
    *a2 = v13;
    *(a2 + 1) = v12;
    *(a2 + 2) = v15;
    *(a2 + 3) = v14;
    (*(*(v19 - 8) + 56))(a2, 0, 1, v19);
  }

  else
  {
    v16 = type metadata accessor for Lyrics.Translation.Line(0);
    v17 = *(*(v16 - 8) + 56);

    v17(a2, 1, 1, v16);
  }

  return result;
}

uint64_t _s7LyricsX0A0C11TranslationV8language10Foundation6LocaleV8LanguageVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_AB35A0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_91AC74(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));

  return v2;
}

uint64_t sub_91ACE0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for Lyrics.Transliteration(0);
  v93 = *(v6 - 8);
  v7 = *(v93 + 64);
  __chkstk_darwin();
  v94 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E88, &qword_B38CE8);
  __chkstk_darwin();
  v9 = &v80 - v8;
  v10 = type metadata accessor for Lyrics.TextLine(0);
  v11 = *(*(v10 - 1) + 64);
  __chkstk_darwin();
  v13 = __chkstk_darwin();
  v15 = &v80 - v14;
  v17 = (a1 + *(v16 + 52));
  v18 = v17[1];
  if (v18)
  {
    v19 = *(v3 + *(v6 + 28));
    if (*(v19 + 16))
    {
      v90 = *v17;
      v92 = v12;
      v89 = v18;
      v20 = sub_2EBF88(v90, v18);
      v12 = v92;
      if (v21)
      {
        v80 = v3;
        v91 = v9;
        v22 = *(v19 + 56) + 88 * v20;
        v24 = *(v22 + 32);
        v23 = *(v22 + 48);
        v25 = *(v22 + 64);
        v101 = *(v22 + 80);
        v100 = v25;
        v26 = *(v22 + 16);
        v96 = *v22;
        v97 = v26;
        v98 = v24;
        v99 = v23;
        v27 = *(a1 + v10[17]);
        v28 = sub_933564(&v96, v95);
        v29 = v27(v28);
        v30 = *(v29 + 16);
        v83 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
        if (v30)
        {
          v31 = *(v29 + 32);

          v32 = v91;
          if (!*(v97 + 16) || v31 != *(v97 + 32))
          {
            goto LABEL_12;
          }
        }

        else
        {

          v32 = v91;
          if (*(v97 + 16))
          {
LABEL_12:
            if (qword_E21CC0 != -1)
            {
              swift_once();
            }

            v35 = sub_AB4BC0();
            __swift_project_value_buffer(v35, static Logger.lyrics);
            sub_9319C8(a1, v15, type metadata accessor for Lyrics.TextLine);
            v36 = sub_AB4BA0();
            v37 = sub_AB9F30();
            if (os_log_type_enabled(v36, v37))
            {
              LODWORD(v88) = v37;
              v38 = swift_slowAlloc();
              v87 = swift_slowAlloc();
              v95[0] = v87;
              v39 = v38;
              *v38 = 136446210;
              v40 = &v15[v10[13]];
              v41 = v40[1];
              if (v41)
              {
                v86 = *v40;
                v42 = v41;
              }

              else
              {
                v42 = 0xE300000000000000;
                v86 = 7104878;
              }

              sub_931A30(v15, type metadata accessor for Lyrics.TextLine);
              v43 = sub_927078(v86, v42, v95);

              *(v39 + 1) = v43;
              _os_log_impl(&dword_0, v36, v88, "DEGENERATE TRANSLITERATION DATA start time of original line %{public}s and transliterated line do not match.", v39, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v87);
            }

            else
            {

              sub_931A30(v15, type metadata accessor for Lyrics.TextLine);
            }
          }
        }

        v88 = a1[2];
        v44 = *(a1 + v10[10]);
        v45 = *a1;
        v46 = a1[1];
        v47 = *(a1 + v10[11]);
        LODWORD(v86) = *(a1 + v10[12]);
        v48 = sub_AB35A0();
        v49 = *(v48 - 8);
        v50 = *(v49 + 16);
        v51 = v80;
        v81 = v48;
        v50(v32, v80, v48);
        v82 = *(v49 + 56);
        v82(v32, 0, 1, v48);
        v52 = v10[9];
        LODWORD(v87) = *(a1 + v10[8]);
        v85 = *(a1 + v52);
        v53 = v83;
        sub_9319C8(a1, v83, type metadata accessor for Lyrics.TextLine);
        v54 = (*(v92 + 80) + 16) & ~*(v92 + 80);
        v84 = swift_allocObject();
        sub_931E7C(v53, v84 + v54, type metadata accessor for Lyrics.TextLine);
        v55 = v94;
        sub_9319C8(v51, v94, type metadata accessor for Lyrics.Transliteration);
        v56 = (*(v93 + 80) + 16) & ~*(v93 + 80);
        v57 = swift_allocObject();
        sub_931E7C(v55, v57 + v56, type metadata accessor for Lyrics.Transliteration);
        v58 = swift_allocObject();
        v59 = v99;
        v60 = v100;
        *(v58 + 48) = v98;
        *(v58 + 64) = v59;
        *(v58 + 80) = v60;
        *(v58 + 96) = v101;
        v61 = v97;
        *(v58 + 16) = v96;
        *(v58 + 32) = v61;
        v62 = swift_allocObject();
        v63 = v99;
        v64 = v100;
        *(v62 + 48) = v98;
        *(v62 + 64) = v63;
        *(v62 + 80) = v64;
        *(v62 + 96) = v101;
        v65 = v97;
        *(v62 + 16) = v96;
        *(v62 + 32) = v65;
        v66 = swift_allocObject();
        v67 = v99;
        v68 = v100;
        *(v66 + 48) = v98;
        *(v66 + 64) = v67;
        *(v66 + 80) = v68;
        *(v66 + 96) = v101;
        v69 = v97;
        *(v66 + 16) = v96;
        *(v66 + 32) = v69;
        v70 = v10[7];
        v82(a2 + v70, 1, 1, v81);
        a2[2] = v88;
        *a2 = v45;
        a2[1] = v46;
        *(a2 + v10[10]) = v44;
        *(a2 + v10[11]) = v47;
        *(a2 + v10[12]) = v86;
        sub_933564(&v96, v95);
        sub_933564(&v96, v95);
        v71 = v89;

        v72 = v85;

        sub_160B4(v91, a2 + v70, &qword_E21E88, &qword_B38CE8);
        v73 = (a2 + v10[13]);
        *v73 = v90;
        v73[1] = v71;
        *(a2 + v10[8]) = v87;
        *(a2 + v10[9]) = v72;
        v74 = (a2 + v10[14]);
        v75 = v84;
        *v74 = sub_933734;
        v74[1] = v75;
        v76 = (a2 + v10[15]);
        *v76 = sub_93389C;
        v76[1] = v57;
        v77 = (a2 + v10[16]);
        *v77 = Alert.message.getter;
        v77[1] = v58;
        v78 = (a2 + v10[17]);
        *v78 = Library.Menu.Request.excludedIdentifiers.getter;
        v78[1] = v62;
        v79 = (a2 + v10[18]);
        *v79 = sub_933958;
        v79[1] = v66;
        return (*(v92 + 56))(a2, 0, 1, v10);
      }
    }
  }

  v33 = *(v12 + 56);

  return v33(a2, 1, 1, v10, v13);
}

uint64_t Logger.lyrics.unsafeMutableAddressor()
{
  if (qword_E21CC0 != -1)
  {
    swift_once();
  }

  v0 = sub_AB4BC0();

  return __swift_project_value_buffer(v0, static Logger.lyrics);
}

uint64_t static Lyrics.useSpacesAsWordDelimiter(for:)(uint64_t a1)
{
  v2 = sub_AB35A0();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E88, &qword_B38CE8);
  __chkstk_darwin();
  v7 = &v28 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E90, &unk_B38CF0);
  __chkstk_darwin();
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v28 - v10;
  sub_15F84(a1, v7, &qword_E21E88, &qword_B38CE8);
  if ((*(v3 + 48))(v7, 1, v2) == 1)
  {
    v12 = &qword_E21E88;
    v13 = &qword_B38CE8;
    v14 = v7;
LABEL_7:
    sub_12E1C(v14, v12, v13);
    v22 = 1;
    return v22 & 1;
  }

  sub_AB3570();
  v15 = *(v3 + 8);
  v15(v7, v2);
  v16 = sub_AB34C0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  if (v18(v11, 1, v16) == 1)
  {
    v12 = &qword_E21E90;
    v13 = &unk_B38CF0;
    v14 = v11;
    goto LABEL_7;
  }

  v29 = v15;
  sub_AB34A0();
  v28 = v19;
  v20 = v11;
  v21 = *(v17 + 8);
  v21(v20, v16);
  sub_AB3560();
  sub_AB3570();
  v29(v5, v2);
  if (v18(v9, 1, v16) == 1)
  {
    v12 = &qword_E21E90;
    v13 = &unk_B38CF0;
    v14 = v9;
    goto LABEL_7;
  }

  v24 = sub_AB34A0();
  v26 = v25;
  v21(v9, v16);
  if (qword_E21CA8 != -1)
  {
    swift_once();
  }

  v27 = sub_472F00(v24, v26, qword_E74418);

  v22 = v27 ^ 1;
  return v22 & 1;
}

uint64_t Lyrics.currentLanguage.getter@<X0>(uint64_t a1@<X8>)
{
  v15 = a1;
  v2 = type metadata accessor for Lyrics.Translation(0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E23930, &qword_B3AB40);
  __chkstk_darwin();
  v7 = &v15 - v6;
  v8 = sub_AB35A0();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation;
  swift_beginAccess();
  sub_15F84(v1 + v12, v7, &qword_E23930, &qword_B3AB40);
  if ((*(v3 + 48))(v7, 1, v2))
  {
    sub_12E1C(v7, &qword_E23930, &qword_B3AB40);
    return sub_15F84(v1 + OBJC_IVAR____TtC7LyricsX6Lyrics_originalLanguage, v15, &qword_E21E88, &qword_B38CE8);
  }

  else
  {
    sub_9319C8(v7, v5, type metadata accessor for Lyrics.Translation);
    sub_12E1C(v7, &qword_E23930, &qword_B3AB40);
    (*(v9 + 16))(v11, v5, v8);
    sub_931A30(v5, type metadata accessor for Lyrics.Translation);
    v14 = v15;
    (*(v9 + 32))(v15, v11, v8);
    return (*(v9 + 56))(v14, 0, 1, v8);
  }
}

uint64_t sub_91BDB8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return sub_15F84(v4 + v8, a4, a2, a3);
}

double sub_91BE40(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  sub_160B4(a1, v4 + v8, a3, a4);
  swift_endAccess();
  return result;
}

uint64_t Lyrics.staticText.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC7LyricsX6Lyrics____lazy_storage___staticText);
  if (*(v0 + OBJC_IVAR____TtC7LyricsX6Lyrics____lazy_storage___staticText + 8))
  {
    v2 = *v1;
  }

  else
  {
    sub_91C0C0(v0);
    v2 = v3;
    *v1 = v3;
    v1[1] = v4;
  }

  return v2;
}

void sub_91C0C0(uint64_t a1)
{
  v2 = type metadata accessor for Lyrics.TextLine(0);
  v25 = *(v2 - 8);
  v26 = v2;
  __chkstk_darwin();
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 32);
  v35 = 0;
  v36 = 0xE000000000000000;
  v28 = *(v5 + 16);
  if (v28)
  {
    v6 = 0;
    v27 = v5 + 32;
    v24 = v5;
    while (v6 < *(v5 + 16))
    {
      v9 = *(v27 + 8 * v6);
      v7 = v35;
      v8 = v36;
      v33 = v35;
      v34 = v36;
      v10 = *(v9 + 16);
      if (v10)
      {
        v29 = v9;
        v30 = v6;
        v11 = &v4[*(v26 + 64)];
        v12 = &v4[*(v26 + 72)];
        v13 = v9 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
        v31 = *(v25 + 72);

        do
        {
          v17 = sub_9319C8(v13, v4, type metadata accessor for Lyrics.TextLine);
          v18 = v33 & 0xFFFFFFFFFFFFLL;
          if ((v34 & 0x2000000000000000) != 0)
          {
            v18 = HIBYTE(v34) & 0xF;
          }

          if (v18)
          {
            v43._countAndFlagsBits = 10;
            v43._object = 0xE100000000000000;
            sub_AB94A0(v43);
          }

          v19 = (*v11)(v17);
          v21 = v20;
          (*v12)(v37);
          v22 = v38;
          if (v38)
          {
            v14 = v37[2];

            sub_12E1C(v37, &qword_E21E80, &qword_B38CE0);
            v32._countAndFlagsBits = 40;
            v32._object = 0xE100000000000000;

            v40._countAndFlagsBits = v14;
            v40._object = v22;
            sub_AB94A0(v40);
            v41._countAndFlagsBits = 41;
            v41._object = 0xE100000000000000;
            sub_AB94A0(v41);
            swift_bridgeObjectRelease_n();
            countAndFlagsBits = v32._countAndFlagsBits;
            object = v32._object;
          }

          else
          {
            countAndFlagsBits = 0;
            object = 0xE000000000000000;
          }

          v32._countAndFlagsBits = v19;
          v32._object = v21;

          v42._countAndFlagsBits = countAndFlagsBits;
          v42._object = object;
          sub_AB94A0(v42);

          sub_AB94A0(v32);

          sub_931A30(v4, type metadata accessor for Lyrics.TextLine);
          v13 += v31;
          --v10;
        }

        while (v10);
        v7 = v33;
        v8 = v34;
        v5 = v24;
        v6 = v30;
      }

      else
      {
      }

      ++v6;
      v35 = v7;
      v36 = v8;
      v39._countAndFlagsBits = 10;
      v39._object = 0xE100000000000000;
      sub_AB94A0(v39);

      if (v6 == v28)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    String.trim()();
  }
}

double Lyrics.staticText.setter(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC7LyricsX6Lyrics____lazy_storage___staticText);
  *v3 = a1;
  v3[1] = a2;

  return result;
}

double (*Lyrics.staticText.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[2] = v1;
  *a1 = Lyrics.staticText.getter();
  a1[1] = v3;
  return sub_91C440;
}

double sub_91C440(uint64_t *a1)
{
  v1 = a1[1];
  v2 = (a1[2] + OBJC_IVAR____TtC7LyricsX6Lyrics____lazy_storage___staticText);
  *v2 = *a1;
  v2[1] = v1;

  return result;
}

uint64_t Lyrics.alignment(for:default:)(void *a1, uint64_t a2, char a3)
{
  if (!*(v3 + OBJC_IVAR____TtC7LyricsX6Lyrics_vocalistsType) && (a3 & 1) == 0)
  {
    return a2;
  }

  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  return (*(v5 + 24))(v4, v5);
}

uint64_t sub_91C518(double *a1, double *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    v4 = type metadata accessor for Lyrics.TextLine(0);
    v5 = (*(a1 + *(v4 + 64)))();
    v7 = v6;
    if (v5 == (*(a2 + *(v4 + 64)))() && v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = sub_ABB3C0();
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_91C600@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for Lyrics.TextLine(0);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v18 = a3;
    v12 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    while (1)
    {
      sub_9319C8(v12, v10, type metadata accessor for Lyrics.TextLine);
      v14 = a1(v10);
      if (v3)
      {
        return sub_931A30(v10, type metadata accessor for Lyrics.TextLine);
      }

      if (v14)
      {
        break;
      }

      sub_931A30(v10, type metadata accessor for Lyrics.TextLine);
      v12 += v13;
      if (!--v11)
      {
        v15 = 1;
        a3 = v18;
        return (*(v8 + 56))(a3, v15, 1, v7);
      }
    }

    a3 = v18;
    sub_931E7C(v10, v18, type metadata accessor for Lyrics.TextLine);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v8 + 56))(a3, v15, 1, v7);
}

uint64_t sub_91C7DC()
{
  v0 = sub_952EC4(&off_D472C0);
  result = swift_arrayDestroy();
  qword_E74418 = v0;
  return result;
}

void Lyrics.AudioAttribute.hash(into:)(double a1)
{
  sub_ABB5D0(0);
  v2 = 0.0;
  if (a1 != 0.0)
  {
    v2 = a1;
  }

  sub_ABB600(*&v2);
}

Swift::Int Lyrics.AudioAttribute.hashValue.getter(double a1)
{
  sub_ABB5C0();
  sub_ABB5D0(0);
  v2 = 0.0;
  if (a1 != 0.0)
  {
    v2 = a1;
  }

  sub_ABB600(*&v2);
  return sub_ABB610();
}

Swift::Int sub_91C8F4()
{
  v1 = *v0;
  sub_ABB5C0();
  sub_ABB5D0(0);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  sub_ABB600(*&v2);
  return sub_ABB610();
}

void sub_91C95C()
{
  v1 = *v0;
  sub_ABB5D0(0);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  sub_ABB600(*&v2);
}

Swift::Int sub_91C9A8(uint64_t a1)
{
  v2 = *v1;
  sub_ABB5C0();
  sub_ABB5D0(0);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  sub_ABB600(*&v3);
  return sub_ABB610();
}

double Lyrics.spatialOffset.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC7LyricsX6Lyrics_audioAttributes);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 56);
  if (v4)
  {
    v5 = __clz(__rbit64(v4));
    return *(*(v1 + 48) + 8 * v5);
  }

  else
  {
    v6 = ((v2 + 63) >> 6) - 1;
    v7 = (v1 + 64);
    while (v6)
    {
      v9 = *v7++;
      v8 = v9;
      --v6;
      v4 -= 64;
      if (v9)
      {
        v5 = __clz(__rbit64(v8)) - v4;
        return *(*(v1 + 48) + 8 * v5);
      }
    }

    return 0.0;
  }
}

uint64_t Lyrics.__allocating_init(identifier:songInfo:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  Lyrics.init(identifier:songInfo:)(a1, a2, a3);
  return v6;
}

void *Lyrics.init(identifier:songInfo:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v686 = a3;
  v636 = a2;
  v633 = a1;
  v680 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21EA8, &qword_B38D08);
  __chkstk_darwin();
  v611 = v605 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E90, &unk_B38CF0);
  __chkstk_darwin();
  v628 = v605 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v613 = v605 - v7;
  __chkstk_darwin();
  v615 = v605 - v8;
  v632 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21EB0, &qword_B38D10);
  __chkstk_darwin();
  v631 = v605 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21EB8, &qword_B38D18);
  __chkstk_darwin();
  v618 = v605 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v637 = v605 - v11;
  __chkstk_darwin();
  v644 = v605 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E98, &qword_B38D00);
  __chkstk_darwin();
  v627 = v605 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v626 = v605 - v14;
  __chkstk_darwin();
  v642 = v605 - v15;
  __chkstk_darwin();
  v661 = v605 - v16;
  __chkstk_darwin();
  v670 = v605 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E23930, &qword_B3AB40);
  __chkstk_darwin();
  v623 = v605 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v622 = v605 - v19;
  __chkstk_darwin();
  v621 = v605 - v20;
  v700 = type metadata accessor for Lyrics.TextLine(0);
  v689 = *(v700 - 8);
  __chkstk_darwin();
  v692 = v605 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v691 = v605 - v22;
  __chkstk_darwin();
  v704 = (v605 - v23);
  __chkstk_darwin();
  v679 = v605 - v24;
  __chkstk_darwin();
  v672 = v605 - v25;
  v26 = type metadata accessor for Lyrics.Transliteration(0);
  v27 = *(v26 - 8);
  __chkstk_darwin();
  v662 = v605 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v635 = (v605 - v29);
  __chkstk_darwin();
  v688 = v605 - v30;
  __chkstk_darwin();
  v687 = v605 - v31;
  v32 = type metadata accessor for Lyrics.Translation(0);
  v33 = *(v32 - 8);
  __chkstk_darwin();
  v638 = v605 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v652 = v605 - v35;
  __chkstk_darwin();
  v639 = (v605 - v36);
  __chkstk_darwin();
  v690 = v605 - v37;
  __chkstk_darwin();
  v694 = v605 - v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21EC0, &qword_B38D20);
  __chkstk_darwin();
  v630 = v605 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v609 = v605 - v40;
  __chkstk_darwin();
  v651 = v605 - v41;
  __chkstk_darwin();
  v663 = v605 - v42;
  __chkstk_darwin();
  v685 = v605 - v43;
  v701 = sub_AB35C0();
  v697 = *(v701 - 8);
  __chkstk_darwin();
  v614 = v605 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v654 = v605 - v45;
  __chkstk_darwin();
  v703 = v605 - v46;
  __chkstk_darwin();
  v693 = (v605 - v47);
  v705 = sub_AB35A0();
  v640 = *(v705 - 8);
  __chkstk_darwin();
  v625 = v605 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v608 = v605 - v49;
  __chkstk_darwin();
  v612 = v605 - v50;
  __chkstk_darwin();
  v669 = v605 - v51;
  __chkstk_darwin();
  v668 = v605 - v52;
  __chkstk_darwin();
  v698 = v605 - v53;
  __chkstk_darwin();
  v653 = v605 - v54;
  __chkstk_darwin();
  v699 = v605 - v55;
  __chkstk_darwin();
  v682 = v605 - v56;
  __chkstk_darwin();
  v643 = v605 - v57;
  __chkstk_darwin();
  v681 = v605 - v58;
  __chkstk_darwin();
  v684 = v605 - v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E88, &qword_B38CE8);
  __chkstk_darwin();
  v61 = v605 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __chkstk_darwin();
  v64 = v605 - v63;
  v666 = v33;
  v65 = *(v33 + 56);
  v634 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation;
  v65(v4 + OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation, 1, 1, v32, v62);
  v667 = v27;
  v66 = *(v27 + 56);
  v607 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration;
  v66(v4 + OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration, 1, 1, v26);
  v659 = OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTranslation;
  v67 = v32;
  v68 = v705;
  v664 = v67;
  v619 = v65;
  v620 = v33 + 56;
  (v65)(v4 + OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTranslation, 1, 1);
  v610 = OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTransliteration;
  v66(v4 + OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTransliteration, 1, 1, v26);
  v624 = OBJC_IVAR____TtC7LyricsX6Lyrics_originalTransliteration;
  v66(v4 + OBJC_IVAR____TtC7LyricsX6Lyrics_originalTransliteration, 1, 1, v26);
  v647 = OBJC_IVAR____TtC7LyricsX6Lyrics__preferredTransliteration;
  v695 = v26;
  v671 = v27 + 56;
  v665 = v66;
  v66(v4 + OBJC_IVAR____TtC7LyricsX6Lyrics__preferredTransliteration, 1, 1, v26);
  v69 = (v4 + OBJC_IVAR____TtC7LyricsX6Lyrics____lazy_storage___staticText);
  *v69 = 0;
  v69[1] = 0;
  v629 = v69;
  v70 = v636;
  *(v4 + 16) = v633;
  *(v4 + 24) = v70;
  v71 = *(v640 + 7);
  v71(v64, 1, 1, v68);

  v72 = [v686 language];
  if (v72)
  {
    v73 = v72;
    sub_AB92A0();

    sub_AB3560();
    v71(v61, 0, 1, v68);
    sub_160B4(v61, v64, &qword_E21E88, &qword_B38CE8);
  }

  else
  {
    sub_12E1C(v64, &qword_E21E88, &qword_B38CE8);
    v71(v64, 1, 1, v68);
  }

  v74 = OBJC_IVAR____TtC7LyricsX6Lyrics_originalLanguage;
  v646 = v64;
  sub_15F84(v64, v4 + OBJC_IVAR____TtC7LyricsX6Lyrics_originalLanguage, &qword_E21E88, &qword_B38CE8);
  v75 = v686;
  [v686 leadingSilence];
  *(v4 + OBJC_IVAR____TtC7LyricsX6Lyrics_leadingSilence) = v76;
  v77 = [v75 songwriters];
  v78 = sub_13C80(0, &qword_E21ED8, MSVLyricsSongWriter_ptr);
  v79 = sub_AB9760();

  if (v79 >> 62)
  {
    v80 = sub_ABB060();
  }

  else
  {
    v80 = *(&dword_10 + (v79 & 0xFFFFFFFFFFFFFF8));
  }

  v81 = _swiftEmptyArrayStorage;
  v702 = v4;
  v616 = v78;
  v606 = v74;
  if (v80)
  {
    v82 = v79;
    *&v706 = _swiftEmptyArrayStorage;
    sub_927620(0, v80 & ~(v80 >> 63), 0);
    if (v80 < 0)
    {
      __break(1u);
      goto LABEL_54;
    }

    v83 = 0;
    v84 = v706;
    v85 = v82;
    v696 = (v82 & 0xC000000000000001);
    v86 = v80;
    do
    {
      if (v696)
      {
        v87 = sub_ABAE20();
      }

      else
      {
        v87 = *(v85 + 8 * v83 + 32);
      }

      v88 = v87;
      v89 = [v87 name];
      v90 = sub_AB92A0();
      v92 = v91;

      *&v706 = v84;
      v94 = v84[2];
      v93 = v84[3];
      if (v94 >= v93 >> 1)
      {
        sub_927620((v93 > 1), v94 + 1, 1);
        v84 = v706;
      }

      ++v83;
      v84[2] = v94 + 1;
      v95 = &v84[2 * v94];
      v95[4] = v90;
      v95[5] = v92;
      v4 = v702;
      v85 = v82;
    }

    while (v86 != v83);

    v81 = _swiftEmptyArrayStorage;
  }

  else
  {

    v84 = _swiftEmptyArrayStorage;
  }

  v96 = OBJC_IVAR____TtC7LyricsX6Lyrics_songwriters;
  *(v4 + OBJC_IVAR____TtC7LyricsX6Lyrics_songwriters) = v84;
  v80 = v686;
  v97 = [v686 audioAttributes];
  v82 = v693;
  v605[2] = v96;
  if (v97)
  {
    v98 = v97;
    if ([v97 isSpatialRole])
    {
      [v98 lyricsOffset];
      v100 = v99;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21F40, &unk_B38D40);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_AF4EC0;
      *(inited + 32) = v100;
      v102 = sub_92DADC(inited);
      swift_setDeallocating();
      goto LABEL_22;
    }
  }

  v102 = &_swiftEmptySetSingleton;
LABEL_22:
  v103 = OBJC_IVAR____TtC7LyricsX6Lyrics_audioAttributes;
  *(v4 + OBJC_IVAR____TtC7LyricsX6Lyrics_audioAttributes) = v102;
  v104 = [v80 type];
  v105 = v104 == &dword_0 + 1;
  if (v104 == &dword_0 + 2)
  {
    v105 = 2;
  }

  *(v4 + 56) = v105;
  v729 = _swiftEmptyArrayStorage;
  v660 = swift_allocObject();
  swift_weakInit();
  v656 = swift_allocObject();
  *(v656 + 16) = 0;
  v655 = swift_allocObject();
  *(v655 + 16) = 0;
  v106 = [v80 language];
  if (v106)
  {
    v107 = v106;
    sub_AB92A0();

    v108 = v684;
    sub_AB3560();
    v109 = sub_AB3580();
    (*(v640 + 1))(v108, v705);
    v683 = v109 == 2;
  }

  else
  {
    v683 = 0;
  }

  v110 = [v80 language];
  if (v110)
  {
    v111 = v110;
    v112 = sub_AB92A0();
    v114 = v113;
  }

  else
  {
    v112 = 0;
    v114 = 0;
  }

  v658 = sub_92DC30(v112, v114);

  v605[3] = v103;
  if (_swiftEmptyArrayStorage >> 62 && sub_ABB060())
  {
    sub_92E0B4(_swiftEmptyArrayStorage);
    v115 = v134;
  }

  else
  {
    v115 = &_swiftEmptySetSingleton;
  }

  v116 = swift_allocObject();
  v657 = v116;
  *(v116 + 16) = v115;
  v617 = v116 + 16;
  v117 = [v80 lyricsSections];
  sub_13C80(0, &qword_E21EE0, MSVLyricsSection_ptr);
  v118 = sub_AB9760();

  if (v118 >> 62)
  {
    v119 = sub_ABB060();
  }

  else
  {
    v119 = *(&dword_10 + (v118 & 0xFFFFFFFFFFFFFF8));
  }

  v120 = v685;
  if (v119 >= 1)
  {
    v78 = [v80 lyricsSections];
    v4 = sub_AB9760();

    if (!(v4 >> 62))
    {
      v121 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
      if (v121)
      {
LABEL_37:
        if (v121 < 1)
        {
          __break(1u);
          goto LABEL_429;
        }

        v122 = 0;
        v696 = _swiftEmptyArrayStorage;
        do
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v123 = sub_ABAE20();
          }

          else
          {
            v123 = *(v4 + 8 * v122 + 32);
          }

          v124 = v123;
          v125 = [v123 lines];
          sub_13C80(0, &qword_E21EE8, MSVLyricsLine_ptr);
          v126 = sub_AB9760();

          v78 = sub_92F8E4(v126, v657, v655, v656, v686, v683, v658, v660);

          sub_9237D0(v127);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v696 = sub_926B7C(0, v696[2] + 1, 1, v696);
          }

          v129 = v696[2];
          v128 = v696[3];
          if (v129 >= v128 >> 1)
          {
            v696 = sub_926B7C((v128 > 1), v129 + 1, 1, v696);
          }

          ++v122;

          v130 = v696;
          v696[2] = v129 + 1;
          v130[v129 + 4] = v78;
        }

        while (v121 != v122);

        v120 = v685;
        v82 = v693;
        v80 = v686;
        v81 = _swiftEmptyArrayStorage;
        goto LABEL_56;
      }

      goto LABEL_55;
    }

LABEL_54:
    v121 = sub_ABB060();
    if (v121)
    {
      goto LABEL_37;
    }

LABEL_55:

    v696 = _swiftEmptyArrayStorage;
    v120 = v685;
    goto LABEL_56;
  }

  v131 = [v80 lyricsLines];
  sub_13C80(0, &qword_E21EE8, MSVLyricsLine_ptr);
  v78 = sub_AB9760();

  v132 = sub_92F8E4(v78, v657, v655, v656, v80, v683, v658, v660);

  v729 = v132;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21EF0, &qword_B38D28);
  v133 = swift_allocObject();
  *(v133 + 16) = xmmword_AF4EC0;
  v696 = v133;
  *(v133 + 32) = v132;

LABEL_56:
  v135 = swift_allocObject();
  v684 = v135;
  v136 = v680;
  *(v135 + 16) = v80;
  *(v135 + 24) = v136;
  v137 = swift_allocObject();
  v137[2] = 0;
  v650 = v137 + 2;
  v686 = v137;
  v137[3] = _swiftEmptyArrayStorage;
  v138 = swift_allocObject();
  *(v138 + 16) = 0;
  v645 = v138 + 16;
  v680 = v138;
  *(v138 + 24) = _swiftEmptyArrayStorage;
  v641 = v80;
  v139 = sub_AB34D0();
  v140 = v139;
  v678 = *(v139 + 16);
  if (!v678)
  {

    v142 = _swiftEmptyArrayStorage;
    goto LABEL_118;
  }

  v141 = 0;
  v676 = v139 + 32;
  v81 = (v640 + 8);
  v675 = (v697 + 16);
  v674 = (v697 + 8);
  v673 = (v697 + 32);
  v142 = _swiftEmptyArrayStorage;
  v677 = v139;
  do
  {
    if (v141 >= v140[2])
    {
      goto LABEL_395;
    }

    v143 = v142;

    sub_AB3480();
    v144 = v681;
    sub_AB35B0();
    sub_AB3590();
    v145 = *v81;
    (*v81)(v144, v705);
    v146 = sub_AB3530();
    v147 = *(v146 - 8);
    if ((*(v147 + 48))(v120, 1, v146) == 1)
    {
      sub_12E1C(v120, &qword_E21EC0, &qword_B38D20);
      v142 = v143;
      goto LABEL_97;
    }

    v148 = sub_AB3520();
    v149 = v120;
    v151 = v150;
    (*(v147 + 8))(v149, v146);
    if (qword_E21CA0 != -1)
    {
      swift_once();
    }

    v152 = static Lyrics.scriptMap;
    if (*(static Lyrics.scriptMap + 16))
    {
      v153 = sub_2EBF88(v148, v151);
      if (v154)
      {
        v155 = (*(v152 + 56) + 16 * v153);
        v148 = *v155;
        v156 = v155[1];

        v151 = v156;
      }
    }

    v157 = *(v680 + 16);
    v158 = *(v680 + 24);
    v159 = *(v158 + 16);
    if (v157)
    {

      sub_92BA74(v148, v151, v158 + 32, v159, (v157 + 16), v157 + 32);
      v161 = v160;
      v159 = v162;

      if ((v161 & 1) == 0)
      {
        goto LABEL_78;
      }

LABEL_77:
      sub_92BF34(v148, v151, v159);
      goto LABEL_78;
    }

    if (!v159)
    {
      goto LABEL_77;
    }

    v163 = (v158 + 40);
    while (1)
    {
      v164 = *(v163 - 1) == v148 && *v163 == v151;
      if (v164 || (sub_ABB3C0() & 1) != 0)
      {
        break;
      }

      v163 += 2;
      if (!--v159)
      {
        goto LABEL_77;
      }
    }

LABEL_78:
    if (v148 == 1853120844 && v151 == 0xE400000000000000)
    {

      v142 = v143;
      v82 = v693;
      goto LABEL_97;
    }

    v165 = sub_ABB3C0();

    v142 = v143;
    v82 = v693;
    if ((v165 & 1) == 0)
    {
      if (qword_E21CC8 != -1)
      {
        swift_once();
      }

      v166 = v643;
      sub_AB35B0();
      v167 = LyricsOptionsManager.isDefaultScriptSupported(for:)(v166);
      v145(v166, v705);
      if (v167)
      {
        v168 = *(v680 + 16);
        v169 = *(v680 + 24);
        v170 = *(v169 + 16);
        if (v168)
        {

          sub_92BA74(1853120844, 0xE400000000000000, v169 + 32, v170, (v168 + 16), v168 + 32);
          v172 = v171;
          v170 = v173;

          if (v172)
          {
            goto LABEL_96;
          }
        }

        else
        {
          if (!v170)
          {
LABEL_96:
            sub_92BF34(1853120844, 0xE400000000000000, v170);
            goto LABEL_97;
          }

          v174 = (v169 + 40);
          while (1)
          {
            v175 = *(v174 - 1) == 1853120844 && *v174 == 0xE400000000000000;
            if (v175 || (sub_ABB3C0() & 1) != 0)
            {
              break;
            }

            v174 += 2;
            if (!--v170)
            {
              goto LABEL_96;
            }
          }
        }
      }
    }

LABEL_97:
    v176 = v682;
    sub_AB35B0();
    v177 = sub_923BF4();
    v179 = v178;
    v145(v176, v705);
    v180 = v701;
    if (!v179)
    {
      goto LABEL_111;
    }

    v181 = *(v686 + 2);
    v182 = *(v686 + 3);
    v183 = *(v182 + 16);
    if (v181)
    {

      sub_92BA74(v177, v179, v182 + 32, v183, (v181 + 16), v181 + 32);
      v185 = v184;
      v183 = v186;

      if ((v185 & 1) == 0)
      {
        goto LABEL_110;
      }
    }

    else if (v183)
    {
      v187 = (v182 + 40);
      do
      {
        v188 = *(v187 - 1) == v177 && v179 == *v187;
        if (v188 || (sub_ABB3C0() & 1) != 0)
        {
          goto LABEL_110;
        }

        v187 += 2;
      }

      while (--v183);
    }

    sub_92BF34(v177, v179, v183);
LABEL_110:

    v142 = v143;
    v82 = v693;
LABEL_111:
    (*v675)(v703, v82, v180);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v142 = sub_9269A0(0, *(v142 + 16) + 1, 1, v142, &qword_E225D0, &qword_B397F8, &type metadata accessor for Locale);
    }

    v140 = v677;
    v78 = *(v142 + 16);
    v189 = *(v142 + 24);
    if (v78 >= v189 >> 1)
    {
      v142 = sub_9269A0((v189 > 1), v78 + 1, 1, v142, &qword_E225D0, &qword_B397F8, &type metadata accessor for Locale);
    }

    ++v141;
    v190 = v697;
    (*(v697 + 8))(v82, v180);
    *(v142 + 16) = v78 + 1;
    (*(v190 + 32))(v142 + ((*(v190 + 80) + 32) & ~*(v190 + 80)) + *(v190 + 72) * v78, v703, v180);
    v120 = v685;
  }

  while (v141 != v678);

LABEL_118:
  v78 = sub_92C838(_swiftEmptyArrayStorage);
  v191 = [v641 translations];
  sub_13C80(0, &qword_E21EF8, MSVLyricsTranslation_ptr);
  v141 = sub_AB9760();

  if (v141 >> 62)
  {
    goto LABEL_404;
  }

  v192 = *(&dword_10 + (v141 & 0xFFFFFFFFFFFFFF8));
  while (2)
  {
    v682 = v78;
    v605[1] = type metadata accessor for Lyrics(0);
    v681 = v142;
    if (v192)
    {
      v193 = 0;
      v78 = 0;
      v678 = (v141 & 0xC000000000000001);
      v648 = v141 + 32;
      v649 = v141 & 0xFFFFFFFFFFFFFF8;
      v675 = (v640 + 16);
      v674 = (v640 + 32);
      v673 = (v640 + 8);
      v693 = _swiftEmptyArrayStorage;
      v142 = v663;
      v677 = v141;
      v676 = v192;
      while (1)
      {
        while (1)
        {
          if (v678)
          {
            v194 = sub_ABAE20();
          }

          else
          {
            if (v193 >= *(v649 + 16))
            {
              goto LABEL_402;
            }

            v194 = *(v648 + 8 * v193);
          }

          v195 = v194;
          v196 = __OFADD__(v193++, 1);
          if (v196)
          {
            goto LABEL_396;
          }

          v197 = [v194 linesMap];
          *&v706 = 0;
          sub_13C80(0, &qword_E21EE8, MSVLyricsLine_ptr);
          sub_AB8FE0();

          v198 = v706;
          if (v706)
          {
            break;
          }

          if (v193 == v192)
          {
            goto LABEL_151;
          }
        }

        v685 = v193;
        v199 = v684;

        v81 = v195;
        v200 = sub_930D44(v198, sub_930CDC, v199, v81);
        v703 = v78;
        if (v78)
        {
          goto LABEL_430;
        }

        v201 = v200;

        v202 = [v81 language];
        sub_AB92A0();

        v203 = v699;
        sub_AB3560();
        v204 = v653;
        v205 = v705;
        (*v675)(v653, v203, v705);
        v206 = [v81 language];
        v207 = sub_AB92A0();
        v209 = v208;

        v210 = [v81 type] == &dword_0 + 1;
        LOBYTE(v206) = [v81 isAutomaticallyCreated];
        v211 = v694;
        (*v674)(v694, v204, v205);
        v212 = v664;
        v213 = (v211 + v664[5]);
        *v213 = v207;
        v213[1] = v209;
        *(v211 + v212[6]) = v210;
        *(v211 + v212[7]) = v206;
        *(v211 + v212[8]) = v201;
        sub_9319C8(v211, v690, type metadata accessor for Lyrics.Translation);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v693 = sub_9269A0(0, v693[2] + 1, 1, v693, &qword_E22580, &qword_B397B0, type metadata accessor for Lyrics.Translation);
        }

        v215 = v693[2];
        v214 = v693[3];
        v78 = v703;
        v216 = v699;
        v141 = v677;
        if (v215 >= v214 >> 1)
        {
          v693 = sub_9269A0((v214 > 1), v215 + 1, 1, v693, &qword_E22580, &qword_B397B0, type metadata accessor for Lyrics.Translation);
        }

        v217 = v693;
        v693[2] = v215 + 1;
        sub_931E7C(v690, v217 + ((*(v666 + 80) + 32) & ~*(v666 + 80)) + *(v666 + 72) * v215, type metadata accessor for Lyrics.Translation);
        v218 = sub_923BF4();
        if (v219)
        {
          v220 = v218;
          v221 = v219;
          v223 = *(v686 + 2);
          v222 = *(v686 + 3);
          v224 = *(v222 + 16);
          if (v223)
          {

            sub_92BA74(v220, v221, v222 + 32, v224, (v223 + 16), v223 + 32);
            v226 = v225;

            if (v226)
            {
              goto LABEL_147;
            }
          }

          else
          {
            if (!v224)
            {
LABEL_147:

              sub_931A30(v694, type metadata accessor for Lyrics.Translation);
              (*v673)(v699, v705);
              goto LABEL_148;
            }

            v231 = (v222 + 40);
            while (1)
            {
              v232 = *(v231 - 1) == v220 && v221 == *v231;
              if (v232 || (sub_ABB3C0() & 1) != 0)
              {
                break;
              }

              v231 += 2;
              if (!--v224)
              {
                goto LABEL_147;
              }
            }
          }

          v227 = v694;
          v228 = v639;
          sub_9319C8(v694, v639, type metadata accessor for Lyrics.Translation);
          v229 = v682;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v706 = v229;
          sub_92A200(v228, v220, v221, isUniquelyReferenced_nonNull_native);

          sub_931A30(v227, type metadata accessor for Lyrics.Translation);
          (*v673)(v699, v705);
          v682 = v706;
        }

        else
        {

          sub_931A30(v694, type metadata accessor for Lyrics.Translation);
          (*v673)(v216, v705);
        }

LABEL_148:
        v142 = v663;
        v192 = v676;
        v193 = v685;
        if (v685 == v676)
        {
          goto LABEL_151;
        }
      }
    }

    v78 = 0;
    v693 = _swiftEmptyArrayStorage;
    v142 = v663;
LABEL_151:

    v233 = OBJC_IVAR____TtC7LyricsX6Lyrics_translations;
    *(v702 + OBJC_IVAR____TtC7LyricsX6Lyrics_translations) = v693;

    v673 = sub_92CA20(_swiftEmptyArrayStorage);
    v234 = [v641 transliterations];
    sub_13C80(0, &qword_E21F08, MSVLyricsTransliteration_ptr);
    v235 = sub_AB9760();

    if (v235 >> 62)
    {
      v236 = sub_ABB060();
    }

    else
    {
      v236 = *(&dword_10 + (v235 & 0xFFFFFFFFFFFFFF8));
    }

    v141 = v659;
    v703 = v78;
    if (v236)
    {
      v674 = v233;
      v237 = 0;
      v699 = v235 & 0xC000000000000001;
      v676 = v235 & 0xFFFFFFFFFFFFFF8;
      v675 = (v235 + 32);
      v678 = (v640 + 16);
      v677 = (v640 + 8);
      v685 = _swiftEmptyArrayStorage;
      v694 = v235;
      v690 = v236;
      while (1)
      {
        while (1)
        {
          if (v699)
          {
            v238 = sub_ABAE20();
          }

          else
          {
            if (v237 >= *(v676 + 16))
            {
              goto LABEL_403;
            }

            v238 = v675[v237];
          }

          v239 = v238;
          v196 = __OFADD__(v237++, 1);
          if (v196)
          {
            goto LABEL_397;
          }

          v78 = [v238 linesMap];
          *&v706 = 0;
          sub_13C80(0, &qword_E21EE8, MSVLyricsLine_ptr);
          sub_AB8FE0();

          v240 = v706;
          if (v706)
          {
            break;
          }

          if (v237 == v236)
          {
            goto LABEL_184;
          }
        }

        v241 = v684;

        v81 = v239;
        v242 = v703;
        v243 = sub_930D44(v240, sub_930CDC, v241, v81);
        v703 = v242;
        if (v242)
        {

          v604 = v702;

          sub_12E1C(v604 + v606, &qword_E21E88, &qword_B38CE8);

          sub_12E1C(v604 + v634, &qword_E23930, &qword_B3AB40);
          sub_12E1C(v604 + v607, &qword_E21E98, &qword_B38D00);
          sub_12E1C(v604 + v141, &qword_E23930, &qword_B3AB40);
          sub_12E1C(v610 + v604, &qword_E21E98, &qword_B38D00);
          sub_12E1C(v604 + v624, &qword_E21E98, &qword_B38D00);
          sub_12E1C(v604 + v647, &qword_E21E98, &qword_B38D00);

          goto LABEL_432;
        }

        v244 = v243;

        v245 = [v81 language];
        sub_AB92A0();

        v246 = v698;
        sub_AB3560();
        v247 = v687;
        (*v678)(v687, v246, v705);
        v248 = [v81 language];
        v249 = sub_AB92A0();
        v251 = v250;

        v252 = [v81 isAutomaticallyCreated];
        v253 = v695;
        v254 = &v247[v695[5]];
        *v254 = v249;
        v254[1] = v251;
        v247[v253[6]] = v252;
        *&v247[v253[7]] = v244;
        sub_9319C8(v247, v688, type metadata accessor for Lyrics.Transliteration);
        v255 = v685;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v255 = sub_9269A0(0, *(v255 + 2) + 1, 1, v255, &qword_E22598, &qword_B397C8, type metadata accessor for Lyrics.Transliteration);
        }

        v257 = *(v255 + 2);
        v256 = *(v255 + 3);
        v258 = v698;
        if (v257 >= v256 >> 1)
        {
          v255 = sub_9269A0((v256 > 1), v257 + 1, 1, v255, &qword_E22598, &qword_B397C8, type metadata accessor for Lyrics.Transliteration);
        }

        *(v255 + 2) = v257 + 1;
        v259 = (*(v667 + 80) + 32) & ~*(v667 + 80);
        v685 = v255;
        sub_931E7C(v688, &v255[v259 + *(v667 + 72) * v257], type metadata accessor for Lyrics.Transliteration);
        sub_AB3590();
        v78 = sub_AB3530();
        v260 = *(v78 - 8);
        if ((*(v260 + 48))(v142, 1, v78) == 1)
        {

          sub_931A30(v687, type metadata accessor for Lyrics.Transliteration);
          (*v677)(v258, v705);
          sub_12E1C(v142, &qword_E21EC0, &qword_B38D20);
        }

        else
        {
          v261 = sub_AB3520();
          v263 = v262;
          (*(v260 + 8))(v142, v78);
          v78 = *(v680 + 16);
          v264 = *(v680 + 24);
          v265 = *(v264 + 16);
          if (v78)
          {

            sub_92BA74(v261, v263, v264 + 32, v265, (v78 + 16), v78 + 32);
            v267 = v266;

            if (v267)
            {
              goto LABEL_180;
            }
          }

          else
          {
            if (!v265)
            {
LABEL_180:

              sub_931A30(v687, type metadata accessor for Lyrics.Transliteration);
              (*v677)(v698, v705);
              goto LABEL_181;
            }

            v78 = v264 + 40;
            while (1)
            {
              v273 = *(v78 - 8) == v261 && *v78 == v263;
              if (v273 || (sub_ABB3C0() & 1) != 0)
              {
                break;
              }

              v78 += 16;
              if (!--v265)
              {
                goto LABEL_180;
              }
            }
          }

          v78 = type metadata accessor for Lyrics.Transliteration;
          v268 = v687;
          v269 = v635;
          sub_9319C8(v687, v635, type metadata accessor for Lyrics.Transliteration);
          v270 = v673;
          v271 = swift_isUniquelyReferenced_nonNull_native();
          *&v706 = v270;
          sub_92A06C(v269, v261, v263, v271);

          v272 = v268;
          v142 = v663;
          sub_931A30(v272, type metadata accessor for Lyrics.Transliteration);
          (*v677)(v698, v705);
          v673 = v706;
        }

LABEL_181:
        v141 = v659;
        v236 = v690;
        if (v237 == v690)
        {
          goto LABEL_184;
        }
      }
    }

    v685 = _swiftEmptyArrayStorage;
LABEL_184:

    v274 = v702;
    *(v702 + OBJC_IVAR____TtC7LyricsX6Lyrics_transliterations) = v685;
    v674 = *(v681 + 2);
    if (v674)
    {
      v275 = v697;
      v676 = &v681[(*(v697 + 80) + 32) & ~*(v697 + 80)];

      swift_beginAccess();
      swift_beginAccess();
      swift_beginAccess();
      v276 = 0;
      v677 = (v275 + 16);
      v694 = v640 + 8;
      v653 = v640 + 48;
      v629 = (v640 + 16);
      v663 = (v667 + 48);
      v675 = (v275 + 8);
      v649 = v275 + 56;
      v635 = (v275 + 48);
      v610 = (v275 + 32);
      v639 = (v666 + 48);
      v640 = (v640 + 32);
      v141 = v651;
      v78 = v701;
      v277 = v654;
      v278 = v705;
LABEL_189:
      if (v276 >= *(v681 + 2))
      {
        goto LABEL_399;
      }

      v279 = *(v697 + 72);
      v690 = v276;
      v699 = *(v697 + 16);
      (v699)(v277, v676 + v279 * v276, v78);
      v280 = v668;
      sub_AB35B0();
      v281 = sub_923BF4();
      v283 = v282;
      v142 = *v694;
      (*v694)(v280, v278);
      if (!v283)
      {
        goto LABEL_228;
      }

      if (!*(v682 + 2))
      {

        goto LABEL_228;
      }

      v284 = sub_2EBF88(v281, v283);
      v286 = v285;

      if ((v286 & 1) == 0)
      {
        goto LABEL_228;
      }

      v287 = *(v682 + 7) + *(v666 + 72) * v284;
      v288 = v638;
      sub_9319C8(v287, v638, type metadata accessor for Lyrics.Translation);
      sub_931E7C(v288, v652, type metadata accessor for Lyrics.Translation);
      v289 = *v653;
      v290 = v646;
      if ((*v653)(v646, 1, v278))
      {
        v291 = *(v686 + 3);
        if (v291[2])
        {
          v292 = v142;
          v293 = 0;
          v294 = 0;
LABEL_199:
          v298 = v291[4];
          v297 = v291[5];

          if (v293)
          {
            if (!v297)
            {
              v142 = v292;
LABEL_208:

LABEL_215:
              v678 = v142;
              v304 = v664;
              if (*(v652 + v664[6]))
              {
                v305 = v659;
                v306 = v702;
                v307 = v623;
                sub_15F84(v702 + v659, v623, &qword_E23930, &qword_B3AB40);
                if ((*v639)(v307, 1, v304) == 1)
                {
                  sub_12E1C(v307, &qword_E23930, &qword_B3AB40);
                  v308 = v622;
                  sub_931E7C(v652, v622, type metadata accessor for Lyrics.Translation);
                  v619(v308, 0, 1, v304);
                  swift_beginAccess();
                  v309 = v306 + v305;
                  v310 = v308;
                  goto LABEL_220;
                }

LABEL_226:
                sub_931A30(v652, type metadata accessor for Lyrics.Translation);
                sub_12E1C(v307, &qword_E23930, &qword_B3AB40);
              }

              else
              {
                v311 = v702;
                v307 = v621;
                sub_15F84(v702 + v634, v621, &qword_E23930, &qword_B3AB40);
                if ((*v639)(v307, 1, v304) != 1)
                {
                  goto LABEL_226;
                }

                sub_12E1C(v307, &qword_E23930, &qword_B3AB40);
                v312 = v622;
                sub_931E7C(v652, v622, type metadata accessor for Lyrics.Translation);
                v619(v312, 0, 1, v304);
                v313 = v634;
                swift_beginAccess();
                v309 = v311 + v313;
                v310 = v312;
LABEL_220:
                sub_160B4(v310, v309, &qword_E23930, &qword_B3AB40);
                swift_endAccess();
              }

              v142 = v678;
              goto LABEL_228;
            }

            if (v294 == v298 && v293 == v297)
            {

              v142 = v292;
            }

            else
            {
              v299 = sub_ABB3C0();

              v142 = v292;
              if ((v299 & 1) == 0)
              {
                goto LABEL_215;
              }
            }
          }

          else
          {
            v142 = v292;
            if (v297)
            {
              goto LABEL_208;
            }
          }
        }
      }

      else
      {
        v295 = v643;
        (*v629)(v643, v290, v278);
        v294 = sub_923BF4();
        v293 = v296;
        (v142)(v295, v278);
        v291 = *(v686 + 3);
        if (v291[2])
        {
          v292 = v142;
          goto LABEL_199;
        }

        if (v293)
        {
          goto LABEL_208;
        }
      }

      v300 = v646;
      if (v289(v646, 1, v278))
      {
        sub_923BF4();
        v302 = v301;
LABEL_212:
        if (!v302)
        {
          goto LABEL_215;
        }

        goto LABEL_213;
      }

      v314 = v643;
      (*v629)(v643, v300, v278);
      v315 = sub_923BF4();
      v317 = v316;
      (v142)(v314, v278);
      v318 = sub_923BF4();
      v302 = v319;
      if (!v317)
      {
        goto LABEL_212;
      }

      if (v319)
      {
        if (v315 == v318 && v317 == v319)
        {

          goto LABEL_208;
        }

        v446 = sub_ABB3C0();

        if (v446)
        {
          goto LABEL_215;
        }
      }

      else
      {
LABEL_213:
      }

      LOBYTE(v706) = 15;
      v303 = sub_931F68();
      if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v303))
      {
        goto LABEL_215;
      }

      sub_931A30(v652, type metadata accessor for Lyrics.Translation);
LABEL_228:
      v320 = v669;
      sub_AB35B0();
      sub_AB3590();
      (v142)(v320, v278);
      v321 = v277;
      v322 = sub_AB3530();
      v323 = *(v322 - 8);
      v81 = (v323 + 48);
      v324 = *(v323 + 48);
      if (v324(v141, 1, v322) == 1)
      {
        v78 = v701;
        (*v675)(v321, v701);
        sub_12E1C(v141, &qword_E21EC0, &qword_B38D20);
        v277 = v321;
        goto LABEL_187;
      }

      v698 = v324;
      v325 = sub_AB3520();
      v327 = v326;
      v329 = *(v323 + 8);
      v328 = v323 + 8;
      v687 = v329;
      (v329)(v141, v322);
      if (qword_E21CA0 != -1)
      {
        swift_once();
      }

      v330 = static Lyrics.scriptMap;
      v331 = v673;
      if (*(static Lyrics.scriptMap + 16))
      {
        v332 = sub_2EBF88(v325, v327);
        if (v333)
        {
          v334 = (*(v330 + 56) + 16 * v332);
          v325 = *v334;
          v335 = v334[1];

          v327 = v335;
        }
      }

      v688 = v328;
      if (!v331[2])
      {

LABEL_238:
        v346 = 1;
        v665(v661, 1, 1, v695);
        if (v331[2])
        {
          v347 = sub_2EBF88(1853120844, 0xE400000000000000);
          if (v348)
          {
            v349 = v670;
            sub_9319C8(v331[7] + *(v667 + 72) * v347, v670, type metadata accessor for Lyrics.Transliteration);
            v350 = v349;
            v346 = 0;
            goto LABEL_243;
          }

          v346 = 1;
        }

        v350 = v670;
LABEL_243:
        v351 = v695;
        v665(v350, v346, 1, v695);
        v345 = *v663;
        v352 = v661;
        if ((*v663)(v661, 1, v351) != 1)
        {
          sub_12E1C(v352, &qword_E21E98, &qword_B38D00);
        }

        goto LABEL_245;
      }

      v336 = sub_2EBF88(v325, v327);
      v338 = v337;

      if ((v338 & 1) == 0)
      {
        goto LABEL_238;
      }

      v339 = v667;
      v340 = v661;
      sub_9319C8(v331[7] + *(v667 + 72) * v336, v661, type metadata accessor for Lyrics.Transliteration);
      v341 = v695;
      v342 = v665;
      v665(v340, 0, 1, v695);
      v343 = v340;
      v344 = v670;
      sub_931E7C(v343, v670, type metadata accessor for Lyrics.Transliteration);
      v342(v344, 0, 1, v341);
      v345 = *(v339 + 48);
LABEL_245:
      v353 = v670;
      v354 = v695;
      if (v345(v670, 1, v695) == 1)
      {
        v277 = v654;
        v78 = v701;
        (*v675)(v654, v701);
        v355 = v353;
      }

      else
      {
        v356 = v662;
        sub_931E7C(v353, v662, type metadata accessor for Lyrics.Transliteration);
        v357 = v642;
        sub_15F84(v702 + v647, v642, &qword_E21E98, &qword_B38D00);
        if (v345(v357, 1, v354) == 1)
        {
          v648 = v322;
          v678 = v142;
          sub_12E1C(v357, &qword_E21E98, &qword_B38D00);
          v358 = v644;
          v141 = v701;
          v359 = v699;
          (v699)(v644, v654, v701);
          v360 = *v649;
          v361 = 1;
          (*v649)(v358, 0, 1, v141);
          v362 = v631;
          if (*(v681 + 2))
          {
            v363 = v637;
            v359(v637, v676, v141);
            v364 = v363;
            v361 = 0;
          }

          else
          {
            v364 = v637;
          }

          v360(v364, v361, 1, v141);
          v365 = *(v632 + 48);
          v366 = v644;
          sub_15F84(v644, v362, &qword_E21EB8, &qword_B38D18);
          sub_15F84(v364, v362 + v365, &qword_E21EB8, &qword_B38D18);
          v367 = *v635;
          if ((*v635)(v362, 1, v141) == 1)
          {
            sub_12E1C(v364, &qword_E21EB8, &qword_B38D18);
            sub_12E1C(v366, &qword_E21EB8, &qword_B38D18);
            v368 = v367(v362 + v365, 1, v141);
            v369 = v698;
            if (v368 == 1)
            {
              sub_12E1C(v362, &qword_E21EB8, &qword_B38D18);
              v370 = v648;
              goto LABEL_261;
            }

LABEL_258:
            sub_12E1C(v362, &qword_E21EB0, &qword_B38D10);
            v370 = v648;
            goto LABEL_269;
          }

          v371 = v618;
          sub_15F84(v362, v618, &qword_E21EB8, &qword_B38D18);
          if (v367(v362 + v365, 1, v141) == 1)
          {
            sub_12E1C(v637, &qword_E21EB8, &qword_B38D18);
            sub_12E1C(v644, &qword_E21EB8, &qword_B38D18);
            (*v675)(v371, v141);
            v369 = v698;
            goto LABEL_258;
          }

          v372 = v371;
          v373 = v614;
          (*v610)(v614, v362 + v365, v141);
          sub_93210C(&qword_E21F30, &type metadata accessor for Locale, &protocol conformance descriptor for Locale);
          LODWORD(v699) = sub_AB91C0();
          v374 = *v675;
          (*v675)(v373, v141);
          sub_12E1C(v637, &qword_E21EB8, &qword_B38D18);
          sub_12E1C(v644, &qword_E21EB8, &qword_B38D18);
          (v374)(v372, v141);
          sub_12E1C(v362, &qword_E21EB8, &qword_B38D18);
          v370 = v648;
          v369 = v698;
          if (v699)
          {
LABEL_261:
            v375 = v615;
            sub_AB3570();
            v376 = sub_AB34C0();
            v377 = *(v376 - 8);
            v378 = *(v377 + 48);
            if (v378(v375, 1, v376) == 1)
            {
              v379 = v375;
              v380 = &qword_E21E90;
              v381 = &unk_B38CF0;
LABEL_263:
              sub_12E1C(v379, v380, v381);
              goto LABEL_269;
            }

            sub_AB34A0();
            v699 = *(v377 + 8);
            (v699)(v375, v376);
            v607 = sub_AB9370();
            v383 = v382;

            v141 = v612;
            sub_AB35B0();
            v384 = v613;
            sub_AB3570();
            v678(v141, v705);
            if (v378(v384, 1, v376) == 1)
            {

              sub_12E1C(v384, &qword_E21E90, &unk_B38CF0);
              v369 = v698;
              v370 = v648;
              goto LABEL_269;
            }

            v606 = v383;
            sub_AB34A0();
            (v699)(v384, v376);
            v385 = sub_AB9370();
            v141 = v386;

            v387 = v611;
            sub_AB3540();
            v388 = sub_AB3510();
            v389 = *(v388 - 8);
            v390 = (*(v389 + 48))(v387, 1, v388);
            v370 = v648;
            if (v390 == 1)
            {

              sub_12E1C(v387, &qword_E21EA8, &qword_B38D08);
LABEL_268:
              v369 = v698;
              goto LABEL_269;
            }

            v699 = v385;
            sub_AB3500();
            (*(v389 + 8))(v387, v388);
            v447 = sub_AB9370();
            v449 = v448;

            v450 = v608;
            sub_AB35B0();
            v451 = v609;
            sub_AB3590();
            v678(v450, v705);
            v369 = v698;
            if ((v698)(v451, 1, v370) == 1)
            {

              v379 = v451;
              v380 = &qword_E21EC0;
              v381 = &qword_B38D20;
              goto LABEL_263;
            }

            v678 = v447;
            v452 = v141;
            sub_AB3520();
            (v687)(v451, v370);
            v453 = sub_AB9370();
            v455 = v454;

            if (qword_E21C98 != -1)
            {
              swift_once();
            }

            v456 = static Lyrics.chineseLanguages;
            v141 = sub_472F00(v607, v606, static Lyrics.chineseLanguages);

            if ((v141 & 1) == 0)
            {

              goto LABEL_268;
            }

            v457 = sub_472F00(v699, v452, v456);
            v369 = v698;
            if ((v457 & 1) == 0)
            {

              goto LABEL_269;
            }

            if (v453 == 1953390952 && v455 == 0xE400000000000000)
            {

              v278 = v705;
              v142 = v699;
LABEL_337:
              v459 = v662;
              if (v678 == (&loc_6B64 + 4) && v449 == 0xE200000000000000)
              {

                goto LABEL_345;
              }

              v460 = sub_ABB3C0();

              if (v460)
              {
LABEL_345:

                goto LABEL_346;
              }
            }

            else
            {
              v458 = sub_ABB3C0();

              v278 = v705;
              v142 = v699;
              if (v458)
              {
                goto LABEL_337;
              }

              v459 = v662;
            }

            if (v142 == 6649209 && v452 == 0xE300000000000000)
            {
              goto LABEL_345;
            }

            v465 = sub_ABB3C0();

            if (v465)
            {
LABEL_346:
              v461 = (v459 + v695[5]);
              v463 = *v461;
              v462 = v461[1];
              *&v706 = v463;
              *(&v706 + 1) = v462;
              *&v712 = 0x6E69796E6970;
              v464 = 0xE600000000000000;
            }

            else
            {
              v466 = (v459 + v695[5]);
              v468 = *v466;
              v467 = v466[1];
              *&v706 = v468;
              *(&v706 + 1) = v467;
              *&v712 = 0x676E69707475796ALL;
              v464 = 0xE800000000000000;
            }

            *(&v712 + 1) = v464;
            sub_931F14();
            if (sub_ABAB20())
            {
              goto LABEL_297;
            }

LABEL_321:
            sub_931A30(v662, type metadata accessor for Lyrics.Transliteration);
            v277 = v654;
            v78 = v701;
            (*v675)(v654, v701);
            v141 = v651;
            goto LABEL_188;
          }

LABEL_269:
          v391 = sub_923BF4();
          v393 = v392;
          v394 = *(v686 + 3);
          if (!v394[2])
          {
            if (!v392)
            {
              v398 = 1;
              v399 = v630;
              goto LABEL_283;
            }

            goto LABEL_276;
          }

          v395 = v391;
          v396 = v394[4];
          v397 = v394[5];

          if (v393)
          {
            if (v397)
            {
              if (v395 == v396 && v393 == v397)
              {

                v398 = 1;
              }

              else
              {
                v398 = sub_ABB3C0();
              }

LABEL_281:
              v399 = v630;
LABEL_282:

              goto LABEL_283;
            }

LABEL_276:
            v398 = 0;
            goto LABEL_281;
          }

          v399 = v630;
          if (v397)
          {
            v398 = 0;
            goto LABEL_282;
          }

          v398 = 1;
LABEL_283:
          sub_AB3590();
          if (v369(v399, 1, v370) == 1)
          {
            sub_12E1C(v399, &qword_E21EC0, &qword_B38D20);
            v400 = *(v680 + 24);
            v278 = v705;
            if (!v400[2])
            {
              goto LABEL_297;
            }

            v401 = 0;
            v142 = 0;
            goto LABEL_288;
          }

          v142 = sub_AB3520();
          v401 = v402;
          (v687)(v399, v370);
          v400 = *(v680 + 24);
          if (v400[2])
          {
            v278 = v705;
LABEL_288:
            v404 = v400[4];
            v403 = v400[5];

            if (v401)
            {
              if (v403)
              {
                if (v142 == v404 && v401 == v403)
                {

LABEL_297:
                  v405 = sub_92CC08(_swiftEmptyArrayStorage);
                  v406 = v729;
                  v688 = v729[2];
                  if (!v688)
                  {
LABEL_315:
                    v430 = v628;
                    sub_AB3570();
                    v431 = sub_AB34C0();
                    v432 = *(v431 - 8);
                    if ((*(v432 + 48))(v430, 1, v431) == 1)
                    {
                      sub_12E1C(v430, &qword_E21E90, &unk_B38CF0);
                    }

                    else
                    {
                      sub_AB34A0();
                      (*(v432 + 8))(v430, v431);
                    }

                    v142 = v702;
                    v433 = v625;
                    sub_AB3560();
                    v434 = v654;
                    v435 = v701;
                    (*v675)(v654, v701);
                    v436 = v695;
                    v437 = (v662 + v695[5]);
                    v439 = *v437;
                    v438 = v437[1];
                    v440 = v626;
                    v441 = v433;
                    v278 = v705;
                    (*v640)(v626, v441, v705);
                    v442 = (v440 + v436[5]);
                    *v442 = v439;
                    v442[1] = v438;
                    *(v440 + v436[6]) = 0;
                    *(v440 + v436[7]) = v405;
                    v277 = v434;
                    v78 = v435;
                    v81 = v665;
                    v665(v440, 0, 1, v436);
                    v443 = v624;
                    swift_beginAccess();

                    sub_160B4(v440, v142 + v443, &qword_E21E98, &qword_B38D00);
                    swift_endAccess();
                    v444 = v627;
                    sub_931E7C(v662, v627, type metadata accessor for Lyrics.Transliteration);
                    (v81)(v444, 0, 1, v436);
                    v445 = v647;
                    swift_beginAccess();
                    sub_160B4(v444, v142 + v445, &qword_E21E98, &qword_B38D00);
                    swift_endAccess();
                    v141 = v651;
                    goto LABEL_188;
                  }

                  v407 = 0;
                  v687 = v729 + ((*(v689 + 80) + 32) & ~*(v689 + 80));
                  v78 = v700;
                  v142 = v679;
                  v678 = v729;
LABEL_302:
                  if (v407 >= v406[2])
                  {
                    __break(1u);
LABEL_394:
                    __break(1u);
LABEL_395:
                    __break(1u);
LABEL_396:
                    __break(1u);
LABEL_397:
                    __break(1u);
LABEL_398:
                    __break(1u);
LABEL_399:
                    __break(1u);
LABEL_400:
                    __break(1u);
LABEL_401:
                    __break(1u);
LABEL_402:
                    __break(1u);
LABEL_403:
                    __break(1u);
LABEL_404:
                    v192 = sub_ABB060();
                    continue;
                  }

                  v414 = sub_9319C8(&v687[*(v689 + 72) * v407], v142, type metadata accessor for Lyrics.TextLine);
                  v415 = v142 + *(v78 + 52);
                  v416 = *(v415 + 8);
                  if (!v416)
                  {
                    goto LABEL_301;
                  }

                  v81 = *v415;
                  v698 = (*(v142 + *(v78 + 64)))(v414);
                  v699 = v417;
                  v141 = (*(v142 + *(v78 + 68)))();
                  (*(v142 + *(v78 + 72)))(&v712);
                  v78 = swift_isUniquelyReferenced_nonNull_native();
                  v727 = v405;
                  v142 = sub_2EBF88(v81, v416);
                  v419 = v405[2];
                  v420 = (v418 & 1) == 0;
                  v421 = v419 + v420;
                  if (__OFADD__(v419, v420))
                  {
                    goto LABEL_394;
                  }

                  v422 = v418;
                  if (v405[3] >= v421)
                  {
                    if (v78)
                    {
                      v78 = v700;
                      if ((v418 & 1) == 0)
                      {
                        goto LABEL_311;
                      }
                    }

                    else
                    {
                      sub_92AAC4();
                      v78 = v700;
                      if ((v422 & 1) == 0)
                      {
                        goto LABEL_311;
                      }
                    }
                  }

                  else
                  {
                    sub_9282F8(v421, v78);
                    v423 = sub_2EBF88(v81, v416);
                    if ((v422 & 1) != (v424 & 1))
                    {
                      goto LABEL_433;
                    }

                    v142 = v423;
                    v78 = v700;
                    if ((v422 & 1) == 0)
                    {
LABEL_311:
                      v405 = v727;
                      v727[(v142 >> 6) + 8] |= 1 << v142;
                      v425 = (v405[6] + 16 * v142);
                      *v425 = v81;
                      v425[1] = v416;
                      v426 = v405[7] + 88 * v142;
                      v427 = v699;
                      *v426 = v698;
                      *(v426 + 8) = v427;
                      *(v426 + 16) = v141;
                      *(v426 + 24) = v712;
                      *(v426 + 40) = v713;
                      *(v426 + 56) = v714;
                      *(v426 + 72) = v715;
                      v428 = v405[2];
                      v196 = __OFADD__(v428, 1);
                      v429 = v428 + 1;
                      if (v196)
                      {
                        goto LABEL_400;
                      }

                      v405[2] = v429;

LABEL_300:
                      v142 = v679;
                      v406 = v678;
LABEL_301:
                      ++v407;
                      sub_931A30(v142, type metadata accessor for Lyrics.TextLine);
                      if (v688 == v407)
                      {
                        goto LABEL_315;
                      }

                      goto LABEL_302;
                    }
                  }

                  v405 = v727;
                  v408 = v727[7] + 88 * v142;
                  v409 = *(v408 + 16);
                  v706 = *v408;
                  v707 = v409;
                  v411 = *(v408 + 48);
                  v410 = *(v408 + 64);
                  v412 = *(v408 + 32);
                  v711 = *(v408 + 80);
                  v709 = v411;
                  v710 = v410;
                  v708 = v412;
                  v413 = v699;
                  *v408 = v698;
                  *(v408 + 8) = v413;
                  *(v408 + 16) = v141;
                  *(v408 + 24) = v712;
                  *(v408 + 40) = v713;
                  *(v408 + 56) = v714;
                  *(v408 + 72) = v715;
                  sub_931EE4(&v706);
                  goto LABEL_300;
                }

                v142 = sub_ABB3C0();

                if (v398 & v142 & 1) != 0 || ((v398 ^ 1))
                {
                  goto LABEL_297;
                }

                goto LABEL_321;
              }
            }

            else if (!v403)
            {
              goto LABEL_297;
            }
          }

          else
          {
            v278 = v705;
            if (!v401)
            {
              goto LABEL_297;
            }
          }

          if ((v398 & 1) == 0)
          {
            goto LABEL_297;
          }

          goto LABEL_321;
        }

        sub_931A30(v356, type metadata accessor for Lyrics.Transliteration);
        v277 = v654;
        v78 = v701;
        (*v675)(v654, v701);
        v355 = v357;
      }

      sub_12E1C(v355, &qword_E21E98, &qword_B38D00);
      v141 = v651;
LABEL_187:
      v278 = v705;
LABEL_188:
      v276 = v690 + 1;
      if ((v690 + 1) == v674)
      {

        v274 = v702;
        goto LABEL_353;
      }

      goto LABEL_189;
    }

    break;
  }

LABEL_353:
  v142 = v672;

  swift_beginAccess();

  v470 = sub_930F54(v469);

  *(v274 + OBJC_IVAR____TtC7LyricsX6Lyrics_vocalistsType) = v470;
  v471 = v729;
  v274[6] = v729;
  v472 = *(v471 + 2);
  v703 = v471;
  if (v472)
  {
    v473 = v689;
    v474 = &v471[(*(v689 + 80) + 32) & ~*(v689 + 80)];
    sub_9319C8(v474, v142, type metadata accessor for Lyrics.TextLine);
    v705 = *(v473 + 72);

    v475 = 0;
    v78 = _swiftEmptyArrayStorage;
    v81 = v692;
    do
    {
      sub_9319C8(v474, v704, type metadata accessor for Lyrics.TextLine);
      if (v475 || (v476 = *v142, *v142 <= 7.0))
      {
        v480 = *v704;
        v481 = *(v142 + 8);
        if (*v704 - v481 > 7.0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v78 = sub_926858(0, *(v78 + 16) + 1, 1, v78);
          }

          v142 = *(v78 + 16);
          v482 = *(v78 + 24);
          if (v142 >= v482 >> 1)
          {
            v78 = sub_926858((v482 > 1), v142 + 1, 1, v78);
          }

          *(&v707 + 1) = &type metadata for Lyrics.InstrumentalLine;
          *&v708 = &protocol witness table for Lyrics.InstrumentalLine;
          v483 = swift_allocObject();
          *&v706 = v483;
          *(v483 + 16) = v475;
          *(v483 + 24) = v481 + 0.1;
          *(v483 + 32) = v480;
          *(v483 + 40) = v683;
          *(v78 + 16) = v142 + 1;
          sub_70DF8(&v706, v78 + 40 * v142 + 32);
          v196 = __OFADD__(v475++, 1);
          if (v196)
          {
            goto LABEL_401;
          }
        }
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v78 = sub_926858(0, *(v78 + 16) + 1, 1, v78);
        }

        v478 = *(v78 + 16);
        v477 = *(v78 + 24);
        if (v478 >= v477 >> 1)
        {
          v78 = sub_926858((v477 > 1), v478 + 1, 1, v78);
        }

        *(&v707 + 1) = &type metadata for Lyrics.InstrumentalLine;
        *&v708 = &protocol witness table for Lyrics.InstrumentalLine;
        v479 = swift_allocObject();
        *&v706 = v479;
        *(v479 + 16) = 0;
        *(v479 + 24) = 0;
        *(v479 + 32) = v476;
        *(v479 + 40) = v683;
        *(v78 + 16) = v478 + 1;
        sub_70DF8(&v706, v78 + 40 * v478 + 32);
        v475 = 1;
      }

      v484 = v691;
      sub_9319C8(v704, v691, type metadata accessor for Lyrics.TextLine);
      *(v484 + 16) = v475;
      sub_9319C8(v484, v692, type metadata accessor for Lyrics.TextLine);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v78 = sub_926858(0, *(v78 + 16) + 1, 1, v78);
      }

      v486 = *(v78 + 16);
      v485 = *(v78 + 24);
      if (v486 >= v485 >> 1)
      {
        v78 = sub_926858((v485 > 1), v486 + 1, 1, v78);
      }

      v141 = type metadata accessor for Lyrics.TextLine;
      sub_931A30(v704, type metadata accessor for Lyrics.TextLine);
      v142 = v672;
      sub_931A30(v672, type metadata accessor for Lyrics.TextLine);
      *(&v707 + 1) = v700;
      *&v708 = &protocol witness table for Lyrics.TextLine;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v706);
      sub_9319C8(v81, boxed_opaque_existential_0, type metadata accessor for Lyrics.TextLine);
      *(v78 + 16) = v486 + 1;
      sub_70DF8(&v706, v78 + 40 * v486 + 32);
      sub_931A30(v81, type metadata accessor for Lyrics.TextLine);
      v196 = __OFADD__(v475++, 1);
      if (v196)
      {
        goto LABEL_398;
      }

      sub_931E7C(v691, v142, type metadata accessor for Lyrics.TextLine);
      v474 += v705;
      --v472;
    }

    while (v472);
    v488 = *(v142 + 8);
    sub_931A30(v142, type metadata accessor for Lyrics.TextLine);
    v274 = v702;
  }

  else
  {

    v475 = 0;
    v78 = _swiftEmptyArrayStorage;
    v488 = 0;
  }

  v489 = [v641 songwriters];
  v490 = sub_AB9760();

  if (v490 >> 62)
  {
    v491 = sub_ABB060();
  }

  else
  {
    v491 = *(&dword_10 + (v490 & 0xFFFFFFFFFFFFFF8));
  }

  v492 = v633;
  if (!v491)
  {

LABEL_414:
    v274[4] = v696;
    v274[5] = v78;
    swift_beginAccess();
    swift_weakAssign();
    Lyrics.updateTransliterations()();
    v512 = v636;
    if (qword_E21CC0 != -1)
    {
      swift_once();
    }

    v513 = sub_AB4BC0();
    __swift_project_value_buffer(v513, static Logger.lyrics);
    v514 = swift_allocObject();
    *(v514 + 16) = v492;
    *(v514 + 24) = v512;
    v515 = swift_allocObject();
    v516 = v686;
    *(v515 + 16) = sub_931BB0;
    *(v515 + 24) = v516;
    v517 = swift_allocObject();
    v703 = v517;
    v518 = v680;
    *(v517 + 16) = sub_934024;
    *(v517 + 24) = v518;
    swift_retain_n();

    v705 = sub_AB4BA0();
    LODWORD(v704) = sub_AB9F50();
    v701 = swift_allocObject();
    *(v701 + 16) = 34;
    v700 = swift_allocObject();
    *(v700 + 16) = 8;
    v519 = swift_allocObject();
    *(v519 + 16) = sub_931AC8;
    *(v519 + 24) = v514;
    v520 = swift_allocObject();
    v699 = v520;
    *(v520 + 16) = sub_931BE8;
    *(v520 + 24) = v519;
    v698 = swift_allocObject();
    v698[16] = 34;
    v697 = swift_allocObject();
    *(v697 + 16) = 8;
    v521 = swift_allocObject();
    *(v521 + 16) = sub_931AD0;
    *(v521 + 24) = v274;
    v522 = swift_allocObject();
    v696 = v522;
    v522[2] = sub_93401C;
    v522[3] = v521;
    v694 = swift_allocObject();
    *(v694 + 16) = 34;
    v693 = swift_allocObject();
    *(v693 + 16) = 8;
    v523 = swift_allocObject();
    *(v523 + 16) = sub_931B08;
    *(v523 + 24) = v274;
    v524 = swift_allocObject();
    *(v524 + 16) = sub_93401C;
    *(v524 + 24) = v523;
    v692 = swift_allocObject();
    *(v692 + 16) = 34;
    v691 = swift_allocObject();
    *(v691 + 16) = 8;
    v525 = swift_allocObject();
    *(v525 + 16) = sub_931B40;
    *(v525 + 24) = v274;
    v526 = swift_allocObject();
    *(v526 + 16) = sub_93401C;
    *(v526 + 24) = v525;
    v690 = swift_allocObject();
    *(v690 + 16) = 34;
    v689 = swift_allocObject();
    *(v689 + 16) = 8;
    v527 = swift_allocObject();
    *(v527 + 16) = sub_931B78;
    *(v527 + 24) = v274;
    v528 = swift_allocObject();
    *(v528 + 16) = sub_93401C;
    *(v528 + 24) = v527;
    v688 = swift_allocObject();
    *(v688 + 16) = 34;
    v529 = swift_allocObject();
    *(v529 + 16) = 8;
    v530 = swift_allocObject();
    *(v530 + 16) = sub_931BCC;
    *(v530 + 24) = v515;
    v531 = swift_allocObject();
    *(v531 + 16) = sub_93401C;
    *(v531 + 24) = v530;
    v532 = swift_allocObject();
    *(v532 + 16) = 34;
    v533 = swift_allocObject();
    *(v533 + 16) = 8;
    v534 = swift_allocObject();
    v535 = v703;
    *(v534 + 16) = sub_934018;
    *(v534 + 24) = v535;
    v536 = swift_allocObject();
    *(v536 + 16) = sub_93401C;
    *(v536 + 24) = v534;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21F18, &qword_B38D30);
    v537 = swift_allocObject();
    *(v537 + 16) = xmmword_B0CE50;
    v538 = v701;
    *(v537 + 32) = sub_931BD4;
    *(v537 + 40) = v538;
    v539 = v700;
    *(v537 + 48) = sub_933F6C;
    *(v537 + 56) = v539;
    v540 = v699;
    *(v537 + 64) = sub_931C10;
    *(v537 + 72) = v540;
    v541 = v698;
    *(v537 + 80) = sub_933F6C;
    *(v537 + 88) = v541;
    v542 = v697;
    *(v537 + 96) = sub_933F6C;
    *(v537 + 104) = v542;
    v543 = v696;
    *(v537 + 112) = sub_933FC0;
    *(v537 + 120) = v543;
    v544 = v694;
    *(v537 + 128) = sub_933F6C;
    *(v537 + 136) = v544;
    v545 = v693;
    *(v537 + 144) = sub_933F6C;
    *(v537 + 152) = v545;
    *(v537 + 160) = sub_933FC0;
    *(v537 + 168) = v524;
    v546 = v692;
    *(v537 + 176) = sub_933F6C;
    *(v537 + 184) = v546;
    v547 = v691;
    *(v537 + 192) = sub_933F6C;
    *(v537 + 200) = v547;
    *(v537 + 208) = sub_933FC0;
    *(v537 + 216) = v526;
    v548 = v690;
    *(v537 + 224) = sub_933F6C;
    *(v537 + 232) = v548;
    v549 = v689;
    *(v537 + 240) = sub_933F6C;
    *(v537 + 248) = v549;
    *(v537 + 256) = sub_933FC0;
    *(v537 + 264) = v528;
    v550 = v688;
    *(v537 + 272) = sub_933F6C;
    *(v537 + 280) = v550;
    *(v537 + 288) = sub_933F6C;
    *(v537 + 296) = v529;
    *(v537 + 304) = sub_933FC0;
    *(v537 + 312) = v531;
    *(v537 + 320) = sub_933F6C;
    *(v537 + 328) = v532;
    *(v537 + 336) = sub_933F6C;
    *(v537 + 344) = v533;
    *(v537 + 352) = sub_933FC0;
    *(v537 + 360) = v536;
    swift_setDeallocating();
    sub_925F2C();
    v551 = v705;
    if (os_log_type_enabled(v705, v704))
    {
      v552 = swift_slowAlloc();
      v703 = swift_slowAlloc();
      v726 = v703;
      *v552 = 136447746;
      v724 = v633;
      v725 = v636;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21F20, &qword_B38D38);
      v553 = sub_AB9350();
      v555 = sub_927078(v553, v554, &v726);

      *(v552 + 4) = v555;
      *(v552 + 12) = 2082;
      v556 = v702;
      v557 = v702 + OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTranslation;
      swift_beginAccess();
      v558 = *(v666 + 48);
      v666 += 48;
      v701 = v558;
      v559 = v558(v557, 1, v664);
      v560 = 0;
      v561 = 0;
      if (!v559)
      {
        v560 = *&v557[v664[5]];
      }

      v722 = v560;
      v723 = v561;
      v562 = sub_AB9350();
      v564 = sub_927078(v562, v563, &v726);

      *(v552 + 14) = v564;
      *(v552 + 22) = 2082;
      v565 = v556 + OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTransliteration;
      swift_beginAccess();
      v566 = *(v667 + 48);
      v567 = v695;
      v568 = v566(v565, 1, v695);
      v569 = 0;
      v570 = 0;
      if (!v568)
      {
        v569 = *(v565 + v567[5]);
      }

      v720 = v569;
      v721 = v570;
      v571 = sub_AB9350();
      v573 = sub_927078(v571, v572, &v726);

      *(v552 + 24) = v573;
      *(v552 + 32) = 2082;
      v574 = v556 + OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration;
      swift_beginAccess();
      v575 = v566(v574, 1, v567);
      v576 = 0;
      v577 = 0;
      if (!v575)
      {
        v576 = *(v574 + v567[5]);
      }

      v718 = v576;
      v719 = v577;
      v578 = sub_AB9350();
      v580 = sub_927078(v578, v579, &v726);

      *(v552 + 34) = v580;
      *(v552 + 42) = 2082;
      v581 = v556 + OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation;
      swift_beginAccess();
      v582 = v664;
      v583 = (v701)(v581, 1, v664);
      v584 = 0;
      v585 = 0;
      v586 = v556;
      if (!v583)
      {
        v584 = *(v581 + v582[5]);
      }

      v716 = v584;
      v717 = v585;
      v587 = sub_AB9350();
      v589 = sub_927078(v587, v588, &v726);

      *(v552 + 44) = v589;
      *(v552 + 52) = 2082;
      swift_beginAccess();

      v591 = sub_931CB8(v590);
      v593 = v592;

      v594 = sub_927078(v591, v593, &v726);

      *(v552 + 54) = v594;
      *(v552 + 62) = 2082;
      swift_beginAccess();

      v596 = sub_931CB8(v595);
      v598 = v597;

      v599 = sub_927078(v596, v598, &v726);

      *(v552 + 64) = v599;
      v600 = v705;
      _os_log_impl(&dword_0, v705, v704, "Initialized lyrics with identifier %{public}s, preferredTranslation: %{public}s, preferredTransliteration: %{public}s, currentTransliteration: %{public}s, currentTranslation: %{public}s preferredLanguageCodes: %{public}s, preferredScriptCodes: %{public}s", v552, 0x48u);
      swift_arrayDestroy();
    }

    else
    {

      v586 = v702;
    }

    sub_12E1C(v646, &qword_E21E88, &qword_B38CE8);
    return v586;
  }

  v493 = [v641 songwriters];
  v494 = sub_AB9760();

  if (!(v494 >> 62))
  {
    v495 = *(&dword_10 + (v494 & 0xFFFFFFFFFFFFFF8));
    if (v495)
    {
      goto LABEL_381;
    }

LABEL_408:

    v505 = _swiftEmptyArrayStorage;
LABEL_409:
    v509 = swift_isUniquelyReferenced_nonNull_native();
    v728 = v78;
    if ((v509 & 1) == 0)
    {
      v78 = sub_926858(0, *(v78 + 16) + 1, 1, v78);
      v728 = v78;
    }

    v510 = *(v78 + 16);
    v511 = *(v78 + 24);
    if (v510 >= v511 >> 1)
    {
      v602 = *(v78 + 16);
      v78 = sub_926858((v511 > 1), v510 + 1, 1, v78);
      v510 = v602;
      v492 = v633;
      v728 = v78;
    }

    *&v706 = v475;
    *(&v706 + 1) = v488;
    *&v707 = 0x7FF0000000000000;
    BYTE8(v707) = v683;
    *&v708 = v505;
    sub_92C668(v510, &v706, &v728);
    v728 = v78;
    goto LABEL_414;
  }

  v495 = sub_ABB060();
  if (!v495)
  {
    goto LABEL_408;
  }

LABEL_381:
  *&v706 = _swiftEmptyArrayStorage;
  sub_925EB4(v495);
  if ((v495 & 0x8000000000000000) == 0)
  {
    v496 = 0;
    v497 = v494;
    v704 = (v494 & 0xC000000000000001);
    v705 = v494;
    v498 = v495;
    do
    {
      if (v704)
      {
        v499 = sub_ABAE20();
      }

      else
      {
        v499 = *(v497 + 8 * v496 + 32);
      }

      v500 = v499;
      v501 = [v499 name];
      v502 = sub_AB92A0();
      v504 = v503;

      v505 = v706;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_927620(0, v505[2] + 1, 1);
        v505 = v706;
      }

      v507 = v505[2];
      v506 = v505[3];
      if (v507 >= v506 >> 1)
      {
        sub_927620((v506 > 1), v507 + 1, 1);
        v505 = v706;
      }

      ++v496;
      v505[2] = v507 + 1;
      v508 = &v505[2 * v507];
      v508[4] = v502;
      v508[5] = v504;
      v274 = v702;
      v497 = v705;
    }

    while (v498 != v496);

    v492 = v633;
    goto LABEL_409;
  }

LABEL_429:
  __break(1u);
LABEL_430:

  v603 = v702;

  sub_12E1C(v603 + v606, &qword_E21E88, &qword_B38CE8);

  sub_12E1C(v603 + v634, &qword_E23930, &qword_B3AB40);
  sub_12E1C(v603 + v607, &qword_E21E98, &qword_B38D00);
  sub_12E1C(v603 + v659, &qword_E23930, &qword_B3AB40);
  sub_12E1C(v610 + v603, &qword_E21E98, &qword_B38D00);
  sub_12E1C(v603 + v624, &qword_E21E98, &qword_B38D00);
  sub_12E1C(v603 + v647, &qword_E21E98, &qword_B38D00);
LABEL_432:

  swift_deallocPartialClassInstance();
  __break(1u);
LABEL_433:
  result = sub_ABB4C0();
  __break(1u);
  return result;
}