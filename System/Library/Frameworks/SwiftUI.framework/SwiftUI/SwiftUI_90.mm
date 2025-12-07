uint64_t getEnumTagSinglePayload for FileDialogConfiguration(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(type metadata accessor for URL() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  type metadata accessor for Predicate<Pack{URL}>(0);
  v10 = *(v9 - 8);
  v11 = *(*(a3 + 24) - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  v18 = v10 + 80;
  v17 = *(v10 + 80);
  v16 = *(v18 + 4);
  v19 = *(*(v9 - 8) + 64);
  if (v7)
  {
    v20 = v8;
  }

  else
  {
    v20 = v8 + 1;
  }

  if (v20 <= 8)
  {
    v20 = 8;
  }

  if (!v16)
  {
    ++v19;
  }

  if (v19 <= 8)
  {
    v21 = 8;
  }

  else
  {
    v21 = v19;
  }

  v22 = *(v11 + 80);
  v23 = *(v11 + 64);
  if (v13)
  {
    v24 = v23;
  }

  else
  {
    v24 = v23 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v25 = v17 & 0xF8 | 7;
  v26 = v21 + 24;
  v27 = v22 + 8;
  if (a2 <= v15)
  {
    goto LABEL_44;
  }

  v28 = v24 + ((v27 + ((((v26 + (((v20 & 0xFFFFFFFFFFFFFFF8) + v25 + 145) & ~v25)) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8)) & ~v22);
  v29 = 8 * v28;
  if (v28 <= 3)
  {
    v32 = ((a2 - v15 + ~(-1 << v29)) >> v29) + 1;
    if (HIWORD(v32))
    {
      v30 = *(a1 + v28);
      if (!v30)
      {
        goto LABEL_44;
      }

      goto LABEL_31;
    }

    if (v32 > 0xFF)
    {
      v30 = *(a1 + v28);
      if (!*(a1 + v28))
      {
        goto LABEL_44;
      }

      goto LABEL_31;
    }

    if (v32 < 2)
    {
LABEL_44:
      v36 = ((((v26 + ((((a1 + v20 + 112) & 0xFFFFFFFFFFFFFFF8) + v25 + 33) & ~v25)) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8);
      if ((v14 & 0x80000000) != 0)
      {
        v38 = (*(v12 + 48))((v36 + v27) & ~v22);
        if (v38 >= 2)
        {
          return v38 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v37 = *v36;
        if (*v36 >= 0xFFFFFFFF)
        {
          LODWORD(v37) = -1;
        }

        return (v37 + 1);
      }
    }
  }

  v30 = *(a1 + v28);
  if (!*(a1 + v28))
  {
    goto LABEL_44;
  }

LABEL_31:
  v33 = (v30 - 1) << v29;
  if (v28 > 3)
  {
    v33 = 0;
  }

  if (v28)
  {
    if (v28 <= 3)
    {
      v34 = v28;
    }

    else
    {
      v34 = 4;
    }

    if (v34 > 2)
    {
      if (v34 == 3)
      {
        v35 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v35 = *a1;
      }
    }

    else if (v34 == 1)
    {
      v35 = *a1;
    }

    else
    {
      v35 = *a1;
    }
  }

  else
  {
    v35 = 0;
  }

  return v15 + (v35 | v33) + 1;
}

void storeEnumTagSinglePayload for FileDialogConfiguration(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(type metadata accessor for URL() - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 64);
  type metadata accessor for Predicate<Pack{URL}>(0);
  v12 = 0;
  v13 = *(v11 - 8);
  v14 = *(*(a4 + 24) - 8);
  v15 = *(v14 + 84);
  v16 = v15 - 1;
  v18 = *(v13 + 80);
  v17 = *(v13 + 84);
  v19 = *(v14 + 80);
  if (!v15)
  {
    v16 = 0;
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  else
  {
    v20 = v16;
  }

  if (v9)
  {
    v21 = v10;
  }

  else
  {
    v21 = v10 + 1;
  }

  v22 = 8;
  if (v21 <= 8)
  {
    v21 = 8;
  }

  if (v17)
  {
    v23 = *(*(v11 - 8) + 64);
  }

  else
  {
    v23 = *(*(v11 - 8) + 64) + 1;
  }

  if (v23 > 8)
  {
    v22 = v23;
  }

  v24 = v18 & 0xF8 | 7;
  if (v15)
  {
    v25 = *(v14 + 64);
  }

  else
  {
    v25 = *(v14 + 64) + 1;
  }

  v26 = ((v19 + 8 + ((((v22 + 24 + (((v21 & 0xFFFFFFFFFFFFFFF8) + v24 + 145) & ~v24)) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8)) & ~v19) + v25;
  if (a3 <= v20)
  {
    goto LABEL_30;
  }

  if (v26 <= 3)
  {
    v27 = ((a3 - v20 + ~(-1 << (8 * v26))) >> (8 * v26)) + 1;
    if (HIWORD(v27))
    {
      v12 = 4;
      if (v20 >= a2)
      {
        goto LABEL_40;
      }

      goto LABEL_31;
    }

    if (v27 < 0x100)
    {
      v28 = 1;
    }

    else
    {
      v28 = 2;
    }

    if (v27 >= 2)
    {
      v12 = v28;
    }

    else
    {
      v12 = 0;
    }

LABEL_30:
    if (v20 >= a2)
    {
      goto LABEL_40;
    }

    goto LABEL_31;
  }

  v12 = 1;
  if (v20 >= a2)
  {
LABEL_40:
    if (v12 > 1)
    {
      if (v12 != 2)
      {
        *&a1[v26] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_47;
      }

      *&a1[v26] = 0;
    }

    else if (v12)
    {
      a1[v26] = 0;
      if (!a2)
      {
        return;
      }

LABEL_47:
      v32 = ((((v22 + 24 + (((&a1[v21 + 112] & 0xFFFFFFFFFFFFFFF8) + v24 + 33) & ~v24)) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8);
      if ((v16 & 0x80000000) != 0)
      {
        v34 = ((v32 + v19 + 8) & ~v19);
        if (v16 >= a2)
        {
          v38 = *(v14 + 56);

          v38((v32 + v19 + 8) & ~v19, a2 + 1);
        }

        else
        {
          if (v25 <= 3)
          {
            v35 = ~(-1 << (8 * v25));
          }

          else
          {
            v35 = -1;
          }

          if (v25)
          {
            v36 = v35 & (~v16 + a2);
            if (v25 <= 3)
            {
              v37 = v25;
            }

            else
            {
              v37 = 4;
            }

            bzero(v34, v25);
            if (v37 > 2)
            {
              if (v37 == 3)
              {
                *v34 = v36;
                v34[2] = BYTE2(v36);
              }

              else
              {
                *v34 = v36;
              }
            }

            else if (v37 == 1)
            {
              *v34 = v36;
            }

            else
            {
              *v34 = v36;
            }
          }
        }
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v33 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v33 = a2 - 1;
        }

        *v32 = v33;
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_47;
  }

LABEL_31:
  v29 = ~v20 + a2;
  if (v26 >= 4)
  {
    bzero(a1, ((v19 + 8 + ((((v22 + 24 + (((v21 & 0xFFFFFFFFFFFFFFF8) + v24 + 145) & ~v24)) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8)) & ~v19) + v25);
    *a1 = v29;
    v30 = 1;
    if (v12 > 1)
    {
      goto LABEL_73;
    }

    goto LABEL_70;
  }

  v30 = (v29 >> (8 * (((v19 + 8 + ((((v22 + 24 + (((v21 & 0xF8) + v24 - 111) & ~v24)) & 0xF8) + 17) & 0xF8)) & ~v19) + v25))) + 1;
  if (!v26)
  {
LABEL_69:
    if (v12 > 1)
    {
      goto LABEL_73;
    }

    goto LABEL_70;
  }

  v31 = v29 & ~(-1 << (8 * (((v19 + 8 + ((((v22 + 24 + (((v21 & 0xF8) + v24 - 111) & ~v24)) & 0xF8) + 17) & 0xF8)) & ~v19) + v25)));
  bzero(a1, v26);
  if (v26 == 3)
  {
    *a1 = v31;
    a1[2] = BYTE2(v31);
    goto LABEL_69;
  }

  if (v26 == 2)
  {
    *a1 = v31;
    if (v12 > 1)
    {
LABEL_73:
      if (v12 == 2)
      {
        *&a1[v26] = v30;
      }

      else
      {
        *&a1[v26] = v30;
      }

      return;
    }
  }

  else
  {
    *a1 = v29;
    if (v12 > 1)
    {
      goto LABEL_73;
    }
  }

LABEL_70:
  if (v12)
  {
    a1[v26] = v30;
  }
}

void type metadata accessor for Predicate<Pack{URL}>?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance EnvironmentValues.FileDialogDefaultDirectoryKey@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  type metadata accessor for URL?(0);
  v3 = __swift_project_value_buffer(v2, static EnvironmentValues.FileDialogDefaultDirectoryKey.defaultValue);

  return outlined init with copy of URL?(v3, a1);
}

uint64_t protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance EnvironmentValues.FileDialogMessageKey(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = *(a1 + 24);
  v4 = *(a2 + 24);
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return (v3 | v4) == 0;
  }

  else
  {
    return static Text.== infix(_:_:)();
  }
}

uint64_t one-time initialization function for defaultValue(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a2(0);
  __swift_allocate_value_buffer(v6, a3);
  v7 = __swift_project_value_buffer(v6, a3);
  v8 = a4(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(v7, 1, 1, v8);
}

{
  v6 = a2(0);
  __swift_allocate_value_buffer(v6, a3);
  v7 = __swift_project_value_buffer(v6, a3);
  v8 = a4(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(v7, 1, 1, v8);
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance EnvironmentValues.FileDialogURLEnabledKey@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  type metadata accessor for Predicate<Pack{URL}>?(0);
  v3 = __swift_project_value_buffer(v2, static EnvironmentValues.FileDialogURLEnabledKey.defaultValue);

  return outlined init with copy of Predicate<Pack{URL}>?(v3, a1);
}

double FileDialogConfiguration.body(content:)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v35 = a2;
  type metadata accessor for Predicate<Pack{URL}>?(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for URL?(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(a1 + 24);
  v12 = type metadata accessor for Optional();
  v13 = swift_allocBox();
  v15 = v14;
  (*(*(v12 - 8) + 16))(v14, v3 + *(a1 + 84), v12);
  v16 = *(*(v11 - 8) + 48);
  if (!v16(v15, 1, v11))
  {
    v17 = specialized Environment.wrappedValue.getter(v10);
    (*(*(a1 + 40) + 40))(v10, v11, v17);
  }

  if (!v16(v15, 1, v11))
  {
    v18 = specialized Environment.wrappedValue.getter(*(v3 + *(a1 + 52)), *(v3 + *(a1 + 52) + 8), *(v3 + *(a1 + 52) + 16));
    (*(*(a1 + 40) + 16))(v18);
  }

  if (!v16(v15, 1, v11))
  {
    v19 = (v3 + *(a1 + 56));
    v20 = v19[1];
    v46 = *v19;
    v47 = v20;
    v48 = *(v19 + 32);
    v21 = specialized Environment.wrappedValue.getter();
    (*(*(a1 + 40) + 64))(v21);
  }

  if (!v16(v15, 1, v11))
  {
    v22 = (v3 + *(a1 + 60));
    v23 = v22[1];
    v43 = *v22;
    v44 = v23;
    v45 = *(v22 + 32);
    v24 = specialized Environment.wrappedValue.getter();
    (*(*(a1 + 40) + 88))(v24);
  }

  if (!v16(v15, 1, v11))
  {
    v25 = (v3 + *(a1 + 64));
    v26 = v25[1];
    v40 = *v25;
    v41 = v26;
    v42 = *(v25 + 32);
    v27 = specialized Environment.wrappedValue.getter();
    (*(*(a1 + 40) + 112))(v27);
  }

  if (!v16(v15, 1, v11))
  {
    v28 = specialized Environment.wrappedValue.getter(v7);
    (*(*(a1 + 40) + 136))(v7, v11, v28);
  }

  if (!v16(v15, 1, v11))
  {
    v29 = specialized Environment.wrappedValue.getter(*(v3 + *(a1 + 72)), *(v3 + *(a1 + 72) + 8));
    (*(*(a1 + 40) + 160))(v29, v11);
  }

  if (!v16(v15, 1, v11))
  {
    specialized Environment.wrappedValue.getter(*(v3 + *(a1 + 76)), *(v3 + *(a1 + 76) + 8) | (*(v3 + *(a1 + 76) + 9) << 8), &v38);
    v36 = v38;
    v37 = v39;
    (*(*(a1 + 40) + 184))(&v36, v11);
  }

  v30 = *(a1 + 16);
  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  *(v31 + 24) = v11;
  v34 = *(a1 + 32);
  *(v31 + 32) = v34;
  *(v31 + 48) = v13;

  swift_getWitnessTable(protocol conformance descriptor for FileDialogConfiguration<A, B>, a1);
  v32 = type metadata accessor for _ViewModifier_Content();
  swift_getWitnessTable(MEMORY[0x1E697FDF8], v32);
  View.transformPreference<A>(_:_:)();

  return result;
}

uint64_t closure #1 in FileDialogConfiguration.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  (*(v6 + 8))(a1, v5);
  v7 = swift_projectBox();
  swift_beginAccess();
  return (*(v6 + 16))(a1, v7, v5);
}

uint64_t outlined destroy of Predicate<Pack{URL}>?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *SceneStorageValues.Entry.__allocating_init<A>(_:_:location:transformBox:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  result = swift_allocObject();
  v13 = *a5;
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = *(v13 + *MEMORY[0x1E697F430]);
  result[7] = a5;
  result[8] = a6;
  return result;
}

double SceneStorageValues.Entry.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  swift_deallocClassInstance();
  return result;
}

double SceneStorageValues.removeObserver<A>(_:domain:key:signal:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {

    MEMORY[0x18D00C9B0](47, 0xE100000000000000);

    MEMORY[0x18D00C9B0](a4, a5);

    a4 = a2;
    a5 = a3;
  }

  else
  {
  }

  swift_beginAccess();
  v11 = *(v7 + 24);
  if (*(v11 + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(a4, a5), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
    swift_endAccess();

    if (*(v14 + 48) == a7)
    {
      v16 = *(v14 + 56);
      swift_unknownObjectRetain();

      if (v16)
      {
        ObservableLocation.removeObserver(signal:)();
      }
    }

    else
    {
    }
  }

  else
  {
    swift_endAccess();
  }

  return result;
}

double SceneStorageValues.__deallocating_deinit()
{

  outlined destroy of weak FallbackResponderProvider?(v0 + 40);

  swift_deallocClassInstance();
  return result;
}

uint64_t specialized implicit closure #1 in _GraphInputs.sceneStorageValues.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneStorageValuesKey>, &type metadata for SceneStorageValuesKey, &protocol witness table for SceneStorageValuesKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SceneStorageValuesKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneStorageValuesKey>, &type metadata for SceneStorageValuesKey, &protocol witness table for SceneStorageValuesKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneStorageValuesKey>, &type metadata for SceneStorageValuesKey, &protocol witness table for SceneStorageValuesKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SceneStorageValuesKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneStorageValuesKey>, &type metadata for SceneStorageValuesKey, &protocol witness table for SceneStorageValuesKey);
    PropertyList.subscript.getter();
  }

  v3 = type metadata accessor for WeakBox<SceneStorageValues>?;
  if (v7)
  {
    Strong = 0;
  }

  else
  {
    Strong = swift_weakLoadStrong();
    v3 = type metadata accessor for WeakBox<SceneStorageValues>;
  }

  result = outlined destroy of WeakBox<SceneStorageValues>?(&v6, v3);
  *a2 = Strong;
  return result;
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance SceneStorageValuesKey@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
    v2 = a1;
  }

  return outlined init with copy of WeakBox<SceneStorageValues>?(&static SceneStorageValuesKey.defaultValue, v2);
}

double View.sceneStorageDomain(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();

  return result;
}

uint64_t EnvironmentValues.sceneStorageDomain.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneStorageDomainKey>, &unk_1EFFB8B60, &protocol witness table for SceneStorageDomainKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SceneStorageDomainKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneStorageDomainKey>, &unk_1EFFB8B60, &protocol witness table for SceneStorageDomainKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneStorageDomainKey>, &unk_1EFFB8B60, &protocol witness table for SceneStorageDomainKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SceneStorageDomainKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneStorageDomainKey>, &unk_1EFFB8B60, &protocol witness table for SceneStorageDomainKey);
    PropertyList.subscript.getter();
  }

  return v2;
}

double key path getter for EnvironmentValues.sceneStorageDomain : EnvironmentValues@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneStorageDomainKey>, &unk_1EFFB8B60, &protocol witness table for SceneStorageDomainKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SceneStorageDomainKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneStorageDomainKey>, &unk_1EFFB8B60, &protocol witness table for SceneStorageDomainKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneStorageDomainKey>, &unk_1EFFB8B60, &protocol witness table for SceneStorageDomainKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SceneStorageDomainKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneStorageDomainKey>, &unk_1EFFB8B60, &protocol witness table for SceneStorageDomainKey);
    PropertyList.subscript.getter();
  }

  result = *&v4;
  *a2 = v4;
  return result;
}

double key path setter for EnvironmentValues.sceneStorageDomain : EnvironmentValues(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return EnvironmentValues.sceneStorageDomain.setter(v1, v2);
}

double EnvironmentValues.sceneStorageDomain.setter(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    goto LABEL_8;
  }

  v5 = *(v2 + 8);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneStorageDomainKey>, &unk_1EFFB8B60, &protocol witness table for SceneStorageDomainKey);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SceneStorageDomainKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneStorageDomainKey>, &unk_1EFFB8B60, &protocol witness table for SceneStorageDomainKey);

  if (v5)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  if (v7)
  {
    MEMORY[0x18D00C9B0](47, 0xE100000000000000);
    MEMORY[0x18D00C9B0](a1, a2);

    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneStorageDomainKey>, &unk_1EFFB8B60, &protocol witness table for SceneStorageDomainKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SceneStorageDomainKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneStorageDomainKey>, &unk_1EFFB8B60, &protocol witness table for SceneStorageDomainKey);

    PropertyList.subscript.setter();
    if (v5)
    {
      goto LABEL_9;
    }
  }

  else
  {
LABEL_8:
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneStorageDomainKey>, &unk_1EFFB8B60, &protocol witness table for SceneStorageDomainKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SceneStorageDomainKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneStorageDomainKey>, &unk_1EFFB8B60, &protocol witness table for SceneStorageDomainKey);

    PropertyList.subscript.setter();
    if (*(v2 + 8))
    {
LABEL_9:
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }
  }

  return result;
}

void (*EnvironmentValues.sceneStorageDomain.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  if (*(v1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneStorageDomainKey>, &unk_1EFFB8B60, &protocol witness table for SceneStorageDomainKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SceneStorageDomainKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneStorageDomainKey>, &unk_1EFFB8B60, &protocol witness table for SceneStorageDomainKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneStorageDomainKey>, &unk_1EFFB8B60, &protocol witness table for SceneStorageDomainKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SceneStorageDomainKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneStorageDomainKey>, &unk_1EFFB8B60, &protocol witness table for SceneStorageDomainKey);
    PropertyList.subscript.getter();
  }

  *v4 = v4[1];
  return EnvironmentValues.sceneStorageDomain.modify;
}

void EnvironmentValues.sceneStorageDomain.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  if (a2)
  {

    EnvironmentValues.sceneStorageDomain.setter(v3, v4);
  }

  else
  {
    EnvironmentValues.sceneStorageDomain.setter(**a1, v4);
  }

  free(v2);
}

double specialized implicit closure #1 in _GraphInputs.sceneStorageDomain.getter@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneStorageDomainKey>, &unk_1EFFB8B60, &protocol witness table for SceneStorageDomainKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SceneStorageDomainKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneStorageDomainKey>, &unk_1EFFB8B60, &protocol witness table for SceneStorageDomainKey);

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneStorageDomainKey>, &unk_1EFFB8B60, &protocol witness table for SceneStorageDomainKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SceneStorageDomainKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneStorageDomainKey>, &unk_1EFFB8B60, &protocol witness table for SceneStorageDomainKey);

    PropertyList.subscript.getter();
  }

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t SceneStorage._key.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SceneStorage._key.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SceneStorage._domain.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SceneStorage._domain.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void SceneStorage._location.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);

  *(v2 + v4) = a1;
}

void SceneStorage._transformBox.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);

  *(v2 + v4) = a1;
}

uint64_t SceneStorage.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  specialized SceneStorage.wrappedValue.setter(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

double SceneStorage.getValue(forReading:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  if (!*(v3 + *(a2 + 36)))
  {
    v8 = static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v8, &dword_18BD4A000, v9, "Accessing a SceneStorage value outside of being installed on a View or outside SwiftUI App Lifecycle. This will always return the default value.", 144, 2, MEMORY[0x1E69E7CC0]);

LABEL_7:
    v10 = *(*(*(a2 + 16) - 8) + 16);
    v11 = v4 + *(a2 + 32);

    v10(a3, v11);
    return result;
  }

  v7 = a1;
  type metadata accessor for GraphHost();

  if (static GraphHost.isUpdating.getter())
  {
    if (v7)
    {
      dispatch thunk of AnyLocation.wasRead.setter();
    }

    goto LABEL_7;
  }

  dispatch thunk of AnyLocation.get()();

  return result;
}

uint64_t (*SceneStorage.wrappedValue.modify(void *a1, uint64_t a2))()
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  SceneStorage.getValue(forReading:)(1, a2, v11);
  return SceneStorage.wrappedValue.modify;
}

void SceneStorage.wrappedValue.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = *v2;
    v3 = v2[1];
    (*(v2[3] + 16))(v2[4], v2[5], v2[2]);
    if (*(v3 + *(v4 + 36)))
    {
      dispatch thunk of AnyLocation.set(_:transaction:)();
    }

    v6 = v2[4];
    v5 = v2[5];
    v7 = v2[2];
    v8 = *(v2[3] + 8);
    v8(v6, v7);
    v8(v5, v7);
  }

  else
  {
    if (*(v2[1] + *(*v2 + 36)))
    {
      dispatch thunk of AnyLocation.set(_:transaction:)();
    }

    v6 = v2[4];
    v5 = v2[5];
    (*(v2[3] + 8))(v5, v2[2]);
  }

  free(v5);
  free(v6);

  free(v2);
}

uint64_t SceneStorage.projectedValue.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = SceneStorage.getValue(forReading:)(0, a1, (&v14 - v8));
  if (*(v1 + *(a1 + 36)))
  {
    (*(v4 + 16))(v6, v9, v3, v10);

    Binding.init(value:location:transaction:)();
  }

  else
  {
    v11 = static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v11, &dword_18BD4A000, v12, "Creating a Binding to SceneStorage value outside of being installed on a View. This will result in a constant Binding of the default value and will not update.", 159, 2, MEMORY[0x1E69E7CC0]);

    static Binding.constant(_:)();
  }

  return (*(v4 + 8))(v9, v3);
}

double SceneStorage.Box.reset()(uint64_t a1)
{

  v1[7] = 0;
  v5 = v1[5];
  if (v5)
  {
    v7 = v1[3];
    v6 = v1[4];
    v8 = v1[2];
    v9 = v1[6];
    type metadata accessor for SceneStorage<URL>(0, &lazy cache variable for type metadata for SceneStorageValues?, v3, type metadata accessor for SceneStorageValues, MEMORY[0x1E69E6720]);
    if (*AGGraphGetValue())
    {
      v10 = *(a1 + 16);

      SceneStorageValues.removeObserver<A>(_:domain:key:signal:)(v10, v8, v7, v6, v5, v9, v10);
    }
  }

  return result;
}

uint64_t SceneStorage.init<A>(wrappedValue:_:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for TransformBox<PropertyListTransform<Bool>>(0, &lazy cache variable for type metadata for TransformBox<PropertyListTransform<Bool>>, &lazy cache variable for type metadata for PropertyListTransform<Bool>, MEMORY[0x1E69E6370]);
  result = swift_allocObject();
  *a4 = a2;
  *(a4 + 8) = a3;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = a1;
  *(a4 + 40) = 0;
  *(a4 + 48) = result;
  return result;
}

uint64_t SceneStorage.init<A>(wrappedValue:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  type metadata accessor for TransformBox<PropertyListTransform<Bool>>(0, &lazy cache variable for type metadata for TransformBox<PropertyListTransform<Int>>, &lazy cache variable for type metadata for PropertyListTransform<Int>, MEMORY[0x1E69E6530]);
  result = swift_allocObject();
  *a4 = a2;
  a4[1] = a3;
  a4[2] = 0;
  a4[3] = 0;
  a4[4] = a1;
  a4[5] = 0;
  a4[6] = result;
  return result;
}

uint64_t SceneStorage.init<A>(wrappedValue:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  type metadata accessor for TransformBox<PropertyListTransform<Bool>>(0, &lazy cache variable for type metadata for TransformBox<PropertyListTransform<Double>>, &lazy cache variable for type metadata for PropertyListTransform<Double>, MEMORY[0x1E69E63B0]);
  result = swift_allocObject();
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = a4;
  *(a3 + 40) = 0;
  *(a3 + 48) = result;
  return result;
}

uint64_t SceneStorage.init<A>(wrappedValue:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  type metadata accessor for TransformBox<PropertyListTransform<Bool>>(0, &lazy cache variable for type metadata for TransformBox<PropertyListTransform<String>>, &lazy cache variable for type metadata for PropertyListTransform<String>, MEMORY[0x1E69E6158]);
  result = swift_allocObject();
  *a5 = a3;
  a5[1] = a4;
  a5[2] = 0;
  a5[3] = 0;
  a5[4] = a1;
  a5[5] = a2;
  a5[6] = 0;
  a5[7] = result;
  return result;
}

{
  type metadata accessor for TransformBox<PropertyListTransform<Bool>>(0, &lazy cache variable for type metadata for TransformBox<PropertyListTransform<Data>>, &lazy cache variable for type metadata for PropertyListTransform<Data>, MEMORY[0x1E6969080]);
  result = swift_allocObject();
  *a5 = a3;
  a5[1] = a4;
  a5[2] = 0;
  a5[3] = 0;
  a5[4] = a1;
  a5[5] = a2;
  a5[6] = 0;
  a5[7] = result;
  return result;
}

uint64_t SceneStorage.init<A>(wrappedValue:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  type metadata accessor for SceneStorage<URL>(0, &lazy cache variable for type metadata for SceneStorage<URL>, 255, MEMORY[0x1E6968FB0], type metadata accessor for SceneStorage);
  v9 = v8;
  *(a4 + 2) = 0;
  *(a4 + 3) = 0;
  *&a4[*(v8 + 36)] = 0;
  *a4 = a2;
  *(a4 + 1) = a3;
  v10 = *(v8 + 32);
  v11 = type metadata accessor for URL();
  (*(*(v11 - 8) + 32))(&a4[v10], a1, v11);
  type metadata accessor for TransformBox<PropertyListTransform<URL>>(0, &lazy cache variable for type metadata for TransformBox<PropertyListTransform<URL>>, type metadata accessor for PropertyListTransform<URL>);
  result = swift_allocObject();
  *&a4[*(v9 + 40)] = result;
  return result;
}

