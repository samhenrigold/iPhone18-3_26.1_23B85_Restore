void sub_1890655E0(id a1, unsigned int a2)
{
  if (((a2 >> 20) & 3) != 3)
  {
  }
}

id sub_18906566C(uint64_t a1)
{
  v2 = objc_opt_self();
  if (qword_1EA92E9F8 != -1)
  {
    swift_once();
  }

  v3 = sub_18A4A7258();
  if (qword_1EA92EA10 != -1)
  {
    swift_once();
  }

  v4 = sub_18A4A7258();
  v5 = [v2 _defineCGFloatTraitWithName_identifier_defaultValue_affectsColorAppearance_defaultValueRepresentsUnspecified_isPrivate_placeholderToken_];

  return v5;
}

void _sSo17UITraitCollectionC5UIKitE40_typesettingLanguageAwareLineHeightRatioAC013UITypesettingefghI0Ovg_0(uint64_t a1@<X8>)
{
  if (qword_1ED491B40 != -1)
  {
    swift_once();
  }

  if (qword_1ED491AF0 != -1)
  {
    swift_once();
  }

  v3 = off_1ED491B48;
  os_unfair_lock_lock(*(off_1ED491B48 + 2));
  sub_18901D174(&type metadata for UITraitTypesettingLanguageAwareLineHeightRatio, sub_18906566C, 0);
  os_unfair_lock_unlock(v3[2]);
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939088, &unk_18A657B60);
  v4 = sub_188A74A44();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [v1 _valueForCGFloatTraitToken_];
  v6 = v5;
  swift_unknownObjectRelease();
  if (*&v6 == -1.0)
  {
    v7 = 1;
    *&v6 = 0.0;
  }

  else
  {
    CTGetDefaultLanguageAwareLineHeightRatio();
    if (*&v6 == v8)
    {
      v7 = 1;
      v6 = 2;
    }

    else if (fabs(*&v6) >= 2.22044605e-16)
    {
      v7 = 0;
    }

    else
    {
      v7 = 1;
      v6 = 1;
    }
  }

  *a1 = *&v6;
  *(a1 + 8) = v7;
}

id sub_189065940(uint64_t a1, char a2)
{
  if (a2)
  {
    if (*&a1 == 0.0)
    {
      v2 = -1.0;
    }

    else
    {
      v2 = 0.0;
      if (a1 != 1)
      {
        CTGetDefaultLanguageAwareLineHeightRatio();
        v2 = v3;
      }
    }
  }

  else
  {
    v2 = *&a1;
  }

  if (qword_1ED491B40 != -1)
  {
    swift_once();
  }

  if (qword_1ED491AF0 != -1)
  {
    swift_once();
  }

  v4 = off_1ED491B48;
  os_unfair_lock_lock(*(off_1ED491B48 + 2));
  sub_18901D174(&type metadata for UITraitTypesettingLanguageAwareLineHeightRatio, sub_18906566C, 0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  os_unfair_lock_unlock(v4[2]);
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939088, &unk_18A657B60);
  v6 = sub_188A74A44();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v7 = [ObjCClassFromMetadata _traitCollectionWithCGFloatValue_forTraitToken_];
  swift_unknownObjectRelease();
  return v7;
}

void sub_189065B48(uint64_t a1, SEL *a2, uint64_t *a3, void *a4)
{
  v6 = [objc_opt_self() *a2];
  v7 = sub_18A4A7288();
  v9 = v8;

  *a3 = v7;
  *a4 = v9;
}

double static UITraitTypesettingLanguageAwareLineHeightRatio._customRawValue(for:)(_BYTE *a1)
{
  v1 = *a1;
  if (a1[8] != 1)
  {
    return *a1;
  }

  if (!v1)
  {
    return -1.0;
  }

  result = 0.0;
  if (v1 != 1)
  {
    CTGetDefaultLanguageAwareLineHeightRatio();
  }

  return result;
}

void static UITraitTypesettingLanguageAwareLineHeightRatio._value(from:)(uint64_t a1@<X8>, double a2@<D0>)
{
  if (a2 == -1.0)
  {
    *a1 = 0;
LABEL_5:
    *(a1 + 8) = 1;
    goto LABEL_6;
  }

  CTGetDefaultLanguageAwareLineHeightRatio();
  if (v4 == a2)
  {
    *a1 = 2;
    goto LABEL_5;
  }

  if (fabs(a2) >= 2.22044605e-16)
  {
    *a1 = a2;
    *(a1 + 8) = 0;
  }

  else
  {
    *a1 = 1;
    *(a1 + 8) = 1;
  }

LABEL_6:
  *(a1 + 9) = 0;
}

void sub_189065D14(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v2 = *a1;
  if (*(a1 + 8) == 1)
  {
    if (v2)
    {
      v3 = 0;
      if (v2 != 1)
      {
        CTGetDefaultLanguageAwareLineHeightRatio();
        *a2 = v5;
        return;
      }
    }

    else
    {
      v3 = 0xBFF0000000000000;
    }

    *a2 = v3;
  }

  else
  {
    *a2 = v2;
  }
}

uint64_t UIMutableTraits._typesettingLanguageAwareLineHeightRatio.setter(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  v5 = *a1;
  v6 = v3;
  return (*(a3 + 232))(&v5, &type metadata for UITraitTypesettingLanguageAwareLineHeightRatio, &type metadata for UITraitTypesettingLanguageAwareLineHeightRatio, &protocol witness table for UITraitTypesettingLanguageAwareLineHeightRatio, a2, a3);
}

void (*UIMutableTraits._typesettingLanguageAwareLineHeightRatio.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x38uLL);
  }

  *a1 = v7;
  v7[5] = a3;
  v7[6] = v3;
  v7[4] = a2;
  (*(a3 + 224))(&type metadata for UITraitTypesettingLanguageAwareLineHeightRatio, &type metadata for UITraitTypesettingLanguageAwareLineHeightRatio, &protocol witness table for UITraitTypesettingLanguageAwareLineHeightRatio, a2, a3);
  return sub_189065EE8;
}

void sub_189065EE8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 32);
  *v1 = *(*a1 + 16);
  v1[8] = v2;
  (*(v3 + 232))(v1, &type metadata for UITraitTypesettingLanguageAwareLineHeightRatio, &type metadata for UITraitTypesettingLanguageAwareLineHeightRatio, &protocol witness table for UITraitTypesettingLanguageAwareLineHeightRatio, v4);

  free(v1);
}

BOOL static UITypesettingLanguageAwareLineHeightRatio.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) == 1)
  {
    if (v2 == 0.0)
    {
      if (v3 == 0.0)
      {
        v6 = *(a2 + 8);
      }

      else
      {
        LOBYTE(v6) = 0;
      }

      if (v6)
      {
        return 1;
      }
    }

    else if (*&v2 == 1)
    {
      if (*&v3 == 1)
      {
        v4 = *(a2 + 8);
      }

      else
      {
        v4 = 0;
      }

      if (v4)
      {
        return 1;
      }
    }

    else
    {
      if (*&v3 > 1uLL)
      {
        v7 = *(a2 + 8);
      }

      else
      {
        v7 = 0;
      }

      if (v7)
      {
        return 1;
      }
    }
  }

  else if ((*(a2 + 8) & 1) == 0)
  {
    return v2 == v3;
  }

  return 0;
}

BOOL sub_189065FE0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) == 1)
  {
    if (v2 == 0.0)
    {
      if (v3 == 0.0)
      {
        v6 = *(a2 + 8);
      }

      else
      {
        LOBYTE(v6) = 0;
      }

      if (v6)
      {
        return 1;
      }
    }

    else if (*&v2 == 1)
    {
      if (*&v3 == 1)
      {
        v4 = *(a2 + 8);
      }

      else
      {
        v4 = 0;
      }

      if (v4)
      {
        return 1;
      }
    }

    else
    {
      if (*&v3 > 1uLL)
      {
        v7 = *(a2 + 8);
      }

      else
      {
        v7 = 0;
      }

      if (v7)
      {
        return 1;
      }
    }
  }

  else if ((*(a2 + 8) & 1) == 0)
  {
    return v2 == v3;
  }

  return 0;
}

void sub_189066080(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1890689F4(&qword_1EA92E8A8, type metadata accessor for _Glass._IntelligenceLightHandle, &protocol conformance descriptor for _Glass._IntelligenceLightHandle);
  sub_18A4A2C08();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_189066164()
{
  swift_getKeyPath();
  sub_1890689F4(&qword_1EA92E8A8, type metadata accessor for _Glass._IntelligenceLightHandle, &protocol conformance descriptor for _Glass._IntelligenceLightHandle);
  sub_18A4A2C08();

  swift_beginAccess();
  return *(v0 + 16);
}

uint64_t type metadata accessor for _Glass._IntelligenceLightHandle(uint64_t a1)
{
  result = qword_1EA92E898;
  if (!qword_1EA92E898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_189066264(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 16) == v2)
  {
    *(v1 + 16) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1890689F4(&qword_1EA92E8A8, type metadata accessor for _Glass._IntelligenceLightHandle, &protocol conformance descriptor for _Glass._IntelligenceLightHandle);
    sub_18A4A2BF8();
  }
}

uint64_t (*sub_1890663A0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
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
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCV5UIKit6_Glass24_IntelligenceLightHandle___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1890689F4(&qword_1EA92E8A8, type metadata accessor for _Glass._IntelligenceLightHandle, &protocol conformance descriptor for _Glass._IntelligenceLightHandle);
  sub_18A4A2C08();

  *v4 = v1;
  swift_getKeyPath();
  sub_18A4A2C28();

  v4[7] = sub_188F16C00(v4);
  return sub_1890664D8;
}

void sub_189066534(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1890689F4(&qword_1EA92E8A8, type metadata accessor for _Glass._IntelligenceLightHandle, &protocol conformance descriptor for _Glass._IntelligenceLightHandle);
  sub_18A4A2C08();

  swift_beginAccess();
  *a2 = *(v3 + 17);
}

uint64_t sub_189066618()
{
  swift_getKeyPath();
  sub_1890689F4(&qword_1EA92E8A8, type metadata accessor for _Glass._IntelligenceLightHandle, &protocol conformance descriptor for _Glass._IntelligenceLightHandle);
  sub_18A4A2C08();

  swift_beginAccess();
  return *(v0 + 17);
}

void sub_1890666CC(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 17) == v2)
  {
    *(v1 + 17) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1890689F4(&qword_1EA92E8A8, type metadata accessor for _Glass._IntelligenceLightHandle, &protocol conformance descriptor for _Glass._IntelligenceLightHandle);
    sub_18A4A2BF8();
  }
}

uint64_t (*sub_189066808(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
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
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCV5UIKit6_Glass24_IntelligenceLightHandle___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1890689F4(&qword_1EA92E8A8, type metadata accessor for _Glass._IntelligenceLightHandle, &protocol conformance descriptor for _Glass._IntelligenceLightHandle);
  sub_18A4A2C08();

  *v4 = v1;
  swift_getKeyPath();
  sub_18A4A2C28();

  v4[7] = sub_1890664E4(v4);
  return sub_189066940;
}

void sub_18906694C(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  swift_getKeyPath();
  sub_18A4A2C18();

  free(v3);
}

uint64_t _Glass._IntelligenceLightHandle.__allocating_init(fillLightVisible:edgeLightVisible:)(char a1, char a2)
{
  v4 = swift_allocObject();
  sub_18A4A2C38();
  *(v4 + 16) = a1;
  *(v4 + 17) = a2;
  return v4;
}

uint64_t _Glass._IntelligenceLightHandle.init(fillLightVisible:edgeLightVisible:)(uint64_t a1, char a2)
{
  v4 = a1;
  sub_18A4A2C38();
  *(v2 + 16) = v4;
  *(v2 + 17) = a2;
  return v2;
}

uint64_t sub_189066A84()
{
  swift_getKeyPath();
  sub_1890689F4(&qword_1EA92E8A8, type metadata accessor for _Glass._IntelligenceLightHandle, &protocol conformance descriptor for _Glass._IntelligenceLightHandle);
  sub_18A4A2C08();

  swift_beginAccess();
  sub_18A4A88A8();
  swift_getKeyPath();
  sub_18A4A2C08();

  swift_beginAccess();
  return sub_18A4A88A8();
}

unint64_t _Glass._IntelligenceLightHandle.State.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

void sub_189066BC8(char *a1@<X8>)
{
  swift_getKeyPath();
  sub_1890689F4(&qword_1EA92E8A8, type metadata accessor for _Glass._IntelligenceLightHandle, &protocol conformance descriptor for _Glass._IntelligenceLightHandle);
  sub_18A4A2C08();

  swift_beginAccess();
  if (*(v1 + 17))
  {
    v3 = 2;
  }

  else
  {
    swift_getKeyPath();
    sub_18A4A2C08();

    swift_beginAccess();
    v3 = *(v1 + 16);
  }

  *a1 = v3;
}

void sub_189066CE4(_BYTE *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *a1 != 0;
  swift_beginAccess();
  if ((v4 ^ *(v2 + 16)))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1890689F4(&qword_1EA92E8A8, type metadata accessor for _Glass._IntelligenceLightHandle, &protocol conformance descriptor for _Glass._IntelligenceLightHandle);
    sub_18A4A2BF8();
  }

  else
  {
    *(v2 + 16) = v3 != 0;
  }

  swift_beginAccess();
  if (((v3 == 2) ^ *(v2 + 17)))
  {
    v6 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v6);
    sub_1890689F4(&qword_1EA92E8A8, type metadata accessor for _Glass._IntelligenceLightHandle, &protocol conformance descriptor for _Glass._IntelligenceLightHandle);
    sub_18A4A2BF8();
  }

  else
  {
    *(v2 + 17) = v3 == 2;
  }
}

void (*sub_189066F20(uint64_t a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  sub_189066BC8((a1 + 8));
  return sub_189066F74;
}

void sub_189066F74(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 8);
    v2 = &v3;
  }

  else
  {
    v4 = *(a1 + 8);
    v2 = &v4;
  }

  sub_189066CE4(v2);
}

uint64_t _Glass._IntelligenceLightHandle.__allocating_init(initialState:)(unsigned __int8 *a1)
{
  v2 = swift_allocObject();
  LODWORD(a1) = *a1;
  sub_18A4A2C38();
  *(v2 + 16) = a1 != 0;
  *(v2 + 17) = a1 == 2;
  return v2;
}

uint64_t _Glass._IntelligenceLightHandle.init(initialState:)(unsigned __int8 *a1)
{
  v2 = *a1;
  sub_18A4A2C38();
  *(v1 + 16) = v2 != 0;
  *(v1 + 17) = v2 == 2;
  return v1;
}

