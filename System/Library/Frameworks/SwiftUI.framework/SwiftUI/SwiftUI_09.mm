unint64_t lazy protocol witness table accessor for type NavigationLinkSelectionIdentifier and conformance NavigationLinkSelectionIdentifier()
{
  result = lazy protocol witness table cache variable for type NavigationLinkSelectionIdentifier and conformance NavigationLinkSelectionIdentifier;
  if (!lazy protocol witness table cache variable for type NavigationLinkSelectionIdentifier and conformance NavigationLinkSelectionIdentifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationLinkSelectionIdentifier, &type metadata for NavigationLinkSelectionIdentifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationLinkSelectionIdentifier and conformance NavigationLinkSelectionIdentifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationLinkSelectionIdentifier and conformance NavigationLinkSelectionIdentifier;
  if (!lazy protocol witness table cache variable for type NavigationLinkSelectionIdentifier and conformance NavigationLinkSelectionIdentifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationLinkSelectionIdentifier, &type metadata for NavigationLinkSelectionIdentifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationLinkSelectionIdentifier and conformance NavigationLinkSelectionIdentifier);
  }

  return result;
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance UpdateViewDestinationRequest.UpdateViewDestinationRequestKey@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static UpdateViewDestinationRequest.UpdateViewDestinationRequestKey.defaultValue;
}

uint64_t FileImportExportBridge.preferencesDidChange(_:)(uint64_t *a1)
{
  v2 = v1;
  _s10Foundation3URLVSgMaTm_4(0, &lazy cache variable for type metadata for TaskPriority?, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v24[-v5];
  type metadata accessor for FileImportExportBridge.PresentationState.UpdateEffect?(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  updated = type metadata accessor for FileImportExportBridge.PresentationState.UpdateEffect(0);
  v11 = *(updated - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](updated);
  v13 = &v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24[-v15];
  v25 = *a1;
  swift_beginAccess();
  FileImportExportBridge.PresentationState.update(preferences:)(&v25, v9);
  swift_endAccess();
  if ((*(v11 + 48))(v9, 1, updated) == 1)
  {
    v17 = type metadata accessor for FileImportExportBridge.PresentationState.UpdateEffect?;
    v18 = v9;
  }

  else
  {
    outlined init with take of FileImportExportBridge.Presentation?(v9, v16, type metadata accessor for FileImportExportBridge.PresentationState.UpdateEffect);
    static TaskPriority.userInitiated.getter();
    v19 = type metadata accessor for TaskPriority();
    (*(*(v19 - 8) + 56))(v6, 0, 1, v19);
    outlined init with copy of FileImportExportBridge.PresentationState(v16, v13, type metadata accessor for FileImportExportBridge.PresentationState.UpdateEffect);
    v20 = (*(v11 + 80) + 40) & ~*(v11 + 80);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v2;
    outlined init with take of FileImportExportBridge.Presentation?(v13, v21 + v20, type metadata accessor for FileImportExportBridge.PresentationState.UpdateEffect);
    v22 = v2;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in FileImportExportBridge.preferencesDidChange(_:), v21);

    v17 = type metadata accessor for FileImportExportBridge.PresentationState.UpdateEffect;
    v18 = v16;
  }

  return outlined destroy of FileImportExportBridge.Presentation(v18, v17);
}

uint64_t sub_18BDF0334()
{
  v1 = *(type metadata accessor for FileImportExportBridge.PresentationState.UpdateEffect(0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    type metadata accessor for FileImportExportBridge.Presentation(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      type metadata accessor for FileExportOperation.Mode(0);
      v5 = swift_getEnumCaseMultiPayload();
      if (v5 <= 1)
      {
        if (v5)
        {
LABEL_6:
          if (v5 == 1)
          {

LABEL_27:
          }

LABEL_28:
          v18 = type metadata accessor for FileExportOperation(0);

          v19 = v18[6];
          v20 = type metadata accessor for URL();
          v21 = *(v20 - 8);
          if (!(*(v21 + 48))(v3 + v19, 1, v20))
          {
            (*(v21 + 8))(v3 + v19, v20);
          }

          v22 = v3 + v18[7];
          if (*(v22 + 24))
          {
            outlined consume of Text.Storage(*v22, *(v22 + 8), *(v22 + 16));
          }

          v23 = v3 + v18[8];
          if (*(v23 + 24))
          {
            outlined consume of Text.Storage(*v23, *(v23 + 8), *(v23 + 16));
          }

          v24 = v3 + v18[9];
          if (*(v24 + 24))
          {
            outlined consume of Text.Storage(*v24, *(v24 + 8), *(v24 + 16));
          }

          v25 = v18[10];
          type metadata accessor for Predicate<Pack{URL}>(0);
          v27 = v26;
          v28 = *(v26 - 8);
          if (!(*(v28 + 48))(v3 + v25, 1, v26))
          {
            (*(v28 + 8))(v3 + v25, v27);
          }

          goto LABEL_38;
        }

LABEL_11:
        v6 = type metadata accessor for URL();
        (*(*(v6 - 8) + 8))(v0 + v2, v6);
        type metadata accessor for FileExportOperation.Move(0);

        goto LABEL_27;
      }

LABEL_23:
      if (v5 == 2)
      {
        outlined consume of FileExportOperation.Storage(*v3, *(v3 + 8), *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40));

        goto LABEL_27;
      }

      if (v5 == 3)
      {

        goto LABEL_27;
      }

      goto LABEL_28;
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_38;
    }

    type metadata accessor for FileImportExportBridge.Presentation(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      type metadata accessor for FileExportOperation.Mode(0);
      v5 = swift_getEnumCaseMultiPayload();
      if (v5 <= 1)
      {
        if (v5)
        {
          goto LABEL_6;
        }

        goto LABEL_11;
      }

      goto LABEL_23;
    }
  }

  v7 = type metadata accessor for FileImportOperation(0);
  v8 = v7[5];
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v3 + v8, v9);
  }

  v11 = v3 + v7[6];
  if (*(v11 + 24))
  {
    outlined consume of Text.Storage(*v11, *(v11 + 8), *(v11 + 16));
  }

  v12 = v3 + v7[7];
  if (*(v12 + 24))
  {
    outlined consume of Text.Storage(*v12, *(v12 + 8), *(v12 + 16));
  }

  v13 = v3 + v7[8];
  if (*(v13 + 24))
  {
    outlined consume of Text.Storage(*v13, *(v13 + 8), *(v13 + 16));
  }

  v14 = v7[11];
  type metadata accessor for Predicate<Pack{URL}>(0);
  v16 = v15;
  v17 = *(v15 - 8);
  if (!(*(v17 + 48))(v3 + v14, 1, v15))
  {
    (*(v17 + 8))(v3 + v14, v16);
  }

LABEL_38:

  return swift_deallocObject();
}

uint64_t FileImportExportBridge.PresentationState.update(preferences:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v105 = a2;
  type metadata accessor for (FileImportExportBridge.Presentation?, FileImportExportBridge.Presentation?)(0);
  v104 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v109 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FileExportOperation?(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v102 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FileExportOperation(0);
  v100 = *(v9 - 8);
  v101 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v96 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PreferenceValues.Value<FileExportOperation?>(0);
  v106 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v108 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FileImportOperation?(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for FileImportOperation(0);
  v16 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v95 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PreferenceValues.Value<FileImportOperation?>(0);
  v19 = v18 - 8;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FileImportExportBridge.Presentation?(0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v97 = &v90 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v92 = &v90 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v93 = &v90 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v91 = &v90 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v94 = &v90 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v90 - v33;
  v35 = *a1;
  v36 = type metadata accessor for FileImportExportBridge.Presentation(0);
  v107 = *(v36 - 8);
  v37 = *(v107 + 56);
  v110 = v34;
  v99 = v37;
  v37(v34, 1, 1, v36);
  v112 = v35;
  PreferenceValues.subscript.getter();
  v38 = type metadata accessor for FileImportExportBridge.PresentationState(0);
  v39 = *(v38 + 20);
  v40 = *(v3 + v39);
  v41 = *(v19 + 36);
  v111 = v21;
  v42 = *&v21[v41];
  v43 = v40 != -1 && v40 == v42;
  v44 = v43;
  v103 = v44;
  if (!v43)
  {
    v45 = v3;
    *(v3 + v39) = v42;
    outlined init with copy of FileImportExportBridge.PresentationState(v111, v15, type metadata accessor for FileImportOperation?);
    if ((*(v16 + 48))(v15, 1, v98) == 1)
    {
      outlined destroy of FileImportExportBridge.Presentation(v15, type metadata accessor for FileImportOperation?);
    }

    else
    {
      v46 = v110;
      outlined destroy of FileImportExportBridge.Presentation(v110, type metadata accessor for FileImportExportBridge.Presentation?);
      v47 = v95;
      outlined init with take of FileImportExportBridge.Presentation?(v15, v95, type metadata accessor for FileImportOperation);
      outlined init with take of FileImportExportBridge.Presentation?(v47, v46, type metadata accessor for FileImportOperation);
      swift_storeEnumTagMultiPayload();
      v99(v46, 0, 1, v36);
    }

    v3 = v45;
  }

  v112 = v35;
  v48 = v108;
  PreferenceValues.subscript.getter();
  v49 = *(v38 + 24);
  v50 = *(v3 + v49);
  v51 = *(v48 + *(v106 + 28));
  v52 = v50 != -1;
  v54 = v51 != -1 && v50 == v51;
  v55 = v52 && v54;
  v56 = v3;
  v57 = v109;
  if (v52 && v54)
  {
    v58 = v110;
    v59 = v107;
    if (v103)
    {
      outlined destroy of FileImportExportBridge.Presentation(v48, type metadata accessor for PreferenceValues.Value<FileExportOperation?>);
      outlined destroy of FileImportExportBridge.Presentation(v111, type metadata accessor for PreferenceValues.Value<FileImportOperation?>);
      outlined destroy of FileImportExportBridge.Presentation(v58, type metadata accessor for FileImportExportBridge.Presentation?);
      updated = type metadata accessor for FileImportExportBridge.PresentationState.UpdateEffect(0);
      return (*(*(updated - 8) + 56))(v105, 1, 1, updated);
    }
  }

  else
  {
    *(v3 + v49) = v51;
    v62 = v102;
    outlined init with copy of FileImportExportBridge.PresentationState(v48, v102, type metadata accessor for FileExportOperation?);
    v63 = (*(v100 + 48))(v62, 1, v101);
    v58 = v110;
    v59 = v107;
    if (v63 == 1)
    {
      outlined destroy of FileImportExportBridge.Presentation(v62, type metadata accessor for FileExportOperation?);
    }

    else
    {
      outlined destroy of FileImportExportBridge.Presentation(v110, type metadata accessor for FileImportExportBridge.Presentation?);
      v64 = v62;
      v65 = v96;
      outlined init with take of FileImportExportBridge.Presentation?(v64, v96, type metadata accessor for FileExportOperation);
      outlined init with take of FileImportExportBridge.Presentation?(v65, v58, type metadata accessor for FileExportOperation);
      swift_storeEnumTagMultiPayload();
      v99(v58, 0, 1, v36);
    }
  }

  v66 = *(v104 + 48);
  outlined init with copy of FileImportExportBridge.PresentationState(v56, v57, type metadata accessor for FileImportExportBridge.Presentation?);
  outlined init with copy of FileImportExportBridge.PresentationState(v58, v57 + v66, type metadata accessor for FileImportExportBridge.Presentation?);
  v67 = *(v59 + 48);
  if (v67(v57 + v66, 1, v36) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v70 = v67(v57, 1, v36);
    if (EnumCaseMultiPayload == 1)
    {
      if (v70 != 1)
      {
        v71 = v94;
        outlined init with copy of FileImportExportBridge.PresentationState(v57, v94, type metadata accessor for FileImportExportBridge.Presentation?);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          if (v55)
          {
            outlined destroy of FileImportExportBridge.Presentation(v48, type metadata accessor for PreferenceValues.Value<FileExportOperation?>);
            outlined destroy of FileImportExportBridge.Presentation(v111, type metadata accessor for PreferenceValues.Value<FileImportOperation?>);
            v72 = type metadata accessor for FileImportExportBridge.PresentationState.UpdateEffect(0);
            (*(*(v72 - 8) + 56))(v105, 1, 1, v72);
LABEL_49:
            v86 = v94;
LABEL_53:
            outlined destroy of FileImportExportBridge.Presentation(v86, type metadata accessor for FileImportExportBridge.Presentation);
            outlined destroy of FileImportExportBridge.Presentation(v57 + v66, type metadata accessor for FileImportExportBridge.Presentation);
            v79 = type metadata accessor for FileImportExportBridge.Presentation?;
            goto LABEL_54;
          }

          v83 = v91;
          outlined init with copy of FileImportExportBridge.PresentationState(v58, v91, type metadata accessor for FileImportExportBridge.Presentation?);
          result = v67(v83, 1, v36);
          if (result != 1)
          {
            outlined destroy of FileImportExportBridge.Presentation(v48, type metadata accessor for PreferenceValues.Value<FileExportOperation?>);
            outlined destroy of FileImportExportBridge.Presentation(v111, type metadata accessor for PreferenceValues.Value<FileImportOperation?>);
            v84 = v105;
            outlined init with take of FileImportExportBridge.Presentation?(v83, v105, type metadata accessor for FileImportExportBridge.Presentation);
            v85 = type metadata accessor for FileImportExportBridge.PresentationState.UpdateEffect(0);
            swift_storeEnumTagMultiPayload();
            (*(*(v85 - 8) + 56))(v84, 0, 1, v85);
            goto LABEL_49;
          }

          goto LABEL_58;
        }

        v77 = v71;
        goto LABEL_43;
      }
    }

    else if (v70 != 1)
    {
      v77 = v93;
      outlined init with copy of FileImportExportBridge.PresentationState(v57, v93, type metadata accessor for FileImportExportBridge.Presentation?);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        if (v103)
        {
          outlined destroy of FileImportExportBridge.Presentation(v48, type metadata accessor for PreferenceValues.Value<FileExportOperation?>);
          outlined destroy of FileImportExportBridge.Presentation(v111, type metadata accessor for PreferenceValues.Value<FileImportOperation?>);
          v78 = type metadata accessor for FileImportExportBridge.PresentationState.UpdateEffect(0);
          (*(*(v78 - 8) + 56))(v105, 1, 1, v78);
        }

        else
        {
          v87 = v92;
          outlined init with copy of FileImportExportBridge.PresentationState(v58, v92, type metadata accessor for FileImportExportBridge.Presentation?);
          result = v67(v87, 1, v36);
          if (result == 1)
          {
LABEL_59:
            __break(1u);
            return result;
          }

          outlined destroy of FileImportExportBridge.Presentation(v48, type metadata accessor for PreferenceValues.Value<FileExportOperation?>);
          outlined destroy of FileImportExportBridge.Presentation(v111, type metadata accessor for PreferenceValues.Value<FileImportOperation?>);
          v88 = v105;
          outlined init with take of FileImportExportBridge.Presentation?(v87, v105, type metadata accessor for FileImportExportBridge.Presentation);
          v89 = type metadata accessor for FileImportExportBridge.PresentationState.UpdateEffect(0);
          swift_storeEnumTagMultiPayload();
          (*(*(v89 - 8) + 56))(v88, 0, 1, v89);
        }

        v86 = v77;
        goto LABEL_53;
      }

LABEL_43:
      outlined destroy of FileImportExportBridge.Presentation(v77, type metadata accessor for FileImportExportBridge.Presentation);
    }

    outlined destroy of FileImportExportBridge.Presentation(v57 + v66, type metadata accessor for FileImportExportBridge.Presentation);
    outlined destroy of FileImportExportBridge.Presentation(v57, type metadata accessor for FileImportExportBridge.Presentation?);
    v80 = v97;
    outlined init with copy of FileImportExportBridge.PresentationState(v58, v97, type metadata accessor for FileImportExportBridge.Presentation?);
    result = v67(v80, 1, v36);
    if (result != 1)
    {
      outlined destroy of FileImportExportBridge.Presentation(v48, type metadata accessor for PreferenceValues.Value<FileExportOperation?>);
      outlined destroy of FileImportExportBridge.Presentation(v111, type metadata accessor for PreferenceValues.Value<FileImportOperation?>);
      v81 = v105;
      outlined init with take of FileImportExportBridge.Presentation?(v80, v105, type metadata accessor for FileImportExportBridge.Presentation);
      v82 = type metadata accessor for FileImportExportBridge.PresentationState.UpdateEffect(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v82 - 8) + 56))(v81, 0, 1, v82);
      return outlined assign with take of FileImportExportBridge.Presentation?(v58, v56);
    }

    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  outlined destroy of FileImportExportBridge.Presentation(v48, type metadata accessor for PreferenceValues.Value<FileExportOperation?>);
  outlined destroy of FileImportExportBridge.Presentation(v111, type metadata accessor for PreferenceValues.Value<FileImportOperation?>);
  if (v67(v57, 1, v36) != 1)
  {
    v73 = swift_getEnumCaseMultiPayload();
    v74 = type metadata accessor for FileImportExportBridge.PresentationState.UpdateEffect(0);
    if (v73 == 1)
    {
      v75 = v105;
      if (v55)
      {
LABEL_34:
        v76 = 1;
LABEL_41:
        (*(*(v74 - 8) + 56))(v75, v76, 1, v74);
        v79 = type metadata accessor for FileImportExportBridge.Presentation;
LABEL_54:
        outlined destroy of FileImportExportBridge.Presentation(v57, v79);
        return outlined assign with take of FileImportExportBridge.Presentation?(v58, v56);
      }
    }

    else
    {
      v75 = v105;
      if (v103)
      {
        goto LABEL_34;
      }
    }

    swift_storeEnumTagMultiPayload();
    v76 = 0;
    goto LABEL_41;
  }

  v68 = type metadata accessor for FileImportExportBridge.PresentationState.UpdateEffect(0);
  (*(*(v68 - 8) + 56))(v105, 1, 1, v68);
  return outlined assign with take of FileImportExportBridge.Presentation?(v58, v56);
}

void type metadata accessor for FileImportOperation?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for FileImportOperation?)
  {
    type metadata accessor for FileImportOperation(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for FileImportOperation?);
    }
  }
}

void sub_18BDF17B8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  _s10Foundation3URLVSgMaTm_7(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[9]) = (a2 - 1);
  }

  else
  {
    _s10Foundation3URLVSgMaTm_7(0, &lazy cache variable for type metadata for Predicate<Pack{URL}>?, type metadata accessor for Predicate<Pack{URL}>);
    v14 = v13;
    v15 = *(*(v13 - 8) + 56);
    v16 = a1 + a4[11];

    v15(v16, a2, a2, v14);
  }
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance FileImportOperation.Key@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for FileImportOperation(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_18BDF1998(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for FileExportOperation.Mode(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    _s10Foundation3URLVSgMaTm_3(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    v15 = *(v14 - 8);
    if (*(v15 + 84) == a2)
    {
      v8 = v14;
      v9 = *(v15 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    _s10Foundation3URLVSgMaTm_3(0, &lazy cache variable for type metadata for Predicate<Pack{URL}>?, type metadata accessor for Predicate<Pack{URL}>, MEMORY[0x1E69E6720]);
    v17 = v16;
    v18 = *(*(v16 - 8) + 48);
    v19 = a1 + a3[10];

    return v18(v19, a2, v17);
  }
}

uint64_t specialized UIHostingController.screenEdgesSystemGestureSeedTracker.getter()
{
  v1 = direct field offset for UIHostingController.screenEdgesSystemGestureSeedTracker;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t $defer #1 <A>() in UIHostingController.screenEdgesSystemGesturePreferencesDidChange(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  VersionSeedSetTracker.updateSeeds(to:)();
  return swift_endAccess();
}

uint64_t UIHostingController.persistentSystemOverlaysPreferencesDidChange(_:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = specialized UIHostingController.persistentSystemOverlaysSeedTracker.getter();
  v9 = v3;

  v5 = VersionSeedSetTracker.hasChanges(in:)(&v9, v4);

  if (v5)
  {
    v9 = v3;
    PreferenceValues.subscript.getter();
    *(v2 + direct field offset for UIHostingController.persistentSystemOverlays) = v8;
    UIHostingController.persistentSystemOverlays.getter(&v9);
    v6 = BYTE1(v9) & 1;
    v9 = v3;
    PreferenceValues.subscript.getter();
    UIHostingController.shouldDeferPersistentSystemOverlaysToChildViewController.setter(v8);
    UIHostingController.updateHomeIndicator(animated:)(v6);
    return $defer #1 <A>() in UIHostingController.persistentSystemOverlaysPreferencesDidChange(_:)(v2, v3);
  }

  else
  {

    return $defer #1 <A>() in UIHostingController.persistentSystemOverlaysPreferencesDidChange(_:)(v2, v3);
  }
}

uint64_t specialized UIHostingController.persistentSystemOverlaysSeedTracker.getter()
{
  v1 = direct field offset for UIHostingController.persistentSystemOverlaysSeedTracker;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t $defer #1 <A>() in UIHostingController.persistentSystemOverlaysPreferencesDidChange(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  VersionSeedSetTracker.updateSeeds(to:)();
  return swift_endAccess();
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance ContentScrollViewPreferenceKey@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static ContentScrollViewPreferenceKey.defaultValue;
}

uint64_t ToolbarBridge.preferencesDidChange<A>(_:hostingController:)(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a2;
  Toolbar.UpdateContext.init<A>(hostingController:)(v3, v9);
  v8 = v2;
  outlined init with copy of Toolbar.UpdateContext(v9, v7);
  v4 = ToolbarBridge.preferencesDidChange(_:context:)(&v8, v7);
  ToolbarBridge.adoptUpdates<A>(_:hostingController:context:)(v4, v5 & 0xFF010101, v3, v9);

  return outlined destroy of Toolbar.UpdateContext(v9);
}

uint64_t ToolbarBridge.preferencesDidChange(_:context:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *a1;
  v51 = MEMORY[0x1E69E7CD0];
  v52 = 0;
  v6 = direct field offset for ToolbarBridge.toolbarTracker;
  swift_beginAccess();
  v35 = v5;
  *&v43 = v5;
  PreferenceValues.subscript.getter();
  v7 = *(v3 + v6);
  v8 = v7 == -1;
  v10 = *&v50[24] == -1 || v7 != *&v50[24];
  v11 = v8 || v10;
  if (v8 || v10)
  {
    *(v3 + v6) = *&v50[24];
    v41[2] = v49;
    v41[3] = *v50;
    v42 = *&v50[16];
    v41[0] = v47;
    v41[1] = v48;
    v38 = v49;
    v39 = *v50;
    v40 = *&v50[16];
    v36 = v47;
    v37 = v48;
    outlined init with copy of ToolbarStorage(v41, &v43);
    v12 = v39;
    v59 = v38;
    v60 = v39;
    v13 = v36;
    v14 = v37;
    v57 = v36;
    v58 = v37;
    v15 = v3 + direct field offset for ToolbarBridge.lastToolbarStorage;
    v16 = *(v3 + direct field offset for ToolbarBridge.lastToolbarStorage + 48);
    v45 = *(v3 + direct field offset for ToolbarBridge.lastToolbarStorage + 32);
    *v46 = v16;
    v17 = *(v3 + direct field offset for ToolbarBridge.lastToolbarStorage + 16);
    v43 = *(v3 + direct field offset for ToolbarBridge.lastToolbarStorage);
    v44 = v17;
    *(v15 + 2) = v38;
    *(v15 + 3) = v12;
    v61 = v40;
    *&v46[16] = *(v15 + 8);
    *(v15 + 8) = v40;
    *v15 = v13;
    *(v15 + 1) = v14;
    outlined init with copy of ToolbarStorage(&v57, v53);
    outlined destroy of Toolbar.UpdateContext?(&v43, &lazy cache variable for type metadata for ToolbarStorage?, &type metadata for ToolbarStorage, MEMORY[0x1E69E6720], type metadata accessor for Toolbar.UpdateContext?);
    v59 = v38;
    v60 = v39;
    v61 = v40;
    v57 = v36;
    v58 = v37;
    outlined destroy of ToolbarStorage(&v57);
  }

  v45 = v49;
  *v46 = *v50;
  *&v46[12] = *&v50[12];
  v43 = v47;
  v44 = v48;
  outlined destroy of Toolbar.UpdateContext?(&v43, &lazy cache variable for type metadata for PreferenceValues.Value<ToolbarStorage>, &type metadata for ToolbarStorage, MEMORY[0x1E697EA38], type metadata accessor for Toolbar.UpdateContext?);
  swift_endAccess();
  ToolbarBridge.toolbarStorage.getter(&v57);
  v18 = v60;
  if (v60)
  {
    v19 = v61;
    v20 = v59;
    v22 = v57;
    v21 = v58;
    v23 = BYTE8(v60);
    v24 = BYTE8(v59);
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v45 = xmmword_1ED5A7500;
    *v46 = *&qword_1ED5A7510;
    v43 = static ToolbarKey.defaultValue;
    v44 = *algn_1ED5A74F0;
    v19 = qword_1ED5A7520;
    *&v46[16] = qword_1ED5A7520;
    v23 = byte_1ED5A7518;
    v18 = qword_1ED5A7510;
    v24 = BYTE8(xmmword_1ED5A7500);
    v20 = xmmword_1ED5A7500;
    v33 = static ToolbarKey.defaultValue;
    v34 = *algn_1ED5A74F0;
    outlined init with copy of ToolbarStorage(&v43, v53);
    v22 = v33;
    v21 = v34;
  }

  v53[0] = v22;
  v53[1] = v21;
  *&v54 = v20;
  BYTE8(v54) = v24 & 1;
  *&v55 = v18;
  BYTE8(v55) = v23 & 1;
  v56 = v19;
  *&v46[16] = v19;
  v43 = v22;
  v44 = v21;
  v45 = v54;
  *v46 = v55;
  swift_beginAccess();
  v25 = MEMORY[0x1E69E7CC0];
  specialized Set.formUnion<A>(_:)(MEMORY[0x1E69E7CC0]);
  swift_endAccess();

  *(a2 + 88) = v25;
  swift_beginAccess();
  EnvironmentValues.horizontalSizeClass.getter();
  *(a2 + 80) = v36;
  EnvironmentValues.verticalSizeClass.getter();
  v26 = swift_endAccess();
  *(a2 + 81) = v36;
  MEMORY[0x1EEE9AC00](v26);
  v29[2] = v3;
  v29[3] = v35;
  v29[4] = &v51;
  v30 = v11;
  v31 = &v43;
  v32 = a2;
  static ToolbarStrategy.withUpdater<A>(_:_:body:)(v3, a2, partial apply for closure #2 in ToolbarBridge.preferencesDidChange(_:context:), v29);
  outlined destroy of ToolbarStorage(v53);
  v27 = v51;
  outlined destroy of Toolbar.UpdateContext(a2);
  return v27;
}

uint64_t static ToolbarStrategy.withUpdater<A>(_:_:body:)(void *a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v17 = a4;
  v18 = a3;
  v6 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - v9;
  v13 = *((v12 & v11) + 0x58);
  (*(v13 + 64))(v6, v13, v8);
  v14 = *(v13 + 24);
  v15 = a1;
  v14(a1, v6, v13);
  outlined init with copy of Toolbar.UpdateContext(a2, v19);
  (*(v13 + 48))(v19, v6, v13);
  v18(v10);
  return (*(v7 + 8))(v10, v6);
}

double protocol witness for ToolbarStrategy.init() in conformance UIKitToolbarStrategy@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 96) = 0;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t outlined assign with take of Toolbar.UpdateContext?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 40))(a2, a1, v8);
  return a2;
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance UINavigationItemAdaptorKey@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static UINavigationItemAdaptorKey.defaultValue;
}

uint64_t partial apply for closure #1 in closure #2 in ToolbarBridge.preferencesDidChange(_:context:)(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *(v2 + direct field offset for ToolbarBridge.navigationAdaptor) = *a1;

  *(v3 + 10) = 1;
  return result;
}

BOOL specialized VersionSeedTracker.didChange(_:action:)(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = v7;
  v12 = a4(0);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = v21 - v14;
  v21[1] = a1;
  PreferenceValues.subscript.getter();
  v16 = *&v15[*(v13 + 36)];
  v18 = v16 == -1 || *v9 != v16;
  v19 = *v9 == -1 || v18;
  if (*v9 == -1 || v18)
  {
    *v9 = v16;
    a2(v15);
  }

  outlined destroy of WeakBox<UIWindowScene>?(v15, a7);
  return v19;
}

BOOL specialized VersionSeedTracker.didChange(_:action:)(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  return specialized VersionSeedTracker.didChange(_:action:)(a1, a2, a3, type metadata accessor for PreferenceValues.Value<ToolbarStorage.SearchItem?>, &type metadata for SearchKey, &protocol witness table for SearchKey, type metadata accessor for PreferenceValues.Value<ToolbarStorage.SearchItem?>);
}

{
  return specialized VersionSeedTracker.didChange(_:action:)(a1, a2, a3, type metadata accessor for PreferenceValues.Value<ToolbarStorage.NavigationProperties?>, &type metadata for NavigationPropertiesKey, &protocol witness table for NavigationPropertiesKey, type metadata accessor for PreferenceValues.Value<ToolbarStorage.NavigationProperties?>);
}

uint64_t outlined assign with copy of ToolbarStorage.NavigationProperties?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_1(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t closure #2 in closure #2 in ToolbarBridge.preferencesDidChange(_:context:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v7 = *a2;
  v8 = *MEMORY[0x1E69E7D40];
  v9 = direct field offset for ToolbarBridge.searchItem;
  swift_beginAccess();
  outlined assign with copy of ToolbarStorage.NavigationProperties?(a1, a2 + v9, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem);
  swift_endAccess();
  result = (*(*((v8 & v7) + 0x58) + 104))(*((v8 & v7) + 0x50));
  if (result)
  {
    memset(v13, 0, sizeof(v13));
    v14 = xmmword_18CD90710;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *a4;
    *a4 = 0x8000000000000000;
    specialized _NativeSet.update(with:isUnique:)(v13, isUniquelyReferenced_nonNull_native, v15);
    outlined destroy of Toolbar.UpdateContext?(v15, &lazy cache variable for type metadata for Toolbar.BarLocation?, &type metadata for Toolbar.BarLocation, MEMORY[0x1E69E6720], type metadata accessor for Toolbar.UpdateContext?);
    *a4 = v12;
  }

  return result;
}