{
  type metadata accessor for SceneStorage<URL>(0, &lazy cache variable for type metadata for SceneStorage<Date>, 255, MEMORY[0x1E6969530], type metadata accessor for SceneStorage);
  v9 = v8;
  *(a4 + 2) = 0;
  *(a4 + 3) = 0;
  *&a4[*(v8 + 36)] = 0;
  *a4 = a2;
  *(a4 + 1) = a3;
  v10 = *(v8 + 32);
  v11 = type metadata accessor for Date();
  (*(*(v11 - 8) + 32))(&a4[v10], a1, v11);
  type metadata accessor for TransformBox<PropertyListTransform<URL>>(0, &lazy cache variable for type metadata for TransformBox<PropertyListTransform<Date>>, type metadata accessor for PropertyListTransform<Date>);
  result = swift_allocObject();
  *&a4[*(v9 + 40)] = result;
  return result;
}

uint64_t SceneStorage.init<A>(wrappedValue:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v12 = *(a4 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a1, v16, v13);
  v18 = type metadata accessor for RawRepresentableTransform(0, a4, a5, v17);
  SceneStorage.init<A>(key:transform:defaultValue:)(a2, a3, v19, v15, a4, v18, &protocol witness table for RawRepresentableTransform<A>, a6);
  return (*(v12 + 8))(a1, a4);
}

uint64_t SceneStorage<A>.init<>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for TransformBox<PropertyListTransform<Data?>>(0, &lazy cache variable for type metadata for TransformBox<PropertyListTransform<Bool?>>, &lazy cache variable for type metadata for PropertyListTransform<Bool?>, &lazy cache variable for type metadata for Bool?, MEMORY[0x1E69E6370]);
  result = swift_allocObject();
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 2;
  *(a3 + 40) = 0;
  *(a3 + 48) = result;
  return result;
}

{
  return SceneStorage<A>.init<>(_:)(a1, a2, &lazy cache variable for type metadata for TransformBox<PropertyListTransform<Int?>>, &lazy cache variable for type metadata for PropertyListTransform<Int?>, &lazy cache variable for type metadata for Int?, MEMORY[0x1E69E6530], a3);
}

{
  return SceneStorage<A>.init<>(_:)(a1, a2, &lazy cache variable for type metadata for TransformBox<PropertyListTransform<Double?>>, &lazy cache variable for type metadata for PropertyListTransform<Double?>, &lazy cache variable for type metadata for Double?, MEMORY[0x1E69E63B0], a3);
}

uint64_t SceneStorage<A>.init<>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, unint64_t *a4@<X3>, unint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  type metadata accessor for TransformBox<PropertyListTransform<Data?>>(0, a3, a4, a5, a6);
  result = swift_allocObject();
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 24) = 0;
  *(a7 + 32) = 0;
  *(a7 + 16) = 0;
  *(a7 + 40) = 1;
  *(a7 + 48) = 0;
  *(a7 + 56) = result;
  return result;
}

double SceneStorage<A>.init<>(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for TransformBox<PropertyListTransform<Data?>>(0, &lazy cache variable for type metadata for TransformBox<PropertyListTransform<String?>>, &lazy cache variable for type metadata for PropertyListTransform<String?>, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158]);
  v6 = swift_allocObject();
  *a3 = a1;
  *(a3 + 8) = a2;
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0;
  *(a3 + 56) = v6;
  return result;
}

{
  type metadata accessor for TransformBox<PropertyListTransform<Data?>>(0, &lazy cache variable for type metadata for TransformBox<PropertyListTransform<Data?>>, &lazy cache variable for type metadata for PropertyListTransform<Data?>, &lazy cache variable for type metadata for Data?, MEMORY[0x1E6969080]);
  v6 = swift_allocObject();
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 16) = 0;
  result = -3.10503618e231;
  *(a3 + 40) = xmmword_18CD94A10;
  *(a3 + 56) = v6;
  return result;
}

uint64_t SceneStorage<A>.init<>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  type metadata accessor for SceneStorage<URL>(0, &lazy cache variable for type metadata for SceneStorage<URL?>, 255, type metadata accessor for URL?, type metadata accessor for SceneStorage);
  v7 = v6;
  v8 = *(v6 + 32);
  v9 = type metadata accessor for URL();
  (*(*(v9 - 8) + 56))(&a3[v8], 1, 1, v9);
  *(a3 + 2) = 0;
  *(a3 + 3) = 0;
  *&a3[*(v7 + 36)] = 0;
  *a3 = a1;
  *(a3 + 1) = a2;
  type metadata accessor for TransformBox<PropertyListTransform<URL>>(0, &lazy cache variable for type metadata for TransformBox<PropertyListTransform<URL?>>, type metadata accessor for PropertyListTransform<URL?>);
  result = swift_allocObject();
  *&a3[*(v7 + 40)] = result;
  return result;
}

{
  type metadata accessor for SceneStorage<URL>(0, &lazy cache variable for type metadata for SceneStorage<Date?>, 255, type metadata accessor for Date?, type metadata accessor for SceneStorage);
  v7 = v6;
  v8 = *(v6 + 32);
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 56))(&a3[v8], 1, 1, v9);
  *(a3 + 2) = 0;
  *(a3 + 3) = 0;
  *&a3[*(v7 + 36)] = 0;
  *a3 = a1;
  *(a3 + 1) = a2;
  type metadata accessor for TransformBox<PropertyListTransform<URL>>(0, &lazy cache variable for type metadata for TransformBox<PropertyListTransform<Date?>>, type metadata accessor for PropertyListTransform<Date?>);
  result = swift_allocObject();
  *&a3[*(v7 + 40)] = result;
  return result;
}

uint64_t SceneStorage.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = type metadata accessor for Optional();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  (*(*(a3 - 8) + 56))(&v18 - v12, 1, 1, a3, v11);
  v15 = type metadata accessor for RawRepresentableTransform(0, a3, a4, v14);
  return SceneStorage.init<A>(key:transform:defaultValue:)(a1, a2, v16, v13, v10, v15, &protocol witness table for RawRepresentableTransform<A>, a5);
}

uint64_t SceneStorage<A>.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of ExpressibleByNilLiteral.init(nilLiteral:)();
  v14 = type metadata accessor for JSONCodableTransform(0, a3, a4, a5);
  return SceneStorage.init<A>(key:transform:defaultValue:)(a1, a2, v15, v13, a3, v14, &protocol witness table for JSONCodableTransform<A>, a6);
}

double PropertyListTransform.readValue(from:key:read:)@<D0>(uint64_t a1@<X0>, _BYTE *a4@<X3>, _OWORD *a5@<X8>)
{
  *a4 = 1;

  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(v10), (v8 & 1) != 0))
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v7, a5);
    outlined destroy of AnyHashable(v10);
  }

  else
  {
    outlined destroy of AnyHashable(v10);
    result = 0.0;
    *a5 = 0u;
    a5[1] = 0u;
  }

  return result;
}

uint64_t RawRepresentableTransform.readValue(from:key:read:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v27[0] = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v27 - v16;
  *a4 = 1;
  *&v28[0] = a2;
  *(&v28[0] + 1) = a3;

  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v18 = specialized __RawDictionaryStorage.find<A>(_:)(v29), (v19 & 1) != 0))
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v18, v28);
    outlined destroy of AnyHashable(v29);
  }

  else
  {
    outlined destroy of AnyHashable(v29);
    memset(v28, 0, sizeof(v28));
  }

  v20 = MEMORY[0x1E69E7CA0];
  type metadata accessor for PropertyListTransform<Bool>(0, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  v21 = swift_dynamicCast();
  v22 = (*(*(AssociatedTypeWitness - 8) + 56))(v17, v21 ^ 1u, 1, AssociatedTypeWitness);
  MEMORY[0x1EEE9AC00](v22);
  v27[-2] = a5;
  v27[-1] = a6;
  MEMORY[0x1EEE9AC00](v23);
  v27[-4] = a5;
  v27[-3] = a6;
  v27[-2] = partial apply for closure #1 in RawRepresentableTransform.readValue(from:key:read:);
  v27[-1] = v24;
  _sSq7flatMapyqd_0_SgABxqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for thunk for @callee_guaranteed (@in_guaranteed A.RawRepresentable.RawValue) -> (@out A?), &v27[-6], MEMORY[0x1E69E73E0], v20 + 8, v25, v27[0]);
  return (*(v15 + 8))(v17, v14);
}

uint64_t closure #1 in RawRepresentableTransform.readValue(from:key:read:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v7 + 16))(&v9 - v6, a1, v5);
  return dispatch thunk of RawRepresentable.init(rawValue:)();
}

_OWORD *thunk for @callee_guaranteed (@in_guaranteed A.RawRepresentable.RawValue) -> (@out A?)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, double)@<X1>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  v8 = type metadata accessor for Optional();
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v15 - v10;
  a2(a1, v9);
  v12 = *(a3 - 8);
  result = (*(v12 + 48))(v11, 1, a3);
  if (result == 1)
  {
    *a4 = 0u;
    a4[1] = 0u;
  }

  else
  {
    v16 = a3;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
    (*(v12 + 32))(boxed_opaque_existential_1, v11, a3);
    return outlined init with take of Any(&v15, a4);
  }

  return result;
}

{
  v8 = type metadata accessor for Optional();
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v15 - v10;
  a2(a1, v9);
  v12 = *(a3 - 8);
  result = (*(v12 + 48))(v11, 1, a3);
  if (result == 1)
  {
    *a4 = 0u;
    a4[1] = 0u;
  }

  else
  {
    v16 = a3;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
    (*(v12 + 32))(boxed_opaque_existential_1, v11, a3);
    return outlined init with take of Any(&v15, a4);
  }

  return result;
}

uint64_t specialized PropertyListTransform.writeValue(_:to:key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;

  AnyHashable.init<A>(_:)();
  outlined init with copy of Any(a1, v6);
  return specialized Dictionary.subscript.setter(v6, v7);
}