uint64_t _Glass._IntelligenceLightHandle.deinit()
{
  v1 = OBJC_IVAR____TtCV5UIKit6_Glass24_IntelligenceLightHandle___observationRegistrar;
  v2 = sub_18A4A2C48();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t _Glass._IntelligenceLightHandle.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCV5UIKit6_Glass24_IntelligenceLightHandle___observationRegistrar;
  v2 = sub_18A4A2C48();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_189067168()
{
  sub_18A4A8888();
  swift_getKeyPath();
  sub_1890689F4(&qword_1EA92E8A8, type metadata accessor for _Glass._IntelligenceLightHandle, &protocol conformance descriptor for _Glass._IntelligenceLightHandle);
  sub_18A4A2C08();

  swift_beginAccess();
  sub_18A4A88A8();
  swift_getKeyPath();
  sub_18A4A2C08();

  swift_beginAccess();
  sub_18A4A88A8();
  return sub_18A4A88E8();
}

uint64_t sub_1890672DC()
{
  sub_18A4A8888();
  sub_189066A84();
  return sub_18A4A88E8();
}

double _Glass._GlassVariant.intelligenceLight(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v35 = a2;
  v5 = type metadata accessor for _Glass._GlassVariant(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v7;
  v8 = objc_opt_self();
  v34 = [v8 sharedLight];
  v33 = [v8 sharedShimmeringLight];
  v9 = sub_1890872F0(v33, 0.4);
  KeyPath = swift_getKeyPath();
  type metadata accessor for _IntelligenceLightSourceFillProvider();
  v32 = v11;
  v12 = swift_allocObject();
  v12[2] = v9;
  v12[3] = a1;
  v12[4] = KeyPath;

  v13 = sub_189086FA0(2.0, 3.0, 1.25);
  v14 = sub_1890871A4(2.0);

  v15 = swift_getKeyPath();
  v16 = swift_allocObject();
  v16[2] = v14;
  v16[3] = a1;
  v16[4] = v15;
  v37 = v12;
  sub_188B90950(v3, v7);
  v30 = sub_18A4A2F58();
  v17 = *(v30 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v31 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = &v28 - v31;
  v28 = sub_1890689F4(&qword_1EA92EA68, type metadata accessor for _IntelligenceLightSourceFillProvider, &unk_18A660BA8);
  sub_1890689F4(&qword_1EA92EA70, type metadata accessor for _IntelligenceLightSourceFillProvider, &unk_18A660B68);

  v29 = v14;

  v20 = v36;
  sub_18A4A2E08();
  v21 = *(v17 + 40);
  v22 = v30;
  v21(v20, v19, v30);

  v37 = v16;
  v23 = v20;
  v24 = v35;
  v25 = sub_188B90950(v23, v35);
  MEMORY[0x1EEE9AC00](v25);
  v26 = &v28 - v31;
  sub_18A4A2E18();

  v21(v24, v26, v22);
  sub_188EA974C(v36);

  return result;
}

double _Glass._GlassVariant.intelligenceLight(_:lightSource:shimmeringLightSource:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v33 = a2;
  v5 = type metadata accessor for _Glass._GlassVariant(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v7;
  v9 = sub_1890872F0(v8, 0.4);
  KeyPath = swift_getKeyPath();
  type metadata accessor for _IntelligenceLightSourceFillProvider();
  v30 = v11;
  v12 = swift_allocObject();
  v12[2] = v9;
  v12[3] = a1;
  v12[4] = KeyPath;

  v13 = sub_189086FA0(2.0, 3.0, 1.25);
  v14 = sub_1890871A4(2.0);

  v15 = swift_getKeyPath();
  v16 = swift_allocObject();
  v16[2] = v14;
  v16[3] = a1;
  v16[4] = v15;
  v35 = v12;
  sub_188B90950(v3, v7);
  v31 = sub_18A4A2F58();
  v17 = *(v31 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v32 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = &v28 - v32;
  v28 = sub_1890689F4(&qword_1EA92EA68, type metadata accessor for _IntelligenceLightSourceFillProvider, &unk_18A660BA8);
  sub_1890689F4(&qword_1EA92EA70, type metadata accessor for _IntelligenceLightSourceFillProvider, &unk_18A660B68);

  v29 = v14;

  v20 = v34;
  sub_18A4A2E08();
  v21 = *(v17 + 40);
  v22 = v31;
  v21(v20, v19, v31);

  v35 = v16;
  v23 = v20;
  v24 = v33;
  v25 = sub_188B90950(v23, v33);
  MEMORY[0x1EEE9AC00](v25);
  v26 = &v28 - v32;
  sub_18A4A2E18();

  v21(v24, v26, v22);
  sub_188EA974C(v34);

  return result;
}

id sub_1890679D0()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  type metadata accessor for _IntelligenceLightSourceFillProvider.TransitionView();
  v5 = v4;
  v6 = objc_allocWithZone(v4);
  *&v6[OBJC_IVAR____TtCC5UIKitP33_1224E733E1875C87E73DF2A91211E8CE36_IntelligenceLightSourceFillProvider14TransitionView_lightSourceView] = 0;
  *&v6[OBJC_IVAR____TtCC5UIKitP33_1224E733E1875C87E73DF2A91211E8CE36_IntelligenceLightSourceFillProvider14TransitionView_lightSource] = v2;
  *&v6[OBJC_IVAR____TtCC5UIKitP33_1224E733E1875C87E73DF2A91211E8CE36_IntelligenceLightSourceFillProvider14TransitionView_handle] = v1;
  *&v6[OBJC_IVAR____TtCC5UIKitP33_1224E733E1875C87E73DF2A91211E8CE36_IntelligenceLightSourceFillProvider14TransitionView_visibilityKeyPath] = v3;
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = v2;

  return objc_msgSendSuper2(&v9, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
}

uint64_t sub_189067A80(uint64_t a1)
{
  v2 = v1;
  v3 = [*(v1 + 16) identifier];
  sub_18A4A7288();

  sub_18A4A7348();

  MEMORY[0x18CFE37E0](*(v2 + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B008, &qword_18A660BE8);
  return sub_18A4A71A8();
}

void sub_189067B40()
{
  v31.receiver = v0;
  v31.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v31, sel_layoutSubviews);
  aBlock = *&v0[OBJC_IVAR____TtCC5UIKitP33_1224E733E1875C87E73DF2A91211E8CE36_IntelligenceLightSourceFillProvider14TransitionView_handle];

  swift_getAtKeyPath();

  v1 = OBJC_IVAR____TtCC5UIKitP33_1224E733E1875C87E73DF2A91211E8CE36_IntelligenceLightSourceFillProvider14TransitionView_lightSourceView;
  v2 = *&v0[OBJC_IVAR____TtCC5UIKitP33_1224E733E1875C87E73DF2A91211E8CE36_IntelligenceLightSourceFillProvider14TransitionView_lightSourceView];
  if (v30 == 1)
  {
    if (v2)
    {
      return;
    }

    v3 = *&v0[OBJC_IVAR____TtCC5UIKitP33_1224E733E1875C87E73DF2A91211E8CE36_IntelligenceLightSourceFillProvider14TransitionView_lightSource];
    [v0 bounds];
    v4 = [v3 _createLightSourceViewWithFrame_];
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v6 = v4;

    v7 = objc_opt_self();
    v8 = [v7 _isInAnimationBlockWithAnimationsEnabled];
    [v6 alpha];
    v10 = v9;
    v11 = swift_allocObject();
    *(v11 + 16) = v0;
    *(v11 + 24) = v6;
    *(v11 + 32) = v8;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_189068A48;
    *(v12 + 24) = v11;
    v28 = sub_188A4B574;
    v29 = v12;
    aBlock = MEMORY[0x1E69E9820];
    v25 = 1107296256;
    v26 = sub_188A4A968;
    v27 = &block_descriptor_47_1;
    v13 = _Block_copy(&aBlock);
    v14 = v6;
    v15 = v0;

    [v7 performWithoutAnimation_];
    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      return;
    }

    if (v8)
    {
      [v14 setAlpha_];
      [v14 layoutIfNeeded];
    }
  }

  else
  {
    if (!v2)
    {
      return;
    }

    v17 = v2;
    [v17 alpha];
    v19 = v18;
    [v17 setAlpha_];
    v20 = objc_opt_self();
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    *(v22 + 24) = v19;
    v28 = sub_189068A3C;
    v29 = v22;
    aBlock = MEMORY[0x1E69E9820];
    v25 = 1107296256;
    v26 = sub_188ABD010;
    v27 = &block_descriptor_88;
    v23 = _Block_copy(&aBlock);

    [v20 _addOrPerformCompletion_];

    _Block_release(v23);
    v14 = *&v0[v1];
    *&v0[v1] = 0;
  }
}

id sub_189067EE0(void *a1, void *a2, char a3)
{
  [a1 addSubview_];
  [a2 setAutoresizingMask_];
  [a1 bounds];
  result = [a2 setFrame_];
  if (a3)
  {
    [a2 setAlpha_];

    return [a2 layoutIfNeeded];
  }

  return result;
}

void sub_189067F98(double a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [Strong removeFromSuperview];
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    [v6 setAlpha_];
  }
}

void sub_189068118()
{

  v1 = *(v0 + OBJC_IVAR____TtCC5UIKitP33_1224E733E1875C87E73DF2A91211E8CE36_IntelligenceLightSourceFillProvider14TransitionView_lightSourceView);
}

uint64_t sub_1890681E4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_18906822C()
{
  sub_18A4A8888();
  sub_189067A80(v1);
  return sub_18A4A88E8();
}

uint64_t sub_189068294()
{
  sub_18A4A8888();
  sub_189067A80(v1);
  return sub_18A4A88E8();
}

double sub_1890682D4(void *a1)
{
  if ([a1 delegate])
  {
    type metadata accessor for _UIMaterialDefinitionView();
    swift_dynamicCastClass();

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_18906834C(uint64_t a1, void *a2)
{
  if (![*(a1 + 16) isEqual_] || *(a1 + 24) != a2[3])
  {
    return 0;
  }

  sub_18A4A7E18();
  return MEMORY[0x18CFE2D50](*(a1 + 32), a2[4]) & 1;
}

uint64_t _s5UIKit6_GlassV24_IntelligenceLightHandleC2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1890689F4(&qword_1EA92E8A8, type metadata accessor for _Glass._IntelligenceLightHandle, &protocol conformance descriptor for _Glass._IntelligenceLightHandle);
  sub_18A4A2C08();

  swift_beginAccess();
  v4 = *(a1 + 16);
  swift_getKeyPath();
  sub_18A4A2C08();

  swift_beginAccess();
  if (v4 == *(a2 + 16))
  {
    swift_getKeyPath();
    sub_18A4A2C08();

    swift_beginAccess();
    v6 = *(a1 + 17);
    swift_getKeyPath();
    sub_18A4A2C08();

    swift_beginAccess();
    v5 = v6 ^ *(a2 + 17) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void sub_189068584()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 16) = v2;
}

void sub_1890685D8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 17) = v2;
}

unint64_t sub_189068654()
{
  result = qword_1EA93AFD8;
  if (!qword_1EA93AFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93AFD8);
  }

  return result;
}

uint64_t sub_1890686F8(uint64_t a1)
{
  result = sub_18A4A2C48();
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

uint64_t sub_18906899C(uint64_t a1)
{
  result = sub_1890689F4(&qword_1EA92EA70, type metadata accessor for _IntelligenceLightSourceFillProvider, &unk_18A660B68);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1890689F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_189068A90(uint64_t a1)
{
  v2 = type metadata accessor for GlassPair(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = INFINITY;
    v10 = -INFINITY;
    v11 = -INFINITY;
    do
    {
      for (i = v7; ; ++i)
      {
        if (i >= v6)
        {
          __break(1u);
LABEL_24:
          __break(1u);
          return;
        }

        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_24;
        }

        sub_18906B26C(v8 + *(v3 + 72) * i, v5);
        if (v6 == 1 || (v5[*(type metadata accessor for _Glass(0) + 56)] & 1) == 0)
        {
          break;
        }

        sub_18906B2D0(v5);
        if (v7 == v6)
        {
          return;
        }
      }

      [*&v5[*(v2 + 20)] bounds];
      if (v12 > v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = v12;
      }

      if (v12 > v13)
      {
        v15 = v12;
      }

      else
      {
        v15 = v13;
      }

      v16 = v12 * v13;
      if (v15 < v9)
      {
        v9 = v14;
      }

      if (v10 < v15)
      {
        v10 = v15;
      }

      if (v11 < v16)
      {
        v11 = v16;
      }

      sub_18906B2D0(v5);
    }

    while (v7 != v6);
  }
}

void sub_189068C64(uint64_t a1, uint64_t a2, void (*a3)(void, void, void), uint64_t a4, int a5, uint64_t a6)
{
  *&v381 = a6;
  LODWORD(v380) = a5;
  v378 = a3;
  v379 = a4;
  v377 = a2 & 0xFFFFFFFFFFLL;
  v7 = sub_18A4A6B28();
  v333 = *(v7 - 8);
  v334 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v332 = &v325 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v340 = sub_18A4A6988();
  v336 = *(v340 - 8);
  MEMORY[0x1EEE9AC00](v340);
  v335 = &v325 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_18A4A6558();
  v11 = *(v10 - 8);
  v361 = v10;
  v362 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v360 = &v325 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v359 = &v325 - v14;
  v15 = sub_18A4A66E8();
  v330 = *(v15 - 8);
  v331 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v329 = &v325 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_18A4A6688();
  v338 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v325 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v325 = &v325 - v21;
  v22 = sub_18A4A6B18();
  v342 = *(v22 - 8);
  v343 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v341 = (&v325 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = sub_18A4A69C8();
  v344 = *(v24 - 8);
  v345 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v349 = &v325 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_18A4A6758();
  v357 = *(v26 - 8);
  v358 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v356 = &v325 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_18A4A6928();
  v347 = *(v28 - 8);
  v348 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v346 = &v325 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_18A4A67E8();
  v351 = *(v30 - 8);
  v352 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v350 = &v325 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_18A4A6AE8();
  v327 = *(v32 - 8);
  v328 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v326 = &v325 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_18A4A6A78();
  v367 = *(v34 - 8);
  v368 = v34;
  MEMORY[0x1EEE9AC00](v34);
  v366 = &v325 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_18A4A6A38();
  v364 = *(v36 - 8);
  v365 = v36;
  MEMORY[0x1EEE9AC00](v36);
  v363 = &v325 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_18A4A6848();
  v354 = *(v38 - 8);
  v355 = v38;
  MEMORY[0x1EEE9AC00](v38);
  v353 = &v325 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_18A4A6AB8();
  v369 = *(v40 - 8);
  v370 = v40;
  MEMORY[0x1EEE9AC00](v40);
  v371 = &v325 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_18A4A6958();
  v373 = *(v42 - 8);
  v374 = v42;
  MEMORY[0x1EEE9AC00](v42);
  v372 = &v325 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_18A4A6AF8();
  v45 = *(v44 - 8);
  v375 = v44;
  v376 = v45;
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v325 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_18A4A6728();
  v49 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v325 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v325 - v53;
  if ((a2 & 0xFF00000000) == 0x200000000)
  {
    v55 = 0.0;
  }

  else
  {
    v55 = *&a2;
  }

  sub_18A4A66F8();
  v339 = v17;
  v337 = v19;
  if (v56 <= 0.0)
  {
    sub_18A4A6738();
    sub_18A4A6718();
    sub_188B69960();
    v58 = sub_18A4A7E28();
    v59 = *(v49 + 8);
    v59(v51, v48);
    v59(v54, v48);
    v57 = 0.5;
    if ((v58 & 1) == 0)
    {
      v57 = 0.0;
    }
  }

  else
  {
    sub_18A4A66F8();
  }

  if (v55 > v57)
  {
    v60 = v55;
  }

  else
  {
    v60 = v57;
  }

  LODWORD(v61) = 1;
  if ((v377 & 0x100000000) == 0)
  {
    sub_18A4A6738();
    sub_18A4A6708();
    sub_188B69960();
    LODWORD(v61) = sub_18A4A7E28();
    v62 = *(v49 + 8);
    v62(v51, v48);
    v62(v54, v48);
  }

  v386[0] = 0uLL;
  *&v386[1] = 1;
  *(&v386[1] + 8) = 0u;
  *(&v386[2] + 8) = 0u;
  *(&v386[3] + 8) = 0u;
  *(&v386[4] + 8) = 0u;
  *(&v386[5] + 8) = 0u;
  *(&v386[6] + 8) = 0u;
  *(&v386[7] + 5) = 0u;
  BYTE5(v386[8]) = 4;
  *v385 = sub_18A4A7288();
  *&v385[8] = v63;
  sub_18A4A8048();
  v64 = 0.0;
  v65 = 0.0;
  v66 = 0.0;
  v67 = 0.0;
  memset(&v386[11], 0, 32);
  *&v386[13] = [objc_opt_self() clearColor];
  *(&v386[13] + 8) = xmmword_18A64B730;
  DWORD2(v386[14]) = 1065353216;
  WORD6(v386[14]) = 1;
  v68 = MEMORY[0x1E69E7CC0];
  v386[15] = MEMORY[0x1E69E7CC0];
  *&v386[16] = MEMORY[0x1E69E7CC0];
  *(&v386[16] + 1) = v378;
  *&v386[17] = v379;
  BYTE8(v386[17]) = v380 & 1;
  *&v386[18] = v381;
  sub_18A4A6B08();
  v70 = v375;
  v69 = v376;
  v71 = (*(v376 + 11))(v47, v375);
  if (v71 == *MEMORY[0x1E6981C00])
  {
    (*(v69 + 12))(v47, v70);
    v73 = v372;
    v72 = v373;
    v74 = v47;
    v75 = v374;
    (*(v373 + 32))(v372, v74, v374);
    sub_18A4A6948();
    v77 = v76;
    sub_18A4A6938();
    if (qword_1ED48E998 != -1)
    {
      v312 = v78.n128_u32[0];
      v313 = v79.n128_u32[0];
      v314 = v80.n128_u32[0];
      v315 = v81.n128_u32[0];
      swift_once();
      v81.n128_u32[0] = v315;
      v80.n128_u32[0] = v314;
      v79.n128_u32[0] = v313;
      v78.n128_u32[0] = v312;
    }

    sub_188BA4D84(v78, v79, v80, v81);
    v83 = v82;
    (*(v72 + 8))(v73, v75);
    sub_188B6A1D4(&v386[1]);
    v84 = v61 & 1;
    *&v386[1] = v83;
    v85 = 2;
LABEL_21:
    LOBYTE(v386[7]) = v85;
LABEL_22:
    *(&v386[7] + 1) = v77;
LABEL_23:
    *&v386[8] = v60;
    BYTE4(v386[8]) = v84;
    v99 = 1;
LABEL_24:
    BYTE5(v386[8]) = v99;
LABEL_25:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934238, &qword_18A660BF0);
    v100 = swift_allocObject();
    *(v100 + 16) = xmmword_18A64BFB0;
    memcpy((v100 + 32), v386, 0x128uLL);
    return;
  }

  if (v71 == *MEMORY[0x1E6981C20])
  {
    (*(v69 + 12))(v47, v70);
    v87 = v366;
    v86 = v367;
    v88 = v47;
    v89 = v368;
    (*(v367 + 32))(v366, v88, v368);
    sub_18A4A6A58();
    v77 = v90;
    sub_18A4A6A68();
    v92 = v91;
    sub_18A4A6A48();
    if (qword_1ED48E998 != -1)
    {
      v318 = v93.n128_u32[0];
      v319 = v94.n128_u32[0];
      v320 = v95.n128_u32[0];
      v321 = v96.n128_u32[0];
      swift_once();
      v96.n128_u32[0] = v321;
      v95.n128_u32[0] = v320;
      v94.n128_u32[0] = v319;
      v93.n128_u32[0] = v318;
    }

    sub_188BA4D84(v93, v94, v95, v96);
    v98 = v97;
    (*(v86 + 8))(v87, v89);
    sub_188B6A1D4(&v386[1]);
    v84 = v61 & 1;
    *&v386[1] = v77;
    *(&v386[1] + 1) = v92;
    *&v386[2] = v98;
    v85 = 6;
    goto LABEL_21;
  }

  if (v71 == *MEMORY[0x1E6981C28])
  {
    LODWORD(v377) = v61;
    (*(v69 + 12))(v47, v70);
    v101 = v371;
    (*(v369 + 32))(v371, v47, v370);
    v102 = sub_18A4A6A88();
    v103 = *(v102 + 16);
    if (v103)
    {
      *v385 = v68;
      sub_18A4A8208();
      v104 = 32;
      do
      {
        v381 = *(v102 + v104);
        v105 = *(&v381 + 4);
        v106 = HIDWORD(v381);
        v107 = objc_allocWithZone(MEMORY[0x1E69793D0]);
        LODWORD(v109) = HIDWORD(v105);
        LODWORD(v108) = v105;
        LODWORD(v110) = v106;
        [v107 initWithControlPoints__:*&v381 :{v108, v109, v110}];
        sub_18A4A81D8();
        sub_18A4A8218();
        sub_18A4A8228();
        sub_18A4A81E8();
        v104 += 16;
        --v103;
      }

      while (v103);

      v111 = *v385;
      v101 = v371;
    }

    else
    {

      v111 = MEMORY[0x1E69E7CC0];
    }

    sub_18A4A6AA8();

    v134 = sub_18A4A6A98();
    v135 = *(v134 + 16);
    if (v135)
    {
      *v385 = v68;
      sub_18A4A8208();
      if (qword_1ED48E998 != -1)
      {
        swift_once();
      }

      v140 = (v134 + 44);
      do
      {
        v136.n128_u32[0] = *(v140 - 3);
        v137.n128_u32[0] = *(v140 - 2);
        v138.n128_u32[0] = *(v140 - 1);
        v139.n128_u32[0] = *v140;
        sub_188BA4D84(v136, v137, v138, v139);
        sub_18A4A81D8();
        sub_18A4A8218();
        sub_18A4A8228();
        sub_18A4A81E8();
        v140 += 4;
        --v135;
      }

      while (v135);

      v141 = *v385;
      v101 = v371;
    }

    else
    {

      v141 = MEMORY[0x1E69E7CC0];
    }

    v142 = sub_18A4A6AA8();
    v143 = *(v142 + 16);
    if (v143)
    {
      *v385 = v68;
      sub_188CCE410(0, v143, 0);
      v144 = *v385;
      v145 = *(*v385 + 16);
      v146 = 32;
      do
      {
        v147 = *(v142 + v146);
        *v385 = v144;
        v148 = *(v144 + 24);
        if (v145 >= v148 >> 1)
        {
          sub_188CCE410((v148 > 1), v145 + 1, 1);
          v144 = *v385;
        }

        *(v144 + 16) = v145 + 1;
        *(v144 + 8 * v145 + 32) = v147;
        v146 += 8;
        ++v145;
        --v143;
      }

      while (v143);
      (*(v369 + 8))(v371, v370);
    }

    else
    {

      (*(v369 + 8))(v101, v370);
      v144 = MEMORY[0x1E69E7CC0];
    }

    sub_188B6A1D4(&v386[1]);
    *&v386[1] = v141;
    *(&v386[1] + 1) = v144;
    *&v386[2] = v111;
    LOBYTE(v386[7]) = 1;
    *(&v386[7] + 1) = 0;
    *&v386[8] = v60;
    BYTE4(v386[8]) = v377 & 1;
    BYTE5(v386[8]) = 1;
    goto LABEL_25;
  }

  if (v71 == *MEMORY[0x1E6981C18])
  {
    (*(v69 + 12))(v47, v70);
    v113 = v363;
    v112 = v364;
    v114 = v365;
    (*(v364 + 32))(v363, v47, v365);
    sub_18A4A6A08();
    v77 = v115;
    v116 = sub_18A4A69D8();
    v117 = sub_18A4A69E8();
    sub_18A4A6A28();
    v119 = v118;
    sub_18A4A6A18();
    v121 = v120;
    v123 = v122;
    sub_18A4A69F8();
    if (qword_1ED48E998 != -1)
    {
      LODWORD(v381) = v124.n128_u32[0];
      v322 = v125.n128_u32[0];
      v323 = v126.n128_u32[0];
      v324 = v127.n128_u32[0];
      swift_once();
      v127.n128_u32[0] = v324;
      v126.n128_u32[0] = v323;
      v125.n128_u32[0] = v322;
      v124.n128_u32[0] = v381;
    }

    sub_188BA4D84(v124, v125, v126, v127);
    v129 = v128;
    (*(v112 + 8))(v113, v114);
    sub_188B6A1D4(&v386[1]);
    v84 = v61 & 1;
    LOBYTE(v386[1]) = v116 & 1;
    BYTE1(v386[1]) = v117 & 1;
    *(&v386[1] + 1) = v119;
    *&v386[2] = v121;
    *(&v386[2] + 1) = v123;
    *&v386[3] = v129;
    v85 = 3;
    goto LABEL_21;
  }

  if (v71 == *MEMORY[0x1E6981BE0])
  {
    (*(v69 + 12))(v47, v70);
    v130 = v356;
    v131 = v357;
    v132 = v47;
    v133 = v358;
    (*(v357 + 32))(v356, v132, v358);
    sub_18A4A6748();
    (*(v131 + 8))(v130, v133);
    sub_188B6A1D4(&v386[1]);
    sub_188A5EBAC(v385, &v386[1]);
    v99 = 2;
    goto LABEL_24;
  }

  if (v71 == *MEMORY[0x1E6981BF0])
  {
    (*(v69 + 12))(v47, v70);
    v149 = v353;
    v150 = v354;
    v151 = v47;
    v152 = v355;
    (*(v354 + 32))(v353, v151, v355);
    sub_18A4A6808();
    v77 = v153;
    sub_18A4A6818();
    v155 = v154;
    sub_18A4A6828();
    v157 = v156;
    sub_18A4A67F8();
    v159 = v158;
    sub_18A4A6838();
    v161 = v160;
    (*(v150 + 8))(v149, v152);
    sub_188B6A1D4(&v386[1]);
    v84 = v61 & 1;
    *&v386[1] = v155;
    *(&v386[1] + 1) = v157;
    *&v386[2] = v159;
    *(&v386[2] + 1) = v161;
    LOBYTE(v386[7]) = 0;
    goto LABEL_22;
  }

  if (v71 == *MEMORY[0x1E6981BE8])
  {
    (*(v69 + 12))(v47, v70);
    v163 = v350;
    v162 = v351;
    v164 = v352;
    (*(v351 + 32))(v350, v47, v352);
    v165 = sub_18A4A6768();
    sub_18A4A67C8();
    v166 = sub_18A4A5E48();
    v167 = [objc_allocWithZone(UIColor) initWithCGColor_];

    v168 = v167;
    sub_18A4A67A8();
    v170 = v169;
    sub_18A4A6778();
    v172 = v171;
    sub_18A4A67B8();
    v174 = v173;
    sub_18A4A6798();
    v176 = v175;
    sub_18A4A67D8();
    v178 = v177;
    sub_18A4A6788();
    v180 = v179;

    (*(v162 + 8))(v163, v164);
    sub_188B6A1D4(&v386[1]);
    v84 = v61 & 1;
    *&v386[1] = v168;
    *(&v386[1] + 1) = v170;
    *&v386[2] = v172;
    *(&v386[2] + 1) = v174;
    *&v386[3] = v176;
    *(&v386[3] + 1) = v178;
    LOBYTE(v386[4]) = v165 & 1;
    LOBYTE(v386[7]) = 4;
    *(&v386[7] + 1) = v180;
    goto LABEL_23;
  }

  if (v71 == *MEMORY[0x1E6981BF8])
  {
    (*(v69 + 12))(v47, v70);
    v182 = v346;
    v181 = v347;
    v183 = v348;
    (*(v347 + 32))(v346, v47, v348);
    sub_18A4A68B8();
    v184 = sub_18A4A5E48();
    v185 = [objc_allocWithZone(UIColor) initWithCGColor_];

    sub_18A4A68E8();
    v186 = sub_18A4A5E48();
    v187 = [objc_allocWithZone(UIColor) initWithCGColor_];

    v188 = sub_18A4A6888();
    sub_18A4A68C8();
    *&v381 = v189;
    v190 = v185;
    sub_18A4A68A8();
    v380 = v191;
    sub_18A4A6908();
    v379 = v192;
    sub_18A4A6918();
    v194 = v193;
    sub_18A4A68F8();
    v196 = v195;
    v197 = v187;
    sub_18A4A68D8();
    v199 = v198;
    sub_18A4A6868();
    v201 = v200;
    sub_18A4A6878();
    v203 = v202;
    sub_18A4A6858();
    v205 = v204;
    sub_18A4A6898();
    v207 = v206;

    (*(v181 + 8))(v182, v183);
    sub_188B6A1D4(&v386[1]);
    v84 = v61 & 1;
    LOBYTE(v386[1]) = v188 & 1;
    *(&v386[1] + 1) = v381;
    *&v386[2] = v190;
    *(&v386[2] + 1) = v380;
    *&v386[3] = v379;
    *(&v386[3] + 1) = v194;
    *&v386[4] = v196;
    *(&v386[4] + 1) = v197;
    *&v386[5] = v199;
    *(&v386[5] + 1) = v201;
    *&v386[6] = v203;
    *(&v386[6] + 1) = v205;
    LOBYTE(v386[7]) = 5;
    *(&v386[7] + 1) = v207;
    goto LABEL_23;
  }

  if (v71 != *MEMORY[0x1E6981C10])
  {
    if (v71 == *MEMORY[0x1E6981C08])
    {
      (*(v69 + 12))(v47, v70);
      v214 = v335;
      v213 = v336;
      (*(v336 + 32))(v335, v47, v340);
      v215 = v332;
      sub_18A4A6978();
      if (v61)
      {
        v216 = 0x100000000;
      }

      else
      {
        v216 = 0;
      }

      sub_189068C64(v215, v216 | LODWORD(v60), 0, 0, 1, v381);
      v218 = v217;
      v219 = v334;
      v220 = *(v333 + 8);
      v220(v215, v334);
      if (*(v218 + 16))
      {
        sub_188B6CFA8(v218 + 32, v384);

        memcpy(v385, v384, sizeof(v385));
        sub_18A4A6968();
        sub_189068C64(v215, v216 | LODWORD(v60), 0, 0, 1, 1);
        v222 = v221;
        v220(v215, v219);
        if (*(v222 + 16))
        {
          sub_188B6CFA8(v222 + 32, v384);
        }

        else
        {

          memset(v384, 0, 296);
        }

        sub_188A3F29C(v384, v382, &qword_1EA939FB0, &qword_18A65CFE0);
        if (v382[20])
        {
          memcpy(v383, v382, sizeof(v383));
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934238, &qword_18A660BF0);
          v316 = swift_allocObject();
          *(v316 + 16) = xmmword_18A64BFB0;
          memcpy((v316 + 32), v383, 0x128uLL);
        }

        else
        {
          sub_188A3F5FC(v382, &qword_1EA939FB0, &qword_18A65CFE0);
          v316 = MEMORY[0x1E69E7CC0];
        }

        *&v385[248] = v316;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934238, &qword_18A660BF0);
        v317 = swift_allocObject();
        *(v317 + 16) = xmmword_18A64BFB0;
        sub_188B6CFA8(v385, v317 + 32);
        sub_188A3F5FC(v384, &qword_1EA939FB0, &qword_18A65CFE0);
        (*(v213 + 8))(v214, v340);
        sub_188B6D288(v385);
      }

      else
      {

        (*(v213 + 8))(v214, v340);
      }
    }

    else
    {
      if (v71 == *MEMORY[0x1E6981C30])
      {
        (*(v69 + 12))(v47, v70);
        v248 = v326;
        v249 = v327;
        v250 = v47;
        v251 = v328;
        (*(v327 + 32))(v326, v250, v328);
        sub_18A4A6AC8();
        v253 = v252;
        sub_18A4A6AD8();
        v255 = v254;
        v257 = v256;
        (*(v249 + 8))(v248, v251);
        sub_188B6A1D4(&v386[1]);
        v84 = v61 & 1;
        *&v386[1] = v253;
        *(&v386[1] + 1) = v255;
        *&v386[2] = v257;
        LOBYTE(v386[7]) = 7;
        *(&v386[7] + 1) = 0;
        goto LABEL_23;
      }

      (*(v69 + 1))(v47, v70);
    }

    goto LABEL_159;
  }

  (*(v69 + 12))(v47, v70);
  (*(v344 + 32))(v349, v47, v345);
  v208 = v341;
  sub_18A4A6998();
  v210 = v342;
  v209 = v343;
  v211 = (*(v342 + 88))(v208, v343);
  if (v211 != *MEMORY[0x1E6981C50])
  {
    if (v211 == *MEMORY[0x1E6981C38])
    {
      (*(v210 + 96))(v208, v209);
      v223 = v329;
      v224 = v330;
      v225 = v331;
      (*(v330 + 32))(v329, v208, v331);
      v226 = sub_18A4A66C8();
      sub_18A4A6698();
      v228 = v227;
      v229 = sub_18A4A66A8();
      sub_18A4A66D8();
      v231 = v230;
      v232 = sub_18A4A66B8();
      (*(v224 + 8))(v223, v225);
      *v385 = v231;
      v385[8] = v232 & 1;
      v385[9] = v226 & 1;
      *&v385[16] = v228;
      v385[24] = v229 & 1;
      v385[117] = 0;
      sub_188C3B560(v385, &v386[1]);
      goto LABEL_72;
    }

    if (v211 == *MEMORY[0x1E6981C48])
    {
      v302 = sub_18A4A69A8();
      *v385 = v68;
      v303 = *(v302 + 16);
      if (v303)
      {
        *&v381 = LODWORD(v60);
        if (v61)
        {
          v304 = 0x100000000;
        }

        else
        {
          v304 = 0;
        }

        v305 = v339;
        v379 = *(v338 + 16);
        v380 = v304;
        v306 = *(v338 + 80);
        v378 = v302;
        v307 = v302 + ((v306 + 32) & ~v306);
        v308 = *(v338 + 72);
        v309 = (v338 + 8);
        v310 = v325;
        do
        {
          (v379)(v310, v307, v305);
          v311 = sub_188B699B8(v310, v380 | v381);
          (*v309)(v310, v305);
          sub_188B6D2B8(v311);
          v307 += v308;
          --v303;
        }

        while (v303);
      }

      (*(v344 + 8))(v349, v345);
    }

    else
    {
      if (v211 == *MEMORY[0x1E6981C40])
      {
        sub_188B6A1D4(&v386[1]);
        *&v386[1] = 1;
        *(&v386[1] + 8) = 0u;
        *(&v386[2] + 8) = 0u;
        *(&v386[3] + 8) = 0u;
        *(&v386[4] + 8) = 0u;
        *(&v386[5] + 8) = 0u;
        *(&v386[6] + 8) = 0u;
        *(&v386[7] + 5) = 0u;
        BYTE5(v386[8]) = 4;
        goto LABEL_73;
      }

      if (v211 == *MEMORY[0x1E6981C58])
      {
        sub_188B6A1D4(&v386[1]);
        memset(&v386[1], 0, 117);
        BYTE5(v386[8]) = 4;
        if ((v381 & 1) == 0)
        {
          *&v386[18] = v381 | 1;
        }

        goto LABEL_73;
      }

      if (v211 == *MEMORY[0x1E6981C60])
      {
        sub_188B6A1D4(&v386[1]);
        *&v386[1] = 0x3FF0000000000000;
        goto LABEL_62;
      }

      (*(v344 + 8))(v349, v345);
      (*(v342 + 8))(v341, v343);
    }

LABEL_159:
    sub_188B6D288(v386);
    return;
  }

  (*(v210 + 96))(v208, v209);
  v212 = *v208;
  sub_188B6A1D4(&v386[1]);
  *&v386[1] = v212;
LABEL_62:
  WORD4(v386[1]) = 256;
  *&v386[2] = 0;
  BYTE8(v386[2]) = 0;
  BYTE5(v386[8]) = 0;
LABEL_72:
  v64 = 100.0;
  v65 = 100.0;
  v66 = 100.0;
  v67 = 100.0;
LABEL_73:
  v233 = sub_18A4A69B8();
  v234 = *(v233 + 16);
  if (v234)
  {
    v235 = *(v362 + 16);
    v236 = v233 + ((*(v362 + 80) + 32) & ~*(v362 + 80));
    v378 = *(v362 + 72);
    v379 = v235;
    v362 += 16;
    v375 = v233;
    v376 = (v362 - 8);
    v237 = MEMORY[0x1E69E7CC0];
    LODWORD(v377) = v61;
    do
    {
      *&v381 = v237;
      v238 = v359;
      v239 = v361;
      v240 = v379;
      (v379)(v359, v236, v361);
      v241 = v360;
      v240(v360, v238, v239);
      sub_188B6A220(v241, v385);
      v242 = *v385;
      v243 = *&v385[8];
      v380 = *&v385[16];
      v244 = *&v385[24];
      v245 = *&v385[32];
      (*v376)(v238, v239);
      if (*&v385[8])
      {
        v237 = v381;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v237 = sub_188B6CE78(0, *(v237 + 2) + 1, 1, v237);
        }

        v61 = *(v237 + 2);
        v246 = *(v237 + 3);
        if (v61 >= v246 >> 1)
        {
          v237 = sub_188B6CE78((v246 > 1), v61 + 1, 1, v237);
        }

        *(v237 + 2) = v61 + 1;
        v247 = &v237[40 * v61];
        *(v247 + 4) = v242;
        *(v247 + 5) = v243;
        *(v247 + 6) = v380;
        *(v247 + 7) = v244;
        *(v247 + 8) = v245;
        LOBYTE(v61) = v377;
      }

      else
      {
        v237 = v381;
      }

      v236 += v378;
      --v234;
    }

    while (v234);
  }

  else
  {

    v237 = MEMORY[0x1E69E7CC0];
  }

  *&v386[15] = v237;

  v258 = sub_18A4A69A8();
  *&v384[0] = v68;
  v259 = *(v258 + 16);
  *&v381 = v237;
  if (v259)
  {
    v380 = LODWORD(v60);
    if (v61)
    {
      v260 = 0x100000000;
    }

    else
    {
      v260 = 0;
    }

    v261 = v339;
    v378 = *(v338 + 16);
    v379 = v260;
    v262 = *(v338 + 80);
    v377 = v258;
    v263 = v258 + ((v262 + 32) & ~v262);
    v264 = *(v338 + 72);
    v265 = (v338 + 8);
    v266 = v337;
    do
    {
      (v378)(v266, v263, v261);
      v267 = sub_188B699B8(v266, v379 | v380);
      (*v265)(v266, v261);
      sub_188B6D2B8(v267);
      v263 += v264;
      --v259;
    }

    while (v259);

    v268 = *&v384[0];
    v237 = v381;
  }

  else
  {

    v268 = MEMORY[0x1E69E7CC0];
  }

  *&v386[16] = v268;
  v269 = *(v268 + 2);
  if (v269)
  {
    v270 = 0;
    v271 = 0;
    while (1)
    {
      *&v384[0] = 64;
      *(&v384[0] + 1) = 0xE100000000000000;
      v383[0] = v271;
      v272 = sub_18A4A8618();
      MEMORY[0x18CFE22D0](v272);

      v273 = v384[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v268 = sub_189212BEC(v268);
      }

      if (v271 >= *(v268 + 2))
      {
        break;
      }

      ++v271;
      *&v268[v270 + 32] = v273;

      v270 += 296;
      if (v269 == v271)
      {
        *&v386[16] = v268;
        v237 = v381;
        goto LABEL_102;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_102:
    v377 = *(v237 + 2);
    if (!v377)
    {
      v275 = MEMORY[0x1E69E7CC0];
LABEL_121:

      if (*(v275 + 2))
      {
        v64 = *(v275 + 7);
        v293 = *(v275 + 8);

        (*(v344 + 8))(v349, v345);

        v294 = v64;
        v295 = v64;
        v296 = v64;
      }

      else
      {

        v297 = *(v237 + 2);
        if (v297)
        {
          v298 = (v237 + 56);
          v299 = 0.0;
          do
          {
            v300 = *v298;
            v298 += 5;
            v301 = v300;
            if (v299 <= v300)
            {
              v299 = v301;
            }

            --v297;
          }

          while (v297);
        }

        else
        {
          v299 = 0.0;
        }

        (*(v344 + 8))(v349, v345);
        if (v299 > v64)
        {
          v64 = v299;
        }

        if (v299 > v65)
        {
          v294 = v299;
        }

        else
        {
          v294 = v65;
        }

        if (v299 > v66)
        {
          v295 = v299;
        }

        else
        {
          v295 = v66;
        }

        if (v299 > v67)
        {
          v296 = v299;
        }

        else
        {
          v296 = v67;
        }
      }

      *&v386[11] = v64;
      *(&v386[11] + 1) = v294;
      *&v386[12] = v295;
      *(&v386[12] + 1) = v296;
      goto LABEL_25;
    }

    v274 = 0;
    v379 = *MEMORY[0x1E6979930];
    v376 = v237 + 64;
    v275 = MEMORY[0x1E69E7CC0];
LABEL_104:
    v378 = v275;
    v276 = v377 - v274;
    v277 = &v376[40 * v274];
    while (v274 < *(v237 + 2))
    {
      v380 = v276;
      v279 = *(v277 - 4);
      v278 = *(v277 - 3);
      v280 = *(v277 - 2);
      v281 = *(v277 - 1);
      v282 = *v277;
      if (v279 == sub_18A4A7288() && v278 == v283)
      {
        v287 = v282;

LABEL_114:
        v275 = v378;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v384[0] = v275;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_188B6D268(0, *(v275 + 2) + 1, 1);
          v275 = *&v384[0];
        }

        v290 = *(v275 + 2);
        v289 = *(v275 + 3);
        v291 = v380;
        if (v290 >= v289 >> 1)
        {
          sub_188B6D268((v289 > 1), v290 + 1, 1);
          v275 = *&v384[0];
        }

        ++v274;
        *(v275 + 2) = v290 + 1;
        v292 = &v275[40 * v290];
        *(v292 + 4) = v279;
        *(v292 + 5) = v278;
        *(v292 + 6) = v280;
        *(v292 + 7) = v281;
        *(v292 + 8) = v282;
        v237 = v381;
        if (v291 != 1)
        {
          goto LABEL_104;
        }

        goto LABEL_121;
      }

      v285 = sub_18A4A86C8();
      v286 = v282;

      if (v285)
      {
        goto LABEL_114;
      }

      v277 += 5;
      ++v274;
      v237 = v381;
      v276 = v380 - 1;
      if (v380 == 1)
      {
        v275 = v378;
        goto LABEL_121;
      }
    }
  }

  __break(1u);
}

