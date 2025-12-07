uint64_t type metadata completion function for CoreCoordinator(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t CoreCoordinator.selection.getter()
{
  v1 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x68));

  return v1;
}

double CoreCoordinator.selection.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0x68));
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;

  return result;
}

uint64_t CoreCoordinator.didSelectRow(_:inComponent:)(uint64_t a1, uint64_t a2)
{
  v5 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x70);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v5);
  *(v2 + v5) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native);
  *(v2 + v5) = v8;
  return swift_endAccess();
}

uint64_t CoreCoordinator.selectedRow(inComponent:)(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x70);
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    return *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    return 0;
  }
}

uint64_t CoreCoordinator.pickerView(_:didSelectRow:inComponent:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v63 = a3;
  v61 = a2;
  v52 = a1;
  v5 = *v3;
  v6 = *MEMORY[0x1E69E7D40];
  v62 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x58);
  v7 = *((v6 & v5) + 0x50);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v53 = &v52 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v12 = *(v11 - 8);
  v58 = v11;
  v59 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v55 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v52 - v15;
  v17 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v52 - v19;
  v21 = swift_checkMetadataState();
  v57 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v52 - v22;
  CoreCoordinator.dataSource.getter(v20);
  (v62[5])(v63, v7);
  (*(v17 + 8))(v20, v7);
  v24 = v16;
  Collection.index(atOffset:)();
  v60 = v21;
  v56 = AssociatedConformanceWitness;
  v25 = dispatch thunk of Collection.subscript.read();
  v27 = v53;
  v26 = v54;
  (*(v54 + 2))(v53);
  v25(&v67, 0);
  v28 = swift_getAssociatedConformanceWitness();
  LOBYTE(v7) = (*(v28 + 56))(AssociatedTypeWitness, v28);
  (*(v26 + 1))(v27, AssociatedTypeWitness);
  v62 = v4;
  v29 = CoreCoordinator.selection.getter();
  if (v7)
  {
    v67 = v29;
    v68 = v30;
    v69 = v31;
    v32 = v58;
    type metadata accessor for Array();
    v33 = type metadata accessor for Binding();
    MEMORY[0x18D00ACC0](v65, v33);

    v34 = v55;
    v35 = v63;
    Array.subscript.getter();

    v36 = v60;
    v37 = Collection.offset(of:)();
    v38 = *(v59 + 8);
    v38(v34, v32);
    if (v37 != v61)
    {
      [v52 selectRow:v37 inComponent:v35 animated:0];
      v39 = v37;
LABEL_9:
      CoreCoordinator.didSelectRow(_:inComponent:)(v39, v35);
    }
  }

  else
  {
    v54 = v23;
    v67 = v29;
    v68 = v30;
    v69 = v31;
    v32 = v58;
    type metadata accessor for Array();
    v40 = type metadata accessor for Binding();
    MEMORY[0x18D00ACC0](v65);

    v41 = v55;
    v35 = v63;
    Array.subscript.getter();

    v36 = v60;
    swift_getAssociatedConformanceWitness();
    v42 = dispatch thunk of static Equatable.== infix(_:_:)();
    v38 = *(v59 + 8);
    v38(v41, v32);
    if ((v42 & 1) == 0)
    {
      v43 = CoreCoordinator.selection.getter();
      v45 = v44;
      v56 = v24;
      v47 = v46;
      v67 = v43;
      v68 = v44;
      v69 = v46;
      MEMORY[0x18D00ACC0](&v66, v40);
      Array._makeMutableAndUnique()();
      v48 = v66;
      Array._checkSubscript_mutating(_:)(v35);
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
      v50 = v48 & 0xFFFFFFFFFFFFFF8;
      if ((isClassOrObjCExistentialType & 1) == 0)
      {
        v50 = v48;
      }

      (*(v59 + 24))(v50 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v35, v56, v32);
      destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
      v65[0] = v43;
      v65[1] = v45;
      v65[2] = v47;
      v64 = v66;
      specialized Binding.wrappedValue.setter(&v64);
      v24 = v56;

      v36 = v60;

      v39 = v61;
      v23 = v54;
      goto LABEL_9;
    }

    v23 = v54;
  }

  v38(v24, v32);
  return (*(v57 + 8))(v23, v36);
}

void @objc CoreCoordinator.pickerView(_:didSelectRow:inComponent:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = a3;
  v9 = a1;
  CoreCoordinator.pickerView(_:didSelectRow:inComponent:)(v8, a4, a5);
}

uint64_t @objc CoreCoordinator.numberOfComponents(in:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = specialized CoreCoordinator.numberOfComponents(in:)(v5);

  return v6;
}

uint64_t @objc CoreCoordinator.pickerView(_:numberOfRowsInComponent:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  v8 = specialized CoreCoordinator.pickerView(_:numberOfRowsInComponent:)(a4);

  return v8;
}

uint64_t closure #1 in CoreCoordinator.pickerView(_:viewForRow:forComponent:reusing:)@<X0>(uint64_t a3@<X8>)
{
  v14[1] = a3;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v14 - v9;
  v11 = *(AssociatedConformanceWitness + 48);
  swift_checkMetadataState();
  v11();
  swift_getAssociatedConformanceWitness();
  static ViewBuilder.buildExpression<A>(_:)();
  v12 = *(v5 + 8);
  v12(v7, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v12)(v10, AssociatedTypeWitness);
}

void *@objc CoreCoordinator.pickerView(_:viewForRow:forComponent:reusing:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = a3;
  v11 = a6;
  v12 = a1;
  v13 = specialized CoreCoordinator.pickerView(_:viewForRow:forComponent:reusing:)(a4, a5, a6);

  return v13;
}

uint64_t CoreCoordinator.__ivar_destroyer()
{
  (*(*(*((*MEMORY[0x1E69E7D40] & *v0) + 0x50) - 8) + 8))(&v0[*((*MEMORY[0x1E69E7D40] & *v0) + 0x60)]);
}

id CoreCoordinator.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for CoreCoordinator(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t @objc CoreCoordinator.__ivar_destroyer(char *a1)
{
  (*(*(*((*MEMORY[0x1E69E7D40] & *a1) + 0x50) - 8) + 8))(&a1[*((*MEMORY[0x1E69E7D40] & *a1) + 0x60)]);
}

uint64_t RootCellView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _EnvironmentKeyWritingModifier<ColorScheme?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Color?>, &lazy cache variable for type metadata for Color?, MEMORY[0x1E69815C0]);
  v8 = type metadata accessor for ModifiedContent();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v20 - v14;
  (*(v5 + 16))(v7, &v2[*(a1 + 36)], v4, v13);
  if (*v2 == 1)
  {
    static Color.tertiary.getter();
  }

  else
  {
    static Color.primary.getter();
  }

  v16 = *(a1 + 24);
  View.foregroundColor(_:)();

  (*(v5 + 8))(v7, v4);
  v17 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ColorScheme?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Color?>, &lazy cache variable for type metadata for Color?, MEMORY[0x1E69815C0]);
  v21[0] = v16;
  v21[1] = v17;
  swift_getWitnessTable(MEMORY[0x1E697E858], v8, v21);
  static ViewBuilder.buildExpression<A>(_:)();
  v18 = *(v9 + 8);
  v18(v11, v8);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v18)(v15, v8);
}

id specialized CoreCoordinator.init(dataSource:selection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = MEMORY[0x1E69E7D40];
  v11 = *MEMORY[0x1E69E7D40];
  v12 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x70);
  *&v4[v12] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v13 = *((v11 & v9) + 0x50);
  (*(*(v13 - 8) + 16))(&v4[*((*v10 & *v4) + 0x60)], a1, v13);
  v14 = &v4[*((*v10 & *v4) + 0x68)];
  *v14 = a2;
  *(v14 + 1) = a3;
  *(v14 + 2) = a4;
  v16 = type metadata accessor for CoreCoordinator(0, v13, *((v11 & v9) + 0x58), v15);
  v18.receiver = v4;
  v18.super_class = v16;
  return objc_msgSendSuper2(&v18, sel_init);
}

id specialized UIKitWheelPicker.makeUIView(context:)(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [objc_allocWithZone(type metadata accessor for UIKitPickerView()) initWithFrame_];
  [v2 setDelegate_];
  return v2;
}

uint64_t specialized CoreCoordinator.numberOfComponents(in:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - v6;
  CoreCoordinator.dataSource.getter(&v10 - v6);
  v8 = (*(*((v3 & v2) + 0x58) + 32))(v4);
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t specialized CoreCoordinator.pickerView(_:numberOfRowsInComponent:)(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v16 - v5;
  v9 = *((v8 & v7) + 0x58);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v16 - v12;
  CoreCoordinator.dataSource.getter(v6);
  (*(v9 + 40))(a1, v3, v9);
  (*(v4 + 8))(v6, v3);
  swift_getAssociatedConformanceWitness();
  v14 = dispatch thunk of Collection.count.getter();
  (*(v11 + 8))(v13, AssociatedTypeWitness);
  return v14;
}

void *specialized CoreCoordinator.pickerView(_:viewForRow:forComponent:reusing:)(uint64_t a1, uint64_t a2, void *a3)
{
  v61 = a3;
  v65 = a2;
  v67 = a1;
  v4 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x58);
  v5 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x50);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v7 = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v58 = v7;
  v9 = swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for RootCellView(0, AssociatedTypeWitness, v9, v10);
  v59 = *(v11 - 8);
  v60 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v57 = &v54 - v12;
  v13 = swift_checkMetadataState();
  v55 = *(v13 - 8);
  v56 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v54 = &v54 - v14;
  v62 = AssociatedConformanceWitness;
  v15 = swift_getAssociatedTypeWitness();
  v16 = *(v15 - 8);
  v63 = v15;
  v64 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v54 - v17;
  v19 = swift_getAssociatedTypeWitness();
  v66 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v54 - v20;
  v22 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v54 - v24;
  v26 = swift_checkMetadataState();
  v68 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v54 - v27;
  CoreCoordinator.dataSource.getter(v25);
  v29 = *(v4 + 40);
  v30 = v65;
  v65 = v4;
  v29(v30, v5, v4);
  (*(v22 + 8))(v25, v5);
  Collection.index(atOffset:)();
  dispatch thunk of Collection.indices.getter();
  v31 = v63;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v32 = Sequence<>.contains(_:)();
  (*(v64 + 1))(v18, v31);
  if (v32)
  {
    v67 = v19;
    v33 = v21;
    v64 = v28;
    v34 = dispatch thunk of Collection.subscript.read();
    v35 = v54;
    v36 = v55;
    v37 = v56;
    (*(v55 + 16))(v54);
    v34(v69, 0);
    v38 = (*(v58 + 56))(v37);
    v39 = v57;
    *v57 = v38 & 1;
    v40 = v60;
    closure #1 in CoreCoordinator.pickerView(_:viewForRow:forComponent:reusing:)(v39 + *(v60 + 36));
    v41 = v61;
    v42 = v35;
    if (v61 && (v43 = swift_getWitnessTable(protocol conformance descriptor for RootCellView<A>, v40), type metadata accessor for _UIHostingView(0, v40, v43, v44), (v45 = swift_dynamicCastClass()) != 0))
    {
      v46 = v45;
      v47 = v41;
      specialized _UIHostingView.rootView.setter(v39);
    }

    else
    {
      WitnessTable = swift_getWitnessTable(protocol conformance descriptor for RootCellView<A>, v40);
      type metadata accessor for _UIHostingView(0, v40, WitnessTable, v49);
      v46 = specialized _UIHostingView.__allocating_init(rootView:)(v39, v50, v51, v52);
    }

    (*(v59 + 8))(v39, v40);
    (*(v66 + 8))(v33, v67);
    (*(v68 + 8))(v64, v26);
    (*(v36 + 8))(v42, v37);
  }

  else
  {
    v46 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    (*(v66 + 8))(v21, v19);
    (*(v68 + 8))(v28, v26);
  }

  return v46;
}

uint64_t type metadata completion function for RootCellView(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for WheelPickerRow(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for WheelPickerRow(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v5 + v8;
  v10 = *(v7 + 64);
  v11 = v10 + ((v5 + v8) & ~v8) + 1;
  v12 = (*(v4 + 80) | *(v7 + 80));
  if (v12 > 7 || ((*(v4 + 80) | *(v7 + 80)) & 0x100000) != 0 || v11 > 0x18)
  {
    v15 = *a2;
    *v3 = *a2;
    v3 = (v15 + ((v12 + 16) & ~v12));
  }

  else
  {
    v16 = ~v8;
    (*(v4 + 16))(a1);
    v18 = (a2 + v9) & v16;
    (*(v7 + 16))((v3 + v9) & v16, v18, v6);
    *(((v3 + v9) & v16) + v10) = *(v18 + v10);
  }

  return v3;
}

uint64_t initializeWithTake for WheelPickerRow(uint64_t a1, uint64_t a2, uint64_t a3)
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
  *(*(v9 + 32) + v12) = *(*(v9 + 32) + v13);
  return a1;
}

uint64_t assignWithTake for WheelPickerRow(uint64_t a1, uint64_t a2, uint64_t a3)
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
  *(*(v9 + 24) + v12) = *(*(v9 + 24) + v13);
  return a1;
}

uint64_t getEnumTagSinglePayload for WheelPickerRow(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = *(v7 + 64);
  if (v8 <= v5)
  {
    v11 = *(v4 + 84);
  }

  else
  {
    v11 = *(v7 + 84);
  }

  if (v11 <= 0xFE)
  {
    v11 = 254;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
    goto LABEL_29;
  }

  v14 = v10 + (v12 & ~v9) + 1;
  v15 = 8 * v14;
  if (v14 > 3)
  {
    goto LABEL_9;
  }

  v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
  if (HIWORD(v17))
  {
    v16 = *(a1 + v14);
    if (v16)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v17 <= 0xFF)
    {
      if (v17 < 2)
      {
        goto LABEL_29;
      }

LABEL_9:
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_29;
      }

LABEL_16:
      v18 = (v16 - 1) << v15;
      if (v14 > 3)
      {
        v18 = 0;
      }

      if (v10 + (v12 & ~v9) == -1)
      {
        v20 = 0;
      }

      else
      {
        if (v14 <= 3)
        {
          v19 = v10 + (v12 & ~v9) + 1;
        }

        else
        {
          v19 = 4;
        }

        if (v19 > 2)
        {
          if (v19 == 3)
          {
            v20 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v20 = *a1;
          }
        }

        else if (v19 == 1)
        {
          v20 = *a1;
        }

        else
        {
          v20 = *a1;
        }
      }

      return v11 + (v20 | v18) + 1;
    }

    v16 = *(a1 + v14);
    if (*(a1 + v14))
    {
      goto LABEL_16;
    }
  }

LABEL_29:
  if (v5 == v11)
  {
    return (*(v4 + 48))();
  }

  v22 = (a1 + v12) & ~v9;
  if (v8 == v11)
  {
    return (*(v7 + 48))(v22, v8, v6);
  }

  v23 = *(v22 + v10);
  if (v23 < 2)
  {
    return 0;
  }

  return ((v23 + 2147483646) & 0x7FFFFFFF) + 1;
}

char *storeEnumTagSinglePayload for WheelPickerRow(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v8 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0xFE)
  {
    v12 = 254;
  }

  v13 = v9 + v10;
  v14 = v11 + ((v9 + v10) & ~v10) + 1;
  v15 = a3 >= v12;
  v16 = a3 - v12;
  if (v16 != 0 && v15)
  {
    if (v14 <= 3)
    {
      v21 = ((v16 + ~(-1 << (8 * v14))) >> (8 * v14)) + 1;
      if (HIWORD(v21))
      {
        v17 = 4;
      }

      else
      {
        if (v21 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21 >= 2)
        {
          v17 = v22;
        }

        else
        {
          v17 = 0;
        }
      }
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 0;
  }

  if (v12 < a2)
  {
    v18 = ~v12 + a2;
    if (v14 < 4)
    {
      v20 = (v18 >> (8 * v14)) + 1;
      if (v14)
      {
        v23 = v18 & ~(-1 << (8 * v14));
        v24 = result;
        bzero(result, v14);
        result = v24;
        if (v14 != 3)
        {
          if (v14 == 2)
          {
            *v24 = v23;
            if (v17 > 1)
            {
LABEL_50:
              if (v17 == 2)
              {
                *&result[v14] = v20;
              }

              else
              {
                *&result[v14] = v20;
              }

              return result;
            }
          }

          else
          {
            *v24 = v18;
            if (v17 > 1)
            {
              goto LABEL_50;
            }
          }

          goto LABEL_47;
        }

        *v24 = v23;
        v24[2] = BYTE2(v23);
      }

      if (v17 > 1)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v19 = result;
      bzero(result, v14);
      result = v19;
      *v19 = v18;
      v20 = 1;
      if (v17 > 1)
      {
        goto LABEL_50;
      }
    }

LABEL_47:
    if (v17)
    {
      result[v14] = v20;
    }

    return result;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&result[v14] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v14] = 0;
  }

  else if (v17)
  {
    result[v14] = 0;
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
  if (v6 == v12)
  {
    v25 = *(v5 + 56);

    return v25();
  }

  else
  {
    result = (&result[v13] & ~v10);
    if (v8 == v12)
    {
      v26 = *(v7 + 56);

      return v26(result);
    }

    else
    {
      result[v11] = a2 + 1;
    }
  }

  return result;
}

uint64_t type metadata completion function for WheelPicker_Phone(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for WheelPicker_Phone(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) != 0 && ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) < 0xFFFFFFFFFFFFFFE8)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v10 = *v11;
    v10[1] = v11[1];
    v10[2] = v11[2];
  }

  return v3;
}

uint64_t destroy for WheelPicker_Phone(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))();
}

uint64_t initializeWithCopy for WheelPicker_Phone(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];
  v7[2] = v8[2];

  return a1;
}

uint64_t assignWithCopy for WheelPicker_Phone(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;

  v7[1] = v8[1];

  v7[2] = v8[2];

  return a1;
}

uint64_t initializeWithTake for WheelPicker_Phone(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 16);
  *v7 = *v8;
  *(v7 + 16) = v9;
  return a1;
}

uint64_t assignWithTake for WheelPicker_Phone(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;

  v7[1] = v8[1];

  v7[2] = v8[2];

  return a1;
}

uint64_t getEnumTagSinglePayload for WheelPicker_Phone(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24;
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
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
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

_DWORD *storeEnumTagSinglePayload for WheelPicker_Phone(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFE8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFE8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
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

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v18[1] = 0;
      v18[2] = 0;
      *v18 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v18[1] = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo16UIOpenURLContextCG_10Foundation3URLVs5NeverOTg50245_s7SwiftUI16AppSceneDelegateC04makeD10HostWindow33_4475FD12FD59DEBA453321BD91F6EA04LL011restorationD6ItemID0O4Data17connectionOptions11urlContexts4role06windowD08delegateSo8UIWindowCAA0dQ0OSg_SDys11AnyHashableVypGSo017UISceneConnectionT0CShySo16dE132CGzSo18UISceneSessionRoleaSo0zD0CAA013UIHostingViewE0_ptF10Foundation3URLVAXcfu14_33_7b38412a791237ac1c9a4b50e4b05c7bAXA5_Tf3nnnpk_nTf1cn_nTm(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v41 = v3;
  v42 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  result = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v49 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7 & ~(v7 >> 63), 0);
    v44 = v49;
    if (v43)
    {
      result = __CocoaSet.startIndex.getter();
    }

    else
    {
      result = _HashTable.startBucket.getter();
      v9 = *(a1 + 36);
    }

    v46 = result;
    v47 = v9;
    v48 = v43 != 0;
    if ((v7 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      v39 = v7;
      v40 = v42 + 32;
      v11 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v11 = a1;
      }

      v37 = a1 + 56;
      v38 = v11;
      v35[1] = v1;
      v36 = a1 + 64;
      while (v10 < v7)
      {
        if (__OFADD__(v10++, 1))
        {
          goto LABEL_37;
        }

        v14 = v46;
        v15 = v47;
        v16 = v48;
        v17 = a1;
        specialized Set.subscript.getter(v46, v47, v48, a1);
        v19 = v18;
        v20 = [v18 URL];
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v21 = v44;
        v49 = v44;
        v23 = *(v44 + 16);
        v22 = *(v44 + 24);
        if (v23 >= v22 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
          v21 = v49;
        }

        *(v21 + 16) = v23 + 1;
        v24 = (*(v42 + 80) + 32) & ~*(v42 + 80);
        v44 = v21;
        result = (*(v42 + 32))(v21 + v24 + *(v42 + 72) * v23, v6, v41);
        if (v43)
        {
          if (!v16)
          {
            goto LABEL_42;
          }

          a1 = v17;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v7 = v39;
          type metadata accessor for Set<UIOpenURLContext>.Index(0);
          v12 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          result = v12(v45, 0);
          if (v10 == v7)
          {
LABEL_34:
            outlined consume of Set<UIOpenURLContext>.Index._Variant(v46, v47, v48);
            return v44;
          }
        }

        else
        {
          if (v16)
          {
            goto LABEL_43;
          }

          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v17;
          v25 = 1 << *(v17 + 32);
          if (v14 >= v25)
          {
            goto LABEL_38;
          }

          v26 = v14 >> 6;
          v27 = *(v37 + 8 * (v14 >> 6));
          if (((v27 >> v14) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v17 + 36) != v15)
          {
            goto LABEL_40;
          }

          v28 = v27 & (-2 << (v14 & 0x3F));
          if (v28)
          {
            v25 = __clz(__rbit64(v28)) | v14 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v29 = v26 << 6;
            v30 = v26 + 1;
            v31 = (v36 + 8 * v26);
            while (v30 < (v25 + 63) >> 6)
            {
              v33 = *v31++;
              v32 = v33;
              v29 += 64;
              ++v30;
              if (v33)
              {
                result = outlined consume of Set<UIOpenURLContext>.Index._Variant(v14, v15, 0);
                v25 = __clz(__rbit64(v32)) + v29;
                goto LABEL_33;
              }
            }

            result = outlined consume of Set<UIOpenURLContext>.Index._Variant(v14, v15, 0);
          }

LABEL_33:
          v34 = *(v17 + 36);
          v46 = v25;
          v47 = v34;
          v48 = 0;
          v7 = v39;
          if (v10 == v39)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

void specialized Sequence.compactMap<A>(_:)(uint64_t a1)
{
  v1 = a1;
  v20 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIScene, 0x1E69DCE70);
    lazy protocol witness table accessor for type UIScene and conformance NSObject(&lazy protocol witness table cache variable for type UIScene and conformance NSObject, &lazy cache variable for type metadata for UIScene, 0x1E69DCE70);
    Set.Iterator.init(_cocoa:)();
    v1 = v15;
    v2 = v16;
    v3 = v17;
    v4 = v18;
    v5 = v19;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
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

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v13 = v3;
  while (v1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIScene, 0x1E69DCE70), swift_dynamicCast(), (v11 = v14) == 0))
    {
LABEL_24:
      outlined consume of Set<UIPress>.Iterator._Variant(v1);
      return;
    }

LABEL_18:
    if ([v11 delegate])
    {
      type metadata accessor for AppSceneDelegate();
      v12 = swift_dynamicCastClass();

      if (v12)
      {
        MEMORY[0x18D00CC30]();
        if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_14:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_24;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

{
  v1 = a1;
  v18 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIScene, 0x1E69DCE70);
    lazy protocol witness table accessor for type UIScene and conformance NSObject();
    Set.Iterator.init(_cocoa:)();
    v1 = v13;
    v2 = v14;
    v3 = v15;
    v4 = v16;
    v5 = v17;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
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

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  while (v1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIScene, 0x1E69DCE70), swift_dynamicCast(), (v11 = v12) == 0))
    {
LABEL_21:
      outlined consume of Set<UIPress>.Iterator._Variant(v1);
      return;
    }

LABEL_16:
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      MEMORY[0x18D00CC30]();
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_12:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

Swift::Bool __swiftcall AppDelegate.application(_:didFinishLaunchingWithOptions:)(UIApplication *_, Swift::OpaquePointer_optional didFinishLaunchingWithOptions)
{
  rawValue = didFinishLaunchingWithOptions.value._rawValue;
  v5 = [objc_opt_self() sharedSystem];
  v6 = [objc_opt_self() _compatibilityConfiguration];
  [v5 _setOverrideBuildConfiguration_overrideBuildHandler_];

  v7 = *(v2 + OBJC_IVAR____TtC7SwiftUI11AppDelegate_fallbackDelegate);
  if (!v7 || ([*(v2 + OBJC_IVAR____TtC7SwiftUI11AppDelegate_fallbackDelegate) respondsToSelector_] & 1) == 0)
  {
    return 1;
  }

  if (rawValue)
  {
    type metadata accessor for UIApplicationLaunchOptionsKey(0);
    lazy protocol witness table accessor for type SceneBridge and conformance SceneBridge(&lazy protocol witness table cache variable for type UIApplicationLaunchOptionsKey and conformance UIApplicationLaunchOptionsKey, type metadata accessor for UIApplicationLaunchOptionsKey, protocol conformance descriptor for UIApplicationLaunchOptionsKey);
    swift_unknownObjectRetain();
    v8.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    swift_unknownObjectRetain();
    v8.super.isa = 0;
  }

  v10 = [v7 application:_ didFinishLaunchingWithOptions:v8.super.isa];
  swift_unknownObjectRelease();

  return v10;
}

void AppDelegate.buildMenu(with:)(void *a1)
{
  v2 = v1;
  MEMORY[0x18D00ABE0]();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenuSystem, 0x1E69DCC88);
  v4 = [a1 system];
  v5 = [objc_opt_self() mainSystem];
  v6 = static NSObject.== infix(_:_:)();

  if (v6)
  {
    if (static AppGraph.shared)
    {
      type metadata accessor for ViewGraphHost();

      if (static ViewGraphHost.isDefaultEnvironmentConfigured.getter())
      {
        static ViewGraphHost.defaultEnvironment.getter();
        v13 = v14;
        GraphHost.setEnvironment(_:)();
      }
    }

    v7 = OBJC_IVAR____TtC7SwiftUI11AppDelegate_mainMenuController;
    v8 = *(v2 + OBJC_IVAR____TtC7SwiftUI11AppDelegate_mainMenuController);
    if (!v8)
    {
      v9 = [objc_allocWithZone(type metadata accessor for UIKitMainMenuController()) init];
      v10 = *(v2 + v7);
      *(v2 + v7) = v9;

      v8 = *(v2 + v7);
      if (!v8)
      {
        __break(1u);
        return;
      }
    }

    v11 = v8;
    UIKitMainMenuController.buildMenu(with:)(a1);

    if (*(v2 + OBJC_IVAR____TtC7SwiftUI11AppDelegate_fallbackDelegate))
    {
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (v12)
      {
        swift_unknownObjectRetain();
      }

      [v12 buildMenuWithBuilder_];
    }
  }

  static Update.end()();
}

Swift::Void __swiftcall AppDelegate.validate(_:)(UICommand *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC7SwiftUI11AppDelegate_mainMenuController];
  if (v3)
  {
    [v3 validateCommand_];
  }

  else
  {
    v5.receiver = v1;
    v5.super_class = swift_getObjectType();
    [(UICommand *)&v5 validateCommand:a1];
  }

  if (*&v1[OBJC_IVAR____TtC7SwiftUI11AppDelegate_fallbackDelegate])
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      swift_unknownObjectRetain();
    }

    [v4 validateCommand_];
  }
}