uint64_t outlined init with copy of Toolbar.UpdateContext?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t _s7SwiftUI7ToolbarO13UpdateContextVSgWOcTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t closure #1 in UIKitToolbarStrategy.updateSearch()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v69 = a3;
  v64 = a2;
  v68 = a4;
  v5 = type metadata accessor for ToolbarStorage.SearchItem(0);
  v6 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v5);
  v67 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E6720];
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0(0, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v66 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v72 = (&v64 - v12);
  MEMORY[0x1EEE9AC00](v13);
  v70 = (&v64 - v14);
  MEMORY[0x1EEE9AC00](v15);
  v75 = &v64 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v64 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v64 - v21;
  v23 = direct field offset for ToolbarBridge.searchItem;
  swift_beginAccess();
  outlined init with copy of ToolbarStorage.SearchItem?(a1 + v23, v22, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, v8, _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
  v71 = v22;
  outlined init with copy of ToolbarStorage.SearchItem?(v22, v19, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, v8, _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
  v65 = v6;
  v73 = *(v6 + 48);
  v74 = v5;
  v24 = v73(v19, 1, v5);
  outlined destroy of ToolbarStorage.SearchItem?(v19, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, v8, _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
  v25 = 0;
  if (v24 != 1)
  {
    v26 = a1 + direct field offset for ToolbarBridge.platformVended;
    swift_beginAccess();
    v27 = *(v26 + 32);
    if (v27)
    {
      v25 = *(v26 + 32);
    }

    else
    {
      v28 = objc_allocWithZone(type metadata accessor for SwiftUISearchController(0));
      v25 = [v28 init];
      v27 = 0;
    }

    v29 = v27;
    v30 = v25;
  }

  v31 = a1 + direct field offset for ToolbarBridge.platformVended;
  swift_beginAccess();
  v32 = *(v31 + 8);
  v33 = [v32 searchController];
  [v32 setSearchController_];
  v34 = v33;
  v35 = [v32 searchController];
  if (v34)
  {
    v36 = v73;
    v37 = v74;
    v38 = v71;
    if (v35)
    {
      v39 = v35;

      LODWORD(v40) = v34 != v39;
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v36 = v73;
  v37 = v74;
  v38 = v71;
  if (v35)
  {

LABEL_12:
    LODWORD(v40) = 1;
    goto LABEL_14;
  }

  LODWORD(v40) = 0;
LABEL_14:
  v41 = v75;
  v71 = v34;
  outlined init with copy of ToolbarStorage.SearchItem?(v38, v75, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, MEMORY[0x1E69E6720], _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
  if (v36(v41, 1, v37) == 1)
  {
    outlined destroy of ToolbarStorage.SearchItem?(v41, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, MEMORY[0x1E69E6720], _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
    v42 = 1;
  }

  else
  {
    if (*(v41 + *(v37 + 9) + 8))
    {
      type metadata accessor for EnvironmentPropertyKey<SearchFieldPlacementKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFieldPlacementKey>, &type metadata for SearchFieldPlacementKey, &protocol witness table for SearchFieldPlacementKey, MEMORY[0x1E697FE38]);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<SearchFieldPlacementKey> and conformance EnvironmentPropertyKey<A>();

      v36 = v73;
      v37 = v74;
      PropertyList.Tracker.value<A>(_:for:)();
    }

    else
    {
      type metadata accessor for EnvironmentPropertyKey<SearchFieldPlacementKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFieldPlacementKey>, &type metadata for SearchFieldPlacementKey, &protocol witness table for SearchFieldPlacementKey, MEMORY[0x1E697FE38]);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<SearchFieldPlacementKey> and conformance EnvironmentPropertyKey<A>();
      PropertyList.subscript.getter();
    }

    v42 = (LOBYTE(v76[0]) - 2 < 6) | LOBYTE(v76[0]) ^ 1;
    _s7SwiftUI16SearchFieldStateVWOhTm_1(v75, type metadata accessor for ToolbarStorage.SearchItem);
  }

  [v32 setHidesSearchBarWhenScrolling_];
  specialized UIKitToolbarStrategy.configureNavigationItem(_:searchItem:controller:)(v32, v38);
  v43 = *(v31 + 32);
  *(v31 + 32) = v25;

  v44 = v70;
  outlined init with copy of ToolbarStorage.SearchItem?(v38, v70, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, MEMORY[0x1E69E6720], _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
  v45 = v36(v44, 1, v37);
  v46 = v72;
  if (v45 == 1)
  {
    v47 = MEMORY[0x1E69E6720];
    outlined destroy of ToolbarStorage.SearchItem?(v38, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, MEMORY[0x1E69E6720], _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);

    result = outlined destroy of ToolbarStorage.SearchItem?(v44, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, v47, _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
LABEL_26:
    *v68 = v40;
    return result;
  }

  v49 = v44;
  v50 = v67;
  outlined init with take of ToolbarStorage.SearchItem(v49, v67, type metadata accessor for ToolbarStorage.SearchItem);
  if (!v25)
  {
    outlined destroy of ToolbarStorage.SearchItem?(v38, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, MEMORY[0x1E69E6720], _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);

    result = _s7SwiftUI16SearchFieldStateVWOhTm_1(v50, type metadata accessor for ToolbarStorage.SearchItem);
    goto LABEL_26;
  }

  LODWORD(v75) = v40;
  _s7SwiftUI24SearchFieldConfigurationVWOcTm_0(v50, v46, type metadata accessor for ToolbarStorage.SearchItem);
  (*(v65 + 56))(v46, 0, 1, v37);
  v51 = OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_searchItem;
  swift_beginAccess();
  outlined assign with copy of ToolbarStorage.SearchItem?(v46, v25 + v51);
  swift_endAccess();
  v52 = v25 + v51;
  v53 = v66;
  outlined init with copy of ToolbarStorage.SearchItem?(v52, v66, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, MEMORY[0x1E69E6720], _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
  result = (v36)(v53, 1, v37);
  if (result != 1)
  {
    SwiftUISearchController.update(to:)(v53);
    v74 = type metadata accessor for ToolbarStorage.SearchItem;
    v73 = MEMORY[0x1E69E6720];
    v70 = _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0;
    outlined destroy of ToolbarStorage.SearchItem?(v46, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, MEMORY[0x1E69E6720], _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
    v72 = type metadata accessor for ToolbarStorage.SearchItem;
    _s7SwiftUI16SearchFieldStateVWOhTm_1(v53, type metadata accessor for ToolbarStorage.SearchItem);
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakAssign();

    v55 = [v25 searchBar];
    v56 = [v55 searchTextField];

    v57 = *(v37 + 9);
    v58 = v50 + *(v37 + 8);
    v59 = *v58;
    v60 = *(v58 + 8);
    v61 = *(v58 + 16);
    v40 = v50;
    v62 = *(v58 + 24);
    v63 = *(v40 + v57 + 8);
    v76[0] = *(v40 + v57);
    v76[1] = v63;

    UITextField.applyAccessibilityExplicitLabelIfNeeded(from:in:)(v59, v60, v61, v62, v76);

    outlined destroy of ToolbarStorage.SearchItem?(v38, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, v74, v73, v70);
    result = _s7SwiftUI16SearchFieldStateVWOhTm_1(v40, v72);
    LOBYTE(v40) = v75;
    goto LABEL_26;
  }

  __break(1u);
  return result;
}

uint64_t ToolbarStrategy.withUpdate<A>(_:)(void (*a1)(void *, _BYTE *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(a5 + 16))(a3, a5);
  if (v8)
  {
    v9 = v8;
    (*(a5 + 40))(v11, a3, a5);
    if (v11[11])
    {
      outlined init with take of Toolbar.UpdateContext(v11, v12);
      a1(v9, v12);

      return outlined destroy of Toolbar.UpdateContext(v12);
    }

    outlined destroy of Toolbar.UpdateContext?(v11, &lazy cache variable for type metadata for Toolbar.UpdateContext?, &type metadata for Toolbar.UpdateContext, MEMORY[0x1E69E6720], type metadata accessor for Toolbar.UpdateContext?);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t ToolbarStrategy.makeBarContext(storage:preferences:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *a2;
  v14 = *(a1 + 8) != 0;
  *v15 = 0x1000000;
  *&v15[4] = 1;
  v13[2] = &v14;
  v13[3] = v6;
  v13[4] = a1;
  result = ToolbarStrategy.withUpdate<A>(_:)(partial apply for closure #1 in ToolbarStrategy.makeBarContext(storage:preferences:), v13, a3, MEMORY[0x1E69E7CA8] + 8, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = v15[2];
  v11 = *&v15[3];
  v12 = v15[5];
  *a5 = v14;
  *(a5 + 1) = v8;
  *(a5 + 2) = v9;
  *(a5 + 3) = v10;
  *(a5 + 4) = v11;
  *(a5 + 6) = v12;
  return result;
}

id protocol witness for ToolbarStrategy.updater.getter in conformance UIKitToolbarStrategy()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t closure #1 in ToolbarStrategy.makeBarContext(storage:preferences:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a3 + 4) = *(a2 + 80);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = UIViewController.hasOrWillHaveSystemLeadingItems(_:)(a2);
  }

  else
  {
    v9 = 0;
  }

  *(a3 + 2) = v9 & 1;
  v27[0] = a4;
  PreferenceValues.subscript.getter();
  *(a3 + 1) = v23;
  v10 = ToolbarStorage.placements.getter();
  v11 = v10;
  v12 = v10 + 56;
  v13 = 1 << *(v10 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v10 + 56);
  v16 = (v13 + 63) >> 6;

  v18 = 0;
  while (v15)
  {
LABEL_12:
    outlined init with copy of ToolbarItemPlacement.Role(*(v11 + 48) + 48 * (__clz(__rbit64(v15)) | (v18 << 6)), v27);
    v23 = 6;
    v24 = 0u;
    v25 = 0u;
    v26 = 2;
    v20 = specialized static ToolbarItemPlacement.Role.== infix(_:_:)(v27, &v23);
    outlined destroy of ToolbarItemPlacement.Role(&v23);
    if (v20)
    {

      outlined destroy of ToolbarItemPlacement.Role(v27);
LABEL_17:

      v22 = 1;
LABEL_18:
      *(a3 + 3) = v22;
      return result;
    }

    v23 = 26;
    v15 &= v15 - 1;
    v24 = 0u;
    v25 = 0u;
    v26 = 2;
    v21 = specialized static ToolbarItemPlacement.Role.== infix(_:_:)(v27, &v23);
    outlined destroy of ToolbarItemPlacement.Role(&v23);
    result = outlined destroy of ToolbarItemPlacement.Role(v27);
    if (v21)
    {

      goto LABEL_17;
    }
  }

  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v16)
    {

      v22 = 0;
      goto LABEL_18;
    }

    v15 = *(v12 + 8 * v19);
    ++v18;
    if (v15)
    {
      v18 = v19;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t UIViewController.hasOrWillHaveBackItem(overrides:)(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 == 2)
  {
    outlined init with copy of PushTarget?(a1, v46, &lazy cache variable for type metadata for PushTarget?, &type metadata for PushTarget);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      Strong = [v1 splitViewController];
    }

    outlined init with copy of PushTarget?(v46, &v41, &lazy cache variable for type metadata for PushTarget?, &type metadata for PushTarget);
    if (v42 == 2)
    {
      outlined destroy of PushTarget?(&v41, &lazy cache variable for type metadata for PushTarget?, &type metadata for PushTarget);
      v4 = [v1 navigationController];
      if (!v4)
      {
        goto LABEL_13;
      }

      v5 = v4;
      v6 = [v4 viewControllers];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258);
      v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v8 = v7 >> 62 ? __CocoaSet.count.getter() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v8 <= 1)
      {
        goto LABEL_13;
      }
    }

    else
    {
      outlined init with take of PushTarget(&v41, v43);
      v9 = v45;
      v10 = v43[8];
      outlined destroy of PushTarget(v43);
      if (v9 != 1 || v10)
      {
LABEL_13:
        if (Strong)
        {
          v11 = Strong;
          v12 = [v11 traitCollection];
          v13 = [v12 horizontalSizeClass];

          v2 = v13 != 1 && [v11 displayMode] == 1;
          outlined init with copy of PushTarget?(v46, &v41, &lazy cache variable for type metadata for PushTarget?, &type metadata for PushTarget);
          if (v42 == 2)
          {
            outlined destroy of PushTarget?(&v41, &lazy cache variable for type metadata for PushTarget?, &type metadata for PushTarget);
          }

          else
          {
            outlined init with take of PushTarget(&v41, v43);
            if (v45 != 1)
            {
              v14 = v44;
              if ([v11 style])
              {
                v15 = [v11 viewControllerForColumn_];
                if (v15)
                {
                  v16 = v15;
                  objc_opt_self();
                  v17 = swift_dynamicCastObjCClass();
                  if (v17)
                  {
                    v18 = [v17 viewControllers];
                    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258);
                    v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                    if (v19 >> 62)
                    {
                      v20 = __CocoaSet.count.getter();
                    }

                    else
                    {
                      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    }

                    outlined destroy of PushTarget(v43);
                    LOBYTE(v2) = v20 != 0;
                    goto LABEL_60;
                  }
                }
              }
            }

            outlined destroy of PushTarget(v43);
          }

          if ([v11 style])
          {
            v21 = [v11 viewControllerForColumn_];
            if (v21)
            {
              v22 = v21;
              objc_opt_self();
              v23 = swift_dynamicCastObjCClass();
              if (v23)
              {
                v24 = v23;
                v25 = [v23 viewControllers];
                type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258);
                v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                v27 = v26 >> 62 ? __CocoaSet.count.getter() : *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);

                if (v27)
                {

                  goto LABEL_48;
                }
              }
            }
          }

          if ([v11 style])
          {
            v28 = [v11 viewControllerForColumn_];
            if (v28)
            {
              v29 = v28;
              objc_opt_self();
              v30 = swift_dynamicCastObjCClass();
              if (!v30)
              {

LABEL_51:
                goto LABEL_60;
              }

              v24 = v30;
              v31 = [v30 viewControllers];
              type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258);
              v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              if (v32 >> 62)
              {
                v33 = __CocoaSet.count.getter();
                if (v33)
                {
LABEL_42:
                  v34 = __OFSUB__(v33, 1);
                  v35 = v33 - 1;
                  if (v34)
                  {
                    __break(1u);
                  }

                  else if ((v32 & 0xC000000000000001) == 0)
                  {
                    if ((v35 & 0x8000000000000000) != 0)
                    {
                      __break(1u);
                    }

                    else if (v35 < *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      v36 = *(v32 + 8 * v35 + 32);
                      goto LABEL_47;
                    }

                    __break(1u);
                    goto LABEL_66;
                  }

                  v36 = MEMORY[0x18D00E9C0](v35, v32);
                  swift_unknownObjectRelease();
LABEL_47:

                  if (v36 == v1)
                  {
LABEL_48:
                    if (v2)
                    {
                      outlined destroy of PushTarget?(v46, &lazy cache variable for type metadata for PushTarget?, &type metadata for PushTarget);

                      LOBYTE(v2) = 1;
                      return v2 & 1;
                    }

                    v37 = [v24 viewControllers];
                    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258);
                    v38 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                    if (!(v38 >> 62))
                    {
                      v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_54:

                      outlined destroy of PushTarget?(v46, &lazy cache variable for type metadata for PushTarget?, &type metadata for PushTarget);
                      LOBYTE(v2) = v39 > 1;
                      return v2 & 1;
                    }

LABEL_66:
                    v39 = __CocoaSet.count.getter();
                    goto LABEL_54;
                  }

                  goto LABEL_51;
                }
              }

              else
              {
                v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v33)
                {
                  goto LABEL_42;
                }
              }
            }
          }

          goto LABEL_60;
        }

        LOBYTE(v2) = 0;
LABEL_60:
        outlined destroy of PushTarget?(v46, &lazy cache variable for type metadata for PushTarget?, &type metadata for PushTarget);
        return v2 & 1;
      }
    }

    LOBYTE(v2) = 1;
    goto LABEL_60;
  }

  return v2 & 1;
}

uint64_t UIViewController.hasOrWillHaveSystemLeadingItems(_:)(uint64_t a1)
{
  if (UIViewController.hasOrWillHaveBackItem(overrides:)(a1))
  {
    return 1;
  }

  v3 = [v1 navigationItem];
  v4 = [v3 leftBarButtonItems];

  if (!v4)
  {
    return 0;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBarButtonItem, 0x1E69DC708);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x18D00E9C0](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v2 = [v8 isSystemItem];

      if ((v2 & 1) == 0)
      {
        ++v7;
        if (v10 != i)
        {
          continue;
        }
      }

      goto LABEL_20;
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v2 = 0;
LABEL_20:

  return v2;
}

uint64_t ToolbarStorage.placements.getter()
{
  v1 = type metadata accessor for ToolbarStorage.GroupItem(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v31 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ToolbarStorage.Item(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v30 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ToolbarStorage.Entry.Kind(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for ToolbarStorage.Entry(0) - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + 48);
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = v12 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v15 = *(v9 + 72);
    v16 = MEMORY[0x1E69E7CC0];
    do
    {
      outlined init with copy of ToolbarStorage.Entry(v14, v11, type metadata accessor for ToolbarStorage.Entry);
      outlined init with copy of ToolbarStorage.Entry(v11, v7, type metadata accessor for ToolbarStorage.Entry.Kind);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          v19 = v31;
          _s7SwiftUI14ToolbarStorageV9GroupItemVWObTm_0(v7, v31, type metadata accessor for ToolbarStorage.GroupItem);
          outlined init with copy of ToolbarItemPlacement.Role(v19 + 80, v36);
          v20 = type metadata accessor for ToolbarStorage.GroupItem;
        }

        else
        {
          v19 = v30;
          _s7SwiftUI14ToolbarStorageV9GroupItemVWObTm_0(v7, v30, type metadata accessor for ToolbarStorage.Item);
          outlined init with copy of ToolbarItemPlacement.Role(v19 + 112, v36);
          v20 = type metadata accessor for ToolbarStorage.Item;
        }

        outlined destroy of ToolbarStorage.GroupItem.CollapsedContent.Value(v19, v20);
      }

      else if (EnumCaseMultiPayload == 2)
      {
        v21 = v7[3];
        *&v33[16] = v7[2];
        v34 = v21;
        v35 = v7[4];
        v22 = *v7;
        *v33 = v7[1];
        v32 = v22;
        outlined init with copy of ToolbarItemPlacement.Role(&v32 + 8, v36);
        outlined destroy of ToolbarStorage.SpacerItem(&v32);
      }

      else
      {
        if (EnumCaseMultiPayload == 3)
        {
          *v36 = 29;
          memset(&v36[8], 0, 32);
          v18 = 2;
        }

        else
        {
          memset(v36, 0, 40);
          v18 = -1;
        }

        v36[40] = v18;
      }

      v37 = *v36;
      *v38 = *&v36[16];
      *&v38[9] = *&v36[25];
      outlined destroy of ToolbarStorage.GroupItem.CollapsedContent.Value(v11, type metadata accessor for ToolbarStorage.Entry);
      if (v38[24] == 255)
      {
        outlined destroy of ToolbarItemPlacement.Role?(&v37, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, MEMORY[0x1E69E6720]);
      }

      else
      {
        v32 = v37;
        *v33 = *v38;
        *&v33[9] = *&v38[9];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
        }

        v24 = *(v16 + 2);
        v23 = *(v16 + 3);
        if (v24 >= v23 >> 1)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v16);
        }

        *(v16 + 2) = v24 + 1;
        v25 = &v16[48 * v24];
        v26 = v32;
        v27 = *v33;
        *(v25 + 57) = *&v33[9];
        *(v25 + 2) = v26;
        *(v25 + 3) = v27;
      }

      v14 += v15;
      --v13;
    }

    while (v13);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  v28 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7SwiftUI20ToolbarItemPlacementV4RoleO_SayAHGTt0g5Tf4g_n(v16);

  return v28;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7SwiftUI20ToolbarItemPlacementV4RoleO_SayAHGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type ToolbarItemPlacement.Role and conformance ToolbarItemPlacement.Role();
  result = MEMORY[0x18D00D140](v2, &type metadata for ToolbarItemPlacement.Role, v3);
  v8 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      outlined init with copy of ToolbarItemPlacement.Role(v5, v6);
      specialized Set._Variant.insert(_:)(v7, v6);
      outlined destroy of ToolbarItemPlacement.Role(v7);
      v5 += 48;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ToolbarItemPlacement.Role and conformance ToolbarItemPlacement.Role()
{
  result = lazy protocol witness table cache variable for type ToolbarItemPlacement.Role and conformance ToolbarItemPlacement.Role;
  if (!lazy protocol witness table cache variable for type ToolbarItemPlacement.Role and conformance ToolbarItemPlacement.Role)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ToolbarItemPlacement.Role, &type metadata for ToolbarItemPlacement.Role, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarItemPlacement.Role and conformance ToolbarItemPlacement.Role);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolbarItemPlacement.Role and conformance ToolbarItemPlacement.Role;
  if (!lazy protocol witness table cache variable for type ToolbarItemPlacement.Role and conformance ToolbarItemPlacement.Role)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ToolbarItemPlacement.Role, &type metadata for ToolbarItemPlacement.Role, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarItemPlacement.Role and conformance ToolbarItemPlacement.Role);
  }

  return result;
}