void *sub_18906AFE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v2 = (a1 + 40);
  v3 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v7 = *(v2 - 1);
    v6 = *v2;

    v8 = sub_18A4A7258();
    v9 = [v25 valueForKey_];

    if (v9)
    {
      sub_18A4A7DE8();
      swift_unknownObjectRelease();
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
    }

    v29[0] = v27;
    v29[1] = v28;
    sub_188A3F29C(v29, &v27, &qword_1EA934050, qword_18A64CA10);
    if (*(&v28 + 1))
    {
      sub_188A34624(0, &qword_1ED490230, 0x1E69E58C0);
      v10 = swift_dynamicCast() ? v26 : 0;
    }

    else
    {
      sub_188A3F5FC(&v27, &qword_1EA934050, qword_18A64CA10);
      v10 = 0;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v27 = v3;
    v12 = sub_188B0944C(v7, v6);
    v14 = v3[2];
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      break;
    }

    v18 = v13;
    if (v3[3] < v17)
    {
      sub_1890C066C(v17, isUniquelyReferenced_nonNull_native);
      v12 = sub_188B0944C(v7, v6);
      if ((v18 & 1) != (v19 & 1))
      {
        goto LABEL_27;
      }

LABEL_18:
      v3 = v27;
      if (v18)
      {
        goto LABEL_3;
      }

      goto LABEL_19;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_18;
    }

    v23 = v12;
    sub_188FA6128();
    v12 = v23;
    v3 = v27;
    if (v18)
    {
LABEL_3:
      v4 = v3[7];
      v5 = *(v4 + 8 * v12);
      *(v4 + 8 * v12) = v10;

      goto LABEL_4;
    }

LABEL_19:
    v3[(v12 >> 6) + 8] |= 1 << v12;
    v20 = (v3[6] + 16 * v12);
    *v20 = v7;
    v20[1] = v6;
    *(v3[7] + 8 * v12) = v10;
    v21 = v3[2];
    v16 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (v16)
    {
      goto LABEL_26;
    }

    v3[2] = v22;
LABEL_4:
    sub_188A3F5FC(v29, &qword_1EA934050, qword_18A64CA10);
    v2 += 2;
    if (!--v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_18A4A87A8();
  __break(1u);
  return result;
}

uint64_t sub_18906B26C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GlassPair(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18906B2D0(uint64_t a1)
{
  v2 = type metadata accessor for GlassPair(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void UIMainMenuSystem.setBuildConfiguration(_:buildHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (a2)
  {
    v7[4] = a2;
    v7[5] = a3;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_188C577F0;
    v7[3] = &block_descriptor_89;
    v6 = _Block_copy(v7);
  }

  else
  {
    v6 = 0;
  }

  [v4 setBuildConfiguration:a1 buildHandler:v6];
  _Block_release(v6);
}

id sub_18906B4B0(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  result = [v2 _wantsDynamicBackgroundMaterial];
  if (result != v3)
  {
    v5 = [(UIView *)v2 _typedStorage];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9371F8, &qword_18A6526D8);
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    v7 = OBJC_IVAR____UITypedStorage_storage;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(&v5->super.isa + v7);
    *(&v5->super.isa + v7) = 0x8000000000000000;
    sub_188A40430(v6, &_s24WantsSearchBackgroundKeyVN, isUniquelyReferenced_nonNull_native);
    *(&v5->super.isa + v7) = v9;
    swift_endAccess();

    return [v2 _setNeedsUpdateBackgroundMaterial];
  }

  return result;
}

id sub_18906B5BC()
{
  if ([v0 _wantsDynamicBackgroundMaterial])
  {
    *&v4 = 0x7FEFFFFFFFFFFFFFLL;
    BYTE8(v4) = 0;
    *&v5 = 0x7FEFFFFFFFFFFFFFLL;
    BYTE8(v5) = 0;
    v6 = 0x7FEFFFFFFFFFFFFFLL;
    v7 = 0;
    v8 = 0x7FEFFFFFFFFFFFFFLL;
    v9 = 0;
    v10 = MEMORY[0x1E69E7CC0];
    v1 = [v0 isEnabled] ^ 1;
    v2 = [v0 _backgroundMaterialShouldBeGlass];
    *(&v5 + 1) = &_s27SearchBarBackgroundMaterialVN;
    v6 = &off_1EFADEF28;
    LOBYTE(v4) = v1;
    *(&v4 + 1) = v2;
  }

  else
  {
    *&v4 = 0;
    BYTE8(v4) = -1;
    *&v5 = 0;
    BYTE8(v5) = -1;
    v6 = 0;
    v7 = -1;
    v8 = 0;
    v9 = -1;
    v10 = MEMORY[0x1E69E7CC0];
    UIView.cornerConfiguration.setter(&v4);
    v6 = 0;
    v4 = 0u;
    v5 = 0u;
  }

  UIView._background.setter(&v4);

  return [v0 _updateScrollPocketInteraction];
}

void sub_18906B724()
{
  v1 = [v0 scrollPocketInteraction];
  if (v1)
  {
  }

  else if ([v0 _wantsDynamicBackgroundMaterial])
  {
    v2 = [objc_allocWithZone(_UIScrollPocketInteraction) initWithStyle_];
    [v0 setScrollPocketInteraction_];
    v3 = v2;
    v4 = &selRef_addInteraction_;
    v6 = v2;
LABEL_8:
    [v0 *v4];
    goto LABEL_9;
  }

  v5 = [v0 scrollPocketInteraction];
  if (!v5)
  {
    return;
  }

  v6 = v5;
  if (([v0 _wantsDynamicBackgroundMaterial] & 1) == 0)
  {
    [v0 removeInteraction_];
    v3 = 0;
    v4 = &selRef_setScrollPocketInteraction_;
    goto LABEL_8;
  }

LABEL_9:
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t _s27SearchBarBackgroundMaterialVwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t _s27SearchBarBackgroundMaterialVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t UIMutableTraits._glassElevationLevel.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v5 = *(a3 + 376);
  v6 = sub_18906BBE8();
  return v5(&v8, &type metadata for _UITraitGlassElevationLevel, &type metadata for _UITraitGlassElevationLevel, &protocol witness table for _UITraitGlassElevationLevel, v6, a2, a3);
}

unint64_t sub_18906BBE8()
{
  result = qword_1ED48F1A0;
  if (!qword_1ED48F1A0)
  {
    type metadata accessor for _UIGlassElevationLevel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48F1A0);
  }

  return result;
}

uint64_t UIMutableTraits._glassElevationLevel.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 368);
  v5 = sub_18906BBE8();
  v4(&v7, &type metadata for _UITraitGlassElevationLevel, &type metadata for _UITraitGlassElevationLevel, &protocol witness table for _UITraitGlassElevationLevel, v5, a1, a2);
  return v7;
}

void (*UIMutableTraits._glassElevationLevel.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
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
  v8 = *(a3 + 368);
  v9 = sub_18906BBE8();
  v8(&type metadata for _UITraitGlassElevationLevel, &type metadata for _UITraitGlassElevationLevel, &protocol witness table for _UITraitGlassElevationLevel, v9, a2, a3);
  return sub_18906BE14;
}

void sub_18906BE14(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 16);
  **a1 = *(*a1 + 8);
  v4 = *(v2 + 376);
  v5 = sub_18906BBE8();
  v4(v1, &type metadata for _UITraitGlassElevationLevel, &type metadata for _UITraitGlassElevationLevel, &protocol witness table for _UITraitGlassElevationLevel, v5, v3, v2);

  free(v1);
}

double Preview.init(_:traits:body:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v17[2] = a2;
  v17[3] = a3;
  v17[0] = a6;
  v17[1] = a1;
  v8 = sub_18A4A3398();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_18A4A3378();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B040, &qword_18A660DC0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  (*(v10 + 104))(v12, *MEMORY[0x1E6966790], v9, v14);
  sub_18A4A3388();
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  sub_188A34624(0, &qword_1ED48F680, off_1E70EAD78);

  sub_18A4A3318();
  sub_18A4A33A8();
  sub_18906C39C(&qword_1EA93B048, &qword_1EA93B040, &qword_18A660DC0);
  sub_18A4A33B8();

  return result;
}

{
  v17[2] = a2;
  v17[3] = a3;
  v17[0] = a6;
  v17[1] = a1;
  v8 = sub_18A4A3398();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_18A4A3378();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B050, &qword_18A660DC8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  (*(v10 + 104))(v12, *MEMORY[0x1E6966790], v9, v14);
  sub_18A4A3388();
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  sub_188A34624(0, &qword_1ED48D5A0, off_1E70EAD90);

  sub_18A4A3318();
  sub_18A4A33A8();
  sub_18906C39C(qword_1EA93B058, &qword_1EA93B050, &qword_18A660DC8);
  sub_18A4A33B8();

  return result;
}

uint64_t sub_18906C39C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double Preview.init<A>(_:traits:arguments:body:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v22[2] = a2;
  v22[3] = a3;
  v22[0] = a8;
  v22[1] = a1;
  v12 = sub_18A4A3398();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_18A4A3378();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B040, &qword_18A660DC0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  (*(v14 + 104))(v16, *MEMORY[0x1E6966790], v13, v18);
  sub_18A4A3388();
  v19 = sub_18A4A32F8();
  MEMORY[0x1EEE9AC00](v19 - 8);
  sub_18906C9A8(a4, a7);

  v20 = swift_allocObject();
  v20[2] = a7;
  v20[3] = a5;
  v20[4] = a6;
  sub_188A34624(0, &qword_1ED48F680, off_1E70EAD78);

  sub_18A4A3328();
  sub_18A4A33A8();
  sub_18906C39C(&qword_1EA93B048, &qword_1EA93B040, &qword_18A660DC0);
  sub_18A4A33B8();

  return result;
}

{
  v22[2] = a2;
  v22[3] = a3;
  v22[0] = a8;
  v22[1] = a1;
  v12 = sub_18A4A3398();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_18A4A3378();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B050, &qword_18A660DC8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  (*(v14 + 104))(v16, *MEMORY[0x1E6966790], v13, v18);
  sub_18A4A3388();
  v19 = sub_18A4A32F8();
  MEMORY[0x1EEE9AC00](v19 - 8);
  sub_18906C9A8(a4, a7);

  v20 = swift_allocObject();
  v20[2] = a7;
  v20[3] = a5;
  v20[4] = a6;
  sub_188A34624(0, &qword_1ED48D5A0, off_1E70EAD90);

  sub_18A4A3328();
  sub_18A4A33A8();
  sub_18906C39C(qword_1EA93B058, &qword_1EA93B050, &qword_18A660DC8);
  sub_18A4A33B8();

  return result;
}

uint64_t sub_18906C9A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_18A4A3368();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = a1;
  sub_18A4A7648();
  swift_getWitnessTable();
  v8 = sub_18A4A3348();
  MEMORY[0x1EEE9AC00](v8);
  sub_18A4A8628();
  swift_allocObject();
  v9 = sub_18A4A7568();
  (*(v5 + 16))(v10, &v13 - v7, v4);
  v14 = v9;
  sub_18A4A7648();
  signpost_c2_entryLock_start();
  MEMORY[0x18CFDE280](v14, a2);

  sub_18A4A3358();
  v11 = *(v5 + 8);
  v11(&v13 - v7, v4);
  return (v11)(&v13 - v7, v4);
}

uint64_t sub_18906CBAC@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 24))();
  *a1 = result;
  return result;
}

double Preview.init<A>(_:traits:body:arguments:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(double)@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v24 = a4;
  v25 = a8;
  v27 = a2;
  v28 = a3;
  v26 = a1;
  v11 = sub_18A4A3398();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = sub_18A4A3378();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B040, &qword_18A660DC0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  (*(v13 + 104))(v15, *MEMORY[0x1E6966790], v12, v17);
  sub_18A4A3388();
  v18 = sub_18A4A32F8();
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  a6(v19);
  v20 = swift_allocObject();
  v21 = v24;
  v20[2] = a7;
  v20[3] = v21;
  v20[4] = a5;
  sub_188A34624(0, &qword_1ED48F680, off_1E70EAD78);

  sub_18A4A3328();
  sub_18A4A33A8();
  sub_18906C39C(&qword_1EA93B048, &qword_1EA93B040, &qword_18A660DC0);
  sub_18A4A33B8();

  return result;
}

{
  v24 = a4;
  v25 = a8;
  v27 = a2;
  v28 = a3;
  v26 = a1;
  v11 = sub_18A4A3398();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = sub_18A4A3378();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B050, &qword_18A660DC8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  (*(v13 + 104))(v15, *MEMORY[0x1E6966790], v12, v17);
  sub_18A4A3388();
  v18 = sub_18A4A32F8();
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  a6(v19);
  v20 = swift_allocObject();
  v21 = v24;
  v20[2] = a7;
  v20[3] = v21;
  v20[4] = a5;
  sub_188A34624(0, &qword_1ED48D5A0, off_1E70EAD90);

  sub_18A4A3328();
  sub_18A4A33A8();
  sub_18906C39C(qword_1EA93B058, &qword_1EA93B050, &qword_18A660DC8);
  sub_18A4A33B8();

  return result;
}

uint64_t UIViewPreviewSource.makeView.getter()
{
  v1 = *v0;

  return v1;
}

void UIViewPreviewSource.makeView.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

void sub_18906D234(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a1;
  v8 = a1[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;

  *a2 = a6;
  a2[1] = v10;
}

uint64_t _s5UIKit19UIViewPreviewSourceV13contentDomain21DeveloperToolsSupport0cd7ContentF0Ovg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x1E6966790];
  v4 = sub_18A4A3378();
  v5 = *(*(v4 - 8) + 104);

  return v5(a1, v3, v4);
}

double keypath_getTm_2@<D0>(uint64_t *a1@<X0>, uint64_t a3@<X4>, void *a4@<X8>)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  *a4 = a3;
  a4[1] = v8;

  return result;
}

uint64_t sub_18906D418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v17);
  (*(v13 + 16))(v15, a2, a4);
  return UIView.Invalidations.Tuple.init(_:_:)(v19, v15, a3, a4, a5, a6, a7);
}

void sub_18906D628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + a3 - 16);
  v4[0] = *(a2 + a3 - 32);
  v4[1] = v3;
  type metadata accessor for UIView.Invalidating(0, v4);
  UIView.Invalidating.wrappedValue.getter();
}

void sub_18906D654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5[0] = *(a3 + a4 - 32);
  v5[1] = v4;
  type metadata accessor for UIView.Invalidating(0, v5);
  sub_189071124();
}

uint64_t UIView.Invalidating.init<A, B>(wrappedValue:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, _UNKNOWN **a10)
{
  (*(*(a4 - 8) + 32))(a9, a1, a4);
  v21 = a5;
  v22 = a6;
  v23 = a8;
  v24 = a10;
  v18 = type metadata accessor for UIView.Invalidations.Tuple(255, &v21);
  v21 = a4;
  v22 = v18;
  v23 = a7;
  v24 = &protocol witness table for UIView.Invalidations.Tuple<A, B>;
  v19 = type metadata accessor for UIView.Invalidating(0, &v21);
  sub_18906D418(a2, a3, a5, a6, a8, a10, a9 + *(v19 + 52));
  (*(*(a6 - 8) + 8))(a3, a6);
  return (*(*(a5 - 8) + 8))(a2, a5);
}