uint64_t AppDelegate.canPerformAction(_:withSender:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  _ss11AnyHashableVSgWOcTm_2(a2, v23, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
  v7 = v24;
  if (v24)
  {
    v8 = __swift_project_boxed_opaque_existential_1(v23, v24);
    v9 = *(v7 - 8);
    v10 = MEMORY[0x1EEE9AC00](v8);
    v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12, v10);
    v13 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v9 + 8))(v12, v7);
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  else
  {
    v13 = 0;
  }

  v22.receiver = v3;
  v22.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v22, sel_canPerformAction_withSender_, a1, v13);
  swift_unknownObjectRelease();
  if (v14)
  {
    _ss11AnyHashableVSgMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SupportedResponderCommand>, &type metadata for SupportedResponderCommand, MEMORY[0x1E69E6F90]);
    *(swift_initStackObject() + 16) = xmmword_18CD63400;
    v15 = static Selector.== infix(_:_:)();

    v16 = v15 ^ 1;
  }

  else
  {
    v16 = 0;
  }

  v17 = *&v3[OBJC_IVAR____TtC7SwiftUI11AppDelegate_mainMenuController];
  v18 = v16 | (v17 != 0);
  if ((v16 & 1) == 0 && v17)
  {
    v19 = v17;
    v18 = UIKitMainMenuController.canPerformAction(_:withSender:)(a1, a2);
  }

  return v18 & 1;
}

Swift::Void __swiftcall AppDelegate._performMainMenuShortcutKeyCommand(_:)(UIKeyCommand *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7SwiftUI11AppDelegate_mainMenuController);
  if (v2)
  {
    v12 = v2;
    v3 = UIKeyCommand.discoverabilityID.getter();
    if (v4)
    {
    }

    else
    {
      v5 = v3;
      v6 = OBJC_IVAR____TtC7SwiftUI23UIKitMainMenuController_keyCommandMap;
      swift_beginAccess();
      v7 = *&v12[v6];
      if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
      {
        v10 = *(*(v7 + 56) + 16 * v8);
        swift_endAccess();

        v10(v11);
      }

      else
      {
        swift_endAccess();
      }
    }
  }
}

Swift::Bool __swiftcall AppDelegate.application(_:runTest:options:)(UIApplication *_, Swift::String runTest, Swift::OpaquePointer options)
{
  v26 = runTest;
  v4 = _;
  v5 = [(UIApplication *)_ connectedScenes];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIScene, 0x1E69DCE70);
  lazy protocol witness table accessor for type UIScene and conformance NSObject(&lazy protocol witness table cache variable for type UIScene and conformance NSObject, &lazy cache variable for type metadata for UIScene, 0x1E69DCE70);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Sequence.compactMap<A>(_:)(v6);
  v8 = v7;

  if (v8 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v22 = v4;
    v23._rawValue = options._rawValue;
    v4 = 0;
    v25 = v8 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x18D00E9C0](v4, v8);
      }

      else
      {
        if (v4 >= *(v25 + 16))
        {
          goto LABEL_17;
        }

        v10 = *(v8 + 8 * v4 + 32);
      }

      isa = v10;
      v12 = &v4->super.super.isa + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (*(v10 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneBridge))
      {
        v29[0] = 17;
        _ss11AnyHashableVSgMaTm_1(0, &lazy cache variable for type metadata for [PPTTestCase.Name], &type metadata for PPTTestCase.Name, MEMORY[0x1E69E62F8]);

        static Update.dispatchImmediately<A>(reason:_:)();

        countAndFlagsBits = v28._countAndFlagsBits;
      }

      else
      {
        countAndFlagsBits = MEMORY[0x1E69E7CC0];
      }

      options._rawValue = &v21;
      v28 = v26;
      MEMORY[0x1EEE9AC00](v10);
      v20[2] = &v28;
      v14 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in BidirectionalCollection<>.lastIndex(of:), v20, countAndFlagsBits);

      if (v14)
      {

        AppSceneDelegate.runTest(_:options:)(v26, v23);
        v15 = 1;
        goto LABEL_24;
      }

      v4 = (v4 + 1);
      if (v12 == i)
      {

        v4 = v22;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_20:
  if (!*(v24 + OBJC_IVAR____TtC7SwiftUI11AppDelegate_fallbackDelegate))
  {
    return 0;
  }

  v27 = &unk_1F00D21E8;
  v16 = swift_dynamicCastObjCProtocolConditional();
  if (!v16)
  {
    return 0;
  }

  v17 = v16;
  if (([v16 respondsToSelector_] & 1) == 0)
  {
    return 0;
  }

  swift_unknownObjectRetain_n();
  v18 = MEMORY[0x18D00C850](v26._countAndFlagsBits, v26._object);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v15 = [v17 application:v4 runTest:v18 options:isa];
  swift_unknownObjectRelease_n();

LABEL_24:
  return v15;
}

double AppDelegate.application(_:handleEventsForBackgroundURLSession:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for WeakBox<UISceneConnectionOptions>?(0, &lazy cache variable for type metadata for TaskPriority?, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = aBlock - v12;
  v14 = *(v5 + OBJC_IVAR____TtC7SwiftUI11AppDelegate_fallbackDelegate);
  if (!v14)
  {
    goto LABEL_6;
  }

  if (![swift_unknownObjectRetain() respondsToSelector_])
  {
    swift_unknownObjectRelease();
LABEL_6:
    v17 = type metadata accessor for TaskPriority();
    (*(*(v17 - 8) + 56))(v13, 1, 1, v17);
    type metadata accessor for MainActor();

    v18 = static MainActor.shared.getter();
    v19 = swift_allocObject();
    v20 = MEMORY[0x1E69E85E0];
    v19[2] = v18;
    v19[3] = v20;
    v19[4] = a2;
    v19[5] = a3;
    v19[6] = a4;
    v19[7] = a5;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v13, &async function pointer to partial apply for closure #1 in AppDelegate.application(_:handleEventsForBackgroundURLSession:completionHandler:), v19);
    goto LABEL_7;
  }

  if ([v14 respondsToSelector_])
  {
    swift_unknownObjectRetain();
    v15 = MEMORY[0x18D00C850](a2, a3);
    aBlock[4] = a4;
    aBlock[5] = a5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_104;
    v16 = _Block_copy(aBlock);

    [v14 application:a1 handleEventsForBackgroundURLSession:v15 completionHandler:v16];
    _Block_release(v16);

    swift_unknownObjectRelease_n();
LABEL_7:

    return result;
  }

  swift_unknownObjectRelease();
  return result;
}

uint64_t closure #1 in AppDelegate.application(_:handleEventsForBackgroundURLSession:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v7[6] = type metadata accessor for MainActor();
  v7[7] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[8] = v9;
  v7[9] = v8;

  return MEMORY[0x1EEE6DFA0](closure #1 in AppDelegate.application(_:handleEventsForBackgroundURLSession:completionHandler:), v9, v8);
}

uint64_t closure #1 in AppDelegate.application(_:handleEventsForBackgroundURLSession:completionHandler:)(__n128 a1)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = static MainActor.shared.getter();
  v1[10] = v4;
  v5 = swift_task_alloc();
  v1[11] = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v6 = swift_task_alloc();
  v1[12] = v6;
  *v6 = v1;
  v6[1] = closure #1 in AppDelegate.application(_:handleEventsForBackgroundURLSession:completionHandler:);
  v7 = MEMORY[0x1E69E7CA8] + 8;
  v8 = MEMORY[0x1E69E85E0];
  v9 = MEMORY[0x1E69E7CA8] + 8;
  v10 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DBF8](v6, v7, v9, v4, v8, &async function pointer to partial apply for closure #1 in closure #1 in AppDelegate.application(_:handleEventsForBackgroundURLSession:completionHandler:), v5, v10);
}

uint64_t closure #1 in AppDelegate.application(_:handleEventsForBackgroundURLSession:completionHandler:)()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](closure #1 in AppDelegate.application(_:handleEventsForBackgroundURLSession:completionHandler:), v3, v2);
}

{
  v1 = *(v0 + 32);

  v1(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t closure #1 in closure #1 in AppDelegate.application(_:handleEventsForBackgroundURLSession:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  type metadata accessor for WeakBox<UISceneConnectionOptions>?(0, &lazy cache variable for type metadata for TaskPriority?, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v4[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in AppDelegate.application(_:handleEventsForBackgroundURLSession:completionHandler:), v6, v5);
}

uint64_t closure #1 in closure #1 in AppDelegate.application(_:handleEventsForBackgroundURLSession:completionHandler:)()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v11 = v3;

  v4 = type metadata accessor for TaskPriority();
  v12 = *(*(v4 - 8) + 56);
  v12(v1, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v3;
  v5[5] = v2;

  _sScG7addTask8priority9operationyScPSg_xyYaYAcntFyt_Tg5(v1, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in AppDelegate.application(_:handleEventsForBackgroundURLSession:completionHandler:), v5);
  v6 = MEMORY[0x1E69E85F0];
  v7 = MEMORY[0x1E69E6720];
  outlined destroy of PPTTestHost?(v1, &lazy cache variable for type metadata for TaskPriority?, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720], type metadata accessor for WeakBox<UISceneConnectionOptions>?);
  v12(v1, 1, 1, v4);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v11;
  v8[5] = v2;

  _sScG7addTask8priority9operationyScPSg_xyYaYAcntFyt_Tg5(v1, &async function pointer to partial apply for closure #2 in closure #1 in closure #1 in AppDelegate.application(_:handleEventsForBackgroundURLSession:completionHandler:), v8);
  outlined destroy of PPTTestHost?(v1, &lazy cache variable for type metadata for TaskPriority?, v6, v7, type metadata accessor for WeakBox<UISceneConnectionOptions>?);

  v9 = v0[1];

  return v9();
}

uint64_t closure #1 in closure #1 in closure #1 in AppDelegate.application(_:handleEventsForBackgroundURLSession:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in closure #1 in AppDelegate.application(_:handleEventsForBackgroundURLSession:completionHandler:), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in AppDelegate.application(_:handleEventsForBackgroundURLSession:completionHandler:)()
{
  v1 = _s7SwiftUI22BackgroundTaskProtocolPAAE12currentTasksSayAA0cD5EntryVyxGGyFZAA010URLSessioncD0V_Ttg5();
  v0[5] = v1;
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = closure #1 in closure #1 in closure #1 in AppDelegate.application(_:handleEventsForBackgroundURLSession:completionHandler:);
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];

  return specialized closure #1 in static BackgroundTaskProtocol.runTasks(actions:)(v5, v3, v4, v1);
}

uint64_t closure #2 in closure #1 in closure #1 in AppDelegate.application(_:handleEventsForBackgroundURLSession:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](closure #2 in closure #1 in closure #1 in AppDelegate.application(_:handleEventsForBackgroundURLSession:completionHandler:), 0, 0);
}

uint64_t closure #2 in closure #1 in closure #1 in AppDelegate.application(_:handleEventsForBackgroundURLSession:completionHandler:)()
{
  v1 = _s7SwiftUI22BackgroundTaskProtocolPAAE12currentTasksSayAA0cD5EntryVyxGGyFZAA022UnidentifiedURLSessioncD0V_Ttg5();
  v0[5] = v1;
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = closure #2 in closure #1 in closure #1 in AppDelegate.application(_:handleEventsForBackgroundURLSession:completionHandler:);
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];

  return specialized closure #1 in static BackgroundTaskProtocol.runTasks(actions:)(v5, v3, v4, v3, v4, v1);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance RootEnvironmentModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *))
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v8);
  v7 = v4;
  v5 = protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance RootEnvironmentModifier(&v7, v8);
  a3(v5, v8);
  return outlined destroy of _ViewListInputs(v8);
}

void closure #3 in AppSceneDelegate.scene(_:willConnectTo:options:)(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for OpenURLContext(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v30[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v30[-1] - v12;
  if ([a1 _isUniversalLink] && (v14 = objc_msgSend(a1, sel_webpageURL)) != 0)
  {
    v15 = v14;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v7 + 32))(v13, v9, v6);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v17 = *(Strong + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneBridge);
      v18 = Strong;

      if (v17)
      {
        (*(v7 + 16))(v5, v13, v6);
        v19 = &v5[*(v3 + 20)];
        *v19 = 0;
        v19[8] = -1;
        v31 = v3;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
        outlined init with copy of OpenURLContext(v5, boxed_opaque_existential_1, type metadata accessor for OpenURLContext);
        SceneBridge.publishEvent(event:type:identifier:)(v30, v3, 0x434C52556E65704FLL, 0xEE00747865746E6FLL);

        outlined destroy of OpenURLContext(v5, type metadata accessor for OpenURLContext);
        (*(v7 + 8))(v13, v6);
LABEL_9:
        __swift_destroy_boxed_opaque_existential_1(v30);
        return;
      }
    }

    (*(v7 + 8))(v13, v6);
  }

  else
  {
    swift_beginAccess();
    v21 = swift_unknownObjectWeakLoadStrong();
    if (v21)
    {
      v22 = *(v21 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneBridge);
      v23 = v21;

      if (v22)
      {
        v24 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSUserActivity, 0x1E696B090);
        v31 = v24;
        v30[0] = a1;
        v25 = [a1 activityType];
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;

        SceneBridge.publishEvent(event:type:identifier:)(v30, v24, v26, v28);

        goto LABEL_9;
      }
    }
  }
}

void closure #4 in AppSceneDelegate.scene(_:willConnectTo:options:)(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for OpenURLContext(0);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v15[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 options];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v9 = *(Strong + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneBridge), v10 = Strong, , v10, v9))
  {
    v11 = [a1 URL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = &v6[*(v3 + 20)];
    *v12 = v7;
    v12[8] = 0;
    v15[3] = v3;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
    outlined init with copy of OpenURLContext(v6, boxed_opaque_existential_1, type metadata accessor for OpenURLContext);
    SceneBridge.publishEvent(event:type:identifier:)(v15, v3, 0x434C52556E65704FLL, 0xEE00747865746E6FLL);

    outlined destroy of OpenURLContext(v6, type metadata accessor for OpenURLContext);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
  }
}

Swift::Void __swiftcall AppSceneDelegate.sceneDidDisconnect(_:)(UIScene *a1)
{
  type metadata accessor for WeakBox<UISceneConnectionOptions>?(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v32 - v5;
  v7 = *(v1 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_window);
  if (v7)
  {
    v8 = [v7 rootViewController];
    if (v8)
    {
      v9 = (v1 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneItemID);
      v10 = *(v1 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneItemID + 16);
      if (v10 == 255)
      {
      }

      else
      {
        v36 = v8;
        v11 = *v9;
        v12 = v9[1];
        outlined copy of SceneID(*v9, v12, v10 & 1);
        static Log.scenes.getter();
        v13 = type metadata accessor for Logger();
        v14 = *(v13 - 8);
        v15 = (*(v14 + 48))(v6, 1, v13);
        v35 = v1;
        if (v15 == 1)
        {
          outlined destroy of PPTTestHost?(v6, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720], type metadata accessor for WeakBox<UISceneConnectionOptions>?);
        }

        else
        {
          v16 = a1;
          v17 = Logger.logObject.getter();
          v18 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v17, v18))
          {
            v19 = swift_slowAlloc();
            v33 = a1;
            v20 = v19;
            v21 = swift_slowAlloc();
            v34 = v17;
            v22 = v21;
            *v20 = 138412290;
            *(v20 + 4) = v16;
            *v21 = v16;
            v23 = v16;
            _os_log_impl(&dword_18BD4A000, v34, v18, "Disconnected scene %@", v20, 0xCu);
            outlined destroy of OpenURLContext(v22, type metadata accessor for NSObject?);
            v24 = v22;
            v17 = v34;
            MEMORY[0x18D0110E0](v24, -1, -1);
            v25 = v20;
            a1 = v33;
            MEMORY[0x18D0110E0](v25, -1, -1);
          }

          (*(v14 + 8))(v6, v13);
        }

        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        PlatformSceneCache.removeHost(_:id:)(v36, v11, v12, v10 & 1);
        outlined consume of SceneID?(v11, v12, v10);

        v26 = *(v35 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneDelegateBox);
        if (!v26)
        {
          goto LABEL_19;
        }

        v27 = *(*v26 + 80);

        v29 = v27(v28);

        if (!v29)
        {
          goto LABEL_19;
        }

        v37 = &unk_1F00661F8;
        v30 = swift_dynamicCastObjCProtocolConditional();
        if (v30)
        {
          v31 = v30;
          if ([v30 respondsToSelector_])
          {
            [v31 sceneDidDisconnect_];

LABEL_19:
            return;
          }
        }
      }
    }
  }
}

Swift::Void __swiftcall AppSceneDelegate.scene(_:continue:)(UIScene *_, NSUserActivity a2)
{
  v3 = v2;
  v6 = type metadata accessor for OpenURLContext(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([(objc_class *)a2.super.isa _isUniversalLink])
  {
    v14 = [(objc_class *)a2.super.isa webpageURL];
    if (v14)
    {
      v15 = v14;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v3 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneBridge))
      {
        (*(v10 + 16))(v8, v13, v9);
        v16 = &v8[*(v6 + 20)];
        *v16 = a2;
        v16[8] = 1;
        v40 = v6;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v39);
        outlined init with copy of OpenURLContext(v8, boxed_opaque_existential_1, type metadata accessor for OpenURLContext);
        v18 = a2.super.isa;

        SceneBridge.publishEvent(event:type:identifier:)(v39, v6, 0x434C52556E65704FLL, 0xEE00747865746E6FLL);

        outlined destroy of OpenURLContext(v8, type metadata accessor for OpenURLContext);
        __swift_destroy_boxed_opaque_existential_1(v39);
      }

      else
      {
        v31 = a2.super.isa;
      }

      static Semantics.v7_1.getter();
      if (isLinkedOnOrAfter(_:)())
      {
        v32 = *(v3 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneDelegateBox);
        if (!v32)
        {

LABEL_23:
          (*(v10 + 8))(v13, v9);
          return;
        }

        v33 = *(*v32 + 80);

        v35 = v33(v34);

        if (v35)
        {
          v38[0] = &unk_1F00661F8;
          v36 = swift_dynamicCastObjCProtocolConditional();
          if (v36)
          {
            v37 = v36;
            if (([v36 respondsToSelector_] & 1) == 0)
            {
              (*(v10 + 8))(v13, v9);

              return;
            }

            [v37 scene:_ continueUserActivity:a2.super.isa];
          }

          goto LABEL_23;
        }
      }

      (*(v10 + 8))(v13, v9);

      return;
    }
  }

  if (*(v3 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneBridge))
  {
    v19 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSUserActivity, 0x1E696B090);
    v40 = v19;
    v39[0] = a2.super.isa;
    v20 = a2.super.isa;

    v21 = [(objc_class *)v20 activityType];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    SceneBridge.publishEvent(event:type:identifier:)(v39, v19, v22, v24);

    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v25 = *(v3 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneDelegateBox);
  if (v25)
  {
    v26 = *(*v25 + 80);

    v28 = v26(v27);

    if (v28)
    {
      v38[1] = &unk_1F00661F8;
      v29 = swift_dynamicCastObjCProtocolConditional();
      if (v29)
      {
        v30 = v29;
        if ([v29 respondsToSelector_])
        {
          [v30 scene:_ continueUserActivity:a2.super.isa];
        }
      }
    }
  }
}