uint64_t specialized RawRepresentableTransform.writeValue(_:to:key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a2;
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22[-1] - v12;
  v14 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v22[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Any(a1, v23);
  v18 = swift_dynamicCast();
  v19 = *(v14 + 56);
  if (v18)
  {
    v19(v13, 0, 1, a5);
    (*(v14 + 32))(v17, v13, a5);
    v22[0] = a3;
    v22[1] = a4;

    AnyHashable.init<A>(_:)();
    v22[3] = swift_getAssociatedTypeWitness();
    __swift_allocate_boxed_opaque_existential_1(v22);
    dispatch thunk of RawRepresentable.rawValue.getter();
    specialized Dictionary.subscript.setter(v22, v23);
    return (*(v14 + 8))(v17, a5);
  }

  else
  {
    v19(v13, 1, 1, a5);
    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t type metadata accessor for PropertyListTransform(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return __swift_instantiateGenericMetadata(a1, a2, a3, a4, &nominal type descriptor for PropertyListTransform);
}

{
  return __swift_instantiateGenericMetadata(a1, a2, a3, a4, &nominal type descriptor for PropertyListTransform);
}

void type metadata accessor for TransformBox<PropertyListTransform<Bool>>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    type metadata accessor for PropertyListTransform<Bool>(255, a3, a4, type metadata accessor for PropertyListTransform);
    v8 = type metadata accessor for TransformBox(a1, v6, &protocol witness table for PropertyListTransform<A>, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for _EnvironmentKeyWritingModifier<String?>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for PropertyListTransform<Bool>(255, a3, a4, MEMORY[0x1E69E6720]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void type metadata accessor for TransformBox<PropertyListTransform<Data?>>(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<String?>(255, a3, a4, a5, type metadata accessor for PropertyListTransform);
    v9 = type metadata accessor for TransformBox(a1, v7, &protocol witness table for PropertyListTransform<A>, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void type metadata accessor for TransformBox<PropertyListTransform<URL>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    v5 = a3(255);
    v7 = type metadata accessor for TransformBox(a1, v5, &protocol witness table for PropertyListTransform<A>, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for SceneStorage(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  if (v6 > 7 || (*(v5 + 80) & 0x100000) != 0 || ((((v7 + ((v6 + 32) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v10 = *a2;
    *a1 = *a2;
    v3 = (v10 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  else
  {
    v11 = a2[1];
    *v3 = *a2;
    v3[1] = v11;
    v12 = ((v3 + 23) & 0xFFFFFFFFFFFFFFF8);
    v13 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v12 = *v13;
    v12[1] = v13[1];
    v14 = *(v5 + 16);

    v14(v12 + 2, v13 + 2, v4);
    v15 = ((v12 + v7 + 23) & 0xFFFFFFFFFFFFFFF8);
    v16 = ((v13 + v7 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v15 = *v16;
    *((v15 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

_OWORD *initializeWithTake for SceneStorage(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
  v5 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v4 = *v5;
  v6 = *(*(a3 + 16) - 8);
  v7 = v6 + 32;
  v8 = *(v6 + 80);
  v9 = (v4 + v8 + 16) & ~v8;
  v10 = (v5 + v8 + 16) & ~v8;
  (*(v6 + 32))(v9, v10);
  v11 = *(v7 + 32) + 7;
  v12 = ((v11 + v9) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + v10) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  *((v12 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *assignWithTake for SceneStorage(void *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  *a1 = *a2;
  a1[1] = v6;

  v7 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];

  v9 = *(*(a3 + 16) - 8);
  v10 = v9 + 40;
  v11 = *(v9 + 80);
  v12 = (v7 + v11 + 16) & ~v11;
  v13 = (v8 + v11 + 16) & ~v11;
  (*(v9 + 40))(v12, v13);
  v14 = *(v10 + 24) + 7;
  v15 = ((v14 + v12) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v14 + v13) & 0xFFFFFFFFFFFFFFF8);
  *v15 = *v16;

  *((v15 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v16 + 15) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for SceneStorage(uint64_t a1, unsigned int a2, uint64_t a3)
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 32) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 16) & ~v6);
    }

    v17 = *(a1 + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *storeEnumTagSinglePayload for SceneStorage(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 32) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 32) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = *(v5 + 56);
        v19 = (((result + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 16) & ~v8;

        return v18(v19);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *result = a2 & 0x7FFFFFFF;
        result[1] = 0;
      }

      else
      {
        result[1] = a2 - 1;
      }

      return result;
    }
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 32) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 32) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<String?> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<String?> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<String?> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<String?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<String?>, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable(MEMORY[0x1E6980A18], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<String?> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

_OWORD *partial apply for thunk for @callee_guaranteed (@in_guaranteed A.RawRepresentable.RawValue) -> (@out A?)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  return thunk for @callee_guaranteed (@in_guaranteed A.RawRepresentable.RawValue) -> (@out A?)(a1, *(v2 + 32), *(v2 + 16), a2);
}

{
  return thunk for @callee_guaranteed (@in_guaranteed A.RawRepresentable.RawValue) -> (@out A?)(a1, *(v2 + 48), *(v2 + 16), a2);
}

uint64_t assignWithCopy for SceneStorage.Box(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t assignWithTake for SceneStorage.Box(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;

  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t UIKitButtonAdaptorConstants.resolvedConfiguration(hasGlassEffect:)()
{
  v2 = v1;
  v22 = type metadata accessor for UIButton.Configuration.Indicator();
  v3 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UIButton.Configuration();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + 16);
  lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle();
  if (v10 == &type metadata for PlainButtonStyle)
  {
    static UIButton.Configuration.plain()();
  }

  else
  {
    lazy protocol witness table accessor for type BorderlessButtonStyle and conformance BorderlessButtonStyle();
    if (v10 == &type metadata for BorderlessButtonStyle)
    {
LABEL_7:
      static UIButton.Configuration.borderless()();
      goto LABEL_13;
    }

    lazy protocol witness table accessor for type BorderedButtonStyle and conformance BorderedButtonStyle();
    if (v10 == &type metadata for BorderedButtonStyle)
    {
      static UIButton.Configuration.bordered()();
    }

    else
    {
      lazy protocol witness table accessor for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle();
      if (v10 == &type metadata for BorderedProminentButtonStyle)
      {
        static UIButton.Configuration.borderedProminent()();
      }

      else
      {
        lazy protocol witness table accessor for type GlassButtonStyle and conformance GlassButtonStyle();
        if (v10 == &type metadata for GlassButtonStyle)
        {
          static UIButton.Configuration.glass()();
        }

        else
        {
          v11 = lazy protocol witness table accessor for type GlassProminentButtonStyle and conformance GlassProminentButtonStyle();
          if (v10 != &type metadata for GlassProminentButtonStyle)
          {
            goto LABEL_7;
          }

          MEMORY[0x18D00E1C0](v11);
        }
      }
    }
  }

LABEL_13:
  v12 = UIKitButtonAdaptorConstants.resolvedOptions.getter();
  if ((v12 & 0x10) != 0)
  {
    static UIButton.Configuration.borderless()();
    v13 = static UIButton.Configuration.== infix(_:_:)();
    v14 = *(v7 + 8);
    v14(v9, v6);
    if (v13 & 1) != 0 || (static UIButton.Configuration.plain()(), v15 = static UIButton.Configuration.== infix(_:_:)(), v14(v9, v6), (v15))
    {
      if ((*(v2 + 8) & 1) == 0)
      {
        v16 = UIButton.Configuration.contentInsets.modify();
        *(v17 + 24) = 0;
        v16(v23, 0);
      }
    }
  }

  UIButton.Configuration.titleLineBreakMode.setter();
  if (*(v2 + 9))
  {
    if (*(v2 + 9) == 1)
    {
      v18 = MEMORY[0x1E69DC588];
    }

    else
    {
      v18 = MEMORY[0x1E69DC580];
    }

    (*(v3 + 104))(v5, *v18, v22);
  }

  else
  {
    if ((v12 & 0x40) != 0)
    {
      v19 = MEMORY[0x1E69DC588];
    }

    else
    {
      v19 = MEMORY[0x1E69DC590];
    }

    (*(v3 + 104))(v5, *v19, v22);
  }

  return MEMORY[0x18D00E260](v5);
}

unint64_t lazy protocol witness table accessor for type GlassButtonStyle and conformance GlassButtonStyle()
{
  result = lazy protocol witness table cache variable for type GlassButtonStyle and conformance GlassButtonStyle;
  if (!lazy protocol witness table cache variable for type GlassButtonStyle and conformance GlassButtonStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GlassButtonStyle, &type metadata for GlassButtonStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type GlassButtonStyle and conformance GlassButtonStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GlassProminentButtonStyle and conformance GlassProminentButtonStyle()
{
  result = lazy protocol witness table cache variable for type GlassProminentButtonStyle and conformance GlassProminentButtonStyle;
  if (!lazy protocol witness table cache variable for type GlassProminentButtonStyle and conformance GlassProminentButtonStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GlassProminentButtonStyle, &type metadata for GlassProminentButtonStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type GlassProminentButtonStyle and conformance GlassProminentButtonStyle);
  }

  return result;
}

uint64_t Menu<>.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  *a2 = *a1;
  a2[1] = v4;
  outlined copy of AppIntentExecutor?(v3, v4);
  outlined copy of AppIntentExecutor?(v5, v6);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v3, v4);
  result = outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v5, v6);
  a2[2] = v5;
  a2[3] = v6;
  return result;
}

void key path getter for EnvironmentValues.menuIndicatorVisibility : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for StyleContextWriter<MenuStyleContext>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuIndicatorVisibilityKey>, &type metadata for MenuIndicatorVisibilityKey, &protocol witness table for MenuIndicatorVisibilityKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<MenuIndicatorVisibilityKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for StyleContextWriter<MenuStyleContext>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuIndicatorVisibilityKey>, &type metadata for MenuIndicatorVisibilityKey, &protocol witness table for MenuIndicatorVisibilityKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<MenuIndicatorVisibilityKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

double key path setter for EnvironmentValues.menuIndicatorVisibility : EnvironmentValues(char *a1, void *a2)
{
  type metadata accessor for StyleContextWriter<MenuStyleContext>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuIndicatorVisibilityKey>, &type metadata for MenuIndicatorVisibilityKey, &protocol witness table for MenuIndicatorVisibilityKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<MenuIndicatorVisibilityKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

uint64_t Menu.init<>(_:content:)@<X0>(uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v17[0] = MEMORY[0x1E6981148];
  v17[1] = a7;
  v17[2] = MEMORY[0x1E6981138];
  v17[3] = a8;
  v13 = type metadata accessor for Menu(0, v17);
  v14 = (a9 + *(v13 + 56));
  *v14 = 0;
  v14[1] = 0;
  v15 = (a9 + *(v13 + 60));
  *v15 = 0;
  v15[1] = 0;
  closure #1 in TextField<>.init<A>(_:value:format:prompt:)(a9);
  closure #1 in Menu.init<>(_:content:)(a5, a6, a7);
}

uint64_t Menu.init<A>(_:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a8@<X8>)
{
  v18[0] = MEMORY[0x1E6981148];
  v18[1] = a4;
  v18[2] = MEMORY[0x1E6981138];
  v18[3] = a6;
  v14 = type metadata accessor for Menu(0, v18);
  v15 = (a8 + *(v14 + 56));
  *v15 = 0;
  v15[1] = 0;
  v16 = (a8 + *(v14 + 60));
  *v16 = 0;
  v16[1] = 0;
  closure #2 in Menu.init<A>(_:content:)(a1, a8);
  closure #1 in Menu.init<A>(_:content:)(a2, a3, a4);
  return (*(*(a5 - 8) + 8))(a1, a5);
}

double Menu.init(content:label:primaryAction:)@<D0>(void (*a1)(uint64_t)@<X0>, uint64_t (*a2)(uint64_t)@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9)
{
  v20[0] = a5;
  v20[1] = a6;
  v20[2] = a8;
  v20[3] = a9;
  v14 = type metadata accessor for Menu(0, v20);
  v15 = (a7 + *(v14 + 56));
  v16 = (a7 + *(v14 + 60));
  *v16 = 0;
  v16[1] = 0;
  *v15 = a3;
  v15[1] = a4;

  v18 = a2(v17);
  a1(v18);

  return result;
}

double Menu.init<>(_:content:primaryAction:)@<D0>(uint64_t a1@<X6>, uint64_t a2@<X7>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  Menu.init(content:label:primaryAction:)(partial apply for closure #1 in Menu.init<>(_:content:primaryAction:), partial apply for closure #1 in TextField<>.init<A>(_:value:format:prompt:), thunk for @escaping @callee_guaranteed () -> ()partial apply, v8, MEMORY[0x1E6981148], a4, a3, MEMORY[0x1E6981138], a5);

  return result;
}

uint64_t Menu.init<A>(_:content:primaryAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;

  Menu.init(content:label:primaryAction:)(partial apply for closure #1 in Menu.init<A>(_:content:primaryAction:), partial apply for closure #2 in Menu.init<A>(_:content:primaryAction:), thunk for @escaping @callee_guaranteed () -> ()partial apply, v14, MEMORY[0x1E6981148], a4, a7, MEMORY[0x1E6981138], a6);

  return (*(*(a5 - 8) + 8))(a1, a5);
}

uint64_t closure #2 in Menu.init<A>(_:content:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  result = Text.init<A>(_:)();
  *a4 = result;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10 & 1;
  *(a4 + 24) = v11;
  return result;
}

uint64_t Menu<>.init(_:image:content:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v13 = a3;
  type metadata accessor for Label<Text, Image>();
  v23[0] = v16;
  v23[1] = a8;
  v23[2] = lazy protocol witness table accessor for type Label<Text, Image> and conformance Label<A, B>(&lazy protocol witness table cache variable for type Label<Text, Image> and conformance Label<A, B>, type metadata accessor for Label<Text, Image>, protocol conformance descriptor for Label<A, B>);
  v23[3] = a10;
  v17 = type metadata accessor for Menu(0, v23);
  v18 = (a9 + *(v17 + 56));
  *v18 = 0;
  v18[1] = 0;
  v19 = (a9 + *(v17 + 60));
  *v19 = 0;
  v19[1] = 0;
  closure #2 in Menu<>.init(_:image:content:)(a1, v13, a5, a9);
  closure #1 in Menu.init<>(_:content:)(a6, a7, a8);

  v20 = type metadata accessor for ImageResource();
  return (*(*(v20 - 8) + 8))(a5, v20);
}

uint64_t Menu<>.init<A>(_:image:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a9@<X8>)
{
  type metadata accessor for Label<Text, Image>();
  v23[0] = v17;
  v23[1] = a5;
  v23[2] = lazy protocol witness table accessor for type Label<Text, Image> and conformance Label<A, B>(&lazy protocol witness table cache variable for type Label<Text, Image> and conformance Label<A, B>, type metadata accessor for Label<Text, Image>, protocol conformance descriptor for Label<A, B>);
  v23[3] = a7;
  v18 = type metadata accessor for Menu(0, v23);
  v19 = (a9 + *(v18 + 56));
  *v19 = 0;
  v19[1] = 0;
  v20 = (a9 + *(v18 + 60));
  *v20 = 0;
  v20[1] = 0;
  closure #2 in Menu<>.init<A>(_:image:content:)(a1, a2, a6, a9);
  closure #1 in Menu.init<A>(_:content:)(a3, a4, a5);
  v21 = type metadata accessor for ImageResource();
  (*(*(v21 - 8) + 8))(a2, v21);
  return (*(*(a6 - 8) + 8))(a1, a6);
}

uint64_t closure #1 in Menu.init<A>(_:content:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  v11(v8);
  static ViewBuilder.buildExpression<A>(_:)();
  v12 = *(v4 + 8);
  v12(v6, a3);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v12)(v10, a3);
}

double closure #2 in Menu<>.init<A>(_:image:content:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a5@<X8>)
{
  v9 = type metadata accessor for ImageResource();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, a1, a3, v14);
  (*(v10 + 16))(v12, a2, v9);
  Label<>.init<A>(_:image:)(v16, v12, a3, &v21);
  v18 = v22;
  result = *&v21;
  v20 = v23;
  *a5 = v21;
  *(a5 + 16) = v18;
  *(a5 + 24) = v20;
  return result;
}

uint64_t Menu<>.init(_:image:content:primaryAction:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X7>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a4;
  type metadata accessor for Label<Text, Image>();
  v11 = v10;
  v12 = lazy protocol witness table accessor for type Label<Text, Image> and conformance Label<A, B>(&lazy protocol witness table cache variable for type Label<Text, Image> and conformance Label<A, B>, type metadata accessor for Label<Text, Image>, protocol conformance descriptor for Label<A, B>);

  Menu.init(content:label:primaryAction:)(partial apply for closure #1 in Menu<>.init(_:image:content:primaryAction:), partial apply for closure #2 in Menu<>.init(_:image:content:primaryAction:), partial apply for closure #1 in UIKitSearchScopeCoordinating<>.onChange(selectedScope:), v9, v11, a5, a3, v12, a6);

  v13 = type metadata accessor for ImageResource();
  return (*(*(v13 - 8) + 8))(a1, v13);
}

uint64_t closure #1 in Menu.init<>(_:content:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  v11(v8);
  static ViewBuilder.buildExpression<A>(_:)();
  v12 = *(v4 + 8);
  v12(v6, a3);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v12)(v10, a3);
}

uint64_t closure #2 in Menu<>.init(_:image:content:)@<X0>(uint64_t a1@<X0>, unsigned int a3@<W2>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v27 = a3;
  v26[1] = a1;
  v8 = type metadata accessor for ImageResource();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v26 - v14;
  v16 = *(v9 + 16);
  v16(v26 - v14, a5, v8, v13);

  v17 = Text.init(_:tableName:bundle:comment:)();
  v19 = v18;
  v21 = v20;
  v28 = v22 & 1;
  (v16)(v11, v15, v8);
  v23 = Image.init(_:)();
  result = (*(v9 + 8))(v15, v8);
  v25 = v28;
  *a6 = v17;
  *(a6 + 8) = v19;
  *(a6 + 16) = v25;
  *(a6 + 24) = v21;
  *(a6 + 32) = v23;
  return result;
}

uint64_t Menu.init(onPresentationChanged:content:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t (*a4)(void)@<X4>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9)
{
  v19[0] = a5;
  v19[1] = a6;
  v19[2] = a8;
  v19[3] = a9;
  v14 = type metadata accessor for Menu(0, v19);
  v15 = (a7 + *(v14 + 56));
  *v15 = 0;
  v15[1] = 0;
  v16 = (a7 + *(v14 + 60));
  v17 = a4();
  result = a3(v17);
  *v16 = a1;
  v16[1] = a2;
  return result;
}

uint64_t Menu.init(onPresentationChanged:content:label:primaryAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t (*a4)(void)@<X4>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, __int128 a8, uint64_t a9, uint64_t a10)
{
  v22 = a8;
  v23 = a9;
  v24 = a10;
  v15 = type metadata accessor for Menu(0, &v22);
  v16 = (a7 + *(v15 + 56));
  v17 = (a7 + *(v15 + 60));
  v18 = a4();
  result = a3(v18);
  *v16 = a5;
  v16[1] = a6;
  *v17 = a1;
  v17[1] = a2;
  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for Menu(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v5 + v8;
  v10 = *(v7 + 64) + 7;
  v11 = ((((v10 + ((v5 + v8) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v12 = v8 | *(v4 + 80) & 0xF8;
  if (v12 > 7 || ((*(v4 + 80) | *(v7 + 80)) & 0x100000) != 0 || v11 > 0x18)
  {
    v15 = *a2;
    *v3 = *a2;
    v3 = (v15 + (((v12 | 7) + 16) & ~(v12 | 7)));
  }

  else
  {
    v16 = ~v8;
    (*(v4 + 16))(a1);
    v18 = (a2 + v9) & v16;
    (*(v7 + 16))((v3 + v9) & v16, v18, v6);
    v19 = (v10 + ((v3 + v9) & v16)) & 0xFFFFFFFFFFFFFFF8;
    v20 = (v10 + v18) & 0xFFFFFFFFFFFFFFF8;
    if (*v20 < 0xFFFFFFFFuLL)
    {
      *v19 = *v20;
    }

    else
    {
      v21 = *(v20 + 8);
      *v19 = *v20;
      *(v19 + 8) = v21;
    }

    v22 = (v19 + 23) & 0xFFFFFFFFFFFFFFF8;
    v23 = (v20 + 23) & 0xFFFFFFFFFFFFFFF8;
    if (*v23 < 0xFFFFFFFFuLL)
    {
      *v22 = *v23;
      return v3;
    }

    v24 = *(v23 + 8);
    *v22 = *v23;
    *(v22 + 8) = v24;
  }

  return v3;
}

uint64_t initializeWithTake for Menu(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(v6 + 32);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 32;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 32))(v12, v13);
  v14 = *(v9 + 32) + 7;
  v15 = (v14 + v12) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + v13) & 0xFFFFFFFFFFFFFFF8;
  if (*v16 < 0xFFFFFFFFuLL)
  {
    *v15 = *v16;
  }

  else
  {
    v17 = *(v16 + 8);
    *v15 = *v16;
    *(v15 + 8) = v17;
  }

  v18 = (v15 + 23) & 0xFFFFFFFFFFFFFFF8;
  v19 = ((v16 + 23) & 0xFFFFFFFFFFFFFFF8);
  v20 = *v19;
  if (*v19 < 0xFFFFFFFF)
  {
    *v18 = *v19;
  }

  else
  {
    v21 = v19[1];
    *v18 = v20;
    *(v18 + 8) = v21;
  }

  return a1;
}

uint64_t assignWithTake for Menu(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(v6 + 24);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 40;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 40))(v12, v13);
  v14 = *(v9 + 24) + 7;
  v15 = ((v14 + v12) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v14 + v13) & 0xFFFFFFFFFFFFFFF8);
  v17 = *v16;
  if (*v15 < 0xFFFFFFFFuLL)
  {
    if (v17 >= 0xFFFFFFFF)
    {
      v19 = v16[1];
      *v15 = v17;
      v15[1] = v19;
      goto LABEL_8;
    }
  }

  else
  {
    if (v17 >= 0xFFFFFFFF)
    {
      v18 = v16[1];
      *v15 = v17;
      v15[1] = v18;

      goto LABEL_8;
    }
  }

  *v15 = *v16;
LABEL_8:
  v20 = ((v15 + 23) & 0xFFFFFFFFFFFFFFF8);
  v21 = ((v16 + 23) & 0xFFFFFFFFFFFFFFF8);
  v22 = *v21;
  if (*v20 < 0xFFFFFFFFuLL)
  {
    if (v22 >= 0xFFFFFFFF)
    {
      v24 = v21[1];
      *v20 = v22;
      v20[1] = v24;
      return a1;
    }

LABEL_14:
    *v20 = *v21;
    return a1;
  }

  if (v22 < 0xFFFFFFFF)
  {

    goto LABEL_14;
  }

  v23 = v21[1];
  *v20 = v22;
  v20[1] = v23;

  return a1;
}

double TabContent.dropDestination<A>(for:action:)@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t x8_0@<X8>)
{
  v15 = swift_allocObject();
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  v15[5] = a7;
  v15[6] = a2;
  v15[7] = a3;

  TabContent._dropDestination<A>(for:isTargeted:action:)(0, 0, 0, partial apply for closure #1 in TabContent.dropDestination<A>(for:action:), v15, a4, a5, x8_0, a6, a7);

  return result;
}

uint64_t TabContent._dropDestination<A>(for:isTargeted:action:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t x8_0@<X8>, uint64_t a9, uint64_t a10)
{
  v18 = swift_allocObject();
  v18[2] = a7;
  v18[3] = a8;
  v18[4] = a9;
  v18[5] = a10;
  v18[6] = a5;
  v18[7] = a6;

  v21[0] = static Transferable.readableContentTypes.getter();
  v21[1] = a2;
  v21[2] = a3;
  v22 = a4;
  v23 = partial apply for closure #1 in TabContent._dropDestination<A>(for:isTargeted:action:);
  v24 = v18;
  TabContent.modifier<A>(_:)(v21, a7, &type metadata for TabDropDestinationModifier, x8_0);
}

double TabContent.dropDestination<A>(for:isTargeted:action:)@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t x8_0@<X8>, uint64_t a9, uint64_t a10)
{
  v18 = swift_allocObject();
  v18[2] = a7;
  v18[3] = a8;
  v18[4] = a9;
  v18[5] = a10;
  v18[6] = a5;
  v18[7] = a6;

  TabContent._dropDestination<A>(for:isTargeted:action:)(a2, a3, a4 & 1, partial apply for closure #1 in TabContent.dropDestination<A>(for:isTargeted:action:), v18, a7, a8, x8_0, a9, a10);

  return result;
}

double TabContent.draggable<A>(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = a6;
  v14[6] = a1;
  v14[7] = a2;
  v16[0] = partial apply for closure #1 in TabContent.draggable<A>(_:);
  v16[1] = v14;
  TabContent.modifier<A>(_:)(v16, a3, &unk_1EFFB8EF0, a7);

  return result;
}

uint64_t closure #1 in TabContent.draggable<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSItemProvider, 0x1E696ACA0);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v12[7] = a2;

  return NSItemProvider.init<A>(transferable:)();
}

unint64_t lazy protocol witness table accessor for type SpringLoadingModifier and conformance SpringLoadingModifier()
{
  result = lazy protocol witness table cache variable for type SpringLoadingModifier and conformance SpringLoadingModifier;
  if (!lazy protocol witness table cache variable for type SpringLoadingModifier and conformance SpringLoadingModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SpringLoadingModifier, &unk_1EFFB8F70, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SpringLoadingModifier and conformance SpringLoadingModifier);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI10TabContentRz16CoreTransferable0F0Rd__r__lAA08ModifiedcD0VyxAA0C23DropDestinationModifierVGAaBHPxAaBHD1__AhA04ViewJ0HPyHCHCTm(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v5 = a1[2];
  v6 = type metadata accessor for ModifiedTabContent(255, *a1, a2, a4);
  v8[0] = v5;
  v8[1] = a3();
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedTabContent<A, B>, v6, v8);
}

unint64_t lazy protocol witness table accessor for type DraggableTabModifier and conformance DraggableTabModifier()
{
  result = lazy protocol witness table cache variable for type DraggableTabModifier and conformance DraggableTabModifier;
  if (!lazy protocol witness table cache variable for type DraggableTabModifier and conformance DraggableTabModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DraggableTabModifier, &unk_1EFFB8EF0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DraggableTabModifier and conformance DraggableTabModifier);
  }

  return result;
}

void closure #1 in TabContent._dropDestination<A>(for:isTargeted:action:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v58 = a8;
  v56 = a6;
  v48 = a2;
  v49 = a5;
  v46 = a1;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = dispatch_group_create();
  v60 = static Array._allocateUninitialized(_:)();
  type metadata accessor for Array();
  AtomicBox.init(wrappedValue:)();
  v21 = a3;
  v22 = aBlock[0];
  v57 = v21;
  v54 = v13;
  v55 = v12;
  v52 = v15;
  v53 = v16;
  v50 = v19;
  v51 = v17;
  v47 = a4;
  if (v21 >> 62)
  {
    v44 = __CocoaSet.count.getter();
    v21 = v57;
    v23 = v44;
  }

  else
  {
    v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = v56;
  if (!v23)
  {
    goto LABEL_11;
  }

  if (v23 >= 1)
  {
    if ((v21 & 0xC000000000000001) != 0)
    {
      v25 = 0;
      v24 = v56;
      do
      {
        MEMORY[0x18D00E9C0](v25++, v57);
        dispatch_group_enter(v20);
        v26 = swift_allocObject();
        v26[2] = v24;
        v26[3] = a7;
        v26[4] = v58;
        v26[5] = a9;
        v26[6] = v20;
        v26[7] = v22;
        v27 = v20;

        v28 = NSItemProvider.loadTransferable<A>(type:completionHandler:)();
        swift_unknownObjectRelease();
      }

      while (v23 != v25);
    }

    else
    {
      v29 = (v21 + 32);
      v24 = v56;
      do
      {
        v30 = *v29++;
        v31 = v30;
        dispatch_group_enter(v20);
        v32 = swift_allocObject();
        v32[2] = v24;
        v32[3] = a7;
        v32[4] = v58;
        v32[5] = a9;
        v32[6] = v20;
        v32[7] = v22;
        v33 = v20;

        v34 = NSItemProvider.loadTransferable<A>(type:completionHandler:)();

        --v23;
      }

      while (v23);
    }

LABEL_11:
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
    v35 = static OS_dispatch_queue.main.getter();
    v36 = swift_allocObject();
    v36[2] = v24;
    v36[3] = a7;
    v36[4] = v58;
    v36[5] = a9;
    v37 = v46;
    v39 = v48;
    v38 = v49;
    v36[6] = v47;
    v36[7] = v38;
    v36[8] = v37;
    v36[9] = v39;
    v36[10] = v22;
    aBlock[4] = partial apply for closure #2 in closure #1 in TabContent._dropDestination<A>(for:isTargeted:action:);
    aBlock[5] = v36;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_25;
    v40 = _Block_copy(aBlock);

    v41 = v50;
    static DispatchQoS.unspecified.getter();
    v60 = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    type metadata accessor for [DispatchWorkItemFlags](0);
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], type metadata accessor for [DispatchWorkItemFlags], MEMORY[0x1E69E6328]);
    v42 = v52;
    v43 = v55;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v40);

    (*(v54 + 8))(v42, v43);
    (*(v51 + 8))(v41, v53);

    return;
  }

  __break(1u);
}

void closure #1 in closure #1 in TabContent._dropDestination<A>(for:isTargeted:action:)(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v33[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33[-1] - v13;
  type metadata accessor for Error();
  v15 = type metadata accessor for Result();
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = (&v33[-1] - v17);
  (*(v19 + 16))(&v33[-1] - v17, a1, v15, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v18;
    v21 = static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v22, v21))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v33[0] = v24;
      *v23 = 136315394;
      v25 = _typeName(_:qualified:)();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v33);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      swift_getErrorValue();
      v28 = Error.localizedDescription.getter();
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, v33);

      *(v23 + 14) = v30;
      _os_log_impl(&dword_18BD4A000, v22, v21, "Error loading %s: %s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x18D0110E0](v24, -1, -1);
      MEMORY[0x18D0110E0](v23, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    (*(v9 + 32))(v14, v18, a5);
    (*(v9 + 16))(v11, v14, a5);
    v33[4] = a3;
    type metadata accessor for Array();
    type metadata accessor for AtomicBox();
    v31 = AtomicBox.wrappedValue.modify();
    Array.append(_:)();
    v31(v33, 0);
    (*(v9 + 8))(v14, a5);
  }

  dispatch_group_leave(a2);
}

uint64_t closure #2 in closure #1 in TabContent._dropDestination<A>(for:isTargeted:action:)(void (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for Array();
  type metadata accessor for AtomicBox();
  AtomicBox.wrappedValue.getter();
  a1(a3, a4);
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance DraggableTabModifier@<X0>(uint64_t (**a1)()@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  if (*v1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = _sSo14NSItemProviderCSgIego_ACIegr_TRTA_0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a1 = v6;
  a1[1] = v5;

  return outlined copy of AppIntentExecutor?(v3, v4);
}

double protocol witness for ViewModifier.body(content:) in conformance TabDropDestinationModifier@<D0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v7;
  a1[4] = v5;
  a1[5] = v6;

  outlined copy of Binding<Int>?(v3, v4);

  return result;
}

uint64_t SpringLoadingModifier.body(content:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = swift_getKeyPath();
  *a1 = v3;
  *(a1 + 8) = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t assignWithCopy for TabDropDestinationModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (v4)
    {
      *(a1 + 8) = *(a2 + 8);

      *(a1 + 16) = *(a2 + 16);

      *(a1 + 24) = *(a2 + 24);
    }

    else
    {
      outlined destroy of Binding<Bool>(a1 + 8);
      v5 = *(a2 + 24);
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = v5;
    }
  }

  else if (v4)
  {
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
  }

  else
  {
    v6 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v6;
  }

  v7 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v7;

  return a1;
}

uint64_t assignWithTake for TabDropDestinationModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  if (!*(a1 + 16))
  {
    goto LABEL_5;
  }

  v4 = *(a2 + 16);
  if (!v4)
  {
    outlined destroy of Binding<Bool>(a1 + 8);
LABEL_5:
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    goto LABEL_6;
  }

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = v4;

  *(a1 + 24) = *(a2 + 24);
LABEL_6:
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<TabDropDestinationModifier>, _TraitWritingModifier<TabIdentifiedDropOntoTraitKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<TabDropDestinationModifier>, _TraitWritingModifier<TabIdentifiedDropOntoTraitKey>>)
  {
    type metadata accessor for _ViewModifier_Content<TabDropDestinationModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<TabDropDestinationModifier>, lazy protocol witness table accessor for type TabDropDestinationModifier and conformance TabDropDestinationModifier, &type metadata for TabDropDestinationModifier, MEMORY[0x1E697FDE8]);
    type metadata accessor for _TraitWritingModifier<OnDeleteDefaultTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<TabIdentifiedDropOntoTraitKey>, &type metadata for TabIdentifiedDropOntoTraitKey, &protocol witness table for TabIdentifiedDropOntoTraitKey);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<TabDropDestinationModifier>, _TraitWritingModifier<TabIdentifiedDropOntoTraitKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<TabDropDestinationModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<TabDropDestinationModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<TabDropDestinationModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for _ViewModifier_Content<TabDropDestinationModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<TabDropDestinationModifier>, lazy protocol witness table accessor for type TabDropDestinationModifier and conformance TabDropDestinationModifier, &type metadata for TabDropDestinationModifier, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable(MEMORY[0x1E697FDF8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<TabDropDestinationModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SpringLoadingModifier>, _TraitWritingModifier<SpringLoadingTraitKey>>, _EnvironmentKeyWritingModifier<SpringLoadingBehavior>>, ViewInputFlagModifier<SpringLoadingBehavior.HasCustomSpringLoadedBehavior>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SpringLoadingModifier>, _TraitWritingModifier<SpringLoadingTraitKey>>, _EnvironmentKeyWritingModifier<SpringLoadingBehavior>>, ViewInputFlagModifier<SpringLoadingBehavior.HasCustomSpringLoadedBehavior>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<SpringLoadingModifier>, _TraitWritingModifier<SpringLoadingTraitKey>>, _EnvironmentKeyWritingModifier<SpringLoadingBehavior>>(255);
    type metadata accessor for _ViewModifier_Content<TabDropDestinationModifier>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<SpringLoadingBehavior.HasCustomSpringLoadedBehavior>, lazy protocol witness table accessor for type SpringLoadingBehavior.HasCustomSpringLoadedBehavior and conformance SpringLoadingBehavior.HasCustomSpringLoadedBehavior, &type metadata for SpringLoadingBehavior.HasCustomSpringLoadedBehavior, MEMORY[0x1E697FD28]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SpringLoadingModifier>, _TraitWritingModifier<SpringLoadingTraitKey>>, _EnvironmentKeyWritingModifier<SpringLoadingBehavior>>, ViewInputFlagModifier<SpringLoadingBehavior.HasCustomSpringLoadedBehavior>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<SpringLoadingModifier>, _TraitWritingModifier<SpringLoadingTraitKey>>, _EnvironmentKeyWritingModifier<SpringLoadingBehavior>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<SpringLoadingModifier>, _TraitWritingModifier<SpringLoadingTraitKey>>, _EnvironmentKeyWritingModifier<SpringLoadingBehavior>>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<SpringLoadingModifier>, _TraitWritingModifier<SpringLoadingTraitKey>>(255);
    _s7SwiftUI7BindingVySbGMaTm_5(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<SpringLoadingBehavior>, &type metadata for SpringLoadingBehavior, MEMORY[0x1E6980A08]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<SpringLoadingModifier>, _TraitWritingModifier<SpringLoadingTraitKey>>, _EnvironmentKeyWritingModifier<SpringLoadingBehavior>>);
    }
  }
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<SpringLoadingModifier>, _TraitWritingModifier<SpringLoadingTraitKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<SpringLoadingModifier>, _TraitWritingModifier<SpringLoadingTraitKey>>)
  {
    type metadata accessor for _ViewModifier_Content<TabDropDestinationModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<SpringLoadingModifier>, lazy protocol witness table accessor for type SpringLoadingModifier and conformance SpringLoadingModifier, &unk_1EFFB8F70, MEMORY[0x1E697FDE8]);
    type metadata accessor for _TraitWritingModifier<OnDeleteDefaultTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<SpringLoadingTraitKey>, &type metadata for SpringLoadingTraitKey, &protocol witness table for SpringLoadingTraitKey);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<SpringLoadingModifier>, _TraitWritingModifier<SpringLoadingTraitKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<SpringLoadingModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<SpringLoadingModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<SpringLoadingModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for _ViewModifier_Content<TabDropDestinationModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<SpringLoadingModifier>, lazy protocol witness table accessor for type SpringLoadingModifier and conformance SpringLoadingModifier, &unk_1EFFB8F70, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable(MEMORY[0x1E697FDF8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<SpringLoadingModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<SpringLoadingTraitKey> and conformance _TraitWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _TraitWritingModifier<SpringLoadingTraitKey> and conformance _TraitWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<SpringLoadingTraitKey> and conformance _TraitWritingModifier<A>)
  {
    type metadata accessor for _TraitWritingModifier<OnDeleteDefaultTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<SpringLoadingTraitKey>, &type metadata for SpringLoadingTraitKey, &protocol witness table for SpringLoadingTraitKey);
    result = swift_getWitnessTable(MEMORY[0x1E697FDC0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingModifier<SpringLoadingTraitKey> and conformance _TraitWritingModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<SpringLoadingBehavior.HasCustomSpringLoadedBehavior> and conformance ViewInputFlagModifier<A>()
{
  result = lazy protocol witness table cache variable for type ViewInputFlagModifier<SpringLoadingBehavior.HasCustomSpringLoadedBehavior> and conformance ViewInputFlagModifier<A>;
  if (!lazy protocol witness table cache variable for type ViewInputFlagModifier<SpringLoadingBehavior.HasCustomSpringLoadedBehavior> and conformance ViewInputFlagModifier<A>)
  {
    type metadata accessor for _ViewModifier_Content<TabDropDestinationModifier>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<SpringLoadingBehavior.HasCustomSpringLoadedBehavior>, lazy protocol witness table accessor for type SpringLoadingBehavior.HasCustomSpringLoadedBehavior and conformance SpringLoadingBehavior.HasCustomSpringLoadedBehavior, &type metadata for SpringLoadingBehavior.HasCustomSpringLoadedBehavior, MEMORY[0x1E697FD28]);
    result = swift_getWitnessTable(MEMORY[0x1E697FD30], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ViewInputFlagModifier<SpringLoadingBehavior.HasCustomSpringLoadedBehavior> and conformance ViewInputFlagModifier<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<TabDropDestinationModifier>, _TraitWritingModifier<TabIdentifiedDropOntoTraitKey>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v8 = a2(255);
    v9[0] = a3();
    v9[1] = a4();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<DraggableTabModifier>, _TraitWritingModifier<ItemProviderTraitKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<DraggableTabModifier>, _TraitWritingModifier<ItemProviderTraitKey>>)
  {
    type metadata accessor for _ViewModifier_Content<TabDropDestinationModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<DraggableTabModifier>, lazy protocol witness table accessor for type DraggableTabModifier and conformance DraggableTabModifier, &unk_1EFFB8EF0, MEMORY[0x1E697FDE8]);
    type metadata accessor for _TraitWritingModifier<OnDeleteDefaultTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<ItemProviderTraitKey>, &type metadata for ItemProviderTraitKey, &protocol witness table for ItemProviderTraitKey);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<DraggableTabModifier>, _TraitWritingModifier<ItemProviderTraitKey>>);
    }
  }
}

void type metadata accessor for _ViewModifier_Content<TabDropDestinationModifier>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<DraggableTabModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<DraggableTabModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<DraggableTabModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for _ViewModifier_Content<TabDropDestinationModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<DraggableTabModifier>, lazy protocol witness table accessor for type DraggableTabModifier and conformance DraggableTabModifier, &unk_1EFFB8EF0, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable(MEMORY[0x1E697FDF8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<DraggableTabModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<ItemProviderTraitKey> and conformance _TraitWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _TraitWritingModifier<ItemProviderTraitKey> and conformance _TraitWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<ItemProviderTraitKey> and conformance _TraitWritingModifier<A>)
  {
    type metadata accessor for _TraitWritingModifier<OnDeleteDefaultTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<ItemProviderTraitKey>, &type metadata for ItemProviderTraitKey, &protocol witness table for ItemProviderTraitKey);
    result = swift_getWitnessTable(MEMORY[0x1E697FDC0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingModifier<ItemProviderTraitKey> and conformance _TraitWritingModifier<A>);
  }

  return result;
}

uint64_t static InlinePickerStyle._makeView<A>(value:inputs:)(int *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = a2[3];
  v28 = a2[2];
  v29 = v7;
  v30 = a2[4];
  v31 = *(a2 + 20);
  v8 = a2[1];
  v26 = *a2;
  v27 = v8;
  type metadata accessor for ResolvedPicker(255, a3, a4, a4);
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<SectionPickerStyle>, EmptyModifier>(255);
  v9 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PickerStyleWriter<SegmentedPickerStyle>, EmptyModifier>(255);
  v10 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<ShouldUseListSectionInlinePickerStyle, PickerStyleWriter<SectionPickerStyle>, EmptyModifier>(255);
  v11 = type metadata accessor for ModifiedContent();
  type metadata accessor for PickerStyleWriter<SectionPickerStyle>(255, &lazy cache variable for type metadata for PickerStyleWriter<WheelPickerStyle>, &type metadata for WheelPickerStyle, &protocol witness table for WheelPickerStyle, type metadata accessor for PickerStyleWriter);
  v12 = type metadata accessor for ModifiedContent();
  v25 = v6;
  *v23 = &type metadata for InlinePickerStyle;
  *&v23[8] = a3;
  *&v23[16] = &protocol witness table for InlinePickerStyle;
  *&v23[24] = a4;
  type metadata accessor for _PickerValue(255, v23);
  type metadata accessor for _GraphValue();
  v13 = _GraphValue.value.getter();
  *v23 = v26;
  *&v23[16] = v27;
  v24 = v28;
  _GraphInputs.interfaceIdiom.getter();
  *v23 = v13;
  *&v23[8] = v22;
  v15 = type metadata accessor for InlinePickerStyle.Body(0, a3, a4, v14);
  swift_getWitnessTable(protocol conformance descriptor for InlinePickerStyle.Body<A>, v15);
  _GraphValue.init<A>(_:)();
  v21[0] = &protocol witness table for ResolvedPicker<A>;
  v21[1] = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<SectionPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v16 = MEMORY[0x1E697E858];
  v20[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v9, v21);
  v20[1] = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PickerStyleWriter<SegmentedPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v19[0] = swift_getWitnessTable(v16, v10, v20);
  v19[1] = lazy protocol witness table accessor for type StaticIf<ShouldUseListSectionInlinePickerStyle, PickerStyleWriter<SectionPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v18[0] = swift_getWitnessTable(v16, v11, v19);
  v18[1] = &protocol witness table for PickerStyleWriter<A>;
  swift_getWitnessTable(v16, v12, v18);
  return static View.makeDebuggableView(view:inputs:)();
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance InlinePickerStyle.Body<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  type metadata accessor for ResolvedPicker(255, *(a1 + 16), *(a1 + 24), a2);
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<SectionPickerStyle>, EmptyModifier>(255);
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PickerStyleWriter<SegmentedPickerStyle>, EmptyModifier>(255);
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<ShouldUseListSectionInlinePickerStyle, PickerStyleWriter<SectionPickerStyle>, EmptyModifier>(255);
  type metadata accessor for ModifiedContent();
  type metadata accessor for PickerStyleWriter<SectionPickerStyle>(255, &lazy cache variable for type metadata for PickerStyleWriter<WheelPickerStyle>, &type metadata for WheelPickerStyle, &protocol witness table for WheelPickerStyle, type metadata accessor for PickerStyleWriter);
  v4 = type metadata accessor for ModifiedContent();
  v5 = *(*(v4 - 8) + 56);

  return v5(a3, 1, 1, v4);
}