uint64_t UIView.Invalidating.init<A, B, C>(wrappedValue:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, _UNKNOWN **a10, _UNKNOWN **a11, _UNKNOWN **a12, _UNKNOWN **a13)
{
  v29 = a1;
  v30 = a8;
  v34 = a4;
  v35 = a6;
  v31 = a13;
  v32 = a10;
  v36 = a7;
  v37 = a11;
  v38 = a12;
  v19 = type metadata accessor for UIView.Invalidations.Tuple(0, &v35);
  v33 = *(v19 - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v29 - v21;
  (*(*(a5 - 8) + 32))(a9, v29, a5, v20);
  sub_18906D418(a2, a3, a6, a7, a11, a12, v22);
  (*(*(a7 - 8) + 8))(a3, a7);
  (*(*(a6 - 8) + 8))(a2, a6);
  v23 = v30;
  v24 = v31;
  v35 = v19;
  v36 = v30;
  v37 = &protocol witness table for UIView.Invalidations.Tuple<A, B>;
  v38 = v31;
  v25 = type metadata accessor for UIView.Invalidations.Tuple(255, &v35);
  v35 = a5;
  v36 = v25;
  v37 = v32;
  v38 = &protocol witness table for UIView.Invalidations.Tuple<A, B>;
  v26 = type metadata accessor for UIView.Invalidating(0, &v35);
  v27 = v34;
  sub_18906D418(v22, v34, v19, v23, &protocol witness table for UIView.Invalidations.Tuple<A, B>, v24, a9 + *(v26 + 52));
  (*(*(v23 - 8) + 8))(v27, v23);
  return (*(v33 + 8))(v22, v19);
}

uint64_t UIView.Invalidating.init<A, B, C, D>(wrappedValue:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, _UNKNOWN **a12, _UNKNOWN **a13, _UNKNOWN **a14, _UNKNOWN **a15, _UNKNOWN **a16)
{
  v39 = a4;
  v40 = a5;
  v34 = a1;
  v35 = a3;
  v36 = a9;
  v44 = a12;
  v45 = a6;
  v37 = a15;
  v38 = a16;
  v33 = a14;
  v46 = a10;
  v47 = a11;
  v48 = a15;
  v49 = a16;
  v41 = type metadata accessor for UIView.Invalidations.Tuple(0, &v46);
  v43 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v21 = &v33 - v20;
  v46 = a7;
  v47 = a8;
  v48 = a13;
  v49 = a14;
  v22 = type metadata accessor for UIView.Invalidations.Tuple(0, &v46);
  v42 = *(v22 - 8);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v33 - v24;
  (*(*(v45 - 8) + 32))(a9, v34, v23);
  v26 = v35;
  sub_18906D418(a2, v35, a7, a8, a13, v33, v25);
  (*(*(a8 - 8) + 8))(v26, a8);
  (*(*(a7 - 8) + 8))(a2, a7);
  v27 = v39;
  v28 = v40;
  sub_18906D418(v39, v40, a10, a11, v37, v38, v21);
  (*(*(a11 - 8) + 8))(v28, a11);
  (*(*(a10 - 8) + 8))(v27, a10);
  v29 = v41;
  v46 = v22;
  v47 = v41;
  v48 = &protocol witness table for UIView.Invalidations.Tuple<A, B>;
  v49 = &protocol witness table for UIView.Invalidations.Tuple<A, B>;
  v30 = type metadata accessor for UIView.Invalidations.Tuple(255, &v46);
  v46 = v45;
  v47 = v30;
  v48 = v44;
  v49 = &protocol witness table for UIView.Invalidations.Tuple<A, B>;
  v31 = type metadata accessor for UIView.Invalidating(0, &v46);
  sub_18906D418(v25, v21, v22, v29, &protocol witness table for UIView.Invalidations.Tuple<A, B>, &protocol witness table for UIView.Invalidations.Tuple<A, B>, v36 + *(v31 + 52));
  (*(v43 + 8))(v21, v29);
  return (*(v42 + 8))(v25, v22);
}

uint64_t UIView.Invalidating.init<A, B, C, D, E>(wrappedValue:_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, _UNKNOWN **a14, _UNKNOWN **a15, _UNKNOWN **a16, _UNKNOWN **a17, _UNKNOWN **a18, _UNKNOWN **a19)
{
  v58 = a6;
  v59 = a7;
  v51 = a4;
  v52 = a5;
  v46 = a1;
  v60 = a9;
  v44 = a15;
  v56 = a19;
  v57 = a14;
  v50 = a18;
  v43 = a16;
  v49 = a17;
  v55 = a13;
  v61 = a11;
  v62 = a12;
  v63 = a17;
  v64 = a18;
  v22 = type metadata accessor for UIView.Invalidations.Tuple(0, &v61);
  v45 = v22;
  v53 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v42 - v23;
  v61 = a8;
  v62 = a10;
  v63 = a15;
  v64 = a16;
  v25 = type metadata accessor for UIView.Invalidations.Tuple(0, &v61);
  v48 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v42 - v26;
  v61 = v28;
  v62 = v22;
  v63 = &protocol witness table for UIView.Invalidations.Tuple<A, B>;
  v64 = &protocol witness table for UIView.Invalidations.Tuple<A, B>;
  v47 = type metadata accessor for UIView.Invalidations.Tuple(0, &v61);
  v54 = *(v47 - 8);
  v29 = MEMORY[0x1EEE9AC00](v47);
  v31 = &v42 - v30;
  (*(*(v59 - 8) + 32))(v60, v46, v29);
  sub_18906D418(a2, a3, a8, a10, v44, v43, v27);
  (*(*(a10 - 8) + 8))(a3, a10);
  (*(*(a8 - 8) + 8))(a2, a8);
  v32 = v51;
  v33 = v52;
  sub_18906D418(v51, v52, a11, a12, v49, v50, v24);
  (*(*(a12 - 8) + 8))(v33, a12);
  (*(*(a11 - 8) + 8))(v32, a11);
  v34 = v45;
  sub_18906D418(v27, v24, v25, v45, &protocol witness table for UIView.Invalidations.Tuple<A, B>, &protocol witness table for UIView.Invalidations.Tuple<A, B>, v31);
  (*(v53 + 8))(v24, v34);
  (*(v48 + 8))(v27, v25);
  v35 = v47;
  v37 = v55;
  v36 = v56;
  v61 = v47;
  v62 = v55;
  v63 = &protocol witness table for UIView.Invalidations.Tuple<A, B>;
  v64 = v56;
  v38 = type metadata accessor for UIView.Invalidations.Tuple(255, &v61);
  v61 = v59;
  v62 = v38;
  v63 = v57;
  v64 = &protocol witness table for UIView.Invalidations.Tuple<A, B>;
  v39 = type metadata accessor for UIView.Invalidating(0, &v61);
  v40 = v58;
  sub_18906D418(v31, v58, v35, v37, &protocol witness table for UIView.Invalidations.Tuple<A, B>, v36, v60 + *(v39 + 52));
  (*(*(v37 - 8) + 8))(v40, v37);
  return (*(v54 + 8))(v31, v35);
}

uint64_t UIView.Invalidating.init<A, B, C, D, E, F>(wrappedValue:_:_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, _UNKNOWN **a16, _UNKNOWN **a17, _UNKNOWN **a18, _UNKNOWN **a19, _UNKNOWN **a20, _UNKNOWN **a21, _UNKNOWN **a22)
{
  v72 = a8;
  v68 = a6;
  v69 = a7;
  v61 = a5;
  v59 = a4;
  v57 = a2;
  v55 = a1;
  v73 = a9;
  v71 = a16;
  v49 = a18;
  v54 = a19;
  v52 = a13;
  v51 = a12;
  v66 = a22;
  v53 = a20;
  v63 = a15;
  v64 = a14;
  v65 = a21;
  v74 = a14;
  v75 = a15;
  v76 = a21;
  v77 = a22;
  v67 = type metadata accessor for UIView.Invalidations.Tuple(0, &v74);
  v70 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v62 = &v49 - v23;
  v74 = a12;
  v75 = a13;
  v76 = a19;
  v77 = a20;
  v24 = type metadata accessor for UIView.Invalidations.Tuple(0, &v74);
  v58 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v49 - v25;
  v74 = a10;
  v75 = a11;
  v76 = a17;
  v77 = a18;
  v27 = type metadata accessor for UIView.Invalidations.Tuple(0, &v74);
  v50 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v49 - v28;
  v74 = v30;
  v75 = v24;
  v76 = &protocol witness table for UIView.Invalidations.Tuple<A, B>;
  v77 = &protocol witness table for UIView.Invalidations.Tuple<A, B>;
  v56 = type metadata accessor for UIView.Invalidations.Tuple(0, &v74);
  v60 = *(v56 - 8);
  v31 = MEMORY[0x1EEE9AC00](v56);
  v33 = &v49 - v32;
  (*(*(v72 - 8) + 32))(v73, v55, v31);
  v34 = v57;
  sub_18906D418(v57, a3, a10, a11, a17, v49, v29);
  (*(*(a11 - 8) + 8))(a3, a11);
  (*(*(a10 - 8) + 8))(v34, a10);
  v35 = v59;
  v36 = v61;
  v37 = v51;
  v38 = v52;
  sub_18906D418(v59, v61, v51, v52, v54, v53, v26);
  (*(*(v38 - 8) + 8))(v36, v38);
  (*(*(v37 - 8) + 8))(v35, v37);
  sub_18906D418(v29, v26, v27, v24, &protocol witness table for UIView.Invalidations.Tuple<A, B>, &protocol witness table for UIView.Invalidations.Tuple<A, B>, v33);
  (*(v58 + 8))(v26, v24);
  (*(v50 + 8))(v29, v27);
  v39 = v62;
  v40 = v63;
  v41 = v68;
  v42 = v69;
  v43 = v64;
  sub_18906D418(v68, v69, v64, v63, v65, v66, v62);
  (*(*(v40 - 8) + 8))(v42, v40);
  (*(*(v43 - 8) + 8))(v41, v43);
  v44 = v56;
  v45 = v67;
  v74 = v56;
  v75 = v67;
  v76 = &protocol witness table for UIView.Invalidations.Tuple<A, B>;
  v77 = &protocol witness table for UIView.Invalidations.Tuple<A, B>;
  v46 = type metadata accessor for UIView.Invalidations.Tuple(255, &v74);
  v74 = v72;
  v75 = v46;
  v76 = v71;
  v77 = &protocol witness table for UIView.Invalidations.Tuple<A, B>;
  v47 = type metadata accessor for UIView.Invalidating(0, &v74);
  sub_18906D418(v33, v39, v44, v45, &protocol witness table for UIView.Invalidations.Tuple<A, B>, &protocol witness table for UIView.Invalidations.Tuple<A, B>, v73 + *(v47 + 52));
  (*(v70 + 8))(v39, v45);
  return (*(v60 + 8))(v33, v44);
}

uint64_t UIView.Invalidating.init<A, B, C, D, E, F, G>(wrappedValue:_:_:_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, _UNKNOWN **a18, _UNKNOWN **a19, _UNKNOWN **a20, _UNKNOWN **a21, _UNKNOWN **a22, _UNKNOWN **a23, _UNKNOWN **a24, _UNKNOWN **a25)
{
  v88 = a8;
  v84 = a6;
  v85 = a7;
  v75 = a5;
  v74 = a4;
  v70 = a3;
  v69 = a2;
  v68 = a1;
  v91 = a9;
  v89 = a18;
  v60 = a19;
  v90 = a10;
  v65 = a21;
  v62 = a13;
  v79 = a24;
  v80 = a25;
  v64 = a22;
  v78 = a23;
  v82 = a17;
  v76 = a16;
  v63 = a14;
  v77 = a15;
  v92 = a15;
  v93 = a16;
  v94 = a23;
  v95 = a24;
  v81 = type metadata accessor for UIView.Invalidations.Tuple(0, &v92);
  v86 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v72 = &v59 - v25;
  v92 = v26;
  v93 = a17;
  v94 = &protocol witness table for UIView.Invalidations.Tuple<A, B>;
  v95 = a25;
  v83 = type metadata accessor for UIView.Invalidations.Tuple(0, &v92);
  v87 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v73 = &v59 - v27;
  v92 = a13;
  v93 = a14;
  v94 = a21;
  v95 = a22;
  v28 = type metadata accessor for UIView.Invalidations.Tuple(0, &v92);
  v66 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v59 - v29;
  v92 = a11;
  v93 = a12;
  v94 = a19;
  v95 = a20;
  v31 = type metadata accessor for UIView.Invalidations.Tuple(0, &v92);
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v59 - v33;
  v92 = v35;
  v93 = v28;
  v94 = &protocol witness table for UIView.Invalidations.Tuple<A, B>;
  v95 = &protocol witness table for UIView.Invalidations.Tuple<A, B>;
  v67 = type metadata accessor for UIView.Invalidations.Tuple(0, &v92);
  v71 = *(v67 - 8);
  v36 = MEMORY[0x1EEE9AC00](v67);
  v61 = &v59 - v37;
  (*(*(v90 - 8) + 32))(v91, v68, v36);
  v38 = v69;
  v39 = v70;
  sub_18906D418(v69, v70, a11, a12, v60, a20, v34);
  (*(*(a12 - 8) + 8))(v39, a12);
  (*(*(a11 - 8) + 8))(v38, a11);
  v40 = v74;
  v41 = v75;
  v42 = v62;
  v43 = v63;
  sub_18906D418(v74, v75, v62, v63, v65, v64, v30);
  (*(*(v43 - 8) + 8))(v41, v43);
  (*(*(v42 - 8) + 8))(v40, v42);
  v44 = v61;
  sub_18906D418(v34, v30, v31, v28, &protocol witness table for UIView.Invalidations.Tuple<A, B>, &protocol witness table for UIView.Invalidations.Tuple<A, B>, v61);
  (*(v66 + 8))(v30, v28);
  (*(v32 + 8))(v34, v31);
  v45 = v72;
  v46 = v84;
  v47 = v85;
  v49 = v76;
  v48 = v77;
  sub_18906D418(v84, v85, v77, v76, v78, v79, v72);
  (*(*(v49 - 8) + 8))(v47, v49);
  (*(*(v48 - 8) + 8))(v46, v48);
  v50 = v73;
  v51 = v88;
  v53 = v81;
  v52 = v82;
  sub_18906D418(v45, v88, v81, v82, &protocol witness table for UIView.Invalidations.Tuple<A, B>, v80, v73);
  (*(*(v52 - 8) + 8))(v51, v52);
  (*(v86 + 8))(v45, v53);
  v54 = v67;
  v55 = v83;
  v92 = v67;
  v93 = v83;
  v94 = &protocol witness table for UIView.Invalidations.Tuple<A, B>;
  v95 = &protocol witness table for UIView.Invalidations.Tuple<A, B>;
  v56 = type metadata accessor for UIView.Invalidations.Tuple(255, &v92);
  v92 = v90;
  v93 = v56;
  v94 = v89;
  v95 = &protocol witness table for UIView.Invalidations.Tuple<A, B>;
  v57 = type metadata accessor for UIView.Invalidating(0, &v92);
  sub_18906D418(v44, v50, v54, v55, &protocol witness table for UIView.Invalidations.Tuple<A, B>, &protocol witness table for UIView.Invalidations.Tuple<A, B>, v91 + *(v57 + 52));
  (*(v87 + 8))(v50, v55);
  return (*(v71 + 8))(v44, v54);
}

uint64_t UIView.Invalidating.init<A, B, C, D, E, F, G, H>(wrappedValue:_:_:_:_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, _UNKNOWN **a20, _UNKNOWN **a21, _UNKNOWN **a22, _UNKNOWN **a23, _UNKNOWN **a24, _UNKNOWN **a25, _UNKNOWN **a26, _UNKNOWN **a27, _UNKNOWN **a28)
{
  v107 = a8;
  v99 = a7;
  v97 = a6;
  v92 = a5;
  v90 = a4;
  v84 = a3;
  v82 = a2;
  v81 = a1;
  v110 = a9;
  v106 = a10;
  v108 = a20;
  v109 = a11;
  v78 = a21;
  v74 = a12;
  v77 = a22;
  v76 = a23;
  v73 = a15;
  v72 = a14;
  v75 = a24;
  v89 = a25;
  v87 = a17;
  v86 = a16;
  v103 = a28;
  v88 = a26;
  v100 = a19;
  v101 = a18;
  v102 = a27;
  v111 = a18;
  v112 = a19;
  v113 = a27;
  v114 = a28;
  v28 = type metadata accessor for UIView.Invalidations.Tuple(0, &v111);
  v95 = v28;
  v105 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v93 = &v70 - v29;
  v111 = a16;
  v112 = a17;
  v113 = a25;
  v114 = a26;
  v94 = type metadata accessor for UIView.Invalidations.Tuple(0, &v111);
  v98 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v83 = &v70 - v30;
  v111 = v31;
  v112 = v28;
  v113 = &protocol witness table for UIView.Invalidations.Tuple<A, B>;
  v114 = &protocol witness table for UIView.Invalidations.Tuple<A, B>;
  v96 = type metadata accessor for UIView.Invalidations.Tuple(0, &v111);
  v104 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v91 = &v70 - v32;
  v111 = a14;
  v112 = a15;
  v113 = a23;
  v114 = a24;
  v33 = type metadata accessor for UIView.Invalidations.Tuple(0, &v111);
  v79 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v70 - v34;
  v36 = v74;
  v111 = v74;
  v112 = a13;
  v37 = v78;
  v38 = v77;
  v113 = v78;
  v114 = v77;
  v39 = type metadata accessor for UIView.Invalidations.Tuple(0, &v111);
  v71 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v70 - v40;
  v111 = v42;
  v112 = v33;
  v113 = &protocol witness table for UIView.Invalidations.Tuple<A, B>;
  v114 = &protocol witness table for UIView.Invalidations.Tuple<A, B>;
  v80 = type metadata accessor for UIView.Invalidations.Tuple(0, &v111);
  v85 = *(v80 - 8);
  v43 = MEMORY[0x1EEE9AC00](v80);
  v70 = &v70 - v44;
  (*(*(v109 - 8) + 32))(v110, v81, v43);
  v45 = v82;
  v46 = v84;
  sub_18906D418(v82, v84, v36, a13, v37, v38, v41);
  (*(*(a13 - 8) + 8))(v46, a13);
  (*(*(v36 - 8) + 8))(v45, v36);
  v47 = v90;
  v48 = v92;
  v49 = v72;
  v50 = v73;
  sub_18906D418(v90, v92, v72, v73, v76, v75, v35);
  (*(*(v50 - 8) + 8))(v48, v50);
  (*(*(v49 - 8) + 8))(v47, v49);
  v51 = v70;
  sub_18906D418(v41, v35, v39, v33, &protocol witness table for UIView.Invalidations.Tuple<A, B>, &protocol witness table for UIView.Invalidations.Tuple<A, B>, v70);
  (*(v79 + 8))(v35, v33);
  (*(v71 + 8))(v41, v39);
  v52 = v83;
  v53 = v97;
  v54 = v99;
  v55 = v86;
  v56 = v87;
  sub_18906D418(v97, v99, v86, v87, v89, v88, v83);
  (*(*(v56 - 8) + 8))(v54, v56);
  (*(*(v55 - 8) + 8))(v53, v55);
  v57 = v93;
  v59 = v106;
  v58 = v107;
  v61 = v100;
  v60 = v101;
  sub_18906D418(v107, v106, v101, v100, v102, v103, v93);
  (*(*(v61 - 8) + 8))(v59, v61);
  (*(*(v60 - 8) + 8))(v58, v60);
  v62 = v91;
  v64 = v94;
  v63 = v95;
  sub_18906D418(v52, v57, v94, v95, &protocol witness table for UIView.Invalidations.Tuple<A, B>, &protocol witness table for UIView.Invalidations.Tuple<A, B>, v91);
  (*(v105 + 8))(v57, v63);
  (*(v98 + 8))(v52, v64);
  v65 = v80;
  v66 = v96;
  v111 = v80;
  v112 = v96;
  v113 = &protocol witness table for UIView.Invalidations.Tuple<A, B>;
  v114 = &protocol witness table for UIView.Invalidations.Tuple<A, B>;
  v67 = type metadata accessor for UIView.Invalidations.Tuple(255, &v111);
  v111 = v109;
  v112 = v67;
  v113 = v108;
  v114 = &protocol witness table for UIView.Invalidations.Tuple<A, B>;
  v68 = type metadata accessor for UIView.Invalidating(0, &v111);
  sub_18906D418(v51, v62, v65, v66, &protocol witness table for UIView.Invalidations.Tuple<A, B>, &protocol witness table for UIView.Invalidations.Tuple<A, B>, v110 + *(v68 + 52));
  (*(v104 + 8))(v62, v66);
  return (*(v85 + 8))(v51, v65);
}

uint64_t UIView.Invalidating.init<A, B, C, D, E, F, G, H, I>(wrappedValue:_:_:_:_:_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, _UNKNOWN **a22, _UNKNOWN **a23, _UNKNOWN **a24, _UNKNOWN **a25, _UNKNOWN **a26, _UNKNOWN **a27, _UNKNOWN **a28, _UNKNOWN **a29, _UNKNOWN **a30, _UNKNOWN **a31)
{
  v123 = a8;
  v119 = a6;
  v120 = a7;
  v109 = a5;
  v108 = a4;
  v101 = a3;
  v100 = a2;
  v99 = a1;
  v130 = a9;
  v122 = a10;
  v126 = a22;
  v127 = a11;
  v86 = a23;
  v128 = a12;
  v84 = a13;
  v85 = a24;
  v91 = a25;
  v129 = a14;
  v89 = a15;
  v90 = a26;
  v106 = a27;
  v88 = a16;
  v104 = a17;
  v125 = a31;
  v118 = a30;
  v105 = a28;
  v117 = a29;
  v124 = a21;
  v115 = a20;
  v103 = a18;
  v116 = a19;
  v131 = a19;
  v132 = a20;
  v133 = a29;
  v134 = a30;
  v31 = type metadata accessor for UIView.Invalidations.Tuple(0, &v131);
  v112 = v31;
  v121 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v110 = &v82 - v32;
  v131 = a17;
  v132 = a18;
  v133 = a27;
  v134 = a28;
  v111 = type metadata accessor for UIView.Invalidations.Tuple(0, &v131);
  v114 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v98 = &v82 - v33;
  v131 = v34;
  v132 = v31;
  v133 = &protocol witness table for UIView.Invalidations.Tuple<A, B>;
  v134 = &protocol witness table for UIView.Invalidations.Tuple<A, B>;
  v35 = type metadata accessor for UIView.Invalidations.Tuple(0, &v131);
  v95 = v35;
  v113 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v107 = &v82 - v36;
  v131 = a15;
  v132 = a16;
  v133 = a25;
  v134 = a26;
  v37 = type metadata accessor for UIView.Invalidations.Tuple(0, &v131);
  v92 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v82 - v38;
  v40 = v84;
  v131 = v84;
  v132 = v129;
  v41 = v86;
  v42 = v85;
  v133 = v86;
  v134 = v85;
  v43 = type metadata accessor for UIView.Invalidations.Tuple(0, &v131);
  v87 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v82 - v44;
  v131 = v46;
  v132 = v37;
  v133 = &protocol witness table for UIView.Invalidations.Tuple<A, B>;
  v134 = &protocol witness table for UIView.Invalidations.Tuple<A, B>;
  v94 = type metadata accessor for UIView.Invalidations.Tuple(0, &v131);
  v97 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v83 = &v82 - v47;
  v131 = v48;
  v132 = v35;
  v133 = &protocol witness table for UIView.Invalidations.Tuple<A, B>;
  v134 = &protocol witness table for UIView.Invalidations.Tuple<A, B>;
  v96 = type metadata accessor for UIView.Invalidations.Tuple(0, &v131);
  v102 = *(v96 - 8);
  v49 = MEMORY[0x1EEE9AC00](v96);
  v93 = &v82 - v50;
  (*(*(v128 - 8) + 32))(v130, v99, v49);
  v51 = v100;
  v52 = v101;
  v53 = v129;
  sub_18906D418(v100, v101, v40, v129, v41, v42, v45);
  (*(*(v53 - 8) + 8))(v52, v53);
  (*(*(v40 - 8) + 8))(v51, v40);
  v54 = v108;
  v55 = v109;
  v56 = v89;
  v57 = v88;
  sub_18906D418(v108, v109, v89, v88, v91, v90, v39);
  (*(*(v57 - 8) + 8))(v55, v57);
  (*(*(v56 - 8) + 8))(v54, v56);
  v58 = v83;
  sub_18906D418(v45, v39, v43, v37, &protocol witness table for UIView.Invalidations.Tuple<A, B>, &protocol witness table for UIView.Invalidations.Tuple<A, B>, v83);
  (*(v92 + 8))(v39, v37);
  (*(v87 + 8))(v45, v43);
  v59 = v98;
  v60 = v119;
  v61 = v120;
  v62 = v104;
  v63 = v103;
  sub_18906D418(v119, v120, v104, v103, v106, v105, v98);
  (*(*(v63 - 8) + 8))(v61, v63);
  (*(*(v62 - 8) + 8))(v60, v62);
  v64 = v110;
  v66 = v122;
  v65 = v123;
  v68 = v115;
  v67 = v116;
  sub_18906D418(v123, v122, v116, v115, v117, v118, v110);
  (*(*(v68 - 8) + 8))(v66, v68);
  (*(*(v67 - 8) + 8))(v65, v67);
  v69 = v107;
  v70 = v111;
  v71 = v112;
  sub_18906D418(v59, v64, v111, v112, &protocol witness table for UIView.Invalidations.Tuple<A, B>, &protocol witness table for UIView.Invalidations.Tuple<A, B>, v107);
  (*(v121 + 8))(v64, v71);
  (*(v114 + 8))(v59, v70);
  v72 = v93;
  v73 = v94;
  v74 = v95;
  sub_18906D418(v58, v69, v94, v95, &protocol witness table for UIView.Invalidations.Tuple<A, B>, &protocol witness table for UIView.Invalidations.Tuple<A, B>, v93);
  (*(v113 + 8))(v69, v74);
  (*(v97 + 8))(v58, v73);
  v75 = v96;
  v77 = v124;
  v76 = v125;
  v131 = v96;
  v132 = v124;
  v133 = &protocol witness table for UIView.Invalidations.Tuple<A, B>;
  v134 = v125;
  v78 = type metadata accessor for UIView.Invalidations.Tuple(255, &v131);
  v131 = v128;
  v132 = v78;
  v133 = v126;
  v134 = &protocol witness table for UIView.Invalidations.Tuple<A, B>;
  v79 = type metadata accessor for UIView.Invalidating(0, &v131);
  v80 = v127;
  sub_18906D418(v72, v127, v75, v77, &protocol witness table for UIView.Invalidations.Tuple<A, B>, v76, v130 + *(v79 + 52));
  (*(*(v77 - 8) + 8))(v80, v77);
  return (*(v102 + 8))(v72, v75);
}

uint64_t UIView.Invalidating.init<A, B, C, D, E, F, G, H, I, J>(wrappedValue:_:_:_:_:_:_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, _UNKNOWN **a24, _UNKNOWN **a25, _UNKNOWN **a26, _UNKNOWN **a27, _UNKNOWN **a28, _UNKNOWN **a29, _UNKNOWN **a30, _UNKNOWN **a31, _UNKNOWN **a32, _UNKNOWN **a33, _UNKNOWN **a34)
{
  v129 = a8;
  v127 = a7;
  v126 = a6;
  v118 = a5;
  v117 = a4;
  v112 = a3;
  v111 = a2;
  v110 = a1;
  v144 = a9;
  v128 = a10;
  v136 = a12;
  v137 = a11;
  v142 = a13;
  v139 = a24;
  v97 = a25;
  v95 = a15;
  v94 = a14;
  v96 = a26;
  v93 = a27;
  v140 = a17;
  v143 = a16;
  v92 = a28;
  v108 = a29;
  v106 = a19;
  v105 = a18;
  v134 = a34;
  v124 = a32;
  v131 = a23;
  v132 = a22;
  v133 = a33;
  v145 = a22;
  v146 = a23;
  v147 = a33;
  v148 = a34;
  v107 = a30;
  v123 = a31;
  v122 = a21;
  v121 = a20;
  v135 = type metadata accessor for UIView.Invalidations.Tuple(0, &v145);
  v138 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v130 = &v90 - v34;
  v145 = a20;
  v146 = a21;
  v147 = a31;
  v148 = a32;
  v35 = type metadata accessor for UIView.Invalidations.Tuple(0, &v145);
  v116 = v35;
  v125 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v114 = &v90 - v36;
  v145 = a18;
  v146 = a19;
  v147 = a29;
  v148 = a30;
  v115 = type metadata accessor for UIView.Invalidations.Tuple(0, &v145);
  v120 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v103 = &v90 - v37;
  v145 = v38;
  v146 = v35;
  v147 = &protocol witness table for UIView.Invalidations.Tuple<A, B>;
  v148 = &protocol witness table for UIView.Invalidations.Tuple<A, B>;
  v39 = type metadata accessor for UIView.Invalidations.Tuple(0, &v145);
  v101 = v39;
  v119 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v109 = &v90 - v40;
  v145 = v143;
  v146 = v140;
  v147 = a27;
  v148 = a28;
  v41 = type metadata accessor for UIView.Invalidations.Tuple(0, &v145);
  v90 = v41;
  v98 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v90 - v42;
  v44 = v94;
  v45 = v95;
  v145 = v94;
  v146 = v95;
  v46 = v97;
  v47 = v96;
  v147 = v97;
  v148 = v96;
  v48 = type metadata accessor for UIView.Invalidations.Tuple(0, &v145);
  v91 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v90 - v49;
  v145 = v51;
  v146 = v41;
  v147 = &protocol witness table for UIView.Invalidations.Tuple<A, B>;
  v148 = &protocol witness table for UIView.Invalidations.Tuple<A, B>;
  v100 = type metadata accessor for UIView.Invalidations.Tuple(0, &v145);
  v102 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v141 = &v90 - v52;
  v145 = v53;
  v146 = v39;
  v147 = &protocol witness table for UIView.Invalidations.Tuple<A, B>;
  v148 = &protocol witness table for UIView.Invalidations.Tuple<A, B>;
  v104 = type metadata accessor for UIView.Invalidations.Tuple(0, &v145);
  v113 = *(v104 - 8);
  v54 = MEMORY[0x1EEE9AC00](v104);
  v99 = &v90 - v55;
  (*(*(v142 - 8) + 32))(v144, v110, v54);
  v56 = v111;
  v57 = v112;
  sub_18906D418(v111, v112, v44, v45, v46, v47, v50);
  (*(*(v45 - 8) + 8))(v57, v45);
  (*(*(v44 - 8) + 8))(v56, v44);
  v58 = v117;
  v59 = v118;
  v60 = v143;
  v61 = v140;
  sub_18906D418(v117, v118, v143, v140, v93, v92, v43);
  (*(*(v61 - 8) + 8))(v59, v61);
  (*(*(v60 - 8) + 8))(v58, v60);
  v62 = v90;
  sub_18906D418(v50, v43, v48, v90, &protocol witness table for UIView.Invalidations.Tuple<A, B>, &protocol witness table for UIView.Invalidations.Tuple<A, B>, v141);
  (*(v98 + 8))(v43, v62);
  (*(v91 + 8))(v50, v48);
  v63 = v103;
  v64 = v126;
  v65 = v127;
  v66 = v105;
  v67 = v106;
  sub_18906D418(v126, v127, v105, v106, v108, v107, v103);
  (*(*(v67 - 8) + 8))(v65, v67);
  (*(*(v66 - 8) + 8))(v64, v66);
  v68 = v114;
  v70 = v128;
  v69 = v129;
  v71 = v121;
  v72 = v122;
  sub_18906D418(v129, v128, v121, v122, v123, v124, v114);
  (*(*(v72 - 8) + 8))(v70, v72);
  (*(*(v71 - 8) + 8))(v69, v71);
  v73 = v109;
  v74 = v115;
  v75 = v116;
  sub_18906D418(v63, v68, v115, v116, &protocol witness table for UIView.Invalidations.Tuple<A, B>, &protocol witness table for UIView.Invalidations.Tuple<A, B>, v109);
  (*(v125 + 8))(v68, v75);
  (*(v120 + 8))(v63, v74);
  v76 = v99;
  v77 = v141;
  v78 = v100;
  v79 = v101;
  sub_18906D418(v141, v73, v100, v101, &protocol witness table for UIView.Invalidations.Tuple<A, B>, &protocol witness table for UIView.Invalidations.Tuple<A, B>, v99);
  (*(v119 + 8))(v73, v79);
  (*(v102 + 8))(v77, v78);
  v80 = v130;
  v81 = v131;
  v83 = v136;
  v82 = v137;
  v84 = v132;
  sub_18906D418(v137, v136, v132, v131, v133, v134, v130);
  (*(*(v81 - 8) + 8))(v83, v81);
  (*(*(v84 - 8) + 8))(v82, v84);
  v85 = v104;
  v86 = v135;
  v145 = v104;
  v146 = v135;
  v147 = &protocol witness table for UIView.Invalidations.Tuple<A, B>;
  v148 = &protocol witness table for UIView.Invalidations.Tuple<A, B>;
  v87 = type metadata accessor for UIView.Invalidations.Tuple(255, &v145);
  v145 = v142;
  v146 = v87;
  v147 = v139;
  v148 = &protocol witness table for UIView.Invalidations.Tuple<A, B>;
  v88 = type metadata accessor for UIView.Invalidating(0, &v145);
  sub_18906D418(v76, v80, v85, v86, &protocol witness table for UIView.Invalidations.Tuple<A, B>, &protocol witness table for UIView.Invalidations.Tuple<A, B>, v144 + *(v88 + 52));
  (*(v138 + 8))(v80, v86);
  return (*(v113 + 8))(v76, v85);
}

uint64_t sub_189070CDC(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = &v11 - v2;
  v6 = *v4;
  v5 = *(v4 + 8);
  v7 = *(v4 + 16);
  (*(v8 + 16))(&v11 - v2, v1);
  v9 = v6;

  return static UIView.Invalidating.subscript.setter(v3, v9, v5, v7);
}

void (*static UIView.Invalidating.subscript.modify(void *a1, void *a2, uint64_t *a3, uint64_t a4))(void ***a1, char a2)
{
  v8 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x38uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[1] = a3;
  v9[2] = a4;
  *v9 = a2;
  v11 = *(*a3 + *MEMORY[0x1E69E6F98] + 8);
  v9[3] = v11;
  v12 = *(v11 - 8);
  v9[4] = v12;
  v13 = *(v12 + 64);
  if (v8)
  {
    v9[5] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v9[5] = malloc(v13);
    v14 = malloc(v13);
  }

  v10[6] = v14;
  static UIView.Invalidating.subscript.getter(a2, a3, v14);
  return sub_189070F20;
}

void sub_189070F20(void ***a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  if (a2)
  {
    v5 = v2[3];
    v6 = v2[4];
    v8 = v2[1];
    v7 = v2[2];
    v9 = *v2;
    v6[2]((*a1)[5], v4, v5);

    static UIView.Invalidating.subscript.setter(v3, v9, v8, v7);
    (v6[1])(v4, v5);
  }

  else
  {
    v11 = v2[1];
    v10 = v2[2];
    v12 = *v2;

    static UIView.Invalidating.subscript.setter(v4, v12, v11, v10);
  }

  free(v4);
  free(v3);

  free(v2);
}

Swift::Void __swiftcall UIView.Invalidations.Tuple.invalidate(view:)(UIView *view)
{
  v2 = v1;
  (*(*(v1 + 32) + 8))(view, *(v1 + 16));
  (*(*(v2 + 40) + 8))(view, *(v2 + 24));
}

uint64_t sub_1890711D4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

char *sub_1890713B0(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

_BYTE *sub_189071728(void *a1)
{
  result = [a1 viewIfLoaded];
  if (result)
  {
    v4 = result;
    v5 = [(UIPresentationController *)v1 _presentedViewWithReentrancyGuard];
    if (v5)
    {
      v6 = v5;
      if (v4 == v5)
      {

        return 0;
      }

      v7 = [v1 containerView];
      if (v7)
      {
        v8 = v7;
        if ([(UIView *)v7 _containsView:v6])
        {
          v9 = [v6 _traitCollectionForChildEnvironment_];

          return v9;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_189071868(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935D70, &qword_18A654CE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1890718D8()
{
  result = qword_1EA93B0E0;
  if (!qword_1EA93B0E0)
  {
    sub_18A4A2DB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93B0E0);
  }

  return result;
}

char *sub_189071924()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934480, &unk_18A653360);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A6510E0;
  *(inited + 32) = &type metadata for _GlassBackgroundStyleTrait;
  *(inited + 40) = &off_1ED48F0A8;
  *(inited + 48) = &type metadata for _UICornerProvider.Trait;
  *(inited + 56) = &off_1ED48EC48;
  *(inited + 64) = &type metadata for UITraitVibrancy;
  *(inited + 72) = &protocol witness table for UITraitVibrancy;
  *(inited + 80) = &type metadata for _ResolvedProviderTraitDefinition;
  *(inited + 88) = &off_1EE439550;
  *(inited + 96) = &type metadata for GlassUserInterfaceStyleTrait;
  *(inited + 104) = &off_1EE439CE8;
  result = sub_188BEE640(1, 6, 1, inited);
  *(result + 2) = 6;
  *(result + 14) = &type metadata for UITraitUserInterfaceRenderingMode;
  *(result + 15) = &protocol witness table for UITraitUserInterfaceRenderingMode;
  return result;
}

double sub_189071A30(uint64_t (*a1)(uint64_t), uint64_t a2, void (*a3)(void))
{
  v48 = a3;
  v5 = type metadata accessor for _GlassBackgroundStyle(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UIMaterialPresentationsEnabled())
  {
    v9 = (a1)();
    sub_188E1B6FC(v7);

    if (qword_1ED4905B8 != -1)
    {
      swift_once();
    }

    v44 = __swift_project_value_buffer(v5, qword_1ED4A3668);
    v46 = sub_188A82354(v7, v44);
    v10 = sub_188AD77B4(v7);
    v11 = a1(v10);
    v12 = [v11 _vibrancy];

    if (qword_1ED48E728 != -1)
    {
      swift_once();
    }

    v47 = qword_1ED48E730;
    v13 = (a1)();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935D70, &qword_18A654CE0);
    v45 = *(*(v14 - 8) + 64);
    MEMORY[0x1EEE9AC00](v14 - 8);
    v16 = v43 - v15;
    v17 = sub_188B56DB8();

    if (v17)
    {
      v18 = *((*MEMORY[0x1E69E7D40] & *v17) + 0x60);
      v19 = sub_18A4A2DB8();
      v20 = *(v19 - 8);
      v43[1] = a2;
      v21 = v7;
      v22 = v12;
      v23 = v20;
      (*(v20 + 16))(v16, &v17[v18], v19);

      (*(v23 + 56))(v16, 0, 1, v19);
      v12 = v22;
      v7 = v21;
    }

    else
    {
      v24 = sub_18A4A2DB8();
      (*(*(v24 - 8) + 56))(v16, 1, 1, v24);
    }

    v25 = sub_188A3F5FC(v16, &qword_1EA935D70, &qword_18A654CE0);
    v26 = a1(v25);
    v27 = [v26 _userInterfaceRenderingMode];

    if (qword_1ED48E708 != -1)
    {
      swift_once();
    }

    v28 = qword_1EA931B40;
    v29 = v47;
    v30 = v46;
    if ((v46 & 1) == 0 || v12 != v47 || v17 || v27 != qword_1EA931B40)
    {
      v48();
      swift_getObjectType();
      signpost_c2_entryLock_start();
      v50 = &_s13MutableTraitsVN;
      v51 = &off_1EFABCA98;
      v49[0] = v31;
      if (v30)
      {
        if (v12 == v29)
        {
          goto LABEL_17;
        }
      }

      else
      {
        sub_188C8CD6C(v44, v7);
        v39 = v50;
        v40 = v51;
        __swift_mutable_project_boxed_opaque_existential_1(v49, v50);
        v31 = sub_188AC7FC4(v7, v39, v40);
        if (v12 == v29)
        {
LABEL_17:
          if (!v17)
          {
LABEL_19:
            if (v27 != v28)
            {
              v37 = v50;
              v38 = v51;
              __swift_mutable_project_boxed_opaque_existential_1(v49, v50);
              UIMutableTraits._userInterfaceRenderingMode.setter(v28, v37, v38);
            }

            return __swift_destroy_boxed_opaque_existential_0Tm(v49);
          }

LABEL_18:
          MEMORY[0x1EEE9AC00](v31);
          v33 = v43 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
          v34 = sub_18A4A2DB8();
          (*(*(v34 - 8) + 56))(v33, 1, 1, v34);
          v35 = v50;
          v36 = v51;
          __swift_mutable_project_boxed_opaque_existential_1(v49, v50);
          sub_188F65750(v33, v35, v36);
          goto LABEL_19;
        }
      }

      v41 = v50;
      v42 = v51;
      __swift_mutable_project_boxed_opaque_existential_1(v49, v50);
      v31 = UIMutableTraits._vibrancy.setter(v29, v41, v42);
      if (!v17)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  return result;
}

uint64_t sub_189071F50()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

double sub_1890721A8(void (**a1)(void, double))
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  if (off_1EA930B60)
  {
    v3 = *(off_1EA930B60 + 2);
    v6[4] = sub_188EB2CC4;
    v6[5] = v2;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 1107296256;
    v6[2] = sub_188D85708;
    v6[3] = &block_descriptor_26_6;
    v4 = _Block_copy(v6);
    _Block_copy(a1);

    swift_unknownObjectRetain();

    [v3 addInProcessProgressAnimations_];
    _Block_release(v4);

    swift_unknownObjectRelease();
  }

  else
  {
    _Block_copy(a1);
    a1[2](a1, 1.0);
  }

  return result;
}

double sub_18907231C(uint64_t a1, void (**a2)(void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  if (off_1EA930B60)
  {
    _Block_copy(a2);
    a2[2](a2);
  }

  else
  {
    v6 = objc_opt_self();
    v7 = swift_allocObject();
    *(v7 + 16) = sub_188A4AA04;
    *(v7 + 24) = v4;
    v9[4] = sub_188A4A9DC;
    v9[5] = v7;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_188A4A8F0;
    v9[3] = &block_descriptor_19_7;
    v8 = _Block_copy(v9);
    _Block_copy(a2);

    [v6 animateKeyframesWithDuration:a1 delay:v8 options:0 animations:0.0 completion:0.0];
    _Block_release(v8);
  }

  return result;
}

void sub_1890724B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(), uint64_t a4, double a5, double a6)
{
  v10 = off_1EA930B60;
  if (off_1EA930B60)
  {
    swift_beginAccess();

    v13 = sub_188E719F8(&v19, a1, a2);
    swift_endAccess();

    if (v13)
    {
      v14 = v10[2];
      v24 = a3;
      v25 = a4;
      aBlock = MEMORY[0x1E69E9820];
      v21 = 1107296256;
      v22 = sub_188D85708;
      v23 = &block_descriptor_10_1;
      v15 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      [v14 addInProcessProgressKeyframeWithRelativeStartTime:v15 relativeDuration:a5 animations:a6];
      _Block_release(v15);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    v16 = objc_opt_self();
    v17 = swift_allocObject();
    *(v17 + 16) = a3;
    *(v17 + 24) = a4;
    v24 = sub_1890726E4;
    v25 = v17;
    aBlock = MEMORY[0x1E69E9820];
    v21 = 1107296256;
    v22 = sub_188A4A8F0;
    v23 = &block_descriptor_91;
    v18 = _Block_copy(&aBlock);

    [v16 addKeyframeWithRelativeStartTime:v18 relativeDuration:a5 animations:a6];
    _Block_release(v18);
  }
}

void *sub_189072710(uint64_t a1)
{
  v2 = sub_18A4A7EC8();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_189072C7C(&v4, v2, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_189072794(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_18A4A7F08();
    v5 = v4;
    v6 = sub_18A4A7FD8();
    v8 = v7;
    v9 = MEMORY[0x18CFE2E80](v3, v5, v6, v7);
    sub_188FFD0A4(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_188FFD0A4(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_18A4A7EC8();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_189077598(v3, v5, v2 != 0, a1, &qword_1EA9342F0, off_1E70EAB90);
  v12 = v11;
  sub_188FFD0A4(v3, v5, v2 != 0);
  return v12;
}

double sub_1890728C0(uint64_t a1)
{
  v2 = sub_18A4A7EC8();
  if (v2 != 1 << *(a1 + 32))
  {
    sub_189077534(v2, *(a1 + 36), 0, a1);
  }

  return result;
}

uint64_t sub_189072940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_18A4A7EC8();
  v5 = 1;
  if (v4 != 1 << *(a1 + 32))
  {
    sub_1890777C4(v4, *(a1 + 36), a1, a2);
    v5 = 0;
  }

  v6 = type metadata accessor for IntelligenceUI.PromptAmbiguityID(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t UITextFormattingViewControllerTextAlignment.nsTextAlignment.getter(uint64_t a1, uint64_t a2)
{
  v2 = sub_18A4A7288();
  v4 = v3;
  if (v2 == sub_18A4A7288() && v4 == v5)
  {
    v8 = 0;
LABEL_8:

    return v8;
  }

  v7 = sub_18A4A86C8();

  if ((v7 & 1) == 0)
  {
    v10 = sub_18A4A7288();
    v12 = v11;
    if (v10 == sub_18A4A7288() && v12 == v13)
    {
      v8 = 1;
    }

    else
    {
      v15 = sub_18A4A86C8();

      if (v15)
      {
        return 1;
      }

      v16 = sub_18A4A7288();
      v18 = v17;
      if (v16 == sub_18A4A7288() && v18 == v19)
      {
        v8 = 2;
      }

      else
      {
        v20 = sub_18A4A86C8();

        if (v20)
        {
          return 2;
        }

        v21 = sub_18A4A7288();
        v23 = v22;
        if (v21 == sub_18A4A7288() && v23 == v24)
        {
          v8 = 3;
        }

        else
        {
          v25 = sub_18A4A86C8();

          if (v25)
          {
            return 3;
          }

          v26 = sub_18A4A7288();
          v28 = v27;
          if (v26 != sub_18A4A7288() || v28 != v29)
          {
            sub_18A4A86C8();
          }

          v8 = 4;
        }
      }
    }

    goto LABEL_8;
  }

  return 0;
}

__CFString *UITextFormattingViewControllerTextAlignment.init(nsTextAlignment:)(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"UITextFormattingViewControllerTextAlignmentNatural";
  }

  else
  {
    return *off_1E70F21C8[a1];
  }
}

void *sub_189072C7C(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    *result = *(*(a5 + 56) + 8 * a2);

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

void UITextFormattingViewController.formattingDescriptor.setter(__int128 *a1)
{
  v2 = v1;
  v3 = a1[7];
  v26 = a1[6];
  v27 = v3;
  v28 = a1[8];
  v4 = a1[3];
  v22 = a1[2];
  v23 = v4;
  v5 = a1[5];
  v24 = a1[4];
  v25 = v5;
  v6 = a1[1];
  v20 = *a1;
  v21 = v6;
  if (get_enum_tag_for_layout_string_xSbRi_zRi0_zlyq_Isegnd_Sg_0(&v20) == 1)
  {
    v8 = 0;
  }

  else
  {
    v16 = v26;
    v17 = v27;
    v18 = v28;
    v12 = v22;
    v13 = v23;
    v14 = v24;
    v15 = v25;
    v10 = v20;
    v11 = v21;
    UITextFormattingViewController.FormattingDescriptor._bridgeToObjectiveC()(v7);
    v8 = v9;
    v19[6] = v16;
    v19[7] = v17;
    v19[8] = v18;
    v19[2] = v12;
    v19[3] = v13;
    v19[4] = v14;
    v19[5] = v15;
    v19[0] = v10;
    v19[1] = v11;
    sub_189037BC0(v19);
  }

  [v2 setFormattingDescriptor_];
}

void static UITextFormattingViewController.FormattingDescriptor._unconditionallyBridgeFromObjectiveC(_:)(void *a1@<X0>, __int128 *a2@<X8>)
{
  if (a1)
  {
    sub_189038280(v32);
    v29 = v32[6];
    v30 = v32[7];
    v31 = v32[8];
    v25 = v32[2];
    v26 = v32[3];
    v27 = v32[4];
    v28 = v32[5];
    v23 = v32[0];
    v24 = v32[1];
    v4 = a1;
    if (_sSo30UITextFormattingViewControllerC5UIKitE0B10DescriptorV34_conditionallyBridgeFromObjectiveC_6resultSbSo0abcdbF0C_AESgztFZ_0(v4, &v23))
    {
      v20 = v29;
      v21 = v30;
      v22 = v31;
      v16 = v25;
      v17 = v26;
      v18 = v27;
      v19 = v28;
      v14 = v23;
      v15 = v24;
      if (get_enum_tag_for_layout_string_xSbRi_zRi0_zlyq_Isegnd_Sg_0(&v14) != 1)
      {
        v12[6] = v29;
        v12[7] = v30;
        v12[8] = v31;
        v12[2] = v25;
        v12[3] = v26;
        v12[4] = v27;
        v12[5] = v28;
        v12[0] = v23;
        v12[1] = v24;
        v13[6] = v29;
        v13[7] = v30;
        v13[8] = v31;
        v13[2] = v25;
        v13[3] = v26;
        v13[4] = v27;
        v13[5] = v28;
        v13[0] = v23;
        v13[1] = v24;
        sub_189037B64(v13, v11);
        sub_188A3F5FC(v12, &qword_1EA93A748, &unk_18A6611E0);

        v5 = v21;
        a2[6] = v20;
        a2[7] = v5;
        a2[8] = v22;
        v6 = v17;
        a2[2] = v16;
        a2[3] = v6;
        v7 = v19;
        a2[4] = v18;
        a2[5] = v7;
        v8 = v15;
        *a2 = v14;
        a2[1] = v8;
        return;
      }

      __break(1u);
    }
  }

  *&v32[0] = 0;
  *(&v32[0] + 1) = 0xE000000000000000;
  sub_18A4A80E8();

  *&v32[0] = 0xD000000000000011;
  *(&v32[0] + 1) = 0x800000018A68EE10;
  sub_188A34624(0, &qword_1EA93B0E8, off_1E70EAA78);
  v9 = sub_18A4A8AA8();
  MEMORY[0x18CFE22D0](v9);

  MEMORY[0x18CFE22D0](544175136, 0xE400000000000000);
  v10 = sub_18A4A8AA8();
  MEMORY[0x18CFE22D0](v10);

  sub_18A4A8398();
  __break(1u);
}

void UITextFormattingViewController.FormattingDescriptor.init(string:range:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = [objc_allocWithZone(UITextFormattingViewControllerFormattingDescriptor) initWithString:a1 range:{a2, a3}];
  v6 = [v5 fonts];
  if (v6)
  {
    v7 = v6;
    sub_188A34624(0, &qword_1ED48C4A0, &off_1E70ECC18);
    v42 = sub_18A4A7548();
  }

  else
  {
    v42 = MEMORY[0x1E69E7CC0];
  }

  v8 = [v5 textColors];
  if (v8)
  {
    v9 = v8;
    sub_188A34624(0, qword_1ED4913C0, off_1E70E96C8);
    v41 = sub_18A4A7548();
  }

  else
  {
    v41 = MEMORY[0x1E69E7CC0];
  }

  [v5 lineHeight];
  v11 = v10;
  v40 = [v5 underline];
  v38 = [v5 underlinePresent];
  v39 = [v5 strikethrough];
  v37 = [v5 strikethroughPresent];
  v12 = [v5 textAlignments];
  type metadata accessor for TextAlignment(0);
  sub_1890782A8(&qword_1EA933088, type metadata accessor for TextAlignment, &unk_18A648684);
  v35 = sub_18A4A77A8();

  v36 = [v5 listStyle];
  v13 = [v5 textLists];
  type metadata accessor for TextList(0);
  sub_1890782A8(&qword_1EA933078, type metadata accessor for TextList, &unk_18A648640);
  v34 = sub_18A4A77A8();

  v14 = [v5 highlights];
  type metadata accessor for Highlight(0);
  sub_1890782A8(&qword_1EA933068, type metadata accessor for Highlight, &unk_18A6485FC);
  v33 = sub_18A4A77A8();

  v15 = [v5 formattingStyleKey];
  if (v15)
  {
    v16 = v15;
    v31 = sub_18A4A7288();
    v18 = v17;
  }

  else
  {
    v31 = 0;
    v18 = 0;
  }

  v19 = [v5 _paragraphStyle];
  v20 = [v5 _customComponentKeys];
  if (v20)
  {
    v21 = v20;
    type metadata accessor for ComponentKey(0);
    sub_1890782A8(&qword_1EA9410D0, type metadata accessor for ComponentKey, &unk_18A6485B8);
    v22 = sub_18A4A77A8();
  }

  else
  {
    v22 = MEMORY[0x1E69E7CD0];
  }

  v23 = [v5 _emphasisStyleKey];
  if (v23)
  {
    v24 = v23;
    v25 = sub_18A4A7288();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  v28 = [v5 _blockquote];
  v29 = [v5 _canToggleBold];
  v30 = [v5 _canToggleItalic];

  *a4 = v42;
  *(a4 + 8) = v41;
  *(a4 + 16) = v11;
  *(a4 + 24) = 0;
  *(a4 + 25) = v38;
  *(a4 + 26) = v37;
  *(a4 + 32) = v35;
  *(a4 + 40) = v34;
  *(a4 + 48) = v33;
  *(a4 + 56) = v32;
  *(a4 + 64) = v18;
  *(a4 + 72) = v19;
  *(a4 + 80) = v22;
  *(a4 + 88) = v25;
  *(a4 + 96) = v27;
  *(a4 + 104) = v28;
  *(a4 + 112) = v29;
  *(a4 + 113) = v30;
  *(a4 + 120) = v40;
  *(a4 + 128) = v39;
  *(a4 + 136) = v36;
}

void UITextFormattingViewController.FormattingDescriptor.init(attributes:)(uint64_t a2@<X8>)
{
  v3 = objc_allocWithZone(UITextFormattingViewControllerFormattingDescriptor);
  type metadata accessor for Key(0);
  sub_1890782A8(&qword_1ED48E360, type metadata accessor for Key, &unk_18A64870C);
  v4 = sub_18A4A7088();

  v5 = [v3 initWithAttributes_];

  v6 = [v5 fonts];
  if (v6)
  {
    v7 = v6;
    sub_188A34624(0, &qword_1ED48C4A0, &off_1E70ECC18);
    v41 = sub_18A4A7548();
  }

  else
  {
    v41 = MEMORY[0x1E69E7CC0];
  }

  v8 = [v5 textColors];
  if (v8)
  {
    v9 = v8;
    sub_188A34624(0, qword_1ED4913C0, off_1E70E96C8);
    v40 = sub_18A4A7548();
  }

  else
  {
    v40 = MEMORY[0x1E69E7CC0];
  }

  [v5 lineHeight];
  v11 = v10;
  v39 = [v5 underline];
  v37 = [v5 underlinePresent];
  v38 = [v5 strikethrough];
  v36 = [v5 strikethroughPresent];
  v12 = [v5 textAlignments];
  type metadata accessor for TextAlignment(0);
  sub_1890782A8(&qword_1EA933088, type metadata accessor for TextAlignment, &unk_18A648684);
  v34 = sub_18A4A77A8();

  v35 = [v5 listStyle];
  v13 = [v5 textLists];
  type metadata accessor for TextList(0);
  sub_1890782A8(&qword_1EA933078, type metadata accessor for TextList, &unk_18A648640);
  v33 = sub_18A4A77A8();

  v14 = [v5 highlights];
  type metadata accessor for Highlight(0);
  sub_1890782A8(&qword_1EA933068, type metadata accessor for Highlight, &unk_18A6485FC);
  v32 = sub_18A4A77A8();

  v15 = [v5 formattingStyleKey];
  if (v15)
  {
    v16 = v15;
    v31 = sub_18A4A7288();
    v18 = v17;
  }

  else
  {
    v31 = 0;
    v18 = 0;
  }

  v19 = [v5 _paragraphStyle];
  v20 = [v5 _customComponentKeys];
  if (v20)
  {
    v21 = v20;
    type metadata accessor for ComponentKey(0);
    sub_1890782A8(&qword_1EA9410D0, type metadata accessor for ComponentKey, &unk_18A6485B8);
    v22 = sub_18A4A77A8();
  }

  else
  {
    v22 = MEMORY[0x1E69E7CD0];
  }

  v23 = [v5 _emphasisStyleKey];
  if (v23)
  {
    v24 = v23;
    v25 = sub_18A4A7288();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  v28 = [v5 _blockquote];
  v29 = [v5 _canToggleBold];
  v30 = [v5 _canToggleItalic];

  *a2 = v41;
  *(a2 + 8) = v40;
  *(a2 + 16) = v11;
  *(a2 + 24) = 0;
  *(a2 + 25) = v37;
  *(a2 + 26) = v36;
  *(a2 + 32) = v34;
  *(a2 + 40) = v33;
  *(a2 + 48) = v32;
  *(a2 + 56) = v31;
  *(a2 + 64) = v18;
  *(a2 + 72) = v19;
  *(a2 + 80) = v22;
  *(a2 + 88) = v25;
  *(a2 + 96) = v27;
  *(a2 + 104) = v28;
  *(a2 + 112) = v29;
  *(a2 + 113) = v30;
  *(a2 + 120) = v39;
  *(a2 + 128) = v38;
  *(a2 + 136) = v35;
}

void UITextFormattingViewController.formattingDescriptor.getter(__int128 *a1@<X8>)
{
  sub_189038280(&v24);
  v21 = v30;
  v22 = v31;
  v23 = v32;
  v17 = v26;
  v18 = v27;
  v19 = v28;
  v20 = v29;
  v15 = v24;
  v16 = v25;
  v3 = [v1 formattingDescriptor];
  if (v3 && (v4 = v3, v5 = _sSo30UITextFormattingViewControllerC5UIKitE0B10DescriptorV34_conditionallyBridgeFromObjectiveC_6resultSbSo0abcdbF0C_AESgztFZ_0(v3, &v15), v4, (v5 & 1) != 0))
  {
    v6 = v22;
    a1[6] = v21;
    a1[7] = v6;
    a1[8] = v23;
    v7 = v18;
    a1[2] = v17;
    a1[3] = v7;
    v8 = v20;
    a1[4] = v19;
    a1[5] = v8;
    v10 = v15;
    v9 = v16;
  }

  else
  {
    v14[6] = v21;
    v14[7] = v22;
    v14[8] = v23;
    v14[2] = v17;
    v14[3] = v18;
    v14[4] = v19;
    v14[5] = v20;
    v14[0] = v15;
    v14[1] = v16;
    sub_188A3F5FC(v14, &qword_1EA93A748, &unk_18A6611E0);
    v11 = v31;
    a1[6] = v30;
    a1[7] = v11;
    a1[8] = v32;
    v12 = v27;
    a1[2] = v26;
    a1[3] = v12;
    v13 = v29;
    a1[4] = v28;
    a1[5] = v13;
    v10 = v24;
    v9 = v25;
  }

  *a1 = v10;
  a1[1] = v9;
}

__n128 sub_189073B2C@<Q0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_189038280(&v32);
  v20 = v38;
  v21 = v39;
  v22 = v40;
  v16 = v34;
  v17 = v35;
  v18 = v36;
  v19 = v37;
  v14 = v32;
  v15 = v33;
  v4 = [v3 formattingDescriptor];
  if (v4 && (v5 = v4, v6 = _sSo30UITextFormattingViewControllerC5UIKitE0B10DescriptorV34_conditionallyBridgeFromObjectiveC_6resultSbSo0abcdbF0C_AESgztFZ_0(v4, &v14), v5, (v6 & 1) != 0))
  {
    v29 = v20;
    v30 = v21;
    v31 = v22;
    v25 = v16;
    v26 = v17;
    v27 = v18;
    v28 = v19;
    v8 = v14;
    v7 = v15;
  }

  else
  {
    v13[6] = v20;
    v13[7] = v21;
    v13[8] = v22;
    v13[2] = v16;
    v13[3] = v17;
    v13[4] = v18;
    v13[5] = v19;
    v13[0] = v14;
    v13[1] = v15;
    sub_188A3F5FC(v13, &qword_1EA93A748, &unk_18A6611E0);
    v29 = v38;
    v30 = v39;
    v31 = v40;
    v25 = v34;
    v26 = v35;
    v27 = v36;
    v28 = v37;
    v8 = v32;
    v7 = v33;
  }

  v23 = v8;
  v24 = v7;
  v9 = v30;
  *(a2 + 96) = v29;
  *(a2 + 112) = v9;
  *(a2 + 128) = v31;
  v10 = v26;
  *(a2 + 32) = v25;
  *(a2 + 48) = v10;
  v11 = v28;
  *(a2 + 64) = v27;
  *(a2 + 80) = v11;
  result = v24;
  *a2 = v23;
  *(a2 + 16) = result;
  return result;
}

void sub_189073C7C(__int128 *a1, void **a2)
{
  v3 = *a2;
  v4 = a1[7];
  v32 = a1[6];
  v33 = v4;
  v34 = a1[8];
  v5 = a1[3];
  v28 = a1[2];
  v29 = v5;
  v6 = a1[5];
  v30 = a1[4];
  v31 = v6;
  v7 = a1[1];
  v26 = *a1;
  v27 = v7;
  if (get_enum_tag_for_layout_string_xSbRi_zRi0_zlyq_Isegnd_Sg_0(&v26) == 1)
  {
    v8 = 0;
  }

  else
  {
    v21 = v32;
    v22 = v33;
    v23 = v34;
    v17 = v28;
    v18 = v29;
    v19 = v30;
    v20 = v31;
    v15 = v26;
    v16 = v27;
    v9 = a1[7];
    v24[6] = a1[6];
    v24[7] = v9;
    v24[8] = a1[8];
    v10 = a1[3];
    v24[2] = a1[2];
    v24[3] = v10;
    v11 = a1[5];
    v24[4] = a1[4];
    v24[5] = v11;
    v12 = a1[1];
    v24[0] = *a1;
    v24[1] = v12;
    sub_189037B64(v24, v25);
    UITextFormattingViewController.FormattingDescriptor._bridgeToObjectiveC()(v13);
    v8 = v14;
    v25[6] = v21;
    v25[7] = v22;
    v25[8] = v23;
    v25[2] = v17;
    v25[3] = v18;
    v25[4] = v19;
    v25[5] = v20;
    v25[0] = v15;
    v25[1] = v16;
    sub_189037BC0(v25);
  }

  [v3 setFormattingDescriptor_];
}

void __swiftcall UITextFormattingViewController.FormattingDescriptor._bridgeToObjectiveC()(UITextFormattingViewControllerFormattingDescriptor *__return_ptr retstr)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 2);
  v5 = *(v1 + 24);
  v6 = *(v1 + 25);
  v7 = *(v1 + 26);
  v22 = v1[8];
  v23 = v1[9];
  v21 = v1[7];
  v24 = v1[12];
  v25 = v1[13];
  v26 = *(v1 + 112);
  v27 = *(v1 + 113);
  v8 = v1[15];
  v9 = v1[16];
  v10 = v1[17];
  v11 = [objc_allocWithZone(UITextFormattingViewControllerFormattingDescriptor) init];
  if (v2 >> 62)
  {
    if (sub_18A4A7F68())
    {
      goto LABEL_3;
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    sub_188A34624(0, &qword_1ED48C4A0, &off_1E70ECC18);
    v12 = sub_18A4A7518();
    goto LABEL_6;
  }

  v12 = 0;
LABEL_6:
  [v11 setFonts_];

  if (v3 >> 62)
  {
    if (sub_18A4A7F68())
    {
      goto LABEL_8;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_8:
    sub_188A34624(0, qword_1ED4913C0, off_1E70E96C8);
    v13 = sub_18A4A7518();
    goto LABEL_11;
  }

  v13 = 0;
LABEL_11:
  [v11 setTextColors_];

  v14 = 0.0;
  if (!v5)
  {
    v14 = v4;
  }

  [v11 setLineHeight_];
  [v11 setUnderline_];
  [v11 setUnderlinePresent_];
  [v11 setStrikethrough_];
  [v11 setStrikethroughPresent_];
  type metadata accessor for TextAlignment(0);
  sub_1890782A8(&qword_1EA933088, type metadata accessor for TextAlignment, &unk_18A648684);
  v15 = sub_18A4A7798();
  [v11 setTextAlignments_];

  [v11 setListStyle_];
  type metadata accessor for TextList(0);
  sub_1890782A8(&qword_1EA933078, type metadata accessor for TextList, &unk_18A648640);
  v16 = sub_18A4A7798();
  [v11 setTextLists_];

  type metadata accessor for Highlight(0);
  sub_1890782A8(&qword_1EA933068, type metadata accessor for Highlight, &unk_18A6485FC);
  v17 = sub_18A4A7798();
  [v11 setHighlights_];

  if (v22)
  {
    v18 = sub_18A4A7258();
  }

  else
  {
    v18 = 0;
  }

  [v11 setFormattingStyleKey_];

  [v11 set:v23 paragraphStyle:?];
  type metadata accessor for ComponentKey(0);
  sub_1890782A8(&qword_1EA9410D0, type metadata accessor for ComponentKey, &unk_18A6485B8);
  v19 = sub_18A4A7798();
  [v11 set:v19 customComponentKeys:?];

  if (v24)
  {
    v20 = sub_18A4A7258();
  }

  else
  {
    v20 = 0;
  }

  [v11 set:v20 emphasisStyleKey:?];

  [v11 set:v25 blockquote:?];
  [v11 set:v26 canToggleBold:?];
  [v11 set:v27 canToggleItalic:?];
}

void (*UITextFormattingViewController.formattingDescriptor.modify(__int128 **a1))(uint64_t *a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x368uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 864) = v2;
  sub_189038280(v4);
  v6 = v5[7];
  v32 = v5[6];
  v33 = v6;
  v34 = v5[8];
  v7 = v5[3];
  v28 = v5[2];
  v29 = v7;
  v8 = v5[5];
  v30 = v5[4];
  v31 = v8;
  v9 = v5[1];
  v26 = *v5;
  v27 = v9;
  v10 = [v2 formattingDescriptor];
  if (v10 && (v11 = v10, v12 = _sSo30UITextFormattingViewControllerC5UIKitE0B10DescriptorV34_conditionallyBridgeFromObjectiveC_6resultSbSo0abcdbF0C_AESgztFZ_0(v10, &v26), v11, (v12 & 1) != 0))
  {
    v13 = v33;
    v5[15] = v32;
    v5[16] = v13;
    v5[17] = v34;
    v14 = v29;
    v5[11] = v28;
    v5[12] = v14;
    v15 = v31;
    v5[13] = v30;
    v5[14] = v15;
    v17 = v26;
    v16 = v27;
  }

  else
  {
    v18 = v33;
    v5[24] = v32;
    v5[25] = v18;
    v5[26] = v34;
    v19 = v29;
    v5[20] = v28;
    v5[21] = v19;
    v20 = v31;
    v5[22] = v30;
    v5[23] = v20;
    v21 = v27;
    v5[18] = v26;
    v5[19] = v21;
    sub_188A3F5FC((v5 + 18), &qword_1EA93A748, &unk_18A6611E0);
    v22 = v5[7];
    v5[15] = v5[6];
    v5[16] = v22;
    v5[17] = v5[8];
    v23 = v5[3];
    v5[11] = v5[2];
    v5[12] = v23;
    v24 = v5[5];
    v5[13] = v5[4];
    v5[14] = v24;
    v17 = *v5;
    v16 = v5[1];
  }

  v5[9] = v17;
  v5[10] = v16;
  return sub_189074394;
}

void sub_189074394(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *(v2 + 224);
    v25 = *(v2 + 240);
    v26 = *(v2 + 256);
    v27 = *(v2 + 272);
    v4 = *(v2 + 160);
    v21 = *(v2 + 176);
    v22 = *(v2 + 192);
    v23 = *(v2 + 208);
    v24 = v3;
    v19 = *(v2 + 144);
    v20 = v4;
    *(v2 + 384) = v25;
    *(v2 + 400) = v26;
    *(v2 + 416) = *(v2 + 272);
    *(v2 + 320) = v21;
    *(v2 + 336) = v22;
    *(v2 + 352) = v23;
    *(v2 + 368) = v3;
    *(v2 + 288) = v19;
    *(v2 + 304) = v4;
    if (get_enum_tag_for_layout_string_xSbRi_zRi0_zlyq_Isegnd_Sg_0((v2 + 288)) == 1)
    {
      v5 = 0;
    }

    else
    {
      v40 = *(v2 + 384);
      v42 = *(v2 + 400);
      v44 = *(v2 + 416);
      v32 = *(v2 + 320);
      v34 = *(v2 + 336);
      v36 = *(v2 + 352);
      v38 = *(v2 + 368);
      v28 = *(v2 + 288);
      v30 = *(v2 + 304);
      *(v2 + 672) = v25;
      *(v2 + 688) = v26;
      *(v2 + 704) = v27;
      *(v2 + 608) = v21;
      *(v2 + 624) = v22;
      *(v2 + 640) = v23;
      *(v2 + 656) = v24;
      *(v2 + 576) = v19;
      *(v2 + 592) = v20;
      sub_189037B64(v2 + 576, v2 + 720);
      UITextFormattingViewController.FormattingDescriptor._bridgeToObjectiveC()(v12);
      v5 = v13;
      *(v2 + 528) = v40;
      *(v2 + 544) = v42;
      *(v2 + 560) = v44;
      *(v2 + 464) = v32;
      *(v2 + 480) = v34;
      *(v2 + 496) = v36;
      *(v2 + 512) = v38;
      *(v2 + 432) = v28;
      *(v2 + 448) = v30;
      sub_189037BC0(v2 + 432);
    }

    [*(v2 + 864) setFormattingDescriptor_];

    v14 = *(v2 + 256);
    *(v2 + 528) = *(v2 + 240);
    *(v2 + 544) = v14;
    *(v2 + 560) = *(v2 + 272);
    v15 = *(v2 + 192);
    *(v2 + 464) = *(v2 + 176);
    *(v2 + 480) = v15;
    v16 = *(v2 + 224);
    *(v2 + 496) = *(v2 + 208);
    *(v2 + 512) = v16;
    v17 = *(v2 + 160);
    *(v2 + 432) = *(v2 + 144);
    *(v2 + 448) = v17;
    sub_188A3F5FC(v2 + 432, &qword_1EA93A748, &unk_18A6611E0);
  }

  else
  {
    v6 = *(v2 + 256);
    *(v2 + 384) = *(v2 + 240);
    *(v2 + 400) = v6;
    *(v2 + 416) = *(v2 + 272);
    v7 = *(v2 + 192);
    *(v2 + 320) = *(v2 + 176);
    *(v2 + 336) = v7;
    v8 = *(v2 + 224);
    *(v2 + 352) = *(v2 + 208);
    *(v2 + 368) = v8;
    v9 = *(v2 + 160);
    *(v2 + 288) = *(v2 + 144);
    *(v2 + 304) = v9;
    if (get_enum_tag_for_layout_string_xSbRi_zRi0_zlyq_Isegnd_Sg_0((v2 + 288)) == 1)
    {
      v11 = 0;
    }

    else
    {
      v41 = *(v2 + 384);
      v43 = *(v2 + 400);
      v45 = *(v2 + 416);
      v33 = *(v2 + 320);
      v35 = *(v2 + 336);
      v37 = *(v2 + 352);
      v39 = *(v2 + 368);
      v29 = *(v2 + 288);
      v31 = *(v2 + 304);
      UITextFormattingViewController.FormattingDescriptor._bridgeToObjectiveC()(v10);
      v11 = v18;
      *(v2 + 528) = v41;
      *(v2 + 544) = v43;
      *(v2 + 560) = v45;
      *(v2 + 464) = v33;
      *(v2 + 480) = v35;
      *(v2 + 496) = v37;
      *(v2 + 512) = v39;
      *(v2 + 432) = v29;
      *(v2 + 448) = v31;
      sub_189037BC0(v2 + 432);
    }

    [*(v2 + 864) setFormattingDescriptor_];
  }

  free(v2);
}

uint64_t UITextFormattingViewController.FormattingDescriptor.lineHeight.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t UITextFormattingViewController.FormattingDescriptor.formattingStyleKey.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

void UITextFormattingViewController.FormattingDescriptor.formattingStyleKey.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
}

void *UITextFormattingViewController.FormattingDescriptor._paragraphStyle.getter()
{
  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

uint64_t UITextFormattingViewController.FormattingDescriptor._emphasisStyleKey.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

void UITextFormattingViewController.FormattingDescriptor._emphasisStyleKey.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
}

uint64_t UITextFormattingViewController.FormattingDescriptor.underline.setter(uint64_t result)
{
  *(v1 + 120) = result;
  *(v1 + 25) = result != 0;
  return result;
}

uint64_t sub_189074ADC(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*result + 25) = *(*result + 120) != 0;
  }

  return result;
}

uint64_t UITextFormattingViewController.FormattingDescriptor.strikethrough.setter(uint64_t result)
{
  *(v1 + 128) = result;
  *(v1 + 26) = result != 0;
  return result;
}

uint64_t sub_189074B38(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*result + 26) = *(*result + 128) != 0;
  }

  return result;
}

void sub_189074B64()
{
  v1 = *(v0 + 136);
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934378, &qword_18A64D4B0);
      inited = swift_initStackObject();
      v3 = inited;
      *(inited + 16) = xmmword_18A64BFB0;
      v4 = UITextFormattingViewControllerTextListDecimal;
      goto LABEL_11;
    }

    if (v1 == 98)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934378, &qword_18A64D4B0);
      inited = swift_initStackObject();
      v3 = inited;
      *(inited + 16) = xmmword_18A64BFB0;
      v4 = &UITextFormattingViewControllerTextListOther;
      goto LABEL_11;
    }

LABEL_8:

    *(v0 + 40) = MEMORY[0x1E69E7CD0];
    return;
  }

  if (v1 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934378, &qword_18A64D4B0);
    inited = swift_initStackObject();
    v3 = inited;
    *(inited + 16) = xmmword_18A64BFB0;
    v4 = UITextFormattingViewControllerTextListDisc;
    goto LABEL_11;
  }

  if (v1 != 2)
  {
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934378, &qword_18A64D4B0);
  inited = swift_initStackObject();
  v3 = inited;
  *(inited + 16) = xmmword_18A64BFB0;
  v4 = UITextFormattingViewControllerTextListHyphen;