void AppSceneDelegate.scene(_:openURLContexts:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v95 = type metadata accessor for OpenURLContext(0);
  MEMORY[0x1EEE9AC00](v95);
  v7 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WeakBox<UISceneConnectionOptions>?(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v104 = &v83 - v9;
  v10 = type metadata accessor for UTType();
  v103 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v101 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v105 = &v83 - v17;
  v118 = a2;
  v18 = *(v3 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_window);
  v96 = v7;
  if (v18)
  {

    v19 = [v18 rootViewController];
    if (v19)
    {
      v20 = v19;
      type metadata accessor for DocumentBrowserViewController();
      v102 = swift_dynamicCastClass();
      if (v102)
      {
        v83 = v15;
        v85 = v20;
        v86 = v3;
        v87 = a1;
        v88 = v13;
        if ((a2 & 0xC000000000000001) != 0)
        {
          swift_unknownObjectRetain();
          __CocoaSet.makeIterator()();
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIOpenURLContext, 0x1E69DCD08);
          v21 = v12;
          lazy protocol witness table accessor for type UIScene and conformance NSObject(&lazy protocol witness table cache variable for type UIOpenURLContext and conformance NSObject, &lazy cache variable for type metadata for UIOpenURLContext, 0x1E69DCD08);
          Set.Iterator.init(_cocoa:)();
          a2 = v119;
          v22 = v120;
          v23 = v121;
          v24 = v122;
          v25 = v123;
        }

        else
        {
          v26 = -1 << *(a2 + 32);
          v22 = a2 + 56;
          v23 = ~v26;
          v27 = -v26;
          if (v27 < 64)
          {
            v28 = ~(-1 << v27);
          }

          else
          {
            v28 = -1;
          }

          v25 = v28 & *(a2 + 56);

          v24 = 0;
          v21 = v12;
        }

        v84 = v23;
        v29 = (v23 + 64) >> 6;
        v97 = 0;
        v98 = (v103 + 48);
        v89 = (v103 + 8);
        v90 = (v103 + 32);
        v99 = v10;
        v100 = (v88 + 8);
        v91 = v21;
        while (1)
        {
          if (a2 < 0)
          {
            v35 = __CocoaSet.Iterator.next()();
            if (!v35 || (*&v107 = v35, type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIOpenURLContext, 0x1E69DCD08), swift_dynamicCast(), v34 = v114, v32 = v24, v33 = v25, !v114))
            {
LABEL_28:
              outlined consume of Set<UIPress>.Iterator._Variant(a2);

              v3 = v86;
              a1 = v87;
              goto LABEL_29;
            }
          }

          else
          {
            v30 = v24;
            v31 = v25;
            v32 = v24;
            if (!v25)
            {
              while (1)
              {
                v32 = v30 + 1;
                if (__OFADD__(v30, 1))
                {
                  break;
                }

                if (v32 >= v29)
                {
                  goto LABEL_28;
                }

                v31 = *(v22 + 8 * v32);
                ++v30;
                if (v31)
                {
                  goto LABEL_21;
                }
              }

              __break(1u);
              return;
            }

LABEL_21:
            v33 = (v31 - 1) & v31;
            v34 = *(*(a2 + 48) + ((v32 << 9) | (8 * __clz(__rbit64(v31)))));
            if (!v34)
            {
              goto LABEL_28;
            }
          }

          v103 = v33;
          v93 = v24;
          v94 = v25;
          v36 = v34;
          v37 = [v34 URL];
          v38 = v105;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v39 = *(v102 + OBJC_IVAR____TtC7SwiftUI29DocumentBrowserViewController_documentConfigurations);

          v40 = v38;
          v41 = v104;
          static DocumentUtils.contentType(of:)(v40, v104);
          v42 = v99;
          if ((*v98)(v41, 1, v99) == 1)
          {

            outlined destroy of PPTTestHost?(v41, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720], type metadata accessor for WeakBox<UISceneConnectionOptions>?);
            v107 = 0u;
            v108 = 0u;
            v109 = 0u;
            v110 = 0u;
            v111 = 0u;
            v112 = 0u;
            memset(v113, 0, 25);
          }

          else
          {
            v92 = v36;
            v43 = v101;
            v44 = (*v90)(v101, v41, v42);
            MEMORY[0x1EEE9AC00](v44);
            *(&v83 - 2) = v43;
            v45 = v97;
            specialized Sequence.first(where:)(partial apply for closure #1 in configuration #1 (for:) in static DocumentUtils.documentConfiguration(for:of:), v39, &v107);

            (*v89)(v43, v42);
            if (*(&v107 + 1))
            {
              outlined consume of Set<UIPress>.Iterator._Variant(a2);
              v114 = v107;
              v115[0] = v108;
              v115[3] = v111;
              v115[4] = v112;
              v116[0] = v113[0];
              *(v116 + 9) = *(v113 + 9);
              v115[1] = v109;
              v115[2] = v110;
              v62 = *(&v107 + 1);
              v63 = v108;
              v64 = (*(v108 + 8))(*(&v107 + 1), v108);
              v65 = v83;
              v66 = v91;
              (*(v88 + 16))(v83, v105, v91);
              v67 = (*(v64 + 120))(v65, v62, v63);
              outlined init with copy of WeakBox<UISceneConnectionOptions>?(v115 + 8, &v107, &lazy cache variable for type metadata for NewDocumentProvider?, &lazy cache variable for type metadata for NewDocumentProvider, &protocol descriptor for NewDocumentProvider, type metadata accessor for IntelligenceSubelementProviding?);
              v68 = *(&v108 + 1);
              if (*(&v108 + 1))
              {
                v69 = v109;
                __swift_project_boxed_opaque_existential_1(&v107, *(&v108 + 1));
                v70 = *&v67[OBJC_IVAR____TtC7SwiftUI16PlatformDocument_documentBox + 8];
                v71 = *(v69 + 8);
                v72 = swift_unknownObjectRetain();
                v71(v72, v70, v68, v69);
                v66 = v91;
                swift_unknownObjectRelease();
                __swift_destroy_boxed_opaque_existential_1(&v107);
              }

              else
              {
                outlined destroy of PPTTestHost?(&v107, &lazy cache variable for type metadata for NewDocumentProvider?, &lazy cache variable for type metadata for NewDocumentProvider, &protocol descriptor for NewDocumentProvider, type metadata accessor for IntelligenceSubelementProviding?);
              }

              v3 = v86;
              a1 = v87;
              v73 = swift_allocObject();
              swift_unknownObjectWeakInit();
              outlined init with copy of IdentifiedDocumentGroupConfiguration(&v114, &v107);
              v74 = swift_allocObject();
              *(v74 + 16) = v73;
              *(v74 + 24) = v67;
              v75 = v112;
              v76 = v113[0];
              *(v74 + 96) = v111;
              *(v74 + 112) = v75;
              *(v74 + 128) = v76;
              *(v74 + 137) = *(v113 + 9);
              v77 = v108;
              *(v74 + 32) = v107;
              *(v74 + 48) = v77;
              v78 = v110;
              *(v74 + 64) = v109;
              *(v74 + 80) = v78;
              *(v74 + 153) = 0;
              v106[4] = partial apply for closure #1 in DocumentBrowserViewController.presentDocument(at:animated:);
              v106[5] = v74;
              v106[0] = MEMORY[0x1E69E9820];
              v106[1] = 1107296256;
              v106[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
              v106[3] = &block_descriptor_10;
              v79 = _Block_copy(v106);
              v80 = v67;

              [v80 openWithCompletionHandler_];
              _Block_release(v79);

              outlined destroy of IdentifiedDocumentGroupConfiguration(&v114);
              (*v100)(v105, v66);
              v81 = v92;
              v82 = specialized Set._Variant.remove(_:)(v92);

              goto LABEL_29;
            }

            v97 = v45;

            v21 = v91;
          }

          (*v100)(v105, v21);
          outlined destroy of RootEnvironmentModifier?(&v107, &lazy cache variable for type metadata for IdentifiedDocumentGroupConfiguration?, &type metadata for IdentifiedDocumentGroupConfiguration);
          v24 = v32;
          v25 = v103;
        }
      }
    }

    else
    {
    }
  }

  v118 = a2;

LABEL_29:
  v46 = specialized Collection.first.getter(v118);
  if (v46)
  {
    v47 = v46;
    v48 = [v46 options];
    if (*(v3 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneBridge))
    {

      v49 = v3;
      v50 = [v47 URL];
      v51 = v96;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v3 = v49;
      v52 = v95;
      v53 = v51 + *(v95 + 20);
      *v53 = v48;
      *(v53 + 8) = 0;
      *(&v115[0] + 1) = v52;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v114);
      outlined init with copy of OpenURLContext(v51, boxed_opaque_existential_1, type metadata accessor for OpenURLContext);
      SceneBridge.publishEvent(event:type:identifier:)(&v114, v52, 0x434C52556E65704FLL, 0xEE00747865746E6FLL);

      outlined destroy of OpenURLContext(v51, type metadata accessor for OpenURLContext);
      __swift_destroy_boxed_opaque_existential_1(&v114);
    }

    else
    {
    }
  }

  v55 = *(v3 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneDelegateBox);
  if (v55 && (v56 = *(*v55 + 80), v57 = , v58 = v56(v57), , v58))
  {
    v117 = &unk_1F00661F8;
    v59 = swift_dynamicCastObjCProtocolConditional();
    if (v59 && (v60 = v59, ([v59 respondsToSelector_] & 1) != 0))
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIOpenURLContext, 0x1E69DCD08);
      lazy protocol witness table accessor for type UIScene and conformance NSObject(&lazy protocol witness table cache variable for type UIOpenURLContext and conformance NSObject, &lazy cache variable for type metadata for UIOpenURLContext, 0x1E69DCD08);
      isa = Set._bridgeToObjectiveC()().super.isa;

      [v60 scene:a1 openURLContexts:isa];
    }

    else
    {
    }
  }

  else
  {
  }
}

uint64_t AppSceneDelegate.hashableSceneID()()
{
  v1 = (v0 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneItemID);
  v2 = *(v0 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneItemID + 16);
  if (v2 == 255)
  {
    return 0;
  }

  v4 = *v1;
  v3 = v1[1];
  if (v2)
  {
    v7 = _typeName(_:qualified:)();
    MEMORY[0x18D00C9B0](45, 0xE100000000000000);
    v5 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v5);

    outlined consume of SceneID?(v4, v3, v2);
    return v7;
  }

  else
  {
    outlined copy of SceneID(*v1, v1[1], 0);
    return v4;
  }
}

uint64_t closure #1 in AppSceneDelegate.makeSceneHostWindow(restorationSceneItemID:restorationData:connectionOptions:urlContexts:role:windowScene:delegate:)(id *a1, uint64_t a2)
{
  v3 = [*a1 session];
  LOBYTE(a2) = UISceneSession.matchesSceneID(_:)(*(a2 + 136), *(a2 + 144), *(a2 + 152));

  return a2 & 1;
}

void specialized AppSceneDelegate.openWindowPresentedValue<A>(from:restorationData:config:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for WeakBox<UISceneConnectionOptions>?(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v67 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v67 - v15;
  v17 = *(a3 + 48);
  if (!v17)
  {
    goto LABEL_37;
  }

  v18 = *(a3 + 56);
  lazy protocol witness table accessor for type OpenSceneConnectionOptionDefinition and conformance OpenSceneConnectionOptionDefinition();

  UISceneConnectionOptions.subscript.getter();
  v77[2] = v75;
  v78 = v76;
  v77[0] = v73;
  v77[1] = v74;
  if (BYTE8(v75) == 0xFF || (v20 = *(&v78 + 1), v19 = v78, outlined copy of Data?(v78, *(&v78 + 1)), outlined destroy of RootEnvironmentModifier?(v77, &lazy cache variable for type metadata for OpenScenePayload?, &type metadata for OpenScenePayload), v20 >> 60 == 15))
  {
    v21 = [a1 userActivities];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSUserActivity, 0x1E696B090);
    lazy protocol witness table accessor for type UIScene and conformance NSObject(&lazy protocol witness table cache variable for type NSUserActivity and conformance NSObject, &lazy cache variable for type metadata for NSUserActivity, 0x1E696B090);
    v22 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = specialized Collection.first.getter(v22);

    if (!v23)
    {
      goto LABEL_30;
    }

    v24 = [v23 activityType];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    if (one-time initialization token for userActivityTypeOpenWindowByID != -1)
    {
      swift_once();
    }

    if (v25 == static NSUserActivity.userActivityTypeOpenWindowByID && v27 == *algn_1EAB09078)
    {
    }

    else
    {
      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v30 & 1) == 0)
      {
LABEL_29:

LABEL_30:
        v69 = 0xD00000000000001CLL;
        v70 = 0x800000018CD41370;
        AnyHashable.init<A>(_:)();
        if (*(a2 + 16) && (v47 = specialized __RawDictionaryStorage.find<A>(_:)(&v73), (v48 & 1) != 0))
        {
          outlined init with copy of Any(*(a2 + 56) + 32 * v47, &v71);
          outlined destroy of AnyHashable(&v73);
          if (swift_dynamicCast())
          {
            v68 = v18;
            v49 = v69;
            v50 = v70;
            static Log.openScene.getter();
            v51 = type metadata accessor for Logger();
            v52 = *(v51 - 8);
            if ((*(v52 + 48))(v13, 1, v51) == 1)
            {
              outlined destroy of PPTTestHost?(v13, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720], type metadata accessor for WeakBox<UISceneConnectionOptions>?);
            }

            else
            {
              v53 = Logger.logObject.getter();
              v54 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v53, v54))
              {
                v55 = swift_slowAlloc();
                *v55 = 0;
                _os_log_impl(&dword_18BD4A000, v53, v54, "openWindowPresentedValue: Using data from restorationData", v55, 2u);
                MEMORY[0x18D0110E0](v55, -1, -1);
              }

              (*(v52 + 8))(v13, v51);
            }

            v56 = v68;
            v17(&v73, v49, v50);
            outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v17, v56);
            v57 = *(&v74 + 1);
            if (*(&v74 + 1))
            {
              *a4 = v73;
              v58 = v75;
              *(a4 + 16) = v74;
            }

            else
            {
              outlined consume of Data._Representation(v49, v50);
              v58 = 0;
              v49 = 0;
              v50 = 0;
              *a4 = 0;
              *(a4 + 8) = 0;
              *(a4 + 16) = 0;
            }

            *(a4 + 24) = v57;
            *(a4 + 32) = v58;
            *(a4 + 40) = v49;
            *(a4 + 48) = v50;
            return;
          }
        }

        else
        {
          outlined destroy of AnyHashable(&v73);
        }

        outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v17, v18);
LABEL_37:
        *(a4 + 48) = 0;
        *(a4 + 16) = 0u;
        *(a4 + 32) = 0u;
        *a4 = 0u;
        return;
      }
    }

    v31 = [v23 userInfo];
    v32 = MEMORY[0x1E69E7CA0];
    if (v31)
    {
      v33 = v31;
      v34 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v69 = 0xD00000000000001CLL;
      v70 = 0x800000018CD41370;
      AnyHashable.init<A>(_:)();
      if (*(v34 + 16) && (v35 = specialized __RawDictionaryStorage.find<A>(_:)(&v73), (v36 & 1) != 0))
      {
        outlined init with copy of Any(*(v34 + 56) + 32 * v35, &v71);
        outlined destroy of AnyHashable(&v73);

        if (*(&v72 + 1))
        {
          if (swift_dynamicCast())
          {
            v68 = v18;
            v38 = *(&v73 + 1);
            v37 = v73;
            static Log.openScene.getter();
            v39 = type metadata accessor for Logger();
            v40 = *(v39 - 8);
            if ((*(v40 + 48))(v10, 1, v39) == 1)
            {
              outlined destroy of PPTTestHost?(v10, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720], type metadata accessor for WeakBox<UISceneConnectionOptions>?);
            }

            else
            {
              v59 = Logger.logObject.getter();
              v60 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v59, v60))
              {
                v61 = swift_slowAlloc();
                v67 = v37;
                v62 = v61;
                *v61 = 0;
                _os_log_impl(&dword_18BD4A000, v59, v60, "openWindowPresentedValue: Using data from the user activity", v61, 2u);
                v63 = v62;
                v37 = v67;
                MEMORY[0x18D0110E0](v63, -1, -1);
              }

              (*(v40 + 8))(v10, v39);
            }

            v64 = v68;
            v17(&v73, v37, v38);
            outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v17, v64);

            v65 = *(&v74 + 1);
            if (*(&v74 + 1))
            {
              *a4 = v73;
              v66 = v75;
              *(a4 + 16) = v74;
            }

            else
            {
              outlined consume of Data._Representation(v37, v38);
              v66 = 0;
              v37 = 0;
              v38 = 0;
              *a4 = 0;
              *(a4 + 8) = 0;
              *(a4 + 16) = 0;
            }

            *(a4 + 24) = v65;
            *(a4 + 32) = v66;
            *(a4 + 40) = v37;
            *(a4 + 48) = v38;
            return;
          }

          goto LABEL_29;
        }
      }

      else
      {

        outlined destroy of AnyHashable(&v73);
        v71 = 0u;
        v72 = 0u;
      }
    }

    else
    {

      v71 = 0u;
      v72 = 0u;
    }

    outlined destroy of RootEnvironmentModifier?(&v71, &lazy cache variable for type metadata for Any?, v32 + 8);
    goto LABEL_30;
  }

  v68 = v18;
  static Log.openScene.getter();
  v28 = type metadata accessor for Logger();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v16, 1, v28) == 1)
  {
    outlined destroy of PPTTestHost?(v16, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720], type metadata accessor for WeakBox<UISceneConnectionOptions>?);
  }

  else
  {
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_18BD4A000, v41, v42, "openWindowPresentedValue: Using data from connection options", v43, 2u);
      MEMORY[0x18D0110E0](v43, -1, -1);
    }

    (*(v29 + 8))(v16, v28);
  }

  v44 = v68;
  v17(&v73, v19, v20);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v17, v44);
  v45 = *(&v74 + 1);
  if (*(&v74 + 1))
  {
    *a4 = v73;
    v46 = v75;
    *(a4 + 16) = v74;
  }

  else
  {
    outlined consume of Data?(v19, v20);
    v46 = 0;
    v19 = 0;
    v20 = 0;
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  *(a4 + 24) = v45;
  *(a4 + 32) = v46;
  *(a4 + 40) = v19;
  *(a4 + 48) = v20;
}

Swift::Void __swiftcall AppSceneDelegate.runTest(_:options:)(Swift::String _, Swift::OpaquePointer options)
{
  countAndFlagsBits = _._countAndFlagsBits;
  _._countAndFlagsBits = *(v2 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_window);
  if (_._countAndFlagsBits && (object = _._object, (v6 = [_._countAndFlagsBits rootViewController]) != 0) && (v12[0] = v6, type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258), type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for PPTTestHost, &protocol descriptor for PPTTestHost), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v10 + 1))
    {
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v9, v12);
      v7 = v13;
      v8 = v14;
      __swift_project_boxed_opaque_existential_1(v12, v13);
      (*(v8 + 8))(countAndFlagsBits, object, options._rawValue, v7, v8);
      __swift_destroy_boxed_opaque_existential_1(v12);
      return;
    }
  }

  else
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
  }

  outlined destroy of PPTTestHost?(&v9, &lazy cache variable for type metadata for PPTTestHost?, &lazy cache variable for type metadata for PPTTestHost, &protocol descriptor for PPTTestHost, type metadata accessor for IntelligenceSubelementProviding?);
}

double AppSceneDelegate.forwardingTarget(for:)@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneDelegateBox);
  if (v3)
  {
    v4 = *(*v3 + 80);

    v6 = v4(v5);

    if (v6)
    {
      v7 = swift_dynamicCastObjCProtocolConditional();
      if (v7)
      {
        v8 = v7;
        *(a1 + 24) = swift_getObjectType();
        *a1 = v8;
        return result;
      }
    }
  }

  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t AppSceneDelegate.connectionOptionDefinitionTarget.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneDelegateBox);
  if (!v1)
  {
    return 0;
  }

  v2 = *(*v1 + 80);

  v4 = v2(v3);

  result = v4;
  if (!v4)
  {
    return 0;
  }

  return result;
}

id AppSceneDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppSceneDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for RootModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 112))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
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

uint64_t storeEnumTagSinglePayload for RootModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t protocol witness for _UISceneConnectionOptionDefinitionCustomHandling.handleConnectionOptionDefinition<A>(payload:definition:scene:) in conformance AppSceneDelegate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return specialized AppSceneDelegate.handleConnectionOptionDefinition<A>(payload:definition:scene:)(a1, a2, a4, a5);
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo16UIOpenURLContextCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab11VKXEfU_So16iJ5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n0241_s7SwiftUI16AppSceneDelegateC04makeD10HostWindow33_4475FD12FD59DEBA453321BD91F6EA04LL011restorationD6ItemID0O4Data17connectionOptions11urlContexts4role06windowD08delegateSo8UIWindowCAA0dQ0OSg_SDys11AnyHashableVypGSo017UISceneConnectionT0CShyqiJ67CGzSo18UISceneSessionRoleaSo0zD0CAA013UIHostingViewE0_ptFSbAXXEfU3_Shy10Foundation3URLVGTf1nnc_n(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    specialized closure #1 in _NativeSet.filter(_:)(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo7UISceneCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab10VKXEfU_So7I5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n0218_s7SwiftUI16AppSceneDelegateC04makeD10HostWindow33_4475FD12FD59DEBA453321BD91F6EA04LL011restorationD6ItemID0O4Data17connectionOptions11urlContexts4role06windowD08delegateSo8UIWindowCAA0dQ0OSg_SDys11AnyHashableVypGSo017i43ConnectionT0CShySo16UIOpenURLContextCGzSo18i45SessionRoleaSo0zD0CAA013UIHostingViewE0_ptFSbpI7CXEfU0_So08UIWindowW0CTf1nnc_n(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = a4;
    specialized closure #1 in _NativeSet.filter(_:)(v7, a2, a3, v8);
    v10 = v9;

    return v10;
  }

  return result;
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo7UISceneCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab10VKXEfU_So7I5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
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

    specialized closure #1 in _NativeSet.filter(_:)(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

Swift::Int specialized Set._Variant.filter(_:)(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1E69E7CD0];
    v22 = MEMORY[0x1E69E7CD0];
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIScene, 0x1E69DCE70);
      while (1)
      {
        swift_dynamicCast();
        v6 = a1(&v21);
        if (v3)
        {
          break;
        }

        v7 = v21;
        if (v6)
        {
          v8 = *(v4 + 16);
          if (*(v4 + 24) <= v8)
          {
            specialized _NativeSet.resize(capacity:)(v8 + 1);
          }

          v4 = v22;
          result = NSObject._rawHashValue(seed:)(*(v22 + 40));
          v10 = v4 + 56;
          v11 = -1 << *(v4 + 32);
          v12 = result & ~v11;
          v13 = v12 >> 6;
          if (((-1 << v12) & ~*(v4 + 56 + 8 * (v12 >> 6))) != 0)
          {
            v14 = __clz(__rbit64((-1 << v12) & ~*(v4 + 56 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v15 = 0;
            v16 = (63 - v11) >> 6;
            do
            {
              if (++v13 == v16 && (v15 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v17 = v13 == v16;
              if (v13 == v16)
              {
                v13 = 0;
              }

              v15 |= v17;
              v18 = *(v10 + 8 * v13);
            }

            while (v18 == -1);
            v14 = __clz(__rbit64(~v18)) + (v13 << 6);
          }

          *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
          *(*(v4 + 48) + 8 * v14) = v7;
          ++*(v4 + 16);
        }

        else
        {
        }

        if (!__CocoaSet.Iterator.next()())
        {
          goto LABEL_21;
        }
      }

      v20 = v21;
    }

    else
    {
LABEL_21:
    }
  }

  else
  {
    v19 = specialized _NativeSet.filter(_:)(a1, a2, a3);
    if (!v3)
    {
      return v19;
    }
  }

  return v4;
}

void *specialized _NativeSet.filter(_:)(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v29 = a1;
  v31[1] = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v25 = v6;
    v30 = v3;
    v27 = &v25;
    MEMORY[0x1EEE9AC00](a1);
    v26 = &v25 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v26, v7);
    v28 = 0;
    v8 = 0;
    v6 = v4 + 56;
    v9 = 1 << *(v4 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_12:
      v16 = v13 | (v8 << 6);
      v17 = v4;
      v31[0] = *(*(v4 + 48) + 8 * v16);
      v18 = v31[0];
      v3 = v30;
      v19 = v29(v31);
      v30 = v3;
      if (v3)
      {

        return swift_willThrow();
      }

      v20 = v19;

      v4 = v17;
      if (v20)
      {
        *&v26[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
        if (__OFADD__(v28++, 1))
        {
          __break(1u);
          return specialized _NativeSet.extractSubset(using:count:)(v26, v25, v28, v4);
        }
      }
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        return specialized _NativeSet.extractSubset(using:count:)(v26, v25, v28, v4);
      }

      v15 = *(v6 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v23 = swift_slowAlloc();
  v24 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo7UISceneCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab10VKXEfU_So7I5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n(v23, v6, v4, v29);

  result = MEMORY[0x18D0110E0](v23, -1, -1);
  if (!v3)
  {
    return v24;
  }

  return result;
}

void specialized configureHostingController #1 <A>(_:) in AppSceneDelegate.makeSceneHostWindow(restorationSceneItemID:restorationData:connectionOptions:urlContexts:role:windowScene:delegate:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v69 = a3;
  type metadata accessor for WeakBox<UISceneConnectionOptions>?(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v61 - v10;
  static Log.scenes.getter();
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  v15 = MEMORY[0x1E69E7D40];
  v68 = a2;
  if (v14 == 1)
  {
    outlined destroy of PPTTestHost?(v11, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720], type metadata accessor for WeakBox<UISceneConnectionOptions>?);
  }

  else
  {
    v67 = a5;
    v16 = a1;
    v17 = a2;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();

    v66 = v19;
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v70 = v64;
      *v20 = 136315906;
      v21 = [v17 session];
      v22 = [v21 persistentIdentifier];
      v65 = a4;
      v23 = v22;

      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v62 = v18;
      v26 = v25;

      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v70);

      *(v20 + 4) = v27;
      *(v20 + 12) = 2112;
      *(v20 + 14) = v16;
      v28 = v63;
      *v63 = v16;
      *(v20 + 22) = 2112;
      v29 = *(v16 + direct field offset for UIHostingController.host);
      *(v20 + 24) = v29;
      v28[1] = v29;
      *(v20 + 32) = 2112;
      v30 = *(v29 + *((*MEMORY[0x1E69E7D40] & *v29) + 0x68));
      *(v20 + 34) = v30;
      v28[2] = v30;
      v31 = v16;
      v32 = v29;
      v33 = v30;
      v34 = v62;
      _os_log_impl(&dword_18BD4A000, v62, v66, "Scene session %s will have a UIHostingController: %@\nwith UIHostingView: %@\nwith UIHostingViewBase: %@", v20, 0x2Au);
      type metadata accessor for NSObject?(0);
      swift_arrayDestroy();
      MEMORY[0x18D0110E0](v28, -1, -1);
      v35 = v64;
      __swift_destroy_boxed_opaque_existential_1(v64);
      MEMORY[0x18D0110E0](v35, -1, -1);
      v36 = v20;
      v15 = MEMORY[0x1E69E7D40];
      MEMORY[0x18D0110E0](v36, -1, -1);
    }

    else
    {
    }

    (*(v13 + 8))(v11, v12);
    a5 = v67;
  }

  v37 = direct field offset for UIHostingController.host;
  v38 = OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneBridge;
  v39 = v69;
  swift_weakAssign();
  *(*(a1 + v37) + *((*v15 & **(a1 + v37)) + 0x1C0) + 8) = &protocol witness table for AppSceneDelegate;
  swift_unknownObjectWeakAssign();
  if (*(v39 + v38))
  {
    v40 = *(a1 + v37);
    UIHostingViewBase.viewGraph.getter();

    if (one-time initialization token for isEnabled != -1)
    {
      swift_once();
    }

    if (static PPTFeature.isEnabled)
    {
      lazy protocol witness table accessor for type PPTFeature and conformance PPTFeature();
      if (!ViewGraph.subscript.getter())
      {
        v70 = 0;
        ViewGraph.append<A>(feature:)();
      }
    }
  }

  v41 = *(a1 + v37);
  v42 = *(a5 + 176);
  v70 = *(a5 + 168);
  v71 = v42;

  v43 = v41;

  UIHostingViewBase.inheritedEnvironment.setter();

  v44 = [v68 sizeRestrictions];
  if (v44)
  {

    v45 = qword_18CD77EC8[*(a5 + 488)];
    v46 = direct field offset for UIHostingController.sizingOptions;
    swift_beginAccess();
    v47 = *(a1 + v46);
    *(a1 + v46) = v45;
    v70 = v47;
    (*((*v15 & *a1) + 0x3D8))(&v70);
    if ((*(a5 + 536) & 1) == 0)
    {
      v48 = *(v69 + v38);
      if (v48)
      {

        _ProposedSize.init(_:)();
        v49 = v71;
        v50 = v72;
        v51 = v73;
        v52 = v48 + OBJC_IVAR____TtC7SwiftUI11SceneBridge_initialSceneSizeState;
        *v52 = v70;
        *(v52 + 8) = v49;
        *(v52 + 16) = v50;
        *(v52 + 24) = v51;
      }
    }
  }

  if ((*(a5 + 184) & 2) != 0)
  {
    v53 = *(a1 + v37);
    v54 = specialized _UIHostingView.base.getter();
    UIHostingViewBase.safeAreaRegions.setter();
  }

  type metadata accessor for ScenePresentationBridge();
  v55 = swift_allocObject();
  *(v55 + 16) = -1;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  *(v55 + 24) = JSONEncoder.init()();
  *(v55 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v55 + 40) = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<AnyView, RootModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, RootModifier>> and conformance _UIHostingView<A>, protocol conformance descriptor for _UIHostingView<A>);
  swift_unknownObjectWeakAssign();
  v56 = *(a1 + v37);
  UIHostingViewBase.viewGraph.getter();

  GraphHost.addPreference<A>(_:)();

  v57 = *(a1 + v37);
  *(v57 + *((*v15 & *v57) + 0x160)) = v55;
  v58 = v57;

  if (*(v69 + v38))
  {
    v59 = *(a1 + v37);

    v60 = v59;
    UIHostingViewBase.viewGraph.getter();

    swift_weakAssign();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t specialized _do #1 <A>(_:) in handleConnectionOptionsCallbacks #1 (_:) in AppSceneDelegate.scene(_:willConnectTo:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - v14;
  UISceneConnectionOptions.subscript.getter();
  if ((*(v12 + 48))(v11, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v9 + 8))(v11, v8);
  }

  (*(v12 + 32))(v15, v11, AssociatedTypeWitness);
  if (!*(a3 + 16))
  {
    return (*(v12 + 8))(v15, AssociatedTypeWitness);
  }

  result = specialized __RawDictionaryStorage.find<A>(_:)(a4);
  if ((v17 & 1) == 0)
  {
    return (*(v12 + 8))(v15, AssociatedTypeWitness);
  }

  v18 = *(*(a3 + 56) + 8 * result);
  if (!(v18 >> 62))
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_7;
    }

    return (*(v12 + 8))(v15, AssociatedTypeWitness);
  }

  result = __CocoaSet.count.getter();
  v19 = result;
  if (!result)
  {
    return (*(v12 + 8))(v15, AssociatedTypeWitness);
  }