uint64_t lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2_3> and conformance _SemanticFeature<A>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PickerStyleWriter<SectionPickerStyle>(255, a2, a3, a4, MEMORY[0x1E697EC20]);
    result = swift_getWitnessTable(MEMORY[0x1E697EC30], v6);
    atomic_store(result, a1);
  }

  return result;
}

void TableRowContent.onHover(perform:)()
{
  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

{
  TableRowContent.onHover(perform:)();
}

unint64_t lazy protocol witness table accessor for type _HoverTableRowModifier and conformance _HoverTableRowModifier()
{
  result = lazy protocol witness table cache variable for type _HoverTableRowModifier and conformance _HoverTableRowModifier;
  if (!lazy protocol witness table cache variable for type _HoverTableRowModifier and conformance _HoverTableRowModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _HoverTableRowModifier, &type metadata for _HoverTableRowModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _HoverTableRowModifier and conformance _HoverTableRowModifier);
  }

  return result;
}

double EnvironmentValues.dialogSuppression.getter@<D0>(uint64_t a1@<X8>)
{
  if (*(v1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<DialogSuppressionConfiguration.Key>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<DialogSuppressionConfiguration?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogSuppressionConfiguration.Key> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<DialogSuppressionConfiguration.Key>, MEMORY[0x1E697FE40]);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<DialogSuppressionConfiguration.Key>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<DialogSuppressionConfiguration?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogSuppressionConfiguration.Key> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<DialogSuppressionConfiguration.Key>, MEMORY[0x1E697FE40]);
    PropertyList.subscript.getter();
  }

  result = *&v4;
  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  return result;
}

uint64_t View.dialogSuppressionToggle(_:isSuppressed:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9)
{

  v13 = Text.init(_:tableName:bundle:comment:)();
  v15 = v14;
  v17 = v16;
  View.dialogSuppressionToggle(_:isSuppressed:)(v13, v14, v16 & 1, v18, a5, a6, a7, a8, a9);
  outlined consume of Text.Storage(v13, v15, v17 & 1);
}

uint64_t View.dialogSuppressionToggle(_:isSuppressed:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  MEMORY[0x18D009CE0](v17);
  Text.assertUnstyled(_:options:)();
  swift_getKeyPath();
  v17[0] = a1;
  v17[1] = a2;
  v17[2] = a3 & 1;
  v17[3] = a4;
  v17[4] = a5;
  v17[5] = a6;
  v18 = a7;
  outlined copy of Text.Storage(a1, a2, a3 & 1);

  View.environment<A>(_:_:)();

  outlined consume of Text.Storage(a1, a2, a3 & 1);
}

uint64_t View.dialogSuppression<A>(_:isSuppressed:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = MEMORY[0x1EEE9AC00](a1);
  (*(v15 + 16))(&v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
  v16 = Text.init<A>(_:)();
  v18 = v17;
  v20 = v19;
  View.dialogSuppressionToggle(_:isSuppressed:)(v16, v17, v19 & 1, v21, a2, a3, a4, a5, a7);
  outlined consume of Text.Storage(v16, v18, v20 & 1);
}

double key path getter for EnvironmentValues.dialogSuppression : EnvironmentValues@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<DialogSuppressionConfiguration.Key>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<DialogSuppressionConfiguration?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogSuppressionConfiguration.Key> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<DialogSuppressionConfiguration.Key>, MEMORY[0x1E697FE40]);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<DialogSuppressionConfiguration.Key>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<DialogSuppressionConfiguration?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogSuppressionConfiguration.Key> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<DialogSuppressionConfiguration.Key>, MEMORY[0x1E697FE40]);
    PropertyList.subscript.getter();
  }

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  return result;
}

double key path setter for EnvironmentValues.dialogSuppression : EnvironmentValues(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  type metadata accessor for EnvironmentPropertyKey<DialogSuppressionConfiguration.Key>();

  outlined copy of DialogSuppressionConfiguration?(v3, v4, v5, v6, v7, v8);
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<DialogSuppressionConfiguration?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogSuppressionConfiguration.Key> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<DialogSuppressionConfiguration.Key>, MEMORY[0x1E697FE40]);
  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

double View.dialogSuppressionToggle(isSuppressed:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  swift_getKeyPath();

  View.environment<A>(_:_:)();

  return result;
}

void Scene.dialogSuppressionToggle(_:isSuppressed:)()
{
  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

{
  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

void type metadata accessor for _EnvironmentKeyWritingModifier<DialogSuppressionConfiguration?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<DialogSuppressionConfiguration?>)
  {
    type metadata accessor for DialogSuppressionConfiguration?();
    v1 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<DialogSuppressionConfiguration?>);
    }
  }
}

void type metadata accessor for DialogSuppressionConfiguration?()
{
  if (!lazy cache variable for type metadata for DialogSuppressionConfiguration?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DialogSuppressionConfiguration?);
    }
  }
}

double destroy for DialogSuppressionConfiguration(uint64_t a1)
{
  if (*(a1 + 24))
  {
    outlined consume of Text.Storage(*a1, *(a1 + 8), *(a1 + 16));
  }

  return result;
}

uint64_t initializeWithCopy for DialogSuppressionConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *a2;
    v6 = *(a2 + 8);
    v7 = *(a2 + 16);
    outlined copy of Text.Storage(*a2, v6, v7);
    *a1 = v5;
    *(a1 + 8) = v6;
    *(a1 + 16) = v7;
    *(a1 + 24) = v4;
  }

  else
  {
    v8 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v8;
  }

  v9 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v9;
  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t assignWithCopy for DialogSuppressionConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (v4)
    {
      v5 = *a2;
      v6 = *(a2 + 8);
      v7 = *(a2 + 16);
      outlined copy of Text.Storage(*a2, v6, v7);
      v8 = *a1;
      v9 = *(a1 + 8);
      v10 = *(a1 + 16);
      *a1 = v5;
      *(a1 + 8) = v6;
      *(a1 + 16) = v7;
      outlined consume of Text.Storage(v8, v9, v10);
      *(a1 + 24) = *(a2 + 24);
    }

    else
    {
      outlined destroy of Text(a1);
      v14 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v14;
    }
  }

  else if (v4)
  {
    v11 = *a2;
    v12 = *(a2 + 8);
    v13 = *(a2 + 16);
    outlined copy of Text.Storage(*a2, v12, v13);
    *a1 = v11;
    *(a1 + 8) = v12;
    *(a1 + 16) = v13;
    *(a1 + 24) = *(a2 + 24);
  }

  else
  {
    v15 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v15;
  }

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t assignWithTake for DialogSuppressionConfiguration(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 24))
  {
    goto LABEL_5;
  }

  v4 = *(a2 + 24);
  if (!v4)
  {
    outlined destroy of Text(a1);
LABEL_5:
    v9 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v9;
    goto LABEL_6;
  }

  v5 = *(a2 + 16);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  outlined consume of Text.Storage(v6, v7, v8);
  *(a1 + 24) = v4;

LABEL_6:
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t storeEnumTagSinglePayload for DialogSuppressionConfiguration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for EnvironmentPropertyKey<DialogSuppressionConfiguration.Key>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<DialogSuppressionConfiguration.Key>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogSuppressionConfiguration.Key>);
    }
  }
}

double outlined copy of DialogSuppressionConfiguration?(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    outlined copy of Text?(a1, a2, a3, a4);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<DialogSuppressionConfiguration?> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void View.digitalCrownRotation<A>(detent:from:through:by:sensitivity:isContinuous:isHapticFeedbackEnabled:onChange:onIdle:)()
{
  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

{
  View.digitalCrownRotation<A>(detent:from:through:by:sensitivity:isContinuous:isHapticFeedbackEnabled:onChange:onIdle:)();
}

unint64_t lazy protocol witness table accessor for type DigitalCrownRotationalSensitivity and conformance DigitalCrownRotationalSensitivity()
{
  result = lazy protocol witness table cache variable for type DigitalCrownRotationalSensitivity and conformance DigitalCrownRotationalSensitivity;
  if (!lazy protocol witness table cache variable for type DigitalCrownRotationalSensitivity and conformance DigitalCrownRotationalSensitivity)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DigitalCrownRotationalSensitivity, &type metadata for DigitalCrownRotationalSensitivity, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DigitalCrownRotationalSensitivity and conformance DigitalCrownRotationalSensitivity);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzSBRd__SB6StrideRpd__r__lAA15ModifiedContentVyxAA21_DigitalCrownModifierVGAaBHPxAaBHD1__AhA0cI0HPyHCHCTm(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = &protocol witness table for _DigitalCrownModifier;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

double View.fileImporter(isPresented:allowedContentTypes:onCompletion:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t x8_0@<X8>)
{
  v13 = a3;
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = a6;

  View._fileImporter(isPresented:allowedContentTypes:allowsMultipleSelection:onCompletion:onCancellation:)(a1, a2, v13, a4, 0, partial apply for closure #1 in View.fileImporter(isPresented:allowedContentTypes:onCompletion:), v17, destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation, x8_0, 0, a7);

  return result;
}

void closure #1 in View.fileImporter(isPresented:allowedContentTypes:onCompletion:)(void *a1, char a2, void (*a3)(void *))
{
  type metadata accessor for Result<URL, Error>(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    *v8 = a1;
    swift_storeEnumTagMultiPayload();
    v9 = a1;
LABEL_5:
    a3(v8);
    outlined destroy of FileDialogConfiguration<FileImportOperation.Key, FileImportOperation>(v8, type metadata accessor for Result<URL, Error>);
    return;
  }

  if (a1[2])
  {
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 16))(v8, a1 + ((*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80)), v10);
    swift_storeEnumTagMultiPayload();
    goto LABEL_5;
  }

  __break(1u);
}

uint64_t View._fileImporter(isPresented:allowedContentTypes:allowsMultipleSelection:onCompletion:onCancellation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v51 = a6;
  v52 = a8;
  v54 = a7;
  v53 = a5;
  v57 = a9;
  v56 = a11;
  type metadata accessor for FileImportOperation?(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v50 - v19;
  type metadata accessor for FileDialogConfiguration<FileImportOperation.Key, FileImportOperation>(0);
  v55 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v24);
  v26 = (&v50 - v25);
  v60 = a1;
  v61 = a2;
  v62 = a3;
  type metadata accessor for Binding<Bool>();
  v28 = v27;
  MEMORY[0x18D00ACC0](&v59);
  if (v59 == 1)
  {
    v29 = a3 & 1;
    if (!*(a4 + 16))
    {
      v30 = static os_log_type_t.fault.getter();
      v31 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)(v30, &dword_18BD4A000, v31, "Importing files with no allowed content types. This will result in users not be able to select any files to import.", 115, 2, MEMORY[0x1E69E7CC0]);
    }

    v60 = a1;
    v61 = a2;
    v62 = v29;
    MEMORY[0x18D00ACC0](&v59, v28);
    v32 = v59;
    v33 = type metadata accessor for FileImportOperation(0);
    v34 = v33;
    if (v32 == 1)
    {
      v35 = *(v33 + 20);
      v36 = type metadata accessor for URL();
      (*(*(v36 - 8) + 56))(&v20[v35], 1, 1, v36);
      v37 = v34[11];
      type metadata accessor for Predicate<Pack{URL}>(0);
      (*(*(v38 - 8) + 56))(&v20[v37], 1, 1, v38);
      v39 = swift_allocObject();
      *(v39 + 16) = a1;
      *(v39 + 24) = a2;
      *(v39 + 32) = v29;
      v40 = v54;
      *(v39 + 40) = v51;
      *(v39 + 48) = v40;
      v41 = swift_allocObject();
      *(v41 + 16) = a1;
      *(v41 + 24) = a2;
      *(v41 + 32) = v29;
      *(v41 + 40) = v52;
      *(v41 + 48) = a10;
      *v20 = 0;
      *(v20 + 1) = 0;
      v42 = &v20[v34[6]];
      *v42 = 0u;
      *(v42 + 1) = 0u;
      v43 = &v20[v34[7]];
      *v43 = 0u;
      *(v43 + 1) = 0u;
      v44 = &v20[v34[8]];
      *v44 = 0u;
      *(v44 + 1) = 0u;
      *&v20[v34[9]] = a4;
      v20[v34[10]] = v53 & 1;
      v20[v34[12]] = 2;
      v45 = &v20[v34[13]];
      *v45 = 0;
      v45[8] = 1;
      v46 = &v20[v34[14]];
      *v46 = partial apply for closure #1 in View._fileImporter(isPresented:allowedContentTypes:allowsMultipleSelection:onCompletion:onCancellation:);
      v46[1] = v39;
      v47 = &v20[v34[15]];
      *v47 = partial apply for closure #2 in View._fileImporter(isPresented:allowedContentTypes:allowsMultipleSelection:onCompletion:onCancellation:);
      v47[1] = v41;
      (*(*(v34 - 1) + 56))(v20, 0, 1, v34);
      swift_retain_n();
      swift_retain_n();
    }

    else
    {
      (*(*(v33 - 8) + 56))(v20, 1, 1, v33);
    }

    _s7SwiftUI23FileDialogConfigurationV13preferenceKey9operationACyxq_Gxm_q_SgtcfCAA0C15ImportOperationV0G0V_AITt0t2g5(v20, v26);
  }

  else
  {
    v48 = type metadata accessor for FileImportOperation(0);
    (*(*(v48 - 8) + 56))(v17, 1, 1, v48);
    _s7SwiftUI23FileDialogConfigurationV13preferenceKey9operationACyxq_Gxm_q_SgtcfCAA0C15ImportOperationV0G0V_AITt0t2g5(v17, v23);
    v26 = v23;
  }

  MEMORY[0x18D00A570](v26, v56, v55, v58);
  return outlined destroy of FileDialogConfiguration<FileImportOperation.Key, FileImportOperation>(v26, type metadata accessor for FileDialogConfiguration<FileImportOperation.Key, FileImportOperation>);
}

void type metadata accessor for FileDialogConfiguration<FileImportOperation.Key, FileImportOperation>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for FileDialogConfiguration<FileImportOperation.Key, FileImportOperation>)
  {
    v4[0] = &type metadata for FileImportOperation.Key;
    v4[1] = type metadata accessor for FileImportOperation(255);
    v4[2] = &protocol witness table for FileImportOperation.Key;
    v4[3] = &protocol witness table for FileImportOperation;
    v2 = type metadata accessor for FileDialogConfiguration(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for FileDialogConfiguration<FileImportOperation.Key, FileImportOperation>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type FileDialogConfiguration<FileImportOperation.Key, FileImportOperation> and conformance FileDialogConfiguration<A, B>()
{
  result = lazy protocol witness table cache variable for type FileDialogConfiguration<FileImportOperation.Key, FileImportOperation> and conformance FileDialogConfiguration<A, B>;
  if (!lazy protocol witness table cache variable for type FileDialogConfiguration<FileImportOperation.Key, FileImportOperation> and conformance FileDialogConfiguration<A, B>)
  {
    type metadata accessor for FileDialogConfiguration<FileImportOperation.Key, FileImportOperation>(255);
    result = swift_getWitnessTable(protocol conformance descriptor for FileDialogConfiguration<A, B>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FileDialogConfiguration<FileImportOperation.Key, FileImportOperation> and conformance FileDialogConfiguration<A, B>);
  }

  return result;
}

void closure #1 in View._fileImporter(isPresented:allowedContentTypes:allowsMultipleSelection:onCompletion:onCancellation:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v7 = a2;
  v9 = ~a2;
  dispatch thunk of AnyLocation.set(_:transaction:)();
  if (v9)
  {
    v10 = outlined copy of Result<[URL], Error>(a1, v7 & 1);
    (a6)(a1, v7 & 1, v10);
    outlined consume of Result<[URL], Error>?(a1, v7);
  }
}

uint64_t partial apply for closure #2 in View._fileImporter(isPresented:allowedContentTypes:allowsMultipleSelection:onCompletion:onCancellation:)()
{
  v1 = *(v0 + 40);
  v2 = dispatch thunk of AnyLocation.set(_:transaction:)();
  return v1(v2);
}

double outlined copy of Result<[URL], Error>(id a1, char a2)
{
  if (a2)
  {
    v2 = a1;
  }

  else
  {
  }

  return result;
}

void outlined consume of Result<[URL], Error>?(void *result, char a2)
{
  if (a2 != -1)
  {
    outlined consume of Result<[URL], Error>(result, a2 & 1);
  }
}

void outlined consume of Result<[URL], Error>(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void type metadata accessor for Result<URL, Error>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Result<URL, Error>)
  {
    type metadata accessor for URL();
    type metadata accessor for Error();
    v1 = type metadata accessor for Result();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Result<URL, Error>);
    }
  }
}

uint64_t outlined destroy of FileDialogConfiguration<FileImportOperation.Key, FileImportOperation>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void DisplayList.HostedViewState.splicedDisplayList()(uint64_t a1@<X8>)
{
  _s10Foundation4UUIDVSgMaTm_0(0, &lazy cache variable for type metadata for DisplayList.ArchiveIDs?, MEMORY[0x1E697DC50], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  Value = AGGraphGetValue();
  v6 = *(Value + 8);
  v7 = *(Value + 12);
  v12 = *Value;
  v13 = v6;
  v14 = v7;
  if ((v6 & 2) != 0)
  {

    DisplayList.Index.init()();
    v9 = type metadata accessor for DisplayList.ArchiveIDs();
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
    DisplayList.HostedViewState.spliceViews(into:index:archive:substitutions:)(&v12, &v11, v4, MEMORY[0x1E69E7CC8], &v10);
    outlined destroy of DisplayList.HostedViewState.ViewInfo?(v4, &lazy cache variable for type metadata for DisplayList.ArchiveIDs?, MEMORY[0x1E697DC50], MEMORY[0x1E69E6720], _s10Foundation4UUIDVSgMaTm_0);
    v8 = v12;
    v6 = v13;
    v7 = v14;
  }

  else
  {
  }

  *a1 = v8;
  *(a1 + 8) = v6;
  *(a1 + 12) = v7;
}

double protocol witness for Rule.value.getter in conformance DisplayList.HostedViews.SplicedDisplayList@<D0>(uint64_t a1@<X8>)
{
  v2 = *AGGraphGetValue();
  swift_beginAccess();
  v3 = v2[1];
  v4 = v2[2];
  v5 = v2[4];
  v24[2] = v2[3];
  v24[3] = v5;
  v6 = v2[5];
  v7 = v2[6];
  v8 = v2[7];
  *(v25 + 12) = *(v2 + 124);
  v9 = *(v25 + 12);
  v24[5] = v7;
  v25[0] = v8;
  v24[4] = v6;
  v24[0] = v3;
  v24[1] = v4;
  v19 = v2[3];
  v20 = v2[4];
  v17 = v2[1];
  v18 = v2[2];
  *&v23[12] = v9;
  v22 = v2[6];
  *v23 = v2[7];
  v21 = v2[5];

  outlined init with copy of DisplayList.HostedViewState(v24, v26);
  DisplayList.HostedViewState.splicedDisplayList()(a1);
  v10 = v2[5];
  v11 = v2[6];
  v12 = v2[7];
  *(v27 + 12) = *(v2 + 124);
  v27[0] = v12;
  v13 = v2[1];
  v14 = v2[2];
  v15 = v2[4];
  v26[2] = v2[3];
  v26[3] = v15;
  v26[4] = v10;
  v26[5] = v11;
  v26[0] = v13;
  v26[1] = v14;
  v2[1] = v17;
  v2[2] = v18;
  v2[3] = v19;
  v2[4] = v20;
  v2[5] = v21;
  v2[6] = v22;
  *(v2 + 124) = *&v23[12];
  v2[7] = *v23;
  outlined destroy of DisplayList.HostedViewState(v26);

  return result;
}

Swift::Void __swiftcall DisplayList.HostedViews.ResponderFilter.updateValue()()
{
  v60 = *MEMORY[0x1E69E9840];
  v1 = type metadata accessor for DisplayList.HostedViewState.Key(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = (&v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + 16);

  v6 = *AGGraphGetValue();

  Value = AGGraphGetValue();
  v8 = *Value;
  v40 = Value[1];
  v41 = v8;
  type metadata accessor for CGPoint(0);
  v9 = AGGraphGetValue();
  v39 = v10;
  v11 = *v9;
  v12 = v9[1];
  v13 = AGGraphGetValue();
  v38 = v14;
  v15 = *v13;
  v16 = *(v13 + 8);
  v17 = *(v13 + 16);
  v36 = *(v13 + 32);
  v37 = v17;
  v44 = v5;
  *(v5 + 216) = v6;

  v43 = v15;

  v42 = v16;

  swift_beginAccess();
  v18 = *(v6 + 128);
  v45 = MEMORY[0x1E69E7CC0];
  v19 = *(v18 + 16);

  if (!v19)
  {
    goto LABEL_17;
  }

  v20 = 0;
  v35 = v19 - 1;
  do
  {
    v21 = v20;
    while (1)
    {
      if (v21 >= *(v18 + 16))
      {
        __break(1u);
      }

      outlined init with copy of DisplayList.HostedViewState.Key(v18 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v21, v4, type metadata accessor for DisplayList.HostedViewState.Key);
      v22 = *(v6 + 120);
      if (!*(v22 + 16))
      {
        goto LABEL_4;
      }

      v23 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
      if (v24)
      {
        break;
      }

LABEL_4:
      ++v21;
      _s7SwiftUI11DisplayListVAAE15HostedViewStateV3KeyVWOhTm_0(v4, type metadata accessor for DisplayList.HostedViewState.Key);
      if (v19 == v21)
      {
        goto LABEL_17;
      }
    }

    outlined init with copy of DisplayList.HostedViewState.ViewInfo(*(v22 + 56) + 184 * v23, v46);

    v56 = v46[8];
    v57 = v46[9];
    v58 = v46[10];
    v59 = v47;
    v52 = v46[4];
    v53 = v46[5];
    v54 = v46[6];
    v55 = v46[7];
    v48 = v46[0];
    v49 = v46[1];
    v50 = v46[2];
    v51 = v46[3];
    if (!v47)
    {
      __break(1u);
      return;
    }

    if (v58)
    {
      *&v46[0] = v58;
      DWORD2(v46[0]) = DWORD2(v58);
      swift_retain_n();
      if ((PreferencesOutputs.subscript.getter() & 0x100000000) == 0)
      {
        _s10Foundation4UUIDVSgMaTm_0(0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);
        AGGraphGetValue();
      }
    }

    else
    {
      swift_retain_n();
    }

    dispatch thunk of MultiViewResponder.children.setter();

    outlined destroy of DisplayList.HostedViewState.ViewInfo(&v48);
    v25 = _s7SwiftUI11DisplayListVAAE15HostedViewStateV3KeyVWOhTm_0(v4, type metadata accessor for DisplayList.HostedViewState.Key);
    MEMORY[0x18D00CC30](v25);
    if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v20 = v21 + 1;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  while (v35 != v21);
LABEL_17:
  v26 = v39 | v38;

  v27 = v44;
  v28 = MultiViewResponder.children.setter();
  v48 = v41;
  v49 = v40;
  *(v27 + 224) = MEMORY[0x18D00B390](v28);
  *(v27 + 232) = v29;
  v31 = v42;
  v30 = v43;
  if (v26)
  {
    swift_beginAccess();
    *(v27 + 240) = v30;
    *(v27 + 248) = v31;
    v32 = v36;
    *(v27 + 256) = v37;
    *(v27 + 272) = v32;

    ViewTransform.appendPosition(_:)(__PAIR128__(v12, v11));
    swift_endAccess();
  }

  _s10Foundation4UUIDVSgMaTm_0(0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);
  if (!AGGraphGetOutputValue())
  {
    type metadata accessor for DisplayList.HostedViewState.ViewInfo?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_18CD69590;
    *(v33 + 32) = v27;
    *&v48 = v33;

    AGGraphSetOutputValue();
  }
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance DisplayList.HostedViews.Preference<A>@<X0>(uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 56);

  return v4(a2, 1, 1, AssociatedTypeWitness);
}

void DisplayList.HostedViewState.Key.hash(into:)(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69695A8];
  _s10Foundation4UUIDVSgMaTm_0(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v11 - v8;
  Hasher._combine(_:)(*v1);
  Hasher._combine(_:)(v1[1]);
  v10 = type metadata accessor for DisplayList.HostedViewState.Key(0);
  _s7SwiftUI11DisplayListV10ArchiveIDsVSgWOcTm_0(v1 + *(v10 + 24), v9, &lazy cache variable for type metadata for UUID?, v6);
  if ((*(v3 + 48))(v9, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v5, v9, v2);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type AGAttributeTypeFlags and conformance AGAttributeTypeFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v5, v2);
  }
}

Swift::Int DisplayList.HostedViewState.Key.hashValue.getter()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1E69695A8];
  _s10Foundation4UUIDVSgMaTm_0(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - v7;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v0[1]);
  v9 = type metadata accessor for DisplayList.HostedViewState.Key(0);
  _s7SwiftUI11DisplayListV10ArchiveIDsVSgWOcTm_0(v0 + *(v9 + 24), v8, &lazy cache variable for type metadata for UUID?, v5);
  if ((*(v2 + 48))(v8, 1, v1) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v2 + 32))(v4, v8, v1);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type AGAttributeTypeFlags and conformance AGAttributeTypeFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v4, v1);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DisplayList.HostedViewState.Key(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69695A8];
  _s10Foundation4UUIDVSgMaTm_0(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v13 - v10;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v2);
  Hasher._combine(_:)(v2[1]);
  _s7SwiftUI11DisplayListV10ArchiveIDsVSgWOcTm_0(v2 + *(a2 + 24), v11, &lazy cache variable for type metadata for UUID?, v8);
  if ((*(v5 + 48))(v11, 1, v4) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v5 + 32))(v7, v11, v4);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type AGAttributeTypeFlags and conformance AGAttributeTypeFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v5 + 8))(v7, v4);
  }

  return Hasher._finalize()();
}