LABEL_11:
  v5 = *v4;
  *(inited + 32) = v5;
  v6 = inited + 32;
  v7 = v5;
  sub_188FC0404(v3);
  v9 = v8;
  swift_setDeallocating();
  sub_189078868(v6, type metadata accessor for TextList);

  *(v0 + 40) = v9;
}

void sub_189074D20(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    sub_189074B64();
  }
}

void UITextFormattingViewController.FormattingDescriptor.init()(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CD0];
  *(a1 + 80) = MEMORY[0x1E69E7CD0];
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 257;
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 25) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 120) = 0;
  *(a1 + 32) = v1;
  *(a1 + 40) = v1;
  *(a1 + 48) = v1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
}

void UITextFormattingViewController.FormattingDescriptor.init<A>(string:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v96 = a4;
  v93 = sub_18A4A24F8();
  MEMORY[0x1EEE9AC00](v93);
  v92[1] = v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B0F0, &qword_18A66AFE0);
  v102 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v92 - v9;
  v110 = sub_18A4A2538();
  length = v110[-1].length;
  MEMORY[0x1EEE9AC00](&v110[-1].length);
  v109 = (v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v106 = sub_18A4A2528();
  v103 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v105 = v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_18A4A2548();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B0F8, &qword_18A6611F0);
  v18 = v17 - 8;
  MEMORY[0x1EEE9AC00](v17);
  v20 = v92 - v19;
  v122 = MEMORY[0x1E69E7CC0];
  v120 = MEMORY[0x1E69E7CD0];
  v121 = MEMORY[0x1E69E7CC0];
  v118 = MEMORY[0x1E69E7CD0];
  v119 = MEMORY[0x1E69E7CD0];
  v116 = MEMORY[0x1E69E7CD0];
  v117 = MEMORY[0x1E69E7CD0];
  v94 = a1;
  v95 = a2;
  v92[2] = a3;
  v21 = v10;
  sub_18A4A2828();
  (*(v14 + 16))(v20, v16, v13);
  v22 = *(v18 + 44);
  v23 = sub_1890782A8(&qword_1EA93B100, MEMORY[0x1E69687C8], MEMORY[0x1E69687E0]);
  v108 = v20;
  sub_18A4A7818();
  (*(v14 + 8))(v16, v13);
  ++length;
  p_data = &v103->data;
  v103 = (v103 + 8);
  ++v102;
  v101 = MEMORY[0x1E69E7CC0];
  v100 = MEMORY[0x1E69E7CC0];
  v98 = v8;
  v97 = v10;
  v99 = v13;
  v111 = v23;
  v112 = v22;
  while (1)
  {
    v25 = v108;
    v24 = v109;
    sub_18A4A7878();
    sub_1890782A8(&qword_1EA93B108, MEMORY[0x1E69687B0], MEMORY[0x1E69687C0]);
    v26 = v110;
    v27 = sub_18A4A7248();
    (*length)(v24, v26);
    if (v27)
    {
      break;
    }

    v28 = sub_18A4A78C8();
    v29 = v105;
    v30 = v106;
    (*p_data)(v105);
    v28(&v114, 0);
    sub_18A4A7888();
    swift_getKeyPath();
    type metadata accessor for AttributeScopes.UIKitAttributes(0);
    sub_1890782A8(&qword_1ED48BEC0, type metadata accessor for AttributeScopes.UIKitAttributes, &protocol conformance descriptor for AttributeScopes.UIKitAttributes);
    sub_18A4A2518();

    (v103->isa)(v29, v30);
    swift_getKeyPath();
    sub_188CC4708();
    sub_18A4A2838();

    if (v114)
    {
      v31 = v114;
      MEMORY[0x18CFE2450]();
      if (*((v122 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v122 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_18A4A7588();
      }

      sub_18A4A75F8();

      v100 = v122;
    }

    swift_getKeyPath();
    sub_188CC47A8();
    sub_18A4A2838();

    if (v114)
    {
      v32 = v114;
      MEMORY[0x18CFE2450]();
      if (*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v121 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_18A4A7588();
      }

      sub_18A4A75F8();

      v101 = v121;
    }

    swift_getKeyPath();
    sub_1890782F0();
    sub_18A4A2838();

    if ((v115 & 1) == 0)
    {
      sub_188E71E98(&v113, v114);
    }

    swift_getKeyPath();
    sub_189078344();
    sub_18A4A2838();

    if ((v115 & 1) == 0)
    {
      sub_188E71E98(&v113, v114);
    }

    swift_getKeyPath();
    sub_189078398();
    sub_18A4A2838();

    v33 = v114;
    if (v114)
    {
      [v114 minimumLineHeight];
      if (v34 > 0.0)
      {
        [v33 minimumLineHeight];
        sub_188E71DA4(&v114, v35);
      }

      sub_188E71D7C(&v114, [v33 alignment]);
      v36 = [v33 textLists];
      sub_188A34624(0, &qword_1EA934388, &off_1E70ECBE0);
      v37 = sub_18A4A7548();

      if (v37 >> 62)
      {
        v38 = sub_18A4A7F68();
        if (!v38)
        {
LABEL_31:

          v40 = MEMORY[0x1E69E7CC0];
          goto LABEL_32;
        }
      }

      else
      {
        v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v38)
        {
          goto LABEL_31;
        }
      }

      v114 = MEMORY[0x1E69E7CC0];
      sub_188E6D384(0, v38 & ~(v38 >> 63), 0);
      if (v38 < 0)
      {
        goto LABEL_78;
      }

      v39 = 0;
      v40 = v114;
      do
      {
        if ((v37 & 0xC000000000000001) != 0)
        {
          v41 = sub_188E4AF94(v39, v37);
        }

        else
        {
          v41 = *(v37 + 8 * v39 + 32);
        }

        v42 = v41;
        v43 = [v41 markerFormat];

        v114 = v40;
        v45 = v40[2];
        v44 = v40[3];
        if (v45 >= v44 >> 1)
        {
          sub_188E6D384((v44 > 1), v45 + 1, 1);
          v40 = v114;
        }

        ++v39;
        v40[2] = v45 + 1;
        v40[v45 + 4] = v43;
      }

      while (v38 != v39);

      v8 = v98;
      v21 = v97;
LABEL_32:
      v46 = sub_188F98BD0(v40);

      sub_189075F54(v46);

      (*v102)(v21, v8);
    }

    else
    {
      (*v102)(v21, v8);
    }
  }

  sub_188A3F5FC(v25, &qword_1EA93B0F8, &qword_18A6611F0);
  v111 = v120;
  v47 = *(v120 + 16);

  if (v47 != 1)
  {
    v108 = 0;
    goto LABEL_37;
  }

  sub_1890728C0(v111);
  if (v49)
  {
    goto LABEL_84;
  }

  v108 = v48;
LABEL_37:
  LOBYTE(v114) = v47 != 1;
  p_data = v119;
  v50 = *(v119 + 16);
  v37 = v117;
  v105 = v118;
  v106 = *(v118 + 2);
  length = v50;
  v51 = 1 << *(v117 + 32);
  v52 = -1;
  if (v51 < 64)
  {
    v52 = ~(-1 << v51);
  }

  v53 = v52 & *(v117 + 56);
  v54 = (v51 + 63) >> 6;
  v110 = @"UITextFormattingViewControllerTextAlignmentJustified";
  v112 = @"UITextFormattingViewControllerTextAlignmentRight";
  v109 = @"UITextFormattingViewControllerTextAlignmentCenter";
  v103 = @"UITextFormattingViewControllerTextAlignmentNatural";

  v55 = 0;
  v56 = MEMORY[0x1E69E7CC0];
  if (v53)
  {
    while (1)
    {
LABEL_44:
      v58 = *(*(v37 + 48) + ((v55 << 9) | (8 * __clz(__rbit64(v53)))));
      if (v58 > 1)
      {
        v59 = v112;
        if (v58 == 2)
        {
          goto LABEL_51;
        }

        v59 = v110;
        if (v58 == 3)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v59 = @"UITextFormattingViewControllerTextAlignmentLeft";
        if (!v58)
        {
          goto LABEL_51;
        }

        v59 = v109;
        if (v58 == 1)
        {
          goto LABEL_51;
        }
      }

      v59 = v103;
LABEL_51:
      v21 = v59;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = sub_188E4C9F4(0, v56[2] + 1, 1, v56);
      }

      v61 = v56[2];
      v60 = v56[3];
      if (v61 >= v60 >> 1)
      {
        v56 = sub_188E4C9F4((v60 > 1), v61 + 1, 1, v56);
      }

      v53 &= v53 - 1;
      v56[2] = v61 + 1;
      v56[v61 + 4] = v21;
      if (!v53)
      {
        goto LABEL_40;
      }
    }
  }

  while (1)
  {
LABEL_40:
    v57 = v55 + 1;
    if (__OFADD__(v55, 1))
    {
      __break(1u);
      goto LABEL_77;
    }

    if (v57 >= v54)
    {
      break;
    }

    v53 = *(v37 + 56 + 8 * v57);
    ++v55;
    if (v53)
    {
      v55 = v57;
      goto LABEL_44;
    }
  }

  v112 = sub_188F98C8C(v56);

  v62 = v116;
  v63 = v116 + 56;
  v64 = 1 << *(v116 + 32);
  v65 = -1;
  if (v64 < 64)
  {
    v65 = ~(-1 << v64);
  }

  v66 = v65 & *(v116 + 56);
  v67 = (v64 + 63) >> 6;

  v68 = 0;
  v69 = MEMORY[0x1E69E7CC0];
  if (v66)
  {
    goto LABEL_64;
  }

  while (1)
  {
    v70 = v68 + 1;
    if (__OFADD__(v68, 1))
    {
      break;
    }

    if (v70 >= v67)
    {

      v37 = sub_188F98D48(v69);

      v21 = v100;
      if (v100 >> 62)
      {
        goto LABEL_79;
      }

      v75 = v101;
      if (!*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_80;
      }

      goto LABEL_72;
    }

    v66 = *(v63 + 8 * v70);
    ++v68;
    if (v66)
    {
      v68 = v70;
      do
      {
LABEL_64:
        v71 = *(*(v62 + 48) + ((v68 << 9) | (8 * __clz(__rbit64(v66)))));
        v73 = sub_1890783EC(v71, v72);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v69 = sub_188E4C9CC(0, v69[2] + 1, 1, v69);
        }

        v21 = v69[2];
        v74 = v69[3];
        if (v21 >= v74 >> 1)
        {
          v69 = sub_188E4C9CC((v74 > 1), v21 + 1, 1, v69);
        }

        v66 &= v66 - 1;
        v69[2] = v21 + 1;
        v69[v21 + 4] = v73;
      }

      while (v66);
    }
  }

LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  v86 = sub_18A4A7F68();
  v75 = v101;
  if (v86)
  {
LABEL_72:
    if ((v21 & 0xC000000000000001) != 0)
    {
      v76 = sub_188E4AF80(0, v21);
      goto LABEL_75;
    }

    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v76 = *(v21 + 32);
LABEL_75:
      v77 = v76;
      v78 = v94;
      v79 = v95;
      sub_18A4A2818();
      sub_1890782A8(&qword_1EA93B120, MEMORY[0x1E6968678], MEMORY[0x1E6968688]);
      v80 = sub_18A4A7428();
      v82 = v81;
      v83 = sub_189076044(2, v80, v81) & 1;
      v84 = sub_189076044(1, v80, v82);

      (*(*(v79 - 8) + 8))(v78, v79);

      v75 = v101;

      v85 = v84 & 1;
      goto LABEL_81;
    }

    __break(1u);
LABEL_84:
    __break(1u);
    return;
  }

LABEL_80:
  (*(*(v95 - 8) + 8))(v94);

  v83 = 1;
  v85 = 1;
LABEL_81:
  v87 = v114;
  v88 = v106 != 0;
  v89 = length != 0;
  v90 = v96;
  *v96 = v21;
  v90[1] = v75;
  v90[2] = v108;
  *(v90 + 24) = v87;
  *(v90 + 25) = v89;
  *(v90 + 26) = v88;
  v90[4] = v112;
  v90[5] = v37;
  v91 = MEMORY[0x1E69E7CD0];
  v90[6] = MEMORY[0x1E69E7CD0];
  v90[7] = 0;
  v90[8] = 0;
  v90[9] = 0;
  v90[10] = v91;
  v90[11] = 0;
  v90[12] = 0;
  v90[13] = 0;
  *(v90 + 112) = v83;
  *(v90 + 113) = v85;
  v90[15] = 0;
  v90[16] = 0;
  v90[17] = 0;
}

void sub_189075D74(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_18A4A7F18();
    sub_188A34624(0, &qword_1ED48F680, off_1E70EAD78);
    sub_188FE633C();
    sub_18A4A77D8();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = (v8 & *(a1 + 56));
  }

  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      sub_188E036A4(v1);
      return;
    }

    while (1)
    {
      sub_188E70E0C(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_18A4A7FB8())
      {
        sub_188A34624(0, &qword_1ED48F680, off_1E70EAD78);
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = v2[v11];
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_189075F54(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      sub_188E71B98(&v10, *(*(a1 + 48) + ((v8 << 9) | (8 * v9))));

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_189076044(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = a1;
  v8 = sub_18A4A2408();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v112) = v7;
  v12 = sub_189077318(v7);
  v13 = [v12 fontDescriptor];
  v14 = [v13 symbolicTraits];

  sub_188A34624(0, &qword_1ED48C4A0, &off_1E70ECC18);
  if (sub_18A4A7C88())
  {

    return 0;
  }

  LODWORD(v117) = v14;
  v105 = v4;
  v15 = sub_18A4A7258();
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B128, &qword_18A6613D8);
  inited = swift_initStackObject();
  v103 = xmmword_18A64BFB0;
  *(inited + 16) = xmmword_18A64BFB0;
  v17 = *off_1E70EC918;
  *(inited + 32) = *off_1E70EC918;
  *(inited + 40) = v12;
  v102 = v17;
  v18 = v12;
  sub_188E8F64C(inited);
  swift_setDeallocating();
  sub_188A3F5FC(inited + 32, &qword_1EA93B130, &unk_18A6613E0);
  type metadata accessor for Key(0);
  v20 = v19;
  type metadata accessor for CTFont(0);
  v22 = v21;
  v23 = sub_1890782A8(&qword_1ED48E360, type metadata accessor for Key, &unk_18A64870C);
  v111 = v22;
  v101 = v23;
  v24 = sub_18A4A7088();

  v25 = CTLineCreateWithString();

  v26 = CTLineGetGlyphRuns(v25);
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    return 0;
  }

  v100 = v20;
  v106 = v18;
  v118 = 0;
  type metadata accessor for CTRun(0);
  v98 = v27;
  sub_18A4A7538();

  v28 = v118;
  if (!v118)
  {

    return 0;
  }

  v97 = v25;
  v118 = a2;
  v119 = a3;
  sub_18A4A23F8();
  sub_188C72980();
  v29 = sub_18A4A7DA8();
  v31 = v30;
  v33 = *(v9 + 8);
  v32 = v9 + 8;
  v107 = v33;
  v33(v11, v8);

  v34 = HIBYTE(v31) & 0xF;
  if ((v31 & 0x2000000000000000) == 0)
  {
    v34 = v29 & 0xFFFFFFFFFFFFLL;
  }

  v96 = v34;
  v114 = a2;
  v115 = a3;
  v108 = v11;
  v99 = v28 >> 62;
  v110 = v8;
  v109 = v32;
  if (v28 >> 62)
  {
LABEL_93:
    v35 = sub_18A4A7F68();
  }

  else
  {
    v35 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  LODWORD(v36) = v112;
  if (!v35)
  {
LABEL_33:
    v56 = sub_18A4A7258();
    v57 = swift_initStackObject();
    *(v57 + 16) = v103;
    v58 = v102;
    *(v57 + 32) = v102;
    v59 = v105;
    *(v57 + 40) = v105;
    v60 = v58;
    v61 = v59;
    sub_188E8F64C(v57);
    swift_setDeallocating();
    sub_188A3F5FC(v57 + 32, &qword_1EA93B130, &unk_18A6613E0);
    v62 = sub_18A4A7088();

    v63 = CTLineCreateWithString();

    v64 = CTLineGetGlyphRuns(v63);
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {

      return 1;
    }

    v118 = 0;
    sub_18A4A7538();

    v65 = v118;
    if (!v118)
    {

      return 1;
    }

    v66 = (v118 >> 62);
    if (v118 >> 62)
    {
      goto LABEL_97;
    }

    for (i = *((v118 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_18A4A7F68())
    {
      if (v99)
      {
        if (i != sub_18A4A7F68())
        {
LABEL_39:

          v68 = &v122;
          goto LABEL_45;
        }
      }

      else if (i != *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

      v70 = v106;
      v102 = v63;
      v71 = v66 ? sub_18A4A7F68() : *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v71)
      {
        break;
      }

      v72 = v28 & 0xFFFFFFFFFFFFFF8;
      v117 = v28 & 0xFFFFFFFFFFFFFF8;
      if ((v28 & 0x8000000000000000) != 0)
      {
        v72 = v28;
      }

      v104 = v72;
      v116 = v65 & 0xC000000000000001;
      v113 = v65 & 0xFFFFFFFFFFFFFF8;
      v112 = v28 & 0xC000000000000001;
      if (v96)
      {
        v73 = 1;
      }

      else
      {
        v73 = (v36 - 1) >= 2;
      }

      v74 = !v73;
      LODWORD(v105) = v74;
      v36 = 4;
      *&v103 = v65;
      while (1)
      {
        v75 = v36 - 4;
        if (v116)
        {
          v76 = sub_188E4ADA4(v36 - 4, v65);
        }

        else
        {
          if (v75 >= *(v113 + 16))
          {
            goto LABEL_95;
          }

          v76 = *(v65 + 8 * v36);
        }

        v77 = v76;
        v78 = v36 - 3;
        if (__OFADD__(v75, 1))
        {
          break;
        }

        if (v99)
        {
          v79 = sub_18A4A7F68();
        }

        else
        {
          v79 = *(v117 + 16);
        }

        if (v75 == v79)
        {

          v94 = v97;
          v70 = v106;
          goto LABEL_89;
        }

        if (v112)
        {
          v80 = sub_188E4ADA4(v36 - 4, v28);
        }

        else
        {
          if (v75 >= *(v117 + 16))
          {
            goto LABEL_96;
          }

          v80 = *(v28 + 8 * v36);
        }

        v81 = v80;
        if (v105)
        {
          goto LABEL_80;
        }

        if (CTRunGetStringRange(v80).location == -1)
        {
          sub_18A4A2388();
        }

        sub_18A4A7908();
        if (v82)
        {
          goto LABEL_80;
        }

        v83 = sub_18A4A7448();
        v66 = v84;
        v118 = v83;
        v119 = v85;
        v120 = v86;
        v121 = v84;
        v87 = v71;
        v88 = v108;
        sub_18A4A23F8();
        sub_189078814();
        v89 = sub_18A4A7DA8();
        v63 = v90;
        v91 = v88;
        v71 = v87;
        v65 = v103;
        v107(v91, v110);

        v92 = HIBYTE(v63) & 0xF;
        if ((v63 & 0x2000000000000000) == 0)
        {
          v92 = v89 & 0xFFFFFFFFFFFFLL;
        }

        if (v92)
        {
LABEL_80:
          v66 = CTRunGetFont();
          v63 = CTRunGetFont();
          sub_1890782A8(&qword_1EA93B140, type metadata accessor for CTFont, &unk_18A64AD78);
          v93 = sub_18A4A3238();

          if ((v93 & 1) == 0)
          {

            goto LABEL_44;
          }
        }

        else
        {
        }

        ++v36;
        if (v78 == v71)
        {
          v77 = v97;
          v70 = v106;
          goto LABEL_88;
        }
      }

      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      ;
    }

    v77 = v97;
LABEL_88:
    v94 = v102;
LABEL_89:

    return 0;
  }

  v37 = 0;
  LODWORD(v113) = v117 & v112;
  v116 = v28 & 0xFFFFFFFFFFFFFF8;
  v117 = v28 & 0xC000000000000001;
  if (v96)
  {
    v38 = 1;
  }

  else
  {
    v38 = (v112 - 1) >= 2;
  }

  v39 = !v38;
  while (1)
  {
    if (v117)
    {
      v40 = sub_188E4ADA4(v37, v28);
    }

    else
    {
      if (v37 >= *(v116 + 16))
      {
        goto LABEL_92;
      }

      v40 = *(v28 + 8 * v37 + 32);
    }

    v41 = v40;
    v42 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

    if ((v39 & 1) == 0)
    {
      if (CTRunGetStringRange(v40).location == -1)
      {
        sub_18A4A2388();
      }

      sub_18A4A7908();
      if ((v43 & 1) == 0)
      {
        v118 = sub_18A4A7448();
        v119 = v44;
        v120 = v45;
        v121 = v46;
        v36 = v28;
        v47 = v108;
        sub_18A4A23F8();
        sub_189078814();
        v48 = sub_18A4A7DA8();
        v50 = v49;
        v51 = v47;
        v28 = v36;
        LODWORD(v36) = v112;
        v107(v51, v110);

        v52 = HIBYTE(v50) & 0xF;
        if ((v50 & 0x2000000000000000) == 0)
        {
          v52 = v48 & 0xFFFFFFFFFFFFLL;
        }

        if (!v52)
        {

          goto LABEL_28;
        }
      }
    }

    v53 = v113 != v36;
    v54 = CTRunGetFont();
    v55 = [v54 fontDescriptor];

    LODWORD(v54) = [v55 symbolicTraits];
    if ((v53 ^ ((v36 & ~v54) == 0)))
    {
      break;
    }

LABEL_28:
    ++v37;
    if (v42 == v35)
    {
      goto LABEL_33;
    }
  }

LABEL_44:
  v68 = &v121;
LABEL_45:

  return 1;
}

void *UITextFormattingViewController.FormattingDescriptor.init(attributes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B0F0, &qword_18A66AFE0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v42 - v6;
  v54 = 1;
  swift_getKeyPath();
  type metadata accessor for AttributeScopes.UIKitAttributes(0);
  sub_1890782A8(&qword_1ED48BEC0, type metadata accessor for AttributeScopes.UIKitAttributes, &protocol conformance descriptor for AttributeScopes.UIKitAttributes);
  sub_18A4A2618();

  swift_getKeyPath();
  sub_188CC4708();
  sub_18A4A2838();

  v8 = v52;
  if (v52)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0, &unk_18A64BA50);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_18A64B710;
    *(v9 + 32) = v8;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  swift_getKeyPath();
  sub_188CC47A8();
  sub_18A4A2838();

  v10 = v52;
  v11 = MEMORY[0x1E69E7CC0];
  if (v52)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0, &unk_18A64BA50);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_18A64B710;
    *(v12 + 32) = v10;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  swift_getKeyPath();
  sub_1890782F0();
  sub_18A4A2838();

  v51 = v53;
  swift_getKeyPath();
  sub_189078344();
  sub_18A4A2838();

  v50 = v53;
  swift_getKeyPath();
  sub_189078398();
  sub_18A4A2838();

  v13 = v52;
  if (!v52)
  {
    v20 = sub_18A4A2668();
    (*(*(v20 - 8) + 8))(a1, v20);
    result = (*(v5 + 8))(v7, v4);
    v22 = MEMORY[0x1E69E7CD0];
    v14 = 0;
    v23 = MEMORY[0x1E69E7CD0];
LABEL_28:
    v38 = v50 ^ 1;
    v39 = v54;
    v40 = v51 ^ 1;
    *a2 = v9;
    *(a2 + 8) = v12;
    *(a2 + 16) = v14;
    *(a2 + 24) = v39;
    *(a2 + 25) = v40;
    *(a2 + 26) = v38;
    *(a2 + 32) = v22;
    *(a2 + 40) = v23;
    v41 = MEMORY[0x1E69E7CD0];
    *(a2 + 48) = MEMORY[0x1E69E7CD0];
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 80) = v41;
    *(a2 + 88) = 0;
    *(a2 + 96) = 0;
    *(a2 + 104) = 0;
    *(a2 + 112) = 257;
    *(a2 + 120) = 0;
    *(a2 + 128) = 0;
    *(a2 + 136) = 0;
    return result;
  }

  [v52 minimumLineHeight];
  v14 = 0;
  if (v15 > 0.0)
  {
    [v13 minimumLineHeight];
    v14 = v16;
    v54 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934380, &unk_18A6612C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A64BFB0;
  v18 = [v13 alignment];
  v49 = v9;
  if (v18 > 3)
  {
    v19 = UITextFormattingViewControllerTextAlignmentNatural;
  }

  else
  {
    v19 = off_1E70F21C8[v18];
  }

  *(inited + 32) = *v19;
  sub_188FC0418(inited);
  v47 = v24;
  swift_setDeallocating();
  sub_189078868(inited + 32, type metadata accessor for TextAlignment);
  v48 = v13;
  v25 = [v13 textLists];
  sub_188A34624(0, &qword_1EA934388, &off_1E70ECBE0);
  v26 = sub_18A4A7548();

  if (!(v26 >> 62))
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v27)
    {
      goto LABEL_16;
    }

LABEL_26:

    v29 = MEMORY[0x1E69E7CC0];
LABEL_27:
    v23 = sub_188F98D48(v29);

    v37 = sub_18A4A2668();
    (*(*(v37 - 8) + 8))(a1, v37);
    result = (*(v5 + 8))(v7, v4);
    v9 = v49;
    v22 = v47;
    goto LABEL_28;
  }

  v27 = sub_18A4A7F68();
  if (!v27)
  {
    goto LABEL_26;
  }