LABEL_7:
  v28 = v15;
  v25 = v12;
  if (v19 >= 1)
  {
    v27 = v18 & 0xC000000000000001;

    v20 = 0;
    v26 = v18;
    do
    {
      if (v27)
      {
        v21 = MEMORY[0x18D00E9C0](v20, v18);
      }

      else
      {
        v21 = *(v18 + 8 * v20 + 32);
      }

      ++v20;
      v22 = *(*v21 + 80);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v24 = swift_getAssociatedConformanceWitness();
      v22(v28, AssociatedTypeWitness, AssociatedConformanceWitness, v24);

      v18 = v26;
    }

    while (v19 != v20);

    v12 = v25;
    v15 = v28;
    return (*(v12 + 8))(v15, AssociatedTypeWitness);
  }

  __break(1u);
  return result;
}

void specialized closure #1 in _NativeSet.filter(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = *(*(a3 + 48) + 8 * v14);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIScene, 0x1E69DCE70);
    v16 = v15;
    v17 = static NSObject.== infix(_:_:)();

    if ((v17 & 1) == 0)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
LABEL_15:

        specialized _NativeSet.extractSubset(using:count:)(a1, a2, v21, a3);
        return;
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

    if (v5 >= v10)
    {
      goto LABEL_15;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

{
  v38 = a2;
  v40 = a1;
  v6 = type metadata accessor for URL();
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v37 - v10;
  v43 = a3;
  v44 = 0;
  v12 = 0;
  v13 = *(a3 + 56);
  v39 = a3 + 56;
  v14 = 1 << *(a3 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & v13;
  v17 = (v14 + 63) >> 6;
  v52 = a4 + 56;
  v53 = a4;
  v50 = v9 + 16;
  v41 = v17;
  v42 = v9;
  v54 = (v9 + 8);
LABEL_6:
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_13:
    v21 = v18 | (v12 << 6);
    v22 = *(v43 + 48);
    v46 = v21;
    v49 = *(v22 + 8 * v21);
    v23 = [v49 URL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = *(a4 + 16);
    v45 = v54 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    if (v24 && (lazy protocol witness table accessor for type SceneBridge and conformance SceneBridge(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]), v25 = dispatch thunk of Hashable._rawHashValue(seed:)(), v26 = -1 << *(a4 + 32), v27 = v25 & ~v26, ((*(v52 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) != 0))
    {
      v47 = v16;
      v48 = v12;
      v28 = v11;
      v29 = ~v26;
      v30 = *(v42 + 72);
      v31 = *(v42 + 16);
      do
      {
        v32 = v51;
        v31(v51, *(v53 + 48) + v30 * v27, v6);
        lazy protocol witness table accessor for type SceneBridge and conformance SceneBridge(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
        v33 = dispatch thunk of static Equatable.== infix(_:_:)();
        v34 = *v54;
        (*v54)(v32, v6);
        if (v33)
        {
          v11 = v28;
          v34(v28, v6);

          a4 = v53;
          v16 = v47;
          v12 = v48;
          v17 = v41;
          goto LABEL_6;
        }

        v27 = (v27 + 1) & v29;
      }

      while (((*(v52 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) != 0);
      a4 = v53;
      v11 = v28;
      v16 = v47;
      v12 = v48;
      v17 = v41;
      v34(v11, v6);
    }

    else
    {
      (*v54)(v11, v6);
    }

    *(v40 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
    if (__OFADD__(v44++, 1))
    {
      goto LABEL_25;
    }
  }

  v19 = v12;
  while (1)
  {
    v12 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v12 >= v17)
    {
      v36 = v43;

      specialized _NativeSet.extractSubset(using:count:)(v40, v38, v44, v36);
      return;
    }

    v20 = *(v39 + 8 * v12);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v16 = (v20 - 1) & v20;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

Swift::Int specialized _NativeSet.filter(_:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v31 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = a2;
  v10 = v9;
  if (v6 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v27 = v7;
    v28 = v3;
    v26 = &v26;
    MEMORY[0x1EEE9AC00](v9);
    v29 = &v26 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v29, v8);
    v30 = 0;
    v11 = 0;
    v3 = a1 + 56;
    v12 = 1 << *(a1 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(a1 + 56);
    v15 = (v12 + 63) >> 6;
    while (v14)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_12:
      v7 = v16 | (v11 << 6);
      v19 = *(*(a1 + 48) + 8 * v7);
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIScene, 0x1E69DCE70);
      v20 = v19;
      v8 = static NSObject.== infix(_:_:)();

      if ((v8 & 1) == 0)
      {
        *&v29[(v7 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v7;
        if (__OFADD__(v30++, 1))
        {
          __break(1u);
LABEL_16:
          v22 = specialized _NativeSet.extractSubset(using:count:)(v29, v27, v30, a1);

          return v22;
        }
      }
    }

    v17 = v11;
    while (1)
    {
      v11 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v11 >= v15)
      {
        goto LABEL_16;
      }

      v18 = *(v3 + 8 * v11);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v24 = swift_slowAlloc();
  v25 = v10;
  v22 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo7UISceneCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab10VKXEfU_So7I5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n0218_s7SwiftUI16AppSceneDelegateC04makeD10HostWindow33_4475FD12FD59DEBA453321BD91F6EA04011restorationD6ItemID0O4Data17connectionOptions11urlContexts4role06windowD08delegateSo8UIWindowCAA0dQ0OSg_SDys11AnyHashableVypGSo017i43ConnectionT0CShySo16UIOpenURLContextCGzSo18i45SessionRoleaSo0zD0CAA013UIHostingViewE0_ptFSbpI7CXEfU0_So08UIWindowW0CTf1nnc_n(v24, v7, a1, v25);

  MEMORY[0x18D0110E0](v24, -1, -1);

  return v22;
}

Swift::Int specialized Set._Variant.filter(_:)(uint64_t a1, void *a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return specialized _NativeSet.filter(_:)(a1, a2);
  }

  v2 = MEMORY[0x1E69E7CD0];
  v16 = MEMORY[0x1E69E7CD0];
  v3 = a2;
  __CocoaSet.makeIterator()();
  if (__CocoaSet.Iterator.next()())
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIScene, 0x1E69DCE70);
    do
    {
      swift_dynamicCast();
      if (static NSObject.== infix(_:_:)())
      {
      }

      else
      {
        v4 = *(v2 + 16);
        if (*(v2 + 24) <= v4)
        {
          specialized _NativeSet.resize(capacity:)(v4 + 1);
        }

        v2 = v16;
        result = NSObject._rawHashValue(seed:)(*(v16 + 40));
        v6 = v16 + 56;
        v7 = -1 << *(v16 + 32);
        v8 = result & ~v7;
        v9 = v8 >> 6;
        if (((-1 << v8) & ~*(v16 + 56 + 8 * (v8 >> 6))) != 0)
        {
          v10 = __clz(__rbit64((-1 << v8) & ~*(v16 + 56 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v7) >> 6;
          do
          {
            if (++v9 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v9 == v12;
            if (v9 == v12)
            {
              v9 = 0;
            }

            v11 |= v13;
            v14 = *(v6 + 8 * v9);
          }

          while (v14 == -1);
          v10 = __clz(__rbit64(~v14)) + (v9 << 6);
        }

        *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
        *(*(v16 + 48) + 8 * v10) = v15;
        ++*(v16 + 16);
      }
    }

    while (__CocoaSet.Iterator.next()());
  }

  return v2;
}

Swift::Int specialized _NativeSet.filter(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v60 = *MEMORY[0x1E69E9840];
  v59 = type metadata accessor for URL();
  v6 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v55 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v41 - v9;
  v11 = *(a1 + 32);
  v12 = v11 & 0x3F;
  v42 = ((1 << v11) + 63) >> 6;
  v13 = 8 * v42;

  if (v12 > 0xD)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v41[0] = v41;
    v41[1] = v3;
    MEMORY[0x1EEE9AC00](v14);
    v44 = v41 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v44, v13);
    v48 = 0;
    v13 = 0;
    v15 = *(a1 + 56);
    v43 = a1 + 56;
    v16 = 1 << *(a1 + 32);
    v17 = v16 < 64 ? ~(-1 << v16) : -1;
    v18 = v17 & v15;
    v3 = (v16 + 63) >> 6;
    v56 = a2 + 56;
    v57 = a2;
    v54 = v6 + 16;
    v58 = (v6 + 8);
    v46 = a1;
    v47 = v6;
    v45 = v3;
LABEL_7:
    while (v18)
    {
      v19 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_14:
      v22 = v19 | (v13 << 6);
      v23 = *(a1 + 48);
      v50 = v22;
      v53 = *(v23 + 8 * v22);
      v24 = [v53 URL];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v25 = *(a2 + 16);
      v49 = v58 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      if (v25 && (lazy protocol witness table accessor for type SceneBridge and conformance SceneBridge(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]), v26 = dispatch thunk of Hashable._rawHashValue(seed:)(), v27 = -1 << *(a2 + 32), v28 = v26 & ~v27, ((*(v56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) != 0))
      {
        v51 = v18;
        v52 = v13;
        v29 = v10;
        v30 = ~v27;
        v31 = *(v6 + 72);
        v32 = *(v6 + 16);
        do
        {
          v33 = v55;
          v34 = v59;
          v32(v55, *(v57 + 48) + v31 * v28, v59);
          lazy protocol witness table accessor for type SceneBridge and conformance SceneBridge(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
          v35 = dispatch thunk of static Equatable.== infix(_:_:)();
          v36 = *v58;
          (*v58)(v33, v34);
          if (v35)
          {
            v10 = v29;
            v36(v29, v59);

            a2 = v57;
            a1 = v46;
            v6 = v47;
            v18 = v51;
            v13 = v52;
            v3 = v45;
            goto LABEL_7;
          }

          v28 = (v28 + 1) & v30;
        }

        while (((*(v56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) != 0);
        a2 = v57;
        v3 = v45;
        a1 = v46;
        v10 = v29;
        v18 = v51;
        v13 = v52;
        v36(v10, v59);
      }

      else
      {
        (*v58)(v10, v59);
      }

      *&v44[(v50 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v50;
      v6 = v47;
      if (__OFADD__(v48++, 1))
      {
        goto LABEL_27;
      }
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v3)
      {
        v38 = specialized _NativeSet.extractSubset(using:count:)(v44, v42, v48, a1);

        return v38;
      }

      v21 = *(v43 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v18 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v40 = swift_slowAlloc();

  v38 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo16UIOpenURLContextCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab11VKXEfU_So16iJ5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n0241_s7SwiftUI16AppSceneDelegateC04makeD10HostWindow33_4475FD12FD59DEBA453321BD91F6EA04011restorationD6ItemID0O4Data17connectionOptions11urlContexts4role06windowD08delegateSo8UIWindowCAA0dQ0OSg_SDys11AnyHashableVypGSo017UISceneConnectionT0CShyqiJ67CGzSo18UISceneSessionRoleaSo0zD0CAA013UIHostingViewE0_ptFSbAXXEfU3_Shy10Foundation3URLVGTf1nnc_n(v40, v42, a1, a2);

  MEMORY[0x18D0110E0](v40, -1, -1);

  return v38;
}

Swift::Int specialized Set._Variant.filter(_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v40 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v47 = &v39 - v9;
  if ((a1 & 0xC000000000000001) == 0)
  {
    return specialized _NativeSet.filter(_:)(v8, a2);
  }

  v10 = MEMORY[0x1E69E7CD0];
  v50 = MEMORY[0x1E69E7CD0];

  v42 = __CocoaSet.makeIterator()();
  v11 = __CocoaSet.Iterator.next()();
  if (v11)
  {
    v12 = v11;
    v41 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIOpenURLContext, 0x1E69DCD08);
    v13 = v12;
    v44 = v40 + 16;
    v45 = a2 + 56;
    v14 = (v40 + 8);
    v43 = MEMORY[0x1E69E7CD0];
    v46 = a2;
    do
    {
      v48 = v13;
      swift_dynamicCast();
      v23 = [v49 URL];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(a2 + 16) && (lazy protocol witness table accessor for type SceneBridge and conformance SceneBridge(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]), v24 = dispatch thunk of Hashable._rawHashValue(seed:)(), v25 = v46, v26 = -1 << *(v46 + 32), v27 = v24 & ~v26, ((*(v45 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) != 0))
      {
        v28 = ~v26;
        v29 = *(v40 + 72);
        v30 = *(v40 + 16);
        while (1)
        {
          v30(v6, *(v25 + 48) + v29 * v27, v4);
          lazy protocol witness table accessor for type SceneBridge and conformance SceneBridge(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
          v31 = dispatch thunk of static Equatable.== infix(_:_:)();
          v32 = *v14;
          (*v14)(v6, v4);
          if (v31)
          {
            break;
          }

          v27 = (v27 + 1) & v28;
          v25 = v46;
          if (((*(v45 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        v32(v47, v4);
      }

      else
      {
LABEL_13:
        (*v14)(v47, v4);
        v33 = v49;
        v34 = *(v43 + 16);
        if (*(v43 + 24) <= v34)
        {
          specialized _NativeSet.resize(capacity:)(v34 + 1);
        }

        v15 = v50;
        result = NSObject._rawHashValue(seed:)(*(v50 + 40));
        v17 = v15 + 56;
        v18 = -1 << *(v15 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v15 + 56 + 8 * (v19 >> 6))) != 0)
        {
          v21 = __clz(__rbit64((-1 << v19) & ~*(v15 + 56 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v35 = 0;
          v36 = (63 - v18) >> 6;
          do
          {
            if (++v20 == v36 && (v35 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v37 = v20 == v36;
            if (v20 == v36)
            {
              v20 = 0;
            }

            v35 |= v37;
            v38 = *(v17 + 8 * v20);
          }

          while (v38 == -1);
          v21 = __clz(__rbit64(~v38)) + (v20 << 6);
        }

        *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v15 + 48) + 8 * v21) = v33;
        v22 = *(v15 + 16) + 1;
        v43 = v15;
        *(v15 + 16) = v22;
      }

      v13 = __CocoaSet.Iterator.next()();
      a2 = v46;
    }

    while (v13);
  }

  else
  {
    v43 = v10;
  }

  return v43;
}

void specialized handleConnectionOptionsCallbacks #1 <A>(_:) in AppSceneDelegate.handleConnectionOptionDefinition<A>(payload:definition:scene:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a1 + 16))
  {
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v9)
    {
      v10 = *(*(a1 + 56) + 8 * v8);
      swift_beginAccess();
      v22 = v10;
      v11 = v10 >> 62;
      if ((*(a3 + 16) & 1) == 0)
      {
        if (v11)
        {
          goto LABEL_21;
        }

        v13 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_7;
      }

      for (i = 1; ; i = v13 != 0)
      {
        swift_beginAccess();
        *(a3 + 16) = i;
        if (v11)
        {
          v14 = __CocoaSet.count.getter();
          if (!v14)
          {
            return;
          }
        }

        else
        {
          v14 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v14)
          {
            return;
          }
        }

        if (v14 >= 1)
        {
          break;
        }

        __break(1u);
LABEL_21:
        v13 = __CocoaSet.count.getter();
LABEL_7:
        ;
      }

      v15 = 0;
      do
      {
        if ((v22 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x18D00E9C0](v15, v22);
        }

        else
        {
          v16 = *(v22 + 8 * v15 + 32);
        }

        ++v15;
        v17 = *(*v16 + 80);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v20 = swift_getAssociatedConformanceWitness();
        v17(a4, AssociatedTypeWitness, AssociatedConformanceWitness, v20);
      }

      while (v14 != v15);
    }
  }
}

uint64_t specialized AppSceneDelegate.handleConnectionOptionDefinition<A>(payload:definition:scene:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[77] = v4;
  v5[76] = a4;
  v5[75] = a3;
  v5[74] = a2;
  v5[73] = a1;
  type metadata accessor for MainActor();
  v5[78] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](specialized AppSceneDelegate.handleConnectionOptionDefinition<A>(payload:definition:scene:), v7, v6);
}

uint64_t specialized AppSceneDelegate.handleConnectionOptionDefinition<A>(payload:definition:scene:)()
{
  v1 = v0[77];
  v2 = v0[76];
  v3 = v0[75];
  v4 = v0[74];
  v5 = v0[73];

  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  AppSceneDelegate.sceneItem()(v0 + 2);
  v7 = v0[71];

  outlined destroy of SceneList.Item((v0 + 2));
  specialized handleConnectionOptionsCallbacks #1 <A>(_:) in AppSceneDelegate.handleConnectionOptionDefinition<A>(payload:definition:scene:)(v7, v4, v6, v5, v3, v2);

  if (*(v1 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneBridge))
  {
    v8 = v0[76];
    v9 = v0[75];
    v10 = v0[74];
    v11 = v0[73];

    specialized handleConnectionOptionsCallbacks #1 <A>(_:) in AppSceneDelegate.handleConnectionOptionDefinition<A>(payload:definition:scene:)(v12, v10, v6, v11, v9, v8);
  }

  swift_beginAccess();
  if ((*(v6 + 16) & 1) == 0)
  {
    v14 = type metadata accessor for UISceneConnectionOptionDefinitionError();
    lazy protocol witness table accessor for type SceneBridge and conformance SceneBridge(&lazy protocol witness table cache variable for type UISceneConnectionOptionDefinitionError and conformance UISceneConnectionOptionDefinitionError, MEMORY[0x1E69DC2D8], MEMORY[0x1E69DC2E0]);
    swift_allocError();
    (*(*(v14 - 8) + 104))(v15, *MEMORY[0x1E69DC2D0], v14);
    swift_willThrow();
  }

  v13 = v0[1];

  return v13();
}

void type metadata accessor for WeakBox<UISceneConnectionOptions>?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t outlined consume of UISceneAdaptorConfiguration.Kind(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<AnyView, ClarityUIInterfaceIdiomModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<AnyView, ClarityUIInterfaceIdiomModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<AnyView, ClarityUIInterfaceIdiomModifier> and conformance <> ModifiedContent<A, B>)
  {
    v4[2] = v0;
    v4[3] = v1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.DocumentCommandsKey>(255, &lazy cache variable for type metadata for ModifiedContent<AnyView, ClarityUIInterfaceIdiomModifier>, MEMORY[0x1E6981910], &type metadata for ClarityUIInterfaceIdiomModifier, MEMORY[0x1E697E830]);
    v4[0] = MEMORY[0x1E6981900];
    v4[1] = &protocol witness table for ClarityUIInterfaceIdiomModifier;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<AnyView, ClarityUIInterfaceIdiomModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for NSObject?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for NSObject?)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for NSObject?);
    }
  }
}

uint64_t objectdestroy_81Tm()
{

  return swift_deallocObject();
}

void type metadata accessor for FallbackDelegateBox<NSObject>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for FallbackDelegateBox<NSObject>)
  {
    v2 = type metadata accessor for NSObject(255, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
    v5 = type metadata accessor for FallbackDelegateBox(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for FallbackDelegateBox<NSObject>);
    }
  }
}

unint64_t type metadata accessor for Swift.AnyObject.Type()
{
  result = lazy cache variable for type metadata for Swift.AnyObject.Type;
  if (!lazy cache variable for type metadata for Swift.AnyObject.Type)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Swift.AnyObject.Type);
  }

  return result;
}

uint64_t outlined assign with take of AnyHashable?(uint64_t a1, uint64_t a2)
{
  _ss11AnyHashableVSgMaTm_1(0, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void type metadata accessor for Set<UIOpenURLContext>.Index(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Set<UIOpenURLContext>.Index)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIOpenURLContext, 0x1E69DCD08);
    lazy protocol witness table accessor for type UIScene and conformance NSObject(&lazy protocol witness table cache variable for type UIOpenURLContext and conformance NSObject, &lazy cache variable for type metadata for UIOpenURLContext, 0x1E69DCD08);
    v1 = type metadata accessor for Set.Index();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Set<UIOpenURLContext>.Index);
    }
  }
}

uint64_t partial apply for closure #1 in AppDelegate.application(_:handleEventsForBackgroundURLSession:completionHandler:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in AppDelegate.application(_:handleEventsForBackgroundURLSession:completionHandler:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t partial apply for closure #1 in closure #1 in AppDelegate.application(_:handleEventsForBackgroundURLSession:completionHandler:)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return closure #1 in closure #1 in AppDelegate.application(_:handleEventsForBackgroundURLSession:completionHandler:)(a1, a2, v7, v6);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in AppDelegate.application(_:handleEventsForBackgroundURLSession:completionHandler:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return closure #1 in closure #1 in closure #1 in AppDelegate.application(_:handleEventsForBackgroundURLSession:completionHandler:)(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_108Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in closure #1 in closure #1 in AppDelegate.application(_:handleEventsForBackgroundURLSession:completionHandler:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return closure #2 in closure #1 in closure #1 in AppDelegate.application(_:handleEventsForBackgroundURLSession:completionHandler:)(a1, v4, v5, v7, v6);
}

uint64_t assignWithTake for RootEnvironmentModifier(uint64_t a1, uint64_t a2)
{
  swift_weakTakeAssign();
  swift_weakTakeAssign();
  swift_weakTakeAssign();
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a1 + 48);
  if (v4 == 255)
  {
    goto LABEL_5;
  }

  v5 = *(a2 + 48);
  if (v5 == 255)
  {
    outlined destroy of SceneID(a1 + 32);
LABEL_5:
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    goto LABEL_6;
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v5 & 1;
  outlined consume of SceneID(v6, v7, v4 & 1);
LABEL_6:
  v8 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t storeEnumTagSinglePayload for RootEnvironmentModifier(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 56) = a2;
    }
  }

  return result;
}

uint64_t outlined init with copy of OpenURLContext(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for WeakBox<UISceneConnectionOptions>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for WeakBox<UISceneConnectionOptions>)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UISceneConnectionOptions, 0x1E69DCE90);
    v1 = type metadata accessor for WeakBox();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for WeakBox<UISceneConnectionOptions>);
    }
  }
}