uint64_t DisplayList.HostedViewState.FetchView.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *AGGraphGetValue();
  swift_beginAccess();
  v4 = *(v3 + 120);
  if (*(v4 + 16))
  {
    v5 = *(type metadata accessor for DisplayList.HostedViewState.FetchView(0) + 20);

    v6 = specialized __RawDictionaryStorage.find<A>(_:)((v1 + v5));
    if (v7)
    {
      outlined init with copy of DisplayList.HostedViewState.ViewInfo(*(v4 + 56) + 184 * v6, &v15);

      v9 = v24;
      *(a1 + 128) = v23;
      *(a1 + 144) = v9;
      *(a1 + 160) = v25;
      *(a1 + 176) = v26;
      v10 = v20;
      *(a1 + 64) = v19;
      *(a1 + 80) = v10;
      v11 = v22;
      *(a1 + 96) = v21;
      *(a1 + 112) = v11;
      v12 = v16;
      *a1 = v15;
      *(a1 + 16) = v12;
      v13 = v18;
      *(a1 + 32) = v17;
      *(a1 + 48) = v13;
      return result;
    }
  }

  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  *a1 = 0;
  *(a1 + 8) = 0;
  v14 = MEMORY[0x1E697E998];
  *(a1 + 40) = MEMORY[0x1E697E9A0];
  *(a1 + 48) = v14;
  static ViewSize.zero.getter();
  ViewTransform.init()();
  result = EnvironmentValues.init()();
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  if (*(&v17 + 1))
  {
    return outlined destroy of DisplayList.HostedViewState.ViewInfo?(&v15, &lazy cache variable for type metadata for DisplayList.HostedViewState.ViewInfo?, &type metadata for DisplayList.HostedViewState.ViewInfo, MEMORY[0x1E69E6720], type metadata accessor for DisplayList.HostedViewState.ViewInfo?);
  }

  return result;
}

double protocol witness for static Rule.initialValue.getter in conformance DisplayList.HostedViewState.FetchView@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 176) = 0;
  result = 0.0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance DisplayList.HostedViewState.Child@<X0>(uint64_t *a1@<X8>)
{
  Value = AGGraphGetValue();
  outlined init with copy of _Benchmark(Value + 16, v7);
  v3 = v8;
  v4 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v5 = (*(v4 + 16))(v3, v4);
  result = __swift_destroy_boxed_opaque_existential_1(v7);
  *a1 = v5;
  return result;
}

uint64_t DisplayList.HostedViewResponder.__allocating_init(inputs:)(uint64_t a1)
{
  v1 = swift_allocObject();
  v1[28] = 0;
  v1[29] = 0;
  v1[27] = 0;
  ViewTransform.init()();
  return DefaultLayoutViewResponder.init(inputs:)();
}

uint64_t DisplayList.HostedViewResponder.__allocating_init(inputs:viewSubgraph:)(uint64_t a1, uint64_t a2)
{
  v2 = swift_allocObject();
  v2[28] = 0;
  v2[29] = 0;
  v2[27] = 0;
  ViewTransform.init()();
  return DefaultLayoutViewResponder.init(inputs:viewSubgraph:)();
}

double DisplayList.HostedViewResponder.__ivar_destroyer()
{

  return result;
}

double DisplayList.HostedViewResponder.__deallocating_deinit()
{
  DefaultLayoutViewResponder.deinit();

  swift_deallocClassInstance();
  return result;
}

uint64_t assignWithCopy for DisplayList.HostedViewState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  v6 = v4;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);

  *(a1 + 120) = *(a2 + 120);
  return a1;
}

__n128 __swift_memcpy124_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t assignWithTake for DisplayList.HostedViewState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);

  *(a1 + 120) = *(a2 + 120);
  return a1;
}

uint64_t getEnumTagSinglePayload for DisplayList.HostedViewState(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 124))
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

uint64_t storeEnumTagSinglePayload for DisplayList.HostedViewState(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 124) = 1;
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

    *(result + 124) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy7SwiftUI11DisplayListVAHE15HostedViewStateV3KeyVAL0N4InfoVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab8VKXEfU_7i4UI11kl6VAIE15mno2V3p7V_AM0M4Q4VTG5AQxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAnPIsgnndzo_Tf1nc_n03_s7iykl6VAAE15mno54V7reclaim33_A20DF47D739D7FD0278716FD8B020A7BLLyyFSbAE3p11V3key_AE0F4Q15V5valuet_tXEfU_ALTf1nnc_n(void *result, uint64_t a2, void *a3, uint64_t a4)
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

    specialized closure #1 in _NativeDictionary.filter(_:)(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

BOOL specialized static DisplayList.HostedViewState.Key.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation4UUIDVSgMaTm_0(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v24 - v10;
  type metadata accessor for (UUID?, UUID?)(0, v9);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != *a2)
  {
    return 0;
  }

  v16 = v13;
  v17 = *(type metadata accessor for DisplayList.HostedViewState.Key(0) + 24);
  v18 = *(v16 + 48);
  v19 = MEMORY[0x1E69695A8];
  _s7SwiftUI11DisplayListV10ArchiveIDsVSgWOcTm_0(a1 + v17, v15, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8]);
  _s7SwiftUI11DisplayListV10ArchiveIDsVSgWOcTm_0(a2 + v17, &v15[v18], &lazy cache variable for type metadata for UUID?, v19);
  v20 = *(v5 + 48);
  if (v20(v15, 1, v4) != 1)
  {
    _s7SwiftUI11DisplayListV10ArchiveIDsVSgWOcTm_0(v15, v11, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8]);
    if (v20(&v15[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v15[v18], v4);
      lazy protocol witness table accessor for type AGAttributeTypeFlags and conformance AGAttributeTypeFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      v23 = *(v5 + 8);
      v23(v7, v4);
      v23(v11, v4);
      outlined destroy of DisplayList.HostedViewState.ViewInfo?(v15, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], _s10Foundation4UUIDVSgMaTm_0);
      return (v22 & 1) != 0;
    }

    (*(v5 + 8))(v11, v4);
LABEL_7:
    _s7SwiftUI11DisplayListVAAE15HostedViewStateV3KeyVWOhTm_0(v15, type metadata accessor for (UUID?, UUID?));
    return 0;
  }

  if (v20(&v15[v18], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  outlined destroy of DisplayList.HostedViewState.ViewInfo?(v15, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], _s10Foundation4UUIDVSgMaTm_0);
  return 1;
}

uint64_t *initializeBufferWithCopyOfBuffer for DisplayList.HostedViewState.FetchView(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v12 = *a2;
    *v3 = *a2;
    v3 = (v12 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    v5 = *(a3 + 20);
    v6 = a1 + v5;
    v7 = a2 + v5;
    *(a1 + v5) = *(a2 + v5);
    v8 = *(type metadata accessor for DisplayList.HostedViewState.Key(0) + 24);
    v9 = type metadata accessor for UUID();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(&v7[v8], 1, v9))
    {
      _s10Foundation4UUIDVSgMaTm_0(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
      memcpy(&v6[v8], &v7[v8], *(*(v11 - 8) + 64));
    }

    else
    {
      (*(v10 + 16))(&v6[v8], &v7[v8], v9);
      (*(v10 + 56))(&v6[v8], 0, 1, v9);
    }
  }

  return v3;
}

uint64_t destroy for DisplayList.HostedViewState.FetchView(uint64_t a1, uint64_t a2)
{
  v2 = a1 + *(a2 + 20);
  v3 = *(type metadata accessor for DisplayList.HostedViewState.Key(0) + 24);
  v4 = type metadata accessor for UUID();
  v7 = *(v4 - 8);
  result = (*(v7 + 48))(v2 + v3, 1, v4);
  if (!result)
  {
    v6 = *(v7 + 8);

    return v6(v2 + v3, v4);
  }

  return result;
}

_DWORD *initializeWithCopy for DisplayList.HostedViewState.FetchView(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = a1 + v4;
  v6 = a2 + v4;
  *(a1 + v4) = *(a2 + v4);
  v7 = *(type metadata accessor for DisplayList.HostedViewState.Key(0) + 24);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(&v6[v7], 1, v8))
  {
    _s10Foundation4UUIDVSgMaTm_0(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
    memcpy(&v5[v7], &v6[v7], *(*(v10 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(&v5[v7], &v6[v7], v8);
    (*(v9 + 56))(&v5[v7], 0, 1, v8);
  }

  return a1;
}

_DWORD *assignWithCopy for DisplayList.HostedViewState.FetchView(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = a1 + v4;
  v6 = a2 + v4;
  *v5 = *(a2 + v4);
  *(v5 + 1) = *(a2 + v4 + 4);
  v7 = *(type metadata accessor for DisplayList.HostedViewState.Key(0) + 24);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(&v5[v7], 1, v8);
  v12 = v10(&v6[v7], 1, v8);
  if (!v11)
  {
    if (!v12)
    {
      (*(v9 + 24))(&v5[v7], &v6[v7], v8);
      return a1;
    }

    (*(v9 + 8))(&v5[v7], v8);
    goto LABEL_6;
  }

  if (v12)
  {
LABEL_6:
    _s10Foundation4UUIDVSgMaTm_0(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
    memcpy(&v5[v7], &v6[v7], *(*(v13 - 8) + 64));
    return a1;
  }

  (*(v9 + 16))(&v5[v7], &v6[v7], v8);
  (*(v9 + 56))(&v5[v7], 0, 1, v8);
  return a1;
}

_DWORD *initializeWithTake for DisplayList.HostedViewState.FetchView(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = a1 + v4;
  v6 = a2 + v4;
  *(a1 + v4) = *(a2 + v4);
  v7 = *(type metadata accessor for DisplayList.HostedViewState.Key(0) + 24);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(&v6[v7], 1, v8))
  {
    _s10Foundation4UUIDVSgMaTm_0(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
    memcpy(&v5[v7], &v6[v7], *(*(v10 - 8) + 64));
  }

  else
  {
    (*(v9 + 32))(&v5[v7], &v6[v7], v8);
    (*(v9 + 56))(&v5[v7], 0, 1, v8);
  }

  return a1;
}

_DWORD *assignWithTake for DisplayList.HostedViewState.FetchView(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = a1 + v4;
  v6 = a2 + v4;
  *(a1 + v4) = *(a2 + v4);
  v7 = *(type metadata accessor for DisplayList.HostedViewState.Key(0) + 24);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(&v5[v7], 1, v8);
  v12 = v10(&v6[v7], 1, v8);
  if (!v11)
  {
    if (!v12)
    {
      (*(v9 + 40))(&v5[v7], &v6[v7], v8);
      return a1;
    }

    (*(v9 + 8))(&v5[v7], v8);
    goto LABEL_6;
  }

  if (v12)
  {
LABEL_6:
    _s10Foundation4UUIDVSgMaTm_0(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
    memcpy(&v5[v7], &v6[v7], *(*(v13 - 8) + 64));
    return a1;
  }

  (*(v9 + 32))(&v5[v7], &v6[v7], v8);
  (*(v9 + 56))(&v5[v7], 0, 1, v8);
  return a1;
}

uint64_t *assignWithCopy for DisplayList.HostedViewState.InheritedState(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  a1[5] = a2[5];
  a1[6] = a2[6];

  a1[7] = a2[7];

  return a1;
}

_OWORD *assignWithTake for DisplayList.HostedViewState.InheritedState(_OWORD *a1, _OWORD *a2)
{

  *a1 = *a2;

  v4 = a2[2];
  a1[1] = a2[1];
  a1[2] = v4;

  a1[3] = a2[3];

  return a1;
}

uint64_t getEnumTagSinglePayload for DisplayList.HostedViewState.InheritedState(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for DisplayList.HostedViewState.InheritedState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy184_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t assignWithTake for DisplayList.HostedViewState.ViewInfo(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  __swift_destroy_boxed_opaque_existential_1((a1 + 16));
  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);

  *(a1 + 144) = *(a2 + 144);

  v5 = *(a1 + 152);
  *(a1 + 152) = *(a2 + 152);

  *(a1 + 160) = *(a2 + 160);

  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = *(a2 + 176);

  return a1;
}

uint64_t storeEnumTagSinglePayload for DisplayList.HostedViewState.ViewInfo(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 184) = 1;
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

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for DisplayList.HostedViewState.Key(char *a1, char *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *v4 = *a2;
    v4 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    *a1 = *a2;
    v6 = *(a3 + 24);
    v7 = type metadata accessor for UUID();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(&a2[v6], 1, v7))
    {
      _s10Foundation4UUIDVSgMaTm_0(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
      memcpy(&v4[v6], &a2[v6], *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v8 + 16))(&v4[v6], &a2[v6], v7);
      (*(v8 + 56))(&v4[v6], 0, 1, v7);
    }
  }

  return v4;
}

uint64_t destroy for DisplayList.HostedViewState.Key(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v4 = type metadata accessor for UUID();
  v7 = *(v4 - 8);
  result = (*(v7 + 48))(a1 + v3, 1, v4);
  if (!result)
  {
    v6 = *(v7 + 8);

    return v6(a1 + v3, v4);
  }

  return result;
}

char *initializeWithCopy for DisplayList.HostedViewState.Key(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 24);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(&a2[v5], 1, v6))
  {
    _s10Foundation4UUIDVSgMaTm_0(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
    memcpy(&a1[v5], &a2[v5], *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(&a1[v5], &a2[v5], v6);
    (*(v7 + 56))(&a1[v5], 0, 1, v6);
  }

  return a1;
}

char *assignWithCopy for DisplayList.HostedViewState.Key(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  v5 = *(a3 + 24);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(&a1[v5], 1, v6);
  v10 = v8(&a2[v5], 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 24))(&a1[v5], &a2[v5], v6);
      return a1;
    }

    (*(v7 + 8))(&a1[v5], v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    _s10Foundation4UUIDVSgMaTm_0(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
    memcpy(&a1[v5], &a2[v5], *(*(v11 - 8) + 64));
    return a1;
  }

  (*(v7 + 16))(&a1[v5], &a2[v5], v6);
  (*(v7 + 56))(&a1[v5], 0, 1, v6);
  return a1;
}

char *initializeWithTake for DisplayList.HostedViewState.Key(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 24);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(&a2[v5], 1, v6))
  {
    _s10Foundation4UUIDVSgMaTm_0(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
    memcpy(&a1[v5], &a2[v5], *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(&a1[v5], &a2[v5], v6);
    (*(v7 + 56))(&a1[v5], 0, 1, v6);
  }

  return a1;
}

char *assignWithTake for DisplayList.HostedViewState.Key(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 24);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(&a1[v5], 1, v6);
  v10 = v8(&a2[v5], 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 40))(&a1[v5], &a2[v5], v6);
      return a1;
    }

    (*(v7 + 8))(&a1[v5], v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    _s10Foundation4UUIDVSgMaTm_0(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
    memcpy(&a1[v5], &a2[v5], *(*(v11 - 8) + 64));
    return a1;
  }

  (*(v7 + 32))(&a1[v5], &a2[v5], v6);
  (*(v7 + 56))(&a1[v5], 0, 1, v6);
  return a1;
}

void VibrantColorForegroundStyle.init(_:alwaysAppearsActive:)(uint64_t a1)
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

uint64_t *assignWithCopy for VibrantColorForegroundStyle(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t *assignWithTake for VibrantColorForegroundStyle(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

void closure #1 in GradientBackground.body.getter(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  type metadata accessor for _ContiguousArrayStorage<Color>();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_18CD63410;
  v7 = specialized Environment.wrappedValue.getter(a1, a2 & 1);
  if (!v7)
  {
    v7 = static Color.accentColor.getter();
  }

  *(v6 + 32) = v7;
  *(v6 + 40) = static Color.clear.getter();
  GeometryProxy.safeAreaInsets.getter();
  v27 = v8;
  GeometryProxy.size.getter();
  v10 = v9;
  GeometryProxy.safeAreaInsets.getter();
  v12 = v11;
  GeometryProxy.safeAreaInsets.getter();
  v14 = v13;
  if (one-time initialization token for minimumComponentHeight != -1)
  {
    swift_once();
  }

  v15 = *&static ClarityUIMetrics.minimumComponentHeight;
  if (one-time initialization token for backButtonPadding != -1)
  {
    swift_once();
  }

  v16 = *&static ClarityUIMetrics.backButtonPadding;
  GeometryProxy.size.getter();
  v18 = v17;
  GeometryProxy.safeAreaInsets.getter();
  v20 = v19;
  GeometryProxy.safeAreaInsets.getter();
  v22 = v21;
  v23 = MEMORY[0x18D00B0A0](v6);
  if (one-time initialization token for clarityUIContentBackground != -1)
  {
    swift_once();
  }

  v24 = static Color.clarityUIContentBackground;
  v25 = static Edge.Set.all.getter();

  v26 = static Edge.Set.all.getter();
  *a3 = v23;
  *(a3 + 8) = 0x3FE0000000000000;
  *(a3 + 16) = v27 / (v10 + v12 + v14);
  *(a3 + 24) = 0x3FE0000000000000;
  *(a3 + 32) = 1.0 - (v15 + v16 + v16) / (v18 + v20 + v22);
  *(a3 + 40) = 0x3FC3333333333333;
  *(a3 + 48) = v24;
  *(a3 + 56) = v25;
  *(a3 + 57) = v26;
}

uint64_t protocol witness for View.body.getter in conformance GradientBackground@<X0>(void (**a1)(uint64_t a1@<X8>)@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *a1 = partial apply for closure #1 in GradientBackground.body.getter;
  a1[1] = v5;

  return outlined copy of Environment<Color?>.Content(v3);
}

void type metadata accessor for _ContiguousArrayStorage<Color>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<Color>)
  {
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Color>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<LinearGradient, _OpacityEffect>, _BackgroundStyleModifier<Color>>, _SafeAreaIgnoringLayout>> and conformance GeometryReader<A>()
{
  result = lazy protocol witness table cache variable for type GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<LinearGradient, _OpacityEffect>, _BackgroundStyleModifier<Color>>, _SafeAreaIgnoringLayout>> and conformance GeometryReader<A>;
  if (!lazy protocol witness table cache variable for type GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<LinearGradient, _OpacityEffect>, _BackgroundStyleModifier<Color>>, _SafeAreaIgnoringLayout>> and conformance GeometryReader<A>)
  {
    type metadata accessor for GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<LinearGradient, _OpacityEffect>, _BackgroundStyleModifier<Color>>, _SafeAreaIgnoringLayout>>(255);
    result = swift_getWitnessTable(MEMORY[0x1E697E378], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<LinearGradient, _OpacityEffect>, _BackgroundStyleModifier<Color>>, _SafeAreaIgnoringLayout>> and conformance GeometryReader<A>);
  }

  return result;
}

void type metadata accessor for GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<LinearGradient, _OpacityEffect>, _BackgroundStyleModifier<Color>>, _SafeAreaIgnoringLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<LinearGradient, _OpacityEffect>, _BackgroundStyleModifier<Color>>, _SafeAreaIgnoringLayout>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<LinearGradient, _OpacityEffect>, _BackgroundStyleModifier<Color>>, _SafeAreaIgnoringLayout>(255);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<LinearGradient, _OpacityEffect>, _BackgroundStyleModifier<Color>>, _SafeAreaIgnoringLayout> and conformance <> ModifiedContent<A, B>();
    v1 = type metadata accessor for GeometryReader();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<LinearGradient, _OpacityEffect>, _BackgroundStyleModifier<Color>>, _SafeAreaIgnoringLayout>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<LinearGradient, _OpacityEffect>, _BackgroundStyleModifier<Color>>, _SafeAreaIgnoringLayout>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<LinearGradient, _OpacityEffect>, _BackgroundStyleModifier<Color>>, _SafeAreaIgnoringLayout>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<LinearGradient, _OpacityEffect>, _BackgroundStyleModifier<Color>>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<LinearGradient, _OpacityEffect>, _BackgroundStyleModifier<Color>>, _SafeAreaIgnoringLayout>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<LinearGradient, _OpacityEffect>, _BackgroundStyleModifier<Color>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<LinearGradient, _OpacityEffect>, _BackgroundStyleModifier<Color>>)
  {
    type metadata accessor for ModifiedContent<LinearGradient, _OpacityEffect>(255, &lazy cache variable for type metadata for ModifiedContent<LinearGradient, _OpacityEffect>, MEMORY[0x1E697E3F0], MEMORY[0x1E697E5C8], MEMORY[0x1E697E830]);
    type metadata accessor for ModifiedContent<LinearGradient, _OpacityEffect>(255, &lazy cache variable for type metadata for _BackgroundStyleModifier<Color>, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980460]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<LinearGradient, _OpacityEffect>, _BackgroundStyleModifier<Color>>);
    }
  }
}

void type metadata accessor for ModifiedContent<LinearGradient, _OpacityEffect>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<LinearGradient, _OpacityEffect>, _BackgroundStyleModifier<Color>>, _SafeAreaIgnoringLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<LinearGradient, _OpacityEffect>, _BackgroundStyleModifier<Color>>, _SafeAreaIgnoringLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<LinearGradient, _OpacityEffect>, _BackgroundStyleModifier<Color>>, _SafeAreaIgnoringLayout> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<LinearGradient, _OpacityEffect>, _BackgroundStyleModifier<Color>>, _SafeAreaIgnoringLayout>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<LinearGradient, _OpacityEffect>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    v5[1] = MEMORY[0x1E6980318];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<LinearGradient, _OpacityEffect>, _BackgroundStyleModifier<Color>>, _SafeAreaIgnoringLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<LinearGradient, _OpacityEffect>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<LinearGradient, _OpacityEffect>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<LinearGradient, _OpacityEffect>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<LinearGradient, _OpacityEffect>, _BackgroundStyleModifier<Color>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<LinearGradient, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<LinearGradient, _OpacityEffect>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<LinearGradient, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<LinearGradient, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<LinearGradient, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<LinearGradient, _OpacityEffect>(255, &lazy cache variable for type metadata for ModifiedContent<LinearGradient, _OpacityEffect>, MEMORY[0x1E697E3F0], MEMORY[0x1E697E5C8], MEMORY[0x1E697E830]);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type LinearGradient and conformance LinearGradient();
    v5[1] = MEMORY[0x1E697E5C0];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<LinearGradient, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LinearGradient and conformance LinearGradient()
{
  result = lazy protocol witness table cache variable for type LinearGradient and conformance LinearGradient;
  if (!lazy protocol witness table cache variable for type LinearGradient and conformance LinearGradient)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697E3E8], MEMORY[0x1E697E3F0], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type LinearGradient and conformance LinearGradient);
  }

  return result;
}

double Scene.transformEnvironment<A>(_:transform:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  v11[0] = _EnvironmentKeyTransformModifier.init(keyPath:transform:)();
  v11[1] = v7;
  v11[2] = v8;
  v9 = type metadata accessor for _EnvironmentKeyTransformModifier();
  Scene.modifier<A>(_:)(v11, a4, v9, a5);

  return result;
}

double key path setter for EnvironmentValues.subscript<A>(_:) : <A><A1>EnvironmentValuesA1(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 24);
  v5 = swift_unknownObjectRetain();
  specialized EnvironmentValues.subscript.setter(v5, v4);

  swift_unknownObjectRelease();
  return result;
}

double Scene.environmentObject<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = static ObservableObject.environmentStore.getter();
  v10 = a1;
  swift_unknownObjectRetain();
  Scene.environment<A>(_:_:)(v8, &v10, a2, a4);
  swift_unknownObjectRelease();

  return result;
}

Swift::Int specialized EnvironmentObjectKey.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](a1);
  return Hasher._finalize()();
}

uint64_t SectionConfiguration.actions.getter@<X0>(void *a1@<X8>)
{
  SectionConfiguration.containerValues.getter();
  ViewTraitCollection.value<A>(for:defaultValue:)();

  *a1 = v3;
  return result;
}

double SectionConfiguration.Actions.body.getter@<D0>(uint64_t *a1@<X8>)
{
  *a1 = *v1;

  return result;
}