LABEL_16:
  v52 = v11;
  result = sub_188E6D3C8(0, v27 & ~(v27 >> 63), 0);
  if ((v27 & 0x8000000000000000) == 0)
  {
    v42 = v12;
    v43 = v7;
    v44 = a1;
    v45 = v5;
    v46 = v4;
    v28 = 0;
    v29 = v52;
    do
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v30 = sub_188E4AF94(v28, v26);
      }

      else
      {
        v30 = *(v26 + 8 * v28 + 32);
      }

      v31 = v30;
      v32 = [v30 markerFormat];
      v34 = sub_1890783EC(v32, v33);

      v52 = v29;
      v36 = v29[2];
      v35 = v29[3];
      if (v36 >= v35 >> 1)
      {
        sub_188E6D3C8((v35 > 1), v36 + 1, 1);
        v29 = v52;
      }

      ++v28;
      v29[2] = v36 + 1;
      v29[v36 + 4] = v34;
    }

    while (v27 != v28);

    v5 = v45;
    v4 = v46;
    v7 = v43;
    a1 = v44;
    v12 = v42;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

void UITextFormattingViewController.FormattingDescriptor.init(fonts:textColors:lineHeight:underline:strikethrough:textAlignment:listStyle:formattingStyleKey:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v23 = a4 & 1;
  if (a7 > 4)
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v17 = *off_1E70F21E8[a7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934380, &unk_18A6612C0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_18A64BFB0;
    *(v18 + 32) = v17;
  }

  v19 = a6 != 0;
  v20 = sub_188F98C8C(v18);

  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = v23;
  *(a9 + 25) = a5 != 0;
  *(a9 + 26) = v19;
  v21 = MEMORY[0x1E69E7CD0];
  *(a9 + 32) = v20;
  *(a9 + 40) = v21;
  *(a9 + 48) = v21;
  *(a9 + 56) = a10;
  *(a9 + 64) = a11;
  *(a9 + 72) = 0;
  *(a9 + 80) = v21;
  *(a9 + 88) = 0;
  *(a9 + 96) = 0;
  *(a9 + 104) = 0;
  *(a9 + 112) = 257;
  *(a9 + 120) = 0;
  *(a9 + 128) = 0;
  *(a9 + 136) = a8;
}

id sub_189077318(unsigned int a1)
{
  v3 = [v1 fontDescriptor];
  v4 = [v12 fontDescriptor];
  v5 = [v4 symbolicTraits];

  v6 = v5 & ~a1;
  if (!a1)
  {
    v6 = v5;
  }

  if ((a1 & ~v5) != 0)
  {
    v7 = v5 | a1;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v3 fontDescriptorWithSymbolicTraits_];

  if (v8)
  {
    [v12 pointSize];
    v10 = [objc_opt_self() fontWithDescriptor:v8 size:v9];

    return v10;
  }

  else
  {

    return v12;
  }
}

uint64_t sub_189077534(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) != a2)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

void sub_189077598(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, void *a6)
{
  v10 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v11 = a4;
      }

      else
      {
        v11 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x18CFE2EE0](a1, a2, v11);
      sub_188A34624(0, a5, a6);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_188A34624(0, a5, a6);
    if (sub_18A4A7F48() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_18A4A7F58();
    swift_dynamicCast();
    v6 = v19;
    v12 = sub_18A4A7C78();
    v13 = -1 << *(a4 + 32);
    v10 = v12 & ~v13;
    if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v14 = ~v13;
      do
      {
        v15 = *(*(a4 + 48) + 8 * v10);
        v16 = sub_18A4A7C88();

        if (v16)
        {
          goto LABEL_19;
        }

        v10 = (v10 + 1) & v14;
      }

      while (((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    __break(1u);
  }

  if ((v10 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v10)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v10 >> 6) + 56) >> v10) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v17 = *(*(a4 + 48) + 8 * v10);

  v18 = v17;
}

uint64_t sub_1890777C4@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v5 = *(a3 + 48);
  v6 = v5 + *(*(type metadata accessor for IntelligenceUI.PromptAmbiguityID(0) - 8) + 72) * result;

  return sub_188F995D8(v6, a4);
}

uint64_t _sSo30UITextFormattingViewControllerC5UIKitE0B10DescriptorV34_conditionallyBridgeFromObjectiveC_6resultSbSo0abcdbF0C_AESgztFZ_0(void *a1, __int128 *a2)
{
  LOBYTE(v146[0]) = 1;
  *&v135 = MEMORY[0x1E69E7CC0];
  *(&v135 + 1) = MEMORY[0x1E69E7CC0];
  *&v136 = 0;
  BYTE8(v136) = 1;
  *(&v136 + 9) = 0;
  *&v137 = MEMORY[0x1E69E7CD0];
  *(&v137 + 1) = MEMORY[0x1E69E7CD0];
  v138 = MEMORY[0x1E69E7CD0];
  v139 = 0uLL;
  v140 = MEMORY[0x1E69E7CD0];
  v141 = 0uLL;
  LOWORD(v142) = 257;
  v144 = 0uLL;
  v143 = 0;
  signpost_c2_entryLock_start();
  v4 = a2[7];
  v145[6] = a2[6];
  v145[7] = v4;
  v145[8] = a2[8];
  v5 = a2[3];
  v145[2] = a2[2];
  v145[3] = v5;
  v6 = a2[4];
  v145[5] = a2[5];
  v145[4] = v6;
  v7 = *a2;
  v145[1] = a2[1];
  v145[0] = v7;
  sub_188A3F5FC(v145, &qword_1EA93A748, &unk_18A6611E0);
  v8 = v142;
  v9 = v142;
  a2[6] = 0uLL;
  a2[7] = v8;
  v10 = v144;
  a2[8] = v144;
  v11 = v137;
  v12 = v138;
  v13 = v138;
  a2[2] = v137;
  a2[3] = v12;
  v14 = v140;
  v15 = v140;
  v16 = v139;
  a2[4] = v139;
  a2[5] = v14;
  v17 = v136;
  v18 = v136;
  v19 = v135;
  *a2 = v135;
  a2[1] = v17;
  v146[6] = 0uLL;
  v146[7] = v9;
  v146[8] = v10;
  v146[2] = v11;
  v146[3] = v13;
  v146[4] = v16;
  v146[5] = v15;
  v146[0] = v19;
  v146[1] = v18;
  if (get_enum_tag_for_layout_string_xSbRi_zRi0_zlyq_Isegnd_Sg_0(v146) != 1)
  {
    v20 = [a1 fonts];
    if (v20)
    {
      v21 = v20;
      sub_188A34624(0, &qword_1ED48C4A0, &off_1E70ECC18);
      v22 = sub_18A4A7548();
    }

    else
    {
      v22 = MEMORY[0x1E69E7CC0];
    }

    *a2 = v22;
  }

  v23 = a2[7];
  v134[6] = a2[6];
  v134[7] = v23;
  v134[8] = a2[8];
  v24 = a2[3];
  v134[2] = a2[2];
  v134[3] = v24;
  v25 = a2[4];
  v134[5] = a2[5];
  v134[4] = v25;
  v26 = *a2;
  v134[1] = a2[1];
  v134[0] = v26;
  if (get_enum_tag_for_layout_string_xSbRi_zRi0_zlyq_Isegnd_Sg_0(v134) != 1)
  {
    v27 = [a1 textColors];
    if (v27)
    {
      v28 = v27;
      sub_188A34624(0, qword_1ED4913C0, off_1E70E96C8);
      v29 = sub_18A4A7548();
    }

    else
    {
      v29 = MEMORY[0x1E69E7CC0];
    }

    *(a2 + 1) = v29;
  }

  v30 = a2[7];
  v133[6] = a2[6];
  v133[7] = v30;
  v133[8] = a2[8];
  v31 = a2[3];
  v133[2] = a2[2];
  v133[3] = v31;
  v32 = a2[4];
  v133[5] = a2[5];
  v133[4] = v32;
  v33 = *a2;
  v133[1] = a2[1];
  v133[0] = v33;
  if (get_enum_tag_for_layout_string_xSbRi_zRi0_zlyq_Isegnd_Sg_0(v133) != 1)
  {
    [a1 lineHeight];
    *(a2 + 2) = v34;
    *(a2 + 24) = 0;
  }

  v35 = a2[7];
  v132[6] = a2[6];
  v132[7] = v35;
  v132[8] = a2[8];
  v36 = a2[3];
  v132[2] = a2[2];
  v132[3] = v36;
  v37 = a2[4];
  v132[5] = a2[5];
  v132[4] = v37;
  v38 = *a2;
  v132[1] = a2[1];
  v132[0] = v38;
  if (get_enum_tag_for_layout_string_xSbRi_zRi0_zlyq_Isegnd_Sg_0(v132) != 1)
  {
    v39 = [a1 underline];
    *(a2 + 15) = v39;
    *(a2 + 25) = v39 != 0;
  }

  v40 = a2[7];
  v131[6] = a2[6];
  v131[7] = v40;
  v131[8] = a2[8];
  v41 = a2[3];
  v131[2] = a2[2];
  v131[3] = v41;
  v42 = a2[4];
  v131[5] = a2[5];
  v131[4] = v42;
  v43 = *a2;
  v131[1] = a2[1];
  v131[0] = v43;
  if (get_enum_tag_for_layout_string_xSbRi_zRi0_zlyq_Isegnd_Sg_0(v131) != 1)
  {
    *(a2 + 25) = [a1 underlinePresent];
  }

  v44 = a2[7];
  v130[6] = a2[6];
  v130[7] = v44;
  v130[8] = a2[8];
  v45 = a2[3];
  v130[2] = a2[2];
  v130[3] = v45;
  v46 = a2[4];
  v130[5] = a2[5];
  v130[4] = v46;
  v47 = *a2;
  v130[1] = a2[1];
  v130[0] = v47;
  if (get_enum_tag_for_layout_string_xSbRi_zRi0_zlyq_Isegnd_Sg_0(v130) != 1)
  {
    v48 = [a1 strikethrough];
    *(a2 + 16) = v48;
    *(a2 + 26) = v48 != 0;
  }

  v49 = a2[7];
  v129[6] = a2[6];
  v129[7] = v49;
  v129[8] = a2[8];
  v50 = a2[3];
  v129[2] = a2[2];
  v129[3] = v50;
  v51 = a2[4];
  v129[5] = a2[5];
  v129[4] = v51;
  v52 = *a2;
  v129[1] = a2[1];
  v129[0] = v52;
  if (get_enum_tag_for_layout_string_xSbRi_zRi0_zlyq_Isegnd_Sg_0(v129) != 1)
  {
    *(a2 + 26) = [a1 strikethroughPresent];
  }

  v53 = a2[7];
  v128[6] = a2[6];
  v128[7] = v53;
  v128[8] = a2[8];
  v54 = a2[3];
  v128[2] = a2[2];
  v128[3] = v54;
  v55 = a2[4];
  v128[5] = a2[5];
  v128[4] = v55;
  v56 = *a2;
  v128[1] = a2[1];
  v128[0] = v56;
  if (get_enum_tag_for_layout_string_xSbRi_zRi0_zlyq_Isegnd_Sg_0(v128) != 1)
  {
    v57 = [a1 textAlignments];
    type metadata accessor for TextAlignment(0);
    sub_1890782A8(&qword_1EA933088, type metadata accessor for TextAlignment, &unk_18A648684);
    v58 = sub_18A4A77A8();

    *(a2 + 4) = v58;
  }

  v59 = a2[7];
  v127[6] = a2[6];
  v127[7] = v59;
  v127[8] = a2[8];
  v60 = a2[3];
  v127[2] = a2[2];
  v127[3] = v60;
  v61 = a2[4];
  v127[5] = a2[5];
  v127[4] = v61;
  v62 = *a2;
  v127[1] = a2[1];
  v127[0] = v62;
  if (get_enum_tag_for_layout_string_xSbRi_zRi0_zlyq_Isegnd_Sg_0(v127) != 1)
  {
    *(a2 + 17) = [a1 listStyle];
    sub_189074B64();
  }

  v63 = a2[7];
  v126[6] = a2[6];
  v126[7] = v63;
  v126[8] = a2[8];
  v64 = a2[3];
  v126[2] = a2[2];
  v126[3] = v64;
  v65 = a2[4];
  v126[5] = a2[5];
  v126[4] = v65;
  v66 = *a2;
  v126[1] = a2[1];
  v126[0] = v66;
  if (get_enum_tag_for_layout_string_xSbRi_zRi0_zlyq_Isegnd_Sg_0(v126) != 1)
  {
    v67 = [a1 textLists];
    type metadata accessor for TextList(0);
    sub_1890782A8(&qword_1EA933078, type metadata accessor for TextList, &unk_18A648640);
    v68 = sub_18A4A77A8();

    *(a2 + 5) = v68;
  }

  v69 = a2[7];
  v125[6] = a2[6];
  v125[7] = v69;
  v125[8] = a2[8];
  v70 = a2[3];
  v125[2] = a2[2];
  v125[3] = v70;
  v71 = a2[4];
  v125[5] = a2[5];
  v125[4] = v71;
  v72 = a2[1];
  v125[0] = *a2;
  v125[1] = v72;
  if (get_enum_tag_for_layout_string_xSbRi_zRi0_zlyq_Isegnd_Sg_0(v125) != 1)
  {
    v73 = [a1 highlights];
    type metadata accessor for Highlight(0);
    sub_1890782A8(&qword_1EA933068, type metadata accessor for Highlight, &unk_18A6485FC);
    v74 = sub_18A4A77A8();

    *(a2 + 6) = v74;
  }

  v75 = a2[7];
  v124[6] = a2[6];
  v124[7] = v75;
  v124[8] = a2[8];
  v76 = a2[3];
  v124[2] = a2[2];
  v124[3] = v76;
  v77 = a2[5];
  v124[4] = a2[4];
  v124[5] = v77;
  v78 = a2[1];
  v124[0] = *a2;
  v124[1] = v78;
  if (get_enum_tag_for_layout_string_xSbRi_zRi0_zlyq_Isegnd_Sg_0(v124) != 1)
  {
    v79 = [a1 formattingStyleKey];
    if (v79)
    {
      v80 = v79;
      v81 = sub_18A4A7288();
      v83 = v82;
    }

    else
    {
      v81 = 0;
      v83 = 0;
    }

    *(a2 + 7) = v81;
    *(a2 + 8) = v83;
  }

  v84 = a2[7];
  v123[6] = a2[6];
  v123[7] = v84;
  v123[8] = a2[8];
  v85 = a2[3];
  v123[2] = a2[2];
  v123[3] = v85;
  v86 = a2[5];
  v123[4] = a2[4];
  v123[5] = v86;
  v87 = a2[1];
  v123[0] = *a2;
  v123[1] = v87;
  if (get_enum_tag_for_layout_string_xSbRi_zRi0_zlyq_Isegnd_Sg_0(v123) != 1)
  {
    v88 = [a1 _paragraphStyle];

    *(a2 + 9) = v88;
  }

  v89 = a2[7];
  v122[6] = a2[6];
  v122[7] = v89;
  v122[8] = a2[8];
  v90 = a2[3];
  v122[2] = a2[2];
  v122[3] = v90;
  v91 = a2[5];
  v122[4] = a2[4];
  v122[5] = v91;
  v92 = a2[1];
  v122[0] = *a2;
  v122[1] = v92;
  if (get_enum_tag_for_layout_string_xSbRi_zRi0_zlyq_Isegnd_Sg_0(v122) != 1)
  {
    v93 = [a1 _customComponentKeys];
    if (v93)
    {
      v94 = v93;
      type metadata accessor for ComponentKey(0);
      sub_1890782A8(&qword_1EA9410D0, type metadata accessor for ComponentKey, &unk_18A6485B8);
      v95 = sub_18A4A77A8();
    }

    else
    {
      v95 = MEMORY[0x1E69E7CD0];
    }

    *(a2 + 10) = v95;
  }

  v96 = a2[7];
  v121[6] = a2[6];
  v121[7] = v96;
  v121[8] = a2[8];
  v97 = a2[3];
  v121[2] = a2[2];
  v121[3] = v97;
  v98 = a2[5];
  v121[4] = a2[4];
  v121[5] = v98;
  v99 = a2[1];
  v121[0] = *a2;
  v121[1] = v99;
  if (get_enum_tag_for_layout_string_xSbRi_zRi0_zlyq_Isegnd_Sg_0(v121) != 1)
  {
    v100 = [a1 _emphasisStyleKey];
    if (v100)
    {
      v101 = v100;
      v102 = sub_18A4A7288();
      v104 = v103;
    }

    else
    {
      v102 = 0;
      v104 = 0;
    }

    *(a2 + 11) = v102;
    *(a2 + 12) = v104;
  }

  v105 = a2[7];
  v120[6] = a2[6];
  v120[7] = v105;
  v120[8] = a2[8];
  v106 = a2[3];
  v120[2] = a2[2];
  v120[3] = v106;
  v107 = a2[5];
  v120[4] = a2[4];
  v120[5] = v107;
  v108 = a2[1];
  v120[0] = *a2;
  v120[1] = v108;
  if (get_enum_tag_for_layout_string_xSbRi_zRi0_zlyq_Isegnd_Sg_0(v120) != 1)
  {
    *(a2 + 13) = [a1 _blockquote];
  }

  v109 = a2[7];
  v119[6] = a2[6];
  v119[7] = v109;
  v119[8] = a2[8];
  v110 = a2[3];
  v119[2] = a2[2];
  v119[3] = v110;
  v111 = a2[5];
  v119[4] = a2[4];
  v119[5] = v111;
  v112 = a2[1];
  v119[0] = *a2;
  v119[1] = v112;
  if (get_enum_tag_for_layout_string_xSbRi_zRi0_zlyq_Isegnd_Sg_0(v119) != 1)
  {
    *(a2 + 112) = [a1 _canToggleBold];
  }

  v113 = a2[7];
  v118[6] = a2[6];
  v118[7] = v113;
  v118[8] = a2[8];
  v114 = a2[3];
  v118[2] = a2[2];
  v118[3] = v114;
  v115 = a2[5];
  v118[4] = a2[4];
  v118[5] = v115;
  v116 = a2[1];
  v118[0] = *a2;
  v118[1] = v116;
  if (get_enum_tag_for_layout_string_xSbRi_zRi0_zlyq_Isegnd_Sg_0(v118) != 1)
  {
    *(a2 + 113) = [a1 _canToggleItalic];
  }

  return 1;
}

uint64_t sub_1890782A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1890782F0()
{
  result = qword_1EA9300C0;
  if (!qword_1EA9300C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9300C0);
  }

  return result;
}

unint64_t sub_189078344()
{
  result = qword_1EA93B110;
  if (!qword_1EA93B110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93B110);
  }

  return result;
}

unint64_t sub_189078398()
{
  result = qword_1EA93B118;
  if (!qword_1EA93B118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93B118);
  }

  return result;
}

__CFString *sub_1890783EC(void *a1, uint64_t a2)
{
  v3 = sub_18A4A7288();
  v5 = v4;
  if (v3 == sub_18A4A7288() && v5 == v6)
  {

    goto LABEL_15;
  }

  v8 = sub_18A4A86C8();

  if (v8)
  {
LABEL_15:
    v19 = UITextFormattingViewControllerTextListDisc;
    return *v19;
  }

  v9 = sub_18A4A7288();
  v11 = v10;
  if (v9 == sub_18A4A7288() && v11 == v12)
  {

    goto LABEL_18;
  }

  v14 = sub_18A4A86C8();

  if (v14)
  {
LABEL_18:
    v19 = UITextFormattingViewControllerTextListHyphen;
    return *v19;
  }

  v15 = sub_18A4A7288();
  v17 = v16;
  if (v15 == sub_18A4A7288() && v17 == v18)
  {

    v19 = UITextFormattingViewControllerTextListDecimal;
  }

  else
  {
    v21 = sub_18A4A86C8();

    v19 = UITextFormattingViewControllerTextListDecimal;
    if ((v21 & 1) == 0)
    {
      v22 = a1;
      v23 = sub_18A4A7258();
      v24 = sub_18A4A7288();
      v26 = v25;
      if (v24 == sub_18A4A7288() && v26 == v27)
      {
      }

      else
      {
        v28 = sub_18A4A86C8();

        if ((v28 & 1) == 0)
        {
          v19 = &UITextFormattingViewControllerTextListOther;
        }
      }
    }
  }

  return *v19;
}

uint64_t _sSo30UITextFormattingViewControllerC5UIKitE0B10DescriptorV26_forceBridgeFromObjectiveC_6resultySo0abcdbF0C_AESgztFZ_0(void *a1, __int128 *a2)
{
  result = _sSo30UITextFormattingViewControllerC5UIKitE0B10DescriptorV34_conditionallyBridgeFromObjectiveC_6resultSbSo0abcdbF0C_AESgztFZ_0(a1, a2);
  if ((result & 1) == 0)
  {
    sub_18A4A80E8();

    sub_188A34624(0, &qword_1EA93B0E8, off_1E70EAA78);
    v3 = sub_18A4A8AA8();
    MEMORY[0x18CFE22D0](v3);

    MEMORY[0x18CFE22D0](544175136, 0xE400000000000000);
    v4 = sub_18A4A8AA8();
    MEMORY[0x18CFE22D0](v4);

    result = sub_18A4A8398();
    __break(1u);
  }

  return result;
}

uint64_t sub_189078758(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_1890787A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_189078814()
{
  result = qword_1EA93B138;
  if (!qword_1EA93B138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93B138);
  }

  return result;
}

uint64_t sub_189078868(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1890788E0(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v13 = a1;
  v8 = [v13 _configuration];
  type metadata accessor for _UICanvasFeedbackGeneratorConfiguration();
  v9 = swift_dynamicCastClassUnconditional();
  [v9 _setupIfNecessary];
  v10 = *&v9[*a5];
  v11 = v10;

  if (v10)
  {
    v12 = v11;
    [v13 _playFeedback_atLocation_];
  }
}

void __swiftcall UICanvasFeedbackGenerator.init()(UICanvasFeedbackGenerator *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id UICanvasFeedbackGenerator.init(coordinateSpace:)(uint64_t a1)
{
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoordinateSpace_];
  swift_unknownObjectRelease();
  return v1;
}

{
  v3.super_class = UICanvasFeedbackGenerator;
  v1 = objc_msgSendSuper2(&v3, sel_initWithCoordinateSpace_, a1);
  swift_unknownObjectRelease();
  return v1;
}

id UICanvasFeedbackGenerator.init(configuration:coordinateSpace:)(void *a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithConfiguration:a1 coordinateSpace:a2];

  swift_unknownObjectRelease();
  return v3;
}