uint64_t outlined destroy of PPTTestHost?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t outlined destroy of OpenURLContext(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t partial apply for closure #1 in implicit closure #2 in implicit closure #1 in RootEnvironmentModifier.Child.updateValue()@<X0>(_BYTE *a2@<X8>)
{
  result = AGCompareValues();
  *a2 = result ^ 1;
  return result;
}

uint64_t assignWithCopy for RootEnvironmentModifier.Child(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  v4 = *(a2 + 64);
  if (*(a1 + 64) == 1)
  {
    if (v4 == 1)
    {
      v5 = *(a2 + 8);
      v6 = *(a2 + 24);
      v7 = *(a2 + 40);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 40) = v7;
      *(a1 + 24) = v6;
      *(a1 + 8) = v5;
    }

    else
    {
      swift_weakCopyInit();
      swift_weakCopyInit();
      swift_weakCopyInit();
      *(a1 + 32) = *(a2 + 32);
      v12 = *(a2 + 56);
      if (v12 == 255)
      {
        v23 = *(a2 + 40);
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 40) = v23;
      }

      else
      {
        v13 = *(a2 + 40);
        v14 = *(a2 + 48);
        v15 = v12 & 1;
        outlined copy of SceneID(v13, v14, v12 & 1);
        *(a1 + 40) = v13;
        *(a1 + 48) = v14;
        *(a1 + 56) = v15;
      }

      v24 = *(a2 + 64);
      *(a1 + 64) = v24;
      v25 = v24;
    }
  }

  else
  {
    v8 = a1 + 8;
    if (v4 == 1)
    {
      outlined destroy of RootEnvironmentModifier(v8);
      v9 = *(a2 + 24);
      v10 = *(a2 + 40);
      v11 = *(a2 + 56);
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 56) = v11;
      *(a1 + 40) = v10;
      *(a1 + 24) = v9;
    }

    else
    {
      swift_weakCopyAssign();
      swift_weakCopyAssign();
      swift_weakCopyAssign();
      *(a1 + 32) = *(a2 + 32);
      v16 = *(a2 + 56);
      if (*(a1 + 56) == 255)
      {
        if (v16 == 255)
        {
          v30 = *(a2 + 40);
          *(a1 + 56) = *(a2 + 56);
          *(a1 + 40) = v30;
        }

        else
        {
          v26 = *(a2 + 40);
          v27 = *(a2 + 48);
          v28 = v16 & 1;
          outlined copy of SceneID(v26, v27, v16 & 1);
          *(a1 + 40) = v26;
          *(a1 + 48) = v27;
          *(a1 + 56) = v28;
        }
      }

      else if (v16 == 255)
      {
        outlined destroy of SceneID(a1 + 40);
        v29 = *(a2 + 56);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 56) = v29;
      }

      else
      {
        v17 = *(a2 + 40);
        v18 = *(a2 + 48);
        v19 = v16 & 1;
        outlined copy of SceneID(v17, v18, v16 & 1);
        v20 = *(a1 + 40);
        v21 = *(a1 + 48);
        v22 = *(a1 + 56);
        *(a1 + 40) = v17;
        *(a1 + 48) = v18;
        *(a1 + 56) = v19;
        outlined consume of SceneID(v20, v21, v22);
      }

      v31 = *(a1 + 64);
      v32 = *(a2 + 64);
      *(a1 + 64) = v32;
      v33 = v32;
    }
  }

  return a1;
}

uint64_t initializeWithTake for RootEnvironmentModifier.Child(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = (a1 + 8);
  if (*(a2 + 64) == 1)
  {
    v4 = *(a2 + 24);
    *v3 = *(a2 + 8);
    v3[1] = v4;
    v5 = *(a2 + 56);
    v3[2] = *(a2 + 40);
    v3[3] = v5;
  }

  else
  {
    swift_weakTakeInit();
    swift_weakTakeInit();
    swift_weakTakeInit();
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = *(a2 + 64);
  }

  return a1;
}

uint64_t assignWithTake for RootEnvironmentModifier.Child(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 64);
  if (*(a1 + 64) != 1)
  {
    v5 = a1 + 8;
    if (v4 == 1)
    {
      outlined destroy of RootEnvironmentModifier(v5);
      goto LABEL_6;
    }

    swift_weakTakeAssign();
    swift_weakTakeAssign();
    swift_weakTakeAssign();
    *(a1 + 32) = *(a2 + 32);
    v6 = *(a1 + 56);
    if (v6 != 255)
    {
      v7 = *(a2 + 56);
      if (v7 != 255)
      {
        v8 = *(a1 + 40);
        v9 = *(a1 + 48);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 56) = v7 & 1;
        outlined consume of SceneID(v8, v9, v6 & 1);
LABEL_12:
        v10 = *(a1 + 64);
        *(a1 + 64) = *(a2 + 64);

        return a1;
      }

      outlined destroy of SceneID(a1 + 40);
    }

    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    goto LABEL_12;
  }

  if (v4 == 1)
  {
LABEL_6:
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    return a1;
  }

  swift_weakTakeInit();
  swift_weakTakeInit();
  swift_weakTakeInit();
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t getEnumTagSinglePayload for RootEnvironmentModifier.Child(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 72))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 64);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for RootEnvironmentModifier.Child(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlatformItemListButtonStyle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 57))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for PlatformItemListButtonStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t **closure #1 in PlatformItemListButtonStyle.menuItemAttributedTitleModifier.getter(uint64_t **result)
{
  v1 = *result;
  v2 = (*result)[2];
  if (v2)
  {
    v3 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
      v1 = result;
    }

    if (v2 > v1[2])
    {
      __break(1u);
    }

    else
    {
      result = type metadata accessor for PlatformItemList.Item(0);
      v4 = v1 + ((*(*(result - 1) + 80) + 32) & ~*(*(result - 1) + 80));
      v5 = (*(result - 1))[9];
      do
      {
        v4[*(result + 33)] = 1;
        v4 += v5;
        --v2;
      }

      while (v2);
      *v3 = v1;
    }
  }

  return result;
}

uint64_t key path getter for PlatformButtonActionModifier.action : PlatformButtonActionModifier@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @callee_guaranteed () -> ();
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return outlined copy of AppIntentExecutor?(v3, v4);
}

uint64_t key path setter for PlatformButtonActionModifier.action : PlatformButtonActionModifier(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  v8 = a2[1];
  outlined copy of AppIntentExecutor?(v3, v4);
  result = outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v7, v8);
  *a2 = v6;
  a2[1] = v5;
  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance PlatformButtonActionTransform.MakeTransform@<X0>(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *(Value + 16);
  v3 = *(Value + 24);
  *a1 = *Value;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;

  return swift_unknownObjectRetain();
}

uint64_t PlatformButtonActionTransform.SelectionContent.value.getter(unint64_t a1, uint64_t a2)
{
  AGGraphGetValue();
  AGGraphGetValue();
  return static PlatformItem.SelectionContent.selection(onSelect:onDeselect:options:auxiliaryContent:)();
}

__n128 protocol witness for static UnaryPlatformItemsModifier.updateItem(modifier:item:) in conformance PlatformButtonActionTransform(__n128 *a1, void *a2)
{
  v2 = (a2 + 35);
  v3 = a2[35];
  v4 = a2[36];
  v5 = a2[37];
  v6 = a2[38];
  v8 = a1[1];
  v9 = *a1;
  swift_unknownObjectRetain();
  outlined consume of PlatformItem.SelectionContent?(v3, v4, v5, v6);
  result = v9;
  *v2 = v9;
  v2[1] = v8;
  return result;
}

uint64_t protocol witness for static PlatformItemsModifier.updateItems(modifier:items:) in conformance PlatformButtonActionTransform(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type PlatformButtonActionTransform and conformance PlatformButtonActionTransform();

  return MEMORY[0x1EEDE22A8](a1, a2, a3, v6);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance PlatformButtonActionTransform@<X0>(void *(*a3)(void *__return_ptr)@<X2>, void *a5@<X8>)
{
  a3(a5);
  lazy protocol witness table accessor for type PlatformButtonActionTransform and conformance PlatformButtonActionTransform();
  return static PlatformItemsModifier.transformPlatformItemsOutputs<A>(_:inputs:modifier:)();
}

uint64_t outlined init with copy of Environment<PaletteSelectionEffect>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Environment<Bool>(0, &lazy cache variable for type metadata for Environment<PaletteSelectionEffect>, &type metadata for PaletteSelectionEffect, MEMORY[0x1E697DCC0]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t specialized _ArrayBuffer._consumeAndCreateNew()(unint64_t a1)
{
  if (a1 >> 62)
  {
    __CocoaSet.count.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t initializeWithCopy for PlatformButtonActionTransform(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  swift_unknownObjectRetain();
  return a1;
}

uint64_t assignWithCopy for PlatformButtonActionTransform(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return a1;
}

uint64_t assignWithTake for PlatformButtonActionTransform(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  swift_unknownObjectRelease();
  return a1;
}

uint64_t getEnumTagSinglePayload for PlatformButtonActionTransform(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for PlatformButtonActionTransform(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4_4>, LabelGroup<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleConfiguration.Label>, OnPlatformContainerSelectionModifier>, PlatformButtonActionModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>, StaticIf<MenuStyleContextViewInputPredicate, StaticIf<MenuItemSupportsAttributedTitle, PlatformItemListTransformModifier<TextPlatformItemListFlags>, EmptyModifier>, EmptyModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4_4>, LabelGroup<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleConfiguration.Label>, OnPlatformContainerSelectionModifier>, PlatformButtonActionModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>, StaticIf<MenuStyleContextViewInputPredicate, StaticIf<MenuItemSupportsAttributedTitle, PlatformItemListTransformModifier<TextPlatformItemListFlags>, EmptyModifier>, EmptyModifier>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4_4>, LabelGroup<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleConfiguration.Label>, OnPlatformContainerSelectionModifier>, PlatformButtonActionModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>(255);
    type metadata accessor for StaticIf<MenuStyleContextViewInputPredicate, StaticIf<MenuItemSupportsAttributedTitle, PlatformItemListTransformModifier<TextPlatformItemListFlags>, EmptyModifier>, EmptyModifier>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4_4>, LabelGroup<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleConfiguration.Label>, OnPlatformContainerSelectionModifier>, PlatformButtonActionModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>, StaticIf<MenuStyleContextViewInputPredicate, StaticIf<MenuItemSupportsAttributedTitle, PlatformItemListTransformModifier<TextPlatformItemListFlags>, EmptyModifier>, EmptyModifier>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4_4>, LabelGroup<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleConfiguration.Label>, OnPlatformContainerSelectionModifier>, PlatformButtonActionModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4_4>, LabelGroup<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleConfiguration.Label>, OnPlatformContainerSelectionModifier>, PlatformButtonActionModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4_4>, LabelGroup<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleConfiguration.Label>, OnPlatformContainerSelectionModifier>, PlatformButtonActionModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4_4>, LabelGroup<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleConfiguration.Label>, OnPlatformContainerSelectionModifier>, PlatformButtonActionModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4_4>, LabelGroup<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleConfiguration.Label>, OnPlatformContainerSelectionModifier>, PlatformButtonActionModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>);
    type metadata accessor for _SemanticFeature<Semantics_v4_4>(255, &lazy cache variable for type metadata for PlatformItemListTransformModifier<SelectionPlatformItemListFlags>, &type metadata for SelectionPlatformItemListFlags, &protocol witness table for SelectionPlatformItemListFlags, type metadata accessor for PlatformItemListTransformModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4_4>, LabelGroup<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleConfiguration.Label>, OnPlatformContainerSelectionModifier>, PlatformButtonActionModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4_4>, LabelGroup<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleConfiguration.Label>, OnPlatformContainerSelectionModifier>, PlatformButtonActionModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    type metadata accessor for _SemanticFeature<Semantics_v4_4>(255, &lazy cache variable for type metadata for PlatformItemListTransformModifier<LayoutPlatformItemListFlags>, &type metadata for LayoutPlatformItemListFlags, &protocol witness table for LayoutPlatformItemListFlags, type metadata accessor for PlatformItemListTransformModifier);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4_4>, LabelGroup<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleConfiguration.Label>, OnPlatformContainerSelectionModifier>, PlatformButtonActionModifier>(uint64_t a1, unint64_t *a2, double (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for StaticIf<_SemanticFeature<Semantics_v4_4>, LabelGroup<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleConfiguration.Label>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v4_4>, LabelGroup<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleConfiguration.Label>)
  {
    type metadata accessor for _SemanticFeature<Semantics_v4_4>(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v4_4>, MEMORY[0x1E697E508], MEMORY[0x1E697E500], MEMORY[0x1E697EC20]);
    type metadata accessor for _SemanticFeature<Semantics_v4_4>(255, &lazy cache variable for type metadata for LabelGroup<PrimitiveButtonStyleConfiguration.Label>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &protocol witness table for PrimitiveButtonStyleConfiguration.Label, type metadata accessor for LabelGroup);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v4_4>, LabelGroup<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleConfiguration.Label>);
    }
  }
}

void type metadata accessor for _SemanticFeature<Semantics_v4_4>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4_4>, LabelGroup<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleConfiguration.Label>, OnPlatformContainerSelectionModifier>, PlatformButtonActionModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4_4>, LabelGroup<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleConfiguration.Label>, OnPlatformContainerSelectionModifier>, PlatformButtonActionModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4_4>, LabelGroup<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleConfiguration.Label>, OnPlatformContainerSelectionModifier>, PlatformButtonActionModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4_4>, LabelGroup<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleConfiguration.Label>, OnPlatformContainerSelectionModifier>, PlatformButtonActionModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4_4>, LabelGroup<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleConfiguration.Label>, OnPlatformContainerSelectionModifier>, PlatformButtonActionModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4_4>, LabelGroup<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleConfiguration.Label>, OnPlatformContainerSelectionModifier>, PlatformButtonActionModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4_4>, LabelGroup<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleConfiguration.Label>, OnPlatformContainerSelectionModifier>, PlatformButtonActionModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4_4>, LabelGroup<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleConfiguration.Label>, OnPlatformContainerSelectionModifier>, PlatformButtonActionModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4_4>, LabelGroup<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleConfiguration.Label>, OnPlatformContainerSelectionModifier>, PlatformButtonActionModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4_4>, LabelGroup<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleConfiguration.Label>, OnPlatformContainerSelectionModifier>, PlatformButtonActionModifier> and conformance <> ModifiedContent<A, B>);
    v5[1] = &protocol witness table for PlatformItemListTransformModifier<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4_4>, LabelGroup<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleConfiguration.Label>, OnPlatformContainerSelectionModifier>, PlatformButtonActionModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4_4>, LabelGroup<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleConfiguration.Label>, OnPlatformContainerSelectionModifier>, PlatformButtonActionModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    v7[0] = a3();
    v7[1] = &protocol witness table for PlatformItemListTransformModifier<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v6, v7);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4_4>, LabelGroup<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleConfiguration.Label>, OnPlatformContainerSelectionModifier>, PlatformButtonActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4_4>, LabelGroup<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleConfiguration.Label>, OnPlatformContainerSelectionModifier>, PlatformButtonActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4_4>, LabelGroup<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleConfiguration.Label>, OnPlatformContainerSelectionModifier>, PlatformButtonActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4_4>, LabelGroup<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleConfiguration.Label>, OnPlatformContainerSelectionModifier>, PlatformButtonActionModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4_4>, LabelGroup<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleConfiguration.Label>, OnPlatformContainerSelectionModifier>, PlatformButtonActionModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>, StaticIf<MenuStyleContextViewInputPredicate, StaticIf<MenuItemSupportsAttributedTitle, PlatformItemListTransformModifier<TextPlatformItemListFlags>, EmptyModifier>, EmptyModifier>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4_4>, LabelGroup<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleConfiguration.Label>, OnPlatformContainerSelectionModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4_4>, LabelGroup<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleConfiguration.Label>, OnPlatformContainerSelectionModifier>, lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v4_4>, LabelGroup<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleConfiguration.Label> and conformance <> StaticIf<A, B, C>, lazy protocol witness table accessor for type OnPlatformContainerSelectionModifier and conformance OnPlatformContainerSelectionModifier);
    v5[1] = &protocol witness table for PlatformButtonActionModifier;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4_4>, LabelGroup<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleConfiguration.Label>, OnPlatformContainerSelectionModifier>, PlatformButtonActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4_4>, LabelGroup<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleConfiguration.Label>, OnPlatformContainerSelectionModifier>, PlatformButtonActionModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>, StaticIf<MenuStyleContextViewInputPredicate, StaticIf<MenuItemSupportsAttributedTitle, PlatformItemListTransformModifier<TextPlatformItemListFlags>, EmptyModifier>, EmptyModifier>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v4_4>, LabelGroup<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleConfiguration.Label> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v4_4>, LabelGroup<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleConfiguration.Label> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v4_4>, LabelGroup<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleConfiguration.Label> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<_SemanticFeature<Semantics_v4_4>, LabelGroup<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleConfiguration.Label>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4_4> and conformance _SemanticFeature<A>();
    v5[1] = lazy protocol witness table accessor for type LabelGroup<PrimitiveButtonStyleConfiguration.Label> and conformance LabelGroup<A>();
    v5[2] = &protocol witness table for PrimitiveButtonStyleConfiguration.Label;
    result = swift_getWitnessTable(MEMORY[0x1E6981CE8], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v4_4>, LabelGroup<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleConfiguration.Label> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4_4> and conformance _SemanticFeature<A>()
{
  result = lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v4_4> and conformance _SemanticFeature<A>;
  if (!lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v4_4> and conformance _SemanticFeature<A>)
  {
    type metadata accessor for _SemanticFeature<Semantics_v4_4>(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v4_4>, MEMORY[0x1E697E508], MEMORY[0x1E697E500], MEMORY[0x1E697EC20]);
    result = swift_getWitnessTable(MEMORY[0x1E697EC40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v4_4> and conformance _SemanticFeature<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlatformButtonActionTransform and conformance PlatformButtonActionTransform()
{
  result = lazy protocol witness table cache variable for type PlatformButtonActionTransform and conformance PlatformButtonActionTransform;
  if (!lazy protocol witness table cache variable for type PlatformButtonActionTransform and conformance PlatformButtonActionTransform)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlatformButtonActionTransform, &type metadata for PlatformButtonActionTransform, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformButtonActionTransform and conformance PlatformButtonActionTransform);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlatformButtonActionTransform and conformance PlatformButtonActionTransform;
  if (!lazy protocol witness table cache variable for type PlatformButtonActionTransform and conformance PlatformButtonActionTransform)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlatformButtonActionTransform, &type metadata for PlatformButtonActionTransform, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformButtonActionTransform and conformance PlatformButtonActionTransform);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlatformButtonActionTransform and conformance PlatformButtonActionTransform;
  if (!lazy protocol witness table cache variable for type PlatformButtonActionTransform and conformance PlatformButtonActionTransform)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlatformButtonActionTransform, &type metadata for PlatformButtonActionTransform, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformButtonActionTransform and conformance PlatformButtonActionTransform);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlatformButtonActionTransform.SelectionContent and conformance PlatformButtonActionTransform.SelectionContent()
{
  result = lazy protocol witness table cache variable for type PlatformButtonActionTransform.SelectionContent and conformance PlatformButtonActionTransform.SelectionContent;
  if (!lazy protocol witness table cache variable for type PlatformButtonActionTransform.SelectionContent and conformance PlatformButtonActionTransform.SelectionContent)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlatformButtonActionTransform.SelectionContent, &type metadata for PlatformButtonActionTransform.SelectionContent, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformButtonActionTransform.SelectionContent and conformance PlatformButtonActionTransform.SelectionContent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlatformButtonActionTransform.MakeTransform and conformance PlatformButtonActionTransform.MakeTransform()
{
  result = lazy protocol witness table cache variable for type PlatformButtonActionTransform.MakeTransform and conformance PlatformButtonActionTransform.MakeTransform;
  if (!lazy protocol witness table cache variable for type PlatformButtonActionTransform.MakeTransform and conformance PlatformButtonActionTransform.MakeTransform)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlatformButtonActionTransform.MakeTransform, &type metadata for PlatformButtonActionTransform.MakeTransform, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformButtonActionTransform.MakeTransform and conformance PlatformButtonActionTransform.MakeTransform);
  }

  return result;
}

double outlined consume of PlatformItem.SelectionContent?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    swift_unknownObjectRelease();
  }

  return result;
}

void type metadata accessor for Map<PlatformButtonActionModifier, (())?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Map<PlatformButtonActionModifier, (())?>)
  {
    type metadata accessor for (())?(255);
    v1 = type metadata accessor for Map();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Map<PlatformButtonActionModifier, (())?>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Map<PlatformButtonActionModifier, (())?> and conformance Map<A, B>()
{
  result = lazy protocol witness table cache variable for type Map<PlatformButtonActionModifier, (())?> and conformance Map<A, B>;
  if (!lazy protocol witness table cache variable for type Map<PlatformButtonActionModifier, (())?> and conformance Map<A, B>)
  {
    type metadata accessor for Map<PlatformButtonActionModifier, (())?>(255);
    result = swift_getWitnessTable(MEMORY[0x1E698D3A0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Map<PlatformButtonActionModifier, (())?> and conformance Map<A, B>);
  }

  return result;
}

void *View._focusGroup<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  _convertToAnyHashable<A>(_:)();
  MEMORY[0x18D00A570](v8, a2, &unk_1EFFA0280, a4);
  return outlined destroy of _PresentationTransitionOutputs(v8);
}

unint64_t lazy protocol witness table accessor for type AnonymousFocusGroupModifier and conformance AnonymousFocusGroupModifier()
{
  result = lazy protocol witness table cache variable for type AnonymousFocusGroupModifier and conformance AnonymousFocusGroupModifier;
  if (!lazy protocol witness table cache variable for type AnonymousFocusGroupModifier and conformance AnonymousFocusGroupModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnonymousFocusGroupModifier, &unk_1EFFA02A8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnonymousFocusGroupModifier and conformance AnonymousFocusGroupModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FocusGroupModifier and conformance FocusGroupModifier()
{
  result = lazy protocol witness table cache variable for type FocusGroupModifier and conformance FocusGroupModifier;
  if (!lazy protocol witness table cache variable for type FocusGroupModifier and conformance FocusGroupModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FocusGroupModifier, &unk_1EFFA0280, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FocusGroupModifier and conformance FocusGroupModifier);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA27AnonymousFocusGroupModifier33_843E2CF8C2FABDEAA3F932BB96663C44LLVGAaBHPxAaBHD1__AgA0cI0HPyHCHCTm(uint64_t a1, double a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *(a1 + 8);
  v6 = type metadata accessor for ModifiedContent();
  v8[0] = v5;
  v8[1] = a4();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v6, v8);
}

unint64_t lazy protocol witness table accessor for type FocusGroupPriorityModifier and conformance FocusGroupPriorityModifier()
{
  result = lazy protocol witness table cache variable for type FocusGroupPriorityModifier and conformance FocusGroupPriorityModifier;
  if (!lazy protocol witness table cache variable for type FocusGroupPriorityModifier and conformance FocusGroupPriorityModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FocusGroupPriorityModifier, &unk_1EFFA0200, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FocusGroupPriorityModifier and conformance FocusGroupPriorityModifier);
  }

  return result;
}

__n128 assignWithTake for FocusGroupModifier(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    v3 = a1;
    if (*(a2 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
    }

    else
    {
      outlined destroy of AnyHashable(a1);
    }

    a1 = v3;
  }

  result = *a2;
  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  *(a1 + 32) = *(a2 + 32);
  return result;
}

void *protocol witness for ViewModifier.body(content:) in conformance AnonymousFocusGroupModifier()
{
  Namespace.wrappedValue.getter();
  lazy protocol witness table accessor for type Namespace.ID and conformance Namespace.ID();
  return AnyHashable.init<A>(_:)();
}

void EnvironmentValues.focusGroupID.getter()
{
  if (*(v1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_focusGroupID>, &type metadata for EnvironmentValues.__Key_focusGroupID, &protocol witness table for EnvironmentValues.__Key_focusGroupID);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_focusGroupID> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_focusGroupID>, &type metadata for EnvironmentValues.__Key_focusGroupID, &protocol witness table for EnvironmentValues.__Key_focusGroupID);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_focusGroupID> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
  }
}

void key path getter for EnvironmentValues.focusGroupID : EnvironmentValues(uint64_t *a1)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_focusGroupID>, &type metadata for EnvironmentValues.__Key_focusGroupID, &protocol witness table for EnvironmentValues.__Key_focusGroupID);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_focusGroupID> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_focusGroupID>, &type metadata for EnvironmentValues.__Key_focusGroupID, &protocol witness table for EnvironmentValues.__Key_focusGroupID);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_focusGroupID> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
  }
}