uint64_t _UIHostingView.legacyShouldUpdateKeyboardSafeArea.getter()
{
  if ((_UIHostingView.safeAreaRegions.getter() & 2) != 0)
  {
    result = _UIHostingView.viewController.getter();
    if (!result)
    {
      return result;
    }

    v2 = specialized UIView.firstAncestorWhere(_:)(v0);
    if (!v2)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t _UIHostingView.legacyShouldAddKeyboardToSafeArea.getter()
{
  if (_UIHostingView.legacyShouldUpdateKeyboardSafeArea.getter())
  {
    v1 = [v0 window];
    if (v1)
    {
      v2 = v1;
      v3 = [v1 screen];
    }

    else
    {
      v3 = 0;
    }

    v5 = [objc_opt_self() mainScreen];
    v6 = v5;
    if (v3)
    {
      if (v5)
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIScreen, 0x1E69DCEB0);
        v4 = static NSObject.== infix(_:_:)();
      }

      else
      {
        v4 = 0;
      }

      v6 = v3;
    }

    else
    {
      if (!v5)
      {
        v4 = 1;
        return v4 & 1;
      }

      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

Swift::Void __swiftcall _UIHostingView.legacySetupKeyboardAvoidanceNotifications()()
{
  type metadata accessor for _SemanticFeature<Semantics_v2>();
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>();
  if (static SemanticFeature.isEnabled.getter())
  {
    static Semantics.v7.getter();
    if ((isLinkedOnOrAfter(_:)() & 1) == 0)
    {
      v1 = [objc_opt_self() defaultCenter];
      [v1 addObserver:v0 selector:sel_legacyKeyboardWillShowWithNotification_ name:*MEMORY[0x1E69DE080] object:0];
      [v1 addObserver:v0 selector:sel_legacyKeyboardWillHideWithNotification_ name:*MEMORY[0x1E69DE078] object:0];
      [v1 addObserver:v0 selector:sel_legacyKeyboardFrameWillChangeWithNotification_ name:*MEMORY[0x1E69DE068] object:0];
    }
  }
}

Swift::Bool __swiftcall _UIHostingView.legacySetKeyboardFrame(_:screen:seed:)(__C::CGRect_optional *_, UIScreen_optional screen, Swift::UInt32 seed)
{
  v4 = *&screen.is_nil;
  isa = screen.value.super.isa;
  v7 = MEMORY[0x1E69E7D40];
  x = _->value.origin.x;
  y = _->value.origin.y;
  width = _->value.size.width;
  height = _->value.size.height;
  v12 = *MEMORY[0x1E69E7D40] & *v3;
  static Semantics.v7.getter();
  v13 = isLinkedOnOrAfter(_:)();
  if ((v13 & 1) != 0 || *(v3 + *((*v7 & *v3) + 0xB8)) != v4)
  {
    return 0;
  }

  v14 = (v3 + *((*v7 & *v3) + 0xB0));
  is_nil = _->is_nil;
  if (is_nil)
  {
    if (LOBYTE(v14[2].width))
    {
      return 0;
    }
  }

  else if ((LOBYTE(v14[2].width) & 1) == 0)
  {
    v34.origin.x = x;
    v34.origin.y = y;
    v34.size.width = width;
    v34.size.height = height;
    v13 = CGRectEqualToRect(v34, *&v14->width);
    if (v13)
    {
      return 0;
    }
  }

  _UIHostingView._legacyHostKeyboardHeight.getter(v13);
  v17 = v16;
  v18 = v14->height;
  v19 = v14[1].height;
  width_low = LOBYTE(v14[2].width);
  LOBYTE(v14[2].width) = _->is_nil;
  size = _->value.size;
  *v14 = _->value.origin;
  v14[1] = size;
  v22 = *((*v7 & *v3) + 0xC0);
  v23 = *(v3 + v22);
  *(v3 + v22) = isa;
  v24 = isa;

  static Semantics.v7.getter();
  v25 = isLinkedOnOrAfter(_:)();
  v26 = 0.0;
  if (!width_low)
  {
    v26 = v19;
  }

  if (is_nil)
  {
    if (v26 == 0.0 || !((v18 != 0.0) & ~width_low | v25 & 1))
    {
      return 0;
    }
  }

  else
  {
    if (v26 == height)
    {
      return 0;
    }

    v27 = 0.0;
    if (!width_low)
    {
      v27 = v18;
    }

    if (!((v27 != y) | v25 & 1))
    {
      return 0;
    }
  }

  v28 = v25;
  _UIHostingView._legacyHostKeyboardHeight.getter(v25);
  if (((v17 == v29) & v28) != 0)
  {
    return 0;
  }

  v31 = _UIHostingView.base.getter();
  UIHostingViewBase.allowUIKitAnimationsForNextUpdate.setter();

  v33 = type metadata accessor for _UIHostingView(0, *(v12 + 80), *(v12 + 88), v32);
  swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v33);
  ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
  return 1;
}

void _UIHostingView._legacyHostKeyboardHeight.getter(uint64_t a1)
{
  static Semantics.v7.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) == 0)
  {
    v2 = (v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0xB0));
    if ((v2[4] & 1) == 0)
    {
      v3 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0xC0));
      if (v3)
      {
        v5 = v2[2];
        v4 = v2[3];
        v7 = *v2;
        v6 = v2[1];
        v8 = v3;
        v9 = [v1 window];
        if (v9 && (v9, v5 > 0.0) && v4 > 0.0)
        {
          [v1 convertRect:objc_msgSend(v8 fromCoordinateSpace:{sel_coordinateSpace), v7, v6, v5, v4}];
          v11 = v10;
          v13 = v12;
          v15 = v14;
          v17 = v16;
          [v1 bounds];
          CGRectGetMaxY(v18);
          v19.origin.x = v11;
          v19.origin.y = v13;
          v19.size.width = v15;
          v19.size.height = v17;
          CGRectGetMinY(v19);

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }
    }
  }
}

Swift::Void __swiftcall _UIHostingView._legacyKeyboardWillShow(note:)(NSNotification note)
{
  v2 = v1;
  static Semantics.v7.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) == 0)
  {
    v3 = [objc_opt_self() currentDevice];
    v4 = [v3 userInterfaceIdiom];

    if (v4 || (NSNotification.keyboardIsLocal.getter(), (v5 & 1) != 0))
    {
      v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xB8);
      v7 = *(v2 + v6) + 1;
      *(v2 + v6) = v7;
      if ((_UIHostingView.legacyShouldAddKeyboardToSafeArea.getter() & 1) != 0 && (NSNotification.keyboardFrame.getter(v21), (v22 & 1) == 0) && (v19 = v21[1], v20 = v21[0], (v9 = NSNotification.keyboardScreen.getter()) != 0))
      {
        v10 = v9;
        v11 = v9;
        v12 = NSNotification.keyboardAnimationDuration.getter();
        if (v13 & 1) != 0 || (v14 = v12, v15 = NSNotification.keyboardAnimationCurve.getter(), (v17))
        {
          v18 = 0;
        }

        else
        {
          v16.n128_u64[0] = v14;
          v18 = static Animation.uiViewAnimation(curve:duration:)(v15, v16);
        }

        _.value.origin = v20;
        _.value.size = v19;
        _.is_nil = 0;
        _UIHostingView.legacyUpdateKeyboardFrame(_:screen:animation:seed:)(&_, v10, v18, v7);
      }

      else
      {
        memset(&_, 0, 32);
        _.is_nil = 1;
        v25.value.super.isa = 0;
        v25.is_nil = v7;
        _UIHostingView.legacySetKeyboardFrame(_:screen:seed:)(&_, v25, v8);
      }
    }
  }
}

id NSNotification.keyboardFrame.getter@<X0>(uint64_t a1@<X8>)
{
  result = [v1 userInfo];
  v4 = 0uLL;
  if (result)
  {
    v5 = result;
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v22[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22[1] = v7;
    AnyHashable.init<A>(_:)();
    if (*(v6 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v23), (v9 & 1) != 0))
    {
      outlined init with copy of Any(*(v6 + 56) + 32 * v8, v22);
      outlined destroy of AnyHashable(v23);

      outlined init with take of Any(v22, v24);
      outlined init with copy of Any(v24, v23);
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSValue, 0x1E696B098);
      v10 = swift_dynamicCast();
      if (v10)
      {
        v11 = v22[0];
        [v22[0] CGRectValue];
        v19 = v12;
        v20 = v13;
        v18 = v14;
        v21 = v15;

        result = __swift_destroy_boxed_opaque_existential_1(v24);
        *&v16 = v18;
        *&v4 = v19;
        *(&v4 + 1) = v20;
        *(&v16 + 1) = v21;
      }

      else
      {
        result = __swift_destroy_boxed_opaque_existential_1(v24);
        v4 = 0uLL;
        v16 = 0uLL;
      }

      v17 = v10 ^ 1;
    }

    else
    {

      result = outlined destroy of AnyHashable(v23);
      v17 = 1;
      v16 = 0uLL;
      v4 = 0uLL;
    }
  }

  else
  {
    v17 = 1;
    v16 = 0uLL;
  }

  *a1 = v4;
  *(a1 + 16) = v16;
  *(a1 + 32) = v17;
  return result;
}

uint64_t NSNotification.keyboardScreen.getter()
{
  if ([v0 object])
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
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIScreen, 0x1E69DCEB0);
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

void _UIHostingView.legacyUpdateKeyboardFrame(_:screen:animation:seed:)(uint64_t a1, void *a2, uint64_t a3, _BOOL4 a4)
{
  v9 = *MEMORY[0x1E69E7D40] & *v4;
  static Semantics.v7.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) == 0)
  {
    v10 = _UIHostingView.viewController.getter();
    if (v10)
    {
      v12 = v10;
      v13 = [v10 _appearState];

      if (v13 == 2 && a3 != 0)
      {
        goto LABEL_10;
      }
    }

    else if (a3)
    {
LABEL_10:

      v16 = _UIHostingView.viewGraph.getter(v15);
      swift_beginAccess();
      v17 = *(v16 + 128);

      if (v17 == 1)
      {
        _UIHostingView.viewGraph.getter(v18);

        Transaction.init(animation:)();
        v19 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v20 = swift_allocObject();
        *(v20 + 16) = *(v9 + 80);
        *(v20 + 24) = *(v9 + 88);
        *(v20 + 32) = v19;
        *(v20 + 40) = a3;
        v21 = *(a1 + 16);
        *(v20 + 48) = *a1;
        *(v20 + 64) = v21;
        *(v20 + 80) = *(a1 + 32);
        *(v20 + 88) = a2;
        *(v20 + 96) = a4;
        v22 = a2;

        default argument 1 of GraphHost.asyncTransaction(_:id:_:)();
        GraphHost.asyncTransaction(_:id:_:)();

        return;
      }
    }

    v23.value.super.isa = a2;
    v23.is_nil = a4;
    _UIHostingView.legacySetKeyboardFrame(_:screen:seed:)(a1, v23, v11);
  }
}

Swift::Void __swiftcall _UIHostingView._legacyKeyboardWillHide(note:)(NSNotification note)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *MEMORY[0x1E69E7D40] & *v1;
  static Semantics.v7.getter();
  if (isLinkedOnOrAfter(_:)() & 1) == 0 && (_UIHostingView.legacyShouldUpdateKeyboardSafeArea.getter())
  {
    v4 = _UIHostingView.viewController.getter();
    if (v4)
    {
      v5 = *((*v2 & *v1) + 0xB8);
      v6 = *(v1 + v5) + 1;
      *(v1 + v5) = v6;
      v7 = v4;
      v8 = [v7 transitionCoordinator];
      if (v8)
      {
        v9 = [v8 isInteractive];
        swift_unknownObjectRelease();
        v10 = v9 ^ 1;
      }

      else
      {
        v10 = 1;
      }

      if ([v7 _appearState] == 2)
      {
      }

      else
      {
        v11 = [v7 _appearState];

        if ((v11 != 3) | v10 & 1)
        {
LABEL_18:
          memset(&_, 0, 32);
          _.is_nil = 1;
          v28.value.super.isa = 0;
          v28.is_nil = v6;
          _UIHostingView.legacySetKeyboardFrame(_:screen:seed:)(&_, v28, v12);

          return;
        }
      }

      v13 = _UIHostingView.base.getter();
      v14 = UIHostingViewBase.updatesWillBeVisible.getter();

      if ((v14 & 1) != 0 && (_UIHostingView.isExitingForeground.getter() & 1) == 0)
      {
        v15 = NSNotification.keyboardAnimationDuration.getter();
        if ((v16 & 1) == 0)
        {
          v17 = v15;
          v18 = NSNotification.keyboardAnimationCurve.getter();
          if ((v20 & 1) == 0)
          {
            v19.n128_u64[0] = v17;
            v21 = static Animation.uiViewAnimation(curve:duration:)(v18, v19);
            if (v21)
            {
              v22 = _UIHostingView.viewGraph.getter(v21);
              swift_beginAccess();
              v23 = *(v22 + 128);

              if (v23 == 1)
              {
                _UIHostingView.viewGraph.getter(v24);

                Transaction.init(animation:)();
                v25 = swift_allocObject();
                swift_unknownObjectWeakInit();
                v26 = swift_allocObject();
                *(v26 + 16) = *(v3 + 80);
                *(v26 + 24) = *(v3 + 88);
                *(v26 + 32) = v25;
                *(v26 + 40) = v6;

                default argument 1 of GraphHost.asyncTransaction(_:id:_:)();
                GraphHost.asyncTransaction(_:id:_:)();

                return;
              }
            }
          }
        }
      }

      goto LABEL_18;
    }
  }
}

void closure #1 in _UIHostingView._legacyKeyboardWillHide(note:)(uint64_t a1, Swift::Bool a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    memset(&_, 0, 32);
    _.is_nil = 1;
    v7.value.super.isa = 0;
    v7.is_nil = a2;
    _UIHostingView.legacySetKeyboardFrame(_:screen:seed:)(&_, v7, v4);
  }
}

Swift::Void __swiftcall _UIHostingView._legacyKeyboardFrameWillChange(note:)(NSNotification note)
{
  static Semantics.v7.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) == 0)
  {
    v2 = [objc_opt_self() currentDevice];
    v3 = [v2 userInterfaceIdiom];

    if (v3 || (NSNotification.keyboardIsLocal.getter(), (v4 & 1) != 0))
    {
      v5 = MEMORY[0x1E69E7D40];
      if ((*(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0xB0) + 32) & 1) == 0)
      {
        v6 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xB8);
        v7 = *(v1 + v6) + 1;
        *(v1 + v6) = v7;
        if ((_UIHostingView.legacyShouldAddKeyboardToSafeArea.getter() & 1) != 0 && (NSNotification.keyboardFrame.getter(v14), (v15 & 1) == 0) && (v11 = v14[1], *v12 = v14[0], (v9 = NSNotification.keyboardScreen.getter()) != 0))
        {
          _.value.origin = *v12;
          _.value.size = v11;
          _.is_nil = 0;
          v10 = *(v1 + *((*v5 & *v1) + 0xC8));
          v13 = v9;

          _UIHostingView.legacyUpdateKeyboardFrame(_:screen:animation:seed:)(&_, v13, v10, v7);
        }

        else
        {
          memset(&_, 0, 32);
          _.is_nil = 1;
          v18.value.super.isa = 0;
          v18.is_nil = v7;
          _UIHostingView.legacySetKeyboardFrame(_:screen:seed:)(&_, v18, v8);
        }
      }
    }
  }
}

void closure #1 in _UIHostingView.legacyUpdateKeyboardFrame(_:screen:animation:seed:)(uint64_t a1, uint64_t a2, __C::CGRect_optional *a3, objc_class *a4, Swift::Bool a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(Strong + *((*MEMORY[0x1E69E7D40] & *Strong) + 0xC8)) = a2;
    v10 = Strong;
  }

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v13 = v11;
    v14.value.super.isa = a4;
    v14.is_nil = a5;
    _UIHostingView.legacySetKeyboardFrame(_:screen:seed:)(a3, v14, v12);
  }
}

id NSNotification.keyboardAnimationDuration.getter()
{
  result = [v0 userInfo];
  if (result)
  {
    v2 = result;
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    *&v7[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v7[0] + 1) = v4;
    AnyHashable.init<A>(_:)();
    if (*(v3 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(v8), (v6 & 1) != 0))
    {
      outlined init with copy of Any(*(v3 + 56) + 32 * v5, v7);
      outlined destroy of AnyHashable(v8);

      outlined init with take of Any(v7, v9);
      outlined init with take of Any(v9, v8);
      if (swift_dynamicCast())
      {
        return *&v7[0];
      }

      else
      {
        return 0;
      }
    }

    else
    {

      outlined destroy of AnyHashable(v8);
      return 0;
    }
  }

  return result;
}

id NSNotification.keyboardAnimationCurve.getter()
{
  result = [v0 userInfo];
  if (result)
  {
    v2 = result;
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    *&v7[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v7[0] + 1) = v4;
    AnyHashable.init<A>(_:)();
    if (*(v3 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(v8), (v6 & 1) != 0))
    {
      outlined init with copy of Any(*(v3 + 56) + 32 * v5, v7);
      outlined destroy of AnyHashable(v8);

      outlined init with take of Any(v7, v9);
      outlined init with take of Any(v9, v8);
      if (swift_dynamicCast())
      {
        return *&v7[0];
      }

      else
      {
        return 0;
      }
    }

    else
    {

      outlined destroy of AnyHashable(v8);
      return 0;
    }
  }

  return result;
}

void NSNotification.keyboardIsLocal.getter()
{
  v1 = [v0 userInfo];
  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *&v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v8 + 1) = v4;
  AnyHashable.init<A>(_:)();
  if (!*(v3 + 16) || (v5 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v6 & 1) == 0))
  {

    outlined destroy of AnyHashable(v7);
LABEL_7:
    v8 = 0u;
    v9 = 0u;
    goto LABEL_8;
  }

  outlined init with copy of Any(*(v3 + 56) + 32 * v5, &v8);
  outlined destroy of AnyHashable(v7);

  if (*(&v9 + 1))
  {
    swift_dynamicCast();
    return;
  }

LABEL_8:
  outlined destroy of Any?(&v8);
}

void *MapKitViewTraitCollection.init()@<X0>(void *a1@<X8>)
{
  result = ViewTraitCollection.init()();
  *a1 = v3;
  return result;
}

uint64_t MapKitViewTraitCollection.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  specialized MapKitViewTraitCollection.subscript.setter(a1, a2, a3, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 8);

  return v6(a1, AssociatedTypeWitness);
}

void (*MapKitViewTraitCollection.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a4;
  v10[3] = v4;
  *v10 = a2;
  v10[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[4] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v11[5] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v11[7] = v15;
  ViewTraitCollection.value<A>(for:)();
  return MapKitViewTraitCollection.subscript.modify;
}

void MapKitViewTraitCollection.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v6 + 16))((*a1)[6], v4, v5);
    specialized MapKitViewTraitCollection.subscript.setter(v3, v9, v8, v7);
    v10 = *(v6 + 8);
    v10(v3, v5);
    v10(v4, v5);
  }

  else
  {
    specialized MapKitViewTraitCollection.subscript.setter((*a1)[7], v9, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t specialized MapKitViewTraitCollection.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v8 + 16))(&v10 - v7, a1, v6);
  return ViewTraitCollection.subscript.setter();
}

void key path getter for EnvironmentValues.menuTitleVisibility : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for HStack<ControlGroupStyleConfiguration.Label>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuTitleVisibilityKey>, &type metadata for MenuTitleVisibilityKey, &protocol witness table for MenuTitleVisibilityKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<MenuTitleVisibilityKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for HStack<ControlGroupStyleConfiguration.Label>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuTitleVisibilityKey>, &type metadata for MenuTitleVisibilityKey, &protocol witness table for MenuTitleVisibilityKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<MenuTitleVisibilityKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

double key path setter for EnvironmentValues.menuTitleVisibility : EnvironmentValues(char *a1, void *a2)
{
  type metadata accessor for HStack<ControlGroupStyleConfiguration.Label>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuTitleVisibilityKey>, &type metadata for MenuTitleVisibilityKey, &protocol witness table for MenuTitleVisibilityKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<MenuTitleVisibilityKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

uint64_t PaletteControlGroupStyle.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = swift_getKeyPath();
  *(a1 + 16) = 0;
  result = swift_getKeyPath();
  *(a1 + 24) = result;
  *(a1 + 32) = 0;
  return result;
}

uint64_t PaletteControlGroupStyle.makeBody(configuration:)@<X0>(uint64_t a2@<X8>)
{
  v4 = v2[1];
  v20 = *v2;
  v21 = v4;
  v22 = *(v2 + 32);
  v16 = static VerticalAlignment.center.getter();
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();
  v6 = swift_getKeyPath();
  v18 = 0;
  v19 = 1;
  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  v17[5] = Namespace.wrappedValue.getter();
  _print_unlocked<A, B>(_:_:)();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0xE000000000000000;
  v8 = swift_getKeyPath();
  specialized Environment.wrappedValue.getter(*(&v20 + 1), v21, v17);
  v9 = LOWORD(v17[0]);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 48) = 0;
  v11 = swift_allocObject();
  v12 = v21;
  *(v11 + 16) = v20;
  *(v11 + 32) = v12;
  *(v11 + 48) = v22;
  v13 = swift_getKeyPath();
  *a2 = v16;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = KeyPath;
  *(a2 + 64) = 0;
  *(a2 + 65) = 0;
  *(a2 + 72) = v5;
  *(a2 + 80) = 0;
  *(a2 + 81) = 0;
  *(a2 + 88) = v6;
  *(a2 + 96) = 0;
  *(a2 + 104) = partial apply for closure #1 in View.platformItemIdentifier(_:);
  *(a2 + 112) = v7;
  *(a2 + 120) = v8;
  *(a2 + 128) = 1;
  *(a2 + 136) = partial apply for closure #1 in View.platformItemSystemType(_:);
  *(a2 + 144) = v10;
  *(a2 + 152) = partial apply for closure #3 in PaletteControlGroupStyle.makeBody(configuration:);
  *(a2 + 160) = v11;
  *(a2 + 168) = v13;
  *(a2 + 176) = closure #4 in PaletteControlGroupStyle.makeBody(configuration:);
  *(a2 + 184) = 0;
  return outlined init with copy of PaletteControlGroupStyle(&v20, v17);
}

void closure #3 in PaletteControlGroupStyle.makeBody(configuration:)(uint64_t *a1, uint64_t a2)
{
  if (specialized Environment.wrappedValue.getter(*(a2 + 24), *(a2 + 32)) == 2)
  {
    v3 = *a1;
    v4 = *(*a1 + 16);
    if (v4)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_10:
        v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
      }

      for (i = 0; i != v4; ++i)
      {
        if (i >= v3[2])
        {
          __break(1u);
          goto LABEL_10;
        }

        v6 = *(type metadata accessor for PlatformItemList.Item(0) - 8);
        v7 = v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
        v8 = *(v6 + 72) * i;
        v9 = *&v7[v8];
        *&v7[v8] = 0;
      }

      *a1 = v3;
    }
  }
}

_BYTE *closure #4 in PaletteControlGroupStyle.makeBody(configuration:)(_BYTE *result)
{
  if (!*result)
  {
    *result = 2;
  }

  return result;
}

uint64_t destroy for PaletteControlGroupStyle(uint64_t a1)
{
  outlined consume of Environment<Selector?>.Content(*(a1 + 8), *(a1 + 16));
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);

  return outlined consume of Environment<Selector?>.Content(v2, v3);
}

uint64_t initializeWithCopy for PaletteControlGroupStyle(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  v5 = *(a2 + 16);
  outlined copy of Environment<Selector?>.Content(v4, v5);
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  v6 = *(v2 + 24);
  LOBYTE(v2) = *(v2 + 32);
  outlined copy of Environment<Selector?>.Content(v6, v2);
  *(a1 + 24) = v6;
  *(a1 + 32) = v2;
  return a1;
}

uint64_t assignWithCopy for PaletteControlGroupStyle(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  *a1 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of Environment<Selector?>.Content(v4, v5);
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(v2 + 24);
  LOBYTE(v2) = *(v2 + 32);
  outlined copy of Environment<Selector?>.Content(v8, v2);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  *(a1 + 24) = v8;
  *(a1 + 32) = v2;
  outlined consume of Environment<Selector?>.Content(v9, v10);
  return a1;
}

uint64_t assignWithTake for PaletteControlGroupStyle(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  outlined consume of Environment<Selector?>.Content(v5, v6);
  v7 = *(a2 + 32);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v7;
  outlined consume of Environment<Selector?>.Content(v8, v9);
  return a1;
}

uint64_t getEnumTagSinglePayload for PaletteControlGroupStyle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PaletteControlGroupStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>, _EnvironmentKeyWritingModifier<Bool>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, _EnvironmentKeyTransformModifier<MenuActionDismissBehavior>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>, _EnvironmentKeyWritingModifier<Bool>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, _EnvironmentKeyTransformModifier<MenuActionDismissBehavior>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>, _EnvironmentKeyWritingModifier<Bool>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>, _EnvironmentKeyWritingModifier<Bool>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>, _EnvironmentKeyWritingModifier<Bool>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<MenuActionDismissBehavior>, &type metadata for MenuActionDismissBehavior, MEMORY[0x1E6980B20]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>, _EnvironmentKeyWritingModifier<Bool>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, _EnvironmentKeyTransformModifier<MenuActionDismissBehavior>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>, _EnvironmentKeyWritingModifier<Bool>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    type metadata accessor for HStack<ControlGroupStyleConfiguration.Label>(255, &lazy cache variable for type metadata for PlatformItemListTransformModifier<LayoutPlatformItemListFlags>, &type metadata for LayoutPlatformItemListFlags, &protocol witness table for LayoutPlatformItemListFlags, type metadata accessor for PlatformItemListTransformModifier);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>, _EnvironmentKeyWritingModifier<Bool>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>, _EnvironmentKeyWritingModifier<Bool>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>(255);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>, _EnvironmentKeyWritingModifier<Bool>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>)
  {
    type metadata accessor for ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>(255);
    type metadata accessor for HStack<ControlGroupStyleConfiguration.Label>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<PlatformItemList.Key>, &type metadata for PlatformItemList.Key, &protocol witness table for PlatformItemList.Key, MEMORY[0x1E6980910]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>);
    }
  }
}

void type metadata accessor for ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>)
  {
    type metadata accessor for Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>(255);
    type metadata accessor for LabelStyleWritingModifier<TitleAndIconLabelStyle>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>);
    }
  }
}