{
  v5.super_class = UICanvasFeedbackGenerator;
  v3 = objc_msgSendSuper2(&v5, sel_initWithConfiguration_coordinateSpace_, a1, a2);

  swift_unknownObjectRelease();
  return v3;
}

id UICanvasFeedbackGenerator.init(__view:)(void *a1)
{
  v4.super_class = UICanvasFeedbackGenerator;
  v2 = objc_msgSendSuper2(&v4, sel_initWithView_, a1);

  return v2;
}

void __swiftcall UICanvasFeedbackGenerator.init(configuration:view:)(UICanvasFeedbackGenerator *__return_ptr retstr, _UIFeedbackGeneratorConfiguration *configuration, UIView_optional *view)
{
  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithConfiguration:configuration view:view];
}

id UICanvasFeedbackGenerator.init(configuration:view:)(void *a1, void *a2)
{
  v6.super_class = UICanvasFeedbackGenerator;
  v4 = objc_msgSendSuper2(&v6, sel_initWithConfiguration_view_, a1, a2);

  return v4;
}

id UICanvasFeedbackGenerator.init(configuration:)(void *a1)
{
  v4.super_class = UICanvasFeedbackGenerator;
  v2 = objc_msgSendSuper2(&v4, sel_initWithConfiguration_, a1);

  return v2;
}

void *sub_189078EBC(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  [v4 _setupIfNecessary];
  v5 = *&v4[*a3];
  v6 = v5;

  return v5;
}

void sub_189078F14(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a1;
  [v8 _setupIfNecessary];
  v9 = *&v8[*a4];
  *&v8[*a4] = a3;
}

void sub_189078FB0(uint64_t a1)
{
  type metadata accessor for _UICanvasFeedbackGeneratorConfiguration();
  v1 = swift_dynamicCastClassUnconditional();
  v2 = [objc_allocWithZone(_UINullFeedback) init];
  [v1 _setupIfNecessary];
  v3 = *&v1[OBJC_IVAR____TtC5UIKit39_UICanvasFeedbackGeneratorConfiguration__snappingFeedback];
  *&v1[OBJC_IVAR____TtC5UIKit39_UICanvasFeedbackGeneratorConfiguration__snappingFeedback] = v2;

  v4 = [objc_allocWithZone(_UINullFeedback) init];
  [v1 _setupIfNecessary];
  v5 = *&v1[OBJC_IVAR____TtC5UIKit39_UICanvasFeedbackGeneratorConfiguration__pathCompletingFeedback];
  *&v1[OBJC_IVAR____TtC5UIKit39_UICanvasFeedbackGeneratorConfiguration__pathCompletingFeedback] = v4;
}

id sub_1890790BC(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = sub_18A4A7258();

  return v3;
}

double sub_189079124(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_18A4A7288();
  v7 = (a1 + *a4);
  *v7 = v6;
  v7[1] = v8;

  return result;
}

id sub_189079188(void *a1, uint64_t a2, const char **a3, uint64_t a4)
{
  type metadata accessor for _UICanvasFeedbackGeneratorConfiguration();
  v13.receiver = a1;
  v13.super_class = v7;
  v8 = *a3;
  v9 = a1;
  v10 = objc_msgSendSuper2(&v13, v8);
  sub_18A4A7548();

  sub_18920BBB4(a4);
  v11 = sub_18A4A7518();

  return v11;
}

id sub_189079250(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  [v3 _setupIfNecessary];
  v8 = *&v3[OBJC_IVAR____TtC5UIKit39_UICanvasFeedbackGeneratorConfiguration__snappingFeedback];
  if (v8)
  {
    sub_188A34624(0, &unk_1EA93B1E0, off_1E70EB668);
    v9 = v8;
    v10 = a1;
    v11 = sub_18A4A7C88();

    if (v11)
    {
      if (a2 == 1)
      {
        v12 = objc_allocWithZone(_UIFeedbackBackBoardHIDPattern);

        v13 = sub_18A4A7258();

        v14 = [v12 initWithName:v13 deviceType:1 senderID:a3];
LABEL_11:
        v24 = v14;

        return v24;
      }

LABEL_10:
      v23 = objc_allocWithZone(_UIFeedbackBackBoardHIDPattern);

      v13 = sub_18A4A7258();

      v14 = [v23 initWithName:v13 deviceType:a2 senderID:a3];
      goto LABEL_11;
    }
  }

  [v4 _setupIfNecessary];
  v15 = *&v4[OBJC_IVAR____TtC5UIKit39_UICanvasFeedbackGeneratorConfiguration__pathCompletingFeedback];
  if (v15)
  {
    sub_188A34624(0, &unk_1EA93B1E0, off_1E70EB668);
    v16 = a1;
    v17 = v15;
    v18 = sub_18A4A7C88();

    if (v18)
    {
      goto LABEL_10;
    }
  }

  v19 = type metadata accessor for _UICanvasFeedbackGeneratorConfiguration();
  v25.receiver = v4;
  v25.super_class = v20;
  v21 = objc_msgSendSuper2(&v25, sel__alternateFeedback_forDevice_senderID_, a1, a2, a3, v19);

  return v21;
}

id sub_189079508()
{
  v1 = type metadata accessor for _UICanvasFeedbackGeneratorConfiguration();
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_dealloc, v1);
}

void sub_1890795C4(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v3 = *(*v1 + 16);
  if (v2 == v3)
  {
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  if (v2 >= v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = *v1 + 56 * v2;
  v5 = *(v4 + 32);
  v6 = *(v4 + 40);
  v7 = *(v4 + 48);
  v8 = *(v4 + 56);
  v9 = *(v4 + 72);
  v10 = *(v4 + 80);
  v1[1] = v2 + 1;
  v11 = v1[2];
  if (__OFADD__(v11, 1))
  {
LABEL_9:
    __break(1u);
    return;
  }

  v1[2] = v11 + 1;
  *a1 = v11;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
}

void sub_1890796B0(id a1, void *a2, void *a3)
{
  v6 = *(v3 + *a2);
  *(v3 + *a2) = a1;
  if (!v6)
  {
    if (!a1)
    {
      return;
    }

    v11 = 0;
    a1 = a1;
    goto LABEL_8;
  }

  v11 = v6;
  if (!a1)
  {
LABEL_8:
    *(v3 + *a3) = 1;
    sub_18907A694();

    v10 = v11;
    goto LABEL_9;
  }

  v7 = v3;
  sub_188A34624(0, &unk_1EA931080, off_1E70EB108);
  a1 = a1;
  v8 = v11;
  v9 = sub_18A4A7C88();

  if ((v9 & 1) == 0)
  {
    v3 = v7;
    goto LABEL_8;
  }

  v10 = v8;
LABEL_9:
}

void sub_1890797B0()
{
  v35 = 0;
  sub_188B4D780();
  v34 = 0;
  v1 = *(v0 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_resolvedSections);
  if (!v1)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v23 = *(v1 + 16);
  if (v23)
  {
    v22 = v1 + 32;

    v2 = 0;
    v21 = v1;
    while (v2 < *(v1 + 16))
    {
      v3 = *(v22 + 24 * v2);
      v27 = v3 & 0xFFFFFFFFFFFFFF8;
      if (v3 >> 62)
      {
        v4 = sub_18A4A7F68();
      }

      else
      {
        v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      swift_bridgeObjectRetain_n();

      if (v4)
      {
        v24 = v2;
        v25 = v3 & 0xC000000000000001;
        v26 = v3;
        if ((v3 & 0xC000000000000001) != 0)
        {
          v5 = sub_188E49AA8(0, v3);
        }

        else
        {
          if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_33:
            __break(1u);
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
            break;
          }

          v5 = *(v3 + 32);
        }

        v6 = v5;
        v7 = swift_allocObject();
        *(v7 + 16) = &v35;
        *(v7 + 24) = &v34;
        sub_188A55B8C(0, 0);
        v8 = swift_allocObject();
        *(v8 + 16) = sub_18907CD78;
        *(v8 + 24) = v7;
        v32 = sub_188B89F5C;
        v33 = v8;
        v9 = MEMORY[0x1E69E9820];
        aBlock = MEMORY[0x1E69E9820];
        v29 = 1107296256;
        v30 = sub_188B89F00;
        v31 = &block_descriptor_32_0;
        v10 = _Block_copy(&aBlock);

        [v6 enumerateVisibleItems_];

        _Block_release(v10);
        LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

        if (v6)
        {
          goto LABEL_34;
        }

        if (v35)
        {
          v11 = sub_18907CD78;
          v1 = v21;
          v2 = v24;
        }

        else
        {
          v12 = 1 - v4;
          v13 = 5;
          do
          {
            if (v12 + v13 == 5)
            {
              break;
            }

            v14 = v13 - 4;
            if (v25)
            {
              v15 = sub_188E49AA8(v13 - 4, v3);
            }

            else
            {
              if (v14 >= *(v27 + 16))
              {
                goto LABEL_33;
              }

              v15 = *(v3 + 8 * v13);
            }

            v16 = v15;
            if (__OFADD__(v14, 1))
            {
              goto LABEL_35;
            }

            v17 = swift_allocObject();
            *(v17 + 16) = &v35;
            *(v17 + 24) = &v34;
            sub_188A55B8C(sub_18907CD78, v7);
            v18 = swift_allocObject();
            *(v18 + 16) = sub_18907CD78;
            *(v18 + 24) = v17;
            v32 = sub_188B89F5C;
            v33 = v18;
            aBlock = v9;
            v29 = 1107296256;
            v30 = sub_188B89F00;
            v31 = &block_descriptor_32_0;
            v19 = _Block_copy(&aBlock);

            [v16 enumerateVisibleItems_];

            _Block_release(v19);
            isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

            if (isEscapingClosureAtFileLocation)
            {
              goto LABEL_34;
            }

            v7 = v17;
            ++v13;
            v3 = v26;
          }

          while (v35 != 1);
          v11 = sub_18907CD78;
          v1 = v21;
          v2 = v24;
        }
      }

      else
      {
        v11 = 0;
        v7 = 0;
      }

      swift_bridgeObjectRelease_n();
      sub_188A55B8C(v11, v7);
      if ((v34 & 1) == 0 && ++v2 != v23)
      {
        continue;
      }

      return;
    }

    __break(1u);
    goto LABEL_37;
  }
}

void sub_189079C64(unint64_t a1, void *a2)
{
  v4 = *(v2 + *a2);
  *(v2 + *a2) = a1;

  v5 = sub_188B3423C(v4, a1);

  if ((v5 & 1) == 0)
  {
    *(v2 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_resolvedSections) = 0;

    sub_18907A694();
  }
}

void sub_189079CF4(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_supportsAlwaysOverflowGroups) == 1)
  {
    v29[1] = v29;
    v31 = 0;
    MEMORY[0x1EEE9AC00](a1);
    v2 = v28;
    v28[2] = &v31;
    v3 = *(v1 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_fixedLeadingGroups);
    if (v3 >> 62)
    {
      v4 = sub_18A4A7F68();
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v4)
    {
      if (v4 < 1)
      {
        __break(1u);
        goto LABEL_34;
      }

      v29[0] = v28;

      for (i = 0; i != v4; ++i)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = sub_188E49AA8(i, v3);
        }

        else
        {
          v6 = *(v3 + 8 * i + 32);
        }

        v7 = v6;
        if ([v6 isHidden])
        {
        }

        else
        {
          v8 = [v7 _showInOverflow];

          if (v8)
          {
            v31 = 1;
          }
        }
      }

      v2 = v29[0];
    }

    v9 = *(v1 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_groupOrderer);
    if (v9)
    {
      v10 = swift_allocObject();
      *(v10 + 16) = sub_18907CBC8;
      *(v10 + 24) = v2;
      v11 = swift_allocObject();
      v12 = sub_18907CC18;
      *(v11 + 16) = sub_18907CC18;
      *(v11 + 24) = v10;
      aBlock[4] = sub_18907CC44;
      aBlock[5] = v11;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_18907B6F0;
      aBlock[3] = &block_descriptor_93;
      v13 = _Block_copy(aBlock);
      v14 = v9;

      [(_UIButtonBarGroupOrderer *)v14 enumerateSourceGroups:v13];

      _Block_release(v13);
      LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

      if ((v13 & 1) == 0)
      {
        goto LABEL_36;
      }

      __break(1u);
    }

    sub_188B48ADC(v15);
    v3 = v16;

    if (!(v3 >> 62))
    {
      v17 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
LABEL_22:
        if (v17 < 1)
        {
LABEL_53:
          __break(1u);
          return;
        }

        for (j = 0; j != v17; ++j)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v19 = sub_188E49AA8(j, v3);
          }

          else
          {
            v19 = *(v3 + 8 * j + 32);
          }

          v20 = v19;
          if ([v19 isHidden])
          {
          }

          else
          {
            v21 = [v20 _showInOverflow];

            if (v21)
            {
              v31 = 1;
            }
          }
        }
      }

LABEL_35:

      v12 = 0;
      v10 = 0;
LABEL_36:
      v22 = *(v1 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_fixedTrailingGroups);
      if (v22 >> 62)
      {
        v23 = sub_18A4A7F68();
        if (v23)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v23)
        {
LABEL_38:
          if (v23 >= 1)
          {
            v29[0] = v12;

            for (k = 0; k != v23; ++k)
            {
              if ((v22 & 0xC000000000000001) != 0)
              {
                v25 = sub_188E49AA8(k, v22);
              }

              else
              {
                v25 = *(v22 + 8 * k + 32);
              }

              v26 = v25;
              if ([v25 isHidden])
              {
              }

              else
              {
                v27 = [v26 _showInOverflow];

                if (v27)
                {
                  v31 = 1;
                }
              }
            }

            v12 = v29[0];
            goto LABEL_49;
          }

          __break(1u);
          goto LABEL_53;
        }
      }

LABEL_49:
      sub_188A55B8C(v12, v10);
      return;
    }

LABEL_34:
    v17 = sub_18A4A7F68();
    if (v17)
    {
      goto LABEL_22;
    }

    goto LABEL_35;
  }
}

unint64_t *sub_18907A158()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7CC0];
  v22 = MEMORY[0x1E69E7CC0];
  v3 = *(v1 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_effectiveLayout);
  v20 = *(v3 + 16);
  if (v20)
  {
    v17 = v1;
    v19 = v3 + 32;

    v4 = 0;
    v18 = v3;
    while (1)
    {
      if (v4 >= *(v3 + 16))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        v11 = sub_18A4A7F68();
        if (!v11)
        {
          goto LABEL_35;
        }

LABEL_25:
        v21 = v2;
        result = sub_18A4A8208();
        if (v11 < 0)
        {
          __break(1u);
        }

        else
        {
          v13 = 0;
          do
          {
            if ((v4 & 0xC000000000000001) != 0)
            {
              v14 = sub_188E49AA8(v13, v4);
            }

            else
            {
              v14 = *(v4 + 8 * v13 + 32);
            }

            v15 = v14;
            ++v13;
            v16 = [v14 _effectiveMenuRepresentation];

            sub_18A4A81D8();
            sub_18A4A8218();
            sub_18A4A8228();
            sub_18A4A81E8();
          }

          while (v11 != v13);

          return v21;
        }

        return result;
      }

      v5 = *(v19 + 24 * v4);
      if (v5 >> 62)
      {
        v6 = sub_18A4A7F68();
        if (!v6)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v6)
        {
          goto LABEL_4;
        }
      }

      if (v6 < 1)
      {
        goto LABEL_33;
      }

      for (i = 0; i != v6; ++i)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v9 = sub_188E49D08(i, v5);
        }

        else
        {
          v9 = *(v5 + 8 * i + 32);
        }

        v10 = v9;
        if ((v9[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout__spilled] & 1) != 0 || [*&v9[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_group] _showInOverflow])
        {
          v8 = *&v10[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_group];
          MEMORY[0x18CFE2450]();
          if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_18A4A7588();
          }

          v2 = &v22;
          sub_18A4A75F8();
        }
      }

      v3 = v18;
LABEL_4:
      if (++v4 == v20)
      {

        v2 = MEMORY[0x1E69E7CC0];
        v1 = v17;
        break;
      }
    }
  }

  sub_18907A9F4(v1, &v22);
  v4 = v22;
  if (v22 >> 62)
  {
    goto LABEL_34;
  }

  v11 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v11)
  {
    goto LABEL_25;
  }

LABEL_35:

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_18907A448(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_groupOrderer);
  if (v3)
  {
    v4 = [(_UIButtonBarGroupOrderer *)v3 orderedGroups];
    sub_188A34624(0, &unk_1ED48DBD0, off_1E70E94E8);
    v5 = sub_18A4A7548();

    if (!(v5 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {

    sub_188B48ADC(v11);
    v5 = v12;

    if (!(v5 >> 62))
    {
LABEL_3:
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
        goto LABEL_4;
      }

LABEL_11:

      return MEMORY[0x1E69E7CC0];
    }
  }

  v6 = sub_18A4A7F68();
  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_4:
  v15 = MEMORY[0x1E69E7CC0];
  result = sub_18A4A8208();
  if (v6 < 0)
  {
    __break(1u);
  }

  else
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = 0;
      do
      {
        v9 = v8 + 1;
        v10 = [sub_188E49AA8(v8 v5)];
        swift_unknownObjectRelease();
        sub_18A4A81D8();
        sub_18A4A8218();
        sub_18A4A8228();
        sub_18A4A81E8();
        v8 = v9;
      }

      while (v6 != v9);
    }

    else
    {
      v13 = 32;
      do
      {
        v14 = [*(v5 + v13) _effectiveMenuRepresentation];
        sub_18A4A81D8();
        sub_18A4A8218();
        sub_18A4A8228();
        sub_18A4A81E8();
        v13 += 8;
        --v6;
      }

      while (v6);
    }

    return v15;
  }

  return result;
}

void sub_18907A694()
{
  v1 = v0 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(v1 + 8);
    v3 = objc_opt_self();
    if ([v3 _isInAnimationBlockWithAnimationsEnabled])
    {
      v4 = 1;
    }

    else
    {
      v4 = [v3 _isInSystemAnimationBlockWithAnimationsEnabled];
    }

    ObjectType = swift_getObjectType();
    (*(v2 + 8))(v4, ObjectType, v2);
  }
}

void sub_18907A764()
{
  *(v0 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_resolvedSections) = 0;

  v1 = v0 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(v1 + 8);
    v5 = objc_opt_self();
    if ([v5 _isInAnimationBlockWithAnimationsEnabled])
    {
      v6 = 1;
    }

    else
    {
      v6 = [v5 _isInSystemAnimationBlockWithAnimationsEnabled];
    }

    ObjectType = swift_getObjectType();
    (*(v4 + 8))(v6, ObjectType, v4);
  }

  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = *(v1 + 8);
    v11 = v8;
    v10 = swift_getObjectType();
    (*(v9 + 16))(v10, v9);
  }
}

void sub_18907A888(void *a1, _BYTE *a2, void *a3, void **a4, double a5, double a6)
{
  v12 = [a1 view];
  if (v12)
  {
    v15 = v12;
    [a3 convertPoint:a5 toCoordinateSpace:a6];
    if ([v15 pointInside:0 withEvent:?])
    {
      v13 = *a4;
      *a4 = a1;
      v14 = a1;

      *a2 = 1;
    }
  }
}

void sub_18907A9F4(uint64_t a1, void *a2)
{
  v31 = a2;
  v4 = *(a1 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_fixedLeadingGroups);
  if (v4 >> 62)
  {
    v5 = sub_18A4A7F68();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5)
  {
    if (v5 < 1)
    {
      __break(1u);
      goto LABEL_34;
    }

    for (i = 0; i != v5; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = sub_188E49AA8(i, v4);
      }

      else
      {
        v7 = *(v4 + 8 * i + 32);
      }

      v8 = v7;
      if ([v7 isHidden] & 1) == 0 && (objc_msgSend(v8, sel__showInOverflow))
      {
        v9 = v8;
        MEMORY[0x18CFE2450]();
        if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_18A4A7588();
        }

        sub_18A4A75F8();
      }
    }
  }

  v10 = *(a1 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_groupOrderer);
  if (v10)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = sub_18907CD08;
    *(v11 + 24) = &v30;
    v12 = swift_allocObject();
    v29 = sub_18907CF8C;
    *(v12 + 16) = sub_18907CF8C;
    *(v12 + 24) = v11;
    aBlock[4] = sub_18907CF90;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_18907B6F0;
    aBlock[3] = &block_descriptor_23_1;
    v13 = _Block_copy(aBlock);
    v14 = v10;

    [(_UIButtonBarGroupOrderer *)v14 enumerateSourceGroups:v13];

    _Block_release(v13);
    LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

    if ((v13 & 1) == 0)
    {
      goto LABEL_36;
    }

    __break(1u);
  }

  sub_188B48ADC(v15);
  v4 = v16;

  if (v4 >> 62)
  {
LABEL_34:
    v17 = sub_18A4A7F68();
    if (v17)
    {
      goto LABEL_21;
    }

    goto LABEL_35;
  }

  v17 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v17)
  {
LABEL_21:
    if (v17 < 1)
    {
      goto LABEL_54;
    }

    for (j = 0; j != v17; ++j)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v19 = sub_188E49AA8(j, v4);
      }

      else
      {
        v19 = *(v4 + 8 * j + 32);
      }

      v20 = v19;
      if ([v19 isHidden] & 1) == 0 && (objc_msgSend(v20, sel__showInOverflow))
      {
        v21 = v20;
        MEMORY[0x18CFE2450]();
        if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_18A4A7588();
        }

        sub_18A4A75F8();
      }
    }
  }

LABEL_35:

  v29 = 0;
  v11 = 0;
LABEL_36:
  v22 = *(a1 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_fixedTrailingGroups);
  if (v22 >> 62)
  {
    v23 = sub_18A4A7F68();
    if (v23)
    {
      goto LABEL_38;
    }

LABEL_50:
    sub_188A55B8C(v29, v11);
    return;
  }

  v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v23)
  {
    goto LABEL_50;
  }

LABEL_38:
  if (v23 >= 1)
  {

    for (k = 0; k != v23; ++k)
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v25 = sub_188E49AA8(k, v22);
      }

      else
      {
        v25 = *(v22 + 8 * k + 32);
      }

      v26 = v25;
      if ([v25 isHidden] & 1) == 0 && (objc_msgSend(v26, sel__showInOverflow))
      {
        v27 = v26;
        MEMORY[0x18CFE2450]();
        if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v28 = *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_18A4A7588();
        }

        sub_18A4A75F8();
      }
    }

    goto LABEL_50;
  }

  __break(1u);
LABEL_54:
  __break(1u);
}

uint64_t sub_18907AEA8(uint64_t a1)
{
  result = 0;
  v4 = *(v1 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_groupOrderer);
  if (v4)
  {
    v5 = v4 == a1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {

    sub_188B48ADC(v6);
    v8 = v7;

    return v8;
  }

  return result;
}

id sub_18907B050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_sectionLayouts] = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_effectiveLayout] = v8;
  v9 = OBJC_IVAR____TtC5UIKit19NavigationButtonBar_groupLayoutMap;
  *&v3[v9] = sub_188B33C7C(v8);
  *&v3[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_appearanceStorage] = 0;
  v3[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_isCompact] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_supportsAlwaysOverflowGroups] = 0;
  v3[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_isInLayoutReentrancyGuard] = 0;
  v3[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_effectiveLayoutHasCriticalGroup] = 0;
  v3[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_needsAppearanceUpdate] = 0;
  v3[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_plainAppearanceChanged] = 0;
  v3[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_doneAppearanceChanged] = 0;
  v3[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_denyPointerInteractions] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_plainItemAppearanceNeedsUpdate] = 0;
  *&v3[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_plainItemAppearance] = 0;
  v3[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_prominentItemAppearanceNeedsUpdate] = 0;
  *&v3[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_prominentItemAppearance] = 0;
  *&v3[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_groupOrderer] = 0;
  *&v3[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_fixedLeadingGroups] = v8;
  *&v3[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_fixedTrailingGroups] = v8;
  v3[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_forceFixedSpacing] = 0;
  v3[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_supportsOverflow] = 0;
  *&v3[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_resolvedSections] = 0;
  *&v3[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_sectionedBarButtonGroups] = v8;
  *&v3[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_implicitGroups] = MEMORY[0x1E69E7CD0];
  v3[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_isGeneratingItemGroups] = 0;
  *&v3[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_barSections] = v8;
  *&v3[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_buttonVisualProviderClass] = a1;
  *&v3[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_position] = a2;
  sub_188A3F29C(a3, &v22, &unk_1EA937A80, &unk_18A650500);
  if (*(&v23 + 1))
  {
    v25 = v22;
    v26 = v23;
    v27 = v24;
  }

  else
  {
    v21 = a2;
    type metadata accessor for _UINavigationButtonBarPosition(0);
    sub_188C45E7C();
    sub_18A4A8048();
    if (*(&v23 + 1))
    {
      sub_188A3F5FC(&v22, &unk_1EA937A80, &unk_18A650500);
    }
  }

  v10 = &v3[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_transitionGroupIdentifier];
  *(v10 + 4) = v27;
  v11 = v26;
  *v10 = v25;
  *(v10 + 1) = v11;
  v12 = &v3[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics];
  *v12 = 0;
  *(v12 + 1) = 0;
  v12[16] = 0;
  *(v12 + 24) = xmmword_18A661420;
  __asm { FMOV            V0.2D, #4.0 }

  *(v12 + 40) = _Q0;
  *(v12 + 56) = xmmword_18A661430;
  *(v12 + 72) = xmmword_18A661440;
  *(v12 + 11) = 0x4018000000000000;
  v12[96] = 1;
  *(v12 + 13) = 0x401C000000000000;
  *(v12 + 56) = 257;
  v20.receiver = v3;
  v20.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v20, sel_init);
  sub_188A3F5FC(a3, &unk_1EA937A80, &unk_18A650500);
  return v18;
}

void sub_18907B380()
{
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_sectionLayouts) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_effectiveLayout) = v1;
  v2 = OBJC_IVAR____TtC5UIKit19NavigationButtonBar_groupLayoutMap;
  *(v0 + v2) = sub_188B33C7C(v1);
  *(v0 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_appearanceStorage) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_isCompact) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_supportsAlwaysOverflowGroups) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_isInLayoutReentrancyGuard) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_effectiveLayoutHasCriticalGroup) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_needsAppearanceUpdate) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_plainAppearanceChanged) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_doneAppearanceChanged) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_denyPointerInteractions) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_plainItemAppearanceNeedsUpdate) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_plainItemAppearance) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_prominentItemAppearanceNeedsUpdate) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_prominentItemAppearance) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_groupOrderer) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_fixedLeadingGroups) = v1;
  *(v0 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_fixedTrailingGroups) = v1;
  *(v0 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_forceFixedSpacing) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_supportsOverflow) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_resolvedSections) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_sectionedBarButtonGroups) = v1;
  *(v0 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_implicitGroups) = MEMORY[0x1E69E7CD0];
  *(v0 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_isGeneratingItemGroups) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_barSections) = v1;
  sub_18A4A8398();
  __break(1u);
}

void sub_18907B6F0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

double sub_18907B854(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, const char **a6)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = *a6;
    v12 = Strong;
    [Strong v11];
    a2 = v13;
  }

  return a2;
}

double sub_18907B8E0(uint64_t a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, const char **a8)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = *a8;
    v16 = Strong;
    [Strong v15];
    a2 = v17;
  }

  return a2;
}