uint64_t EnvironmentValues.focusGroupID.setter(uint64_t a1)
{
  outlined init with copy of FocusGroupIdentifier?(a1, v5);
  outlined init with copy of FocusGroupIdentifier?(v5, &v4);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_focusGroupID>, &type metadata for EnvironmentValues.__Key_focusGroupID, &protocol witness table for EnvironmentValues.__Key_focusGroupID);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_focusGroupID> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(v1 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  outlined destroy of FocusGroupIdentifier?(a1);
  return outlined destroy of FocusGroupIdentifier?(v5);
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance FocusGroupModifier@<X0>(uint64_t *a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  result = outlined init with copy of _PresentationTransitionOutputs.Content(v1, (a1 + 1));
  *a1 = KeyPath;
  return result;
}

uint64_t EnvironmentValues.focusGroupPriority.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_focusGroupPriority>, &type metadata for EnvironmentValues.__Key_focusGroupPriority, &protocol witness table for EnvironmentValues.__Key_focusGroupPriority);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_focusGroupPriority> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_focusGroupPriority>, &type metadata for EnvironmentValues.__Key_focusGroupPriority, &protocol witness table for EnvironmentValues.__Key_focusGroupPriority);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_focusGroupPriority> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  return v2;
}

void key path getter for EnvironmentValues.focusGroupPriority : EnvironmentValues(uint64_t *a1@<X0>, void *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_focusGroupPriority>, &type metadata for EnvironmentValues.__Key_focusGroupPriority, &protocol witness table for EnvironmentValues.__Key_focusGroupPriority);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_focusGroupPriority> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_focusGroupPriority>, &type metadata for EnvironmentValues.__Key_focusGroupPriority, &protocol witness table for EnvironmentValues.__Key_focusGroupPriority);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_focusGroupPriority> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

double key path setter for EnvironmentValues.focusGroupPriority : EnvironmentValues(uint64_t *a1, void *a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_focusGroupPriority>, &type metadata for EnvironmentValues.__Key_focusGroupPriority, &protocol witness table for EnvironmentValues.__Key_focusGroupPriority);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_focusGroupPriority> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance FocusGroupPriorityModifier@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = swift_getKeyPath();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t outlined init with copy of FocusGroupIdentifier?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FocusGroupIdentifier?(0, &lazy cache variable for type metadata for FocusGroupIdentifier?, &type metadata for FocusGroupIdentifier, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_focusGroupID> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_focusGroupID> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_focusGroupID> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_focusGroupID>, &type metadata for EnvironmentValues.__Key_focusGroupID, &protocol witness table for EnvironmentValues.__Key_focusGroupID);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_focusGroupID> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t outlined destroy of FocusGroupIdentifier?(uint64_t a1)
{
  type metadata accessor for FocusGroupIdentifier?(0, &lazy cache variable for type metadata for FocusGroupIdentifier?, &type metadata for FocusGroupIdentifier, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_focusGroupPriority> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_focusGroupPriority> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_focusGroupPriority> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_focusGroupPriority>, &type metadata for EnvironmentValues.__Key_focusGroupPriority, &protocol witness table for EnvironmentValues.__Key_focusGroupPriority);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_focusGroupPriority> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<AnonymousFocusGroupModifier>, FocusGroupModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<AnonymousFocusGroupModifier>, FocusGroupModifier>)
  {
    type metadata accessor for _ViewModifier_Content<AnonymousFocusGroupModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<AnonymousFocusGroupModifier>, lazy protocol witness table accessor for type AnonymousFocusGroupModifier and conformance AnonymousFocusGroupModifier, &unk_1EFFA02A8);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<AnonymousFocusGroupModifier>, FocusGroupModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<AnonymousFocusGroupModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<AnonymousFocusGroupModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<AnonymousFocusGroupModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for _ViewModifier_Content<AnonymousFocusGroupModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<AnonymousFocusGroupModifier>, lazy protocol witness table accessor for type AnonymousFocusGroupModifier and conformance AnonymousFocusGroupModifier, &unk_1EFFA02A8);
    result = swift_getWitnessTable(MEMORY[0x1E697FDF8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<AnonymousFocusGroupModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<AnonymousFocusGroupModifier>, FocusGroupModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
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

void type metadata accessor for ModifiedContent<_ViewModifier_Content<FocusGroupModifier>, _EnvironmentKeyWritingModifier<FocusGroupIdentifier?>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<FocusGroupModifier>, _EnvironmentKeyWritingModifier<FocusGroupIdentifier?>>)
  {
    type metadata accessor for _ViewModifier_Content<AnonymousFocusGroupModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<FocusGroupModifier>, lazy protocol witness table accessor for type FocusGroupModifier and conformance FocusGroupModifier, &unk_1EFFA0280);
    type metadata accessor for _EnvironmentKeyWritingModifier<FocusGroupIdentifier?>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<FocusGroupModifier>, _EnvironmentKeyWritingModifier<FocusGroupIdentifier?>>);
    }
  }
}

void type metadata accessor for _EnvironmentKeyWritingModifier<FocusGroupIdentifier?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<FocusGroupIdentifier?>)
  {
    type metadata accessor for FocusGroupIdentifier?(255, &lazy cache variable for type metadata for FocusGroupIdentifier?, &type metadata for FocusGroupIdentifier, MEMORY[0x1E69E6720]);
    v1 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<FocusGroupIdentifier?>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<FocusGroupModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<FocusGroupModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<FocusGroupModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for _ViewModifier_Content<AnonymousFocusGroupModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<FocusGroupModifier>, lazy protocol witness table accessor for type FocusGroupModifier and conformance FocusGroupModifier, &unk_1EFFA0280);
    result = swift_getWitnessTable(MEMORY[0x1E697FDF8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<FocusGroupModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<FocusGroupIdentifier?> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<FocusGroupIdentifier?> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<FocusGroupIdentifier?> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<FocusGroupIdentifier?>(255);
    result = swift_getWitnessTable(MEMORY[0x1E6980A18], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<FocusGroupIdentifier?> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<FocusGroupPriorityModifier>, _EnvironmentKeyWritingModifier<Int>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<FocusGroupPriorityModifier>, _EnvironmentKeyWritingModifier<Int>>)
  {
    type metadata accessor for _ViewModifier_Content<AnonymousFocusGroupModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<FocusGroupPriorityModifier>, lazy protocol witness table accessor for type FocusGroupPriorityModifier and conformance FocusGroupPriorityModifier, &unk_1EFFA0200);
    type metadata accessor for FocusGroupIdentifier?(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E6980A08]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<FocusGroupPriorityModifier>, _EnvironmentKeyWritingModifier<Int>>);
    }
  }
}

void type metadata accessor for _ViewModifier_Content<AnonymousFocusGroupModifier>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = type metadata accessor for _ViewModifier_Content();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<FocusGroupPriorityModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<FocusGroupPriorityModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<FocusGroupPriorityModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for _ViewModifier_Content<AnonymousFocusGroupModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<FocusGroupPriorityModifier>, lazy protocol witness table accessor for type FocusGroupPriorityModifier and conformance FocusGroupPriorityModifier, &unk_1EFFA0200);
    result = swift_getWitnessTable(MEMORY[0x1E697FDF8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<FocusGroupPriorityModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Int> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Int> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Int> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for FocusGroupIdentifier?(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable(MEMORY[0x1E6980A18], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Int> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FocusGroupIdentifier.ID and conformance FocusGroupIdentifier.ID()
{
  result = lazy protocol witness table cache variable for type FocusGroupIdentifier.ID and conformance FocusGroupIdentifier.ID;
  if (!lazy protocol witness table cache variable for type FocusGroupIdentifier.ID and conformance FocusGroupIdentifier.ID)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FocusGroupIdentifier.ID, &type metadata for FocusGroupIdentifier.ID, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FocusGroupIdentifier.ID and conformance FocusGroupIdentifier.ID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FocusGroupIdentifier.ID and conformance FocusGroupIdentifier.ID;
  if (!lazy protocol witness table cache variable for type FocusGroupIdentifier.ID and conformance FocusGroupIdentifier.ID)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FocusGroupIdentifier.ID, &type metadata for FocusGroupIdentifier.ID, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FocusGroupIdentifier.ID and conformance FocusGroupIdentifier.ID);
  }

  return result;
}

double protocol witness for static EnvironmentKey.defaultValue.getter in conformance EnvironmentValues.__Key_focusGroupID@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *&result = 1;
  *(a1 + 24) = xmmword_18CD6A6D0;
  return result;
}

char *initializeBufferWithCopyOfBuffer for ListCoreBatchUpdates(char *a1, uint64_t *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v17 = *a2;
    *a1 = *a2;
    a1 = (v17 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for IndexSet();
    v8 = *(*(v7 - 8) + 16);
    v8(a1, a2, v7);
    v8(&a1[a3[9]], (a2 + a3[9]), v7);
    v9 = a3[11];
    *&a1[a3[10]] = *(a2 + a3[10]);
    *&a1[v9] = *(a2 + v9);
    v10 = a3[13];
    *&a1[a3[12]] = *(a2 + a3[12]);
    *&a1[v10] = *(a2 + v10);
    v11 = a3[14];

    v8(&a1[v11], (a2 + v11), v7);
    v12 = a3[15];
    v13 = &a1[v12];
    v14 = (a2 + v12);
    v15 = v14[1];
    *v13 = *v14;
    *(v13 + 1) = v15;
    v16 = v14[3];
    *(v13 + 2) = v14[2];
    *(v13 + 3) = v16;
    *(v13 + 4) = v14[4];
  }

  return a1;
}

uint64_t assignWithCopy for ListCoreBatchUpdates(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for IndexSet();
  v7 = *(*(v6 - 8) + 24);
  v7(a1, a2, v6);
  v7(a1 + a3[9], a2 + a3[9], v6);
  *(a1 + a3[10]) = *(a2 + a3[10]);

  *(a1 + a3[11]) = *(a2 + a3[11]);

  *(a1 + a3[12]) = *(a2 + a3[12]);

  *(a1 + a3[13]) = *(a2 + a3[13]);

  v7(a1 + a3[14], a2 + a3[14], v6);
  v8 = a3[15];
  v9 = (a1 + v8);
  v10 = (a2 + v8);
  *(a1 + v8) = *(a2 + v8);

  v9[1] = v10[1];

  v9[2] = v10[2];

  v9[3] = v10[3];

  v9[4] = v10[4];

  return a1;
}

uint64_t initializeWithTake for ListCoreBatchUpdates(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for IndexSet();
  v7 = *(*(v6 - 8) + 32);
  v7(a1, a2, v6);
  v7(a1 + a3[9], a2 + a3[9], v6);
  v8 = a3[11];
  *(a1 + a3[10]) = *(a2 + a3[10]);
  *(a1 + v8) = *(a2 + v8);
  v9 = a3[13];
  *(a1 + a3[12]) = *(a2 + a3[12]);
  *(a1 + v9) = *(a2 + v9);
  v7(a1 + a3[14], a2 + a3[14], v6);
  v10 = a3[15];
  v11 = a1 + v10;
  v12 = a2 + v10;
  v13 = *(v12 + 16);
  *v11 = *v12;
  *(v11 + 16) = v13;
  *(v11 + 32) = *(v12 + 32);
  return a1;
}

uint64_t assignWithTake for ListCoreBatchUpdates(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for IndexSet();
  v7 = *(*(v6 - 8) + 40);
  v7(a1, a2, v6);
  v7(a1 + a3[9], a2 + a3[9], v6);
  *(a1 + a3[10]) = *(a2 + a3[10]);

  *(a1 + a3[11]) = *(a2 + a3[11]);

  *(a1 + a3[12]) = *(a2 + a3[12]);

  *(a1 + a3[13]) = *(a2 + a3[13]);

  v7(a1 + a3[14], a2 + a3[14], v6);
  v8 = a3[15];
  v9 = (a1 + v8);
  v10 = (a2 + v8);
  *(a1 + v8) = *v10;

  v9[1] = v10[1];

  v9[2] = v10[2];

  v9[3] = v10[3];

  v9[4] = v10[4];

  return a1;
}

uint64_t ListCoreBatchUpdates.description.getter(int *a1)
{
  v2 = v1;
  v104 = a1;
  type metadata accessor for (source: IndexPath, destination: IndexPath)?(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v114 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v110 = &v98 - v6;
  v111 = type metadata accessor for IndexPath();
  v100 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v109 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v108 = &v98 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v99 = &v98 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v98 = &v98 - v13;
  v14 = type metadata accessor for IndexSet.Index();
  v102 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexingIterator<IndexSet>(0);
  v101 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v115 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v98 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v98 - v23;
  v119 = 0x2073657461647055;
  v120 = 0xE90000000000007BLL;
  v25 = IndexSet.isEmpty.getter();
  v103 = v1;
  if ((v25 & 1) == 0)
  {
    MEMORY[0x18D00C9B0](10, 0xE100000000000000);
    MEMORY[0x18D00C9B0](0xD000000000000011, 0x800000018CD41590);
    IndexSet.makeIterator()();
    type metadata accessor for IndexSet();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50], MEMORY[0x1E6969B88]);
    v26 = (v102 + 8);
    while (1)
    {
      dispatch thunk of Collection.endIndex.getter();
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexSet.Index and conformance IndexSet.Index, MEMORY[0x1E6969B18], MEMORY[0x1E6969B28]);
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v26)(v16, v14);
      if (v27)
      {
        break;
      }

      v28 = dispatch thunk of Collection.subscript.read();
      v30 = *v29;
      v28(&v117, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v116 = v30;
      v117 = 32;
      v118 = 0xE100000000000000;
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x18D00C9B0](v31);

      MEMORY[0x18D00C9B0](v117, v118);
    }

    outlined destroy of IndexingIterator<IndexSet>(v24, type metadata accessor for IndexingIterator<IndexSet>);
    v2 = v103;
  }

  if ((IndexSet.isEmpty.getter() & 1) == 0)
  {
    MEMORY[0x18D00C9B0](10, 0xE100000000000000);
    MEMORY[0x18D00C9B0](0xD000000000000011, 0x800000018CD415B0);
    IndexSet.makeIterator()();
    type metadata accessor for IndexSet();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50], MEMORY[0x1E6969B88]);
    v32 = (v102 + 8);
    while (1)
    {
      dispatch thunk of Collection.endIndex.getter();
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexSet.Index and conformance IndexSet.Index, MEMORY[0x1E6969B18], MEMORY[0x1E6969B28]);
      v33 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v32)(v16, v14);
      if (v33)
      {
        break;
      }

      v34 = dispatch thunk of Collection.subscript.read();
      v36 = *v35;
      v34(&v117, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v116 = v36;
      v117 = 32;
      v118 = 0xE100000000000000;
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x18D00C9B0](v37);

      MEMORY[0x18D00C9B0](v117, v118);
    }

    outlined destroy of IndexingIterator<IndexSet>(v21, type metadata accessor for IndexingIterator<IndexSet>);
    v2 = v103;
  }

  v38 = *(v2 + v104[10]);
  if (*(v38 + 16))
  {
    MEMORY[0x18D00C9B0](10, 0xE100000000000000);
    MEMORY[0x18D00C9B0](0x655365766F6D2020, 0xEF3A736E6F697463);
    v39 = *(v38 + 16);
    if (v39)
    {
      v40 = (v38 + 40);
      do
      {
        v41 = *(v40 - 1);
        v42 = *v40;
        v117 = 32;
        v118 = 0xE100000000000000;
        v116 = v41;
        v43 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x18D00C9B0](v43);

        MEMORY[0x18D00C9B0](540945696, 0xE400000000000000);
        v116 = v42;
        v44 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x18D00C9B0](v44);

        MEMORY[0x18D00C9B0](v117, v118);

        v40 += 2;
        --v39;
      }

      while (v39);
    }
  }

  v112 = v16;
  v113 = v14;
  v45 = *(v103 + v104[11]);
  v46 = v111;
  v47 = v98;
  if (*(v45 + 16))
  {
    MEMORY[0x18D00C9B0](10, 0xE100000000000000);
    MEMORY[0x18D00C9B0](0x65766F6D65722020, 0xED00003A73776F52);
    v48 = *(v45 + 16);
    if (v48)
    {
      v49 = *(v100 + 16);
      v50 = v45 + ((*(v100 + 80) + 32) & ~*(v100 + 80));
      v106 = *(v100 + 72);
      v107 = v49;
      v105 = v100 + 16;
      v51 = (v100 + 8);
      do
      {
        v107(v47, v50, v46);
        v117 = 10272;
        v118 = 0xE200000000000000;
        v116 = IndexPath.section.getter();
        v52 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x18D00C9B0](v52);

        MEMORY[0x18D00C9B0](8236, 0xE200000000000000);
        v53 = IndexPath.row.getter();
        (*v51)(v47, v46);
        v116 = v53;
        v54 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x18D00C9B0](v54);

        MEMORY[0x18D00C9B0](41, 0xE100000000000000);
        MEMORY[0x18D00C9B0](v117, v118);

        v50 += v106;
        --v48;
      }

      while (v48);
    }
  }

  v55 = *(v103 + v104[12]);
  v56 = v114;
  v57 = v99;
  if (*(v55 + 16))
  {
    MEMORY[0x18D00C9B0](10, 0xE100000000000000);
    MEMORY[0x18D00C9B0](0x747265736E692020, 0xED00003A73776F52);
    v58 = *(v55 + 16);
    if (v58)
    {
      v59 = *(v100 + 16);
      v60 = v55 + ((*(v100 + 80) + 32) & ~*(v100 + 80));
      v105 = *(v100 + 72);
      v106 = v59;
      v107 = (v100 + 16);
      v61 = (v100 + 8);
      do
      {
        v106(v57, v60, v46);
        v117 = 10272;
        v118 = 0xE200000000000000;
        v116 = IndexPath.section.getter();
        v62 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x18D00C9B0](v62);

        MEMORY[0x18D00C9B0](8236, 0xE200000000000000);
        v63 = IndexPath.row.getter();
        (*v61)(v57, v46);
        v116 = v63;
        v64 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x18D00C9B0](v64);

        MEMORY[0x18D00C9B0](41, 0xE100000000000000);
        MEMORY[0x18D00C9B0](v117, v118);

        v60 += v105;
        --v58;
      }

      while (v58);
    }
  }

  v105 = *(v103 + v104[13]);
  v66 = v112;
  v65 = v113;
  if (*(v105 + 16))
  {
    MEMORY[0x18D00C9B0](10, 0xE100000000000000);
    result = MEMORY[0x18D00C9B0](0x6F5265766F6D2020, 0xEB000000003A7377);
    v68 = 0;
    v69 = *(v105 + 16);
    v106 = (v100 + 32);
    v107 = v69;
    v70 = (v100 + 8);
    if (v69)
    {
      goto LABEL_26;
    }

LABEL_25:
    v71 = v56;
    type metadata accessor for (source: IndexPath, destination: IndexPath)(0);
    v73 = v72;
    (*(*(v72 - 8) + 56))(v56, 1, 1, v72);
    v68 = v69;
    v66 = v112;
    v65 = v113;
    while (1)
    {
      v56 = v71;
      v77 = v71;
      v78 = v110;
      outlined init with take of (source: IndexPath, destination: IndexPath)?(v77, v110, type metadata accessor for (source: IndexPath, destination: IndexPath)?);
      type metadata accessor for (source: IndexPath, destination: IndexPath)(0);
      if ((*(*(v73 - 8) + 48))(v78, 1, v73) == 1)
      {
        break;
      }

      v79 = *(v73 + 48);
      v80 = *v106;
      v81 = v108;
      v82 = v111;
      (*v106)(v108, v78, v111);
      v83 = v78 + v79;
      v84 = v82;
      v85 = v109;
      v80(v109, v83, v84);
      v117 = 0;
      v118 = 0xE000000000000000;
      _StringGuts.grow(_:)(21);

      v117 = 10272;
      v118 = 0xE200000000000000;
      v116 = IndexPath.section.getter();
      v86 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x18D00C9B0](v86);

      MEMORY[0x18D00C9B0](8236, 0xE200000000000000);
      v116 = IndexPath.row.getter();
      v87 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x18D00C9B0](v87);

      MEMORY[0x18D00C9B0](0x28203E2D2029, 0xE600000000000000);
      v116 = IndexPath.section.getter();
      v88 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x18D00C9B0](v88);

      MEMORY[0x18D00C9B0](8236, 0xE200000000000000);
      v116 = IndexPath.row.getter();
      v89 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x18D00C9B0](v89);

      MEMORY[0x18D00C9B0](41, 0xE100000000000000);
      MEMORY[0x18D00C9B0](v117, v118);

      v90 = *v70;
      (*v70)(v85, v84);
      result = v90(v81, v84);
      v69 = v107;
      if (v68 == v107)
      {
        goto LABEL_25;
      }

LABEL_26:
      if ((v68 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_39:
        __break(1u);
        return result;
      }

      v74 = v105;
      v66 = v112;
      v65 = v113;
      if (v68 >= *(v105 + 16))
      {
        goto LABEL_39;
      }

      type metadata accessor for (source: IndexPath, destination: IndexPath)(0);
      v73 = v75;
      v76 = *(v75 - 8);
      outlined init with copy of (source: IndexPath, destination: IndexPath)(v74 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v68++, v114);
      (*(v76 + 56))(v114, 0, 1, v73);
      v71 = v114;
    }
  }

  if ((IndexSet.isEmpty.getter() & 1) == 0)
  {
    MEMORY[0x18D00C9B0](10, 0xE100000000000000);
    MEMORY[0x18D00C9B0](0xD00000000000001CLL, 0x800000018CD415D0);
    v91 = v115;
    IndexSet.makeIterator()();
    type metadata accessor for IndexSet();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50], MEMORY[0x1E6969B88]);
    v92 = (v102 + 8);
    while (1)
    {
      dispatch thunk of Collection.endIndex.getter();
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexSet.Index and conformance IndexSet.Index, MEMORY[0x1E6969B18], MEMORY[0x1E6969B28]);
      v93 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v92)(v66, v65);
      if (v93)
      {
        break;
      }

      v94 = dispatch thunk of Collection.subscript.read();
      v96 = *v95;
      v94(&v117, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v116 = v96;
      v117 = 32;
      v118 = 0xE100000000000000;
      v97 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x18D00C9B0](v97);

      MEMORY[0x18D00C9B0](v117, v118);
      v91 = v115;
    }

    outlined destroy of IndexingIterator<IndexSet>(v91, type metadata accessor for IndexingIterator<IndexSet>);
  }

  MEMORY[0x18D00C9B0](32010, 0xE200000000000000);
  return v119;
}