void type metadata accessor for Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>)
  {
    type metadata accessor for HStack<ControlGroupStyleConfiguration.Label>(255, &lazy cache variable for type metadata for HStack<ControlGroupStyleConfiguration.Label>, &type metadata for ControlGroupStyleConfiguration.Label, &protocol witness table for ControlGroupStyleConfiguration.Label, MEMORY[0x1E69817F0]);
    v5[0] = v2;
    v5[1] = &type metadata for ControlGroupStyleConfiguration.Content;
    v5[2] = lazy protocol witness table accessor for type HStack<ControlGroupStyleConfiguration.Label> and conformance HStack<A>();
    v5[3] = &protocol witness table for ControlGroupStyleConfiguration.Content;
    v3 = type metadata accessor for Menu(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type HStack<ControlGroupStyleConfiguration.Label> and conformance HStack<A>()
{
  result = lazy protocol witness table cache variable for type HStack<ControlGroupStyleConfiguration.Label> and conformance HStack<A>;
  if (!lazy protocol witness table cache variable for type HStack<ControlGroupStyleConfiguration.Label> and conformance HStack<A>)
  {
    type metadata accessor for HStack<ControlGroupStyleConfiguration.Label>(255, &lazy cache variable for type metadata for HStack<ControlGroupStyleConfiguration.Label>, &type metadata for ControlGroupStyleConfiguration.Label, &protocol witness table for ControlGroupStyleConfiguration.Label, MEMORY[0x1E69817F0]);
    result = swift_getWitnessTable(MEMORY[0x1E69817F8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HStack<ControlGroupStyleConfiguration.Label> and conformance HStack<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>, _EnvironmentKeyWritingModifier<Bool>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>, _EnvironmentKeyWritingModifier<Bool>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>, _EnvironmentKeyWritingModifier<Bool>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>, _EnvironmentKeyWritingModifier<Bool>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>, _EnvironmentKeyWritingModifier<Bool>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>, _EnvironmentKeyWritingModifier<Bool>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>, _EnvironmentKeyWritingModifier<Bool>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>();
    v5[1] = &protocol witness table for PlatformItemListTransformModifier<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>, _EnvironmentKeyWritingModifier<Bool>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>, _EnvironmentKeyWritingModifier<Bool>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>, _EnvironmentKeyWritingModifier<Bool>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>, _EnvironmentKeyWritingModifier<Bool>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>, _EnvironmentKeyWritingModifier<Bool>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>, _EnvironmentKeyWritingModifier<Bool>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, _EnvironmentKeyTransformModifier<MenuActionDismissBehavior>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>, _EnvironmentKeyWritingModifier<Bool>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>, _EnvironmentKeyWritingModifier<Bool>>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>);
    v5[1] = &protocol witness table for PlatformItemListTransformModifier<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>, _EnvironmentKeyWritingModifier<Bool>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, _PreferenceTransformModifier<PlatformItemList.Key>>, _EnvironmentKeyWritingModifier<Bool>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, _EnvironmentKeyTransformModifier<MenuActionDismissBehavior>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v8 = a2(255);
    v9[0] = a3();
    v9[1] = a4();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type LabelStyleWritingModifier<TitleAndIconLabelStyle> and conformance LabelStyleWritingModifier<A>(&lazy protocol witness table cache variable for type Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content> and conformance Menu<A, B>, type metadata accessor for Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, protocol conformance descriptor for Menu<A, B>);
    v5[1] = lazy protocol witness table accessor for type LabelStyleWritingModifier<TitleAndIconLabelStyle> and conformance LabelStyleWritingModifier<A>(&lazy protocol witness table cache variable for type LabelStyleWritingModifier<TitleAndIconLabelStyle> and conformance LabelStyleWritingModifier<A>, type metadata accessor for LabelStyleWritingModifier<TitleAndIconLabelStyle>, protocol conformance descriptor for LabelStyleWritingModifier<A>);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Menu<HStack<ControlGroupStyleConfiguration.Label>, ControlGroupStyleConfiguration.Content>, LabelStyleWritingModifier<TitleAndIconLabelStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type LabelStyleWritingModifier<TitleAndIconLabelStyle> and conformance LabelStyleWritingModifier<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<MenuActionDismissBehavior> and conformance _EnvironmentKeyTransformModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<MenuActionDismissBehavior> and conformance _EnvironmentKeyTransformModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<MenuActionDismissBehavior> and conformance _EnvironmentKeyTransformModifier<A>)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<MenuActionDismissBehavior>, &type metadata for MenuActionDismissBehavior, MEMORY[0x1E6980B20]);
    result = swift_getWitnessTable(MEMORY[0x1E6980B30], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<MenuActionDismissBehavior> and conformance _EnvironmentKeyTransformModifier<A>);
  }

  return result;
}

uint64_t SheetPreference.Value.dismissalTransaction(for:)(uint64_t a1)
{
  outlined init with copy of SheetPreference.Value(v1, v8);
  if (v9)
  {
    if (v9 == 1)
    {
      outlined destroy of SheetPreference.Value(v8);
    }
  }

  else
  {
    v3 = v8[0];
    if (*(v8[0] + 16))
    {
      v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
      if (v5)
      {
        v6 = *(*(v3 + 56) + 8 * v4);

        return v6;
      }
    }
  }

  return 1;
}

unint64_t SheetPreference.Value.debugDescription.getter()
{
  outlined init with copy of SheetPreference.Value(v0, v9);
  if (v11)
  {
    if (v11 == 1)
    {
      v7[4] = v9[4];
      v8[0] = *v10;
      *(v8 + 10) = *&v10[10];
      v7[0] = v9[0];
      v7[1] = v9[1];
      v7[2] = v9[2];
      v7[3] = v9[3];
      v4[0] = 0;
      v4[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(20);

      v5 = 0xD000000000000012;
      v6 = 0x800000018CD47AE0;
      outlined init with copy of SheetPreference(v7, v4);
      v1 = String.init<A>(describing:)();
      MEMORY[0x18D00C9B0](v1);

      v2 = v5;
      outlined destroy of SheetPreference(v7);
      return v2;
    }

    else
    {
      return 0xD000000000000013;
    }
  }

  else
  {
    outlined destroy of SheetPreference.Value(v9);
    return 0xD000000000000016;
  }
}

uint64_t closure #1 in ItemSheetPresentationModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v37 = a8;
  KeyPath = a1;
  v42 = a9;
  type metadata accessor for Optional();
  v15 = type metadata accessor for Binding();
  v16 = *(v15 - 8);
  v38 = v15;
  v39 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v33 - v17;
  v20 = type metadata accessor for SheetContent(0, a4, a7, v19);
  v41 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v36 = &v33 - v21;
  type metadata accessor for _EnvironmentKeyWritingModifier<Binding<PresentationMode>>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Binding<PresentationMode>>, &lazy cache variable for type metadata for Binding<PresentationMode>, &type metadata for PresentationMode, MEMORY[0x1E6981948]);
  v40 = type metadata accessor for ModifiedContent();
  MEMORY[0x1EEE9AC00](v40);
  v35 = &v33 - v22;
  v23 = a2;
  v24 = v37;
  closure #1 in closure #1 in ItemSheetPresentationModifier.body(content:)(v23, KeyPath, a3, a4);
  KeyPath = swift_getKeyPath();
  v45 = a3;
  v46 = a4;
  v47 = a5;
  v48 = a6;
  v49 = a7;
  v50 = v24;
  v25 = type metadata accessor for ItemSheetPresentationModifier(0, &v45);
  ItemSheetPresentationModifier.item.getter(v25, MEMORY[0x1E6981928]);
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  v27 = type metadata accessor for PresentationMode.FromItem(0, a3, a6, v26);
  swift_getWitnessTable(protocol conformance descriptor for PresentationMode.FromItem<A>, v27);
  v28 = v38;
  Binding.projecting<A>(_:)();
  (*(v39 + 8))(v18, v28);
  v43[2] = v45;
  v43[3] = v46;
  v44 = v47;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SheetContent<A>, v20);
  v30 = v36;
  View.environment<A>(_:_:)();

  (*(v41 + 8))(v30, v20);
  v31 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Binding<PresentationMode>> and conformance _EnvironmentKeyWritingModifier<A>();
  v43[0] = WitnessTable;
  v43[1] = v31;
  swift_getWitnessTable(MEMORY[0x1E697E858], v40, v43);
  result = AnyView.init<A>(_:)();
  *v42 = result;
  return result;
}

uint64_t closure #1 in closure #1 in ItemSheetPresentationModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v22 - v11;
  v22[0] = v13;
  v22[1] = v14;
  v22[2] = v15;
  v22[3] = v16;
  v22[4] = v17;
  v22[5] = v18;
  v19 = type metadata accessor for ItemSheetPresentationModifier(0, v22);
  (*(a1 + *(v19 + 72)))(a2);
  static ViewBuilder.buildExpression<A>(_:)();
  v20 = *(v7 + 8);
  v20(v9, a4);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v20)(v12, a4);
}

uint64_t closure #2 in ItemSheetPresentationModifier.body(content:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = a8;
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v23 - v18;
  if (a1)
  {
    (*(*(a3 - 8) + 56))(v19, 1, 1, a3, v17);
    v25 = a3;
    v26 = a4;
    v27 = a5;
    v28 = a6;
    v29 = a7;
    v30 = v24;
    v20 = type metadata accessor for ItemSheetPresentationModifier(0, &v25);
    specialized ItemSheetPresentationModifier.item.setter(v19, v20);
    (*(v16 + 8))(v19, v15);
  }

  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  v30 = v24;
  result = type metadata accessor for ItemSheetPresentationModifier(0, &v25);
  v22 = (a2 + *(result + 68));
  if (*v22)
  {
    return (*v22)();
  }

  return result;
}

uint64_t closure #2 in SheetPresentationModifier.body(content:)(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {
    v8[0] = a3;
    v8[1] = a4;
    v8[2] = a5;
    v8[3] = a6;
    type metadata accessor for SheetPresentationModifier(0, v8);
    LOBYTE(v8[0]) = 0;
    result = dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  v7 = a2[3];
  if (v7)
  {
    return v7(result, a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t View.sheet<A, B>(item:drawsBackground:content:)@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, unsigned __int8 a12)
{
  v37 = a8;
  v35 = a9;
  v36 = a5;
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v30 = a1;
  v31 = a12;
  type metadata accessor for Optional();
  v13 = type metadata accessor for Binding();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v29 - v15;
  type metadata accessor for NullSheetAnchor<SheetPreference.Key>(255, &lazy cache variable for type metadata for NullSheetAnchor<SheetPreference.Key>, &type metadata for SheetPreference.Key, &protocol witness table for SheetPreference.Key, type metadata accessor for NullSheetAnchor);
  v18 = v17;
  v22 = lazy protocol witness table accessor for type NullSheetAnchor<SheetPreference.Key> and conformance NullSheetAnchor<A>(v17, v19, v20, v21);
  v38[0] = a6;
  v38[1] = a7;
  v38[2] = v18;
  v39 = a10;
  v40 = v22;
  v23 = type metadata accessor for ItemSheetPresentationModifier(0, v38);
  v24 = *(v23 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v29 - v26;
  (*(v14 + 16))(v16, v30, v13, v25);
  ItemSheetPresentationModifier<>.init(item:onDismiss:sheetContent:placement:drawsBackground:)(v16, 0, 0, v32, v33, v31, v34, a6, v27, a7, a10);

  MEMORY[0x18D00A570](v27, v36, v23, v37);
  return (*(v24 + 8))(v27, v23);
}

uint64_t View.sheet<A>(isPresented:drawsBackground:content:)(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  SheetPresentationModifier<>.init(isPresented:onDismiss:sheetContent:placement:drawsBackground:)(a1, a2, a3, 0, 0, a5, a6, a11, v21, a4, a8, a10);
  type metadata accessor for NullSheetAnchor<SheetPreference.Key>(255, &lazy cache variable for type metadata for NullSheetAnchor<SheetPreference.Key>, &type metadata for SheetPreference.Key, &protocol witness table for SheetPreference.Key, type metadata accessor for NullSheetAnchor);
  v14 = v13;
  v18 = lazy protocol witness table accessor for type NullSheetAnchor<SheetPreference.Key> and conformance NullSheetAnchor<A>(v13, v15, v16, v17);

  *&v23 = a8;
  *(&v23 + 1) = v14;
  *&v24 = a10;
  *(&v24 + 1) = v18;
  v19 = type metadata accessor for SheetPresentationModifier(0, &v23);
  MEMORY[0x18D00A570](v21, a7, v19, a9);
  v23 = v21[0];
  v24 = v21[1];
  v25[0] = v22[0];
  *(v25 + 11) = *(v22 + 11);
  return (*(*(v19 - 8) + 8))(&v23, v19);
}

uint64_t View.formSheet<A, B>(item:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v72 = a9;
  v70 = a3;
  v71 = a7;
  v66 = a6;
  v67 = a1;
  v68 = a4;
  v69 = a2;
  type metadata accessor for Optional();
  v12 = type metadata accessor for Binding();
  v57 = v12;
  v73 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v54 - v13;
  type metadata accessor for NullSheetAnchor<SheetPreference.Key>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<PresentationOptionsPreferenceKey>, &type metadata for PresentationOptionsPreferenceKey, &protocol witness table for PresentationOptionsPreferenceKey, MEMORY[0x1E6980910]);
  v15 = type metadata accessor for ModifiedContent();
  v60 = v15;
  type metadata accessor for NullSheetAnchor<SheetPreference.Key>(255, &lazy cache variable for type metadata for NullSheetAnchor<SheetPreference.Key>, &type metadata for SheetPreference.Key, &protocol witness table for SheetPreference.Key, type metadata accessor for NullSheetAnchor);
  v17 = v16;
  v18 = lazy protocol witness table accessor for type _PreferenceTransformModifier<PresentationOptionsPreferenceKey> and conformance _PreferenceTransformModifier<A>();
  v75[0] = a10;
  v75[1] = v18;
  v56 = a10;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v15, v75);
  v23 = lazy protocol witness table accessor for type NullSheetAnchor<SheetPreference.Key> and conformance NullSheetAnchor<A>(WitnessTable, v20, v21, v22);
  v74[0] = a5;
  v74[1] = v15;
  v74[2] = v17;
  v74[3] = a8;
  v24 = a8;
  v74[4] = WitnessTable;
  v74[5] = v23;
  v55 = WitnessTable;
  v25 = type metadata accessor for ItemSheetPresentationModifier(0, v74);
  MEMORY[0x1EEE9AC00](v25);
  v63 = &v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v54 - v28;
  v59 = &v54 - v28;
  type metadata accessor for NullSheetAnchor<SheetPreference.Key>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<PadInterfaceIdiom>, MEMORY[0x1E697F278], MEMORY[0x1E697F270], MEMORY[0x1E69801E0]);
  v62 = v25;
  v30 = type metadata accessor for StaticIf();
  v31 = *(v30 - 8);
  v64 = v30;
  v65 = v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v61 = &v54 - v33;
  v34 = *(v73 + 16);
  v73 += 16;
  v58 = v34;
  v35 = v67;
  (v34)(v14, v67, v12, v32);
  v36 = swift_allocObject();
  v37 = v68;
  v36[2] = v68;
  v36[3] = a5;
  v38 = a5;
  v39 = v66;
  v40 = v71;
  v36[4] = v66;
  v36[5] = v40;
  v41 = v24;
  v36[6] = v24;
  v36[7] = a10;
  v43 = v69;
  v42 = v70;
  v36[8] = v69;
  v36[9] = v42;
  *&v52 = v41;
  *(&v52 + 1) = WitnessTable;
  v44 = v60;
  v45 = v29;
  v46 = v38;
  ItemSheetPresentationModifier<>.init(item:onDismiss:sheetContent:placement:drawsBackground:)(v14, 0, 0, partial apply for closure #1 in View.formSheet<A, B>(item:content:), v36, 2, 1, v38, v45, v60, v52);
  v58(v14, v35, v57);
  v47 = swift_allocObject();
  v47[2] = v37;
  v47[3] = v46;
  v47[4] = v39;
  v47[5] = v40;
  v48 = v56;
  v47[6] = v41;
  v47[7] = v48;
  v47[8] = v43;
  v47[9] = v42;
  *&v53 = v41;
  *(&v53 + 1) = v55;
  ItemSheetPresentationModifier<>.init(item:onDismiss:sheetContent:placement:drawsBackground:)(v14, 0, 0, partial apply for closure #2 in View.formSheet<A, B>(item:content:), v47, 0, 1, v46, v63, v44, v53);
  swift_retain_n();
  swift_getWitnessTable(protocol conformance descriptor for ItemSheetPresentationModifier<A, B, C>, v62);
  v49 = v61;
  StaticIf<>.init<A>(idiom:then:else:)();
  v50 = v64;
  MEMORY[0x18D00A570](v49, v37, v64, v40);
  return (*(v65 + 8))(v49, v50);
}

uint64_t closure #1 in View.formSheet<A, B>(item:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(a6 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14(v11);
  View.transformPreference<A>(_:_:)();
  return (*(v10 + 8))(v13, a6);
}

uint64_t closure #1 in View.formSheet<A>(isPresented:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a4 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11(v8);
  View.transformPreference<A>(_:_:)();
  return (*(v7 + 8))(v10, a4);
}

void *key path getter for EnvironmentValues.tintAdjustmentMode : EnvironmentValues@<X0>(_BYTE *a2@<X8>)
{
  result = EnvironmentValues.tintAdjustmentMode.getter();
  *a2 = v4;
  return result;
}

void key path getter for EnvironmentValues.menuIndicatorProminenceReduced : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for NullSheetAnchor<SheetPreference.Key>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ReducedMenuIndicatorProminence>, &type metadata for ReducedMenuIndicatorProminence, &protocol witness table for ReducedMenuIndicatorProminence, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ReducedMenuIndicatorProminence> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for NullSheetAnchor<SheetPreference.Key>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ReducedMenuIndicatorProminence>, &type metadata for ReducedMenuIndicatorProminence, &protocol witness table for ReducedMenuIndicatorProminence, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ReducedMenuIndicatorProminence> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

double key path setter for EnvironmentValues.menuIndicatorProminenceReduced : EnvironmentValues(char *a1, void *a2)
{
  type metadata accessor for NullSheetAnchor<SheetPreference.Key>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ReducedMenuIndicatorProminence>, &type metadata for ReducedMenuIndicatorProminence, &protocol witness table for ReducedMenuIndicatorProminence, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ReducedMenuIndicatorProminence> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

uint64_t *assignWithCopy for SheetPreference.Value(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 106);
    if (v4 >= 2)
    {
      v4 = *a1 + 2;
    }

    if (v4 == 1)
    {

      if (a1[1])
      {
      }

      if (a1[7])
      {
        __swift_destroy_boxed_opaque_existential_1(a1 + 4);
      }
    }

    else if (!v4)
    {
    }

    v5 = *(a2 + 106);
    if (v5 >= 2)
    {
      v5 = *a2 + 2;
    }

    if (v5 == 1)
    {
      *a1 = *a2;
      v6 = a2[1];

      if (v6)
      {
        v7 = a2[2];
        a1[1] = v6;
        a1[2] = v7;
      }

      else
      {
        *(a1 + 1) = *(a2 + 1);
      }

      a1[3] = a2[3];
      v13 = a2[7];
      if (v13)
      {
        a1[7] = v13;
        a1[8] = a2[8];
        (**(v13 - 8))(a1 + 4, a2 + 4);
      }

      else
      {
        v14 = *(a2 + 2);
        v15 = *(a2 + 3);
        a1[8] = a2[8];
        *(a1 + 2) = v14;
        *(a1 + 3) = v15;
      }

      *(a1 + 72) = *(a2 + 72);
      *(a1 + 73) = *(a2 + 73);
      a1[10] = a2[10];
      a1[11] = a2[11];
      a1[12] = a2[12];
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 105) = *(a2 + 105);
      *(a1 + 106) = 1;
    }

    else if (v5)
    {
      v8 = *a2;
      v9 = *(a2 + 2);
      *(a1 + 1) = *(a2 + 1);
      *(a1 + 2) = v9;
      *a1 = v8;
      v10 = *(a2 + 3);
      v11 = *(a2 + 4);
      v12 = *(a2 + 5);
      *(a1 + 91) = *(a2 + 91);
      *(a1 + 4) = v11;
      *(a1 + 5) = v12;
      *(a1 + 3) = v10;
    }

    else
    {
      *a1 = *a2;
      *(a1 + 106) = 0;
    }
  }

  return a1;
}

uint64_t assignWithTake for SheetPreference.Value(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 106);
    if (v4 >= 2)
    {
      v4 = *a1 + 2;
    }

    if (v4 == 1)
    {

      if (*(a1 + 8))
      {
      }

      if (*(a1 + 56))
      {
        __swift_destroy_boxed_opaque_existential_1((a1 + 32));
      }
    }

    else if (!v4)
    {
    }

    v5 = *(a2 + 106);
    if (v5 >= 2)
    {
      v5 = *a2 + 2;
    }

    if (v5 == 1)
    {
      v6 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v6;
      *(a1 + 90) = *(a2 + 90);
      v7 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v7;
      v8 = *(a2 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v8;
      *(a1 + 106) = 1;
    }

    else if (v5)
    {
      v9 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v9;
      *(a1 + 91) = *(a2 + 91);
      v10 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v10;
      v11 = *(a2 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v11;
    }

    else
    {
      *a1 = *a2;
      *(a1 + 106) = 0;
    }
  }

  return a1;
}

uint64_t getEnumTag for SheetPreference.Value(uint64_t a1)
{
  result = *(a1 + 106);
  if (result >= 2)
  {
    return (*a1 + 2);
  }

  return result;
}

uint64_t destructiveInjectEnumTag for SheetPreference.Value(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 90) = 0u;
    v2 = a2 - 2;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 106) = a2;
  return result;
}

uint64_t *assignWithCopy for SheetPreference(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  v4 = a2[1];
  if (a1[1])
  {
    if (v4)
    {
      v5 = a2[2];
      a1[1] = v4;
      a1[2] = v5;

      goto LABEL_8;
    }
  }

  else if (v4)
  {
    v6 = a2[2];
    a1[1] = v4;
    a1[2] = v6;

    goto LABEL_8;
  }

  *(a1 + 1) = *(a2 + 1);
LABEL_8:
  a1[3] = a2[3];
  v7 = a2[7];
  if (a1[7])
  {
    v8 = a1 + 4;
    if (v7)
    {
      __swift_assign_boxed_opaque_existential_1(v8, a2 + 4);
    }

    else
    {
      outlined destroy of AnyHashable(v8);
      v9 = a2[8];
      v10 = *(a2 + 3);
      *(a1 + 2) = *(a2 + 2);
      *(a1 + 3) = v10;
      a1[8] = v9;
    }
  }

  else if (v7)
  {
    a1[7] = v7;
    a1[8] = a2[8];
    (**(v7 - 8))(a1 + 4, a2 + 4);
  }

  else
  {
    v11 = *(a2 + 2);
    v12 = *(a2 + 3);
    a1[8] = a2[8];
    *(a1 + 2) = v11;
    *(a1 + 3) = v12;
  }

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 73) = *(a2 + 73);
  a1[10] = a2[10];

  a1[11] = a2[11];

  a1[12] = a2[12];

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 105) = *(a2 + 105);
  return a1;
}