uint64_t ToolbarBridge.updateStorage(newStorage:barContext:updateContext:strategy:)(__int128 *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v39 = *MEMORY[0x1E69E7D40] & *v5;
  v37 = a2[1];
  v38 = *a2;
  v35 = a2[3];
  v36 = a2[2];
  v33 = a2[5];
  v34 = a2[4];
  v32 = a2[6];
  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCTf4gn_n7SwiftUI7ToolbarO11BarLocationO_AE0G7StorageVTt0g5(MEMORY[0x1E69E7CC0]);
  v8 = a1[3];
  v56 = a1[2];
  v57 = v8;
  v58 = *(a1 + 8);
  v59 = v7;
  v9 = a1[1];
  v54 = *a1;
  v55 = v9;
  outlined init with copy of ToolbarStorage(a1, &v48);
  ToolbarStorage.removeRequestedDefaultItems()();
  *&v48 = specialized static Toolbar.BarLocation.allCases.getter();

  specialized Array.append<A>(contentsOf:)(v10);
  v11 = v48;
  v44 = *(v48 + 16);
  if (!v44)
  {

    v13 = v5;
    goto LABEL_64;
  }

  v42 = v48 + 32;
  v43 = direct field offset for ToolbarBridge.allowedLocations;
  swift_beginAccess();
  v12 = 0;
  v13 = v5;
  v30 = v11;
  v31 = v5;
LABEL_6:
  if (v12 >= *(v11 + 16))
  {
    __break(1u);
    JUMPOUT(0x18BDF4EE8);
  }

  outlined init with copy of Toolbar.BarLocation(v42 + 40 * v12, v53);
  v14 = *(v13 + v43);
  if (!*(v14 + 16))
  {
    goto LABEL_4;
  }

  Hasher.init(_seed:)();

  Toolbar.BarLocation.hash(into:)(&v48);
  v15 = Hasher._finalize()();
  v16 = -1 << *(v14 + 32);
  v17 = v15 & ~v16;
  if (((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
  {
LABEL_3:

LABEL_4:
    outlined destroy of Toolbar.BarLocation(v53);
    goto LABEL_5;
  }

  v18 = ~v16;
  while (2)
  {
    outlined init with copy of Toolbar.BarLocation(*(v14 + 48) + 40 * v17, v52);
    outlined init with copy of Toolbar.BarLocation(v52, &v48);
    outlined init with copy of Toolbar.BarLocation(v53, &v50[8]);
    switch(*(&v49 + 1))
    {
      case 0:
        outlined destroy of Toolbar.BarLocation(v52);
        if (*&v50[32])
        {
          goto LABEL_54;
        }

        goto LABEL_59;
      case 1:
        outlined destroy of Toolbar.BarLocation(v52);
        if (*&v50[32] == 1)
        {
          goto LABEL_59;
        }

        goto LABEL_54;
      case 2:
        outlined destroy of Toolbar.BarLocation(v52);
        if (*&v50[32] == 2)
        {
          goto LABEL_59;
        }

        goto LABEL_54;
      case 3:
        outlined destroy of Toolbar.BarLocation(v52);
        if (*&v50[32] == 3)
        {
          goto LABEL_59;
        }

        goto LABEL_54;
      case 4:
        outlined destroy of Toolbar.BarLocation(v52);
        if (*&v50[32] == 4)
        {
          goto LABEL_59;
        }

        goto LABEL_54;
      case 5:
        outlined destroy of Toolbar.BarLocation(v52);
        if (*&v50[32] == 5)
        {
          goto LABEL_59;
        }

        goto LABEL_54;
      case 6:
        outlined destroy of Toolbar.BarLocation(v52);
        if (*&v50[32] == 6)
        {
          goto LABEL_59;
        }

        goto LABEL_54;
      case 7:
        outlined destroy of Toolbar.BarLocation(v52);
        if (*&v50[32] == 7)
        {
          goto LABEL_59;
        }

        goto LABEL_54;
      case 8:
        outlined destroy of Toolbar.BarLocation(v52);
        if (*&v50[32] == 8)
        {
          goto LABEL_59;
        }

        goto LABEL_54;
      case 9:
        outlined destroy of Toolbar.BarLocation(v52);
        if (*&v50[32] == 9)
        {
          goto LABEL_59;
        }

        goto LABEL_54;
      case 0xALL:
        outlined destroy of Toolbar.BarLocation(v52);
        if (*&v50[32] == 10)
        {
          goto LABEL_59;
        }

        goto LABEL_54;
      case 0xBLL:
        outlined destroy of Toolbar.BarLocation(v52);
        if (*&v50[32] != 11)
        {
          goto LABEL_54;
        }

LABEL_59:
        outlined destroy of Toolbar.BarLocation(&v48);

        goto LABEL_61;
      case 0xCLL:
        outlined destroy of Toolbar.BarLocation(v52);
        if (*&v50[32] == 12)
        {
          goto LABEL_60;
        }

        goto LABEL_54;
      case 0xDLL:
        outlined destroy of Toolbar.BarLocation(v52);
        if (*&v50[32] == 13)
        {
          goto LABEL_60;
        }

        goto LABEL_54;
      case 0xELL:
        outlined destroy of Toolbar.BarLocation(v52);
        if (*&v50[32] == 14)
        {
          goto LABEL_60;
        }

        goto LABEL_54;
      case 0xFLL:
        outlined destroy of Toolbar.BarLocation(v52);
        if (*&v50[32] == 15)
        {
          goto LABEL_60;
        }

        goto LABEL_54;
      case 0x10:
        outlined destroy of Toolbar.BarLocation(v52);
        if (*&v50[32] == 16)
        {
          goto LABEL_60;
        }

        goto LABEL_54;
      case 0x11:
        outlined destroy of Toolbar.BarLocation(v52);
        if (*&v50[32] == 17)
        {
          goto LABEL_60;
        }

        goto LABEL_54;
      case 0x12:
        outlined destroy of Toolbar.BarLocation(v52);
        if (*&v50[32] == 18)
        {
          goto LABEL_60;
        }

        goto LABEL_54;
      case 0x13:
        outlined destroy of Toolbar.BarLocation(v52);
        if (*&v50[32] != 19)
        {
          goto LABEL_54;
        }

        goto LABEL_60;
      case 0x14:
        outlined destroy of Toolbar.BarLocation(v52);
        if (*&v50[32] == 20)
        {
          goto LABEL_60;
        }

        goto LABEL_54;
      default:
        outlined init with copy of Toolbar.BarLocation(&v48, v47);
        if (*&v50[32] < 0x15uLL)
        {
          outlined destroy of Toolbar.BarLocation(v52);
          outlined destroy of AnyHashable(v47);
LABEL_54:
          outlined destroy of Toolbar.UpdateContext?(&v48, &lazy cache variable for type metadata for (Toolbar.BarLocation, Toolbar.BarLocation), &type metadata for Toolbar.BarLocation, &type metadata for Toolbar.BarLocation, type metadata accessor for (Badge, Spacer));
          goto LABEL_55;
        }

        v45[0] = *&v50[8];
        v45[1] = *&v50[24];
        v46 = v51;
        v19 = MEMORY[0x18D00E7E0](v47, v45);
        outlined destroy of AnyHashable(v45);
        outlined destroy of Toolbar.BarLocation(v52);
        outlined destroy of AnyHashable(v47);
        if ((v19 & 1) == 0)
        {
          outlined destroy of Toolbar.BarLocation(&v48);
LABEL_55:
          v17 = (v17 + 1) & v18;
          if (((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
          {
            goto LABEL_3;
          }

          continue;
        }

LABEL_60:

        outlined destroy of Toolbar.BarLocation(&v48);
LABEL_61:
        v60[2] = v56;
        v60[3] = v57;
        v61 = v58;
        v60[0] = v54;
        v60[1] = v55;
        LOBYTE(v48) = v38;
        BYTE1(v48) = v37;
        BYTE2(v48) = v36;
        BYTE3(v48) = v35;
        BYTE4(v48) = v34;
        BYTE5(v48) = v33;
        BYTE6(v48) = v32;
        v20 = *(v39 + 80);
        v21 = *(v39 + 88);
        v22 = specialized ToolbarBridge.filterAndSortMatchingItems(in:newStorage:context:)(v53, v60, &v48);
        v23 = (*(v21 + 88))(v53, v22, v20, v21);
        v24 = ToolbarBridge.makeStorage(in:from:strategy:)(v53, v23, a4);
        v26 = v25;
        v41 = v27;

        (*(v21 + 120))(v52, v53, v22, v20, v21);

        outlined init with copy of Toolbar.BarLocation(v53, &v48);
        v47[0] = v24;
        v47[1] = v26;
        v13 = v31;
        v47[2] = v41;
        type metadata accessor for [Toolbar.BarLocation : Toolbar.LocationStorage](0, &lazy cache variable for type metadata for [Toolbar.BarLocation : Toolbar.LocationStorage], MEMORY[0x1E69E5E28]);
        Dictionary.subscript.setter();
        outlined destroy of Toolbar.BarLocation(v53);
        v11 = v30;
LABEL_5:
        if (++v12 != v44)
        {
          goto LABEL_6;
        }

        v7 = v59;
LABEL_64:
        *v50 = v56;
        *&v50[16] = v57;
        *&v50[32] = v58;
        v48 = v54;
        v49 = v55;
        outlined destroy of ToolbarStorage(&v48);
        v28 = direct field offset for ToolbarBridge.storageByLocation;
        swift_beginAccess();
        *(v13 + v28) = v7;
    }
  }
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCTf4gn_n7SwiftUI7ToolbarO11BarLocationO_AE0G7StorageVTt0g5(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for [Toolbar.BarLocation : Toolbar.LocationStorage](0, &lazy cache variable for type metadata for _DictionaryStorage<Toolbar.BarLocation, Toolbar.LocationStorage>, MEMORY[0x1E69E6EC8]);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of Toolbar.UpdateContext?(v4, v15, &lazy cache variable for type metadata for (Toolbar.BarLocation, Toolbar.LocationStorage), &type metadata for Toolbar.BarLocation, &type metadata for Toolbar.LocationStorage, type metadata accessor for (Badge, Spacer));
      result = specialized __RawDictionaryStorage.find<A>(_:)(v15);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v15[0];
      v9 = v15[1];
      *(v7 + 32) = v16;
      *v7 = v8;
      *(v7 + 16) = v9;
      v10 = v3[7] + 24 * result;
      v11 = v18;
      *v10 = v17;
      *(v10 + 16) = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 64;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

Swift::Void __swiftcall ToolbarStorage.removeRequestedDefaultItems()()
{
  v1 = 0;
  v2 = *(v0 + 64);
  v5 = *(v2 + 56);
  v3 = v2 + 56;
  v4 = v5;
  v6 = 1 << *(v3 - 24);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v4;
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
LABEL_4:
    v8 &= v8 - 1;
  }

  while (1)
  {
    v10 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v10 >= v9)
    {
      return;
    }

    v8 = *(v3 + 8 * v10);
    ++v1;
    if (v8)
    {
      v1 = v10;
      goto LABEL_4;
    }
  }

  __break(1u);
}

uint64_t specialized ToolbarBridge.filterAndSortMatchingItems(in:newStorage:context:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = type metadata accessor for ToolbarStorage.GroupItem(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ToolbarStorage.Item(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v46 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ToolbarStorage.Entry.Kind(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for ToolbarStorage.Entry(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v48 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v45 - v16;
  v18 = *a3;
  v58 = a3[1];
  v57 = a3[2];
  v56 = a3[3];
  v55 = a3[4];
  v54 = a3[5];
  v53 = a3[6];
  v71 = MEMORY[0x1E69E7CC0];
  v70 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCTf4gn_n7SwiftUI14ToolbarStorageV5EntryV2IDV_SiTt0g5(MEMORY[0x1E69E7CC0]);
  result = ToolbarStorage.toolbarEntries.getter();
  v20 = result;
  v60 = *(result + 16);
  if (!v60)
  {
LABEL_61:

    specialized MutableCollection<>.sort(by:)(&v71, v70);

    return v71;
  }

  v21 = 0;
  v59 = result + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v22 = MEMORY[0x1E69E7CD0];
  v51 = v13;
  v50 = v18;
  v49 = result;
  while (v21 < *(v20 + 16))
  {
    outlined init with copy of ToolbarStorage.GroupItem.GroupSubItem(v59 + *(v13 + 72) * v21, v17, type metadata accessor for ToolbarStorage.Entry);
    outlined init with copy of ToolbarStorage.GroupItem.GroupSubItem(v17, v11, type metadata accessor for ToolbarStorage.Entry.Kind);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v24 = v47;
        outlined init with take of ToolbarStorage.Item(v11, v47, type metadata accessor for ToolbarStorage.GroupItem);
        outlined init with copy of ToolbarItemPlacement.Role(v24 + 80, v67);
        v25 = type metadata accessor for ToolbarStorage.GroupItem;
      }

      else
      {
        v24 = v46;
        outlined init with take of ToolbarStorage.Item(v11, v46, type metadata accessor for ToolbarStorage.Item);
        outlined init with copy of ToolbarItemPlacement.Role(v24 + 112, v67);
        v25 = type metadata accessor for ToolbarStorage.Item;
      }

      outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v24, v25);
LABEL_16:
      if (v67[40] == 255)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v26 = v11[3];
      v64 = v11[2];
      v27 = v11[4];
      v65 = v26;
      v66 = v27;
      v28 = *v11;
      v63 = v11[1];
      v62 = v28;
      outlined init with copy of ToolbarItemPlacement.Role(&v62 + 8, v67);
      outlined destroy of ToolbarStorage.SpacerItem(&v62);
      goto LABEL_16;
    }

    if (EnumCaseMultiPayload != 3)
    {
      memset(v67, 0, 40);
      v67[40] = -1;
LABEL_4:
      outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v17, type metadata accessor for ToolbarStorage.Entry);
      result = outlined destroy of Toolbar.UpdateContext?(v67, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, MEMORY[0x1E69E6720], type metadata accessor for Toolbar.UpdateContext?);
      goto LABEL_5;
    }

    *v67 = 29;
    memset(&v67[8], 0, 32);
    v67[40] = 2;
LABEL_17:
    v68 = *v67;
    *v69 = *&v67[16];
    *&v69[9] = *&v67[25];
    LOBYTE(v62) = v18;
    BYTE1(v62) = v58;
    BYTE2(v62) = v57;
    BYTE3(v62) = v56;
    BYTE4(v62) = v55;
    BYTE5(v62) = v54;
    BYTE6(v62) = v53;
    v29 = Toolbar.BarLocation.priority(for:context:)(&v68, &v62);
    if ((v30 & 1) == 0)
    {
      v52 = v29;
      v31 = v9;
      v32 = a1;
      if (*(v22 + 16))
      {
        Hasher.init(_seed:)();
        ToolbarItemPlacement.Role.hash(into:)(&v62);
        v33 = Hasher._finalize()();
        v34 = -1 << *(v22 + 32);
        v35 = v33 & ~v34;
        if ((*(v22 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35))
        {
          v36 = ~v34;
          while (1)
          {
            outlined init with copy of ToolbarItemPlacement.Role(*(v22 + 48) + 48 * v35, &v62);
            v37 = specialized static ToolbarItemPlacement.Role.== infix(_:_:)(&v62, &v68);
            outlined destroy of ToolbarItemPlacement.Role(&v62);
            if (v37)
            {
              break;
            }

            v35 = (v35 + 1) & v36;
            if (((*(v22 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
            {
              goto LABEL_24;
            }
          }

          outlined destroy of ToolbarItemPlacement.Role(&v68);
          result = outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v17, type metadata accessor for ToolbarStorage.Entry);
          a1 = v32;
          v9 = v31;
          v13 = v51;
          LOBYTE(v18) = v50;
          goto LABEL_33;
        }
      }

LABEL_24:
      outlined init with copy of ToolbarItemPlacement.Role(&v68, &v62);
      a1 = v32;
      v9 = v31;
      v13 = v51;
      LOBYTE(v18) = v50;
      if (BYTE8(v64))
      {
        if (BYTE8(v64) == 1)
        {
          outlined destroy of ToolbarItemPlacement.Role(&v62);
LABEL_32:
          ToolbarStorage.Entry.id.getter(&v62);
          *v67 = v52;
          v67[8] = 0;
          type metadata accessor for _DictionaryStorage<ToolbarStorage.Entry.ID, Int>(0, &lazy cache variable for type metadata for [ToolbarStorage.Entry.ID : Int], MEMORY[0x1E69E5E28]);
          Dictionary.subscript.setter();
          outlined init with copy of ToolbarStorage.GroupItem.GroupSubItem(v17, v48, type metadata accessor for ToolbarStorage.Entry);
          _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_1(0, &lazy cache variable for type metadata for [ToolbarStorage.Entry], type metadata accessor for ToolbarStorage.Entry, MEMORY[0x1E69E62F8]);
          Array.append(_:)();
          outlined destroy of ToolbarItemPlacement.Role(&v68);
          result = outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v17, type metadata accessor for ToolbarStorage.Entry);
LABEL_33:
          v20 = v49;
          goto LABEL_5;
        }

        if (*(&v63 + 1) | v64 | v62 | v63 | *(&v62 + 1))
        {
          v38 = *(&v63 + 1) | v64 | v63 | *(&v62 + 1);
          if ((v62 - 1) > 7 || v38)
          {
            if ((v62 - 9) <= 1 && !v38)
            {
              goto LABEL_32;
            }

            if (v62 != 11 || v38)
            {
              v40 = v62 & 0xFFFFFFFFFFFFFFFELL;
              v41 = v62 & 0xFFFFFFFFFFFFFFFCLL;
              v42 = (v62 & 0xFFFFFFFFFFFFFFFELL) == 0x14 || v41 == 16;
              v43 = v42 || v41 == 12;
              if (v43 && !v38)
              {
                goto LABEL_32;
              }

              v44 = v40 == 22 || v62 == 24;
              if ((!v44 || v38) && ((v62 - 25) <= 3 && !v38 || (v62 != 29 || v38) && v40 == 30 && !v38))
              {
                goto LABEL_32;
              }
            }
          }
        }
      }

      LOBYTE(v62) = v50;
      BYTE1(v62) = v58;
      BYTE2(v62) = v57;
      BYTE3(v62) = v56;
      BYTE4(v62) = v55;
      BYTE5(v62) = v54;
      BYTE6(v62) = v53;
      if (Toolbar.BarLocation.shouldLimit(_:in:)(v17, &v62))
      {
        outlined init with copy of ToolbarItemPlacement.Role(&v68, v67);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v61 = v22;
        specialized _NativeSet.update(with:isUnique:)(v67, isUniquelyReferenced_nonNull_native, &v62);
        outlined destroy of Toolbar.UpdateContext?(&v62, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, MEMORY[0x1E69E6720], type metadata accessor for Toolbar.UpdateContext?);
        v22 = v61;
      }

      goto LABEL_32;
    }

    outlined destroy of ToolbarItemPlacement.Role(&v68);
    result = outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v17, type metadata accessor for ToolbarStorage.Entry);
LABEL_5:
    if (++v21 == v60)
    {
      goto LABEL_61;
    }
  }

  __break(1u);
  return result;
}

uint64_t ToolbarStorage.toolbarEntries.getter()
{
  v1 = MEMORY[0x1E69E6720];
  _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for ToolbarStorage.GroupItem?, type metadata accessor for ToolbarStorage.GroupItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v36 = &v35 - v3;
  v39 = type metadata accessor for ToolbarStorage.Entry.Kind(0);
  MEMORY[0x1EEE9AC00](v39);
  v35 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v35 - v6;
  _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item, v1);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v35 - v9;
  v11 = type metadata accessor for ToolbarStorage.Entry(0) - 8;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v35 - v16;
  v18 = *(v0 + 48);
  v19 = *(v18 + 16);
  if (v19)
  {
    v37 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v20 = v18 + v37;
    v21 = *(v15 + 72);
    v22 = MEMORY[0x1E69E7CC0];
    v38 = v13;
    while (1)
    {
      outlined init with copy of ToolbarStorage.Entry(v20, v17, type metadata accessor for ToolbarStorage.Entry);
      outlined init with copy of ToolbarStorage.Entry(v17, v7, type metadata accessor for ToolbarStorage.Entry.Kind);
      if (!swift_getEnumCaseMultiPayload())
      {
        break;
      }

      outlined destroy of ToolbarStorage.GroupItem.CollapsedContent.Value(v7, type metadata accessor for ToolbarStorage.Entry.Kind);
      v23 = type metadata accessor for ToolbarStorage.Item(0);
      (*(*(v23 - 8) + 56))(v10, 1, 1, v23);
      _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_1(v10, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item);
      v24 = v36;
      ToolbarStorage.Entry.groupItem.getter(v36);
      v25 = type metadata accessor for ToolbarStorage.GroupItem(0);
      v26 = (*(*(v25 - 8) + 48))(v24, 1, v25);
      _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_1(v24, &lazy cache variable for type metadata for ToolbarStorage.GroupItem?, type metadata accessor for ToolbarStorage.GroupItem);
      if (v26 != 1)
      {
        goto LABEL_10;
      }

      v27 = v35;
      outlined init with copy of ToolbarStorage.Entry(v17, v35, type metadata accessor for ToolbarStorage.Entry.Kind);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      outlined destroy of ToolbarStorage.GroupItem.CollapsedContent.Value(v27, type metadata accessor for ToolbarStorage.Entry.Kind);
      if (EnumCaseMultiPayload == 2)
      {
        goto LABEL_10;
      }

      outlined destroy of ToolbarStorage.GroupItem.CollapsedContent.Value(v17, type metadata accessor for ToolbarStorage.Entry);
LABEL_4:
      v20 += v21;
      if (!--v19)
      {
        return v22;
      }
    }

    _s7SwiftUI14ToolbarStorageV9GroupItemVWObTm_0(v7, v10, type metadata accessor for ToolbarStorage.Item);
    v29 = type metadata accessor for ToolbarStorage.Item(0);
    (*(*(v29 - 8) + 56))(v10, 0, 1, v29);
    _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_1(v10, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item);
LABEL_10:
    _s7SwiftUI14ToolbarStorageV9GroupItemVWObTm_0(v17, v13, type metadata accessor for ToolbarStorage.Entry);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 16) + 1, 1);
      v22 = v40;
    }

    v32 = *(v22 + 16);
    v31 = *(v22 + 24);
    if (v32 >= v31 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1);
      v22 = v40;
    }

    *(v22 + 16) = v32 + 1;
    v33 = v22 + v37 + v32 * v21;
    v13 = v38;
    _s7SwiftUI14ToolbarStorageV9GroupItemVWObTm_0(v38, v33, type metadata accessor for ToolbarStorage.Entry);
    goto LABEL_4;
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCTf4gn_n7SwiftUI14ToolbarStorageV5EntryV2IDV_SiTt0g5(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<ToolbarStorage.Entry.ID, Int>(0, &lazy cache variable for type metadata for _DictionaryStorage<ToolbarStorage.Entry.ID, Int>, MEMORY[0x1E69E6EC8]);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    v5 = MEMORY[0x1E69E6530];
    while (1)
    {
      outlined init with copy of Toolbar.UpdateContext?(v4, v16, &lazy cache variable for type metadata for (ToolbarStorage.Entry.ID, Int), &type metadata for ToolbarStorage.Entry.ID, v5, type metadata accessor for (Badge, Spacer));
      result = specialized __RawDictionaryStorage.find<A>(_:)(v16);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v8 = v3[6] + 88 * result;
      v9 = v16[1];
      *v8 = v16[0];
      *(v8 + 16) = v9;
      v10 = v16[2];
      v11 = v16[3];
      v12 = v16[4];
      *(v8 + 80) = v17;
      *(v8 + 48) = v11;
      *(v8 + 64) = v12;
      *(v8 + 32) = v10;
      *(v3[7] + 8 * result) = v18;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 96;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t specialized MutableCollection<>.sort(by:)(uint64_t *a1, uint64_t a2)
{
  v4 = *(type metadata accessor for ToolbarStorage.Entry(0) - 8);
  v5 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
  }

  v6 = v5[2];
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v6;

  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, a2);

  *a1 = v5;
  return swift_bridgeObjectRelease_n();
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<ToolbarStorage.Entry>, type metadata accessor for ToolbarStorage.Entry, type metadata accessor for ToolbarStorage.Entry);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<CommandsList.Item>, type metadata accessor for CommandsList.Item, type metadata accessor for CommandsList.Item);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<PlatformItemList.Item>, type metadata accessor for PlatformItemList.Item, type metadata accessor for PlatformItemList.Item);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<MenuVisitor.MenuStackGroup>, type metadata accessor for MenuVisitor.MenuStackGroup, type metadata accessor for MenuVisitor.MenuStackGroup);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<WeakBox<ViewResponder>>, type metadata accessor for WeakBox<ViewResponder>, type metadata accessor for WeakBox<ViewResponder>);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<DisplayList.HostedViewState.Key>, type metadata accessor for DisplayList.HostedViewState.Key, type metadata accessor for DisplayList.HostedViewState.Key);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<TableCellFormula>, type metadata accessor for TableCellFormula, type metadata accessor for TableCellFormula);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<UICellAccessory>, MEMORY[0x1E69DBF68], MEMORY[0x1E69DBF68]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<IntelligenceElement>, MEMORY[0x1E69DBC20], MEMORY[0x1E69DBC20]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<Range<AttributedString.Index>>, type metadata accessor for Range<AttributedString.Index>, type metadata accessor for Range<AttributedString.Index>);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<UTType>, MEMORY[0x1E69E8450], MEMORY[0x1E69E8450]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<(source: IndexPath, destination: IndexPath)>, type metadata accessor for (source: IndexPath, destination: IndexPath), type metadata accessor for (source: IndexPath, destination: IndexPath));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<IndexPath>, MEMORY[0x1E6969C28], MEMORY[0x1E6969C28]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<PreviewModifier>, &lazy cache variable for type metadata for PreviewModifier, &protocol descriptor for PreviewModifier);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<HashableCommandGroupPlacementWrapper>, type metadata accessor for HashableCommandGroupPlacementWrapper, type metadata accessor for HashableCommandGroupPlacementWrapper);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<MainMenuItem>, type metadata accessor for MainMenuItem, type metadata accessor for MainMenuItem);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<MainMenuItem.Template>, type metadata accessor for MainMenuItem.Template, type metadata accessor for MainMenuItem.Template);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<CommandGroupPlacement>, type metadata accessor for CommandGroupPlacement, type metadata accessor for CommandGroupPlacement);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<UIKitAnimationCooperating>, &lazy cache variable for type metadata for UIKitAnimationCooperating, &protocol descriptor for UIKitAnimationCooperating);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<ToolbarStorage.Item>, type metadata accessor for ToolbarStorage.Item, type metadata accessor for ToolbarStorage.Item);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6968848]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<Selectable>, &lazy cache variable for type metadata for Selectable, &protocol descriptor for Selectable);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<UISlider.TrackConfiguration.Tick>, MEMORY[0x1E69DC5B0], MEMORY[0x1E69DC5B0]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<IntelligenceDataSourceItem>, MEMORY[0x1E69DBC58], MEMORY[0x1E69DBC58]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<(IntelligenceDataSourceItem, IntelligenceAppIntentsPayload)>, type metadata accessor for (IntelligenceDataSourceItem, IntelligenceAppIntentsPayload), type metadata accessor for (IntelligenceDataSourceItem, IntelligenceAppIntentsPayload));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<DocumentCreationStrategy>, &lazy cache variable for type metadata for DocumentCreationStrategy, &protocol descriptor for DocumentCreationStrategy);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<ToolbarStorage.GroupItem.GroupSubItem>, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<TableColumnList>, &lazy cache variable for type metadata for TableColumnList, &protocol descriptor for TableColumnList);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<UIKitProxyFocusItem>, &lazy cache variable for type metadata for UIKitProxyFocusItem, &protocol descriptor for UIKitProxyFocusItem);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<(_:)>, type metadata accessor for (_:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<UpdateCoalescingCollectionView.UpdateInvalidation>, type metadata accessor for UpdateCoalescingCollectionView.UpdateInvalidation, type metadata accessor for UpdateCoalescingCollectionView.UpdateInvalidation);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<URL>, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB0]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<WidgetAuxiliaryViewMetadata.Text.Metadata>, type metadata accessor for WidgetAuxiliaryViewMetadata.Text.Metadata, type metadata accessor for WidgetAuxiliaryViewMetadata.Text.Metadata);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<(index: Int, element: TableCellFormula, id: TableColumnCustomizationID)>, &lazy cache variable for type metadata for (index: Int, element: TableCellFormula, id: TableColumnCustomizationID), type metadata accessor for TableCellFormula);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<KeyPress.Handler>, type metadata accessor for KeyPress.Handler, type metadata accessor for KeyPress.Handler);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<WeakBox<DocumentViewController>>, type metadata accessor for WeakBox<DocumentViewController>, type metadata accessor for WeakBox<DocumentViewController>);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<ScrapedContentTree<ArchivableScrapedItem>.Node>, type metadata accessor for ScrapedContentTree<ArchivableScrapedItem>.Node, type metadata accessor for ScrapedContentTree<ArchivableScrapedItem>.Node);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<ScrollableCollection>, &lazy cache variable for type metadata for ScrollableCollection, MEMORY[0x1E697FA60]);
}

void *specialized _ArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = _minimumMergeRunLength(_:)(v4);
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for ToolbarStorage.Entry(0);
        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v8 + 16) = v7;
      }

      v9 = *(type metadata accessor for ToolbarStorage.Entry(0) - 8);
      v10[0] = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v10[1] = v7;

      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v10, v11, a1, v6, a2);

      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = _minimumMergeRunLength(_:)(v4);
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID)(0, &lazy cache variable for type metadata for (index: Int, element: TableCellFormula, id: TableColumnCustomizationID), type metadata accessor for TableCellFormula);
        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v8 + 16) = v7;
      }

      type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID)(0, &lazy cache variable for type metadata for (index: Int, element: TableCellFormula, id: TableColumnCustomizationID), type metadata accessor for TableCellFormula);
      v10[0] = v8 + ((*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80));
      v10[1] = v7;

      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v10, v11, a1, v6, a2, &lazy cache variable for type metadata for (index: Int, element: TableCellFormula, id: TableColumnCustomizationID), type metadata accessor for TableCellFormula, specialized closure #2 in static AnyTableColumnCustomization.arrangedColumns<A, B>(_:customization:includeHidden:defaultVisibility:id:), closure #1 in closure #2 in static AnyTableColumnCustomization.arrangedColumns<A, B>(_:customization:includeHidden:defaultVisibility:id:)specialized partial apply, closure #1 in closure #2 in static AnyTableColumnCustomization.arrangedColumns<A, B>(_:customization:includeHidden:defaultVisibility:id:)specialized partial apply, closure #1 in closure #2 in static AnyTableColumnCustomization.arrangedColumns<A, B>(_:customization:includeHidden:defaultVisibility:id:)specialized partial apply, partial apply for specialized closure #1 in closure #2 in static AnyTableColumnCustomization.arrangedColumns<A, B>(_:customization:includeHidden:defaultVisibility:id:));

      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v4, 1, a1, a2, &lazy cache variable for type metadata for (index: Int, element: TableCellFormula, id: TableColumnCustomizationID), type metadata accessor for TableCellFormula, closure #1 in closure #2 in static AnyTableColumnCustomization.arrangedColumns<A, B>(_:customization:includeHidden:defaultVisibility:id:)specialized partial apply);
  }

  return swift_bridgeObjectRelease_n();
}

{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = _minimumMergeRunLength(_:)(v4);
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID)(0, &lazy cache variable for type metadata for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID), type metadata accessor for TableColumnCollection.Entry);
        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v8 + 16) = v7;
      }

      type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID)(0, &lazy cache variable for type metadata for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID), type metadata accessor for TableColumnCollection.Entry);
      v10[0] = v8 + ((*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80));
      v10[1] = v7;

      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v10, v11, a1, v6, a2, &lazy cache variable for type metadata for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID), type metadata accessor for TableColumnCollection.Entry, specialized closure #2 in static AnyTableColumnCustomization.arrangedColumns<A, B>(_:customization:includeHidden:defaultVisibility:id:), closure #1 in closure #2 in static AnyTableColumnCustomization.arrangedColumns<A, B>(_:customization:includeHidden:defaultVisibility:id:)specialized partial apply, closure #1 in closure #2 in static AnyTableColumnCustomization.arrangedColumns<A, B>(_:customization:includeHidden:defaultVisibility:id:)specialized partial apply, closure #1 in closure #2 in static AnyTableColumnCustomization.arrangedColumns<A, B>(_:customization:includeHidden:defaultVisibility:id:)specialized partial apply, partial apply for specialized closure #1 in closure #2 in static AnyTableColumnCustomization.arrangedColumns<A, B>(_:customization:includeHidden:defaultVisibility:id:));

      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v4, 1, a1, a2, &lazy cache variable for type metadata for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID), type metadata accessor for TableColumnCollection.Entry, closure #1 in closure #2 in static AnyTableColumnCustomization.arrangedColumns<A, B>(_:customization:includeHidden:defaultVisibility:id:)specialized partial apply);
  }

  return swift_bridgeObjectRelease_n();
}

{
  v4 = a1[1];
  result = _minimumMergeRunLength(_:)(v4);
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v7 = result;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v8 + 16) = v4 / 2;
      }

      v10[0] = v8 + 32;
      v10[1] = v4 / 2;
      v9 = v8;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v10, v11, a1, v7, a2, v6);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v4, 1, a1, a2);
  }

  return result;
}

{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = _minimumMergeRunLength(_:)(v4);
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for (index: Int, element: TabCustomizationID, id: TabCustomizationID)();
        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;

      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v9, v10, a1, v6, a2);

      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t specialized ToolbarStrategy.makeEntries(in:from:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ToolbarStorage.Entry.Kind(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ToolbarStorage.Entry(0) - 8;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - v11;
  v13 = *(a2 + 16);
  if (!v13)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v14 = *(v10 + 72);
  v21 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v15 = a2 + v21;
  v16 = MEMORY[0x1E69E7CC0];
  do
  {
    outlined init with copy of ToolbarStorage.Entry.Kind(v15, v12, type metadata accessor for ToolbarStorage.Entry);
    outlined init with copy of ToolbarStorage.Entry.Kind(v12, v5, type metadata accessor for ToolbarStorage.Entry.Kind);
    if (swift_getEnumCaseMultiPayload() > 2)
    {
      outlined destroy of ToolbarStorage.NavigationProperties(v12, type metadata accessor for ToolbarStorage.Entry);
    }

    else
    {
      outlined destroy of ToolbarStorage.NavigationProperties(v5, type metadata accessor for ToolbarStorage.Entry.Kind);
      outlined init with take of ToolbarStorage.NavigationProperties(v12, v8, type metadata accessor for ToolbarStorage.Entry);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 16) + 1, 1);
        v16 = v22;
      }

      v19 = *(v16 + 16);
      v18 = *(v16 + 24);
      if (v19 >= v18 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
        v16 = v22;
      }

      *(v16 + 16) = v19 + 1;
      outlined init with take of ToolbarStorage.NavigationProperties(v8, v16 + v21 + v19 * v14, type metadata accessor for ToolbarStorage.Entry);
    }

    v15 += v14;
    --v13;
  }

  while (v13);
  return v16;
}

uint64_t ToolbarBridge.makeStorage(in:from:strategy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v194 = a3;
  v202 = a2;
  v195 = *MEMORY[0x1E69E7D40] & *v3;
  v201 = type metadata accessor for ToolbarStorage.Entry(0);
  v206 = *(v201 - 8);
  MEMORY[0x1EEE9AC00](v201);
  v187 = &v176 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v190 = &v176 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v205 = &v176 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v196 = &v176 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v176 - v13;
  v15 = direct field offset for ToolbarBridge.storageByLocation;
  swift_beginAccess();
  v16 = *(v3 + v15);
  if (*(v16 + 16) && (v17 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v18 & 1) != 0))
  {
    v19 = (*(v16 + 56) + 24 * v17);
    v20 = *v19;
    v21 = v19[1];
    v22 = v19[2];

    v186 = v22;
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
    v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7SwiftUI14ToolbarStorageV5EntryVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v186 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7SwiftUI7ToolbarO10VendedItemOTt0g5Tf4g_n(v20);
  }

  v199 = a1;
  swift_endAccess();
  v23 = *(v20 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  if (v23)
  {
    v25 = 0;
    v26 = (v20 + 40);
    while (v25 < *(v20 + 16))
    {
      if (*(v21 + 16))
      {
        v28 = *(v26 - 1);
        v27 = *v26;

        v29 = specialized __RawDictionaryStorage.find<A>(_:)(v28, v27);
        if (v30)
        {
          outlined init with copy of ToolbarStorage.GroupItem.GroupSubItem(*(v21 + 56) + *(v206 + 72) * v29, v14, type metadata accessor for ToolbarStorage.Entry);
          ToolbarStorage.Entry.id.getter(&v213);

          outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v14, type metadata accessor for ToolbarStorage.Entry);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 2) + 1, 1, v24);
          }

          v32 = *(v24 + 2);
          v31 = *(v24 + 3);
          if (v32 >= v31 >> 1)
          {
            v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v24);
          }

          *(v24 + 2) = v32 + 1;
          v33 = &v24[88 * v32];
          v34 = *v214;
          *(v33 + 2) = v213;
          *(v33 + 3) = v34;
          v35 = *&v214[16];
          v36 = v215;
          v37 = v216;
          v33[112] = v217;
          *(v33 + 5) = v36;
          *(v33 + 6) = v37;
          *(v33 + 4) = v35;
        }

        else
        {
        }
      }

      ++v25;
      v26 += 2;
      if (v23 == v25)
      {
        goto LABEL_17;
      }
    }

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
LABEL_137:
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
    goto LABEL_144;
  }

LABEL_17:
  *&v213 = v202;
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_1(0, &lazy cache variable for type metadata for [ToolbarStorage.Entry], type metadata accessor for ToolbarStorage.Entry, MEMORY[0x1E69E62F8]);
  v39 = v38;
  v40 = lazy protocol witness table accessor for type [ToolbarStorage.Entry] and conformance [A]();
  v211 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(specialized implicit closure #2 in ToolbarBridge.makeStorage(in:from:strategy:), 0, v39, &type metadata for ToolbarStorage.Entry.ID, MEMORY[0x1E69E73E0], v40, MEMORY[0x1E69E7410], v41);
  v212 = v24;
  v42 = MEMORY[0x1E69E7CC0];
  *&v213 = MEMORY[0x1E69E7CC0];
  type metadata accessor for CollectionChanges<Int, Int>();
  type metadata accessor for Toolbar.UpdateContext?(0, &lazy cache variable for type metadata for [ToolbarStorage.Entry.ID], &type metadata for ToolbarStorage.Entry.ID, MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [ToolbarStorage.Entry.ID] and conformance [A]();
  lazy protocol witness table accessor for type ToolbarStorage.Entry.ID and conformance ToolbarStorage.Entry.ID();
  v43 = v42;
  CollectionChanges.formChanges<A, B>(from:to:)();

  v44 = v213;
  v213 = 0uLL;
  *v214 = 0;
  *&v214[8] = xmmword_18CD90770;
  v45 = v199;
  v46 = specialized static Toolbar.BarLocation.== infix(_:_:)(v199, &v213);
  outlined destroy of Toolbar.BarLocation(&v213);
  v210 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7SwiftUI14ToolbarStorageV5EntryVTt0g5Tf4g_n(v43);
  v203 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7SwiftUI7ToolbarO10VendedItemOTt0g5Tf4g_n(v43);
  v47 = *(v44 + 16);

  if (!v47)
  {
LABEL_121:

    swift_bridgeObjectRelease_n();
    return v43;
  }

  v48 = 0;
  v49 = 0;
  if (v46)
  {
    v50 = 0;
  }

  else
  {
    v50 = 2;
  }

  v51 = v44 + 64;
  v43 = MEMORY[0x1E69E7CC0];
  v200 = xmmword_18CD7DD20;
  v185 = v20;
  v179 = v21;
  v189 = v44;
  v178 = v44 + 64;
LABEL_22:
  v52 = 0;
  v53 = v47 - v48;
  if (v47 >= v48)
  {
    v54 = v47 - v48;
  }

  else
  {
    v54 = 0;
  }

  v55 = (v51 + 40 * v48);
  v56 = v196;
  while (1)
  {
    if (!(v54 + v52))
    {
      goto LABEL_123;
    }

    if (v49 - 0x7FFFFFFFFFFFFFFFLL == v52)
    {
      goto LABEL_124;
    }

    if (*v55)
    {
      v57 = *(v55 - 4);
      v58 = *(v55 - 3);
      if (*v55 != 1)
      {
        v188 = v49;
        v177 = v48;
        v207 = v43;
        if (v58 != v57)
        {
          if (v58 < v57)
          {
            goto LABEL_145;
          }

          v110 = 0;
          v112 = *(v55 - 2);
          v111 = *(v55 - 1);
          v113 = v111 - 1;
          if (v112 <= v111)
          {
            v114 = v111;
          }

          else
          {
            v114 = v112;
          }

          v204 = v114;
          if (v112 == v111)
          {
            v113 = 0;
          }

          v176 = v113;
          v193 = v20 + 16 * v57;
          v192 = 16 * v112;
          v209 = -v112;
          v198 = v57;
          v115 = v57;
          v208 = v112;
          v197 = v58;
          v191 = v111;
          while (2)
          {
            if (v58 == v115)
            {
              goto LABEL_132;
            }

            if (v111 == v112)
            {
              break;
            }

            if (v111 < v208)
            {
              goto LABEL_133;
            }

            if (v204 == v112)
            {
              goto LABEL_134;
            }

            v213 = 0uLL;
            *v214 = 0;
            *&v214[8] = v200;
            v117 = specialized static Toolbar.BarLocation.== infix(_:_:)(v45, &v213);
            outlined destroy of Toolbar.BarLocation(&v213);
            if ((v117 & 1) != 0 && v208 != v111 && v188 - *(v189 + 16) + 1 == v52 && v176 == v112)
            {
              v50 = 1;
            }

            if (v198 < 0)
            {
              goto LABEL_135;
            }

            if (v115 >= *(v185 + 16))
            {
              goto LABEL_136;
            }

            v118 = *(v193 + v110 + 32);
            v119 = *(v193 + v110 + 40);

            v120 = v190;
            v121 = v201;
            Array.subscript.getter();
            *(v120 + *(v121 + 20)) = v50;
            v122 = v186;
            if (*(v186 + 16))
            {
              v123 = specialized __RawDictionaryStorage.find<A>(_:)(v118, v119);
              v124 = v118;
              if (v125)
              {
                v182 = v110;
                v126 = *(v122 + 56) + 16 * v123;
                v127 = *v126;
                v128 = *(v126 + 8);
                v129 = v195;
                v130 = *(v195 + 88);
                v183 = *(v130 + 80);
                v131 = v127;
                v184 = v124;
                v132 = v131;
                v133 = *(v129 + 80);
                v180 = v127;
                v181 = v128;
                v183(v127, v128, v190, v133, v130);
                v134 = v132;
                v124 = v184;
                v135 = v134;
                v136 = v203;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *&v213 = v136;
                v138 = specialized __RawDictionaryStorage.find<A>(_:)(v124, v119);
                v140 = *(v136 + 16);
                v141 = (v139 & 1) == 0;
                v89 = __OFADD__(v140, v141);
                v142 = v140 + v141;
                if (v89)
                {
                  goto LABEL_141;
                }

                v143 = v139;
                if (*(v136 + 24) >= v142)
                {
                  v110 = v182;
                  if (isUniquelyReferenced_nonNull_native)
                  {
                    goto LABEL_101;
                  }

                  v148 = v138;
                  specialized _NativeDictionary.copy()();
                  v138 = v148;
                  v145 = v213;
                  if ((v143 & 1) == 0)
                  {
                    goto LABEL_104;
                  }

LABEL_102:
                  v146 = v145[7] + 16 * v138;
                  v147 = *v146;
                  *v146 = v180;
                  *(v146 + 8) = v181;
                }

                else
                {
                  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v142, isUniquelyReferenced_nonNull_native);
                  v138 = specialized __RawDictionaryStorage.find<A>(_:)(v124, v119);
                  v110 = v182;
                  if ((v143 & 1) != (v144 & 1))
                  {
                    goto LABEL_146;
                  }

LABEL_101:
                  v145 = v213;
                  if (v143)
                  {
                    goto LABEL_102;
                  }

LABEL_104:
                  v145[(v138 >> 6) + 8] |= 1 << v138;
                  v149 = (v145[6] + 16 * v138);
                  *v149 = v124;
                  v149[1] = v119;
                  v150 = v145[7] + 16 * v138;
                  *v150 = v180;
                  *(v150 + 8) = v181;

                  v151 = v145[2];
                  v89 = __OFADD__(v151, 1);
                  v152 = v151 + 1;
                  if (v89)
                  {
                    goto LABEL_142;
                  }

                  v145[2] = v152;
                }

                v45 = v199;
              }

              else
              {
                v145 = v203;
              }
            }

            else
            {
              v145 = v203;
              v124 = v118;
            }

            v153 = *(v207 + 16);
            if (v153 < v112)
            {
              goto LABEL_137;
            }

            if (v208 < 0)
            {
              goto LABEL_138;
            }

            v203 = v145;

            v154 = v207;
            v155 = swift_isUniquelyReferenced_nonNull_native();
            if (!v155 || v153 >= *(v154 + 3) >> 1)
            {
              v154 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v155, v153 + 1, 1, v154);
            }

            v156 = &v154[v192 + v110];
            swift_arrayDestroy();
            memmove(v156 + 48, v156 + 32, 16 * (v209 + *(v154 + 2)));
            v157 = *(v154 + 2) + 1;
            v207 = v154;
            *(v154 + 2) = v157;
            *(v156 + 4) = v124;
            *(v156 + 5) = v119;
            outlined init with copy of ToolbarStorage.GroupItem.GroupSubItem(v190, v187, type metadata accessor for ToolbarStorage.Entry);
            v158 = v210;
            v159 = swift_isUniquelyReferenced_nonNull_native();
            v160 = v124;
            v161 = v159;
            *&v213 = v158;
            v162 = v160;
            v163 = specialized __RawDictionaryStorage.find<A>(_:)(v160, v119);
            v165 = *(v158 + 16);
            v166 = (v164 & 1) == 0;
            v89 = __OFADD__(v165, v166);
            v167 = v165 + v166;
            if (v89)
            {
              goto LABEL_139;
            }

            v168 = v164;
            if (*(v158 + 24) >= v167)
            {
              if ((v161 & 1) == 0)
              {
                v174 = v163;
                specialized _NativeDictionary.copy()();
                v163 = v174;
              }
            }

            else
            {
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v167, v161);
              v163 = specialized __RawDictionaryStorage.find<A>(_:)(v162, v119);
              if ((v168 & 1) != (v169 & 1))
              {
                goto LABEL_146;
              }
            }

            v111 = v191;
            if (v168)
            {
              v116 = v163;

              v210 = v213;
              outlined assign with take of Toolbar.PlatformVended(v187, *(v213 + 56) + *(v206 + 72) * v116, type metadata accessor for ToolbarStorage.Entry);
              outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v190, type metadata accessor for ToolbarStorage.Entry);
            }

            else
            {
              v170 = v213;
              *(v213 + 8 * (v163 >> 6) + 64) |= 1 << v163;
              v171 = (v170[6] + 16 * v163);
              *v171 = v162;
              v171[1] = v119;
              outlined init with take of ToolbarStorage.Item(v187, v170[7] + *(v206 + 72) * v163, type metadata accessor for ToolbarStorage.Entry);
              outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v190, type metadata accessor for ToolbarStorage.Entry);
              v172 = v170[2];
              v89 = __OFADD__(v172, 1);
              v173 = v172 + 1;
              if (v89)
              {
                goto LABEL_140;
              }

              v210 = v170;
              v170[2] = v173;
            }

            ++v115;
            v110 += 16;
            --v209;
            ++v112;
            v50 = 2;
            v58 = v197;
            if (v197 == v115)
            {
              break;
            }

            continue;
          }
        }