uint64_t static ListUpdate.== infix(_:_:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v181 = a2;
  v182 = a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v161 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v155 = &v154 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v165 = &v154 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v166 = &v154 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v167 = &v154 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v160 = &v154 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v159 = &v154 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v164 = &v154 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v158 = &v154 - v24;
  v169 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v156 = &v154 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v157 = &v154 - v28;
  v183 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v172 = &v154 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v171 = &v154 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v178 = &v154 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v179 = &v154 - v36;
  v180 = a3;
  v185[0] = a3;
  v185[1] = a4;
  v170 = a4;
  v174 = a5;
  v185[2] = a5;
  v185[3] = a6;
  v168 = a6;
  v37 = type metadata accessor for ListUpdate(0, v185);
  v38 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v162 = &v154 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v163 = &v154 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v154 - v43;
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v154 - v46;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v154 - v49;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v154 - v52;
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v154 - v55;
  v57 = swift_getTupleTypeMetadata2();
  v176 = *(v57 - 8);
  v58 = MEMORY[0x1EEE9AC00](v57);
  v60 = &v154 - v59;
  v177 = v61;
  v62 = &v154 + *(v61 + 48) - v59;
  v175 = v38;
  v63 = *(v38 + 16);
  v63(&v154 - v59, v182, v37, v58);
  v182 = v62;
  (v63)(v62, v181, v37);
  v64 = v60;
  v65 = v37;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v184 = v64;
  if (EnumCaseMultiPayload <= 2)
  {
    v83 = v171;
    v84 = v172;
    if (!EnumCaseMultiPayload)
    {
      (v63)(v56, v64, v65);
      v116 = v182;
      if (!swift_getEnumCaseMultiPayload())
      {
        v147 = v183;
        v148 = *(v183 + 32);
        v150 = v179;
        v149 = v180;
        v148(v179, v56, v180);
        v151 = v178;
        v148(v178, v116, v149);
        v79 = dispatch thunk of static Equatable.== infix(_:_:)();
        v152 = *(v147 + 8);
        v152(v151, v149);
        v152(v150, v149);
        goto LABEL_31;
      }

      (*(v183 + 8))(v56, v180);
      goto LABEL_28;
    }

    if (EnumCaseMultiPayload == 1)
    {
      (v63)(v53, v64, v65);
      v85 = v182;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        (*(v183 + 8))(v53, v180);
        goto LABEL_28;
      }

      v86 = v183;
      v87 = *(v183 + 32);
      v88 = v179;
      v89 = v65;
      v90 = v180;
      v87(v179, v53, v180);
      v91 = v178;
      v87(v178, v85, v90);
      v79 = dispatch thunk of static Equatable.== infix(_:_:)();
      v92 = *(v86 + 8);
      v92(v91, v90);
      v93 = v90;
      v65 = v89;
      v92(v88, v93);
    }

    else
    {
      (v63)(v50, v64, v65);
      v117 = v180;
      v118 = *(swift_getTupleTypeMetadata2() + 48);
      v119 = v182;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v144 = *(v183 + 8);
        v144(&v50[v118], v117);
        v144(v50, v117);
        goto LABEL_28;
      }

      v120 = v183;
      v121 = *(v183 + 32);
      v121(v179, v50, v117);
      v121(v178, v119, v117);
      v121(v83, &v50[v118], v117);
      v121(v84, &v119[v118], v117);
      v123 = v178;
      v122 = v179;
      v79 = == infix<A, B>(_:_:)();
      v124 = *(v120 + 8);
      v124(v84, v117);
      v124(v83, v117);
      v124(v123, v117);
      v124(v122, v117);
    }

    goto LABEL_31;
  }

  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload != 5)
    {
      v135 = v162;
      (v63)(v162, v184, v37);
      v136 = v182;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v137 = v183;
        v138 = *(v183 + 32);
        v139 = v179;
        v140 = v135;
        v141 = v180;
        v138(v179, v140, v180);
        v142 = v178;
        v138(v178, v136, v141);
        v79 = dispatch thunk of static Equatable.== infix(_:_:)();
        v143 = *(v137 + 8);
        v143(v142, v141);
        v143(v139, v141);
        goto LABEL_31;
      }

      (*(v183 + 8))(v135, v180);
      goto LABEL_28;
    }

    v94 = v163;
    (v63)(v163, v184, v37);
    v95 = TupleTypeMetadata2;
    v96 = *(swift_getTupleTypeMetadata2() + 48);
    v97 = v182;
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      v145 = *(v161 + 8);
      v145(&v94[v96], v95);
      v145(v94, v95);
      goto LABEL_28;
    }

    v98 = v161;
    v99 = *(v161 + 32);
    v100 = v158;
    v99(v158, v94, v95);
    v99(v164, v97, v95);
    v101 = &v94[v96];
    v102 = v159;
    v99(v159, v101, v95);
    v103 = v160;
    v99(v160, &v97[v96], v95);
    v104 = *(v98 + 16);
    v104(v167, v100, v95);
    v182 = *(v95 + 48);
    v104(v166, v102, v95);
    v181 = *(v95 + 48);
    v104(v165, v164, v95);
    v105 = v95;
    v179 = *(v95 + 48);
    v106 = v155;
    v104(v155, v103, v105);
    v107 = *(v105 + 48);
    v108 = v170;
    v109 = v180;
    v79 = == infix<A, B, C, D>(_:_:)();
    v110 = *(v98 + 8);
    v110(v160, v105);
    v110(v159, v105);
    v110(v164, v105);
    v110(v158, v105);
    v111 = *(v169 + 8);
    v111(&v106[v107], v108);
    v112 = *(v183 + 8);
    v112(v106, v109);
    v113 = v165;
    v111(&v179[v165], v108);
    v112(v113, v109);
    v114 = v166;
    v111(&v166[v181], v108);
    v112(v114, v109);
    v115 = v167;
    v111(&v182[v167], v108);
    v112(v115, v109);
LABEL_31:
    v146 = v175;
    goto LABEL_32;
  }

  if (EnumCaseMultiPayload == 3)
  {
    (v63)(v47, v184, v37);
    v67 = *(TupleTypeMetadata2 + 48);
    v68 = v182;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v69 = *(v183 + 32);
      v70 = v180;
      v69(v179, v47, v180);
      v69(v178, v68, v70);
      v72 = v169;
      v71 = v170;
      v73 = *(v169 + 32);
      v74 = v157;
      v73(v157, &v47[v67], v170);
      v75 = &v68[v67];
      v76 = v156;
      v73(v156, v75, v71);
      v78 = v178;
      v77 = v179;
      v79 = == infix<A, B>(_:_:)();
      v80 = *(v72 + 8);
      v80(v76, v71);
      v81 = v74;
      v82 = v71;
LABEL_19:
      v80(v81, v82);
      v134 = *(v183 + 8);
      v134(v78, v70);
      v134(v77, v70);
      goto LABEL_31;
    }

    (*(v169 + 8))(&v47[v67], v170);
    (*(v183 + 8))(v47, v180);
  }

  else
  {
    (v63)(v44, v184, v37);
    v125 = *(TupleTypeMetadata2 + 48);
    v126 = v182;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v127 = *(v183 + 32);
      v70 = v180;
      v127(v179, v44, v180);
      v127(v178, v126, v70);
      v128 = v169;
      v129 = *(v169 + 32);
      v130 = &v44[v125];
      v131 = v157;
      v132 = v170;
      v129(v157, v130, v170);
      v133 = v156;
      v129(v156, &v126[v125], v132);
      v78 = v178;
      v77 = v179;
      v79 = == infix<A, B>(_:_:)();
      v80 = *(v128 + 8);
      v80(v133, v132);
      v81 = v131;
      v82 = v132;
      goto LABEL_19;
    }

    (*(v169 + 8))(&v44[v125], v170);
    (*(v183 + 8))(v44, v180);
  }

LABEL_28:
  v79 = 0;
  v146 = v176;
  v65 = v177;
LABEL_32:
  (*(v146 + 8))(v184, v65);
  return v79 & 1;
}

uint64_t ListBatchUpdates.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  v109 = a1;
  v108 = a3;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v3 = type metadata accessor for CountingIndex();
  v4 = MEMORY[0x1E697E0E0];
  type metadata accessor for Range<Int>(255, &lazy cache variable for type metadata for CountingIndex<Int>, MEMORY[0x1E697E0E0]);
  v6 = v5;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v106 = *(TupleTypeMetadata2 - 8);
  v107 = TupleTypeMetadata2;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v98 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v99 = &v98 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v104 = &v98 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v102 = &v98 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v103 = &v98 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v105 = &v98 - v18;
  v110 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v101 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v100 = &v98 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v98 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v98 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v98 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v98 - v33;
  v36 = MEMORY[0x1EEE9AC00](v35);
  v38 = &v98 - v37;
  v39 = MEMORY[0x1E697E0E8];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E0E8], v3, v36);
  v41 = lazy protocol witness table accessor for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>(&lazy protocol witness table cache variable for type CountingIndex<Int> and conformance CountingIndex<A>, &lazy cache variable for type metadata for CountingIndex<Int>, v4, v39);
  v111[0] = v3;
  v111[1] = v6;
  v111[2] = WitnessTable;
  v111[3] = v41;
  v42 = type metadata accessor for ListUpdate(0, v111);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v98 - v43;
  Array.subscript.getter();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      v56 = v110;
      if (EnumCaseMultiPayload != 1)
      {
        v83 = *(swift_getTupleTypeMetadata2() + 48);
        v84 = v56[4];
        v84(v31, v44, v3);
        result = v84(v28, &v44[v83], v3);
        v85 = *(v3 + 36);
        v86 = &v31[v85];
        if ((v31[v85 + 8] & 1) == 0)
        {
          v87 = &v28[v85];
          if ((v87[8] & 1) == 0)
          {
            v52 = *v86;
            v47 = *v87;
            v88 = v56[1];
            (v88)(v28, v3);
            result = (v88)(v31, v3);
            v53 = 0;
            v54 = 0;
            v55 = 2;
            goto LABEL_27;
          }

          goto LABEL_37;
        }

        goto LABEL_32;
      }

      result = v110[4](v34, v44, v3);
      v57 = &v34[*(v3 + 36)];
      if ((v57[8] & 1) == 0)
      {
        v52 = *v57;
        result = (v56[1])(v34, v3);
        v47 = 0;
        v53 = 0;
        v54 = 0;
        v55 = 1;
        goto LABEL_27;
      }

      goto LABEL_30;
    }

    v81 = v110;
    result = v110[4](v38, v44, v3);
    v82 = &v38[*(v3 + 36)];
    if ((v82[8] & 1) == 0)
    {
      v52 = *v82;
      result = (v81[1])(v38, v3);
      v47 = 0;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      goto LABEL_27;
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
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
    goto LABEL_36;
  }

  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload != 3)
    {
      v89 = &v44[*(v107 + 48)];
      v47 = *(v89 + 1);
      v90 = v89[16];
      v91 = v110;
      v92 = v100;
      result = v110[4](v100, v44, v3);
      v93 = &v92[*(v3 + 36)];
      if ((v93[8] & 1) == 0)
      {
        if ((v90 & 1) == 0)
        {
          v52 = *v93;
          result = (v91[1])(v92, v3);
          v53 = 0;
          v54 = 0;
          v55 = 4;
          goto LABEL_27;
        }

        goto LABEL_38;
      }

      goto LABEL_33;
    }

    v46 = &v44[*(v107 + 48)];
    v47 = *(v46 + 1);
    v48 = v46[16];
    v49 = v110;
    result = v110[4](v25, v44, v3);
    v51 = &v25[*(v3 + 36)];
    if ((v51[8] & 1) == 0)
    {
      if ((v48 & 1) == 0)
      {
        v52 = *v51;
        result = (v49[1])(v25, v3);
        v53 = 0;
        v54 = 0;
        v55 = 3;
LABEL_27:
        v97 = v108;
        *v108 = v52;
        v97[1] = v47;
        v97[2] = v53;
        v97[3] = v54;
        *(v97 + 32) = v55;
        return result;
      }

      goto LABEL_35;
    }

    goto LABEL_29;
  }

  v58 = v107;
  if (EnumCaseMultiPayload != 5)
  {
    v94 = v110;
    v95 = v101;
    result = v110[4](v101, v44, v3);
    v96 = &v95[*(v3 + 36)];
    if ((v96[8] & 1) == 0)
    {
      v52 = *v96;
      result = (v94[1])(v95, v3);
      v47 = 0;
      v53 = 0;
      v54 = 0;
      v55 = 6;
      goto LABEL_27;
    }

    goto LABEL_34;
  }

  v59 = *(swift_getTupleTypeMetadata2() + 48);
  v61 = v105;
  v60 = v106;
  v62 = *(v106 + 32);
  v62(v105, v44, v58);
  v63 = v103;
  v62(v103, &v44[v59], v58);
  v64 = v61;
  v65 = *(v60 + 16);
  v66 = v102;
  v65(v102, v64, v58);
  v67 = &v66[*(v3 + 36)];
  v68 = *v67;
  v69 = v67[8];
  v70 = v110[1];
  v109 = v68;
  v110 = v70;
  result = (v70)(v66, v3);
  if (v69)
  {
    goto LABEL_31;
  }

  v71 = v104;
  result = (v65)(v104, v64, v58);
  v72 = &v71[*(v58 + 48)];
  if (v72[16])
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v47 = *(v72 + 1);
  v73 = v99;
  v65(v99, v63, v58);
  v74 = &v73[*(v3 + 36)];
  v53 = *v74;
  v75 = v63;
  v76 = v74[8];
  result = (v110)(v73, v3);
  if (v76)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v77 = v98;
  result = (v65)(v98, v75, v58);
  v78 = &v77[*(v58 + 48)];
  if ((v78[16] & 1) == 0)
  {
    v54 = *(v78 + 1);
    v79 = *(v106 + 8);
    v79(v75, v58);
    v79(v105, v58);
    v80 = v110;
    (v110)(v77, v3);
    result = (v80)(v104, v3);
    v55 = 5;
    v52 = v109;
    goto LABEL_27;
  }

LABEL_40:
  __break(1u);
  return result;
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance ListBatchUpdates<A>@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - 1;
  }

  return result;
}

void *protocol witness for BidirectionalCollection.formIndex(before:) in conformance ListBatchUpdates<A>(void *result)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t protocol witness for Collection.endIndex.getter in conformance ListBatchUpdates<A>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = ListBatchUpdates.endIndex.getter(a1);
  *a2 = result;
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance ListBatchUpdates<A>(uint64_t *a1, uint64_t *a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  *(v6 + 72) = ListBatchUpdates.subscript.read((v6 + 40), *a2, a3);
  v9 = *(v8 + 32);
  v10 = *(v8 + 16);
  *v7 = *v8;
  *(v7 + 16) = v10;
  *(v7 + 32) = v9;
  return protocol witness for Collection.subscript.read in conformance ListBatchUpdates<A>;
}

void protocol witness for Collection.subscript.read in conformance ListBatchUpdates<A>(uint64_t a1)
{
  v1 = *a1;
  (*(*a1 + 72))();

  free(v1);
}

void (*ListBatchUpdates.subscript.read(uint64_t *a1, uint64_t a2, uint64_t a3))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x49uLL);
  }

  *a1 = v6;
  v7 = *(v3 + 32);
  v8 = *(v3 + 16);
  *v6 = *v3;
  *(v6 + 16) = v8;
  *(v6 + 32) = v7;
  ListBatchUpdates.subscript.getter(a2, (v6 + 40));
  return ListBatchUpdates.subscript.read;
}

void *protocol witness for Collection.indices.getter in conformance ListBatchUpdates<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for ListBatchUpdates<A>, a1);

  return RandomAccessCollection<>.indices.getter();
}

__n128 protocol witness for Sequence.makeIterator() in conformance ListBatchUpdates<A>@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  result = *v1;
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  *(a1 + 40) = 0;
  return result;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance ListBatchUpdates<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ListBatchUpdates<A>, a1);

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance ListBatchUpdates<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for ListBatchUpdates<A>, a1);
  v1 = specialized Collection._copyToContiguousArray()();

  return v1;
}

uint64_t CountingIndexListDataSource.rowIDs(forSectionAt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15 = a1;
  v16 = a3;
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v14 - v7;
  v14 = swift_getAssociatedTypeWitness();
  v9 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v11 = &v14 - v10;
  swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for CountingIndex();
  (*(*(*(v12 + 16) - 8) + 16))(v8, v15);
  (*(v3 + 80))(v8, v4, v3);
  (*(v6 + 8))(v8, AssociatedTypeWitness);
  return (*(v9 + 32))(v16, v11, v14);
}

uint64_t closure #1 in ListBatchUpdates.computeRowRemovesAndInserts<A>(from:sourceSection:to:targetSection:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a6@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = *(a1 + 16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for CountingIndex();
  v12 = MEMORY[0x1E697E0E0];
  type metadata accessor for Range<Int>(255, &lazy cache variable for type metadata for CountingIndex<Int>, MEMORY[0x1E697E0E0]);
  v14 = v13;
  v15 = a6 + *(swift_getTupleTypeMetadata2() + 48);
  (*(*(v11 - 8) + 16))(a6, a2, v11);
  *v15 = v8;
  *(v15 + 8) = v9;
  *(v15 + 16) = v10;
  v16 = MEMORY[0x1E697E0E8];
  v18[0] = v11;
  v18[1] = v14;
  v18[2] = swift_getWitnessTable(MEMORY[0x1E697E0E8], v11);
  v18[3] = lazy protocol witness table accessor for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>(&lazy protocol witness table cache variable for type CountingIndex<Int> and conformance CountingIndex<A>, &lazy cache variable for type metadata for CountingIndex<Int>, v12, v16);
  type metadata accessor for ListUpdate(0, v18);
  return swift_storeEnumTagMultiPayload();
}

uint64_t ListBatchUpdates.description.getter(uint64_t a1)
{
  v8[4] = *v1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v2 = type metadata accessor for CountingIndex();
  v3 = MEMORY[0x1E697E0E0];
  type metadata accessor for Range<Int>(255, &lazy cache variable for type metadata for CountingIndex<Int>, MEMORY[0x1E697E0E0]);
  v4 = MEMORY[0x1E697E0E8];
  v8[0] = v2;
  v8[1] = v5;
  v8[2] = swift_getWitnessTable(MEMORY[0x1E697E0E8], v2);
  v8[3] = lazy protocol witness table accessor for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>(&lazy protocol witness table cache variable for type CountingIndex<Int> and conformance CountingIndex<A>, &lazy cache variable for type metadata for CountingIndex<Int>, v3, v4);
  type metadata accessor for ListUpdate(255, v8);
  v6 = type metadata accessor for Array();
  swift_getWitnessTable(MEMORY[0x1E69E6358], v6);
  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Range<Int>(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E66A8]);
    v6 = v5;
    v7 = lazy protocol witness table accessor for type Int and conformance Int();
    v8[0] = MEMORY[0x1E69E6570];
    v8[1] = v7;
    result = swift_getWitnessTable(a2, v6, v8);
    atomic_store(result, a1);
  }

  return result;
}

{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DisplayList.HostedViews.Preference<ArchivedViewStatesKey>(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    v6 = v5;
    v7 = lazy protocol witness table accessor for type Int and conformance Int();
    v8[0] = MEMORY[0x1E69E6570];
    v8[1] = v7;
    result = swift_getWitnessTable(a2, v6, v8);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for (source: IndexPath, destination: IndexPath)?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (source: IndexPath, destination: IndexPath)?)
  {
    type metadata accessor for (source: IndexPath, destination: IndexPath)(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for (source: IndexPath, destination: IndexPath)?);
    }
  }
}