uint64_t *assignWithTake for SheetPreference(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  v4 = a2[1];
  if (a1[1])
  {
    if (v4)
    {
      v5 = a2[2];
      a1[1] = v4;
      a1[2] = v5;

      goto LABEL_8;
    }
  }

  else if (v4)
  {
    v6 = a2[2];
    a1[1] = v4;
    a1[2] = v6;
    goto LABEL_8;
  }

  *(a1 + 1) = *(a2 + 1);
LABEL_8:
  a1[3] = a2[3];
  if (a1[7])
  {
    if (a2[7])
    {
      __swift_destroy_boxed_opaque_existential_1(a1 + 4);
    }

    else
    {
      outlined destroy of AnyHashable((a1 + 4));
    }
  }

  v7 = *(a2 + 3);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = v7;
  a1[8] = a2[8];
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 73) = *(a2 + 73);
  a1[10] = a2[10];

  a1[11] = a2[11];

  a1[12] = a2[12];

  *(a1 + 52) = *(a2 + 52);
  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for ItemSheetPresentationModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 16) & ~v6;
  if (*(v5 + 84))
  {
    v8 = *(v5 + 64);
  }

  else
  {
    v8 = *(v5 + 64) + 1;
  }

  v9 = v7 + v8;
  v10 = *(a3 + 32);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = (*(v11 + 80) | *(v5 + 80)) & 0x100000;
  v14 = ((-19 - v12 - ((((v7 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) | v12) - *(v11 + 64);
  v15 = *a2;
  *a1 = *a2;
  if ((v12 | v6) <= 7 && v13 == 0 && v14 >= 0xFFFFFFFFFFFFFFE7)
  {
    v36 = v11;
    v37 = v10;
    v38 = a1;
    v19 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    v21 = *v19;
    v20 = v19 + 1;
    v22 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v22 = v21;
    v23 = v22 + 1;
    v24 = *(v5 + 48);

    if (v24(v20, 1, v4))
    {
      memcpy(v23, v20, v8);
    }

    else
    {
      (*(v5 + 16))(v23, v20, v4);
      (*(v5 + 56))(v23, 0, 1, v4);
    }

    v18 = v38;
    v25 = (v38 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = (a2 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (*v26 < 0xFFFFFFFFuLL)
    {
      *v25 = *v26;
    }

    else
    {
      v27 = *(v26 + 8);
      *v25 = *v26;
      *(v25 + 8) = v27;
    }

    v28 = (v25 + 23) & 0xFFFFFFFFFFFFFFF8;
    v29 = (v26 + 23) & 0xFFFFFFFFFFFFFFF8;
    v30 = *(v29 + 8);
    *v28 = *v29;
    *(v28 + 8) = v30;
    *(v28 + 16) = *(v29 + 16);
    *(v28 + 17) = *(v29 + 17);
    v31 = v28 + v12 + 18;
    v32 = v29 + v12 + 18;
    v33 = *(v36 + 16);

    v33(v31 & ~v12, v32 & ~v12, v37);
  }

  else
  {
    v18 = (v15 + (((v12 | v6) & 0xF8 ^ 0x1F8) & ((v12 | v6) + 16)));
  }

  return v18;
}

void *initializeWithTake for ItemSheetPresentationModifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v7 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;
  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = v6 + v10 + 8;
  v12 = v7 + v10 + 8;
  if ((*(v9 + 48))(v12 & ~v10, 1, v8))
  {
    v13 = *(v9 + 84);
    v14 = *(v9 + 64);
    if (v13)
    {
      v15 = v14;
    }

    else
    {
      v15 = v14 + 1;
    }

    memcpy((v11 & ~v10), (v12 & ~v10), v15);
  }

  else
  {
    (*(v9 + 32))(v11 & ~v10, v12 & ~v10, v8);
    v17 = *(v9 + 56);
    v16 = v9 + 56;
    v17(v11 & ~v10, 0, 1, v8);
    v13 = *(v16 + 28);
    v14 = *(v16 + 8);
  }

  if (v13)
  {
    v18 = v14 + ((v10 + 16) & ~v10);
  }

  else
  {
    v18 = v14 + ((v10 + 16) & ~v10) + 1;
  }

  v19 = (a1 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (a2 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (*v20 < 0xFFFFFFFFuLL)
  {
    *v19 = *v20;
  }

  else
  {
    v21 = *(v20 + 8);
    *v19 = *v20;
    *(v19 + 8) = v21;
  }

  v22 = (v19 + 23) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v20 + 23) & 0xFFFFFFFFFFFFFFF8;
  *v22 = *v23;
  *(v22 + 16) = *(v23 + 16);
  *(v22 + 17) = *(v23 + 17);
  v24 = *(*(a3 + 32) - 8);
  (*(v24 + 32))((*(v24 + 80) + 18 + v22) & ~*(v24 + 80), (*(v24 + 80) + 18 + v23) & ~*(v24 + 80));
  return a1;
}

uint64_t *assignWithTake for ItemSheetPresentationModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = a2 + 15;
  *a1 = *a2;
  v7 = a1 + 15;

  v8 = v7 & 0xFFFFFFFFFFFFFFF8;
  *(v7 & 0xFFFFFFFFFFFFFFF8) = *(v6 & 0xFFFFFFFFFFFFFFF8);

  v29 = a3;
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = v11 + 8 + v8;
  v13 = v11 + 8 + (v6 & 0xFFFFFFFFFFFFFFF8);
  v14 = *(v10 + 48);
  LODWORD(v8) = v14(v12 & ~v11, 1, v9);
  v15 = v14(v13 & ~v11, 1, v9);
  if (v8)
  {
    if (v15)
    {
      v16 = *(v10 + 84);
      v17 = *(v10 + 64);
LABEL_6:
      if (v16)
      {
        v18 = v17;
      }

      else
      {
        v18 = v17 + 1;
      }

      memcpy((v12 & ~v11), (v13 & ~v11), v18);
      goto LABEL_12;
    }

    (*(v10 + 32))(v12 & ~v11, v13 & ~v11, v9);
    (*(v10 + 56))(v12 & ~v11, 0, 1, v9);
  }

  else
  {
    if (v15)
    {
      (*(v10 + 8))(v12 & ~v11, v9);
      v16 = *(v10 + 84);
      v17 = *(v10 + 64);
      goto LABEL_6;
    }

    (*(v10 + 40))(v12 & ~v11, v13 & ~v11, v9);
  }

LABEL_12:
  v19 = *(v10 + 64) + ((v11 + 16) & ~v11);
  if (!*(v10 + 84))
  {
    ++v19;
  }

  v20 = ((a1 + v19 + 7) & 0xFFFFFFFFFFFFFFF8);
  v21 = ((a2 + v19 + 7) & 0xFFFFFFFFFFFFFFF8);
  v22 = *v21;
  if (*v20 < 0xFFFFFFFFuLL)
  {
    if (v22 >= 0xFFFFFFFF)
    {
      v24 = v21[1];
      *v20 = v22;
      v20[1] = v24;
      goto LABEL_21;
    }

LABEL_20:
    *v20 = *v21;
    goto LABEL_21;
  }

  if (v22 < 0xFFFFFFFF)
  {

    goto LABEL_20;
  }

  v23 = v21[1];
  *v20 = v22;
  v20[1] = v23;

LABEL_21:
  v25 = (v20 + 23) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v21 + 23) & 0xFFFFFFFFFFFFFFF8;
  *v25 = *v26;

  *(v25 + 16) = *(v26 + 16);
  *(v25 + 17) = *(v26 + 17);
  v27 = *(*(v29 + 32) - 8);
  (*(v27 + 40))((*(v27 + 80) + 18 + v25) & ~*(v27 + 80), (*(v27 + 80) + 18 + v26) & ~*(v27 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for ItemSheetPresentationModifier(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(a3 + 32);
  v10 = *(v9 - 8);
  v11 = v10;
  v12 = *(v10 + 84);
  if (v12 <= v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = *(v5 + 80);
  v15 = *(v10 + 80);
  if (v6)
  {
    v16 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v16 = *(*(*(a3 + 16) - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = v16 + ((v14 + 16) & ~v14);
  v18 = v15 + 18;
  v19 = a2 - v13;
  if (a2 <= v13)
  {
    goto LABEL_37;
  }

  v20 = ((v18 + ((((v17 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v15) + *(*(v9 - 8) + 64);
  v21 = 8 * v20;
  if (v20 <= 3)
  {
    v24 = ((v19 + ~(-1 << v21)) >> v21) + 1;
    if (HIWORD(v24))
    {
      v22 = *(a1 + v20);
      if (!v22)
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }

    if (v24 > 0xFF)
    {
      v22 = *(a1 + v20);
      if (!*(a1 + v20))
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }

    if (v24 < 2)
    {
LABEL_37:
      if (v8 >= v12)
      {
        v30 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((v7 & 0x80000000) != 0)
        {
          v32 = (*(v5 + 48))((v30 + v14 + 8) & ~v14);
          if (v32 >= 2)
          {
            return v32 - 1;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          v31 = *v30;
          if (v31 >= 0xFFFFFFFF)
          {
            LODWORD(v31) = -1;
          }

          return (v31 + 1);
        }
      }

      else
      {
        v28 = *(v11 + 48);
        v29 = (v18 + ((((a1 + v17 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v15;

        return v28(v29, v12, v9);
      }
    }
  }

  v22 = *(a1 + v20);
  if (!*(a1 + v20))
  {
    goto LABEL_37;
  }

LABEL_24:
  v25 = (v22 - 1) << v21;
  if (v20 > 3)
  {
    v25 = 0;
  }

  if (v20)
  {
    if (v20 <= 3)
    {
      v26 = v20;
    }

    else
    {
      v26 = 4;
    }

    if (v26 > 2)
    {
      if (v26 == 3)
      {
        v27 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v27 = *a1;
      }
    }

    else if (v26 == 1)
    {
      v27 = *a1;
    }

    else
    {
      v27 = *a1;
    }
  }

  else
  {
    v27 = 0;
  }

  return v13 + (v27 | v25) + 1;
}

void storeEnumTagSinglePayload for ItemSheetPresentationModifier(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(a4 + 32);
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  v14 = *(v7 + 80);
  v15 = *(*(*(a4 + 16) - 8) + 64);
  v16 = *(v12 + 80);
  if (v13 <= v10)
  {
    v17 = v10;
  }

  else
  {
    v17 = *(v12 + 84);
  }

  if (!v8)
  {
    ++v15;
  }

  v18 = ((v14 + 16) & ~v14) + v15;
  v19 = ((v16 + 18 + ((((v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v16) + *(*(v11 - 8) + 64);
  v20 = a3 >= v17;
  v21 = a3 - v17;
  if (v21 == 0 || !v20)
  {
LABEL_27:
    if (v17 < a2)
    {
      goto LABEL_28;
    }

    goto LABEL_16;
  }

  if (v19 > 3)
  {
    v6 = 1;
    if (v17 < a2)
    {
      goto LABEL_28;
    }

    goto LABEL_16;
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

    goto LABEL_27;
  }

  v6 = 4;
  if (v17 < a2)
  {
LABEL_28:
    v24 = ~v17 + a2;
    if (v19 >= 4)
    {
      bzero(a1, v19);
      *a1 = v24;
      v25 = 1;
      if (v6 > 1)
      {
        goto LABEL_30;
      }

      goto LABEL_66;
    }

    v25 = (v24 >> (8 * v19)) + 1;
    if (v19)
    {
      v28 = v24 & ~(-1 << (8 * v19));
      bzero(a1, v19);
      if (v19 != 3)
      {
        if (v19 == 2)
        {
          *a1 = v28;
          if (v6 > 1)
          {
            goto LABEL_30;
          }
        }

        else
        {
          *a1 = v24;
          if (v6 > 1)
          {
LABEL_30:
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

LABEL_66:
        if (v6)
        {
          a1[v19] = v25;
        }

        return;
      }

      *a1 = v28;
      a1[2] = BYTE2(v28);
    }

    if (v6 > 1)
    {
      goto LABEL_30;
    }

    goto LABEL_66;
  }

LABEL_16:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v19] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
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

    goto LABEL_35;
  }

  if (!a2)
  {
    return;
  }

LABEL_35:
  if (v10 < v13)
  {
    v26 = *(v12 + 56);
    v27 = (v16 + 18 + (((&a1[v18 + 7] & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v16;

    v26(v27);
    return;
  }

  if (v10 < a2)
  {
    if (v18 <= 3)
    {
      v29 = ~(-1 << (8 * v18));
    }

    else
    {
      v29 = -1;
    }

    if (!v18)
    {
      return;
    }

    v30 = v29 & (~v10 + a2);
    if (v18 <= 3)
    {
      v31 = ((v14 + 16) & ~v14) + v15;
    }

    else
    {
      v31 = 4;
    }

    bzero(a1, ((v14 + 16) & ~v14) + v15);
    if (v31 <= 2)
    {
      if (v31 == 1)
      {
LABEL_54:
        *a1 = v30;
        return;
      }

LABEL_81:
      *a1 = v30;
      return;
    }

    goto LABEL_82;
  }

  v32 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v9 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      v33 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v33 = a2 - 1;
    }

    *v32 = v33;
    return;
  }

  v34 = v32 + v14 + 8;
  a1 = (v34 & ~v14);
  if (v9 < a2)
  {
    if (v15 <= 3)
    {
      v35 = ~(-1 << (8 * v15));
    }

    else
    {
      v35 = -1;
    }

    if (!v15)
    {
      return;
    }

    v30 = v35 & (~v9 + a2);
    if (v15 <= 3)
    {
      v31 = v15;
    }

    else
    {
      v31 = 4;
    }

    bzero(a1, v15);
    if (v31 <= 2)
    {
      if (v31 == 1)
      {
        goto LABEL_54;
      }

      goto LABEL_81;
    }

LABEL_82:
    if (v31 == 3)
    {
      *a1 = v30;
      a1[2] = BYTE2(v30);
    }

    else
    {
      *a1 = v30;
    }

    return;
  }

  v36 = *(v7 + 56);
  v37 = a2 + 1;

  v36(v34 & ~v14, v37);
}

uint64_t initializeBufferWithCopyOfBuffer for SheetPresentationModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(v5 + 80) & 0x100000;
  v9 = *a2;
  *a1 = *a2;
  if (v6 > 7 || v8 != 0 || v7 - ((-59 - v6) | v6) > 0x18)
  {
    a1 = v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16));
  }

  else
  {
    v24 = ~v6;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 16);
    v12 = a1 & 0xFFFFFFFFFFFFFFF8;
    v13 = a2 & 0xFFFFFFFFFFFFFFF8;
    v15 = ((a2 & 0xFFFFFFFFFFFFFFF8) + 24);
    v14 = *v15;

    if (v14 < 0xFFFFFFFF)
    {
      *(v12 + 24) = *v15;
    }

    else
    {
      v16 = v15[1];
      *(v12 + 24) = v14;
      *(v12 + 32) = v16;
    }

    v17 = (v12 + 47) & 0xFFFFFFFFFFFFFFF8;
    v18 = (v13 + 47) & 0xFFFFFFFFFFFFFFF8;
    v19 = *(v18 + 8);
    *v17 = *v18;
    *(v17 + 8) = v19;
    *(v17 + 16) = *(v18 + 16);
    *(v17 + 17) = *(v18 + 17);
    v20 = (v17 + v6 + 18) & v24;
    v21 = (v18 + v6 + 18) & v24;
    v22 = *(v5 + 16);

    v22(v20, v21, v4);
    *(v20 + v7) = *(v21 + v7);
  }

  return a1;
}

uint64_t initializeWithTake for SheetPresentationModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v4 = a1 & 0xFFFFFFFFFFFFFFF8;
  v5 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 24);
  if (v5 < 0xFFFFFFFF)
  {
    *(v4 + 24) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 24);
  }

  else
  {
    v6 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 32);
    *(v4 + 24) = v5;
    *(v4 + 32) = v6;
  }

  v7 = (v4 + 47) & 0xFFFFFFFFFFFFFFF8;
  v8 = ((a2 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  *(v7 + 16) = *(v8 + 16);
  *(v7 + 17) = *(v8 + 17);
  v9 = *(*(a3 + 24) - 8);
  v10 = v9 + 32;
  v11 = *(v9 + 80);
  v12 = (v11 + 18 + v7) & ~v11;
  v13 = (v11 + 18 + v8) & ~v11;
  (*(v9 + 32))(v12, v13);
  *(*(v10 + 32) + v12) = *(*(v10 + 32) + v13);
  return a1;
}

uint64_t assignWithTake for SheetPresentationModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  v6 = ((a1 & 0xFFFFFFFFFFFFFFF8) + 24);
  v7 = a2 & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v7 + 24);
  if (*v6 < 0xFFFFFFFF)
  {
    if (v8 >= 0xFFFFFFFF)
    {
      v10 = *(v7 + 32);
      *v6 = v8;
      *((a1 & 0xFFFFFFFFFFFFFFF8) + 32) = v10;
      goto LABEL_8;
    }

LABEL_7:
    *v6 = *(v7 + 24);
    goto LABEL_8;
  }

  if (v8 < 0xFFFFFFFF)
  {

    goto LABEL_7;
  }

  v9 = *(v7 + 32);
  *v6 = v8;
  *((a1 & 0xFFFFFFFFFFFFFFF8) + 32) = v9;

LABEL_8:
  v11 = ((a1 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  *v11 = *v12;

  *(v11 + 16) = *(v12 + 16);
  *(v11 + 17) = *(v12 + 17);
  v13 = *(*(a3 + 24) - 8);
  v14 = v13 + 40;
  v15 = *(v13 + 80);
  v16 = (v15 + 18 + v11) & ~v15;
  v17 = (v15 + 18 + v12) & ~v15;
  (*(v13 + 40))(v16, v17);
  *(*(v14 + 24) + v16) = *(*(v14 + 24) + v17);
  return a1;
}

uint64_t getEnumTagSinglePayload for SheetPresentationModifier(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
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

  v9 = *(*(*(a3 + 24) - 8) + 64) + ((v6 + 58) & ~v6) + 1;
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
        return (*(v4 + 48))(((((a1 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + v6 + 18) & ~v6);
      }

      v15 = *(a1 + 8);
      if (v15 >= 0xFFFFFFFF)
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

void storeEnumTagSinglePayload for SheetPresentationModifier(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
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
  v10 = *(*(*(a4 + 24) - 8) + 64) + ((v9 + 58) & ~v9) + 1;
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
      if (*(*(*(a4 + 24) - 8) + 64) + ((v9 + 58) & ~v9) != -1)
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
LABEL_46:
              if (v13 == 2)
              {
                *(a1 + v10) = v15;
              }

              else
              {
                *(a1 + v10) = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        *(a1 + 2) = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      *(a1 + v10) = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v10) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *(a1 + v10) = 0;
  }

  else if (v13)
  {
    *(a1 + v10) = 0;
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
    v19 = *(v6 + 56);
    v20 = ((((a1 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + v9 + 18) & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 16) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 8) = 0;
  }

  else
  {
    *(a1 + 8) = a2 - 1;
  }
}

unint64_t lazy protocol witness table accessor for type SheetPreference.Placement and conformance SheetPreference.Placement()
{
  result = lazy protocol witness table cache variable for type SheetPreference.Placement and conformance SheetPreference.Placement;
  if (!lazy protocol witness table cache variable for type SheetPreference.Placement and conformance SheetPreference.Placement)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SheetPreference.Placement, &type metadata for SheetPreference.Placement, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SheetPreference.Placement and conformance SheetPreference.Placement);
  }

  return result;
}

uint64_t View.inspectorSheet<A>(isPresented:activeInspector:content:)(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  type metadata accessor for NullSheetAnchor<SheetPreference.Key>(0, &lazy cache variable for type metadata for NullSheetAnchor<SheetPreference.InspectorKey>, &type metadata for SheetPreference.InspectorKey, &protocol witness table for SheetPreference.InspectorKey, type metadata accessor for NullSheetAnchor);
  v18 = v17;
  v19 = lazy protocol witness table accessor for type NullSheetAnchor<SheetPreference.InspectorKey> and conformance NullSheetAnchor<A>();
  *&v27 = a1;
  *(&v27 + 1) = a2;
  LOBYTE(v28) = a3;
  *(&v28 + 1) = 0;
  *v29 = 0;
  *&v29[8] = a5;
  *&v29[16] = a6;
  *&v29[24] = 256;
  *&v30 = a8;
  *(&v30 + 1) = v18;
  *&v31 = a10;
  *(&v31 + 1) = v19;
  v20 = type metadata accessor for SheetPresentationModifier(0, &v30);
  (*(*(v18 - 8) + 32))(&v27 + *(v20 + 68));
  *(&v27 + *(v20 + 72)) = a4;
  v24 = v27;
  v25 = v28;
  v26[0] = *v29;
  *(v26 + 11) = *&v29[11];

  *&v30 = a8;
  *(&v30 + 1) = v18;
  *&v31 = a10;
  *(&v31 + 1) = v19;
  v21 = type metadata accessor for SheetPresentationModifier(0, &v30);
  MEMORY[0x18D00A570](&v24, a7, v21, a9);
  v30 = v24;
  v31 = v25;
  v32[0] = v26[0];
  *(v32 + 11) = *(v26 + 11);
  return (*(*(v21 - 8) + 8))(&v30, v21);
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *, __n128), uint64_t a3, char a4, void *a5)
{
  v37 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v34 = a4;
    v13 = v11;
LABEL_14:
    v15 = (v13 << 9) | (8 * __clz(__rbit64(v9)));
    v16 = *(*(a1 + 56) + v15);
    v36[0] = *(*(a1 + 48) + v15);
    v36[1] = v16;

    (a2)(v35, v36);

    v17 = v35[0];
    v18 = v35[1];
    v19 = *v37;
    v21 = specialized __RawDictionaryStorage.find<A>(_:)(v35[0]);
    v22 = v19[2];
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      goto LABEL_25;
    }

    v25 = v20;
    if (v19[3] >= v24)
    {
      if ((v34 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v24, v34 & 1);
      v26 = specialized __RawDictionaryStorage.find<A>(_:)(v17);
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_27;
      }

      v21 = v26;
    }

    v9 &= v9 - 1;
    v28 = *v37;
    if (v25)
    {
      v12 = *(v28[7] + 8 * v21);

      *(v28[7] + 8 * v21) = v12;
    }

    else
    {
      v28[(v21 >> 6) + 8] |= 1 << v21;
      *(v28[6] + 8 * v21) = v17;
      *(v28[7] + 8 * v21) = v18;
      v29 = v28[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_26;
      }

      v28[2] = v31;
    }

    a4 = 1;
    v11 = v13;
  }

  v14 = v11;
  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      outlined consume of Set<UIPress>.Iterator._Variant(a1);

      return;
    }

    v9 = *(v6 + 8 * v13);
    ++v14;
    if (v9)
    {
      v34 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v37 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v34 = a4;
    v13 = v11;
LABEL_14:
    v15 = (v13 << 9) | (8 * __clz(__rbit64(v9)));
    v16 = *(*(a1 + 56) + v15);
    v36[0] = *(*(a1 + 48) + v15);
    v36[1] = v16;

    (a2)(v35, v36);

    v17 = v35[0];
    v18 = v35[1];
    v19 = *v37;
    v21 = specialized __RawDictionaryStorage.find<A>(_:)(v35[0]);
    v22 = v19[2];
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      goto LABEL_25;
    }

    v25 = v20;
    if (v19[3] >= v24)
    {
      if ((v34 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v24, v34 & 1);
      v26 = specialized __RawDictionaryStorage.find<A>(_:)(v17);
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_27;
      }

      v21 = v26;
    }

    v9 &= v9 - 1;
    v28 = *v37;
    if (v25)
    {
      v12 = *(v28[7] + 8 * v21);

      *(v28[7] + 8 * v21) = v12;
    }

    else
    {
      v28[(v21 >> 6) + 8] |= 1 << v21;
      *(v28[6] + 8 * v21) = v17;
      *(v28[7] + 8 * v21) = v18;
      v29 = v28[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_26;
      }

      v28[2] = v31;
    }

    a4 = 1;
    v11 = v13;
  }

  v14 = v11;
  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      outlined consume of Set<UIPress>.Iterator._Variant(a1);

      return;
    }

    v9 = *(v6 + 8 * v13);
    ++v14;
    if (v9)
    {
      v34 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v37 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v34 = a4;
    v13 = v11;
LABEL_14:
    v15 = (v13 << 9) | (8 * __clz(__rbit64(v9)));
    v16 = *(*(a1 + 56) + v15);
    v36[0] = *(*(a1 + 48) + v15);
    v36[1] = v16;

    (a2)(v35, v36);

    v17 = v35[0];
    v18 = v35[1];
    v19 = *v37;
    v21 = specialized __RawDictionaryStorage.find<A>(_:)(v35[0]);
    v22 = v19[2];
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      goto LABEL_25;
    }

    v25 = v20;
    if (v19[3] >= v24)
    {
      if ((v34 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v24, v34 & 1);
      v26 = specialized __RawDictionaryStorage.find<A>(_:)(v17);
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_27;
      }

      v21 = v26;
    }

    v9 &= v9 - 1;
    v28 = *v37;
    if (v25)
    {
      v12 = *(v28[7] + 8 * v21);

      *(v28[7] + 8 * v21) = v12;
    }

    else
    {
      v28[(v21 >> 6) + 8] |= 1 << v21;
      *(v28[6] + 8 * v21) = v17;
      *(v28[7] + 8 * v21) = v18;
      v29 = v28[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_26;
      }

      v28[2] = v31;
    }

    a4 = 1;
    v11 = v13;
  }

  v14 = v11;
  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      outlined consume of Set<UIPress>.Iterator._Variant(a1);

      return;
    }

    v9 = *(v6 + 8 * v13);
    ++v14;
    if (v9)
    {
      v34 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t specialized static SheetPreference.reduce(value:nextValue:)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = outlined init with copy of SheetPreference.Value(a1, v17);
  if (v18)
  {
    if (v18 == 1)
    {
      return outlined destroy of SheetPreference.Value(v17);
    }

    else
    {
      v10 = outlined destroy of SheetPreference.Value(a1);
      return a2(v10);
    }
  }

  else
  {
    v6 = v17[0];
    (a2)(v14, v4);
    if (v16)
    {
      if (v16 == 1)
      {
        outlined destroy of SheetPreference.Value(a1);

        v7 = *v15;
        *(a1 + 64) = v14[4];
        *(a1 + 80) = v7;
        *(a1 + 90) = *&v15[10];
        v8 = v14[1];
        *a1 = v14[0];
        *(a1 + 16) = v8;
        v9 = v14[3];
        *(a1 + 32) = v14[2];
        *(a1 + 48) = v9;
        *(a1 + 106) = 1;
      }

      else
      {
      }
    }

    else
    {
      v11 = *&v14[0];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = v6;
      specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v11, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v13);

      result = outlined destroy of SheetPreference.Value(a1);
      *a1 = v13;
      *(a1 + 106) = 0;
    }
  }

  return result;
}

uint64_t partial apply for closure #2 in SheetPresentationModifier.body(content:)(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v10[0] = v1[2];
  v3 = v10[0];
  v10[1] = v4;
  v10[2] = v5;
  v10[3] = v6;
  v7 = *(type metadata accessor for SheetPresentationModifier(0, v10) - 8);
  v8 = (v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80)));

  return closure #2 in SheetPresentationModifier.body(content:)(a1, v8, v3, v4, v5, v6);
}

uint64_t partial apply for closure #2 in ItemSheetPresentationModifier.body(content:)(char a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v12[0] = v1[2];
  v3 = v12[0];
  v12[1] = v4;
  v12[2] = v5;
  v12[3] = v6;
  v12[4] = v7;
  v12[5] = v8;
  v9 = *(type metadata accessor for ItemSheetPresentationModifier(0, v12) - 8);
  v10 = v1 + ((*(v9 + 80) + 64) & ~*(v9 + 80));

  return closure #2 in ItemSheetPresentationModifier.body(content:)(a1, v10, v3, v4, v5, v6, v7, v8);
}

uint64_t specialized ItemSheetPresentationModifier.item.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Optional();
  type metadata accessor for Binding();

  return specialized Binding.wrappedValue.setter(a1);
}

uint64_t *initializeBufferWithCopyOfBuffer for CoreSheetPresentationModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  if (v6 > 7 || (*(v5 + 80) & 0x100000) != 0 || v7 - ((-81 - v6) | v6) > 0x18)
  {
    v10 = *a2;
    *v3 = *a2;
    v3 = (v10 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  else
  {
    v12 = *a2;
    v11 = a2 + 15;
    *a1 = v12;
    v13 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v13 = *(v11 & 0xFFFFFFFFFFFFFFF8);
    v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
    v15 = ((v11 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
    v16 = *v15;

    if (v16 < 0xFFFFFFFF)
    {
      *v14 = *v15;
    }

    else
    {
      v17 = *(v15 + 8);
      *v14 = v16;
      *(v14 + 8) = v17;
    }

    *(v14 + 16) = *(v15 + 16);
    *(v14 + 17) = *(v15 + 17);
    v18 = (v14 + 25) & 0xFFFFFFFFFFFFFFF8;
    v19 = (v15 + 25) & 0xFFFFFFFFFFFFFFF8;
    v20 = *(v19 + 24);
    if (v20 < 0xFFFFFFFF)
    {
      v21 = *v19;
      v22 = *(v19 + 16);
      *(v18 + 32) = *(v19 + 32);
      *v18 = v21;
      *(v18 + 16) = v22;
    }

    else
    {
      *(v18 + 24) = v20;
      *(v18 + 32) = *(v19 + 32);
      (**(v20 - 8))(v18, v19);
    }

    v23 = v18 + 40;
    v24 = v19 + 40;
    (*(v5 + 16))(v23, v24, v4);
    *(v7 + v23) = *(v7 + v24);
  }

  return v3;
}

void *initializeWithTake for CoreSheetPresentationModifier(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2 + 15;
  *a1 = v5;
  v6 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *(v4 & 0xFFFFFFFFFFFFFFF8);
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = ((v4 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  if (*v8 < 0xFFFFFFFFuLL)
  {
    *v7 = *v8;
  }

  else
  {
    v9 = *(v8 + 8);
    *v7 = *v8;
    *(v7 + 8) = v9;
  }

  *(v7 + 16) = *(v8 + 16);
  *(v7 + 17) = *(v8 + 17);
  v10 = (v7 + 25) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v8 + 25) & 0xFFFFFFFFFFFFFFF8;
  v12 = *v11;
  v13 = *(v11 + 16);
  *(v10 + 32) = *(v11 + 32);
  *v10 = v12;
  *(v10 + 16) = v13;
  v14 = *(*(a3 + 16) - 8);
  v15 = v14 + 32;
  v16 = *(v14 + 80);
  v17 = (v10 + v16 + 40) & ~v16;
  v18 = (v11 + v16 + 40) & ~v16;
  (*(v14 + 32))(v17, v18);
  *(v17 + *(v15 + 32)) = *(v18 + *(v15 + 32));
  return a1;
}

void *assignWithTake for CoreSheetPresentationModifier(void *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v5 = a2 + 15;
  *a1 = v6;
  v7 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = (v5 & 0xFFFFFFFFFFFFFFF8) + 15;
  *v7 = *(v5 & 0xFFFFFFFFFFFFFFF8);

  v9 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = v8 & 0xFFFFFFFFFFFFFFF8;
  v11 = *v10;
  if (*v9 < 0xFFFFFFFFuLL)
  {
    if (v11 >= 0xFFFFFFFF)
    {
      v13 = *(v10 + 8);
      *v9 = v11;
      *(v9 + 8) = v13;
      goto LABEL_8;
    }
  }

  else
  {
    if (v11 >= 0xFFFFFFFF)
    {
      v12 = *(v10 + 8);
      *v9 = v11;
      *(v9 + 8) = v12;

      goto LABEL_8;
    }
  }

  *v9 = *v10;
LABEL_8:
  *(v9 + 16) = *(v10 + 16);
  *(v9 + 17) = *(v10 + 17);
  v14 = (v9 + 25) & 0xFFFFFFFFFFFFFFF8;
  if (*(v14 + 24) >= 0xFFFFFFFFuLL)
  {
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  v15 = (v10 + 25) & 0xFFFFFFFFFFFFFFF8;
  v16 = *v15;
  v17 = *(v15 + 16);
  *(v14 + 32) = *(v15 + 32);
  *v14 = v16;
  *(v14 + 16) = v17;
  v18 = *(*(a3 + 16) - 8);
  v19 = v18 + 40;
  v20 = *(v18 + 80);
  v21 = (v14 + v20 + 40) & ~v20;
  v22 = (v15 + v20 + 40) & ~v20;
  (*(v18 + 40))(v21, v22);
  *(v21 + *(v19 + 24)) = *(v22 + *(v19 + 24));
  return a1;
}

uint64_t getEnumTagSinglePayload for CoreSheetPresentationModifier(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
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

  v9 = *(*(*(a3 + 16) - 8) + 64) + ((v6 + 80) & ~v6) + 1;
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
      v15 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v5 > 0x7FFFFFFE)
      {
        return (*(v4 + 48))((((((v15 + 15) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + v6 + 40) & ~v6);
      }

      v16 = *v15;
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      if ((v16 + 1) >= 2)
      {
        return v16;
      }

      else
      {
        return 0;
      }
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