LABEL_70:
        v47 = *(v189 + 16);
        v49 = v188 - v52 + 1;
        v48 = v177 - v52 + 1;
        v20 = v185;
        v43 = v207;
        v51 = v178;
        if (v47 - v177 + v52 == 1)
        {
          goto LABEL_121;
        }

        goto LABEL_22;
      }

      if (v58 != v57)
      {
        break;
      }
    }

    --v52;
    v55 += 40;
    if (!(v53 + v52))
    {
      goto LABEL_121;
    }
  }

  if (v58 < v57)
  {
    goto LABEL_143;
  }

  v59 = (v58 - v57);
  if (v58 > v57)
  {
    v188 = v49;
    v177 = v48;
    v207 = v43;
    v193 = *(v195 + 88);
    v191 = *(v193 + 72);
    v192 = v193 + 72;
    v209 = -v57;
    v208 = 16 * v57 + 32;
    v198 = v57;
    v60 = v57;
    v197 = v58;
    while (1)
    {
      if (v60 >= v58)
      {
        goto LABEL_125;
      }

      v213 = 0uLL;
      *v214 = 0;
      *&v214[8] = v200;
      v61 = specialized static Toolbar.BarLocation.== infix(_:_:)(v45, &v213);
      outlined destroy of Toolbar.BarLocation(&v213);
      v62 = v207;
      v204 = v59;
      if ((v61 & 1) != 0 && v188 - *(v189 + 16) + 1 == v52 && v59 == 1)
      {
        v50 = 1;
      }

      v63 = v201;
      Array.subscript.getter();
      *(v56 + *(v63 + 20)) = v50;
      v64 = (v191)(v56, *(v195 + 80), v193);
      v68 = *(v62 + 2);
      if (v68 < v60)
      {
        goto LABEL_126;
      }

      if (v198 < 0)
      {
        goto LABEL_127;
      }

      v69 = v64;
      v70 = v65;
      v71 = v66;
      v72 = v67;

      v73 = swift_isUniquelyReferenced_nonNull_native();
      if (!v73 || v68 >= *(v62 + 3) >> 1)
      {
        v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v73, v68 + 1, 1, v62);
      }

      v74 = v210;
      v75 = &v62[v208];
      swift_arrayDestroy();
      memmove(v75 + 2, v75, 16 * (v209 + *(v62 + 2)));
      v76 = *(v62 + 2) + 1;
      v207 = v62;
      *(v62 + 2) = v76;
      *v75 = v69;
      v75[1] = v70;
      outlined init with copy of ToolbarStorage.GroupItem.GroupSubItem(v56, v205, type metadata accessor for ToolbarStorage.Entry);
      v77 = swift_isUniquelyReferenced_nonNull_native();
      *&v213 = v74;
      v79 = specialized __RawDictionaryStorage.find<A>(_:)(v69, v70);
      v80 = *(v210 + 16);
      v81 = (v78 & 1) == 0;
      v82 = v80 + v81;
      if (__OFADD__(v80, v81))
      {
        goto LABEL_128;
      }

      v83 = v78;
      if (*(v210 + 24) >= v82)
      {
        if (v77)
        {
          v86 = v213;
          if (v78)
          {
            goto LABEL_54;
          }
        }

        else
        {
          specialized _NativeDictionary.copy()();
          v86 = v213;
          if (v83)
          {
            goto LABEL_54;
          }
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v82, v77);
        v84 = specialized __RawDictionaryStorage.find<A>(_:)(v69, v70);
        if ((v83 & 1) != (v85 & 1))
        {
          goto LABEL_146;
        }

        v79 = v84;
        v86 = v213;
        if (v83)
        {
LABEL_54:
          outlined assign with take of Toolbar.PlatformVended(v205, v86[7] + *(v206 + 72) * v79, type metadata accessor for ToolbarStorage.Entry);
          goto LABEL_58;
        }
      }

      v86[(v79 >> 6) + 8] |= 1 << v79;
      v87 = (v86[6] + 16 * v79);
      *v87 = v69;
      v87[1] = v70;
      outlined init with take of ToolbarStorage.Item(v205, v86[7] + *(v206 + 72) * v79, type metadata accessor for ToolbarStorage.Entry);
      v88 = v86[2];
      v89 = __OFADD__(v88, 1);
      v90 = v88 + 1;
      if (v89)
      {
        goto LABEL_130;
      }

      v86[2] = v90;

LABEL_58:
      v210 = v86;
      if (v72 == -1)
      {
        v56 = v196;
        outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v196, type metadata accessor for ToolbarStorage.Entry);
      }

      else
      {
        outlined copy of OpenURLOptions?(v71, v72);
        v91 = v71;
        v92 = v203;
        v93 = swift_isUniquelyReferenced_nonNull_native();
        *&v213 = v92;
        v94 = specialized __RawDictionaryStorage.find<A>(_:)(v69, v70);
        v96 = *(v92 + 16);
        v97 = (v95 & 1) == 0;
        v89 = __OFADD__(v96, v97);
        v98 = v96 + v97;
        if (v89)
        {
          goto LABEL_129;
        }

        v99 = v95;
        if (*(v92 + 24) >= v98)
        {
          if ((v93 & 1) == 0)
          {
            v109 = v94;
            specialized _NativeDictionary.copy()();
            v94 = v109;
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v98, v93);
          v94 = specialized __RawDictionaryStorage.find<A>(_:)(v69, v70);
          if ((v99 & 1) != (v100 & 1))
          {
            goto LABEL_146;
          }
        }

        v56 = v196;
        if (v99)
        {
          v101 = v94;

          v203 = v213;
          v102 = *(v213 + 56) + 16 * v101;
          v103 = *v102;
          *v102 = v71;
          *(v102 + 8) = v72;

          outlined consume of OpenURLOptions?(v71, v72);
          outlined consume of OpenURLOptions?(v71, v72);
          outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v56, type metadata accessor for ToolbarStorage.Entry);
        }

        else
        {
          v104 = v213;
          *(v213 + 8 * (v94 >> 6) + 64) |= 1 << v94;
          v105 = (v104[6] + 16 * v94);
          *v105 = v69;
          v105[1] = v70;
          v106 = v104[7] + 16 * v94;
          *v106 = v71;
          *(v106 + 8) = v72;
          outlined consume of OpenURLOptions?(v71, v72);
          outlined consume of OpenURLOptions?(v71, v72);
          outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v56, type metadata accessor for ToolbarStorage.Entry);
          v107 = v104[2];
          v89 = __OFADD__(v107, 1);
          v108 = v107 + 1;
          if (v89)
          {
            goto LABEL_131;
          }

          v203 = v104;
          v104[2] = v108;
        }
      }

      v45 = v199;
      v58 = v197;
      v208 += 16;
      --v209;
      ++v60;
      v50 = 2;
      v59 = v204 - 1;
      if (v204 == 1)
      {
        goto LABEL_70;
      }
    }
  }

LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7SwiftUI14ToolbarStorageV5EntryVTt0g5Tf4g_n(uint64_t a1)
{
  type metadata accessor for (String, ToolbarStorage.Entry)(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 16);
  if (v7)
  {
    type metadata accessor for _DictionaryStorage<String, ToolbarStorage.Entry>(0);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      outlined init with copy of Predicate<Pack{String}>?(v10, v6, type metadata accessor for (String, ToolbarStorage.Entry));
      v12 = *v6;
      v13 = v6[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for ToolbarStorage.Entry(0);
      result = outlined init with take of Predicate<Pack{String}>?(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for ToolbarStorage.Entry);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7SwiftUI7ToolbarO10VendedItemOTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<String, Toolbar.VendedItem>();
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 32)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      v9 = v7;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = v3[7] + 16 * result;
      *v13 = v7;
      *(v13 + 8) = v8;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [ToolbarStorage.Entry] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [ToolbarStorage.Entry] and conformance [A];
  if (!lazy protocol witness table cache variable for type [ToolbarStorage.Entry] and conformance [A])
  {
    _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_1(255, &lazy cache variable for type metadata for [ToolbarStorage.Entry], type metadata accessor for ToolbarStorage.Entry, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type [ToolbarStorage.Entry] and conformance [A]);
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v27 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = dispatch thunk of Collection.count.getter();
  if (!v19)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v41 = v19;
  v45 = ContiguousArray.init()();
  v32 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v41);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = dispatch thunk of Collection.subscript.read();
      v23 = v13;
      v24 = v13;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v21;
      v13 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void type metadata accessor for CollectionChanges<Int, Int>()
{
  if (!lazy cache variable for type metadata for CollectionChanges<Int, Int>)
  {
    v0 = type metadata accessor for CollectionChanges();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CollectionChanges<Int, Int>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type [ToolbarStorage.Entry.ID] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [ToolbarStorage.Entry.ID] and conformance [A];
  if (!lazy protocol witness table cache variable for type [ToolbarStorage.Entry.ID] and conformance [A])
  {
    type metadata accessor for Toolbar.UpdateContext?(255, &lazy cache variable for type metadata for [ToolbarStorage.Entry.ID], &type metadata for ToolbarStorage.Entry.ID, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable(MEMORY[0x1E69E6310], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type [ToolbarStorage.Entry.ID] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ToolbarStorage.Entry.ID and conformance ToolbarStorage.Entry.ID()
{
  result = lazy protocol witness table cache variable for type ToolbarStorage.Entry.ID and conformance ToolbarStorage.Entry.ID;
  if (!lazy protocol witness table cache variable for type ToolbarStorage.Entry.ID and conformance ToolbarStorage.Entry.ID)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ToolbarStorage.Entry.ID, &type metadata for ToolbarStorage.Entry.ID, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarStorage.Entry.ID and conformance ToolbarStorage.Entry.ID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolbarStorage.Entry.ID and conformance ToolbarStorage.Entry.ID;
  if (!lazy protocol witness table cache variable for type ToolbarStorage.Entry.ID and conformance ToolbarStorage.Entry.ID)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ToolbarStorage.Entry.ID, &type metadata for ToolbarStorage.Entry.ID, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarStorage.Entry.ID and conformance ToolbarStorage.Entry.ID);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Gradient.CubicDefinition(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

void type metadata accessor for ((), Toolbar.BarLocation)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t initializeWithCopy for UIKitToolbarStrategy(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  *a1 = *a2;
  v5 = (a1 + 8);
  v6 = *(a2 + 96);
  v7 = v4;
  if (v6)
  {
    if (*(a2 + 16) == 2)
    {
      *v5 = *(a2 + 8);
      *(v5 + 9) = *(a2 + 17);
    }

    else
    {
      swift_unknownObjectWeakCopyInit();
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);
    }

    swift_unknownObjectWeakCopyInit();
    swift_unknownObjectWeakCopyInit();
    *(a1 + 56) = *(a2 + 56);
    swift_unknownObjectWeakCopyInit();
    swift_unknownObjectWeakCopyInit();
    swift_unknownObjectWeakCopyInit();
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 96) = *(a2 + 96);
  }

  else
  {
    v8 = *(a2 + 56);
    v5[2] = *(a2 + 40);
    v5[3] = v8;
    v9 = *(a2 + 88);
    v5[4] = *(a2 + 72);
    v5[5] = v9;
    v10 = *(a2 + 24);
    *v5 = *(a2 + 8);
    v5[1] = v10;
  }

  return a1;
}

uint64_t UIKitToolbarStrategy.updateBarTitle()(void (*a1)(void *__return_ptr))
{
  v2 = *v1;
  if (*v1)
  {
    outlined init with copy of PushTarget?((v1 + 1), v6, &lazy cache variable for type metadata for Toolbar.UpdateContext?, &type metadata for Toolbar.UpdateContext);
    if (v6[11])
    {
      outlined init with take of Toolbar.UpdateContext(v6, v7);
      v4 = v2;
      a1(v6);

      outlined destroy of Toolbar.UpdateContext(v7);
      return LOBYTE(v6[0]);
    }

    outlined destroy of PushTarget?(v6, &lazy cache variable for type metadata for Toolbar.UpdateContext?, &type metadata for Toolbar.UpdateContext);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void closure #1 in UIKitToolbarStrategy.updateBarTitle()(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v60 = 0;
  *&v57 = 0;
  v55 = 0u;
  v56 = 0u;
  specialized ToolbarBridge.adjustEntries(in:_:)(&v55, a1, &v60);
  outlined destroy of Toolbar.BarLocation(&v55);
  v4 = a1 + direct field offset for ToolbarBridge.platformVended;
  swift_beginAccess();
  v5 = v60;
  [*(v4 + 8) setTitleView_];
  v6 = (a1 + direct field offset for ToolbarBridge.lastToolbarStorage);
  v7 = *(a1 + direct field offset for ToolbarBridge.lastToolbarStorage + 48);
  v52 = *(a1 + direct field offset for ToolbarBridge.lastToolbarStorage + 32);
  v53 = v7;
  v54 = *(a1 + direct field offset for ToolbarBridge.lastToolbarStorage + 64);
  v8 = *(a1 + direct field offset for ToolbarBridge.lastToolbarStorage + 16);
  v50 = *(a1 + direct field offset for ToolbarBridge.lastToolbarStorage);
  v51 = v8;
  v9 = (a1 + direct field offset for ToolbarBridge.lastInputToolbarStorage);
  v10 = *(a1 + direct field offset for ToolbarBridge.lastInputToolbarStorage + 48);
  v57 = *(a1 + direct field offset for ToolbarBridge.lastInputToolbarStorage + 32);
  v58 = v10;
  v59 = *(a1 + direct field offset for ToolbarBridge.lastInputToolbarStorage + 64);
  v11 = *(a1 + direct field offset for ToolbarBridge.lastInputToolbarStorage + 16);
  v55 = *(a1 + direct field offset for ToolbarBridge.lastInputToolbarStorage);
  v56 = v11;
  v12 = v53;
  if (v53)
  {
    v42 = v4;
    v13 = *(&v50 + 1);
    v14 = v50;
    v16 = *(&v51 + 1);
    v15 = v51;
    v17 = v52;
    v40 = BYTE8(v52);
    v18 = v54;
    v43 = BYTE8(v53);
    if (v58)
    {
      v41 = v50;
      v38 = v5;
      v39 = a2;
      v19 = *(&v56 + 1);
      v20 = v56;
      v21 = v57;
      v22 = BYTE8(v57);
      *(&v47 + 9) = *(v6 + 41);
      HIDWORD(v47) = *(v6 + 11);
      BYTE8(v48) = BYTE8(v53);
      *(&v48 + 9) = *(v6 + 57);
      HIDWORD(v48) = *(v6 + 15);
      v49 = v54;
      if (!*(&v50 + 1))
      {
        v23 = BYTE8(v57);
        v24 = v57;
        v25 = *(&v56 + 1);
        v26 = v56;
        v41 = v55;

        v19 = v25;
        v20 = v26;
        v21 = v24;
        v22 = v23;
        v17 = v52;
        v13 = v27;
      }

      *&v45 = v41;
      *(&v45 + 1) = v13;
      if (!*(&v51 + 1))
      {
        v16 = v19;
        outlined copy of Binding<Int>?(v20, v19);
        v15 = v20;
        v17 = v21;
      }

      *&v46 = v15;
      *(&v46 + 1) = v16;
      *&v47 = v17;
      BYTE8(v47) = (BYTE8(v52) | v22) & 1;
      outlined init with copy of PushTarget?(&v55, v44, &lazy cache variable for type metadata for ToolbarStorage?, &type metadata for ToolbarStorage);
      outlined init with copy of PushTarget?(&v50, v44, &lazy cache variable for type metadata for ToolbarStorage?, &type metadata for ToolbarStorage);

      v29 = v40 | v22;
      specialized Array.append<A>(contentsOf:)(v28);
      *&v48 = v12;

      specialized Set.formUnion<A>(_:)(v30);
      outlined destroy of PushTarget?(&v55, &lazy cache variable for type metadata for ToolbarStorage?, &type metadata for ToolbarStorage);
      v18 = v49;
      v5 = v38;
      a2 = v39;
      v14 = v41;
    }

    else
    {
      v33 = v6[3];
      v47 = v6[2];
      v48 = v33;
      v49 = *(v6 + 8);
      v34 = v6[1];
      v45 = *v6;
      v46 = v34;
      outlined init with copy of ToolbarStorage(&v45, v44);
      v29 = v40;
    }
  }

  else
  {
    v12 = v58;
    if (!v58)
    {
      v35 = *(v4 + 8);
      goto LABEL_14;
    }

    v42 = v4;
    v29 = BYTE8(v57);
    v43 = BYTE8(v58);
    v16 = *(&v56 + 1);
    v17 = v57;
    v13 = *(&v55 + 1);
    v15 = v56;
    v14 = v55;
    v18 = v59;
    v31 = v9[3];
    v47 = v9[2];
    v48 = v31;
    v49 = *(v9 + 8);
    v32 = v9[1];
    v45 = *v9;
    v46 = v32;
    outlined init with copy of ToolbarStorage(&v45, v44);
  }

  *&v45 = v14;
  *(&v45 + 1) = v13;
  *&v46 = v15;
  *(&v46 + 1) = v16;
  *&v47 = v17;
  BYTE8(v47) = v29 & 1;
  *&v48 = v12;
  BYTE8(v48) = v43 & 1;
  v49 = v18;

  outlined destroy of ToolbarStorage(&v45);
  v35 = *(v42 + 8);
  if (!v13)
  {
LABEL_14:
    v36 = v35;
    v37 = 0;
    goto LABEL_15;
  }

  v36 = v35;
  v37 = MEMORY[0x18D00C850](v14, v13);

LABEL_15:
  [v36 setCustomizationIdentifier_];

  *a2 = 1;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a4);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a5 & 1) == 0)
  {
    if (v19 >= v17 && (a5 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, a5 & 1);
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(a4);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v6;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      outlined init with copy of Toolbar.BarLocation(a4, v25);
      return specialized _NativeDictionary._insert(at:key:value:)(v14, v25, a1, a2, a3, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v6;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = (v20[7] + 24 * v14);
  *v21 = a1;
  v21[1] = a2;
  v21[2] = a3;
}

void specialized _NativeSet.update(with:isUnique:)(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *v3;
  Hasher.init(_seed:)();
  Toolbar.BarLocation.hash(into:)(v33);
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = 1;
    while (1)
    {
      outlined init with copy of Toolbar.BarLocation(*(v7 + 48) + 40 * v10, v33);
      v13 = specialized static Toolbar.BarLocation.== infix(_:_:)(v33, a1);
      outlined destroy of Toolbar.BarLocation(v33);
      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v12 = 0;
LABEL_8:
    v14 = v13 ^ 1;
  }

  else
  {
    v14 = 1;
    v12 = 1;
  }

  v15 = *(v7 + 16);
  v16 = v15 + v12;
  if (__OFADD__(v15, v12))
  {
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v17 = *(v7 + 24);
  if (v17 < v16 || (a2 & 1) == 0)
  {
    if (a2)
    {
      specialized _NativeSet.resize(capacity:)(v16);
    }

    else
    {
      if (v17 >= v16)
      {
        specialized _NativeSet.copy()();
        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_25;
      }

      specialized _NativeSet.copyAndResize(capacity:)(v16);
    }

    v18 = *v4;
    Hasher.init(_seed:)();
    Toolbar.BarLocation.hash(into:)(v33);
    v19 = Hasher._finalize()();
    v20 = -1 << *(v18 + 32);
    v10 = v19 & ~v20;
    if ((*(v18 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v21 = ~v20;
      while (1)
      {
        outlined init with copy of Toolbar.BarLocation(*(v18 + 48) + 40 * v10, v33);
        v22 = specialized static Toolbar.BarLocation.== infix(_:_:)(v33, a1);
        outlined destroy of Toolbar.BarLocation(v33);
        if (v22)
        {
          break;
        }

        v10 = (v10 + 1) & v21;
        if (((*(v18 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      if ((v14 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    else
    {
LABEL_24:
      if (v14)
      {
LABEL_25:
        v23 = *v4;
        *(*v4 + 8 * (v10 >> 6) + 56) |= 1 << v10;
        v24 = *(v23 + 48) + 40 * v10;
        v25 = *(a1 + 16);
        *v24 = *a1;
        *(v24 + 16) = v25;
        *(v24 + 32) = *(a1 + 32);
        v26 = *(v23 + 16);
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (!v27)
        {
          *(v23 + 16) = v28;
          *(a3 + 8) = 0;
          *(a3 + 16) = 0;
          *a3 = 0;
          *(a3 + 24) = xmmword_18CDA9110;
          return;
        }

        goto LABEL_31;
      }
    }

LABEL_32:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  if (v14)
  {
    goto LABEL_25;
  }

LABEL_28:
  v29 = *(*v4 + 48) + 40 * v10;
  v30 = *(v29 + 16);
  *a3 = *v29;
  *(a3 + 16) = v30;
  *(a3 + 32) = *(v29 + 32);
  *(v29 + 32) = *(a1 + 32);
  v31 = *(a1 + 16);
  *v29 = *a1;
  *(v29 + 16) = v31;
}

void closure #1 in UIKitToolbarStrategy.updateBarLargeTitle()(uint64_t a1@<X0>, void (*a2)(void *, uint64_t, void **)@<X2>, SEL *a3@<X3>, SEL *a4@<X4>, BOOL *a5@<X8>, __n128 a6@<Q0>)
{
  v17 = 0;
  memset(v15, 0, sizeof(v15));
  v16 = a6;
  a2(v15, a1, &v17);
  outlined destroy of Toolbar.BarLocation(v15);
  v10 = a1 + direct field offset for ToolbarBridge.platformVended;
  swift_beginAccess();
  v11 = [*(v10 + 8) *a3];
  v12 = v17;
  [*(v10 + 8) *a4];
  v13 = [*(v10 + 8) *a3];

  if (!v11)
  {
    if (!v13)
    {
      v14 = 0;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (!v13)
  {

LABEL_7:
    v14 = 1;
    goto LABEL_9;
  }

  v14 = v11 != v13;
LABEL_9:
  *a5 = v14;
}

uint64_t closure #1 in UIKitToolbarStrategy.updateBarCenter()@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_0(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v4>, MEMORY[0x1E697DF40], MEMORY[0x1E697DF38], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>();
  result = static SemanticFeature.isEnabled.getter();
  if (result)
  {
    v5 = a1 + direct field offset for ToolbarBridge.platformVended;
    swift_beginAccess();
    v6 = [*(v5 + 8) centerItemGroups];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBarButtonItemGroup, 0x1E69DC720);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = xmmword_18CD79D60;
    MEMORY[0x1EEE9AC00](v8);
    v9 = specialized ToolbarStrategy.withUpdate<A>(_:)(closure #1 in UIKitToolbarStrategy.barButtonGroups(in:)partial apply);
    outlined destroy of Toolbar.BarLocation(&v15);
    v10 = *(v5 + 8);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v10 setCenterItemGroups_];

    if (v9 >> 62)
    {
      v12 = __CocoaSet.count.getter();
    }

    else
    {
      v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v12 < 1)
    {
      if (v7 >> 62)
      {
        v14 = __CocoaSet.count.getter();
      }

      else
      {
        v14 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v13 = v14 > 0;
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

  *a2 = v13;
  return result;
}

uint64_t specialized ToolbarBridge.entryCount(in:)(uint64_t a1)
{
  v3 = direct field offset for ToolbarBridge.storageByLocation;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 24 * v5);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7SwiftUI14ToolbarStorageV5EntryVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7SwiftUI7ToolbarO10VendedItemOTt0g5Tf4g_n(v7);
  }

  swift_endAccess();

  v8 = *(v7 + 16);

  return v8;
}

uint64_t specialized ToolbarBridge.adjustEntries(in:_:)(uint64_t a1, void (*a2)(char *, uint64_t *), uint64_t a3)
{
  v55 = a2;
  v56 = a3;
  v5 = type metadata accessor for ToolbarStorage.Entry(0);
  v57 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v58 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = direct field offset for ToolbarBridge.storageByLocation;
  swift_beginAccess();
  v52 = v3;
  v50 = v7;
  v8 = *(v3 + v7);
  if (*(v8 + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v10 & 1) != 0))
  {
    v11 = (*(v8 + 56) + 24 * v9);
    v12 = *v11;
    v13 = v11[1];
    v14 = v11[2];
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
    v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7SwiftUI14ToolbarStorageV5EntryVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7SwiftUI7ToolbarO10VendedItemOTt0g5Tf4g_n(v12);
  }

  v51 = a1;
  swift_endAccess();
  v15 = *(v12 + 16);
  if (!v15)
  {
LABEL_32:
    v45 = v52;
    v46 = v50;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v59 = *(v45 + v46);
    *(v45 + v46) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, v13, v14, v51, isUniquelyReferenced_nonNull_native);
    *(v45 + v46) = v59;
    swift_endAccess();
  }

  v16 = 0;
  v17 = (v12 + 40);
  v53 = *(v12 + 16);
  v54 = v12;
  while (v16 < *(v12 + 16))
  {
    if (!*(v13 + 16))
    {
      goto LABEL_8;
    }

    v19 = *(v17 - 1);
    v18 = *v17;

    v20 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v18);
    if ((v21 & 1) == 0)
    {

      goto LABEL_8;
    }

    v22 = v13;
    _s7SwiftUI14ToolbarStorageV10SearchItemVSgWOcTm_0(*(v13 + 56) + *(v57 + 72) * v20, v58, type metadata accessor for ToolbarStorage.Entry);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v59 = v14;
    v25 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v18);
    v26 = v14[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_34;
    }

    v29 = v24;
    if (v14[3] >= v28)
    {
      if (v23)
      {
        v13 = v22;
        if (v24)
        {
          goto LABEL_19;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        v13 = v22;
        if (v29)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v28, v23);
      v30 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v18);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_36;
      }

      v25 = v30;
      v13 = v22;
      if (v29)
      {
LABEL_19:
        v32 = v59[7] + 16 * v25;
        v33 = *v32;
        v34 = *(v32 + 8);
        goto LABEL_22;
      }
    }

    v33 = 0;
    v34 = -1;
LABEL_22:
    v60 = v33;
    v61 = v34;
    v55(v58, &v60);
    v35 = v61;
    if (v61 == 255)
    {

      if (v29)
      {
        v14 = v59;
        outlined destroy of String(v59[6] + 16 * v25);
        specialized _NativeDictionary._delete(at:)(v25, v14);
        outlined destroy of ToolbarStorage.GroupItem(v58, type metadata accessor for ToolbarStorage.Entry);
      }

      else
      {
        outlined destroy of ToolbarStorage.GroupItem(v58, type metadata accessor for ToolbarStorage.Entry);
        v14 = v59;
      }

      v15 = v53;
      v12 = v54;
    }

    else
    {
      v36 = v60;
      if (v29)
      {

        v37 = v58;
        v14 = v59;
        v38 = v59[7] + 16 * v25;
        *v38 = v36;
        *(v38 + 8) = v35;
        outlined destroy of ToolbarStorage.GroupItem(v37, type metadata accessor for ToolbarStorage.Entry);
      }

      else
      {
        v39 = v58;
        v14 = v59;
        v59[(v25 >> 6) + 8] |= 1 << v25;
        v40 = (v14[6] + 16 * v25);
        *v40 = v19;
        v40[1] = v18;
        v41 = v14[7] + 16 * v25;
        *v41 = v36;
        *(v41 + 8) = v35;
        outlined destroy of ToolbarStorage.GroupItem(v39, type metadata accessor for ToolbarStorage.Entry);
        v42 = v14[2];
        v43 = __OFADD__(v42, 1);
        v44 = v42 + 1;
        if (v43)
        {
          goto LABEL_35;
        }

        v14[2] = v44;
      }

      v15 = v53;
      v12 = v54;
      v13 = v22;
    }

LABEL_8:
    ++v16;
    v17 += 2;
    if (v15 == v16)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t closure #1 in UIKitToolbarStrategy.updateNavigationBarLeading()@<X0>(uint64_t a1@<X0>, SEL *a2@<X3>, void (*a3)(void *__return_ptr)@<X4>, SEL *a4@<X5>, BOOL *a5@<X8>, __n128 a6@<Q0>)
{
  v10 = a1 + direct field offset for ToolbarBridge.platformVended;
  swift_beginAccess();
  v11 = [*(v10 + 8) *a2];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBarButtonItemGroup, 0x1E69DC720);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  memset(v21, 0, sizeof(v21));
  v22 = a6;
  v13 = specialized ToolbarStrategy.withUpdate<A>(_:)(a3);
  outlined destroy of Toolbar.BarLocation(v21);
  v14 = *(v10 + 8);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v14 *a4];

  if (v13 >> 62)
  {
    v16 = __CocoaSet.count.getter();
  }

  else
  {
    v16 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v16 < 1)
  {
    if (v12 >> 62)
    {
      v19 = __CocoaSet.count.getter();
    }

    else
    {
      v19 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v18 = v19 > 0;
  }

  else
  {

    v18 = 1;
  }

  *a5 = v18;
  return result;
}

void closure #1 in UIKitToolbarStrategy.updateSplitControllerLeadingItems()(uint64_t a1@<X0>, SEL *a2@<X3>, void (*a3)(void *__return_ptr)@<X4>, SEL *a4@<X5>, BOOL *a5@<X8>, __n128 a6@<Q0>)
{
  v10 = a1 + direct field offset for ToolbarBridge.platformVended;
  swift_beginAccess();
  v11 = *(v10 + *(type metadata accessor for Toolbar.PlatformVended(0) + 52));
  v12 = [v11 *a2];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBarButtonItemGroup, 0x1E69DC720);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  memset(v20, 0, sizeof(v20));
  v21 = a6;
  v14 = specialized ToolbarStrategy.withUpdate<A>(_:)(a3);
  outlined destroy of Toolbar.BarLocation(v20);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v11 *a4];

  if (v14 >> 62)
  {
    v16 = __CocoaSet.count.getter();
  }

  else
  {
    v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v16 < 1)
  {
    if (v13 >> 62)
    {
      v18 = __CocoaSet.count.getter();
    }

    else
    {
      v18 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = v18 > 0;
  }

  else
  {

    v17 = 1;
  }

  *a5 = v17;
}

void *closure #1 in UIKitToolbarStrategy.updateBottomBar()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  outlined init with copy of HostingControllerOverrides(a2, v10);
  Strong = swift_unknownObjectWeakLoadStrong();
  outlined destroy of HostingControllerOverrides(v10);
  if (Strong)
  {
  }

  else
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      v9 = 0;
      goto LABEL_6;
    }
  }

  v7 = UIKitToolbarStrategy.makeBarItems()();
  v8 = a1 + direct field offset for ToolbarBridge.platformVended;
  v9 = 1;
  swift_beginAccess();
  *(v8 + 16) = v7;

LABEL_6:
  *a3 = v9;
  return result;
}

void InputAccessoryGenerator.updateHostIfNeeded()()
{
  v1 = v0[3];
  if (!v1)
  {
    return;
  }

  v2 = v0[2];
  if (v2 >> 62)
  {
    v18 = __CocoaSet.count.getter();
    v3 = v0[4];
    if (v18)
    {
      goto LABEL_4;
    }

LABEL_13:
    v0[4] = 0;
    v23 = v1;

    v19 = *&v23[OBJC_IVAR____TtCC7SwiftUI23InputAccessoryGeneratorP33_5C36F4A49E2E2562B910FE6399D2C51E10RootUIView_host];
    *&v23[OBJC_IVAR____TtCC7SwiftUI23InputAccessoryGeneratorP33_5C36F4A49E2E2562B910FE6399D2C51E10RootUIView_host] = 0;
    if (v19)
    {
      v22 = v19;
      [v22 removeFromSuperview];
      [v23 invalidateIntrinsicContentSize];
      v20 = [v23 superview];
      [v20 setNeedsLayout];

      v21 = v22;
    }

    else
    {
      v21 = v23;
    }

    return;
  }

  v3 = v0[4];
  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_13;
  }

LABEL_4:
  if (v3)
  {
    v4 = v1;
  }

  else
  {
    v5 = v0;
    type metadata accessor for InputAccessoryHost<InputAccessoryBar>(0, &lazy cache variable for type metadata for InputAccessoryHost<InputAccessoryBar>, lazy protocol witness table accessor for type InputAccessoryBar and conformance InputAccessoryBar, &type metadata for InputAccessoryBar, type metadata accessor for InputAccessoryHost);
    v7 = objc_allocWithZone(v6);
    v8 = v1;

    v10 = specialized _UIHostingView.init(rootView:)(v9);
    specialized InputAccessoryHost.setupSizeObserver()([v10 setTranslatesAutoresizingMaskIntoConstraints_]);
    v11 = *&v8[OBJC_IVAR____TtCC7SwiftUI23InputAccessoryGeneratorP33_5C36F4A49E2E2562B910FE6399D2C51E10RootUIView_host];
    *&v8[OBJC_IVAR____TtCC7SwiftUI23InputAccessoryGeneratorP33_5C36F4A49E2E2562B910FE6399D2C51E10RootUIView_host] = v10;
    if (v11)
    {
      v12 = v10;
    }

    else
    {
      v13 = v10;
      [v8 addSubview_];
      [v8 invalidateIntrinsicContentSize];
      v11 = [v8 superview];
      [v11 setNeedsLayout];
    }

    v0 = v5;
    v14 = v5[4];
    v5[4] = v10;

    v3 = v5[4];
    if (!v3)
    {
      __break(1u);
      return;
    }
  }

  v15 = v0[2];
  v16 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x60);
  swift_beginAccess();
  *(v3 + v16) = v15;
  v17 = v3;

  type metadata accessor for InputAccessoryHost<InputAccessoryBar>(0, &lazy cache variable for type metadata for _UIHostingView<InputAccessoryBar>, lazy protocol witness table accessor for type InputAccessoryBar and conformance InputAccessoryBar, &type metadata for InputAccessoryBar, type metadata accessor for _UIHostingView);
  lazy protocol witness table accessor for type _UIHostingView<InputAccessoryBar> and conformance _UIHostingView<A>();
  ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
}

uint64_t specialized _arrayConditionalCast<A, B>(_:)(unint64_t a1)
{
  v8 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  specialized ContiguousArray.reserveCapacity(_:)();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x18D00E9C0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      type metadata accessor for UIKitBarButtonItem(0);
      if (!swift_dynamicCastClass())
      {

        return 0;
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v6 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __CocoaSet.count.getter();
    specialized ContiguousArray.reserveCapacity(_:)();
  }

  return v8;
}

{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v17 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
    v4 = v17;
    if (v2)
    {
      break;
    }

    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return v4;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x18D00E9C0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v6 = *(a1 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v9 = swift_dynamicCastObjCProtocolConditional();
      if (!v9 || (v10 = v9, swift_getObjectType(), (v11 = swift_conformsToProtocol2()) == 0))
      {

        return 0;
      }

      v13 = *(v17 + 16);
      v12 = *(v17 + 24);
      if (v13 >= v12 >> 1)
      {
        v16 = v11;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        v11 = v16;
      }

      *(v17 + 16) = v13 + 1;
      v14 = v17 + 16 * v13;
      *(v14 + 32) = v10;
      *(v14 + 40) = v11;
      if (v8 == v2)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

  v2 = __CocoaSet.count.getter();
  if (v2)
  {
    goto LABEL_7;
  }

  return v4;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Bool)@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result & 1;
  return result;
}

uint64_t specialized ToolbarBridge.adjustEntries(in:_:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v79 = a3;
  v73 = type metadata accessor for ToolbarStorage.Entry.Kind(0);
  MEMORY[0x1EEE9AC00](v73);
  v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ToolbarStorage.Item(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v68 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v67 = &v67 - v10;
  v11 = type metadata accessor for ToolbarStorage.Entry(0);
  v77 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v80 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = direct field offset for ToolbarBridge.storageByLocation;
  swift_beginAccess();
  v71 = a2;
  v69 = v13;
  v14 = *(a2 + v13);
  if (*(v14 + 16) && (v15 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v16 & 1) != 0))
  {
    v17 = (*(v14 + 56) + 24 * v15);
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[2];
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
    v19 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7SwiftUI14ToolbarStorageV5EntryVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7SwiftUI7ToolbarO10VendedItemOTt0g5Tf4g_n(v18);
  }

  v70 = a1;
  swift_endAccess();
  v21 = *(v18 + 16);
  if (!v21)
  {
LABEL_41:
    v63 = v71;
    v64 = v69;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v82[0] = *(v63 + v64);
    *(v63 + v64) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, v19, v20, v70, isUniquelyReferenced_nonNull_native);
    *(v63 + v64) = v82[0];
    swift_endAccess();
  }

  v72 = v6;
  v22 = 0;
  v23 = (v18 + 40);
  v75 = v19;
  v76 = v18;
  v74 = v21;
  while (v22 < *(v18 + 16))
  {
    if (*(v19 + 16))
    {
      v24 = *(v23 - 1);
      v25 = *v23;

      v26 = specialized __RawDictionaryStorage.find<A>(_:)(v24, v25);
      if (v27)
      {
        outlined init with copy of ToolbarStorage.GroupItem.GroupSubItem(*(v19 + 56) + *(v77 + 72) * v26, v80, type metadata accessor for ToolbarStorage.Entry);
        v28 = swift_isUniquelyReferenced_nonNull_native();
        v85 = v20;
        v30 = specialized __RawDictionaryStorage.find<A>(_:)(v24, v25);
        v31 = v20[2];
        v32 = (v29 & 1) == 0;
        v33 = v31 + v32;
        if (__OFADD__(v31, v32))
        {
          goto LABEL_43;
        }

        v34 = v29;
        if (v20[3] >= v33)
        {
          if (v28)
          {
            if ((v29 & 1) == 0)
            {
              goto LABEL_26;
            }
          }

          else
          {
            specialized _NativeDictionary.copy()();
            if ((v34 & 1) == 0)
            {
              goto LABEL_26;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, v28);
          v35 = specialized __RawDictionaryStorage.find<A>(_:)(v24, v25);
          if ((v34 & 1) != (v36 & 1))
          {
            goto LABEL_45;
          }

          v30 = v35;
          if ((v34 & 1) == 0)
          {
LABEL_26:
            if (*v79)
            {

              v20 = v85;
              goto LABEL_39;
            }

            v78 = 0;
            LODWORD(v40) = 255;
LABEL_29:
            v42 = v72;
            outlined init with copy of ToolbarStorage.GroupItem.GroupSubItem(v80, v72, type metadata accessor for ToolbarStorage.Entry.Kind);
            if (swift_getEnumCaseMultiPayload())
            {
              outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v42, type metadata accessor for ToolbarStorage.Entry.Kind);
              if (v40 != 255)
              {
                v20 = v85;
                if (v34)
                {
                  goto LABEL_32;
                }

LABEL_35:
                v20[(v30 >> 6) + 8] |= 1 << v30;
                v58 = (v20[6] + 16 * v30);
                *v58 = v24;
                v58[1] = v25;
                v59 = v20[7] + 16 * v30;
                *v59 = v78;
                *(v59 + 8) = v40;
                outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v80, type metadata accessor for ToolbarStorage.Entry);
                v60 = v20[2];
                v61 = __OFADD__(v60, 1);
                v62 = v60 + 1;
                if (v61)
                {
                  goto LABEL_44;
                }

                v20[2] = v62;
LABEL_40:
                v19 = v75;
                v18 = v76;
                v21 = v74;
                goto LABEL_8;
              }

              v20 = v85;
              if (v34)
              {
LABEL_38:
                outlined destroy of String(v20[6] + 16 * v30);
                specialized _NativeDictionary._delete(at:)(v30, v20);
              }

LABEL_39:
              outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v80, type metadata accessor for ToolbarStorage.Entry);
              goto LABEL_40;
            }

            v44 = v42;
            v45 = v68;
            outlined init with take of ToolbarStorage.Item(v44, v68, type metadata accessor for ToolbarStorage.Item);
            outlined consume of OpenURLOptions?(v78, v40);
            v46 = v45;
            v47 = v67;
            outlined init with take of ToolbarStorage.Item(v46, v67, type metadata accessor for ToolbarStorage.Item);
            outlined init with copy of _ViewList_View(v47 + 184, v83);
            swift_unknownObjectWeakInit();
            swift_unknownObjectWeakAssign();
            v84 = 2;
            outlined init with copy of BarItemView(v83, v82);
            v48 = *(v47 + 280);
            type metadata accessor for UIKitBarItemHost<BarItemView>(0);
            v50 = objc_allocWithZone(v49);
            v51 = MEMORY[0x1E69E7D40];
            v52 = &v50[*((*MEMORY[0x1E69E7D40] & *v50) + 0x710)];
            *v52 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
            v52[1] = 0;
            v53 = &v50[*((*v51 & *v50) + 0x720)];
            *v53 = 0;
            *(v53 + 1) = 0;
            v53[16] = 1;
            *&v50[*((*v51 & *v50) + 0x718)] = v48;
            outlined init with copy of BarItemView(v82, v81);
            v54 = v48;
            v55 = specialized _UIHostingView.init(rootView:)(v81);
            v56 = specialized _UIHostingView.base.getter();
            UIHostingViewBase.safeAreaRegions.setter();

            outlined destroy of BarItemView(v82);
            outlined destroy of BarItemView(v83);
            outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v47, type metadata accessor for ToolbarStorage.Item);
            v40 = *v79;
            *v79 = v55;
            v78 = v55;
            v57 = v55;

            LOBYTE(v40) = 3;
            v20 = v85;
            if ((v34 & 1) == 0)
            {
              goto LABEL_35;
            }

LABEL_32:
            v37 = 16 * v30;
LABEL_33:

            v43 = v20[7] + v37;
            *v43 = v78;
            *(v43 + 8) = v40;
            goto LABEL_39;
          }
        }

        v20 = v85;
        v37 = 16 * v30;
        v38 = v85[7] + 16 * v30;
        v39 = *v38;
        LODWORD(v40) = *(v38 + 8);
        if (*v79)
        {
          if (v40 == 255)
          {

            goto LABEL_38;
          }

          v78 = *v38;
        }

        else
        {
          v78 = *v38;
          if (v40 != 3)
          {
            goto LABEL_29;
          }

          *v79 = v39;
          v41 = v39;
        }

        goto LABEL_33;
      }
    }

LABEL_8:
    ++v22;
    v23 += 2;
    if (v21 == v22)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for _SetStorage<ToolbarPlacement.Role>(0, &lazy cache variable for type metadata for _SetStorage<Toolbar.BarLocation>, lazy protocol witness table accessor for type Toolbar.BarLocation and conformance Toolbar.BarLocation, &type metadata for Toolbar.BarLocation);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      outlined init with copy of Toolbar.BarLocation(*(v3 + 48) + 40 * (v16 | (v6 << 6)), v27);
      Hasher.init(_seed:)();
      Toolbar.BarLocation.hash(into:)(v26);
      result = Hasher._finalize()();
      v19 = -1 << *(v5 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v5 + 48) + 40 * v12;
      v14 = v27[0];
      v15 = v27[1];
      *(v13 + 32) = v28;
      *v13 = v14;
      *(v13 + 16) = v15;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

{
  v2 = *v1;
  type metadata accessor for _SetStorage<ToolbarPlacement.Role>(0, &lazy cache variable for type metadata for _SetStorage<ToolbarPlacement.Role>, lazy protocol witness table accessor for type ToolbarPlacement.Role and conformance ToolbarPlacement.Role, &type metadata for ToolbarPlacement.Role);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (!*(v2 + 16))
  {

LABEL_43:
    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = 1 << *(v2 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(v2 + 56);
  v9 = (v6 + 63) >> 6;
  v10 = result + 56;
  while (v8)
  {
    v15 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_15:
    outlined init with copy of ToolbarPlacement.Role(*(v2 + 48) + 40 * (v15 | (v5 << 6)), v31);
    Hasher.init(_seed:)();
    outlined init with copy of ToolbarPlacement.Role(v31, &v28);
    if (*(&v29 + 1) <= 2)
    {
      if (*(&v29 + 1))
      {
        if (*(&v29 + 1) == 1)
        {
          v18 = 1;
        }

        else
        {
          if (*(&v29 + 1) != 2)
          {
            goto LABEL_27;
          }

          v18 = 2;
        }
      }

      else
      {
        v18 = 0;
      }
    }

    else if (*(&v29 + 1) > 4)
    {
      if (*(&v29 + 1) == 5)
      {
        v18 = 5;
      }

      else
      {
        if (*(&v29 + 1) != 6)
        {
LABEL_27:
          v26[0] = v28;
          v26[1] = v29;
          v27 = v30;
          MEMORY[0x18D00F6F0](6);
          AnyHashable.hash(into:)();
          outlined destroy of AnyHashable(v26);
          goto LABEL_32;
        }

        v18 = 7;
      }
    }

    else if (*(&v29 + 1) == 3)
    {
      v18 = 3;
    }

    else
    {
      v18 = 4;
    }

    MEMORY[0x18D00F6F0](v18);
LABEL_32:
    result = Hasher._finalize()();
    v19 = -1 << *(v4 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v19) >> 6;
      while (++v21 != v23 || (v22 & 1) == 0)
      {
        v24 = v21 == v23;
        if (v21 == v23)
        {
          v21 = 0;
        }

        v22 |= v24;
        v25 = *(v10 + 8 * v21);
        if (v25 != -1)
        {
          v11 = __clz(__rbit64(~v25)) + (v21 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_45;
    }

    v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
    v12 = *(v4 + 48) + 40 * v11;
    v13 = v31[0];
    v14 = v31[1];
    *(v12 + 32) = v32;
    *v12 = v13;
    *(v12 + 16) = v14;
    ++*(v4 + 16);
  }

  v16 = v5;
  while (1)
  {
    v5 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v5 >= v9)
    {

      goto LABEL_43;
    }

    v17 = *(v2 + 56 + 8 * v5);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v8 = (v17 - 1) & v17;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for Toolbar.BarLocation(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFEA && *(a1 + 40))
  {
    return (*a1 + 2147483627);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 20;
  if (v4 >= 0x16)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t UIKitToolbarStrategy.updateNavigationLargeSubtitle()(void (*a1)(void *, uint64_t, void **), SEL *a2, SEL *a3, __n128 a4)
{
  v5 = *v4;
  if (*v4)
  {
    outlined init with copy of PushTarget?((v4 + 1), v12, &lazy cache variable for type metadata for Toolbar.UpdateContext?, &type metadata for Toolbar.UpdateContext);
    if (v13)
    {
      outlined init with take of Toolbar.UpdateContext(v12, v14);
      v9 = v5;
      closure #1 in UIKitToolbarStrategy.updateBarLargeTitle()(v9, a1, a2, a3, v12, a4);

      outlined destroy of Toolbar.UpdateContext(v14);
      return v12[0];
    }

    outlined destroy of PushTarget?(v12, &lazy cache variable for type metadata for Toolbar.UpdateContext?, &type metadata for Toolbar.UpdateContext);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized ToolbarStrategy.withUpdate<A>(_:)(void (*a1)(void *__return_ptr))
{
  v2 = *v1;
  if (*v1)
  {
    outlined init with copy of PushTarget?((v1 + 1), v6, &lazy cache variable for type metadata for Toolbar.UpdateContext?, &type metadata for Toolbar.UpdateContext);
    if (v6[11])
    {
      outlined init with take of Toolbar.UpdateContext(v6, v7);
      v4 = v2;
      a1(v6);

      outlined destroy of Toolbar.UpdateContext(v7);
      return v6[0];
    }

    outlined destroy of PushTarget?(v6, &lazy cache variable for type metadata for Toolbar.UpdateContext?, &type metadata for Toolbar.UpdateContext);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v2 = *v1;
  if (*v1)
  {
    outlined init with copy of PushTarget?((v1 + 1), v6, &lazy cache variable for type metadata for Toolbar.UpdateContext?, &type metadata for Toolbar.UpdateContext);
    if (v6[11])
    {
      outlined init with take of Toolbar.UpdateContext(v6, v7);
      v4 = v2;
      a1(v6);

      outlined destroy of Toolbar.UpdateContext(v7);
      return LOBYTE(v6[0]);
    }

    outlined destroy of PushTarget?(v6, &lazy cache variable for type metadata for Toolbar.UpdateContext?, &type metadata for Toolbar.UpdateContext);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void closure #1 in UIKitToolbarStrategy.barButtonItems(in:)(uint64_t a1@<X1>, uint64_t a2@<X2>, void (*a3)(char *, uint64_t *)@<X3>, void *a4@<X8>)
{
  outlined init with copy of Toolbar.UpdateContext(a1, v13);
  Strong = swift_unknownObjectWeakLoadStrong();
  outlined destroy of Toolbar.UpdateContext(v13);
  if (Strong)
  {
    v15 = Strong;
    v16 = 2;
    v12 = MEMORY[0x1E69E7CC0];
    memset(v13, 0, sizeof(v13));
    v14 = xmmword_18CD90770;
    v8 = specialized static Toolbar.BarLocation.== infix(_:_:)(a2, v13);
    outlined destroy of Toolbar.BarLocation(v13);
    if (v8)
    {
      v16 = 0;
    }

    v9 = specialized ToolbarBridge.entryCount(in:)();
    if (__OFSUB__(v9, 1))
    {
      __break(1u);
    }

    else
    {
      v13[0] = 0;
      MEMORY[0x1EEE9AC00](v9);
      v11[2] = &v15;
      v11[3] = v13;
      v11[4] = a2;
      v11[5] = v10;
      v11[6] = &v12;
      specialized ToolbarBridge.adjustEntries(in:_:)(a2, a3, v11);
      *a4 = v12;
    }
  }

  else
  {
    *a4 = MEMORY[0x1E69E7CC0];
  }
}

uint64_t closure #1 in UIKitToolbarStrategy.updateKeyboardBar()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = MEMORY[0x1E69E7CC0];
  v14 = MEMORY[0x1E69E7CC0];
  outlined init with copy of Toolbar.UpdateContext(a2, v12);
  Strong = swift_unknownObjectWeakLoadStrong();
  outlined destroy of Toolbar.UpdateContext(v12);
  memset(v12, 0, sizeof(v12));
  v13 = xmmword_18CD90780;
  v7 = Strong;
  specialized ToolbarBridge.adjustEntries(in:_:)(v12, a1, Strong, 2 * (Strong != 0), &v14);

  outlined destroy of Toolbar.BarLocation(v12);
  v8 = a1 + direct field offset for ToolbarBridge.platformVended;
  swift_beginAccess();
  v9 = type metadata accessor for Toolbar.PlatformVended(0);
  v10 = *(v8 + *(v9 + 48));
  if (!v10)
  {
    type metadata accessor for InputAccessoryGenerator();
    v10 = swift_allocObject();
    v10[3] = 0;
    v10[4] = 0;
    v10[2] = v5;
    *(v8 + *(v9 + 48)) = v10;
  }

  v10[2] = v14;

  InputAccessoryGenerator.updateHostIfNeeded()();

  *a3 = 1;
}

uint64_t specialized ToolbarBridge.adjustEntries(in:_:)(uint64_t a1, uint64_t a2, void *a3, unsigned int a4, void *a5)
{
  v68 = a5;
  v65 = a4;
  v71 = type metadata accessor for ToolbarStorage.Entry.Kind(0);
  MEMORY[0x1EEE9AC00](v71);
  v74 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ToolbarStorage.Item(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolbarStorage.Entry(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v76 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = direct field offset for ToolbarBridge.storageByLocation;
  swift_beginAccess();
  v64 = a2;
  v62 = v15;
  v16 = *(a2 + v15);
  if (*(v16 + 16) && (v17 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v18 & 1) != 0))
  {
    v19 = (*(v16 + 56) + 24 * v17);
    v21 = *v19;
    v20 = v19[1];
    v22 = v19[2];

    v75 = v20;
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC0];
    v75 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7SwiftUI14ToolbarStorageV5EntryVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v22 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7SwiftUI7ToolbarO10VendedItemOTt0g5Tf4g_n(v21);
  }

  v63 = a1;
  swift_endAccess();
  v23 = *(v21 + 16);
  if (!v23)
  {
    v26 = v75;
LABEL_43:
    v58 = v64;
    v59 = v62;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v77 = *(v58 + v59);
    *(v58 + v59) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v21, v26, v22, v63, isUniquelyReferenced_nonNull_native);
    *(v58 + v59) = v77;
    swift_endAccess();
  }

  v66 = v11;
  v67 = a3;
  v24 = 0;
  v25 = (v21 + 40);
  v69 = v13;
  v26 = v75;
  v72 = v23;
  v73 = v21;
  while (v24 < *(v21 + 16))
  {
    if (*(v26 + 16))
    {
      v28 = *(v25 - 1);
      v27 = *v25;

      v29 = specialized __RawDictionaryStorage.find<A>(_:)(v28, v27);
      if (v30)
      {
        outlined init with copy of ToolbarStorage.GroupItem.GroupSubItem(*(v26 + 56) + *(v13 + 72) * v29, v76, type metadata accessor for ToolbarStorage.Entry);
        v31 = swift_isUniquelyReferenced_nonNull_native();
        v78 = v22;
        v33 = specialized __RawDictionaryStorage.find<A>(_:)(v28, v27);
        v34 = v22[2];
        v35 = (v32 & 1) == 0;
        v36 = v34 + v35;
        if (__OFADD__(v34, v35))
        {
          goto LABEL_45;
        }

        v37 = v32;
        if (v22[3] >= v36)
        {
          v40 = v74;
          if (v31)
          {
            if ((v32 & 1) == 0)
            {
              goto LABEL_22;
            }
          }

          else
          {
            specialized _NativeDictionary.copy()();
            if ((v37 & 1) == 0)
            {
              goto LABEL_22;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v36, v31);
          v38 = specialized __RawDictionaryStorage.find<A>(_:)(v28, v27);
          v40 = v74;
          if ((v37 & 1) != (v39 & 1))
          {
            goto LABEL_47;
          }

          v33 = v38;
          if ((v37 & 1) == 0)
          {
LABEL_22:
            v42 = 0;
            v43 = 255;
LABEL_23:
            outlined init with copy of ToolbarStorage.GroupItem.GroupSubItem(v76, v40, type metadata accessor for ToolbarStorage.Entry.Kind);
            if (swift_getEnumCaseMultiPayload())
            {
              outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v40, type metadata accessor for ToolbarStorage.Entry.Kind);
              if (v43 != 255)
              {
                goto LABEL_25;
              }

LABEL_37:

              if (v37)
              {
                v22 = v78;
                outlined destroy of String(v78[6] + 16 * v33);
                specialized _NativeDictionary._delete(at:)(v33, v22);
LABEL_39:
                outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v76, type metadata accessor for ToolbarStorage.Entry);
              }

              else
              {
                outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v76, type metadata accessor for ToolbarStorage.Entry);
                v22 = v78;
              }

LABEL_40:
              v23 = v72;
              v21 = v73;
              v26 = v75;
              goto LABEL_8;
            }

            v46 = v66;
            outlined init with take of ToolbarStorage.Item(v40, v66, type metadata accessor for ToolbarStorage.Item);
            if (v67)
            {
              v47 = v67;
              outlined consume of OpenURLOptions?(v42, v43);
              v70 = specialized static UIKitBarButtonItem.makeVended(item:context:)(v46, v47, v65);
              LOBYTE(v43) = v48;
              v50 = v49;

              outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v46, type metadata accessor for ToolbarStorage.Item);
              if (v50)
              {
                v44 = v50;
                goto LABEL_30;
              }

              goto LABEL_33;
            }

            outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v46, type metadata accessor for ToolbarStorage.Item);
            v13 = v69;
            if (v43 == 255)
            {
              goto LABEL_37;
            }

LABEL_25:
            if (v37)
            {
LABEL_26:

              v22 = v78;
              v45 = v78[7] + 16 * v33;
              *v45 = v42;
              *(v45 + 8) = v43;
              goto LABEL_39;
            }

LABEL_34:
            v22 = v78;
            v78[(v33 >> 6) + 8] |= 1 << v33;
            v53 = (v22[6] + 16 * v33);
            *v53 = v28;
            v53[1] = v27;
            v54 = v22[7] + 16 * v33;
            *v54 = v42;
            *(v54 + 8) = v43;
            outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(v76, type metadata accessor for ToolbarStorage.Entry);
            v55 = v22[2];
            v56 = __OFADD__(v55, 1);
            v57 = v55 + 1;
            if (v56)
            {
              goto LABEL_46;
            }

            v22[2] = v57;
            goto LABEL_40;
          }
        }

        v41 = v78[7] + 16 * v33;
        v42 = *v41;
        v43 = *(v41 + 8);
        if (v43 != 1)
        {
          goto LABEL_23;
        }

        v70 = *v41;
        v44 = v42;
LABEL_30:
        v51 = v44;
        v52 = v68;
        MEMORY[0x18D00CC30]();
        if (*((*v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

LABEL_33:
        v13 = v69;
        v42 = v70;
        if (v37)
        {
          goto LABEL_26;
        }

        goto LABEL_34;
      }
    }

LABEL_8:
    ++v24;
    v25 += 2;
    if (v23 == v24)
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t closure #1 in UIKitToolbarStrategy.updateTabBottomBarEntry(placement:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, BOOL *a3@<X8>)
{
  v164 = a3;
  v163 = type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem(0);
  v162 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163);
  v153 = &v141 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v160 = &v141 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v161 = &v141 - v9;
  v10 = MEMORY[0x1E69E6720];
  type metadata accessor for PlatformItemList.Item?(0, &lazy cache variable for type metadata for ToolbarStorage.GroupItem.GroupSubItem?, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v141 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v152 = &v141 - v15;
  v16 = type metadata accessor for ToolbarStorage.GroupItem(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v154 = &v141 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlatformItemList.Item?(0, &lazy cache variable for type metadata for ToolbarStorage.Entry.Kind?, type metadata accessor for ToolbarStorage.Entry.Kind, v10);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v157 = &v141 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v155 = &v141 - v21;
  type metadata accessor for (key: String, value: ToolbarStorage.Entry)(0);
  v174 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v173 = (&v141 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v24);
  v172 = (&v141 - v25);
  MEMORY[0x1EEE9AC00](v26);
  v171 = (&v141 - v27);
  MEMORY[0x1EEE9AC00](v28);
  v170 = &v141 - v29;
  v156 = type metadata accessor for ToolbarStorage.Entry(0);
  v180 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v175 = &v141 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlatformItemList.Item?(0, &lazy cache variable for type metadata for ToolbarStorage.Entry?, type metadata accessor for ToolbarStorage.Entry, v10);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v176 = &v141 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v158 = &v141 - v34;
  type metadata accessor for PlatformItemList.Item?(0, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item, v10);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v37 = &v141 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v141 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v141 - v42;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v141 - v45;
  MEMORY[0x1EEE9AC00](v47);
  v159 = &v141 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v141 - v50;
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v141 - v53;
  outlined init with copy of Toolbar.BarLocation(a2, &v181);
  if (v182 != 14)
  {
    *v164 = 0;
    return outlined destroy of Toolbar.BarLocation(&v181);
  }

  v142 = v46;
  v149 = v43;
  v55 = a1 + direct field offset for ToolbarBridge.platformVended;
  swift_beginAccess();
  v147 = type metadata accessor for Toolbar.PlatformVended(0);
  v56 = *(v147 + 44);
  v148 = v55;
  outlined init with copy of PlatformItemList.Item?(v55 + v56, v54, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item, MEMORY[0x1E69E6720]);
  v57 = specialized ToolbarBridge.entries(in:)(a2);
  v58 = *(v57 + 16);
  if (v58)
  {
    v150 = v13;
    v151 = v51;
    v143 = v54;
    v144 = v37;
    v145 = v40;
    v146 = a2;
    v181 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v58, 0);
    v179 = v181;
    v59 = v57 + 64;
    result = _HashTable.startBucket.getter();
    v61 = result;
    v62 = 0;
    v63 = *(v57 + 36);
    v165 = v57 + 72;
    v166 = v58;
    v169 = v57 + 64;
    v167 = v63;
    v168 = v57;
    while ((v61 & 0x8000000000000000) == 0 && v61 < 1 << *(v57 + 32))
    {
      v66 = v61 >> 6;
      if ((*(v59 + 8 * (v61 >> 6)) & (1 << v61)) == 0)
      {
        goto LABEL_56;
      }

      if (v63 != *(v57 + 36))
      {
        goto LABEL_57;
      }

      v177 = v62;
      v67 = v174;
      v68 = *(v174 + 48);
      v69 = *(v57 + 56);
      v70 = (*(v57 + 48) + 16 * v61);
      v72 = *v70;
      v71 = v70[1];
      v178 = *(v180 + 72);
      v73 = v170;
      outlined init with copy of ToolbarStorage.Entry.Kind(v69 + v178 * v61, &v170[v68], type metadata accessor for ToolbarStorage.Entry);
      v74 = v171;
      *v171 = v72;
      *(v74 + 8) = v71;
      outlined init with take of ToolbarStorage.NavigationProperties(&v73[v68], v74 + *(v67 + 48), type metadata accessor for ToolbarStorage.Entry);
      v75 = v172;
      outlined init with copy of ToolbarStorage.Entry.Kind(v74, v172, type metadata accessor for (key: String, value: ToolbarStorage.Entry));
      v76 = v75[1];
      v77 = *(v67 + 48);
      v78 = v173;
      *v173 = *v75;
      *(v78 + 8) = v76;
      outlined init with take of ToolbarStorage.NavigationProperties(v75 + v77, v78 + v77, type metadata accessor for ToolbarStorage.Entry);
      v79 = v78 + v77;
      v80 = v175;
      outlined init with copy of ToolbarStorage.Entry.Kind(v79, v175, type metadata accessor for ToolbarStorage.Entry);

      outlined destroy of ToolbarStorage.NavigationProperties(v78, type metadata accessor for (key: String, value: ToolbarStorage.Entry));
      outlined destroy of ToolbarStorage.NavigationProperties(v74, type metadata accessor for (key: String, value: ToolbarStorage.Entry));
      v81 = v179;
      v181 = v179;
      v83 = *(v179 + 16);
      v82 = *(v179 + 24);
      if (v83 >= v82 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v82 > 1), v83 + 1, 1);
        v80 = v175;
        v81 = v181;
      }

      *(v81 + 16) = v83 + 1;
      v84 = *(v180 + 80);
      v179 = v81;
      result = outlined init with take of ToolbarStorage.NavigationProperties(v80, v81 + ((v84 + 32) & ~v84) + v83 * v178, type metadata accessor for ToolbarStorage.Entry);
      v57 = v168;
      v64 = 1 << *(v168 + 32);
      v59 = v169;
      if (v61 >= v64)
      {
        goto LABEL_58;
      }

      v85 = *(v169 + 8 * v66);
      if ((v85 & (1 << v61)) == 0)
      {
        goto LABEL_59;
      }

      LODWORD(v63) = v167;
      if (v167 != *(v168 + 36))
      {
        goto LABEL_60;
      }

      v86 = v85 & (-2 << (v61 & 0x3F));
      if (v86)
      {
        v64 = __clz(__rbit64(v86)) | v61 & 0x7FFFFFFFFFFFFFC0;
        v65 = v176;
      }

      else
      {
        v87 = v66 << 6;
        v88 = v66 + 1;
        v89 = (v165 + 8 * v66);
        v65 = v176;
        while (v88 < (v64 + 63) >> 6)
        {
          v91 = *v89++;
          v90 = v91;
          v87 += 64;
          ++v88;
          if (v91)
          {
            result = outlined consume of Set<UIOpenURLContext>.Index._Variant(v61, v167, 0);
            v64 = __clz(__rbit64(v90)) + v87;
            goto LABEL_5;
          }
        }

        result = outlined consume of Set<UIOpenURLContext>.Index._Variant(v61, v167, 0);
      }

LABEL_5:
      v62 = v177 + 1;
      v61 = v64;
      if (v177 + 1 == v166)
      {

        a2 = v146;
        v40 = v145;
        v37 = v144;
        v54 = v143;
        v51 = v151;
        v13 = v150;
        v92 = v179;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v92 = MEMORY[0x1E69E7CC0];
  v65 = v176;
LABEL_24:
  v93 = v158;
  if (*(v92 + 16))
  {
    v94 = v180;
    outlined init with copy of ToolbarStorage.Entry.Kind(v92 + ((*(v180 + 80) + 32) & ~*(v180 + 80)), v158, type metadata accessor for ToolbarStorage.Entry);
    v95 = 0;
  }

  else
  {
    v95 = 1;
    v94 = v180;
  }

  v96 = v95;
  v97 = v156;
  (*(v94 + 56))(v93, v96, 1, v156);
  outlined init with copy of PlatformItemList.Item?(v93, v65, &lazy cache variable for type metadata for ToolbarStorage.Entry?, type metadata accessor for ToolbarStorage.Entry, MEMORY[0x1E69E6720]);
  if ((*(v94 + 48))(v65, 1, v97) == 1)
  {
    v98 = v93;
    v99 = MEMORY[0x1E69E6720];
    outlined destroy of ToolbarStorage.NavigationProperties?(v98, &lazy cache variable for type metadata for ToolbarStorage.Entry?, type metadata accessor for ToolbarStorage.Entry, MEMORY[0x1E69E6720]);
    outlined destroy of ToolbarStorage.NavigationProperties?(v65, &lazy cache variable for type metadata for ToolbarStorage.Entry?, type metadata accessor for ToolbarStorage.Entry, v99);
    v100 = type metadata accessor for ToolbarStorage.Entry.Kind(0);
    v101 = v155;
    (*(*(v100 - 8) + 56))(v155, 1, 1, v100);
    outlined destroy of ToolbarStorage.NavigationProperties?(v101, &lazy cache variable for type metadata for ToolbarStorage.Entry.Kind?, type metadata accessor for ToolbarStorage.Entry.Kind, v99);
LABEL_39:
    v121 = type metadata accessor for ToolbarStorage.Item(0);
    (*(*(v121 - 8) + 56))(v51, 1, 1, v121);
    goto LABEL_40;
  }

  v102 = v65;
  v103 = v65;
  v104 = v155;
  outlined init with copy of ToolbarStorage.Entry.Kind(v102, v155, type metadata accessor for ToolbarStorage.Entry.Kind);
  outlined destroy of ToolbarStorage.NavigationProperties(v103, type metadata accessor for ToolbarStorage.Entry);
  v105 = type metadata accessor for ToolbarStorage.Entry.Kind(0);
  (*(*(v105 - 8) + 56))(v104, 0, 1, v105);
  _s7SwiftUI14ToolbarStorageV20NavigationPropertiesVSgWObTm_0(v104, v157, &lazy cache variable for type metadata for ToolbarStorage.Entry.Kind?, type metadata accessor for ToolbarStorage.Entry.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v150 = v13;
    v151 = v51;
    v108 = v154;
    result = outlined init with take of ToolbarStorage.NavigationProperties(v157, v154, type metadata accessor for ToolbarStorage.GroupItem);
    v109 = *(v108 + 152);
    v180 = *(v109 + 16);
    if (v180)
    {
      v110 = 0;
      while (v110 < *(v109 + 16))
      {
        v111 = v161;
        outlined init with copy of ToolbarStorage.Entry.Kind(v109 + ((*(v162 + 80) + 32) & ~*(v162 + 80)) + *(v162 + 72) * v110, v161, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
        v112 = v160;
        outlined init with copy of ToolbarStorage.Entry.Kind(v111, v160, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          v128 = v159;
          outlined init with take of ToolbarStorage.NavigationProperties(v112, v159, type metadata accessor for ToolbarStorage.Item);
          v129 = type metadata accessor for ToolbarStorage.Item(0);
          (*(*(v129 - 8) + 56))(v128, 0, 1, v129);
          v130 = MEMORY[0x1E69E6720];
          outlined destroy of ToolbarStorage.NavigationProperties?(v158, &lazy cache variable for type metadata for ToolbarStorage.Entry?, type metadata accessor for ToolbarStorage.Entry, MEMORY[0x1E69E6720]);
          outlined destroy of ToolbarStorage.NavigationProperties?(v128, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item, v130);
          outlined destroy of ToolbarStorage.NavigationProperties(v154, type metadata accessor for ToolbarStorage.GroupItem);
          v120 = v152;
          outlined init with take of ToolbarStorage.NavigationProperties(v111, v152, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
          v119 = 0;
          goto LABEL_48;
        }

        ++v110;
        outlined destroy of ToolbarStorage.NavigationProperties(v112, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
        v113 = type metadata accessor for ToolbarStorage.Item(0);
        v114 = v40;
        v115 = v54;
        v116 = v37;
        v117 = v159;
        (*(*(v113 - 8) + 56))(v159, 1, 1, v113);
        outlined destroy of ToolbarStorage.NavigationProperties(v111, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
        v118 = v117;
        v37 = v116;
        v54 = v115;
        v40 = v114;
        result = outlined destroy of ToolbarStorage.NavigationProperties?(v118, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item, MEMORY[0x1E69E6720]);
        if (v180 == v110)
        {
          goto LABEL_37;
        }
      }

LABEL_61:
      __break(1u);
      return result;
    }

LABEL_37:
    outlined destroy of ToolbarStorage.NavigationProperties?(v158, &lazy cache variable for type metadata for ToolbarStorage.Entry?, type metadata accessor for ToolbarStorage.Entry, MEMORY[0x1E69E6720]);
    outlined destroy of ToolbarStorage.NavigationProperties(v154, type metadata accessor for ToolbarStorage.GroupItem);
    v119 = 1;
    v120 = v152;
LABEL_48:
    v131 = v162;
    v132 = v163;
    (*(v162 + 56))(v120, v119, 1, v163);
    v133 = v120;
    v134 = v150;
    _s7SwiftUI14ToolbarStorageV20NavigationPropertiesVSgWObTm_0(v133, v150, &lazy cache variable for type metadata for ToolbarStorage.GroupItem.GroupSubItem?, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
    v135 = (*(v131 + 48))(v134, 1, v132);
    v51 = v151;
    v136 = v153;
    if (v135 == 1)
    {
      outlined destroy of ToolbarStorage.NavigationProperties?(v134, &lazy cache variable for type metadata for ToolbarStorage.GroupItem.GroupSubItem?, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem, MEMORY[0x1E69E6720]);
      v137 = type metadata accessor for ToolbarStorage.Item(0);
      v138 = v142;
      (*(*(v137 - 8) + 56))(v142, 1, 1, v137);
    }

    else
    {
      outlined init with copy of ToolbarStorage.Entry.Kind(v134, v153, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        outlined destroy of ToolbarStorage.NavigationProperties(v136, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
        v139 = 1;
        v138 = v142;
      }

      else
      {
        v138 = v142;
        outlined init with take of ToolbarStorage.NavigationProperties(v136, v142, type metadata accessor for ToolbarStorage.Item);
        v139 = 0;
      }

      v140 = type metadata accessor for ToolbarStorage.Item(0);
      (*(*(v140 - 8) + 56))(v138, v139, 1, v140);
      outlined destroy of ToolbarStorage.NavigationProperties(v134, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
    }

    _s7SwiftUI14ToolbarStorageV20NavigationPropertiesVSgWObTm_0(v138, v51, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      outlined destroy of ToolbarStorage.NavigationProperties?(v93, &lazy cache variable for type metadata for ToolbarStorage.Entry?, type metadata accessor for ToolbarStorage.Entry, MEMORY[0x1E69E6720]);
      outlined destroy of ToolbarStorage.NavigationProperties(v157, type metadata accessor for ToolbarStorage.Entry.Kind);
      goto LABEL_39;
    }

    outlined destroy of ToolbarStorage.NavigationProperties?(v93, &lazy cache variable for type metadata for ToolbarStorage.Entry?, type metadata accessor for ToolbarStorage.Entry, MEMORY[0x1E69E6720]);
    outlined init with take of ToolbarStorage.NavigationProperties(v157, v51, type metadata accessor for ToolbarStorage.Item);
    v107 = type metadata accessor for ToolbarStorage.Item(0);
    (*(*(v107 - 8) + 56))(v51, 0, 1, v107);
  }

LABEL_40:
  outlined init with copy of Toolbar.BarLocation(a2, &v181);
  if (v182 == 14)
  {
    v122 = MEMORY[0x1E69E6720];
    v123 = v149;
    outlined init with copy of PlatformItemList.Item?(v51, v149, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item, MEMORY[0x1E69E6720]);
    v124 = v148;
    swift_beginAccess();
    outlined assign with take of Toolbar.UpdateContext?(v123, v124 + *(v147 + 44), &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item, v122, type metadata accessor for PlatformItemList.Item?);
    swift_endAccess();
  }

  else
  {
    outlined destroy of Toolbar.BarLocation(&v181);
  }

  _s7SwiftUI14ToolbarStorageV20NavigationPropertiesVSgWObTm_0(v51, v40, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item);
  v125 = type metadata accessor for ToolbarStorage.Item(0);
  v126 = *(*(v125 - 8) + 48);
  if (v126(v40, 1, v125) == 1)
  {
    outlined destroy of ToolbarStorage.NavigationProperties?(v40, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item, MEMORY[0x1E69E6720]);
    _s7SwiftUI14ToolbarStorageV20NavigationPropertiesVSgWObTm_0(v54, v37, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item);
    v127 = v126(v37, 1, v125) != 1;
    v40 = v37;
  }

  else
  {
    outlined destroy of ToolbarStorage.NavigationProperties?(v54, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item, MEMORY[0x1E69E6720]);
    v127 = 1;
  }

  result = outlined destroy of ToolbarStorage.NavigationProperties?(v40, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item, MEMORY[0x1E69E6720]);
  *v164 = v127;
  return result;
}

uint64_t closure #1 in UIKitToolbarStrategy.updateTabSidebarOverflowMenu()@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = a1 + direct field offset for ToolbarBridge.platformVended;
  swift_beginAccess();
  v4 = *(v3 + 48);
  memset(v11, 0, sizeof(v11));
  v12 = xmmword_18CDA90E0;

  v5 = specialized ToolbarStrategy.withUpdate<A>(_:)(partial apply for closure #1 in UIKitToolbarStrategy.barButtonItems(in:));
  outlined destroy of Toolbar.BarLocation(v11);
  v6 = specialized _arrayConditionalCast<A, B>(_:)(v5);

  if (v6)
  {
    *(v3 + 48) = v6;

    if (v6 >> 62)
    {
      v7 = __CocoaSet.count.getter();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v7 < 1)
    {
      if (v4 >> 62)
      {
        v10 = __CocoaSet.count.getter();
      }

      else
      {
        v10 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v9 = v10 > 0;
    }

    else
    {

      v9 = 1;
    }
  }

  else
  {

    v9 = 0;
  }

  *a2 = v9;
  return result;
}

uint64_t type metadata completion function for ToolbarStorage.GroupItem.GroupSubItem(uint64_t a1)
{
  result = type metadata accessor for ToolbarStorage.Item(319);
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void type metadata accessor for (key: String, value: ToolbarStorage.Entry)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (key: String, value: ToolbarStorage.Entry))
  {
    type metadata accessor for ToolbarStorage.Entry(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (key: String, value: ToolbarStorage.Entry));
    }
  }
}

uint64_t sub_18BDFD66C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ToolbarStorage.Entry.Kind(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t BarAppearanceBridge.updateNavigationTitleStorage(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = (v1 + OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_lastNavigationTitleStorage);
  v4 = *(v1 + OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_lastNavigationTitleStorage + 16);
  v22 = *(v1 + OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_lastNavigationTitleStorage);
  v23 = v4;
  *v24 = *(v1 + OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_lastNavigationTitleStorage + 32);
  *&v24[9] = *(v1 + OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_lastNavigationTitleStorage + 41);
  v18[0] = v2;
  v5 = MEMORY[0x1E69E6720];
  outlined init with copy of NavigationTitleStorage?(&v22, &v19, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage, MEMORY[0x1E69E6720]);
  PreferenceValues.subscript.getter();
  *&v27[9] = *(v21 + 9);
  v26 = v20;
  *v27 = v21[0];
  v25 = v19;
  v6 = v3[1];
  v19 = *v3;
  v20 = v6;
  v21[0] = v3[2];
  *(v21 + 9) = *(v3 + 41);
  v7 = *v27;
  v3[1] = v26;
  v3[2] = v7;
  *(v3 + 41) = *&v27[9];
  *v3 = v25;
  outlined init with copy of NavigationTitleStorage?(&v25, v18, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage, v5);
  _s7SwiftUI22NavigationTitleStorageVSgWOhTm_0(&v19, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage);
  if (*(&v26 + 1) == 1)
  {
    v8 = 3;
  }

  else
  {
    v8 = v27[24];
  }

  if (*(&v23 + 1) == 1 || v24[24] == 3)
  {
    if (v8 != 3)
    {
      goto LABEL_7;
    }

LABEL_9:
    _s7SwiftUI22NavigationTitleStorageVSgWOhTm_0(&v22, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage);
    v13 = &v25;
    v11 = &lazy cache variable for type metadata for NavigationTitleStorage?;
    v12 = &type metadata for NavigationTitleStorage;
    return _s7SwiftUI22NavigationTitleStorageVSgWOhTm_0(v13, v11, v12);
  }

  if (v24[24] == v8)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  v9 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_toUpdateBars;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v1 + v9);
  *(v1 + v9) = 0x8000000000000000;
  specialized _NativeSet.update(with:isUnique:)(v16, isUniquelyReferenced_nonNull_native, v18);
  *(v1 + v9) = v15;
  swift_endAccess();
  _s7SwiftUI22NavigationTitleStorageVSgWOhTm_0(&v22, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage);
  _s7SwiftUI22NavigationTitleStorageVSgWOhTm_0(&v25, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage);
  v11 = &lazy cache variable for type metadata for ToolbarPlacement.Role?;
  v12 = &type metadata for ToolbarPlacement.Role;
  v13 = v18;
  return _s7SwiftUI22NavigationTitleStorageVSgWOhTm_0(v13, v11, v12);
}

uint64_t outlined init with copy of NavigationTitleStorage?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  type metadata accessor for Published<Visibility>(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_18BDFDA70(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    _s7SwiftUI16CommandOperationVSgMaTm_0(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
    v10 = v9;
    v11 = *(*(v9 - 8) + 48);
    v12 = a1 + *(a3 + 112);

    return v11(v12, a2, v10);
  }
}

uint64_t specialized ToolbarStrategy.withUpdate<A>(_:)(void (*a1)(void))
{
  v2 = *v1;
  if (*v1)
  {
    outlined init with copy of PushTarget?((v1 + 1), v6, &lazy cache variable for type metadata for Toolbar.UpdateContext?, &type metadata for Toolbar.UpdateContext);
    if (v7)
    {
      outlined init with take of Toolbar.UpdateContext(v6, v8);
      v4 = v2;
      a1();

      return outlined destroy of Toolbar.UpdateContext(v8);
    }

    outlined destroy of PushTarget?(v6, &lazy cache variable for type metadata for Toolbar.UpdateContext?, &type metadata for Toolbar.UpdateContext);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void UIKitToolbarStrategy.destroyInferredToolbar()()
{
  v1 = *v0;
  if (*v0)
  {
    outlined init with copy of PushTarget?((v0 + 1), v5, &lazy cache variable for type metadata for Toolbar.UpdateContext?, &type metadata for Toolbar.UpdateContext);
    if (v6)
    {
      v2 = v1;
      outlined destroy of PushTarget?(v5, &lazy cache variable for type metadata for Toolbar.UpdateContext?, &type metadata for Toolbar.UpdateContext);
      v3 = &v2[direct field offset for ToolbarBridge.platformVended];
      swift_beginAccess();
      v4 = *(v3 + 3);
      *(v3 + 3) = 0;

      return;
    }

    outlined destroy of PushTarget?(v5, &lazy cache variable for type metadata for Toolbar.UpdateContext?, &type metadata for Toolbar.UpdateContext);
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void destroy for UIKitToolbarStrategy(uint64_t a1)
{
  if (*(a1 + 96))
  {
    if (*(a1 + 16) != 2)
    {
      MEMORY[0x18D011290](a1 + 8);
    }

    MEMORY[0x18D011290](a1 + 40);
    MEMORY[0x18D011290](a1 + 48);
    MEMORY[0x18D011290](a1 + 64);
    MEMORY[0x18D011290](a1 + 72);
    MEMORY[0x18D011290](a1 + 80);
  }
}

void UINavigationItem.updateTitleIfNeeded(_:isFromSwiftUI:)(void *a1, char a2, SEL *a3, SEL *a4)
{
  v9 = [v4 *a3];
  if (!v9 || (v9, (v10 = [v4 *a3]) != 0) && (v11 = v10, _s7SwiftUI16UIKitBarItemHostCyAA0dE4ViewVGMaTm_0(0, &lazy cache variable for type metadata for UIKitBarItemHost<BarItemView>, lazy protocol witness table accessor for type BarItemView and conformance BarItemView, &type metadata for BarItemView, type metadata accessor for UIKitBarItemHost), v12 = swift_dynamicCastClass(), v11, v12) || (a2 & 1) != 0)
  {
    v13 = [v4 *a3];
    v14 = [a1 *a3];
    if (v13)
    {
      if (v14)
      {
        v15 = v14;

        if (v13 == v15)
        {
          return;
        }

        goto LABEL_13;
      }

      v14 = v13;
    }

    else if (!v14)
    {
      return;
    }

LABEL_13:
    v16 = [a1 *a3];
    [v4 *a4];
  }
}

uint64_t BarAppearanceBridge.preferencesDidChange<A>(_:hostingController:)(uint64_t *a1, void *a2)
{
  v2 = *MEMORY[0x1E69E7D40] & *a2;
  v3 = *a1;
  BarAppearanceBridge.UpdateContext.init<A>(hostingController:)(a2, v10);
  v9 = v3;
  if (BarAppearanceBridge.preferencesDidChange(_:updateContext:)(&v9, v10))
  {
    v4 = specialized UIHostingController.host.getter();
    v6 = type metadata accessor for _UIHostingView(0, *(v2 + 80), *(v2 + 88), v5);
    v7 = v4;
    swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v6);
    ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
  }

  swift_unknownObjectWeakAssign();
  return outlined destroy of BarAppearanceBridge.UpdateContext(v10);
}

uint64_t BarAppearanceBridge.preferencesDidChange(_:updateContext:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v4 = *a1;
  outlined init with copy of BarAppearanceBridge.UpdateContext(a2, &v19);
  v5 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_updateContext;
  swift_beginAccess();
  outlined assign with take of BarAppearanceBridge.UpdateContext?(&v19, v2 + v5, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext, MEMORY[0x1E69E6720], type metadata accessor for Published<Visibility>);
  swift_endAccess();
  v6 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_seedTracker;
  swift_beginAccess();
  v7 = *(v2 + v6);
  *&v19 = v4;

  v8 = VersionSeedSetTracker.hasChanges(in:)(&v19, v7);

  v9 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_pendingUpdates;
  v10 = *(v3 + OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_pendingUpdates);
  if (v8)
  {
    *(v3 + OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_pendingUpdates) = v10 | 2;
    v18[0] = v4;
    PreferenceValues.subscript.getter();
    v11 = (v3 + OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_lastNavigationSubtitle);
    v12 = *(v3 + OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_lastNavigationSubtitle);
    v13 = *(v3 + OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_lastNavigationSubtitle + 8);
    v14 = *(v3 + OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_lastNavigationSubtitle + 16);
    v15 = *(v3 + OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_lastNavigationSubtitle + 24);
    v16 = v20;
    *v11 = v19;
    v11[1] = v16;
    outlined consume of Text?(v12, v13, v14, v15);
    *&v19 = v4;
    BarAppearanceBridge.updateNavigationTitleStorage(_:)(&v19);
    outlined init with copy of NavigationTitleStorage?(v3 + v5, v18, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext, MEMORY[0x1E69E6720]);
    if (!v18[0])
    {
      _s7SwiftUI22NavigationTitleStorageVSgWOhTm_0(v18, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext);
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    outlined init with take of BarAppearanceBridge.UpdateContext(v18, &v19);
    closure #1 in BarAppearanceBridge.updateNavigationBar(updating:preferences:)(&v19, v3, v4);
    outlined destroy of BarAppearanceBridge.UpdateContext(&v19);
    *&v19 = v4;
    BarAppearanceBridge.updateConfigurations(_:)(&v19);
    BarAppearanceBridge.updateBarsToConfiguration()();
    v10 = *(v3 + v9);
  }

  v18[0] = v4;
  swift_beginAccess();
  VersionSeedSetTracker.updateSeeds(to:)();
  swift_endAccess();
  if ((*(v3 + v9) & 2) != 0)
  {
    BarAppearanceBridge.platformUpdateNavigationAdaptor()();
  }

  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  swift_beginAccess();
  outlined assign with take of BarAppearanceBridge.UpdateContext?(&v19, v3 + v5, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext, MEMORY[0x1E69E6720], type metadata accessor for Published<Visibility>);
  swift_endAccess();
  *(v3 + v9) = 0;
  return v10;
}

uint64_t sub_18BDFE3DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 68);

    return v10(v11, a2, v9);
  }
}

unint64_t specialized ToolbarBridge.entries(in:)(uint64_t a1)
{
  v3 = direct field offset for ToolbarBridge.storageByLocation;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 24 * v5 + 8);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
    v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7SwiftUI14ToolbarStorageV5EntryVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7SwiftUI7ToolbarO10VendedItemOTt0g5Tf4g_n(v8);
  }

  swift_endAccess();

  return v7;
}

uint64_t sub_18BDFE5A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ToolbarStorage.Entry.Kind(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 <= 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = *(a1 + *(a3 + 20));
    }

    v12 = v11 - 2;
    if (v10 >= 2)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t outlined init with take of ToolbarStorage.NavigationProperties?(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI14ToolbarStorageV20NavigationPropertiesVSgWObTm_0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for PlatformItemList.Item?(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_23Tm()
{
  if (*(v0 + 112))
  {
    if (*(v0 + 32) != 2)
    {
      MEMORY[0x18D011290](v0 + 24);
    }

    MEMORY[0x18D011290](v0 + 56);
    MEMORY[0x18D011290](v0 + 64);
    MEMORY[0x18D011290](v0 + 80);
    MEMORY[0x18D011290](v0 + 88);
    MEMORY[0x18D011290](v0 + 96);
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_23Tm_0()
{

  if (*(v0 + 48))
  {
  }

  v1 = *(v0 + 64);
  if (v1)
  {
    if (v1 == 1)
    {
      goto LABEL_8;
    }
  }

  if (*(v0 + 80))
  {
  }

LABEL_8:

  return swift_deallocObject();
}

uint64_t objectdestroy_23Tm_1()
{

  if (*(v0 + 104))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 80));
  }

  if (*(v0 + 176))
  {
  }

  v1 = *(v0 + 208);
  if (v1 >= 3)
  {
  }

  if (*(v0 + 280))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 256));
  }

  return swift_deallocObject();
}

uint64_t closure #3 in closure #2 in ToolbarBridge.preferencesDidChange(_:context:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *MEMORY[0x1E69E7D40];
  v8 = direct field offset for ToolbarBridge.lastNavigationProperties;
  swift_beginAccess();
  outlined assign with copy of ToolbarStorage.NavigationProperties?(a1, a2 + v8, &lazy cache variable for type metadata for ToolbarStorage.NavigationProperties?, type metadata accessor for ToolbarStorage.NavigationProperties);
  swift_endAccess();
  result = (*(*((v7 & v6) + 0x58) + 112))(*((v7 & v6) + 0x50));
  *(a3 + 11) = result;
  return result;
}

uint64_t protocol witness for ToolbarStrategy.updateProperties() in conformance UIKitToolbarStrategy()
{
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_0(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v4>, MEMORY[0x1E697DF40], MEMORY[0x1E697DF38], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>();
  if ((static SemanticFeature.isEnabled.getter() & 1) == 0)
  {
    return 0;
  }

  if (UIKitToolbarStrategy.updateBarTitle()(closure #1 in UIKitToolbarStrategy.updateTitleMenuProvider()))
  {
    v0 = 2;
  }

  else
  {
    v0 = 0;
  }

  v1 = v0 & 0xFFFFFFFE | UIKitToolbarStrategy.updateBarTitle()(closure #1 in UIKitToolbarStrategy.updateHeaderProperties()) & 1;
  if (UIKitToolbarStrategy.updateBarTitle()(closure #1 in UIKitToolbarStrategy.updateRenameDelegate()))
  {
    return v1 | 4;
  }

  else
  {
    return v1;
  }
}

uint64_t closure #1 in UIKitToolbarStrategy.updateTitleMenuProvider()@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  type metadata accessor for PlatformItemList.Item?(0, &lazy cache variable for type metadata for ToolbarStorage.NavigationProperties?, type metadata accessor for ToolbarStorage.NavigationProperties, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  specialized ToolbarBridge.navigationProperties.getter(&v25 - v8);
  v10 = a1 + direct field offset for ToolbarBridge.platformVended;
  swift_beginAccess();
  v11 = [*(v10 + 8) titleMenuProvider];
  if (v11)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    v26 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray) -> (@autoreleased UIMenu?);
  }

  else
  {
    v26 = 0;
    v12 = 0;
  }

  outlined init with copy of PlatformItemList.Item?(v9, v6, &lazy cache variable for type metadata for ToolbarStorage.NavigationProperties?, type metadata accessor for ToolbarStorage.NavigationProperties, MEMORY[0x1E69E6720]);
  v13 = type metadata accessor for ToolbarStorage.NavigationProperties(0);
  if ((*(*(v13 - 8) + 48))(v6, 1, v13) == 1)
  {
    outlined destroy of ToolbarStorage.NavigationProperties?(v6, &lazy cache variable for type metadata for ToolbarStorage.NavigationProperties?, type metadata accessor for ToolbarStorage.NavigationProperties, MEMORY[0x1E69E6720]);
LABEL_7:
    [*(v10 + 8) setTitleMenuProvider_];
    goto LABEL_12;
  }

  v14 = *(v6 + 2);
  v15 = v6[24];
  outlined copy of ToolbarStorage.NavigationProperties.Actions?(v14, v6[24]);
  outlined destroy of ToolbarStorage.NavigationProperties(v6, type metadata accessor for ToolbarStorage.NavigationProperties);
  if (v15 == 254)
  {
    goto LABEL_7;
  }

  v25 = a2;
  v16 = a1 + direct field offset for ToolbarBridge.lastEnvironment;
  swift_beginAccess();
  if (*(v16 + 8))
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DocumentCommandsKey>, &type metadata for EnvironmentValues.DocumentCommandsKey, &protocol witness table for EnvironmentValues.DocumentCommandsKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DocumentCommandsKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DocumentCommandsKey>, &type metadata for EnvironmentValues.DocumentCommandsKey, &protocol witness table for EnvironmentValues.DocumentCommandsKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DocumentCommandsKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  v17 = aBlock[6];
  swift_endAccess();
  v18 = *(v10 + 8);
  v19 = swift_allocObject();
  *(v19 + 16) = v14;
  *(v19 + 24) = v15;
  *(v19 + 32) = v17;
  aBlock[4] = partial apply for closure #1 in closure #1 in UIKitToolbarStrategy.updateTitleMenuProvider();
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned UIMenu?);
  aBlock[3] = &block_descriptor_18_0;
  v20 = _Block_copy(aBlock);
  v21 = v18;

  [v21 setTitleMenuProvider_];
  _Block_release(v20);

  a2 = v25;
LABEL_12:
  v22 = [*(v10 + 8) titleMenuProvider];
  result = outlined destroy of ToolbarStorage.NavigationProperties?(v9, &lazy cache variable for type metadata for ToolbarStorage.NavigationProperties?, type metadata accessor for ToolbarStorage.NavigationProperties, MEMORY[0x1E69E6720]);
  if (v22)
  {
    _Block_release(v22);
  }

  else if (!v11)
  {
    v24 = 0;
    goto LABEL_16;
  }

  result = outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v26, v12);
  v24 = 1;
LABEL_16:
  *a2 = v24;
  return result;
}

uint64_t sub_18BDFEFE4()
{
  v1 = *(v0 + 24);
  if (v1 != 255)
  {
    outlined consume of PlatformItemCollection.Storage(*(v0 + 16), v1 & 1);
  }

  return swift_deallocObject();
}

uint64_t specialized ToolbarBridge.navigationProperties.getter@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v2 = type metadata accessor for ToolbarStorage.NavigationProperties(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v27 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v26 = &v25 - v6;
  type metadata accessor for (ToolbarStorage.NavigationProperties?, ToolbarStorage.NavigationProperties?)(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1E69E6720];
  type metadata accessor for PlatformItemList.Item?(0, &lazy cache variable for type metadata for ToolbarStorage.NavigationProperties?, type metadata accessor for ToolbarStorage.NavigationProperties, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v25 - v13;
  v15 = direct field offset for ToolbarBridge.lastNavigationProperties;
  swift_beginAccess();
  outlined init with copy of PlatformItemList.Item?(v1 + v15, v14, &lazy cache variable for type metadata for ToolbarStorage.NavigationProperties?, type metadata accessor for ToolbarStorage.NavigationProperties, v11);
  v16 = direct field offset for ToolbarBridge.lastInputNavigationProperties;
  swift_beginAccess();
  v17 = &v10[*(v8 + 56)];
  _s7SwiftUI14ToolbarStorageV20NavigationPropertiesVSgWObTm_0(v14, v10, &lazy cache variable for type metadata for ToolbarStorage.NavigationProperties?, type metadata accessor for ToolbarStorage.NavigationProperties);
  outlined init with copy of PlatformItemList.Item?(v1 + v16, v17, &lazy cache variable for type metadata for ToolbarStorage.NavigationProperties?, type metadata accessor for ToolbarStorage.NavigationProperties, v11);
  v18 = *(v3 + 48);
  LODWORD(v14) = v18(v10, 1, v2);
  v19 = v18(v17, 1, v2);
  if (v14 != 1)
  {
    if (v19 == 1)
    {
      v17 = v10;
    }

    else
    {
      v22 = v26;
      outlined init with take of ToolbarStorage.NavigationProperties(v10, v26, type metadata accessor for ToolbarStorage.NavigationProperties);
      v23 = v27;
      outlined init with take of ToolbarStorage.NavigationProperties(v17, v27, type metadata accessor for ToolbarStorage.NavigationProperties);
      ToolbarStorage.NavigationProperties.merge(_:)(v23);
      outlined destroy of ToolbarStorage.NavigationProperties(v23, type metadata accessor for ToolbarStorage.NavigationProperties);
      v17 = v22;
    }

    v20 = v28;
    goto LABEL_8;
  }

  v20 = v28;
  if (v19 != 1)
  {
LABEL_8:
    outlined init with take of ToolbarStorage.NavigationProperties(v17, v20, type metadata accessor for ToolbarStorage.NavigationProperties);
    v21 = 0;
    return (*(v3 + 56))(v20, v21, 1, v2);
  }

  v21 = 1;
  return (*(v3 + 56))(v20, v21, 1, v2);
}

void type metadata accessor for (ToolbarStorage.NavigationProperties?, ToolbarStorage.NavigationProperties?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (ToolbarStorage.NavigationProperties?, ToolbarStorage.NavigationProperties?))
  {
    type metadata accessor for PlatformItemList.Item?(255, &lazy cache variable for type metadata for ToolbarStorage.NavigationProperties?, type metadata accessor for ToolbarStorage.NavigationProperties, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ToolbarStorage.NavigationProperties?, ToolbarStorage.NavigationProperties?));
    }
  }
}

uint64_t closure #1 in UIKitToolbarStrategy.updateHeaderProperties()@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v138 = a2;
  v3 = MEMORY[0x1E69E6720];
  type metadata accessor for PlatformItemList.Item?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v126 = &v121[-v5];
  v6 = type metadata accessor for URL();
  v131 = *(v6 - 8);
  v132 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v129 = &v121[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v130 = &v121[-v9];
  type metadata accessor for PlatformItemList.Item?(0, &lazy cache variable for type metadata for TitleDocumentContent?, type metadata accessor for TitleDocumentContent, v3);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v121[-v11];
  v13 = type metadata accessor for TitleDocumentContent(0);
  v136 = *(v13 - 8);
  v137 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v133 = &v121[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v134 = &v121[-v16];
  type metadata accessor for PlatformItemList.Item?(0, &lazy cache variable for type metadata for ToolbarStorage.NavigationProperties?, type metadata accessor for ToolbarStorage.NavigationProperties, v3);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v121[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v128 = &v121[-v21];
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v121[-v23];
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v121[-v26];
  specialized ToolbarBridge.navigationProperties.getter(&v121[-v26]);
  v139 = a1;
  v28 = (a1 + direct field offset for ToolbarBridge.lastEnvironment);
  swift_beginAccess();
  v30 = *v28;
  v29 = v28[1];
  v140 = v27;
  outlined init with copy of PlatformItemList.Item?(v27, v24, &lazy cache variable for type metadata for ToolbarStorage.NavigationProperties?, type metadata accessor for ToolbarStorage.NavigationProperties, v3);
  v31 = type metadata accessor for ToolbarStorage.NavigationProperties(0);
  v32 = *(*(v31 - 8) + 48);
  if (v32(v24, 1, v31) == 1)
  {

    v33 = &lazy cache variable for type metadata for ToolbarStorage.NavigationProperties?;
    v34 = type metadata accessor for ToolbarStorage.NavigationProperties;
    v35 = MEMORY[0x1E69E6720];
    v36 = v24;
LABEL_3:
    outlined destroy of ToolbarStorage.NavigationProperties?(v36, v33, v34, v35);
    goto LABEL_7;
  }

  v127 = v32;
  v37 = *v24;
  v38 = v24[8];

  v135 = v37;
  v39 = v37;
  v32 = v127;
  outlined copy of ToolbarStorage.NavigationProperties.DocumentProperties?(v39, v38);
  outlined destroy of ToolbarStorage.NavigationProperties(v24, type metadata accessor for ToolbarStorage.NavigationProperties);
  if (v38 != 255)
  {
    if (v38)
    {
      outlined consume of ToolbarStorage.NavigationProperties.DocumentProperties?(v135, v38);
      goto LABEL_7;
    }

    if (!v135)
    {
      (*(v136 + 56))(v12, 1, 1, v137);
      goto LABEL_20;
    }

    v125 = v29;
    v124 = *(*v135 + 80);
    v44 = outlined copy of ToolbarStorage.NavigationProperties.DocumentProperties(v135, 0);
    v124(v44);
    v45 = v135;
    v46 = outlined consume of ToolbarStorage.NavigationProperties.DocumentProperties?(v135, v38);
    if ((*(v136 + 48))(v12, 1, v137, v46) == 1)
    {
      outlined consume of ToolbarStorage.NavigationProperties.DocumentProperties?(v45, v38);
LABEL_20:
      v33 = &lazy cache variable for type metadata for TitleDocumentContent?;
      v34 = type metadata accessor for TitleDocumentContent;
      v35 = MEMORY[0x1E69E6720];
      v36 = v12;
      goto LABEL_3;
    }

    v51 = v134;
    outlined init with take of ToolbarStorage.NavigationProperties(v12, v134, type metadata accessor for TitleDocumentContent);
    v52 = v51;
    v53 = v133;
    outlined init with copy of ToolbarStorage.Entry.Kind(v52, v133, type metadata accessor for TitleDocumentContent);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v123 = v30;
    v122 = v38;
    if (EnumCaseMultiPayload != 1)
    {
      v67 = v130;
      v66 = v131;
      v68 = *(v131 + 32);
      v69 = v132;
      v68(v130, v53, v132);
      v70 = objc_allocWithZone(type metadata accessor for UIKitDocumentProperties());
      URL._bridgeToObjectiveC()(v71);
      v73 = v72;
      v74 = [v70 initWithURL_];

      v75 = objc_allocWithZone(MEMORY[0x1E696ACA0]);
      URL._bridgeToObjectiveC()(v76);
      v78 = v77;
      v79 = [v75 initWithContentsOfURL_];

      v80 = v129;
      (*(v66 + 16))(v129, v67, v69);
      type metadata accessor for PlatformItemList.Item.SystemItem?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
      v81 = swift_allocObject();
      *(v81 + 16) = xmmword_18CD63400;
      *(v81 + 56) = v69;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v81 + 32));
      v68(boxed_opaque_existential_1, v80, v69);
      v83 = *(v66 + 8);
      v84 = v79;
      v83(v67, v69);
      v85 = 0;
      v86 = 0;
      v87 = 0;
      v88 = &unk_18CD64000;
      if (!v84)
      {
        v45 = v135;
LABEL_53:
        *&aBlock = v81;
        *(&aBlock + 1) = v86;
        v158 = v87;
        v159[0] = v85;
        memset(&v159[8], 0, 64);
        v113 = swift_allocObject();
        v114 = *&v159[48];
        *(v113 + 80) = *&v159[32];
        *(v113 + 96) = v114;
        v115 = *&v159[64];
        v116 = v158;
        *(v113 + 16) = aBlock;
        *(v113 + 32) = v116;
        v117 = *&v159[16];
        *(v113 + 48) = *v159;
        *(v113 + 64) = v117;
        v118 = v123;
        *(v113 + 112) = v115;
        *(v113 + 120) = v118;
        *(v113 + 128) = v125;
        v153 = partial apply for closure #3 in closure #1 in UIKitToolbarStrategy.updateHeaderProperties();
        v154 = v113;
        v149 = MEMORY[0x1E69E9820];
        v150 = v88[216];
        v151 = thunk for @escaping @callee_guaranteed () -> (@owned UIDragPreview?);
        v152 = &block_descriptor_12;
        v119 = _Block_copy(&v149);

        outlined init with copy of AnyShareConfiguration(&aBlock, &v143);

        [v74 setActivityViewControllerProvider_];
        _Block_release(v119);
        v120 = v139 + direct field offset for ToolbarBridge.platformVended;
        swift_beginAccess();
        [*(v120 + 8) setDocumentProperties_];

        outlined destroy of AnyShareConfiguration(&aBlock);
        outlined consume of ToolbarStorage.NavigationProperties.DocumentProperties?(v45, v122);
        outlined destroy of ToolbarStorage.NavigationProperties(v134, type metadata accessor for TitleDocumentContent);
        v48 = MEMORY[0x1E69E6720];
        v49 = v140;
        goto LABEL_18;
      }

      v45 = v135;
LABEL_52:
      v111 = swift_allocObject();
      *(v111 + 16) = v84;
      *v159 = partial apply for closure #2 in closure #1 in UIKitToolbarStrategy.updateHeaderProperties();
      *&v159[8] = v111;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = v88[216];
      *&v158 = thunk for @escaping @callee_guaranteed (@guaranteed UIDragSession) -> (@owned [UIDragItem]);
      *(&v158 + 1) = &block_descriptor_38;
      v112 = _Block_copy(&aBlock);
      v84 = v84;
      v88 = &unk_18CD64000;

      [v74 setDragItemsProvider_];
      _Block_release(v112);

      goto LABEL_53;
    }

    v55 = *(v53 + 5);
    *&v159[32] = *(v53 + 4);
    *&v159[48] = v55;
    *&v159[64] = *(v53 + 12);
    v56 = *(v53 + 1);
    aBlock = *v53;
    v158 = v56;
    v57 = *(v53 + 3);
    *v159 = *(v53 + 2);
    *&v159[16] = v57;
    outlined init with copy of PushTarget?(&aBlock + 8, &v143, &lazy cache variable for type metadata for AnySharePreview?, &type metadata for AnySharePreview);
    if (v147)
    {
      v58 = v143;
      v59 = v144;
      v61 = v145;
      v60 = v146;
      outlined copy of Text?(v143, v144, v145, v146);
      v62 = outlined destroy of AnySharePreview(&v143);
      if (v60)
      {
        v149 = v123;
        v150 = v125;
        v155 = 0;
        v156 = 0;
        MEMORY[0x18D009CB0](&v142, v62);
        v63 = v61 & 1;
        v141 = v63;
        v137 = Text.resolveString(in:with:idiom:)();
        v65 = v64;
        outlined consume of Text.Storage(v58, v59, v63);
      }

      else
      {
        v137 = 0;
        v65 = 0;
      }

      v45 = v135;
    }

    else
    {
      outlined destroy of PushTarget?(&v143, &lazy cache variable for type metadata for AnySharePreview?, &type metadata for AnySharePreview);
      v137 = 0;
      v65 = 0;
    }

    v89 = v128;
    outlined init with copy of PlatformItemList.Item?(v140, v128, &lazy cache variable for type metadata for ToolbarStorage.NavigationProperties?, type metadata accessor for ToolbarStorage.NavigationProperties, MEMORY[0x1E69E6720]);
    if (v127(v89, 1, v31) == 1)
    {
      outlined destroy of ToolbarStorage.NavigationProperties?(v89, &lazy cache variable for type metadata for ToolbarStorage.NavigationProperties?, type metadata accessor for ToolbarStorage.NavigationProperties, MEMORY[0x1E69E6720]);
      v88 = &unk_18CD64000;
    }

    else
    {
      v90 = v126;
      outlined init with copy of PlatformItemList.Item?(&v89[*(v31 + 32)], v126, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
      outlined destroy of ToolbarStorage.NavigationProperties(v89, type metadata accessor for ToolbarStorage.NavigationProperties);
      v91 = type metadata accessor for PlatformItemList.Item(0);
      v88 = &unk_18CD64000;
      if ((*(*(v91 - 8) + 48))(v90, 1, v91) == 1)
      {
        outlined destroy of ToolbarStorage.NavigationProperties?(v90, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
      }

      else
      {
        v92 = *v90;
        v93 = *v90;
        outlined destroy of ToolbarStorage.NavigationProperties(v90, type metadata accessor for PlatformItemList.Item);
        if (v92)
        {
          v94 = [v93 string];

          goto LABEL_38;
        }
      }
    }

    v95 = v139 + direct field offset for ToolbarBridge.platformVended;
    swift_beginAccess();
    v94 = [*(v95 + 8) title];
    if (!v94)
    {
      v96 = 0;
      v98 = 0;
      goto LABEL_40;
    }

LABEL_38:
    v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v98 = v97;

LABEL_40:
    if (!v65)
    {

      v137 = v96;
      v65 = v98;
    }

    outlined init with copy of PushTarget?(&aBlock + 8, &v143, &lazy cache variable for type metadata for AnySharePreview?, &type metadata for AnySharePreview);
    if (v147)
    {
      v99 = v148;

      v100 = outlined destroy of AnySharePreview(&v143);
      v101 = v99(v100);
    }

    else
    {
      outlined destroy of PushTarget?(&v143, &lazy cache variable for type metadata for AnySharePreview?, &type metadata for AnySharePreview);
      v101 = 0;
    }

    outlined init with copy of PushTarget?(&aBlock + 8, &v143, &lazy cache variable for type metadata for AnySharePreview?, &type metadata for AnySharePreview);
    v102 = v147;
    if (v147)
    {

      v103 = outlined destroy of AnySharePreview(&v143);
      v104 = v102(v103);
    }

    else
    {
      outlined destroy of PushTarget?(&v143, &lazy cache variable for type metadata for AnySharePreview?, &type metadata for AnySharePreview);
      v104 = 0;
    }

    if (v65)
    {
      v105 = MEMORY[0x18D00C850](v137, v65);
    }

    else
    {
      v105 = 0;
    }

    v74 = [objc_allocWithZone(type metadata accessor for UIKitDocumentProperties()) initWithTitle:v105 iconProvider:v101 imageProvider:v104];

    v106 = aBlock;
    type metadata accessor for PlatformItemList.Item.SystemItem?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_18CD69590;
    *(v81 + 32) = v106;
    v87 = swift_allocObject();
    v107 = *&v159[48];
    *(v87 + 80) = *&v159[32];
    *(v87 + 96) = v107;
    v108 = *&v159[64];
    v109 = v158;
    *(v87 + 16) = aBlock;
    *(v87 + 32) = v109;
    v110 = *&v159[16];
    *(v87 + 48) = *v159;
    *(v87 + 64) = v110;
    *(v87 + 112) = v108;
    *(v87 + 120) = v96;
    *(v87 + 128) = v98;
    v84 = v106;
    v85 = 2;
    v86 = partial apply for closure #1 in closure #1 in UIKitToolbarStrategy.updateHeaderProperties();
    goto LABEL_52;
  }

LABEL_7:
  v40 = v140;
  outlined init with copy of PlatformItemList.Item?(v140, v19, &lazy cache variable for type metadata for ToolbarStorage.NavigationProperties?, type metadata accessor for ToolbarStorage.NavigationProperties, MEMORY[0x1E69E6720]);
  if (v32(v19, 1, v31) == 1)
  {
    outlined destroy of ToolbarStorage.NavigationProperties?(v19, &lazy cache variable for type metadata for ToolbarStorage.NavigationProperties?, type metadata accessor for ToolbarStorage.NavigationProperties, MEMORY[0x1E69E6720]);
LABEL_16:
    v47 = v139 + direct field offset for ToolbarBridge.platformVended;
    swift_beginAccess();
    [*(v47 + 8) setDocumentProperties_];
    goto LABEL_17;
  }

  v41 = *v19;
  v42 = v19[8];
  outlined copy of ToolbarStorage.NavigationProperties.DocumentProperties?(*v19, v19[8]);
  outlined destroy of ToolbarStorage.NavigationProperties(v19, type metadata accessor for ToolbarStorage.NavigationProperties);
  if (v42 == 255)
  {
    goto LABEL_16;
  }

  if ((v42 & 1) == 0)
  {
    outlined consume of ToolbarStorage.NavigationProperties.DocumentProperties?(v41, v42);
    goto LABEL_16;
  }

  v43 = v139 + direct field offset for ToolbarBridge.platformVended;
  swift_beginAccess();
  [*(v43 + 8) setDocumentProperties_];
  outlined consume of ToolbarStorage.NavigationProperties.DocumentProperties?(v41, v42);
LABEL_17:

  v48 = MEMORY[0x1E69E6720];
  v49 = v40;
LABEL_18:
  result = outlined destroy of ToolbarStorage.NavigationProperties?(v49, &lazy cache variable for type metadata for ToolbarStorage.NavigationProperties?, type metadata accessor for ToolbarStorage.NavigationProperties, v48);
  *v138 = 1;
  return result;
}

uint64_t sub_18BE004CC()
{
  if (*(v0 + 56))
  {
    if (*(v0 + 48))
    {
      outlined consume of Text.Storage(*(v0 + 24), *(v0 + 32), *(v0 + 40));
    }

    if (*(v0 + 112))
    {
      __swift_destroy_boxed_opaque_existential_1((v0 + 88));
    }
  }

  return swift_deallocObject();
}

uint64_t sub_18BE00550()
{

  return swift_deallocObject();
}

uint64_t sub_18BE00588()
{
  outlined consume of AnyShareConfiguration.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  if (*(v0 + 80))
  {
    outlined consume of Text.Storage(*(v0 + 56), *(v0 + 64), *(v0 + 72));
  }

  if (*(v0 + 112))
  {
    outlined consume of Text.Storage(*(v0 + 88), *(v0 + 96), *(v0 + 104));
  }

  return swift_deallocObject();
}

uint64_t type metadata accessor for TitleDocumentContent(uint64_t a1)
{
  result = type metadata singleton initialization cache for TitleDocumentContent;
  if (!type metadata singleton initialization cache for TitleDocumentContent)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for TitleDocumentContent(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void closure #1 in UIKitToolbarStrategy.updateRenameDelegate()(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v44 = a2;
  v3 = type metadata accessor for ToolbarStorage.NavigationProperties(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69E6720];
  type metadata accessor for PlatformItemList.Item?(0, &lazy cache variable for type metadata for ToolbarStorage.NavigationProperties?, type metadata accessor for ToolbarStorage.NavigationProperties, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - v10;
  type metadata accessor for PlatformItemList.Item?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, v6);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v38 - v13;
  v15 = type metadata accessor for PlatformItemList.Item(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v39 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1 + direct field offset for ToolbarBridge.platformVended;
  swift_beginAccess();
  v19 = *(v18 + 8);
  v20 = UINavigationItem.renameDelegate.getter();

  if (!v20)
  {
    v20 = [*(v18 + 8) _objc_renameDelegate];
  }

  v41 = v18;
  v43 = v20;
  specialized ToolbarBridge.navigationProperties.getter(v11);
  v21 = *(v4 + 48);
  if (v21(v11, 1, v3) == 1)
  {
    outlined destroy of ToolbarStorage.NavigationProperties?(v11, &lazy cache variable for type metadata for ToolbarStorage.NavigationProperties?, type metadata accessor for ToolbarStorage.NavigationProperties, MEMORY[0x1E69E6720]);
    (*(v16 + 56))(v14, 1, 1, v15);
LABEL_6:
    outlined destroy of ToolbarStorage.NavigationProperties?(v14, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
    v23 = v41;
    v22 = v42;
    goto LABEL_7;
  }

  outlined init with copy of PlatformItemList.Item?(&v11[*(v3 + 32)], v14, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
  outlined destroy of ToolbarStorage.NavigationProperties(v11, type metadata accessor for ToolbarStorage.NavigationProperties);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    goto LABEL_6;
  }

  v29 = v39;
  outlined init with take of ToolbarStorage.NavigationProperties(v14, v39, type metadata accessor for PlatformItemList.Item);
  v30 = *(v29 + 336);
  v23 = v41;
  v22 = v42;
  if (v30 >> 2 == 0xFFFFFFFF || v30 >> 62 != 1)
  {
    outlined destroy of ToolbarStorage.NavigationProperties(v29, type metadata accessor for PlatformItemList.Item);
LABEL_7:
    specialized ToolbarBridge.navigationProperties.getter(v22);
    if (v21(v22, 1, v3) == 1)
    {
      outlined destroy of ToolbarStorage.NavigationProperties?(v22, &lazy cache variable for type metadata for ToolbarStorage.NavigationProperties?, type metadata accessor for ToolbarStorage.NavigationProperties, MEMORY[0x1E69E6720]);
      v24 = v43;
    }

    else
    {
      v25 = v40;
      outlined init with take of ToolbarStorage.NavigationProperties(v22, v40, type metadata accessor for ToolbarStorage.NavigationProperties);
      Strong = swift_unknownObjectWeakLoadStrong();
      v24 = v43;
      if (Strong)
      {
        v27 = *(v23 + 8);
        v28 = Strong;
        swift_unknownObjectRetain();
        [v27 set:v28 objc:? renameDelegate:?];
        outlined destroy of ToolbarStorage.NavigationProperties(v25, type metadata accessor for ToolbarStorage.NavigationProperties);
        swift_unknownObjectRelease_n();
        if (!v24)
        {
LABEL_20:
          v34 = 1;
          goto LABEL_25;
        }

        swift_unknownObjectRelease();
LABEL_24:
        v34 = 0;
        goto LABEL_25;
      }

      outlined destroy of ToolbarStorage.NavigationProperties(v25, type metadata accessor for ToolbarStorage.NavigationProperties);
    }

    v33 = *(v23 + 8);
    UINavigationItem.renameDelegate.setter();

    if (v24)
    {
      swift_unknownObjectRelease();
      goto LABEL_20;
    }

    goto LABEL_24;
  }

  ToolbarBridge<>.platformDelegate.getter();
  v32 = v31;
  if (v31)
  {
    lazy protocol witness table accessor for type ToolbarPlatformDelegate and conformance ToolbarPlatformDelegate();
  }

  v35 = *(v23 + 8);
  v36 = v32;
  v37 = v35;
  UINavigationItem.renameDelegate.setter();

  outlined destroy of ToolbarStorage.NavigationProperties(v29, type metadata accessor for PlatformItemList.Item);
  if (v43)
  {
    swift_unknownObjectRelease();
    if (!v32)
    {
      goto LABEL_20;
    }

    goto LABEL_24;
  }

  if (v32)
  {
    v34 = -1;
  }

  else
  {
    v34 = 0;
  }

LABEL_25:
  *v44 = v34 & 1;
}

void *sub_18BE00D3C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    _s7SwiftUI16CommandOperationVSgMaTm_0(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 112);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

void closure #1 in UIKitToolbarStrategy.willReturnUpdates(_:preferences:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  outlined init with copy of HostingControllerOverrides(a2, &v12);
  Strong = swift_unknownObjectWeakLoadStrong();
  outlined destroy of HostingControllerOverrides(&v12);
  if (Strong)
  {
  }

  else
  {
    v6 = swift_unknownObjectWeakLoadStrong();
    if (!v6)
    {
      v7 = 0;
      goto LABEL_6;
    }
  }

  v7 = 1;
LABEL_6:
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = xmmword_18CD90760;
  v8 = specialized Set.contains(_:)(&v12, a3);
  outlined destroy of Toolbar.BarLocation(&v12);
  if ((v8 & 1) != 0 || (v12 = 0, v13 = 0, v14 = 0, v15 = xmmword_18CD90760, v9 = specialized ToolbarBridge.hasEntries(in:)(&v12), outlined destroy of Toolbar.BarLocation(&v12), !v9))
  {
    v10 = a1 + direct field offset for ToolbarBridge.platformVended;
    swift_beginAccess();
    if (*(v10 + 24))
    {
      v11 = v7;
    }

    else
    {
      v11 = 1;
    }

    if ((v11 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else if ((v7 & 1) == 0)
  {
LABEL_9:
    UIKitToolbarStrategy.updateInferredToolbarIfNeeded()();
    return;
  }

  UIKitToolbarStrategy.destroyInferredToolbar()();
}

uint64_t closure #1 in BarAppearanceBridge.updateNavigationBar(updating:preferences:)(id *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Locale();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI25ToolbarContentDescriptionVSgMaTm_0(0, &lazy cache variable for type metadata for ToolbarContentDescription?, type metadata accessor for ToolbarContentDescription);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = (&v82 - v11);
  v13 = *(a2 + OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_allowedBars);
  v125 = 0;
  memset(v124, 0, sizeof(v124));

  v14 = specialized Set.contains(_:)(v124, v13);

  result = outlined destroy of ToolbarPlacement.Role(v124);
  if ((v14 & 1) != 0 || *(a2 + OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_platformStorage + 16) == 1)
  {
    v85 = v9;
    v16 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_updateContext;
    swift_beginAccess();
    outlined init with copy of BarAppearanceBridge.UpdateContext?(a2 + v16, v123, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext);
    if (!v123[0] || (outlined init with take of BarAppearanceBridge.UpdateContext(v123, v124), closure #1 in BarAppearanceBridge.updateNavigationStyle(_:)(v124, a3, a2), outlined destroy of BarAppearanceBridge.UpdateContext(v124), outlined init with copy of BarAppearanceBridge.UpdateContext?(a2 + v16, v123, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext), !v123[0]) || (v86 = v7, outlined init with take of BarAppearanceBridge.UpdateContext(v123, v124), closure #1 in BarAppearanceBridge.updateBackAction(_:)(v124, a3, a2), outlined destroy of BarAppearanceBridge.UpdateContext(v124), outlined init with copy of BarAppearanceBridge.UpdateContext?(a2 + v16, v123, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext), !v123[0]))
    {
      v81 = v123;
      goto LABEL_102;
    }

    outlined init with take of BarAppearanceBridge.UpdateContext(v123, v124);
    closure #1 in BarAppearanceBridge.updateSidebarToggle(_:)(v124, a2);
    outlined destroy of BarAppearanceBridge.UpdateContext(v124);
    v102 = *a1;
    *&v108 = a3;
    PreferenceValues.subscript.getter();
    v87 = v6;
    if (*(&v119 + 1) == 1)
    {
      v17 = (a2 + OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_lastNavigationTitleStorage);
      v18 = *(a2 + OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_lastNavigationTitleStorage + 24);
      if (v18 == 1)
      {
        v100 = 0;
        v96 = 0;
        v97 = 0;
        v98 = 0uLL;
        v19 = 3;
        v101 = 5;
        v95 = 1;
        goto LABEL_14;
      }

      v114 = *v17;
      *&v98 = *(v17 + 2);
      v115 = v98;
      v116 = v18;
      *(v117 + 9) = *(v17 + 41);
      v117[0] = v17[2];
      v19 = BYTE8(v117[1]);
      v100 = *&v117[1];
      v96 = *(&v114 + 1);
      v97 = v114;
      v95 = *&v117[0];
      v101 = BYTE8(v117[0]);
      v20 = *(v17 + 41);
      *(v122 + 3) = *(v17 + 11);
      v122[0] = v20;
      outlined init with copy of NavigationTitleStorage(&v114, &v111);
      *(&v98 + 1) = v18;
      if (!v18)
      {
LABEL_14:
        v21 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_lastToolbarInputContent;
        swift_beginAccess();
        _s7SwiftUI14ToolbarStorageV20NavigationPropertiesVSgWOcTm_0(a2 + v21, v12, &lazy cache variable for type metadata for ToolbarContentDescription?, type metadata accessor for ToolbarContentDescription);
        v22 = type metadata accessor for ToolbarContentDescription(0);
        if ((*(*(v22 - 8) + 48))(v12, 1, v22) == 1)
        {
          _s7SwiftUI14ToolbarStorageV20NavigationPropertiesVSgWOhTm_0(v12, &lazy cache variable for type metadata for ToolbarContentDescription?, type metadata accessor for ToolbarContentDescription);
        }

        else
        {
          v23 = v12[1];
          v118 = *v12;
          v119 = v23;
          v120[0] = v12[2];
          *(v120 + 9) = *(v12 + 41);
          outlined init with copy of BarAppearanceBridge.UpdateContext?(&v118, &v114, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage);
          _s7SwiftUI14ToolbarStorageV20NavigationPropertiesVWOhTm_0(v12, type metadata accessor for ToolbarContentDescription);
          v24 = *(&v119 + 1);
          if (*(&v119 + 1) != 1)
          {
            v89 = v19;
            v25 = BYTE8(v120[0]);
            v26 = *&v120[1];
            v27 = BYTE8(v120[1]);
            if (!*(&v98 + 1))
            {
              v96 = *(&v118 + 1);
              v97 = v118;
              *&v98 = v119;
              outlined copy of Text?(v118, *(&v118 + 1), v119, *(&v119 + 1));
              *(&v98 + 1) = v24;
            }

            v28 = v101;
            if (v101 == 5)
            {
              v28 = v25;
            }

            v101 = v28;
            if (!v100)
            {

              v100 = v26;
            }

            outlined destroy of BarAppearanceBridge.UpdateContext?(&v118, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage);
            v19 = v89;
            if (v89 == 3)
            {
              v19 = v27;
            }
          }
        }

        goto LABEL_25;
      }
    }

    else
    {
      v101 = BYTE8(v120[0]);
      v95 = *&v120[0];
      v96 = *(&v118 + 1);
      v97 = v118;
      v98 = v119;
      v19 = BYTE8(v120[1]);
      v100 = *&v120[1];
      v122[0] = *(v120 + 9);
      *(v122 + 3) = HIDWORD(v120[0]);
      if (!*(&v119 + 1))
      {
        goto LABEL_14;
      }
    }

    if (v101 != 5 && v100)
    {
LABEL_25:
      *&v114 = a3;
      PreferenceValues.subscript.getter();
      v29 = *(&v119 + 1);
      if (*(&v119 + 1))
      {
        v92 = *(&v118 + 1);
        v93 = v118;
        v91 = v119;
      }

      else
      {
        v30 = *(a2 + OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_lastNavigationSubtitle);
        v31 = *(a2 + OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_lastNavigationSubtitle + 16);
        v29 = *(a2 + OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_lastNavigationSubtitle + 24);
        v92 = *(a2 + OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_lastNavigationSubtitle + 8);
        v93 = v30;
        v91 = v31;
        outlined copy of Text?(v30, v92, v31, v29);
      }

      *&v118 = a3;
      PreferenceValues.subscript.getter();
      v32 = v114;
      v83 = UIViewController.hasOrWillHaveBackItem(overrides:)((a1 + 2));
      outlined init with copy of BarAppearanceBridge.UpdateContext?(a2 + v16, &v114, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext);
      if (v114)
      {
        v94 = v29;
        v90 = a1;
        outlined init with take of BarAppearanceBridge.UpdateContext(&v114, &v118);
        closure #1 in BarAppearanceBridge.containedInExpandedSplitViewColumn(columns:)(&outlined read-only object #0 of closure #1 in BarAppearanceBridge.updateNavigationBar(updating:preferences:), v121);
        outlined destroy of BarAppearanceBridge.UpdateContext(&v118);
        v84 = v121[0];
        *&v111 = v97;
        *(&v111 + 1) = v96;
        v112 = v98;
        *&v113[0] = v95;
        BYTE8(v113[0]) = v101;
        *(v113 + 9) = v122[0];
        HIDWORD(v113[0]) = *(v122 + 3);
        *&v113[1] = v100;
        v89 = v19;
        BYTE8(v113[1]) = v19;
        v34 = *(a2 + OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_lastEnvironment);
        v33 = *(a2 + OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_lastEnvironment + 8);
        outlined init with copy of NavigationTitleStorage(&v111, &v108);

        v99 = BarAppearanceBridge.uiContainingNavController.getter();
        v35 = [v102 navigationItem];
        v88 = v32;
        [v35 setHidesBackButton_];

        if (*(&v112 + 1))
        {
          v36 = v112;
          *&v105 = v34;
          *(&v105 + 1) = v33;
          v103[0] = 0;
          v103[1] = 0;
          v37 = outlined init with copy of NavigationTitleStorage(&v111, &v108);
          MEMORY[0x18D009CB0](&v108, v37);
          v104 = v36 & 1;
          v38 = Text.resolveString(in:with:idiom:)();
          v40 = v39;
          outlined destroy of NavigationTitleStorage(&v111);
        }

        else
        {
          v38 = 0;
          v40 = 0;
        }

        LOBYTE(v41) = BYTE8(v113[0]);
        if (BYTE8(v113[0]) == 5)
        {
          if (!v99)
          {
            if (v40)
            {
              v43 = v38 & 0xFFFFFFFFFFFFLL;
            }

            else
            {
              v43 = 0;
            }

            if (v40)
            {
              v44 = v40;
            }

            else
            {
              v44 = 0xE000000000000000;
            }

LABEL_54:
            _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_5(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v4>, MEMORY[0x1E697DF40], MEMORY[0x1E697DF38], MEMORY[0x1E697EC20]);
            lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>();
            if ((static SemanticFeature.isEnabled.getter() & 1) == 0)
            {
              goto LABEL_70;
            }

            v46 = HIBYTE(v44) & 0xF;
            if ((v44 & 0x2000000000000000) == 0)
            {
              v46 = v43;
            }

            if (v46)
            {
              v47 = 1;
            }

            else
            {
              v49 = [v102 navigationItem];
              v47 = UINavigationItem.hasLargeContent.getter();
            }

            static _GraphInputs.defaultInterfaceIdiom.getter();
            v50 = static Solarium.isEnabled(for:)() & v84;
            type metadata accessor for (Bool, Bool, Bool, Bool)(v51);
            if ((v83 & 1) != 0 && (v88 & 1) == 0)
            {
              if (((v47 | v50) & 1) == 0)
              {
                goto LABEL_71;
              }

LABEL_67:

              v48 = 0;
              goto LABEL_72;
            }

            if ((v83 & v47 | v50))
            {
              goto LABEL_67;
            }

            if ((v47 & 1) == 0)
            {
LABEL_71:

              v48 = 2;
LABEL_72:
              v52 = [v102 navigationItem];
              v53 = [v52 largeTitleDisplayMode];

              if (v48 != v53)
              {
                v54 = [v102 navigationItem];
                [v54 setLargeTitleDisplayMode_];
              }

              if (!v99)
              {
                v55 = 0;
LABEL_77:
                UIViewController.updateTitle(_:isFromSwiftUI:)(v38, v40, v55);

                if (v94)
                {
                  *&v108 = v34;
                  *(&v108 + 1) = v33;
                  v105 = 0uLL;
                  MEMORY[0x18D009CB0](v103, v56);
                  v104 = v91 & 1;
                  v57 = Text.resolveString(in:with:idiom:)();
                  v59 = v58;
                }

                else
                {
                  v57 = 0;
                  v59 = 0;
                }

                v60 = v90;
                UIViewController.updateSubtitle(_:isFromSwiftUI:)(v57, v59, v55);

                *&v108 = v34;
                *(&v108 + 1) = v33;
                if (EnvironmentValues.accessibilityEnabled.getter())
                {
                  v61 = v102;
                  v62 = [v102 navigationItem];
                  v108 = v111;
                  v109 = v112;
                  v110[0] = v113[0];
                  *(v110 + 9) = *(v113 + 9);
                  *&v105 = v34;
                  *(&v105 + 1) = v33;
                  v63 = NavigationTitleStorage.accessibilityLabel(in:)(&v105);
                  [v62 setAccessibilityAttributedLabel_];

                  *&v108 = v34;
                  *(&v108 + 1) = v33;
                  v64 = v85;
                  EnvironmentValues.locale.getter();
                  v65 = Locale.bcp47LanguageCode.getter();
                  v67 = v66;
                  (*(v86 + 8))(v64, v87);
                  v68 = [v61 navigationItem];
                  if (v67)
                  {
                    v69 = MEMORY[0x18D00C850](v65, v67);
                  }

                  else
                  {
                    v69 = 0;
                  }

                  [v68 setAccessibilityLanguage_];

                  outlined destroy of NavigationTitleStorage(&v111);

                  v60 = v90;
                }

                else
                {

                  outlined destroy of NavigationTitleStorage(&v111);
                }

                v70 = a2 + OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_platformStorage;
                *(a2 + OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_platformStorage + 1) = v88;
                static Semantics.v2.getter();
                v71 = isLinkedOnOrAfter(_:)();
                v72 = v89;
                if (v71)
                {
                  v73 = [v102 navigationItem];
                  v74 = [v73 leftItemsSupplementBackButton];

                  if ((v74 & 1) == 0)
                  {
                    v75 = [v102 navigationItem];
                    [v75 setLeftItemsSupplementBackButton_];
                  }
                }

                v76 = UIViewController.hasNavigationBarContent(updateContext:)(v60);
                v77 = *(v70 + 2);
                if (v77 == 2)
                {
                  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_5(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v4>, MEMORY[0x1E697DF40], MEMORY[0x1E697DF38], MEMORY[0x1E697EC20]);
                  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>();
                  LOBYTE(v77) = static SemanticFeature.isEnabled.getter() ^ 1;
                }

                if ((v76 & 1) != (v77 & 1))
                {
                  *&v110[0] = 0;
                  v108 = 0u;
                  v109 = 0u;
                  BarAppearanceBridge.invalidate(bar:)(&v108);
                  outlined destroy of ToolbarPlacement.Role(&v108);
                }

                v78 = UIViewController.hasBottomBarContent.getter();
                v79 = v78;
                v80 = *(v70 + 3);
                if (v80 == 2)
                {
                  if ((v78 & 1) == 0)
                  {
LABEL_95:
                    outlined consume of Text?(v93, v92, v91, v94);
LABEL_98:
                    *&v108 = v97;
                    *(&v108 + 1) = v96;
                    v109 = v98;
                    *&v110[0] = v95;
                    BYTE8(v110[0]) = v101;
                    *(v110 + 9) = v122[0];
                    HIDWORD(v110[0]) = *(v122 + 3);
                    *&v110[1] = v100;
                    BYTE8(v110[1]) = v72;
                    result = outlined destroy of NavigationTitleStorage(&v108);
                    *(v70 + 3) = v79 & 1;
                    *(v70 + 2) = v76 & 1;
                    return result;
                  }
                }

                else if ((v78 & 1) == (v80 & 1))
                {
                  goto LABEL_95;
                }

                v105 = 0uLL;
                v106 = 0;
                v107 = xmmword_18CD7DD20;
                BarAppearanceBridge.invalidate(bar:)(&v105);
                outlined consume of Text?(v93, v92, v91, v94);
                outlined destroy of ToolbarPlacement.Role(&v105);
                goto LABEL_98;
              }

LABEL_75:
              swift_getObjectType();
              v55 = [swift_getObjCClassFromMetadata() _isFromSwiftUI];
              goto LABEL_77;
            }

            if ((v83 & 1) == 0)
            {
LABEL_70:

              v48 = 1;
              goto LABEL_72;
            }

LABEL_103:
            result = _diagnoseUnexpectedEnumCase<A>(type:)();
            __break(1u);
            return result;
          }

          v42 = v99;
          if (!UINavigationController.managesWindowToolbar()())
          {

            goto LABEL_47;
          }

          _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_5(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.WindowToolbarConfigurationKey>, &type metadata for EnvironmentValues.WindowToolbarConfigurationKey, &protocol witness table for EnvironmentValues.WindowToolbarConfigurationKey, MEMORY[0x1E697FE38]);
          lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DefaultToolbarRoleKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.WindowToolbarConfigurationKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.WindowToolbarConfigurationKey>, &type metadata for EnvironmentValues.WindowToolbarConfigurationKey, &protocol witness table for EnvironmentValues.WindowToolbarConfigurationKey);
          if (v33)
          {

            PropertyList.Tracker.value<A>(_:for:)();
          }

          else
          {
            PropertyList.subscript.getter();
          }

          v41 = v108;
          outlined consume of ToolbarLabelStyle.Data?(*(&v108 + 1), v109, SBYTE8(v109));
          if (v41 == 5)
          {
LABEL_47:
            if (v40)
            {
              v43 = v38 & 0xFFFFFFFFFFFFLL;
            }

            else
            {
              v43 = 0;
            }

            if (v40)
            {
              v44 = v40;
            }

            else
            {
              v44 = 0xE000000000000000;
            }

            swift_getObjectType();
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

            if (([ObjCClassFromMetadata _isFromSwiftUI] & 1) == 0)
            {

              goto LABEL_75;
            }

            goto LABEL_54;
          }
        }

        v48 = qword_18CDEBC58[v41];
        goto LABEL_72;
      }

      v81 = &v114;
LABEL_102:
      outlined destroy of BarAppearanceBridge.UpdateContext?(v81, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext);
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      goto LABEL_103;
    }

    goto LABEL_14;
  }

  return result;
}

uint64_t outlined init with copy of BarAppearanceBridge.UpdateContext?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for BarAppearanceBridge.UpdateContext?(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void closure #1 in BarAppearanceBridge.updateNavigationStyle(_:)(id *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_5(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v4>, MEMORY[0x1E697DF40], MEMORY[0x1E697DF38], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>();
  if (static SemanticFeature.isEnabled.getter())
  {
    PreferenceValues.subscript.getter();
    v6 = v8;
    if (*(a3 + OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_lastEnvironment + 8))
    {
      _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_5(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DefaultToolbarRoleKey>, &type metadata for EnvironmentValues.DefaultToolbarRoleKey, &protocol witness table for EnvironmentValues.DefaultToolbarRoleKey, MEMORY[0x1E697FE38]);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DefaultToolbarRoleKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.DefaultToolbarRoleKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DefaultToolbarRoleKey>, &type metadata for EnvironmentValues.DefaultToolbarRoleKey, &protocol witness table for EnvironmentValues.DefaultToolbarRoleKey);

      swift_retain_n();
      PropertyList.Tracker.value<A>(_:for:)();
    }

    else
    {
      _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_5(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DefaultToolbarRoleKey>, &type metadata for EnvironmentValues.DefaultToolbarRoleKey, &protocol witness table for EnvironmentValues.DefaultToolbarRoleKey, MEMORY[0x1E697FE38]);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DefaultToolbarRoleKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.DefaultToolbarRoleKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DefaultToolbarRoleKey>, &type metadata for EnvironmentValues.DefaultToolbarRoleKey, &protocol witness table for EnvironmentValues.DefaultToolbarRoleKey);

      PropertyList.subscript.getter();
    }

    if (v8 != 3 || (v6 = v4, v4 != 3))
    {
      v7 = [*a1 navigationItem];
      [v7 setStyle_];
    }
  }
}

void UIViewController.updateSubtitle(_:isFromSwiftUI:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = [v4 navigationItem];
  v9 = [v8 _subtitle];

  if (!v9)
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_10;
  }

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (!a2)
  {

    if ((a3 & 1) == 0)
    {
      return;
    }

    goto LABEL_10;
  }

  if (v10 != a1 || v12 != a2)
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v14)
    {
      return;
    }

LABEL_10:
    v15 = [v4 navigationItem];
    if (a2)
    {
      v16 = MEMORY[0x18D00C850](a1, a2);
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
    [v15 _setSubtitle_];

    return;
  }
}

uint64_t PreferenceValues.configuration(toolbarPlacement:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  outlined init with copy of ToolbarPlacement.Role(a1, v9);
  if (v10 <= 2)
  {
    switch(v10)
    {
      case 0:
        memset(v7, 0, 40);
        goto LABEL_18;
      case 1:
        memset(v7, 0, 24);
        *(&v7[1] + 8) = xmmword_18CD6A6D0;
        goto LABEL_18;
      case 2:
        memset(v7, 0, 24);
        *(&v7[1] + 8) = xmmword_18CD79D60;
        goto LABEL_18;
    }

LABEL_13:
    outlined init with copy of ToolbarPlacement.Role(a1, v7);
    _s7SwiftUI16PreferenceValuesVAAE18configurationValue33_3D0A5FA8455C04EDCEBBD3CEA14D26923key9placementAC0F0Vy_AA30ToolbarAppearanceConfigurationVGxm_AA0P9PlacementV4RoleOSgtAA0pQ3KeyRzlFAA013NavigationBarqU0V_Tt0B5Tm(v7, v5, a2);
    outlined destroy of ToolbarPlacement.Role?(v7);
    return outlined destroy of ToolbarPlacement.Role(v9);
  }

  if (v10 > 4)
  {
    if (v10 == 5)
    {
      memset(v7, 0, 24);
      *(&v7[1] + 8) = xmmword_18CD79540;
      goto LABEL_18;
    }

    if (v10 == 6)
    {
      memset(v7, 0, 24);
      *(&v7[1] + 8) = xmmword_18CD90770;
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  if (v10 != 3)
  {
    LOBYTE(v7[0]) = 1;
    v8 = 1;
    *a2 = 1;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 1;
    *(a2 + 48) = 0;
    *(a2 + 56) = 1;
    *(a2 + 57) = 2;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 76) = -1;
    return outlined destroy of ToolbarPlacement.Role(v9);
  }

  memset(v7, 0, 24);
  *(&v7[1] + 8) = xmmword_18CD7DD20;
LABEL_18:
  _s7SwiftUI16PreferenceValuesVAAE18configurationValue33_3D0A5FA8455C04EDCEBBD3CEA14D26923key9placementAC0F0Vy_AA30ToolbarAppearanceConfigurationVGxm_AA0P9PlacementV4RoleOSgtAA0pQ3KeyRzlFAA013NavigationBarqU0V_Tt0B5Tm(v7, v5, a2);
  return outlined destroy of ToolbarPlacement.Role?(v7);
}

void *sub_18BE02864@<X0>(void *a1@<X8>)
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI16ToolbarPlacementV4RoleO_AC0E23AppearanceConfigurationVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  return result;
}

uint64_t storeEnumTagSinglePayload for ToolbarPlacement.Role(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF9)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483641;
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 6;
    }
  }

  return result;
}

void specialized _NativeSet.update(with:isUnique:)(__int128 *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *v3;
  Hasher.init(_seed:)();
  ToolbarPlacement.Role.hash(into:)(v40);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    v15 = 0;
    v13 = 1;
    goto LABEL_34;
  }

  v35 = v3;
  v12 = ~v10;
  v13 = 1;
  while (1)
  {
    outlined init with copy of ToolbarPlacement.Role(*(v8 + 48) + 40 * v11, v45);
    outlined init with copy of ToolbarPlacement.Role(v45, v40);
    outlined init with copy of ToolbarPlacement.Role(a1, &v42);
    if (v41 <= 2)
    {
      switch(v41)
      {
        case 0:
          outlined destroy of ToolbarPlacement.Role(v45);
          if (!*(&v43 + 1))
          {
            goto LABEL_32;
          }

          goto LABEL_26;
        case 1:
          outlined destroy of ToolbarPlacement.Role(v45);
          if (*(&v43 + 1) == 1)
          {
            goto LABEL_32;
          }

          goto LABEL_26;
        case 2:
          outlined destroy of ToolbarPlacement.Role(v45);
          if (*(&v43 + 1) == 2)
          {
            goto LABEL_32;
          }

          goto LABEL_26;
      }
    }

    else
    {
      if (v41 <= 4)
      {
        if (v41 == 3)
        {
          outlined destroy of ToolbarPlacement.Role(v45);
          if (*(&v43 + 1) == 3)
          {
            goto LABEL_32;
          }
        }

        else
        {
          outlined destroy of ToolbarPlacement.Role(v45);
          if (*(&v43 + 1) == 4)
          {
            goto LABEL_32;
          }
        }

        goto LABEL_26;
      }

      if (v41 == 5)
      {
        outlined destroy of ToolbarPlacement.Role(v45);
        if (*(&v43 + 1) == 5)
        {
          goto LABEL_32;
        }

        goto LABEL_26;
      }

      if (v41 == 6)
      {
        outlined destroy of ToolbarPlacement.Role(v45);
        if (*(&v43 + 1) == 6)
        {
          goto LABEL_32;
        }

        goto LABEL_26;
      }
    }

    outlined init with copy of ToolbarPlacement.Role(v40, v39);
    if (*(&v43 + 1) >= 7uLL)
    {
      break;
    }

    outlined destroy of ToolbarPlacement.Role(v45);
    outlined destroy of AnyHashable(v39);
LABEL_26:
    outlined destroy of ToolbarStorage.NavigationProperties(v40, type metadata accessor for (ToolbarPlacement.Role, ToolbarPlacement.Role));
LABEL_27:
    v11 = (v11 + 1) & v12;
    if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      v15 = 0;
      goto LABEL_33;
    }
  }

  v36 = v42;
  v37 = v43;
  v38 = v44;
  v14 = MEMORY[0x18D00E7E0](v39, &v36);
  outlined destroy of AnyHashable(&v36);
  outlined destroy of ToolbarPlacement.Role(v45);
  outlined destroy of AnyHashable(v39);
  if ((v14 & 1) == 0)
  {
    outlined destroy of ToolbarPlacement.Role(v40);
    goto LABEL_27;
  }

LABEL_32:
  outlined destroy of ToolbarPlacement.Role(v40);
  v13 = 0;
  v15 = 1;
LABEL_33:
  v4 = v35;
LABEL_34:
  v16 = *(v8 + 16);
  v17 = v16 + v13;
  if (__OFADD__(v16, v13))
  {
    __break(1u);
    goto LABEL_81;
  }

  v18 = *(v8 + 24);
  if (v18 >= v17 && (a2 & 1) != 0)
  {
    if (v15)
    {
LABEL_79:
      v31 = *(*v4 + 48) + 40 * v11;
      v32 = *(v31 + 16);
      *a3 = *v31;
      *(a3 + 16) = v32;
      *(a3 + 32) = *(v31 + 32);
      v33 = *a1;
      v34 = a1[1];
      *(v31 + 32) = *(a1 + 4);
      *v31 = v33;
      *(v31 + 16) = v34;
      return;
    }

LABEL_76:
    v24 = *v4;
    *(*v4 + 8 * (v11 >> 6) + 56) |= 1 << v11;
    v25 = *(v24 + 48) + 40 * v11;
    v26 = *a1;
    v27 = a1[1];
    *(v25 + 32) = *(a1 + 4);
    *v25 = v26;
    *(v25 + 16) = v27;
    v28 = *(v24 + 16);
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (!v29)
    {
      *(v24 + 16) = v30;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *a3 = 0;
      *(a3 + 24) = xmmword_18CD9F780;
      return;
    }

LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  if (a2)
  {
    specialized _NativeSet.resize(capacity:)(v17);
  }

  else
  {
    if (v18 >= v17)
    {
      specialized _NativeSet.copy()();
      if (v15)
      {
        goto LABEL_79;
      }

      goto LABEL_76;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v17);
  }

  v19 = *v4;
  Hasher.init(_seed:)();
  ToolbarPlacement.Role.hash(into:)(v40);
  v20 = Hasher._finalize()();
  v21 = -1 << *(v19 + 32);
  v11 = v20 & ~v21;
  if (((*(v19 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_75:
    if (v15)
    {
      goto LABEL_82;
    }

    goto LABEL_76;
  }

  v22 = ~v21;
  while (2)
  {
    outlined init with copy of ToolbarPlacement.Role(*(v19 + 48) + 40 * v11, v45);
    outlined init with copy of ToolbarPlacement.Role(v45, v40);
    outlined init with copy of ToolbarPlacement.Role(a1, &v42);
    if (v41 <= 2)
    {
      if (!v41)
      {
        outlined destroy of ToolbarPlacement.Role(v45);
        if (!*(&v43 + 1))
        {
          break;
        }

        goto LABEL_70;
      }

      if (v41 != 1)
      {
        if (v41 == 2)
        {
          outlined destroy of ToolbarPlacement.Role(v45);
          if (*(&v43 + 1) == 2)
          {
            break;
          }

          goto LABEL_70;
        }

        goto LABEL_63;
      }

      outlined destroy of ToolbarPlacement.Role(v45);
      if (*(&v43 + 1) == 1)
      {
        break;
      }

      goto LABEL_70;
    }

    if (v41 <= 4)
    {
      if (v41 == 3)
      {
        outlined destroy of ToolbarPlacement.Role(v45);
        if (*(&v43 + 1) == 3)
        {
          break;
        }
      }

      else
      {
        outlined destroy of ToolbarPlacement.Role(v45);
        if (*(&v43 + 1) == 4)
        {
          break;
        }
      }

      goto LABEL_70;
    }

    if (v41 == 5)
    {
      outlined destroy of ToolbarPlacement.Role(v45);
      if (*(&v43 + 1) == 5)
      {
        break;
      }

LABEL_70:
      outlined destroy of ToolbarStorage.NavigationProperties(v40, type metadata accessor for (ToolbarPlacement.Role, ToolbarPlacement.Role));
      goto LABEL_71;
    }

    if (v41 == 6)
    {
      outlined destroy of ToolbarPlacement.Role(v45);
      if (*(&v43 + 1) == 6)
      {
        break;
      }

      goto LABEL_70;
    }

LABEL_63:
    outlined init with copy of ToolbarPlacement.Role(v40, v39);
    if (*(&v43 + 1) < 7uLL)
    {
      outlined destroy of ToolbarPlacement.Role(v45);
      outlined destroy of AnyHashable(v39);
      goto LABEL_70;
    }

    v36 = v42;
    v37 = v43;
    v38 = v44;
    v23 = MEMORY[0x18D00E7E0](v39, &v36);
    outlined destroy of AnyHashable(&v36);
    outlined destroy of ToolbarPlacement.Role(v45);
    outlined destroy of AnyHashable(v39);
    if ((v23 & 1) == 0)
    {
      outlined destroy of ToolbarPlacement.Role(v40);
LABEL_71:
      v11 = (v11 + 1) & v22;
      if (((*(v19 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_75;
      }

      continue;
    }

    break;
  }

  outlined destroy of ToolbarPlacement.Role(v40);
  if (v15)
  {
    goto LABEL_79;
  }

LABEL_82:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t BarAppearanceBridge.updateBottomBarConfiguration()()
{
  v1 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_updateContext;
  swift_beginAccess();
  outlined init with copy of BarAppearanceBridge.UpdateContext?(v0 + v1, &v71, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext);
  if (!v71)
  {
    outlined destroy of BarAppearanceBridge.UpdateContext?(&v71, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext);
    return 0;
  }

  v2 = *(&v71 + 1);
  v3 = *(&v71 + 1);
  outlined destroy of BarAppearanceBridge.UpdateContext(&v71);
  if (!v2)
  {
    return 0;
  }

  v4 = [v3 toolbar];
  if (!v4)
  {

    return 0;
  }

  v5 = v4;
  v6 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_barConfigurations;
  swift_beginAccess();
  v7 = *(v0 + v6);
  memset(v69, 0, sizeof(v69));
  v70 = xmmword_18CD7DD20;
  if (!*(v7 + 16))
  {
LABEL_77:

    outlined destroy of ToolbarPlacement.Role(v69);
    return 0;
  }

  v8 = specialized __RawDictionaryStorage.find<A>(_:)(v69);
  if ((v9 & 1) == 0)
  {

    goto LABEL_77;
  }

  v47 = v3;
  v10 = (*(v7 + 56) + 80 * v8);
  v71 = *v10;
  v12 = v10[2];
  v11 = v10[3];
  v13 = *(v10 + 57);
  *v72 = v10[1];
  *&v72[16] = v12;
  *&v72[41] = v13;
  *&v72[32] = v11;
  outlined init with copy of ToolbarAppearanceConfiguration(&v71, &v62);
  outlined destroy of ToolbarPlacement.Role(v69);

  v14 = *(v0 + OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_lastEnvironment + 8);
  v49 = *(v0 + OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_lastEnvironment);

  v48 = v14;

  for (i = 0; i != 4; ++i)
  {
    v16 = outlined read-only object #0 of BarAppearanceBridge.updateBottomBarConfiguration()[i + 32];
    v17 = [v5 *off_1E72387E8[v16]];
    if (v17)
    {
      v18 = v17;
      swift_getObjectType();
      v19 = [swift_getObjCClassFromMetadata() _isFromSwiftUI];

      if (!v19)
      {
        continue;
      }
    }

    v20 = v72[41];
    v21 = v72[8];
    if (*v72)
    {
      v22 = 0;
    }

    else
    {
      v22 = v72[41] == 2;
    }

    v24 = v22 && *(&v71 + 1) == 0 && v72[8] == 0;
    if (v24 && v72[40] == 1 && v72[24] == 1)
    {
      v25 = [v5 *off_1E72387E8[v16]];
      if (v25)
      {

        if (v16 > 1u)
        {
          if (v16 == 2)
          {
            [v5 setCompactAppearance_];
          }

          else
          {
            [v5 setCompactScrollEdgeAppearance_];
          }
        }

        else if (v16)
        {
          [v5 setScrollEdgeAppearance_];
        }
      }

      continue;
    }

    v61 = *v72;
    v58 = *&v72[9];
    v59 = *&v72[25];
    v60 = v71;
    v57[0] = *&v72[42];
    *(v57 + 7) = *&v72[49];
    if (v16 > 1u)
    {
      if (v16 == 2)
      {
        goto LABEL_36;
      }
    }

    else if (!v16)
    {
      goto LABEL_36;
    }

    if (v72[8])
    {
LABEL_36:
      outlined init with copy of ToolbarAppearanceConfiguration(&v71, &v62);
      goto LABEL_37;
    }

    v32 = objc_opt_self();
    outlined init with copy of ToolbarAppearanceConfiguration(&v71, &v62);
    v33 = [v32 currentDevice];
    v34 = [v33 userInterfaceIdiom];

    if (v34 == 6 || (static _GraphInputs.defaultInterfaceIdiom.getter(), (static Solarium.isEnabled(for:)() & 1) == 0))
    {
      v20 = 2;
    }

    v21 = 3;
LABEL_37:
    v26 = [objc_allocWithZone(MEMORY[0x1E69DD188]) init];
    v27 = v26;
    v62 = v60;
    v65 = v58;
    v63 = v61;
    v64 = v21;
    v66 = v59;
    v67 = v20;
    v68[0] = v57[0];
    *(v68 + 7) = *(v57 + 7);
    if (v21 == 1)
    {
      outlined init with copy of ToolbarAppearanceConfiguration(&v62, &v50);
      [v27 configureWithDefaultBackground];
      if (!v63)
      {
        goto LABEL_54;
      }
    }

    else
    {
      if (v21 == 3)
      {
        [v26 configureWithTransparentBackground];
        goto LABEL_55;
      }

      outlined init with copy of ToolbarAppearanceConfiguration(&v62, &v50);
      if (!v63)
      {
        goto LABEL_54;
      }
    }

    ShapeStyle.resolveBackgroundMaterial(in:level:)();
    v28 = BYTE8(v50);
    if (BYTE8(v50) != 0xFF)
    {
      v29 = v50;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBlurEffect, 0x1E69DC730);
      *&v50 = v29;
      BYTE8(v50) = v28;
      outlined copy of Material.ID(v29, v28);
      v30 = UIBlurEffect.init(materialID:)(&v50);
      if (v30)
      {
        v31 = v30;
        [v27 setBackgroundEffect_];

        outlined consume of Material?(v29, v28);

        outlined destroy of ToolbarAppearanceConfiguration(&v62);
        goto LABEL_55;
      }

      outlined consume of Material?(v29, v28);
    }

    *&v50 = v49;
    *(&v50 + 1) = v48;
    if (ShapeStyle.fallbackColor(in:level:)())
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor, 0x1E69DC888);

      v36 = UIColor.init(_:)(v35);
      [v27 setBackgroundColor_];
    }

LABEL_54:
    outlined destroy of ToolbarAppearanceConfiguration(&v62);
LABEL_55:
    v37 = [objc_opt_self() currentDevice];
    v38 = [v37 userInterfaceIdiom];

    if (v38 != 6)
    {
      static _GraphInputs.defaultInterfaceIdiom.getter();
      if (static Solarium.isEnabled(for:)())
      {
        v39 = 1;
        if (v20)
        {
          v39 = 2;
        }

        if (v20 == 2)
        {
          v40 = 0;
        }

        else
        {
          v40 = v39;
        }

        [v27 _setOverrideUserInterfaceStyle_];
      }
    }

    [v5 setStandardAppearance_];
    v41 = v27;
    v42 = [v5 *off_1E72387E8[v16]];
    if (v42 && (v43 = v42, type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIToolbarAppearance, 0x1E69DD188), v44 = v41, v45 = v43, LOBYTE(v43) = static NSObject.== infix(_:_:)(), v44, v45, v45, (v43 & 1) != 0))
    {
    }

    else
    {
      if (v16 > 1u)
      {
        if (v16 == 2)
        {
          [v5 setCompactAppearance_];
        }

        else
        {
          [v5 setCompactScrollEdgeAppearance_];
        }
      }

      else if (v16)
      {
        [v5 setScrollEdgeAppearance_];
      }

      else
      {
        [v5 setStandardAppearance_];
      }
    }

    v50 = v60;
    v51 = v61;
    v52 = v21;
    v53 = v58;
    v54 = v59;
    v55 = v20;
    v56[0] = v57[0];
    *(v56 + 7) = *(v57 + 7);
    outlined destroy of ToolbarAppearanceConfiguration(&v50);
  }

  outlined destroy of ToolbarAppearanceConfiguration(&v71);
  return 1;
}