uint64_t outlined init with copy of (source: IndexPath, destination: IndexPath)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (source: IndexPath, destination: IndexPath)(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::Void __swiftcall Array._checkSubscript_mutating(_:)(Swift::Int a1)
{
  v2 = v1;
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  if (a1 < 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v2 & 0xFFFFFFFFFFFFFF8;
  if ((isClassOrObjCExistentialType & 1) == 0)
  {
    v5 = v2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }
}

uint64_t outlined init with take of (source: IndexPath, destination: IndexPath)?(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #2 in ListBatchUpdates.computeRowRemovesAndInserts<A>(from:sourceSection:to:targetSection:)@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  return partial apply for closure #2 in ListBatchUpdates.computeRowRemovesAndInserts<A>(from:sourceSection:to:targetSection:)(a1, a3);
}

{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = *(type metadata accessor for CountingIndex() - 8);
  return closure #1 in ListBatchUpdates.computeRowRemovesAndInserts<A>(from:sourceSection:to:targetSection:)(a1, v3 + ((*(v5 + 80) + 48) & ~*(v5 + 80)), a3);
}

uint64_t destroy for ListBatchUpdates()
{
}

void *initializeWithCopy for ListBatchUpdates(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  a1[4] = a2[4];

  return a1;
}

void *assignWithCopy for ListBatchUpdates(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  a1[3] = a2[3];

  a1[4] = a2[4];

  return a1;
}

uint64_t assignWithTake for ListBatchUpdates(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t getEnumTagSinglePayload for ListBatchUpdates(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for ListBatchUpdates(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for ListUpdate(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(*(a3 + 16) - 8);
  v7 = *(v6 + 64);
  v8 = *(v6 + 80);
  v9 = v7 + v8;
  v10 = *(*(v5 - 8) + 80);
  v11 = v10;
  v12 = v7 + v10;
  v13 = ((v7 + v11) & ~v11) + *(*(v5 - 8) + 64);
  v14 = v10 | v8;
  v15 = v13 + v14;
  if (v7 <= ((v7 + v8) & ~v8) + v7)
  {
    v7 += (v7 + v8) & ~v8;
  }

  if (v13 <= (v15 & ~(v10 | v8)) + v13)
  {
    v16 = (v15 & ~(v10 | v8)) + v13;
  }

  else
  {
    v16 = v13;
  }

  if (v7 <= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v7;
  }

  if (v14 > 7 || ((v10 | *(v6 + 80)) & 0x100000) != 0 || v17 + 1 > 0x18)
  {
    v20 = *a2;
    *a1 = *a2;
    a1 = (v20 + ((v14 + 16) & ~(v10 | v8)));

    return a1;
  }

  v22 = *(a2 + v17);
  if (v22 >= 7)
  {
    if (v17 <= 3)
    {
      v23 = v17;
    }

    else
    {
      v23 = 4;
    }

    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v24 = *a2;
        if (v17 >= 4)
        {
          goto LABEL_32;
        }
      }

      else
      {
        if (v23 == 3)
        {
          v24 = *a2 | (*(a2 + 2) << 16);
          if (v17 < 4)
          {
            goto LABEL_34;
          }

LABEL_32:
          v22 = v24 + 7;
          goto LABEL_35;
        }

        v24 = *a2;
        if (v17 >= 4)
        {
          goto LABEL_32;
        }
      }

LABEL_34:
      v22 = (v24 | ((v22 - 7) << (8 * v17))) + 7;
      goto LABEL_35;
    }

    if (!v23)
    {
      goto LABEL_35;
    }

    v24 = *a2;
    if (v17 < 4)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

LABEL_35:
  v28 = ~(v10 | v8);
  v29 = v9;
  v31 = *(v5 - 8);
  v33 = *(a3 + 24);
  v25 = *(v6 + 16);
  v30 = *(a3 + 16);
  v25(a1, a2, v30);
  if (v22 <= 2)
  {
    if (v22)
    {
      if (v22 == 1)
      {
        *(a1 + v17) = 1;
      }

      else
      {
        v25(((a1 + v29) & ~v8), ((a2 + v29) & ~v8), v30);
        *(a1 + v17) = 2;
      }
    }

    else
    {
      *(a1 + v17) = 0;
    }
  }

  else
  {
    v26 = ~v11;
    if (v22 > 4)
    {
      if (v22 == 5)
      {
        v32 = *(v31 + 16);
        v32((a1 + v12) & v26, (a2 + v12) & v26, v33);
        v27 = (a2 + v15) & v28;
        v25(((a1 + v15) & v28), v27, v30);
        v32((v12 + ((a1 + v15) & v28)) & v26, (v12 + v27) & v26, v33);
        *(a1 + v17) = 5;
      }

      else
      {
        *(a1 + v17) = 6;
      }
    }

    else
    {
      (*(v31 + 16))((a1 + v12) & v26, (a2 + v12) & v26, v33);
      if (v22 == 3)
      {
        *(a1 + v17) = 3;
      }

      else
      {
        *(a1 + v17) = 4;
      }
    }
  }

  return a1;
}

uint64_t destroy for ListUpdate(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v27 = *(v4 - 8);
  v8 = *(v27 + 80);
  v9 = v6 + v7;
  v10 = v6 + v8;
  v11 = ((v6 + v8) & ~v8) + *(v27 + 64);
  v12 = v8 | v7;
  v13 = v11 + (v8 | v7);
  if (v6 <= ((v6 + v7) & ~v7) + v6)
  {
    v6 += (v6 + v7) & ~v7;
  }

  if (v11 <= (v13 & ~(v8 | v7)) + v11)
  {
    v11 += v13 & ~(v8 | v7);
  }

  if (v6 > v11)
  {
    v11 = v6;
  }

  v14 = a1[v11];
  if (v14 >= 7)
  {
    if (v11 <= 3)
    {
      v15 = v11;
    }

    else
    {
      v15 = 4;
    }

    if (v15 <= 1)
    {
      if (!v15)
      {
        goto LABEL_22;
      }

      v16 = *a1;
    }

    else if (v15 == 2)
    {
      v16 = *a1;
    }

    else if (v15 == 3)
    {
      v16 = *a1 | (a1[2] << 16);
    }

    else
    {
      v16 = *a1;
    }

    v17 = (v16 | ((v14 - 7) << (8 * v11))) + 7;
    v18 = v16 + 7;
    if (v11 >= 4)
    {
      v14 = v18;
    }

    else
    {
      v14 = v17;
    }
  }

LABEL_22:
  v19 = ~v8;
  v26 = *(v5 + 8);
  result = v26(a1, v3);
  if (v14 > 3)
  {
    if (v14 != 4)
    {
      if (v14 != 5)
      {
        return result;
      }

      v25 = *(v27 + 8);
      v25(&a1[v10] & v19, v4);
      v21 = &a1[v13] & ~v12;
      v26(v21, v3);
      v22 = (v10 + v21) & v19;
      v23 = v4;
      v24 = v25;
      goto LABEL_33;
    }
  }

  else
  {
    if (v14 < 2)
    {
      return result;
    }

    if (v14 == 2)
    {

      return v26((&a1[v9] & ~v7), v3);
    }
  }

  v24 = *(v27 + 8);
  v22 = &a1[v10] & v19;
  v23 = v4;
LABEL_33:

  return v24(v22, v23);
}

uint64_t initializeWithCopy for ListUpdate(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  v24 = v5 + v6;
  v28 = *(a3 + 24);
  v26 = *(v28 - 8);
  v7 = *(v26 + 80);
  v8 = v5 + v7;
  v9 = ((v5 + v7) & ~v7) + *(v26 + 64);
  v10 = v7 | v6;
  v23 = v9 + (v7 | v6);
  if (v5 <= ((v5 + v6) & ~v6) + v5)
  {
    v5 += (v5 + v6) & ~v6;
  }

  if (v9 <= (v23 & ~(v7 | v6)) + v9)
  {
    v9 += v23 & ~(v7 | v6);
  }

  if (v5 <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  v12 = *(a2 + v11);
  if (v12 >= 7)
  {
    if (v11 <= 3)
    {
      v13 = v11;
    }

    else
    {
      v13 = 4;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        v14 = *a2;
      }

      else if (v13 == 3)
      {
        v14 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v14 = *a2;
      }

      goto LABEL_20;
    }

    if (v13)
    {
      v14 = *a2;
LABEL_20:
      v15 = (v14 | ((v12 - 7) << (8 * v11))) + 7;
      v16 = v14 + 7;
      if (v11 >= 4)
      {
        v12 = v16;
      }

      else
      {
        v12 = v15;
      }
    }
  }

  v17 = *(v4 + 16);
  v25 = *(a3 + 16);
  v17(a1, a2, v25);
  if (v12 <= 2)
  {
    if (v12)
    {
      result = a1;
      if (v12 == 1)
      {
        v21 = 1;
      }

      else
      {
        v17((v24 + a1) & ~v6, ((a2 + v24) & ~v6), v25);
        result = a1;
        v21 = 2;
      }
    }

    else
    {
      v21 = 0;
      result = a1;
    }
  }

  else
  {
    v19 = ~v7;
    if (v12 > 4)
    {
      result = a1;
      if (v12 == 5)
      {
        v27 = *(v26 + 16);
        v27((v8 + a1) & v19, (a2 + v8) & v19, v28);
        v22 = (a2 + v23) & ~v10;
        v17((v23 + a1) & ~v10, v22, v25);
        v27((v8 + ((v23 + a1) & ~v10)) & v19, (v8 + v22) & v19, v28);
        result = a1;
        v21 = 5;
      }

      else
      {
        v21 = 6;
      }
    }

    else
    {
      (*(v26 + 16))((v8 + a1) & v19, (a2 + v8) & v19, v28);
      result = a1;
      if (v12 == 3)
      {
        v21 = 3;
      }

      else
      {
        v21 = 4;
      }
    }
  }

  *(result + v11) = v21;
  return result;
}

unsigned __int16 *assignWithCopy for ListUpdate(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  v9 = *(v7 + 80);
  v31 = v8 + v9;
  v33 = *(v6 - 8);
  v10 = *(v33 + 80);
  v11 = v8 + v10;
  v12 = ((v8 + v10) & ~v10) + *(v33 + 64);
  v30 = v12 + (v10 | v9);
  if (v8 <= ((v8 + v9) & ~v9) + v8)
  {
    v8 += (v8 + v9) & ~v9;
  }

  if (v12 <= (v30 & ~(v10 | v9)) + v12)
  {
    v12 += v30 & ~(v10 | v9);
  }

  if (v8 <= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v8;
  }

  v14 = *(a1 + v13);
  if (v14 >= 7)
  {
    if (v13 <= 3)
    {
      v15 = v13;
    }

    else
    {
      v15 = 4;
    }

    if (v15 > 1)
    {
      if (v15 == 2)
      {
        v16 = *a1;
        if (v13 >= 4)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v15 == 3)
        {
          v16 = *a1 | (*(a1 + 2) << 16);
          if (v13 < 4)
          {
            goto LABEL_24;
          }

LABEL_22:
          v14 = v16 + 7;
          goto LABEL_25;
        }

        v16 = *a1;
        if (v13 >= 4)
        {
          goto LABEL_22;
        }
      }

LABEL_24:
      v14 = (v16 | ((v14 - 7) << (8 * v13))) + 7;
      goto LABEL_25;
    }

    if (!v15)
    {
      goto LABEL_25;
    }

    v16 = *a1;
    if (v13 < 4)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

LABEL_25:
  v28 = ~v9;
  v35 = ~v10;
  v29 = ~(v10 | v9);
  v17 = *(v7 + 8);
  v17(a1, v5);
  v32 = v6;
  if (v14 <= 3)
  {
    if (v14 < 2)
    {
      goto LABEL_33;
    }

    if (v14 == 2)
    {
      v17(((a1 + v31) & v28), v5);
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if (v14 == 4)
  {
LABEL_32:
    (*(v33 + 8))((a1 + v11) & v35, v6);
    goto LABEL_33;
  }

  if (v14 == 5)
  {
    v18 = a1 + v11;
    v27 = v11;
    v19 = *(v33 + 8);
    v19(v18 & v35, v6);
    v17(((a1 + v30) & v29), v5);
    v19((v27 + ((a1 + v30) & v29)) & v35, v6);
    v11 = v27;
  }

LABEL_33:
  v20 = *(a2 + v13);
  if (v20 >= 7)
  {
    if (v13 <= 3)
    {
      v21 = v13;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v22 = *a2;
        if (v13 < 4)
        {
          goto LABEL_48;
        }
      }

      else
      {
        if (v21 == 3)
        {
          v22 = *a2 | (*(a2 + 2) << 16);
          if (v13 < 4)
          {
            goto LABEL_48;
          }

          goto LABEL_46;
        }

        v22 = *a2;
        if (v13 < 4)
        {
LABEL_48:
          v20 = (v22 | ((v20 - 7) << (8 * v13))) + 7;
          goto LABEL_49;
        }
      }

LABEL_46:
      v20 = v22 + 7;
      goto LABEL_49;
    }

    if (v21)
    {
      v22 = *a2;
      if (v13 < 4)
      {
        goto LABEL_48;
      }

      goto LABEL_46;
    }
  }

LABEL_49:
  v23 = *(v7 + 16);
  v23(a1, a2, v5);
  if (v20 <= 2)
  {
    if (v20)
    {
      if (v20 == 1)
      {
        v24 = 1;
      }

      else
      {
        v23(((a1 + v31) & v28), ((a2 + v31) & v28), v5);
        v24 = 2;
      }
    }

    else
    {
      v24 = 0;
    }
  }

  else if (v20 > 4)
  {
    if (v20 == 5)
    {
      v34 = *(v33 + 16);
      v34((a1 + v11) & v35, (a2 + v11) & v35, v32);
      v25 = (a2 + v30) & v29;
      v23(((a1 + v30) & v29), v25, v5);
      v34((v11 + ((a1 + v30) & v29)) & v35, (v11 + v25) & v35, v32);
      v24 = 5;
    }

    else
    {
      v24 = 6;
    }
  }

  else
  {
    (*(v33 + 16))((a1 + v11) & v35, (a2 + v11) & v35, v32);
    if (v20 == 3)
    {
      v24 = 3;
    }

    else
    {
      v24 = 4;
    }
  }

  *(a1 + v13) = v24;
  return a1;
}

uint64_t initializeWithTake for ListUpdate(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  v24 = v5 + v6;
  v28 = *(a3 + 24);
  v26 = *(v28 - 8);
  v7 = *(v26 + 80);
  v8 = v5 + v7;
  v9 = ((v5 + v7) & ~v7) + *(v26 + 64);
  v10 = v7 | v6;
  v23 = v9 + (v7 | v6);
  if (v5 <= ((v5 + v6) & ~v6) + v5)
  {
    v5 += (v5 + v6) & ~v6;
  }

  if (v9 <= (v23 & ~(v7 | v6)) + v9)
  {
    v9 += v23 & ~(v7 | v6);
  }

  if (v5 <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  v12 = *(a2 + v11);
  if (v12 >= 7)
  {
    if (v11 <= 3)
    {
      v13 = v11;
    }

    else
    {
      v13 = 4;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        v14 = *a2;
      }

      else if (v13 == 3)
      {
        v14 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v14 = *a2;
      }

      goto LABEL_20;
    }

    if (v13)
    {
      v14 = *a2;
LABEL_20:
      v15 = (v14 | ((v12 - 7) << (8 * v11))) + 7;
      v16 = v14 + 7;
      if (v11 >= 4)
      {
        v12 = v16;
      }

      else
      {
        v12 = v15;
      }
    }
  }

  v17 = *(v4 + 32);
  v25 = *(a3 + 16);
  v17(a1, a2, v25);
  if (v12 <= 2)
  {
    if (v12)
    {
      result = a1;
      if (v12 == 1)
      {
        v21 = 1;
      }

      else
      {
        v17((v24 + a1) & ~v6, ((a2 + v24) & ~v6), v25);
        result = a1;
        v21 = 2;
      }
    }

    else
    {
      v21 = 0;
      result = a1;
    }
  }

  else
  {
    v19 = ~v7;
    if (v12 > 4)
    {
      result = a1;
      if (v12 == 5)
      {
        v27 = *(v26 + 32);
        v27((v8 + a1) & v19, (a2 + v8) & v19, v28);
        v22 = (a2 + v23) & ~v10;
        v17((v23 + a1) & ~v10, v22, v25);
        v27((v8 + ((v23 + a1) & ~v10)) & v19, (v8 + v22) & v19, v28);
        result = a1;
        v21 = 5;
      }

      else
      {
        v21 = 6;
      }
    }

    else
    {
      (*(v26 + 32))((v8 + a1) & v19, (a2 + v8) & v19, v28);
      result = a1;
      if (v12 == 3)
      {
        v21 = 3;
      }

      else
      {
        v21 = 4;
      }
    }
  }

  *(result + v11) = v21;
  return result;
}

unsigned __int16 *assignWithTake for ListUpdate(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  v9 = *(v7 + 80);
  v31 = v8 + v9;
  v33 = *(v6 - 8);
  v10 = *(v33 + 80);
  v11 = v8 + v10;
  v12 = ((v8 + v10) & ~v10) + *(v33 + 64);
  v30 = v12 + (v10 | v9);
  if (v8 <= ((v8 + v9) & ~v9) + v8)
  {
    v8 += (v8 + v9) & ~v9;
  }

  if (v12 <= (v30 & ~(v10 | v9)) + v12)
  {
    v12 += v30 & ~(v10 | v9);
  }

  if (v8 <= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v8;
  }

  v14 = *(a1 + v13);
  if (v14 >= 7)
  {
    if (v13 <= 3)
    {
      v15 = v13;
    }

    else
    {
      v15 = 4;
    }

    if (v15 > 1)
    {
      if (v15 == 2)
      {
        v16 = *a1;
        if (v13 >= 4)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v15 == 3)
        {
          v16 = *a1 | (*(a1 + 2) << 16);
          if (v13 < 4)
          {
            goto LABEL_24;
          }

LABEL_22:
          v14 = v16 + 7;
          goto LABEL_25;
        }

        v16 = *a1;
        if (v13 >= 4)
        {
          goto LABEL_22;
        }
      }

LABEL_24:
      v14 = (v16 | ((v14 - 7) << (8 * v13))) + 7;
      goto LABEL_25;
    }

    if (!v15)
    {
      goto LABEL_25;
    }

    v16 = *a1;
    if (v13 < 4)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

LABEL_25:
  v28 = ~v9;
  v35 = ~v10;
  v29 = ~(v10 | v9);
  v17 = *(v7 + 8);
  v17(a1, v5);
  v32 = v6;
  if (v14 <= 3)
  {
    if (v14 < 2)
    {
      goto LABEL_33;
    }

    if (v14 == 2)
    {
      v17(((a1 + v31) & v28), v5);
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if (v14 == 4)
  {
LABEL_32:
    (*(v33 + 8))((a1 + v11) & v35, v6);
    goto LABEL_33;
  }

  if (v14 == 5)
  {
    v18 = a1 + v11;
    v27 = v11;
    v19 = *(v33 + 8);
    v19(v18 & v35, v6);
    v17(((a1 + v30) & v29), v5);
    v19((v27 + ((a1 + v30) & v29)) & v35, v6);
    v11 = v27;
  }

LABEL_33:
  v20 = *(a2 + v13);
  if (v20 >= 7)
  {
    if (v13 <= 3)
    {
      v21 = v13;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v22 = *a2;
        if (v13 < 4)
        {
          goto LABEL_48;
        }
      }

      else
      {
        if (v21 == 3)
        {
          v22 = *a2 | (*(a2 + 2) << 16);
          if (v13 < 4)
          {
            goto LABEL_48;
          }

          goto LABEL_46;
        }

        v22 = *a2;
        if (v13 < 4)
        {
LABEL_48:
          v20 = (v22 | ((v20 - 7) << (8 * v13))) + 7;
          goto LABEL_49;
        }
      }

LABEL_46:
      v20 = v22 + 7;
      goto LABEL_49;
    }

    if (v21)
    {
      v22 = *a2;
      if (v13 < 4)
      {
        goto LABEL_48;
      }

      goto LABEL_46;
    }
  }

LABEL_49:
  v23 = *(v7 + 32);
  v23(a1, a2, v5);
  if (v20 <= 2)
  {
    if (v20)
    {
      if (v20 == 1)
      {
        v24 = 1;
      }

      else
      {
        v23(((a1 + v31) & v28), ((a2 + v31) & v28), v5);
        v24 = 2;
      }
    }

    else
    {
      v24 = 0;
    }
  }

  else if (v20 > 4)
  {
    if (v20 == 5)
    {
      v34 = *(v33 + 32);
      v34((a1 + v11) & v35, (a2 + v11) & v35, v32);
      v25 = (a2 + v30) & v29;
      v23(((a1 + v30) & v29), v25, v5);
      v34((v11 + ((a1 + v30) & v29)) & v35, (v11 + v25) & v35, v32);
      v24 = 5;
    }

    else
    {
      v24 = 6;
    }
  }

  else
  {
    (*(v33 + 32))((a1 + v11) & v35, (a2 + v11) & v35, v32);
    if (v20 == 3)
    {
      v24 = 3;
    }

    else
    {
      v24 = 4;
    }
  }

  *(a1 + v13) = v24;
  return a1;
}

uint64_t getEnumTagSinglePayload for ListUpdate(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  v5 = *(v3 + 80);
  if (((v4 + v5) & ~v5) + v4 <= v4)
  {
    v6 = *(v3 + 64);
  }

  else
  {
    v6 = ((v4 + v5) & ~v5) + v4;
  }

  v7 = *(*(a3 + 24) - 8);
  v8 = *(v7 + 80);
  v9 = ((v4 + v8) & ~v8) + *(v7 + 64);
  if (v9 > v6)
  {
    v6 = v9;
  }

  v10 = ((v9 + (v8 | v5)) & ~(v8 | v5)) + v9;
  if (v10 <= v6)
  {
    v10 = v6;
  }

  if (v4 <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_33;
  }

  v12 = v11 + 1;
  v13 = 8 * (v11 + 1);
  if ((v11 + 1) <= 3)
  {
    v16 = ((a2 + ~(-1 << v13) - 249) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_33;
      }

      goto LABEL_22;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_33;
      }

      goto LABEL_22;
    }

    if (v16 < 2)
    {
LABEL_33:
      v18 = *(a1 + v11);
      if (v18 >= 7)
      {
        return (v18 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_33;
  }

LABEL_22:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    if (v12 > 2)
    {
      if (v12 == 3)
      {
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v12) = *a1;
      }
    }

    else if (v12 == 1)
    {
      LODWORD(v12) = *a1;
    }

    else
    {
      LODWORD(v12) = *a1;
    }
  }

  return (v12 | v17) + 250;
}

void storeEnumTagSinglePayload for ListUpdate(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  if (((v6 + v7) & ~v7) + v6 <= v6)
  {
    v8 = *(v5 + 64);
  }

  else
  {
    v8 = ((v6 + v7) & ~v7) + v6;
  }

  v9 = *(*(a4 + 24) - 8);
  v10 = *(v9 + 80);
  v11 = ((v6 + v10) & ~v10) + *(v9 + 64);
  if (v11 > v8)
  {
    v8 = v11;
  }

  v12 = ((v11 + (v10 | v7)) & ~(v10 | v7)) + v11;
  if (v12 <= v8)
  {
    v12 = v8;
  }

  if (v6 > v12)
  {
    v12 = *(v5 + 64);
  }

  v13 = v12 + 1;
  if (a3 < 0xFA)
  {
    v14 = 0;
  }

  else if (v13 <= 3)
  {
    v17 = ((a3 + ~(-1 << (8 * v13)) - 249) >> (8 * v13)) + 1;
    if (HIWORD(v17))
    {
      v14 = 4;
    }

    else
    {
      if (v17 < 0x100)
      {
        v18 = 1;
      }

      else
      {
        v18 = 2;
      }

      if (v17 >= 2)
      {
        v14 = v18;
      }

      else
      {
        v14 = 0;
      }
    }
  }

  else
  {
    v14 = 1;
  }

  if (a2 > 0xF9)
  {
    v15 = a2 - 250;
    if (v13 >= 4)
    {
      bzero(a1, v12 + 1);
      *a1 = v15;
      v16 = 1;
      if (v14 > 1)
      {
        goto LABEL_46;
      }

      goto LABEL_43;
    }

    v16 = (v15 >> (8 * v13)) + 1;
    if (v12 != -1)
    {
      v19 = v15 & ~(-1 << (8 * v13));
      bzero(a1, v13);
      if (v13 != 3)
      {
        if (v13 == 2)
        {
          *a1 = v19;
          if (v14 > 1)
          {
LABEL_46:
            if (v14 == 2)
            {
              *&a1[v13] = v16;
            }

            else
            {
              *&a1[v13] = v16;
            }

            return;
          }
        }

        else
        {
          *a1 = v15;
          if (v14 > 1)
          {
            goto LABEL_46;
          }
        }

LABEL_43:
        if (v14)
        {
          a1[v13] = v16;
        }

        return;
      }

      *a1 = v19;
      a1[2] = BYTE2(v19);
    }

    if (v14 > 1)
    {
      goto LABEL_46;
    }

    goto LABEL_43;
  }

  if (v14 <= 1)
  {
    if (v14)
    {
      a1[v13] = 0;
      if (!a2)
      {
        return;
      }

LABEL_32:
      a1[v12] = -a2;
      return;
    }

LABEL_31:
    if (!a2)
    {
      return;
    }

    goto LABEL_32;
  }

  if (v14 == 2)
  {
    *&a1[v13] = 0;
    goto LABEL_31;
  }

  *&a1[v13] = 0;
  if (a2)
  {
    goto LABEL_32;
  }
}

uint64_t getEnumTag for ListUpdate(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(*(a2 + 16) - 8) + 64);
  v3 = *(*(*(a2 + 16) - 8) + 80);
  v4 = *(*(a2 + 24) - 8);
  v5 = ((v2 + v3) & ~v3) + v2;
  v6 = *(v4 + 80);
  v7 = ((v2 + v6) & ~v6) + *(v4 + 64);
  v8 = ((v7 + (v6 | v3)) & ~(v6 | v3)) + v7;
  if (v2 <= v5)
  {
    v2 = v5;
  }

  if (v7 <= v8)
  {
    v7 = v8;
  }

  if (v2 <= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v2;
  }

  v10 = a1[v9];
  v11 = v10 - 7;
  if (v10 >= 7)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        return v10;
      }

      v13 = *a1;
    }

    else if (v12 == 2)
    {
      v13 = *a1;
    }

    else if (v12 == 3)
    {
      v13 = *a1 | (a1[2] << 16);
    }

    else
    {
      v13 = *a1;
    }

    v14 = (v13 | (v11 << (8 * v9))) + 7;
    LODWORD(v10) = v13 + 7;
    if (v9 >= 4)
    {
      return v10;
    }

    else
    {
      return v14;
    }
  }

  return v10;
}

void destructiveInjectEnumTag for ListUpdate(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  if (a2 > 6)
  {
    v10 = *(v3 + 64);
    v11 = *(v3 + 80);
    v12 = ((v10 + v11) & ~v11) + v10;
    v13 = *(*(a3 + 24) - 8);
    v14 = *(v13 + 80);
    v15 = ((v10 + v14) & ~v14) + *(v13 + 64);
    v16 = ((v15 + (v14 | v11)) & ~(v14 | v11)) + v15;
    if (v10 <= v12)
    {
      v10 = v12;
    }

    if (v15 <= v16)
    {
      v15 = v16;
    }

    if (v10 <= v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = v10;
    }

    v18 = a2 - 7;
    if (v17 < 4)
    {
      a1[v17] = (v18 >> (8 * v17)) + 7;
      if (v17)
      {
        v20 = v18 & ~(-1 << (8 * v17));
        bzero(a1, v17);
        if (v17 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v17 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v18;
        }
      }
    }

    else
    {
      a1[v17] = 7;
      bzero(a1, v17);
      *a1 = v18;
    }
  }

  else
  {
    v4 = *(v3 + 64);
    v5 = *(*(*(a3 + 24) - 8) + 80);
    v6 = ((v4 + v5) & ~v5) + *(*(*(a3 + 24) - 8) + 64);
    v7 = *(v3 + 80);
    v8 = ((v6 + (v7 | v5)) & ~(v7 | v5)) + v6;
    v9 = ((v4 + v7) & ~v7) + v4;
    if (v9 <= v4)
    {
      v9 = *(v3 + 64);
    }

    if (v6 > v9)
    {
      v9 = v6;
    }

    if (v8 > v9)
    {
      v9 = v8;
    }

    a1[v9] = a2;
  }
}

void _UIHostingView.currentTimestamp.getter(void *a2@<X8>)
{
  v3 = UIHostingViewBase.viewGraph.getter();
  swift_beginAccess();
  v4 = *(v3 + 104);

  *a2 = v4;
}

void _UIHostingView.currentTimestamp.setter(uint64_t *a1)
{
  v1 = *a1;
  v2 = UIHostingViewBase.viewGraph.getter();
  swift_beginAccess();
  *(v2 + 104) = v1;
}

void (*_UIHostingView.currentTimestamp.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  _UIHostingView.currentTimestamp.getter(a1);
  return _UIHostingView.currentTimestamp.modify;
}

uint64_t _UIHostingView.valuesNeedingUpdate.getter(uint64_t a1)
{
  v1 = UIHostingViewBase.viewGraph.getter();
  swift_beginAccess();
  v2 = *(v1 + 112);

  return v2;
}

double _UIHostingView.valuesNeedingUpdate.setter(uint64_t a1)
{
  v1 = a1;
  v2 = UIHostingViewBase.viewGraph.getter();
  swift_beginAccess();
  *(v2 + 112) = v1;

  return result;
}

double (*_UIHostingView.valuesNeedingUpdate.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = _UIHostingView.valuesNeedingUpdate.getter(a1);
  return _UIHostingView.valuesNeedingUpdate.modify;
}

double _UIHostingView.renderingPhase.setter(char *a1)
{
  v1 = *a1;
  v2 = UIHostingViewBase.viewGraph.getter();
  swift_beginAccess();
  *(v2 + 114) = v1;

  return result;
}

double (*_UIHostingView.renderingPhase.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  _UIHostingView.renderingPhase.getter((a1 + 8));
  return _UIHostingView.renderingPhase.modify;
}

double _UIHostingView.renderingPhase.modify(uint64_t a1, char a2)
{
  if (a2)
  {
    v4 = *(a1 + 8);
    v2 = &v4;
  }

  else
  {
    v5 = *(a1 + 8);
    v2 = &v5;
  }

  return _UIHostingView.renderingPhase.setter(v2);
}

void _UIHostingView.parentPhase.getter(uint64_t a1@<X8>)
{
  v2 = _UIHostingView.base.getter();
  v3 = UIHostingViewBase.viewGraph.getter();

  swift_beginAccess();
  LODWORD(v2) = *(v3 + 128);
  v4 = *(v3 + 132);

  *a1 = v2;
  *(a1 + 4) = v4;
}

uint64_t UIView.ancestorHasInvertFilterApplied.getter()
{
  if ([v0 respondsToSelector_])
  {
    v1 = [v0 _ancestorHasInvertFilterApplied];
    v2 = [v0 window];
    if (v2)
    {
      v3 = v2;
      if ([v2 respondsToSelector_])
      {
        v4 = [v3 _accessibilityInvertColorsIsDarkWindow];
      }

      else
      {
        v4 = 0;
      }

      if ([v3 respondsToSelector_])
      {
        v7 = [v3 _accessibilityInvertColorsSupportsDarkWindowInvert];
      }

      else
      {
        v7 = 0;
      }

      v6 = v4 & v7;
    }

    else
    {
      v6 = 0;
    }

    v5 = v1 | v6;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void closure #2 in _UIHostingView.updateEnvironment()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = type metadata accessor for _UIHostingView(0, a4, a5, v10);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v12);
    ViewRendererHost.accessibilityFocus(id:in:)(a1, a2, v12, WitnessTable);
  }
}

Swift::Void __swiftcall _UIHostingView.updateAccessibilityEnvironment()()
{
  v1 = *MEMORY[0x1E69E7D40] & *v0;
  if ((_UIHostingView.accessibilityEnabled.getter() & 1) == 0)
  {
    if (_AXSAccessibilityEnabled() || (v3 = MEMORY[0x18D00C850](0x4774694B49555841, 0xEB0000000065756CLL), v4 = NSClassFromString(v3), v3, v4))
    {
      _UIHostingView.accessibilityEnabled.setter(1);
    }
  }

  v5 = type metadata accessor for _UIHostingView(0, *(v1 + 80), *(v1 + 88), v2);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v5);
  ViewRendererHost.accessibilityNodes.getter(v5, WitnessTable);
}