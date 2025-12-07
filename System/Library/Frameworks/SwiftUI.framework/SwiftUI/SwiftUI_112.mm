void specialized AccessibilityCollectionViewTableDataSource.visitHeaderNodes<A>(applying:)(ValueMetadata *a1)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 192);
  if (!v8)
  {
    return;
  }

  outlined init with copy of ShadowListDataSource<TableDataSourceAdaptor>?(v1, &v62);
  if (!*(&v63 + 1))
  {
    outlined destroy of ImageResolutionContext(&v62, type metadata accessor for ShadowListDataSource<TableDataSourceAdaptor>?);
    return;
  }

  v82 = v70;
  v83 = v71;
  v84 = v72;
  v85 = v73;
  v78 = v66;
  v79 = v67;
  v80 = v68;
  v81 = v69;
  v75[0] = v62;
  v75[1] = v63;
  v76 = v64;
  v77 = v65;
  outlined init with copy of TableDataSourceAdaptor(v75, &v62);
  if (BYTE8(v72))
  {
    outlined destroy of TableDataSourceAdaptor(&v62);
    goto LABEL_100;
  }

  v9 = BYTE9(v72);
  v10 = v8;
  outlined destroy of TableDataSourceAdaptor(&v62);
  if (v9 == 2)
  {

    goto LABEL_100;
  }

  v11 = TableDataSourceAdaptor.headerDisplayMode.getter();
  v48 = a1;
  v50 = v10;
  if (v11 != 1)
  {
LABEL_29:
    v21 = MEMORY[0x18D00C850](0xD000000000000011, 0x800000018CD4D770);
    v14 = [v10 visibleSupplementaryViewsOfKind_];

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UICollectionReusableView, 0x1E69DC7E8);
    v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v22 >> 62)
    {
LABEL_90:
      if (__CocoaSet.count.getter())
      {
        goto LABEL_31;
      }
    }

    else if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_31:
      if ((v22 & 0xC000000000000001) != 0)
      {
        goto LABEL_93;
      }

      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v23 = *(v22 + 32);
        goto LABEL_34;
      }

      __break(1u);
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    v2 = v10;
    goto LABEL_99;
  }

  v49 = *MEMORY[0x1E69DDC08];
  v12 = [v10 indexPathsForVisibleSupplementaryElementsOfKind_];
  isa = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *&v62 = isa;

  v14 = 0;
  specialized MutableCollection<>.sort(by:)(&v62);

  v15 = v62;
  v10 = *(v62 + 16);
  if (!v10)
  {

    goto LABEL_28;
  }

  v16 = 0;
  v55 = v62 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v52 = (*(&v76 + 1) + 32);
  v53 = *(&v76 + 1);
  v54 = v5 + 16;
  v51 = (v5 + 8);
  while (1)
  {
    if (v16 >= *(v15 + 16))
    {
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    (*(v5 + 16))(v7, v55 + *(v5 + 72) * v16, v4);
    v17 = IndexPath.section.getter();
    v2 = lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor;
    outlined init with copy of AccessibilityValueStorage?(v75, v74, &lazy cache variable for type metadata for ShadowListUpdateRecorder<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, type metadata accessor for ShadowListUpdateRecorder, type metadata accessor for ShadowListDataSource<TableDataSourceAdaptor>);
    _s7SwiftUI23ShadowSectionCollectionVyACyxGAA0C18ListUpdateRecorderVyxGcfCAA22TableDataSourceAdaptorV_Tt1g5(v74, &v62);
    v14 = specialized Collection.index(atOffset:)(v17);
    outlined destroy of AccessibilityTextLayoutProperties?(&v62, &lazy cache variable for type metadata for ShadowSectionCollection<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, type metadata accessor for ShadowSectionCollection, type metadata accessor for ShadowListDataSource<TableDataSourceAdaptor>);
    isa = v75;
    v18 = specialized ShadowListUpdateRecorder.initialIndex(_:)(v14);
    if ((v18 & 0x8000000000000000) != 0)
    {
      goto LABEL_85;
    }

    if (v18 >= v53[2])
    {
      goto LABEL_86;
    }

    if ((v52[96 * v18 + 8] & 1) == 0 && (v18 || (BYTE8(v84) & 1) != 0 || BYTE9(v84) == 2))
    {
      goto LABEL_12;
    }

    v2 = v49;
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v14 = [v50 supplementaryViewForElementKind:v2 atIndexPath:isa];

    if (!v14)
    {
      goto LABEL_12;
    }

    type metadata accessor for TableCollectionViewCell(0);
    v19 = swift_dynamicCastClass();
    if (v19)
    {
      break;
    }

LABEL_12:
    (*v51)(v7, v4);
LABEL_13:
    if (v10 == ++v16)
    {

      a1 = v48;
LABEL_28:
      v10 = v50;
      goto LABEL_29;
    }
  }

  v20 = *(v19 + direct field offset for ListCollectionViewCellBase.host);
  if (!v20)
  {
    (*v51)(v7, v4);

    goto LABEL_13;
  }

  v37 = v20;

  type metadata accessor for _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>(0);
  type metadata accessor for Text.Style?(0, &lazy cache variable for type metadata for [AccessibilityNode], type metadata accessor for AccessibilityNode, MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>, protocol conformance descriptor for _UIHostingView<A>);
  ViewRendererHost.updateViewGraph<A>(body:)();
  v22 = v62;
  v2 = specialized static AccessibilityCore.queryFilter(elements:options:)(v62, 4);

  v52 = v37;
  if (v2 >> 62)
  {
    v38 = __CocoaSet.count.getter();
  }

  else
  {
    v38 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  a1 = v48;
  v10 = v50;
  if (!v38)
  {
LABEL_82:

    (*v51)(v7, v4);
    goto LABEL_29;
  }

  v39 = 0;
  Kind = v48->Kind;
  v55 = v2 & 0xC000000000000001;
  v53 = Kind;
  v54 = v2 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v55)
    {
      v42 = MEMORY[0x18D00E9C0](v39, v2);
    }

    else
    {
      if (v39 >= *(v54 + 16))
      {
        goto LABEL_95;
      }

      v42 = *(v2 + 8 * v39 + 32);
    }

    v10 = v42;
    a1 = (v39 + 1);
    if (__OFADD__(v39, 1))
    {
      break;
    }

    AccessibilityNode.attachment.getter(&v62);
    outlined init with copy of AccessibilityProperties(&v62, v74);
    outlined destroy of AccessibilityAttachment(&v62);
    lazy protocol witness table accessor for type AccessibilityProperties.TableContextKey and conformance AccessibilityProperties.TableContextKey();
    v22 = v74;
    AccessibilityProperties.subscript.getter();
    outlined destroy of AccessibilityProperties(v74);
    if (BYTE8(v64) == 255)
    {
      goto LABEL_65;
    }

    outlined init with copy of AccessibilityValueStorage?(&v62, &v57, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext, MEMORY[0x1E69E6720], _sypSgMaTm_3);
    v22 = v57;
    if (v60 == 3)
    {
      outlined destroy of AccessibilityTextLayoutProperties?(&v62, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext, MEMORY[0x1E69E6720], _sypSgMaTm_3);
      if (v22 == v53)
      {
LABEL_79:

        AccessibilityNode.representedElement.getter();
        isa = v44;
        v56 = &unk_1F009EDE8;
        v45 = swift_dynamicCastObjCProtocolConditional();
        if (v45)
        {
          v46 = v45;
          _sypSgMaTm_3(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
          v36 = swift_allocObject();
          *(v36 + 16) = xmmword_18CD69590;
          *(v36 + 32) = v46;

          (*v51)(v7, v4);
LABEL_81:
          v47 = v48;

          v47->Description = v36;
          goto LABEL_100;
        }

LABEL_87:

        (*v51)(v7, v4);
        goto LABEL_100;
      }
    }

    else
    {
      if (v60 != 4 || (v43 = vorrq_s8(v58, v59), *&vorr_s8(*v43.i8, *&vextq_s8(v43, v43, 8uLL)) | v57))
      {
        outlined destroy of AccessibilityTableContext(&v57);
LABEL_65:
        outlined destroy of AccessibilityTextLayoutProperties?(&v62, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext, MEMORY[0x1E69E6720], _sypSgMaTm_3);
        goto LABEL_66;
      }

      outlined destroy of AccessibilityTextLayoutProperties?(&v62, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext, MEMORY[0x1E69E6720], _sypSgMaTm_3);
      if (!v53)
      {
        goto LABEL_79;
      }
    }

LABEL_66:

    ++v39;
    v41 = a1 == v38;
    a1 = v48;
    v10 = v50;
    if (v41)
    {
      goto LABEL_82;
    }
  }

  __break(1u);
LABEL_93:
  v23 = MEMORY[0x18D00E9C0](0, v22);
LABEL_34:
  v14 = v23;

  type metadata accessor for TableGlobalHeader();
  v24 = swift_dynamicCastClass();
  if (!v24)
  {

    v2 = v14;
    goto LABEL_99;
  }

  v2 = [v24 contentView];
  swift_getObjectType();
  v25 = swift_conformsToProtocol2();
  if (!v25 || !v2)
  {

    goto LABEL_99;
  }

  v26 = v25;
  ObjectType = swift_getObjectType();
  v22 = ViewRendererHost.accessibilityNodes.getter(ObjectType, v26);
  v7 = specialized static AccessibilityCore.queryFilter(elements:options:)(v22, 4);

  if (!(v7 >> 62))
  {
    v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_39;
    }

LABEL_97:

LABEL_98:

    v2 = v50;
LABEL_99:

    goto LABEL_100;
  }

LABEL_96:
  v10 = __CocoaSet.count.getter();
  if (!v10)
  {
    goto LABEL_97;
  }

LABEL_39:
  v52 = v2;
  v53 = v14;
  v2 = 0;
  v54 = a1->Kind;
  v55 = v7 & 0xFFFFFFFFFFFFFF8;
  a1 = &type metadata for AccessibilityProperties.TableContextKey;
  v14 = &lazy cache variable for type metadata for AccessibilityTableContext?;
  while (2)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x18D00E9C0](v2, v7);
    }

    else
    {
      if (v2 >= *(v55 + 16))
      {
        goto LABEL_89;
      }

      v28 = *(v7 + 8 * v2 + 32);
    }

    v29 = v28;
    v30 = (v2 + 1);
    if (__OFADD__(v2, 1))
    {
      __break(1u);
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    AccessibilityNode.attachment.getter(&v62);
    outlined init with copy of AccessibilityProperties(&v62, v74);
    outlined destroy of AccessibilityAttachment(&v62);
    lazy protocol witness table accessor for type AccessibilityProperties.TableContextKey and conformance AccessibilityProperties.TableContextKey();
    v22 = v74;
    AccessibilityProperties.subscript.getter();
    outlined destroy of AccessibilityProperties(v74);
    if (BYTE8(v64) == 255)
    {
      goto LABEL_41;
    }

    outlined init with copy of AccessibilityValueStorage?(&v62, &v57, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext, MEMORY[0x1E69E6720], _sypSgMaTm_3);
    v22 = v57;
    if (v60 != 3)
    {
      if (v60 == 4)
      {
        v31 = vorrq_s8(v58, v59);
        if (!(*&vorr_s8(*v31.i8, *&vextq_s8(v31, v31, 8uLL)) | v57))
        {
          outlined destroy of AccessibilityTextLayoutProperties?(&v62, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext, MEMORY[0x1E69E6720], _sypSgMaTm_3);
          if (!v54)
          {
            goto LABEL_55;
          }

          goto LABEL_42;
        }
      }

      outlined destroy of AccessibilityTableContext(&v57);
LABEL_41:
      outlined destroy of AccessibilityTextLayoutProperties?(&v62, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext, MEMORY[0x1E69E6720], _sypSgMaTm_3);
LABEL_42:

      ++v2;
      if (v30 == v10)
      {

        goto LABEL_98;
      }

      continue;
    }

    break;
  }

  outlined destroy of AccessibilityTextLayoutProperties?(&v62, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext, MEMORY[0x1E69E6720], _sypSgMaTm_3);
  if (v22 != v54)
  {
    goto LABEL_42;
  }

LABEL_55:

  AccessibilityNode.representedElement.getter();
  v33 = v32;
  v61 = &unk_1F009EDE8;
  v34 = swift_dynamicCastObjCProtocolConditional();
  if (v34)
  {
    v35 = v34;
    _sypSgMaTm_3(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_18CD69590;
    *(v36 + 32) = v35;

    goto LABEL_81;
  }

LABEL_100:
  outlined destroy of AccessibilityTextLayoutProperties?(v75, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource, type metadata accessor for ShadowListDataSource<TableDataSourceAdaptor>);
}

void AccessibilityNode.accessibilityTraits.getter()
{
  AccessibilityNode.resolvedTraits.getter();
  v1 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);

  if (v3)
  {
    v4 = v2 + 320 * v3 - 288;
    while (v3 <= *(v2 + 16))
    {
      outlined init with copy of AccessibilityAttachment(v4, v6);
      v5 = AccessibilityAttachment.platformElement.getter();
      outlined destroy of AccessibilityAttachment(v6);
      if (v5)
      {

        [v5 accessibilityTraits];

        return;
      }

      v4 -= 320;
      if (!--v3)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
  }
}

char *AccessibilityNode.accessibilityUserInputLabels.getter()
{
  AccessibilityNode.attachment.getter(v42);
  outlined init with copy of AccessibilityProperties(v42, v44);
  outlined destroy of AccessibilityAttachment(v42);
  v0 = AccessibilityProperties.inputLabels.getter();
  outlined destroy of AccessibilityProperties(v44);
  if (!v0)
  {
    return 0;
  }

  result = v0;
  v18 = *(v0 + 16);
  if (!v18)
  {
    v4 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v4;
  }

  v2 = 0;
  v16 = (v19 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment);
  v3 = v0 + 56;
  v4 = MEMORY[0x1E69E7CC0];
  v5 = MEMORY[0x1E6980B48];
  v17 = result;
  while (v2 < *(result + 2))
  {
    v20 = v4;
    v6 = *(v3 - 24);
    v7 = *(v3 - 16);
    v8 = *(v3 - 8);
    outlined copy of Text.Storage(v6, v7, v8);

    outlined copy of Text.Storage(v6, v7, v8);

    static AccessibilityCore.TextResolutionOptions.defaultPlainText.getter();
    AccessibilityNode.attachment.getter(v42);
    outlined init with copy of AccessibilityProperties(v42, v21);
    outlined destroy of AccessibilityAttachment(v42);
    v38 = v28;
    v39 = v29;
    v40 = v30;
    v41 = v31;
    v34 = v24;
    v35 = v25;
    v36 = v26;
    v37 = v27;
    v32 = v22;
    v33 = v23;
    outlined init with copy of AccessibilityValueStorage?(&v32, v42, &lazy cache variable for type metadata for AccessibilityTextLayoutProperties?, v5, MEMORY[0x1E69E6720], _sypSgMaTm_3);
    outlined destroy of AccessibilityProperties(v21);
    v42[6] = v38;
    v42[7] = v39;
    v42[8] = v40;
    v43 = v41;
    v42[2] = v34;
    v42[3] = v35;
    v42[4] = v36;
    v42[5] = v37;
    v42[0] = v32;
    v42[1] = v33;
    if (_s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOg(v42) != 1)
    {
      outlined destroy of AccessibilityTextLayoutProperties?(&v32, &lazy cache variable for type metadata for AccessibilityTextLayoutProperties?, v5, MEMORY[0x1E69E6720], _sypSgMaTm_3);
    }

    v9 = v16[1];
    v21[0] = *v16;
    v21[1] = v9;

    v10 = static AccessibilityCore.textResolvedToPlainText(_:in:options:idiom:)();
    v12 = v11;
    outlined consume of Text.Storage(v6, v7, v8);

    outlined consume of Text.Storage(v6, v7, v8);

    v4 = v20;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
    }

    result = v17;
    v5 = MEMORY[0x1E6980B48];
    v14 = *(v4 + 2);
    v13 = *(v4 + 3);
    if (v14 >= v13 >> 1)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v4);
      result = v17;
    }

    ++v2;
    *(v4 + 2) = v14 + 1;
    v15 = &v4[16 * v14];
    *(v15 + 4) = v10;
    *(v15 + 5) = v12;
    v3 += 32;
    if (v18 == v2)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

void AccessibilityNode.accessibilityAttributedUserInputLabels.getter()
{
  v1 = v0;
  AccessibilityNode.attachment.getter(v22);
  outlined init with copy of AccessibilityProperties(v22, v25);
  outlined destroy of AccessibilityAttachment(v22);
  v2 = AccessibilityProperties.inputLabels.getter();
  outlined destroy of AccessibilityProperties(v25);
  if (v2)
  {
    v24 = MEMORY[0x1E69E7CC0];
    v21 = *(v2 + 16);
    v18 = (v0 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment);
    v20 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
    swift_beginAccess();
    v3 = 0;
    v19 = v2 + 32;
    v16 = v2;
    v17 = v0;
    while (1)
    {
      if (v3 == v21)
      {

        return;
      }

      if (v3 >= *(v2 + 16))
      {
        break;
      }

      v7 = v19 + 32 * v3;
      v8 = *v7;
      v9 = *(v7 + 8);
      v10 = *(v7 + 16);
      v11 = *(v1 + v20);
      v12 = *(v11 + 16);
      if (v12)
      {
        v13 = v11 + 32;
        outlined copy of Text.Storage(v8, v9, v10);

        outlined copy of Text.Storage(v8, v9, v10);

        v14 = 0;
        while (v14 < *(v11 + 16))
        {
          outlined init with copy of AccessibilityAttachmentStorage(v13, v22);
          v15 = v23;
          outlined destroy of AccessibilityAttachmentStorage(v22);
          if (v15 == 255 || (v15 & 1) == 0)
          {
            ++v14;
            v13 += 320;
            if (v12 != v14)
            {
              continue;
            }
          }

          v2 = v16;
          v1 = v17;
          goto LABEL_4;
        }

        __break(1u);
        break;
      }

      outlined copy of Text.Storage(v8, v9, v10);

      outlined copy of Text.Storage(v8, v9, v10);

LABEL_4:
      ++v3;
      v4 = v18[1];
      v22[0] = *v18;
      v22[1] = v4;

      v5 = static AccessibilityCore.textResolvedToAttributedText(_:in:options:idiom:)();
      outlined consume of Text.Storage(v8, v9, v10);

      outlined consume of Text.Storage(v8, v9, v10);

      if (v5)
      {
        MEMORY[0x18D00CC30](v6);
        if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }
    }

    __break(1u);
  }
}

id AccessibilityNode.accessibilityTextualContext.getter()
{
  AccessibilityNode.attachment.getter(v4);
  outlined init with copy of AccessibilityProperties(v4, v5);
  outlined destroy of AccessibilityAttachment(v4);
  AccessibilityProperties.textContentType.getter();
  outlined destroy of AccessibilityProperties(v5);
  v0 = 0;
  if (LOBYTE(v4[0]) <= 3u)
  {
    if (LOBYTE(v4[0]) > 1u)
    {
      v1 = MEMORY[0x1E69DD978];
      if (LOBYTE(v4[0]) != 2)
      {
        v1 = MEMORY[0x1E69DD980];
      }

      goto LABEL_16;
    }

    if (LOBYTE(v4[0]))
    {
      v1 = MEMORY[0x1E69DD970];
      goto LABEL_16;
    }
  }

  else
  {
    if (LOBYTE(v4[0]) <= 5u)
    {
      v1 = MEMORY[0x1E69DD988];
      if (LOBYTE(v4[0]) != 4)
      {
        v1 = MEMORY[0x1E69DD990];
      }

      goto LABEL_16;
    }

    if (LOBYTE(v4[0]) == 6)
    {
      v1 = MEMORY[0x1E69DD998];
      goto LABEL_16;
    }

    if (LOBYTE(v4[0]) == 7)
    {
      v1 = MEMORY[0x1E69DD9A0];
LABEL_16:
      v0 = *v1;
      v2 = *v1;
    }
  }

  return v0;
}

void AccessibilityNode.accessibilityFrame.getter()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x338))();
  if (v1)
  {
    v2 = v1;
    [(UIView *)v1 accessibilityFrame];
LABEL_3:

    return;
  }

  v9 = 4;
  AccessibilityNode.contentFrame(with:)(&v9, v10);
  if ((v11 & 1) == 0)
  {
    v3 = *v10;
    v4 = *&v10[1];
    v5 = *&v10[2];
    v6 = *&v10[3];
    if (swift_unknownObjectWeakLoadStrong())
    {
      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (!v7)
      {
        swift_unknownObjectRelease();
      }

      v2 = [v7 window];

      if (v2)
      {
        v12.origin.x = v3;
        v12.origin.y = v4;
        v12.size.width = v5;
        v12.size.height = v6;
        UIAccessibilityConvertFrameToScreenCoordinates(v12, v2);
        goto LABEL_3;
      }
    }
  }

  v8.receiver = v0;
  v8.super_class = type metadata accessor for AccessibilityNode();
  objc_msgSendSuper2(&v8, sel_accessibilityFrame);
}

UIBezierPath *AccessibilityNode.accessibilityPath.getter()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x338))();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 accessibilityPath];
  }

  else
  {
    AccessibilityNode.contentPath.getter(&v12);
    if (v16 == 255)
    {
      v11.receiver = v0;
      v11.super_class = type metadata accessor for AccessibilityNode();
      return objc_msgSendSuper2(&v11, sel_accessibilityPath);
    }

    else
    {
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = v15;
      v21 = v16;
      outlined copy of Path.Storage(v12, v13, v14, v15, v16);
      v5 = Path.cgPath.getter();
      v3 = [objc_opt_self() bezierPathWithCGPath_];

      v6 = MEMORY[0x1E6980F80];
      v7 = MEMORY[0x1E69E6720];
      outlined destroy of AccessibilityTextLayoutProperties?(&v12, &lazy cache variable for type metadata for Path?, MEMORY[0x1E6980F80], MEMORY[0x1E69E6720], _sypSgMaTm_3);
      outlined destroy of AccessibilityTextLayoutProperties?(&v12, &lazy cache variable for type metadata for Path?, v6, v7, _sypSgMaTm_3);
      if (swift_unknownObjectWeakLoadStrong())
      {
        objc_opt_self();
        v8 = swift_dynamicCastObjCClass();
        if (!v8)
        {
          swift_unknownObjectRelease();
        }

        v9 = [v8 window];

        if (v9)
        {
          v10 = UIAccessibilityConvertPathToScreenCoordinates(v3, v9);

          return v10;
        }
      }
    }
  }

  return v3;
}

Swift::Int __swiftcall AccessibilityNode._accessibilitySortPriority()()
{
  AccessibilityNode.attachment.getter(v4);
  outlined init with copy of AccessibilityProperties(v4, v5);
  outlined destroy of AccessibilityAttachment(v4);
  v0 = COERCE_DOUBLE(AccessibilityProperties.sortPriority.getter());
  v2 = v1;
  result = outlined destroy of AccessibilityProperties(v5);
  if (v2)
  {
    return 0;
  }

  if (v0 >= 9.22337204e18)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v0 <= -9.22337204e18)
  {
    return 0x8000000000000000;
  }

  if ((~*&v0 & 0x7FF0000000000000) != 0)
  {
    if (v0 > -9.22337204e18)
    {
      return v0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

__C::CGRect __swiftcall AccessibilityNode._accessibilityBounds(for:)(__C::_NSRange a1)
{
  length = a1.length;
  location = a1.location;
  AccessibilityNode.attachment.getter(&v25);
  outlined init with copy of AccessibilityProperties(&v25, v30);
  outlined destroy of AccessibilityAttachment(&v25);
  v4 = v30[3];

  outlined destroy of AccessibilityProperties(v30);
  if (!v4)
  {
    goto LABEL_12;
  }

  if (*(v4 + 16) != 1)
  {

    goto LABEL_12;
  }

  v5 = *(v4 + 32);
  v6 = *(v4 + 40);
  v7 = *(v4 + 48);

  outlined copy of Text.Storage(v5, v6, v7);

  v8 = *&v1[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment + 8];
  v25 = *&v1[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment];
  v26 = v8;
  v30[0] = 0;
  v30[1] = 0;

  v9 = Text.resolveAttributedString(in:includeDefaultAttributes:options:idiom:)();
  outlined consume of Text.Storage(v5, v6, v7);

  if (!v9)
  {
LABEL_12:
    v24.receiver = v1;
    v24.super_class = type metadata accessor for AccessibilityNode();
    objc_msgSendSuper2(&v24, sel__accessibilityBoundsForRange_, location, length);
    goto LABEL_13;
  }

  specialized AccessibilityNode.withLayoutManager<A>(_:_:)(v9, location, length, &v25);
  if (v29)
  {
    goto LABEL_11;
  }

  v10 = v25;
  v11 = v26;
  v12 = v27;
  v13 = v28;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_11;
  }

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (!v14)
  {
    swift_unknownObjectRelease();
  }

  v15 = [v14 window];

  if (!v15)
  {
LABEL_11:

    goto LABEL_12;
  }

  v31.origin.x = v10;
  v31.origin.y = v11;
  v31.size.width = v12;
  v31.size.height = v13;
  v32 = UIAccessibilityConvertFrameToScreenCoordinates(v31, v15);
  x = v32.origin.x;
  y = v32.origin.y;
  width = v32.size.width;
  height = v32.size.height;

  v20 = height;
  v21 = width;
  v22 = y;
  v23 = x;
LABEL_13:
  result.size.height = v20;
  result.size.width = v21;
  result.origin.y = v22;
  result.origin.x = v23;
  return result;
}

Class @objc AccessibilityLazyLayoutNode.accessibilityElements.getter(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = AccessibilityNode._accessibilityNodeChildrenUnsorted.getter(a3);

  if (v5)
  {
    v6.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  return v6.super.isa;
}

Class @objc AccessibilityNode.accessibilityUserInputLabels.getter(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();

  if (v5)
  {
    v6.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  return v6.super.isa;
}

char *AccessibilityNode.automationElements.getter()
{
  v1 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_children;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!(v2 >> 62))
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_15:
    v15 = AccessibilityNode.supplementaryLinkElements.getter();
    v8 = specialized _arrayForceCast<A, B>(_:)(v15);
LABEL_16:

    return v8;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_15;
  }

LABEL_3:

  v4 = specialized static AccessibilityCore.queryFilter(elements:options:)(v3, 1);

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_18:

    return MEMORY[0x1E69E7CC0];
  }

  v5 = __CocoaSet.count.getter();
  if (!v5)
  {
    goto LABEL_18;
  }

LABEL_5:
  v18 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = v18;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x18D00E9C0](v7, v4);
      }

      else
      {
        v9 = *(v4 + 8 * v7 + 32);
      }

      v10 = v9;
      AccessibilityNode.representedElement.getter();
      v12 = v11;
      ObjectType = swift_getObjectType();

      *&v16 = v12;
      v18 = v8;
      v14 = *(v8 + 2);
      v13 = *(v8 + 3);
      if (v14 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        v8 = v18;
      }

      ++v7;
      *(v8 + 2) = v14 + 1;
      outlined init with take of Any(&v16, &v8[32 * v14 + 32]);
    }

    while (v5 != v7);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void AccessibilityNode.accessibilityContainer()(_OWORD *a1@<X8>)
{
  AccessibilityNode.accessibilityParent(options:)(0, &v10);
  if (v11)
  {
    outlined init with take of Any(&v10, a1);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      *(&v9 + 1) = swift_getObjectType();
      *&v8 = v4;
      outlined init with take of Any(&v8, a1);
    }

    else
    {
      v8 = 0u;
      v9 = 0u;
      v7.receiver = v1;
      v7.super_class = type metadata accessor for AccessibilityNode();
      if (objc_msgSendSuper2(&v7, sel_accessibilityContainer))
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v5 = 0u;
        v6 = 0u;
      }

      *a1 = v5;
      a1[1] = v6;
      if (*(&v9 + 1))
      {
        outlined destroy of AccessibilityTextLayoutProperties?(&v8, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_3);
      }
    }

    if (v11)
    {
      outlined destroy of AccessibilityTextLayoutProperties?(&v10, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_3);
    }
  }
}

void AccessibilityNode.accessibilityParent(options:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      if (v10)
      {
        v11 = v10;
        AccessibilityNode.visibility.getter(&v13);
        if ((v13 & 0x20) != 0)
        {
          *(a2 + 24) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
          *a2 = v11;
          return;
        }
      }

      swift_unknownObjectRelease();
    }

    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  v12 = Strong;
  if ((a1 & 1) == 0 && (AccessibilityNode.visibility.getter(&v13), (v13 & 0x20) != 0))
  {
    AccessibilityNode.accessibilityParent(options:)(a1, a2);
  }

  else
  {
    AccessibilityNode.representedElement.getter();
    v6 = v5;
    type metadata accessor for HostingScrollView();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      v8 = *(v7 + OBJC_IVAR____TtC7SwiftUI17HostingScrollView_host);
      *(a2 + 24) = type metadata accessor for HostingScrollView.PlatformGroupContainer();
      v9 = v8;

      *a2 = v9;
    }

    else
    {

      *(a2 + 24) = type metadata accessor for AccessibilityNode();
      *a2 = v12;
    }
  }
}

id @objc AccessibilityNode._accessibilityUserTestingParent()(void *a1)
{
  v1 = a1;
  AccessibilityNode.accessibilityParent(options:)(1, v10);

  v2 = v11;
  if (v11)
  {
    v3 = __swift_project_boxed_opaque_existential_1(v10, v11);
    v4 = *(v2 - 8);
    v5 = MEMORY[0x1EEE9AC00](v3);
    v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v7, v5);
    v8 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v4 + 8))(v7, v2);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

Class @objc AccessibilityNode.accessibilityDragSourceDescriptors.getter(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = AccessibilityNode.accessibilityDragSourceDescriptors.getter();

  if (v4)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAccessibilityLocationDescriptor, 0x1E69DC620);
    v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

unint64_t AccessibilityNode.accessibilityDragSourceDescriptors.getter()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (!v2 || (v3 = v2, (AccessibilityNode.resolvedDragDropOptions(filter:view:)(1, v2) & 0x10000) != 0))
    {
      swift_unknownObjectRelease();
      return 0;
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
      swift_unknownObjectRetain();
      AccessibilityActivationPointAccumulator.visit(node:)(v0);
      swift_unknownObjectRelease();

      if (v5 >> 62)
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAccessibilityLocationDescriptor, 0x1E69DC620);

        v4 = _bridgeCocoaArray<A>(_:)();
        swift_bridgeObjectRelease_n();
        return v4;
      }

      else
      {

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAccessibilityLocationDescriptor, 0x1E69DC620);

        return v5;
      }
    }
  }

  return result;
}

uint64_t AccessibilityNode.accessibilityViewIsModal.getter()
{
  v1 = v0;
  AccessibilityNode.attachment.getter(v5);
  outlined init with copy of AccessibilityProperties(v5, v6);
  outlined destroy of AccessibilityAttachment(v5);
  LOBYTE(v5[0]) = 14;
  v2 = AccessibilityProperties.subscript.getter();
  outlined destroy of AccessibilityProperties(v6);
  if (v2 == 2)
  {
    v4.receiver = v1;
    v4.super_class = type metadata accessor for AccessibilityNode();
    v2 = objc_msgSendSuper2(&v4, sel_accessibilityViewIsModal);
  }

  return v2 & 1;
}

uint64_t AccessibilityNode.accessibilityNavigationStyle.getter()
{
  LOBYTE(v12) = 4;
  AccessibilityNode.impliedVisibility(consideringParent:with:)(1, &v12, v14);
  if (v14[0] - 1 > 1)
  {
    v10 = type metadata accessor for AccessibilityNode();
    v15.receiver = v0;
    v15.super_class = v10;
    return objc_msgSendSuper2(&v15, sel_accessibilityNavigationStyle);
  }

  else
  {
    v1 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_children;
    swift_beginAccess();
    v2 = *&v0[v1];

    v3 = specialized Collection<>.filterVisible(_:)(0, 0, v2);

    if (v3 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v5 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x18D00E9C0](v5, v3);
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_25;
          }

          v6 = *(v3 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        AccessibilityNode.visibility.getter(&v12);
        v9 = v12;
        if ((v12 & 4) != 0 || (v12 & 8) != 0 && (v13 & 4) == 0)
        {
          goto LABEL_16;
        }

        if ((v12 & 0x10) != 0)
        {
          goto LABEL_23;
        }

        if ((v12 & 0x40) != 0)
        {
          goto LABEL_16;
        }

        if ((v12 & 1) == 0)
        {
          if ((v12 & 2) != 0)
          {
LABEL_23:

            return 1;
          }

LABEL_16:

          goto LABEL_17;
        }

        if ((v9 & 2) != 0)
        {

          return 1;
        }

LABEL_17:
        ++v5;
        if (v8 == i)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      ;
    }

LABEL_27:

    return 2;
  }
}

uint64_t @objc AccessibilityNode.accessibilityZoomIn(at:)(void *a1, double a2, double a3, uint64_t a4, char a5)
{
  v8 = a1;
  [v8 accessibilityFrame];
  UnitPoint.init(_:in:)();
  v13[0] = a5;
  v14 = v9;
  v15 = v10;
  v16 = a2;
  v17 = a3;
  v11 = specialized AccessibilityNode.sendAction<A>(_:value:)(v13);

  return v11 & 1;
}

Class @objc AccessibilityNode.accessibilityAttributedUserInputLabels.getter(void *a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void *a5)
{
  v8 = a1;
  v9 = a3();

  if (v9)
  {
    type metadata accessor for NSObject(0, a4, a5);
    v10.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v10.super.isa = 0;
  }

  return v10.super.isa;
}

uint64_t AccessibilityNode.accessibilityCustomActions.getter()
{
  type metadata accessor for Text.Style?(0, &lazy cache variable for type metadata for Text.Style?, MEMORY[0x1E6981008], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v36 - v2;
  v4 = type metadata accessor for ImageResolutionContext();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  AccessibilityNode.attachment.getter(&v41);
  outlined init with copy of AccessibilityProperties(&v41, v44);
  outlined destroy of AccessibilityAttachment(&v41);
  lazy protocol witness table accessor for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey();
  AccessibilityProperties.subscript.getter();
  outlined destroy of AccessibilityProperties(v44);
  v7 = v41;
  v38 = v0;
  v8 = *(v0 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment);
  v9 = *(v38 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment + 8);
  v41 = *(v38 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment);
  v42 = v9;
  v10 = type metadata accessor for Text.Style();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  swift_retain_n();
  v11 = swift_retain_n();
  MEMORY[0x18D008220](v11);
  ImageResolutionContext.init(environment:textStyle:transaction:)();
  v41 = MEMORY[0x1E69E7CD0];
  v40[2] = v8;
  v40[3] = v9;
  v40[4] = &v41;
  v40[5] = v6;
  v12 = MEMORY[0x1E69E7CC0];
  v13 = specialized Sequence.reduce<A>(into:_:)(MEMORY[0x1E69E7CC0], closure #1 in Sequence<>.resolved(in:)partial apply, v40, v7);

  outlined destroy of ImageResolutionContext(v6, MEMORY[0x1E697FE88]);

  v14 = *(v13 + 16);
  if (v14)
  {
    v44[0] = v12;
    specialized ContiguousArray.reserveCapacity(_:)();
    v36[2] = v43;
    v37 = sel_localizedActionRotorCategory;
    v36[1] = v13;
    v15 = (v13 + 56);
    do
    {
      v18 = *(v15 - 3);
      v17 = *(v15 - 2);
      v19 = *(v15 - 1);
      v20 = *v15;
      v21 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v22 = swift_allocObject();
      v22[2] = v21;
      v22[3] = v18;
      v39 = v17;
      v22[4] = v17;
      v22[5] = v19;
      v22[6] = v20;
      v23 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);
      v43[2] = partial apply for closure #1 in closure #1 in AccessibilityNode.accessibilityCustomActions.getter;
      v43[3] = v22;
      v41 = MEMORY[0x1E69E9820];
      v42 = 1107296256;
      v43[0] = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomAction) -> (@unowned Bool);
      v43[1] = &block_descriptor_177;
      v24 = v14;
      v25 = _Block_copy(&v41);
      v26 = v20;
      v27 = v18;

      v28 = v26;

      v29 = v27;

      v30 = [v23 initWithAttributedName:v29 image:v28 actionHandler:v25];
      v31 = v25;
      v32 = v24;
      _Block_release(v31);

      if ([v30 respondsToSelector_])
      {
        if (v19)
        {
          v16 = MEMORY[0x18D00C850](v39, v19);
        }

        else
        {
          v16 = 0;
        }

        [v30 setLocalizedActionRotorCategory_];
      }

      v15 += 4;

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v14 = v32 - 1;
    }

    while (v14);

    result = v44[0];
    if (!(v44[0] >> 62))
    {
LABEL_10:
      if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return result;
      }

      goto LABEL_11;
    }
  }

  else
  {

    result = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
      goto LABEL_10;
    }
  }

  v34 = result;
  v35 = __CocoaSet.count.getter();
  result = v34;
  if (!v35)
  {
LABEL_11:

    return 0;
  }

  return result;
}

BOOL closure #1 in closure #1 in AccessibilityNode.accessibilityCustomActions.getter(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [a3 string];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10._countAndFlagsBits = v7;
    v10._object = v9;
    v11 = AccessibilityNode.sendAction(named:)(v10);
  }

  else
  {
    return 0;
  }

  return v11;
}

id AccessibilityNode.accessibilityDirectTouchOptions.getter()
{
  AccessibilityNode.attachment.getter(v3);
  outlined init with copy of AccessibilityProperties(v3, v4);
  outlined destroy of AccessibilityAttachment(v3);
  lazy protocol witness table accessor for type AccessibilityProperties.TouchInfoKey and conformance AccessibilityProperties.TouchInfoKey();
  AccessibilityProperties.subscript.getter();
  outlined destroy of AccessibilityProperties(v4);
  if (LOBYTE(v3[0]) != 2)
  {
    return v3[1];
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccessibilityNode();
  return objc_msgSendSuper2(&v2, sel_accessibilityDirectTouchOptions);
}

uint64_t AccessibilityNode.accessibilityURL()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Text.Style?(0, &lazy cache variable for type metadata for LinkDestination.Configuration?, MEMORY[0x1E697E810], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13[-1] - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  AccessibilityNode.attachment.getter(v13);
  outlined init with copy of AccessibilityProperties(v13, v14);
  outlined destroy of AccessibilityAttachment(v13);
  AccessibilityProperties.linkDestination.getter();
  outlined destroy of AccessibilityProperties(v14);
  v9 = type metadata accessor for LinkDestination.Configuration();
  if ((*(*(v9 - 8) + 48))(v4, 1, v9) == 1)
  {
    _s10Foundation9IndexPathVSgWOhTm_0(v4, &lazy cache variable for type metadata for LinkDestination.Configuration?, MEMORY[0x1E697E810]);
    v10 = 1;
  }

  else
  {
    LinkDestination.Configuration.url.getter();
    outlined destroy of ImageResolutionContext(v4, MEMORY[0x1E697E810]);
    (*(v6 + 32))(a1, v8, v5);
    v10 = 0;
  }

  return (*(v6 + 56))(a1, v10, 1, v5);
}

void AccessibilityNode._accessibilityUserDefinedLinkedUIElements.getter()
{
  if (*(v0 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_relationshipScope))
  {

    v1 = AccessibilityRelationshipScope.linkedNodes(for:)(v0);

    v2 = MEMORY[0x1E69E7CC0];
    v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI22AccessibilitySortCache33_53F8EA6FDE2098E3B48F956069C295B7LLVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    if (v1 >> 62)
    {
      v3 = __CocoaSet.count.getter();
    }

    else
    {
      v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    type metadata accessor for [ObjectIdentifier : AccessibilitySortCache]();
    Dictionary.reserveCapacity(_:)(v3);

    v11 = specialized Array._copyToContiguousArray()(v4);
    specialized MutableCollection<>.sort(by:)(&v11, 2, 0, 4, &v12);

    v5 = v11;

    if (v5 < 0 || (v5 & 0x4000000000000000) != 0)
    {
      v6 = __CocoaSet.count.getter();
      if (v6)
      {
LABEL_7:
        v12 = v2;
        specialized ContiguousArray.reserveCapacity(_:)();
        if (v6 < 0)
        {
          __break(1u);

          __break(1u);
          return;
        }

        v7 = 0;
        do
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x18D00E9C0](v7, v5);
          }

          else
          {
            v8 = *(v5 + 8 * v7 + 32);
          }

          v9 = v8;
          ++v7;
          AccessibilityNode.representedElement.getter();

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        while (v6 != v7);

        v10 = v12;
        if (!(v12 >> 62))
        {
          goto LABEL_14;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v6 = *(v5 + 16);
      if (v6)
      {
        goto LABEL_7;
      }
    }

    v10 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
LABEL_14:
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_15:
        specialized _arrayForceCast<A, B>(_:)(v10);

        return;
      }

      goto LABEL_20;
    }

LABEL_19:
    if (__CocoaSet.count.getter())
    {
      goto LABEL_15;
    }

LABEL_20:
  }
}

Swift::Bool __swiftcall AccessibilityNode.accessibilityScroll(_:)(UIAccessibilityScrollDirection a1)
{
  if ((a1 - 1) >= 6)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else if (specialized AccessibilityNode.sendAction<A>(_:value:)(0x30102000103uLL >> (8 * (a1 - 1))))
  {
    return 1;
  }

  else
  {
    v4.receiver = v1;
    v4.super_class = type metadata accessor for AccessibilityNode();
    return objc_msgSendSuper2(&v4, sel_accessibilityScroll_, a1);
  }

  return result;
}

Swift::Bool __swiftcall AccessibilityNode._accessibilityCanPerformAction(_:)(Swift::UInt32 a1)
{
  v2 = *&a1;
  v7 = a1 == 2007 || a1 == 2006 || a1 == 2008 || a1 == 2009 || a1 == 2019 || a1 == 2020;
  if (v7 && (specialized AccessibilityNode.hasAction<A>(_:)() & 1) != 0)
  {
    return 1;
  }

  v9.receiver = v1;
  v9.super_class = type metadata accessor for AccessibilityNode();
  return objc_msgSendSuper2(&v9, sel__accessibilityCanPerformAction_, v2);
}

Swift::Bool __swiftcall AccessibilityNode._accessibilityIsMacVisualAppearance()()
{
  v1 = [v0 accessibilityTraits];
  if ((*MEMORY[0x1E69DDA30] & ~v1) != 0)
  {
    return 0;
  }

  v2 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_children;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (v3 >> 62)
  {
LABEL_18:
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  do
  {
    v6 = v4 != v5;
    if (v4 == v5)
    {
      break;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x18D00E9C0](v5, v3);
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v7 = *(v3 + 8 * v5 + 32);
    }

    v8 = v7;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    AccessibilityNode.representedElement.getter();
    v10 = v9;
    v11 = [v9 swiftUI_accessibilityIsMacVisualAppearance];

    ++v5;
  }

  while (!v11);

  return v6;
}

char *AccessibilityNode._accessibilityMediaAnalysisElement()@<X0>(void *a1@<X8>)
{
  if ([v1 swiftUI_accessibilityCanBeConsideredMediaAnalysisElement])
  {
LABEL_15:
    a1[3] = type metadata accessor for AccessibilityNode();
LABEL_16:
    *a1 = v11;

    return v11;
  }

  v3 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_children;
  swift_beginAccess();
  v4 = *&v11[v3];
  if (v4 >> 62)
  {
LABEL_23:
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v5)
  {
LABEL_14:

    goto LABEL_15;
  }

  v6 = 0;
  while (1)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x18D00E9C0](v6, v4);
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v7 = *(v4 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if ([v7 swiftUI_accessibilityCanBeConsideredMediaAnalysisElement])
    {
      break;
    }

    ++v6;
    if (v9 == v5)
    {
      goto LABEL_14;
    }
  }

  result = type metadata accessor for AccessibilityNode();
  a1[3] = result;
  if (!v8)
  {
    goto LABEL_16;
  }

  *a1 = v8;
  return result;
}

id @objc AccessibilityNode.accessibilityContainer()(void *a1, uint64_t a2, void (*a3)(void *__return_ptr))
{
  v4 = a1;
  a3(v13);

  v5 = v14;
  if (v14)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v13, v14);
    v7 = *(v5 - 8);
    v8 = MEMORY[0x1EEE9AC00](v6);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v7 + 8))(v10, v5);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void AccessibilityNode.applyProperties(to:includingRelations:)(void *a1, int a2)
{
  v3 = v2;
  type metadata accessor for Text.Style?(0, &lazy cache variable for type metadata for Text.Style?, MEMORY[0x1E6981008], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v60[-v7];
  v9 = type metadata accessor for ImageResolutionContext();
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v60[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  [a1 setAccessibilityContainer_];
  swift_unknownObjectRelease();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v65 = partial apply for closure #1 in AccessibilityNode.applyProperties(to:includingRelations:);
  v66 = v13;
  *&v63 = MEMORY[0x1E69E9820];
  *(&v63 + 1) = 1107296256;
  *&v64 = thunk for @escaping @callee_guaranteed () -> (@owned String?);
  *(&v64 + 1) = &block_descriptor_42;
  v14 = _Block_copy(&v63);

  [a1 setAccessibilityLanguageBlock_];
  _Block_release(v14);
  if (v3[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_platformElementPropertiesDirty] == 1)
  {
    v61 = a2;
    v3[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_platformElementPropertiesDirty] = 0;
    AccessibilityNode.attachment.getter(&v63);
    outlined init with copy of AccessibilityProperties(&v63, v67);
    outlined destroy of AccessibilityAttachment(&v63);
    AccessibilityNode.applyProperties(_:to:)(v67, a1);
    v63 = 0u;
    v64 = 0u;
    AccessibilityNode.applyAction(_:key:to:)(&v63, 2010, a1);
    outlined consume of AccessibilityActionKind.ActionKind(v63, *(&v63 + 1), v64, *(&v64 + 1));
    v63 = 0uLL;
    *&v64 = 0;
    *(&v64 + 1) = 1;
    AccessibilityNode.applyAction(_:key:to:)(&v63, 2013, a1);
    outlined consume of AccessibilityActionKind.ActionKind(v63, *(&v63 + 1), v64, *(&v64 + 1));
    v15 = MEMORY[0x18D00C850](0x4774694B49555841, 0xEB0000000065756CLL);
    v16 = NSClassFromString(v15);

    if (v16 && (specialized AccessibilityNode.hasAction<A>(_:)(2) & 1) != 0 && [a1 respondsToSelector_])
    {
      v17 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v18 = swift_allocObject();
      *(v18 + 16) = v17;
      *(v18 + 24) = 2;
      v65 = closure #1 in AccessibilityNode.applyAction<A>(_:value:key:to:)specialized partial apply;
      v66 = v18;
      *&v63 = MEMORY[0x1E69E9820];
      *(&v63 + 1) = 1107296256;
      *&v64 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?) -> (@unowned Bool);
      *(&v64 + 1) = &block_descriptor_54;
      v19 = _Block_copy(&v63);

      [a1 _accessibilitySetActionBlock_withValue_forKey_];
      _Block_release(v19);
    }

    v20 = MEMORY[0x18D00C850](0x4774694B49555841, 0xEB0000000065756CLL);
    v21 = NSClassFromString(v20);

    if (v21 && (specialized AccessibilityNode.hasAction<A>(_:)(2) & 1) != 0 && [a1 respondsToSelector_])
    {
      v22 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      *(v23 + 24) = 258;
      v65 = partial apply for specialized closure #1 in AccessibilityNode.applyAction<A>(_:value:key:to:);
      v66 = v23;
      *&v63 = MEMORY[0x1E69E9820];
      *(&v63 + 1) = 1107296256;
      *&v64 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?) -> (@unowned Bool);
      *(&v64 + 1) = &block_descriptor_46_0;
      v24 = _Block_copy(&v63);

      [a1 _accessibilitySetActionBlock_withValue_forKey_];
      _Block_release(v24);
    }

    v25 = MEMORY[0x18D00C850](0x4774694B49555841, 0xEB0000000065756CLL);
    v26 = NSClassFromString(v25);

    if (v26 && (specialized AccessibilityNode.hasAction<A>(_:)() & 1) != 0 && [a1 respondsToSelector_])
    {
      v27 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v28 = swift_allocObject();
      *(v28 + 16) = v27;
      *(v28 + 24) = 0;
      v65 = closure #1 in AccessibilityNode.applyAction<A>(_:value:key:to:)specialized partial apply;
      v66 = v28;
      *&v63 = MEMORY[0x1E69E9820];
      *(&v63 + 1) = 1107296256;
      *&v64 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?) -> (@unowned Bool);
      *(&v64 + 1) = &block_descriptor_39_0;
      v29 = _Block_copy(&v63);

      [a1 _accessibilitySetActionBlock_withValue_forKey_];
      _Block_release(v29);
    }

    v30 = MEMORY[0x18D00C850](0x4774694B49555841, 0xEB0000000065756CLL);
    v31 = NSClassFromString(v30);

    if (v31 && (specialized AccessibilityNode.hasAction<A>(_:)() & 1) != 0 && [a1 respondsToSelector_])
    {
      v32 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v33 = swift_allocObject();
      *(v33 + 16) = v32;
      *(v33 + 24) = 2;
      v65 = closure #1 in AccessibilityNode.applyAction<A>(_:value:key:to:)specialized partial apply;
      v66 = v33;
      *&v63 = MEMORY[0x1E69E9820];
      *(&v63 + 1) = 1107296256;
      *&v64 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?) -> (@unowned Bool);
      *(&v64 + 1) = &block_descriptor_31;
      v34 = _Block_copy(&v63);

      [a1 _accessibilitySetActionBlock_withValue_forKey_];
      _Block_release(v34);
    }

    v35 = MEMORY[0x18D00C850](0x4774694B49555841, 0xEB0000000065756CLL);
    v36 = NSClassFromString(v35);

    if (v36 && (specialized AccessibilityNode.hasAction<A>(_:)() & 1) != 0 && [a1 respondsToSelector_])
    {
      v37 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v38 = swift_allocObject();
      *(v38 + 16) = v37;
      *(v38 + 24) = 3;
      v65 = closure #1 in AccessibilityNode.applyAction<A>(_:value:key:to:)specialized partial apply;
      v66 = v38;
      *&v63 = MEMORY[0x1E69E9820];
      *(&v63 + 1) = 1107296256;
      *&v64 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?) -> (@unowned Bool);
      *(&v64 + 1) = &block_descriptor_23;
      v39 = _Block_copy(&v63);

      [a1 _accessibilitySetActionBlock_withValue_forKey_];
      _Block_release(v39);
    }

    v40 = MEMORY[0x18D00C850](0x4774694B49555841, 0xEB0000000065756CLL);
    v41 = NSClassFromString(v40);

    if (v41 && (specialized AccessibilityNode.hasAction<A>(_:)() & 1) != 0 && [a1 respondsToSelector_])
    {
      v42 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v43 = swift_allocObject();
      *(v43 + 16) = v42;
      *(v43 + 24) = 1;
      v65 = partial apply for specialized closure #1 in AccessibilityNode.applyAction<A>(_:value:key:to:);
      v66 = v43;
      *&v63 = MEMORY[0x1E69E9820];
      *(&v63 + 1) = 1107296256;
      *&v64 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?) -> (@unowned Bool);
      *(&v64 + 1) = &block_descriptor_15_1;
      v44 = _Block_copy(&v63);

      [a1 _accessibilitySetActionBlock_withValue_forKey_];
      _Block_release(v44);
    }

    AccessibilityNode.attachment.getter(&v63);
    outlined init with copy of AccessibilityProperties(&v63, v62);
    outlined destroy of AccessibilityAttachment(&v63);
    lazy protocol witness table accessor for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey();
    AccessibilityProperties.subscript.getter();
    outlined destroy of AccessibilityProperties(v62);
    v45 = v63;
    v47 = *&v3[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment + 8];
    *&v63 = *&v3[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment];
    v46 = v63;
    *(&v63 + 1) = v47;
    v48 = type metadata accessor for Text.Style();
    (*(*(v48 - 8) + 56))(v8, 1, 1, v48);
    swift_retain_n();
    v49 = swift_retain_n();
    MEMORY[0x18D008220](v49);
    v50 = ImageResolutionContext.init(environment:textStyle:transaction:)();
    *&v63 = MEMORY[0x1E69E7CD0];
    MEMORY[0x1EEE9AC00](v50);
    *&v60[-32] = v46;
    *&v60[-24] = v47;
    *&v60[-16] = &v63;
    *&v60[-8] = v12;
    v51 = specialized Sequence.reduce<A>(into:_:)(MEMORY[0x1E69E7CC0], partial apply for closure #1 in Sequence<>.resolved(in:), &v60[-48], v45);

    outlined destroy of ImageResolutionContext(v12, MEMORY[0x1E697FE88]);

    v52 = *(v51 + 16);

    if (v52)
    {
      v53 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v65 = partial apply for closure #2 in AccessibilityNode.applyProperties(to:includingRelations:);
      v66 = v53;
      *&v63 = MEMORY[0x1E69E9820];
      *(&v63 + 1) = 1107296256;
      *&v64 = thunk for @escaping @callee_guaranteed () -> (@owned [UIAccessibilityCustomAction]?);
      *(&v64 + 1) = &block_descriptor_4;
      v52 = _Block_copy(&v63);
    }

    v54 = v61;
    [a1 setAccessibilityCustomActionsBlock_];
    _Block_release(v52);
    v55 = 0;
    if (specialized AccessibilityNode.hasAction<A>(_:)(0, 0, 0, 2))
    {
      v56 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v65 = partial apply for closure #3 in AccessibilityNode.applyProperties(to:includingRelations:);
      v66 = v56;
      *&v63 = MEMORY[0x1E69E9820];
      *(&v63 + 1) = 1107296256;
      *&v64 = thunk for @escaping @callee_guaranteed () -> (@unowned Bool);
      *(&v64 + 1) = &block_descriptor_8_0;
      v55 = _Block_copy(&v63);
    }

    [a1 setAccessibilityMagicTapBlock_];
    _Block_release(v55);
    type metadata accessor for HostingScrollView();
    v57 = swift_dynamicCastClass();
    if (v57)
    {
      v58 = v57;
      v59 = a1;
      AccessibilityNode.applyChildren(to:)(v58);
    }

    if (v54)
    {
      AccessibilityNode.applyRelations(to:)(a1);
    }

    outlined destroy of AccessibilityProperties(v67);
  }
}

void AccessibilityNode.applyProperties(_:to:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = MEMORY[0x18D00C850](0x4774694B49555841, 0xEB0000000065756CLL);
  v7 = NSClassFromString(v6);

  if (*(a1 + 120))
  {
    v8 = 2;
  }

  else
  {
    aBlock = *(a1 + 112);
    v8 = AccessibilityNullableOptionSet<>.shouldApplyPlatformElementOverride.getter() & 0x101;
  }

  v9 = [v3 isAccessibilityElement];
  if ((v8 & 3) == 2 || (v8 & 1) == 0)
  {
    v12 = 0;
  }

  else
  {
    v10 = v9;
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    v90 = partial apply for closure #3 in AccessibilityNode.applyProperties(_:to:);
    v91 = v11;
    aBlock = MEMORY[0x1E69E9820];
    v87 = 1107296256;
    v88 = thunk for @escaping @callee_guaranteed () -> (@unowned Bool);
    v89 = &block_descriptor_169_0;
    v12 = _Block_copy(&aBlock);
  }

  [a2 setIsAccessibilityElementBlock_];
  _Block_release(v12);
  v13 = [v3 accessibilityElementsHidden];
  v14 = 0;
  if ((v8 & 3) != 2 && v8 >= 0x100)
  {
    v15 = v13;
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    v90 = partial apply for closure #2 in AccessibilityNode.applyProperties(_:to:);
    v91 = v16;
    aBlock = MEMORY[0x1E69E9820];
    v87 = 1107296256;
    v88 = thunk for @escaping @callee_guaranteed () -> (@unowned Bool);
    v89 = &block_descriptor_163;
    v14 = _Block_copy(&aBlock);
  }

  [a2 setAccessibilityElementsHiddenBlock_];
  _Block_release(v14);
  LOBYTE(aBlock) = 14;
  v17 = AccessibilityProperties.subscript.getter();
  if (v17 == 2)
  {
    [a2 setAccessibilityViewIsModalBlock_];
    v18 = *(a1 + 24);
    if (!v18)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v19 = v17;
    v20 = swift_allocObject();
    *(v20 + 16) = v19 & 1;
    v90 = partial apply for closure #3 in AccessibilityNode.applyProperties(_:to:);
    v91 = v20;
    aBlock = MEMORY[0x1E69E9820];
    v87 = 1107296256;
    v88 = thunk for @escaping @callee_guaranteed () -> (@unowned Bool);
    v89 = &block_descriptor_157;
    v21 = _Block_copy(&aBlock);

    [a2 setAccessibilityViewIsModalBlock_];
    _Block_release(v21);
    v18 = *(a1 + 24);
    if (!v18)
    {
      goto LABEL_17;
    }
  }

  if (*(v18 + 16))
  {
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v90 = partial apply for closure #4 in AccessibilityNode.applyProperties(_:to:);
    v91 = v22;
    aBlock = MEMORY[0x1E69E9820];
    v87 = 1107296256;
    v88 = thunk for @escaping @callee_guaranteed () -> (@owned String?);
    v89 = &block_descriptor_151;
    v23 = _Block_copy(&aBlock);

    goto LABEL_18;
  }

LABEL_17:
  v23 = 0;
LABEL_18:
  [a2 setAccessibilityLabelBlock_];
  _Block_release(v23);
  outlined init with copy of AccessibilityValueStorage?(a1 + 64, &aBlock, &lazy cache variable for type metadata for AccessibilityValueStorage?, MEMORY[0x1E69804E0], MEMORY[0x1E69E6720], _sypSgMaTm_3);
  if (v89 == 1)
  {
    outlined destroy of AccessibilityTextLayoutProperties?(&aBlock, &lazy cache variable for type metadata for AccessibilityValueStorage?, MEMORY[0x1E69804E0], MEMORY[0x1E69E6720], _sypSgMaTm_3);
  }

  else
  {
    v24 = AccessibilityValueStorage.valueDescription.getter();
    outlined destroy of AccessibilityValueStorage(&aBlock);
    v25 = *(v24 + 16);

    if (v25)
    {
      v26 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v90 = partial apply for closure #5 in AccessibilityNode.applyProperties(_:to:);
      v91 = v26;
      aBlock = MEMORY[0x1E69E9820];
      v87 = 1107296256;
      v88 = thunk for @escaping @callee_guaranteed () -> (@owned String?);
      v89 = &block_descriptor_147;
      v27 = _Block_copy(&aBlock);

      goto LABEL_23;
    }
  }

  v27 = 0;
LABEL_23:
  [a2 setAccessibilityValueBlock_];
  _Block_release(v27);
  v28 = *(AccessibilityProperties.hints.getter() + 16);

  if (v28)
  {
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v90 = partial apply for closure #6 in AccessibilityNode.applyProperties(_:to:);
    v91 = v29;
    aBlock = MEMORY[0x1E69E9820];
    v87 = 1107296256;
    v88 = thunk for @escaping @callee_guaranteed () -> (@owned String?);
    v89 = &block_descriptor_83;
    v28 = _Block_copy(&aBlock);
  }

  [a2 setAccessibilityHintBlock_];
  _Block_release(v28);
  if (*(a1 + 8))
  {
    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v90 = partial apply for closure #7 in AccessibilityNode.applyProperties(_:to:);
    v91 = v30;
    aBlock = MEMORY[0x1E69E9820];
    v87 = 1107296256;
    v88 = thunk for @escaping @callee_guaranteed () -> (@owned String?);
    v89 = &block_descriptor_143;
    v31 = _Block_copy(&aBlock);
  }

  else
  {
    v31 = 0;
  }

  [a2 setAccessibilityIdentifierBlock_];
  _Block_release(v31);
  v32 = AccessibilityProperties.inputLabels.getter();
  if (v32)
  {
    v33 = *(v32 + 16);

    if (v33)
    {
      v34 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v90 = partial apply for closure #8 in AccessibilityNode.applyProperties(_:to:);
      v91 = v34;
      aBlock = MEMORY[0x1E69E9820];
      v87 = 1107296256;
      v88 = thunk for @escaping @callee_guaranteed () -> (@owned [NSAttributedString]?);
      v89 = &block_descriptor_139;
      v33 = _Block_copy(&aBlock);
    }
  }

  else
  {
    v33 = 0;
  }

  [a2 setAccessibilityAttributedUserInputLabelsBlock_];
  _Block_release(v33);
  v35 = [v3 accessibilityTextualContext];
  [a2 setAccessibilityTextualContext_];

  v36 = [v3 accessibilityDirectTouchOptions];
  if (v36)
  {
    [a2 setAccessibilityDirectTouchOptions_];
  }

  v37 = [v3 accessibilityContainerType];
  type metadata accessor for HostingScrollView();
  if (!swift_dynamicCastClass() && v37)
  {
    [a2 setAccessibilityContainerType_];
  }

  if (v7)
  {
    if (v37 == 1)
    {
      v38 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v90 = partial apply for closure #9 in AccessibilityNode.applyProperties(_:to:);
      v91 = v38;
      aBlock = MEMORY[0x1E69E9820];
      v87 = 1107296256;
      v88 = thunk for @escaping @callee_guaranteed () -> (@owned NSNumber?);
      v89 = &block_descriptor_123;
      v39 = _Block_copy(&aBlock);

      [a2 _setAccessibilityColumnCountBlock_];
      _Block_release(v39);
      v40 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v90 = partial apply for closure #10 in AccessibilityNode.applyProperties(_:to:);
      v91 = v40;
      aBlock = MEMORY[0x1E69E9820];
      v87 = 1107296256;
      v88 = thunk for @escaping @callee_guaranteed () -> (@owned NSNumber?);
      v89 = &block_descriptor_127_0;
      v41 = _Block_copy(&aBlock);

      [a2 _setAccessibilityRowCountBlock_];
      _Block_release(v41);
      v42 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v90 = partial apply for closure #11 in AccessibilityNode.applyProperties(_:to:);
      v91 = v42;
      aBlock = MEMORY[0x1E69E9820];
      v87 = 1107296256;
      v88 = thunk for @escaping @callee_guaranteed (@unowned Int, @unowned Int) -> (@out Any?);
      v89 = &block_descriptor_131;
      v43 = _Block_copy(&aBlock);

      [a2 _setAccessibilityDataTableCellElementForRowColumnBlock_];
      _Block_release(v43);
      v44 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v90 = partial apply for closure #12 in AccessibilityNode.applyProperties(_:to:);
      v91 = v44;
      aBlock = MEMORY[0x1E69E9820];
      v87 = 1107296256;
      v88 = thunk for @escaping @callee_guaranteed (@unowned Int) -> (@owned [Any]?);
      v89 = &block_descriptor_135;
      v45 = _Block_copy(&aBlock);

      [a2 _setAccessibilityHeaderElementsForColumnBlock_];
      _Block_release(v45);
    }

    else
    {
      [a2 _setAccessibilityColumnCountBlock_];
      [a2 _setAccessibilityRowCountBlock_];
      [a2 _setAccessibilityDataTableCellElementForRowColumnBlock_];
      [a2 _setAccessibilityHeaderElementsForColumnBlock_];
    }

    lazy protocol witness table accessor for type AccessibilityProperties.TableContextKey and conformance AccessibilityProperties.TableContextKey();
    AccessibilityProperties.subscript.getter();
    if (v91 != 255)
    {
      outlined init with copy of AccessibilityValueStorage?(&aBlock, v85, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext, MEMORY[0x1E69E6720], _sypSgMaTm_3);
      if (v85[40] - 1 <= 2)
      {
        outlined destroy of AccessibilityTextLayoutProperties?(&aBlock, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext, MEMORY[0x1E69E6720], _sypSgMaTm_3);
        v46 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v90 = partial apply for closure #13 in AccessibilityNode.applyProperties(_:to:);
        v91 = v46;
        aBlock = MEMORY[0x1E69E9820];
        v87 = 1107296256;
        v88 = thunk for @escaping @callee_guaranteed () -> (@owned NSNumber?);
        v89 = &block_descriptor_115_0;
        v47 = _Block_copy(&aBlock);

        [a2 _setAccessibilityColumnRangeBlock_];
        _Block_release(v47);
        v48 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v90 = partial apply for closure #14 in AccessibilityNode.applyProperties(_:to:);
        v91 = v48;
        aBlock = MEMORY[0x1E69E9820];
        v87 = 1107296256;
        v88 = thunk for @escaping @callee_guaranteed () -> (@owned NSNumber?);
        v89 = &block_descriptor_119;
        v49 = _Block_copy(&aBlock);

        [a2 _setAccessibilityRowRangeBlock_];
        _Block_release(v49);
        goto LABEL_46;
      }

      outlined destroy of AccessibilityTableContext(v85);
    }

    [a2 _setAccessibilityColumnRangeBlock_];
    [a2 _setAccessibilityRowRangeBlock_];
    outlined destroy of AccessibilityTextLayoutProperties?(&aBlock, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext, MEMORY[0x1E69E6720], _sypSgMaTm_3);
  }

LABEL_46:
  v50 = AccessibilityNode.explicitActivationPoint.getter();
  if (v52 == -1)
  {
    [a2 setAccessibilityActivationPointBlock_];
  }

  else
  {
    v53 = v50;
    v54 = v51;
    v55 = v52;
    v56 = swift_allocObject();
    *(v56 + 16) = v53;
    *(v56 + 24) = v54;
    *(v56 + 32) = v55 & 1;
    v90 = partial apply for closure #15 in AccessibilityNode.applyProperties(_:to:);
    v91 = v56;
    aBlock = MEMORY[0x1E69E9820];
    v87 = 1107296256;
    v88 = thunk for @escaping @callee_guaranteed () -> (@unowned CGPoint);
    v89 = &block_descriptor_111_0;
    v57 = _Block_copy(&aBlock);

    [a2 setAccessibilityActivationPointBlock_];
    _Block_release(v57);
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    AccessibilityNode.contentPath.getter(v85);
    if (v85[32] == 255)
    {
      [a2 setAccessibilityFrameBlock_];
      _Block_release(0);
      v61 = 0;
    }

    else
    {
      outlined destroy of AccessibilityTextLayoutProperties?(v85, &lazy cache variable for type metadata for Path?, MEMORY[0x1E6980F80], MEMORY[0x1E69E6720], _sypSgMaTm_3);
      v58 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v90 = partial apply for closure #16 in AccessibilityNode.applyProperties(_:to:);
      v91 = v58;
      aBlock = MEMORY[0x1E69E9820];
      v87 = 1107296256;
      v88 = thunk for @escaping @callee_guaranteed () -> (@unowned CGRect);
      v89 = &block_descriptor_105_0;
      v59 = _Block_copy(&aBlock);

      [a2 setAccessibilityFrameBlock_];
      _Block_release(v59);
      v60 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v90 = partial apply for closure #17 in AccessibilityNode.applyProperties(_:to:);
      v91 = v60;
      aBlock = MEMORY[0x1E69E9820];
      v87 = 1107296256;
      v88 = thunk for @escaping @callee_guaranteed () -> (@owned NSNumber?);
      v89 = &block_descriptor_101;
      v61 = _Block_copy(&aBlock);
    }

    [a2 setAccessibilityPathBlock_];
    _Block_release(v61);
  }

  if (v7)
  {
    v62 = AccessibilityProperties.customContentList.getter();
    if (*(v62 + 16))
    {
      v63 = *&v3[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment];
      v64 = *&v3[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment + 8];
      v65 = swift_allocObject();
      v65[2] = v62;
      v65[3] = v63;
      v65[4] = v64;
      v90 = partial apply for closure #18 in AccessibilityNode.applyProperties(_:to:);
      v91 = v65;
      aBlock = MEMORY[0x1E69E9820];
      v87 = 1107296256;
      v88 = thunk for @escaping @callee_guaranteed () -> (@owned [AXCustomContent]?);
      v89 = &block_descriptor_89_0;
      v66 = _Block_copy(&aBlock);
      swift_retain_n();
      swift_retain_n();

      [a2 _setAccessibilityCustomContentBlock_];
      _Block_release(v66);
    }

    else
    {

      [a2 _setAccessibilityCustomContentBlock_];
    }

    v67 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v90 = partial apply for closure #19 in AccessibilityNode.applyProperties(_:to:);
    v91 = v67;
    aBlock = MEMORY[0x1E69E9820];
    v87 = 1107296256;
    v88 = thunk for @escaping @callee_guaranteed () -> (@unowned UIAccessibilityTraits);
    v89 = &block_descriptor_93_0;
    v68 = _Block_copy(&aBlock);

    [a2 _setAccessibilityAdditionalTraitsBlock_];
    _Block_release(v68);
  }

  v69 = *&v3[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment + 8];
  aBlock = *&v3[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment];
  v87 = v69;

  v70 = AccessibilityNode.customRotors(in:)(&aBlock);

  if (v70)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAccessibilityCustomRotor, 0x1E69DC5F0);
    v71.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v71.super.isa = 0;
  }

  [a2 setAccessibilityCustomRotors_];

  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_69;
  }

  objc_opt_self();
  v72 = swift_dynamicCastObjCClass();
  if (!v72 || (v73 = v72, v74 = AccessibilityNode.resolvedDragDropOptions(filter:view:)(0, v72), (v74 & 0x10000) != 0))
  {
    swift_unknownObjectRelease();
LABEL_69:
    v76.super.isa = 0;
    goto LABEL_70;
  }

  LOBYTE(aBlock) = 0;
  WORD1(aBlock) = v74;
  v87 = MEMORY[0x1E69E7CC0];
  v88 = v73;
  LOBYTE(v89) = 0;
  v90 = 0;
  swift_unknownObjectRetain();
  AccessibilityActivationPointAccumulator.visit(node:)(v3);
  swift_unknownObjectRelease();
  v75 = v87;

  if (v75 >> 62)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAccessibilityLocationDescriptor, 0x1E69DC620);

    _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAccessibilityLocationDescriptor, 0x1E69DC620);
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAccessibilityLocationDescriptor, 0x1E69DC620);
  v76.super.isa = Array._bridgeToObjectiveC()().super.isa;

LABEL_70:
  [a2 setAccessibilityDragSourceDescriptors_];

  if (!swift_unknownObjectWeakLoadStrong())
  {
LABEL_77:
    v81.super.isa = 0;
    goto LABEL_78;
  }

  objc_opt_self();
  v77 = swift_dynamicCastObjCClass();
  if (!v77 || (v78 = v77, v79 = AccessibilityNode.resolvedDragDropOptions(filter:view:)(0, v77), (v79 & 0x10000) != 0))
  {
    swift_unknownObjectRelease();
    goto LABEL_77;
  }

  LOBYTE(aBlock) = 1;
  WORD1(aBlock) = v79;
  v87 = MEMORY[0x1E69E7CC0];
  v88 = v78;
  LOBYTE(v89) = 0;
  v90 = 0;
  swift_unknownObjectRetain();
  AccessibilityActivationPointAccumulator.visit(node:)(v3);
  swift_unknownObjectRelease();
  v80 = v87;

  if (v80 >> 62)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAccessibilityLocationDescriptor, 0x1E69DC620);

    _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAccessibilityLocationDescriptor, 0x1E69DC620);
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAccessibilityLocationDescriptor, 0x1E69DC620);
  v81.super.isa = Array._bridgeToObjectiveC()().super.isa;

LABEL_78:
  [a2 setAccessibilityDropPointDescriptors_];

  LOBYTE(aBlock) = 21;
  v82 = AccessibilityProperties.subscript.getter();
  if (v82 != 2)
  {
    [a2 setAccessibilityRespondsToUserInteraction_];
  }

  if (AccessibilityProperties.chartDescriptor.getter())
  {

    if (!v7)
    {
      return;
    }

    v83 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v90 = partial apply for closure #20 in AccessibilityNode.applyProperties(_:to:);
    v91 = v83;
    aBlock = MEMORY[0x1E69E9820];
    v87 = 1107296256;
    v88 = thunk for @escaping @callee_guaranteed () -> (@owned NSNumber?);
    v89 = &block_descriptor_97;
    v84 = _Block_copy(&aBlock);

    [a2 _setAccessibilityChartDescriptorBlock_];
    _Block_release(v84);
    [a2 _accessibilitySetSupportsChartsV2_];
  }

  else
  {
    if (!v7)
    {
      return;
    }

    [a2 _setAccessibilityChartDescriptorBlock_];
    _Block_release(0);
  }

  [a2 _accessibilitySetSortPriority_];
}

void AccessibilityNode.applyAction(_:key:to:)(uint64_t *a1, uint64_t a2, void *a3)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = MEMORY[0x18D00C850](0x4774694B49555841, 0xEB0000000065756CLL);
  v10 = NSClassFromString(v9);

  if (v10 && (specialized AccessibilityNode.hasAction<A>(_:)(v5, v6, v7, v8) & 1) != 0)
  {
    if ([a3 respondsToSelector_])
    {
      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v12 = swift_allocObject();
      v12[2] = v11;
      v12[3] = v5;
      v12[4] = v6;
      v12[5] = v7;
      v12[6] = v8;
      v14[4] = partial apply for specialized closure #1 in AccessibilityNode.applyAction<A>(_:value:key:to:);
      v14[5] = v12;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 1107296256;
      v14[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?) -> (@unowned Bool);
      v14[3] = &block_descriptor_79;
      v13 = _Block_copy(v14);
      outlined copy of AccessibilityActionKind.ActionKind(v5, v6, v7, v8);

      [a3 _accessibilitySetActionBlock_withValue_forKey_];
      _Block_release(v13);
    }
  }
}

uint64_t closure #2 in AccessibilityNode.applyProperties(to:includingRelations:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = Strong;
  v3 = [Strong accessibilityCustomActions];

  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAccessibilityCustomAction, 0x1E69DC5E8);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

id closure #3 in AccessibilityNode.applyProperties(to:includingRelations:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v2 = Strong;
  v3 = [Strong accessibilityPerformMagicTap];

  return v3;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Bool)(uint64_t a1)
{
  v1 = *(a1 + 32);

  LOBYTE(v1) = v1(v2);

  return v1 & 1;
}

void AccessibilityNode.applyChildren(to:)(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_host];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = partial apply for closure #1 in AccessibilityNode.applyChildren(to:);
  v14 = v3;
  v9 = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  v11 = thunk for @escaping @callee_guaranteed () -> (@owned [Any]?);
  v12 = &block_descriptor_58;
  v4 = _Block_copy(&v9);

  [v2 setAccessibilityElementsBlock_];
  _Block_release(v4);
  [v2 setShouldGroupAccessibilityChildren_];
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = partial apply for closure #2 in AccessibilityNode.applyChildren(to:);
  v14 = v5;
  v9 = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  v11 = thunk for @escaping @callee_guaranteed () -> (@owned String?);
  v12 = &block_descriptor_62;
  v6 = _Block_copy(&v9);

  [a1 setSwiftUI:v6 accessibilityScrollStatus:?];
  _Block_release(v6);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = partial apply for closure #3 in AccessibilityNode.applyChildren(to:);
  v14 = v7;
  v9 = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  v11 = thunk for @escaping @callee_guaranteed () -> (@owned NSNumber?);
  v12 = &block_descriptor_66_1;
  v8 = _Block_copy(&v9);

  [a1 setSwiftUI:v8 accessibilityAttributedScrollStatus:?];
  _Block_release(v8);
}

void AccessibilityNode.applyRelations(to:)(void *a1)
{
  v3 = MEMORY[0x18D00C850](0x4774694B49555841, 0xEB0000000065756CLL);
  v4 = NSClassFromString(v3);

  if (v4)
  {
    v5 = [v1 _accessibilityUserDefinedLinkedUIElements];
    if (v5)
    {
      v6 = v5;
      v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if ([a1 respondsToSelector_])
      {
        v8 = swift_allocObject();
        *(v8 + 16) = v7;
        v10[4] = partial apply for closure #3 in UIMenuBuilder.perform(instruction:);
        v10[5] = v8;
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 1107296256;
        v10[2] = thunk for @escaping @callee_guaranteed () -> (@owned [Any]?);
        v10[3] = &block_descriptor_72_0;
        v9 = _Block_copy(v10);

        [a1 _setAccessibilityLinkedUIElementsBlock_];
        _Block_release(v9);
      }

      else
      {
      }
    }
  }
}

void *closure #4 in AccessibilityNode.applyProperties(_:to:)(uint64_t a1, SEL *a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = [result *a2];

    if (v5)
    {
      v6 = AXAttributedStringCreate(v5);
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v7;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *closure #1 in AccessibilityNode.applyProperties(to:includingRelations:)(uint64_t a1, SEL *a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = [result *a2];

    if (v5)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *closure #8 in AccessibilityNode.applyProperties(_:to:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = [result accessibilityAttributedUserInputLabels];

    if (v3)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
      v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

Class thunk for @escaping @callee_guaranteed () -> (@owned [UIAccessibilityCustomAction]?)(uint64_t a1, unint64_t *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = v5(v6);

  if (v7)
  {
    type metadata accessor for NSObject(0, a2, a3);
    v8.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v8.super.isa = 0;
  }

  return v8.super.isa;
}

Class closure #9 in AccessibilityNode.applyProperties(_:to:)(uint64_t a1, const char **a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *a2;
    v5 = result;
    [result v4];

    return Int._bridgeToObjectiveC()().super.super.isa;
  }

  return result;
}

double closure #11 in AccessibilityNode.applyProperties(_:to:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v8 = Strong, v9 = [Strong accessibilityDataTableCellElementForRow:a1 column:a2], v8, v9))
  {
    *(a4 + 24) = swift_getObjectType();
    *a4 = v9;
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

id thunk for @escaping @callee_guaranteed (@unowned Int, @unowned Int) -> (@out Any?)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(v14, a2, a3);

  v6 = v15;
  if (v15)
  {
    v7 = __swift_project_boxed_opaque_existential_1(v14, v15);
    v8 = *(v6 - 8);
    v9 = MEMORY[0x1EEE9AC00](v7);
    v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11, v9);
    v12 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v8 + 8))(v11, v6);
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

char *closure #12 in AccessibilityNode.applyProperties(_:to:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = [result accessibilityHeaderElementsForColumn_];

    result = 0;
    if (v5)
    {
      type metadata accessor for UIAccessibilityContainerDataTableCell();
      v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v7 = specialized _arrayForceCast<A, B>(_:)(v6);

      return v7;
    }
  }

  return result;
}

Class thunk for @escaping @callee_guaranteed (@unowned Int) -> (@owned [Any]?)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v4 = v3(a2);

  if (v4)
  {
    v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

Class closure #13 in AccessibilityNode.applyProperties(_:to:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    [(objc_class *)result accessibilityColumnRange];

    return _NSRange._bridgeToObjectiveC()().super.isa;
  }

  return result;
}

double thunk for @escaping @callee_guaranteed () -> (@unowned CGPoint)(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

double closure #16 in AccessibilityNode.applyProperties(_:to:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0.0;
  }

  v2 = Strong;
  [Strong accessibilityFrame];
  v4 = v3;

  return v4;
}

double thunk for @escaping @callee_guaranteed () -> (@unowned CGRect)(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

unint64_t closure #19 in AccessibilityNode.applyProperties(_:to:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return *MEMORY[0x1E69DD9E8];
  }

  v2 = Strong;
  v3 = AccessibilityNode.resolvedTraits.getter();

  return v3;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned UIAccessibilityTraits)(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

id closure #17 in AccessibilityNode.applyProperties(_:to:)(uint64_t a1, SEL *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v4 = Strong;
  v5 = [Strong *a2];

  return v5;
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed Any?) -> (@unowned Bool)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v6 = a2;
    outlined init with take of Any(&v6, v8);
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  swift_unknownObjectRetain();
  v4 = v3(v8);

  outlined destroy of AccessibilityTextLayoutProperties?(v8, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_3);
  return v4 & 1;
}

Class thunk for @escaping @callee_guaranteed () -> (@owned [Any]?)(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

void *closure #1 in AccessibilityNode.applyChildren(to:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = [result accessibilityElements];

    if (v3)
    {
      v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t closure #2 in AccessibilityNode.applyChildren(to:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v2 = Strong;
  AccessibilityNode.attachment.getter(&v9);
  outlined init with copy of AccessibilityProperties(&v9, v13);
  outlined destroy of AccessibilityAttachment(&v9);
  lazy protocol witness table accessor for type AccessibilityProperties.ScrollableStatusKey and conformance AccessibilityProperties.ScrollableStatusKey();
  AccessibilityProperties.subscript.getter();
  outlined destroy of AccessibilityProperties(v13);
  v3 = v9;
  v4 = v10;
  v5 = v11;
  v6 = v12;
  v7 = AccessibilityNode.resolvedPlainText(_:)(v9, v10, v11, v12);

  outlined consume of Text?(v3, v4, v5, v6);
  return v7;
}

uint64_t closure #3 in AccessibilityNode.applyChildren(to:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v2 = Strong;
  AccessibilityNode.attachment.getter(&v10);
  outlined init with copy of AccessibilityProperties(&v10, v14);
  outlined destroy of AccessibilityAttachment(&v10);
  lazy protocol witness table accessor for type AccessibilityProperties.ScrollableStatusKey and conformance AccessibilityProperties.ScrollableStatusKey();
  AccessibilityProperties.subscript.getter();
  outlined destroy of AccessibilityProperties(v14);
  v3 = v10;
  v4 = v11;
  v5 = v12;
  v6 = v13;
  LODWORD(v10) = 2;
  AccessibilityNode.resolvedAttributedText(_:options:)(v3, v11, v12, v13, &v10);
  v8 = v7;

  outlined consume of Text?(v3, v4, v5, v6);
  return v8;
}

uint64_t AccessibilityNode.accessibilityIdentifier.getter()
{
  AccessibilityNode.attachment.getter(v4);
  outlined init with copy of AccessibilityProperties(v4, v5);
  outlined destroy of AccessibilityAttachment(v4);
  v1 = v5[0];
  v0 = v5[1];
  v2 = v6;

  outlined destroy of AccessibilityProperties(v5);
  if (!v0)
  {
    return 0;
  }

  if (v2 >= 2)
  {

    return 0;
  }

  return v1;
}

char *AccessibilityNode.actionNames.getter()
{
  v2 = v0;
  v3 = 0;
  v4 = MEMORY[0x1E69E7CC0];
  v31 = MEMORY[0x1E69E7CC0];
  do
  {
    if (v3 <= 3)
    {
      v5 = 3 - v3;
    }

    else
    {
      v5 = 0;
    }

    v6 = &outlined read-only object #0 of AccessibilityNode.actionNames.getter + 32 * v3++;
    v7 = (v6 + 56);
    while (1)
    {
      if (!v5)
      {
        __break(1u);
        goto LABEL_36;
      }

      v1 = *(v7 - 3);
      v8 = *(v7 - 2);
      v9 = *(v7 - 1);
      v10 = *v7;
      outlined copy of AccessibilityActionKind.ActionKind(v1, v8, v9, *v7);
      if (specialized AccessibilityNode.hasAction<A>(_:)(v1, v8, v9, v10))
      {
        break;
      }

LABEL_6:
      outlined consume of AccessibilityActionKind.ActionKind(v1, v8, v9, v10);
      --v5;
      ++v3;
      v7 += 4;
      if (v3 == 4)
      {
        goto LABEL_20;
      }
    }

    if (!v10)
    {
      v30 = 0xE800000000000000;
      v11 = 0x6574617669746361;
      goto LABEL_15;
    }

    if (v10 != 1)
    {
      if (v10 == 2)
      {
        v30 = 0xE800000000000000;
        v11 = 0x706154636967616DLL;
        goto LABEL_15;
      }

      goto LABEL_6;
    }

    v30 = 0xE600000000000000;
    v11 = 0x657061637365;
LABEL_15:
    outlined consume of AccessibilityActionKind.ActionKind(v1, v8, v9, v10);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 2) + 1, 1, v31);
    }

    v13 = *(v31 + 2);
    v12 = *(v31 + 3);
    if (v13 >= v12 >> 1)
    {
      v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v31);
    }

    *(v31 + 2) = v13 + 1;
    v14 = &v31[16 * v13];
    *(v14 + 4) = v11;
    *(v14 + 5) = v30;
  }

  while (v3 != 3);
LABEL_20:
  swift_arrayDestroy();
  if (specialized AccessibilityNode.hasAction<A>(_:)(2))
  {
    v15 = &outlined read-only object #1 of AccessibilityNode.actionNames.getter;
  }

  else
  {
    v15 = v4;
  }

  specialized Array.append<A>(contentsOf:)(v15);
  v1 = v31;
  v16 = [v0 accessibilityCustomActions];
  if (!v16)
  {
    goto LABEL_38;
  }

  v17 = v16;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAccessibilityCustomAction, 0x1E69DC5E8);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v2 >> 62))
  {
    v18 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_26;
    }

LABEL_37:

    v4 = MEMORY[0x1E69E7CC0];
LABEL_38:
    specialized Array.append<A>(contentsOf:)(v4);
    return v1;
  }

LABEL_36:
  v18 = __CocoaSet.count.getter();
  if (!v18)
  {
    goto LABEL_37;
  }

LABEL_26:
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18 & ~(v18 >> 63), 0);
  if ((v18 & 0x8000000000000000) == 0)
  {
    v32 = v1;
    v20 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x18D00E9C0](v20, v2);
      }

      else
      {
        v21 = *(v2 + 8 * v20 + 32);
      }

      v22 = v21;
      v23 = [v22 name];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v28 = *(v4 + 16);
      v27 = *(v4 + 24);
      if (v28 >= v27 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
      }

      ++v20;
      *(v4 + 16) = v28 + 1;
      v29 = v4 + 16 * v28;
      *(v29 + 32) = v24;
      *(v29 + 40) = v26;
    }

    while (v18 != v20);

    v1 = v32;
    goto LABEL_38;
  }

  __break(1u);
  return result;
}

id AccessibilityNode._accessibilityAutomationType()()
{
  v1 = v0;
  AccessibilityNode.attachment.getter(&v38);
  outlined init with copy of AccessibilityProperties(&v38, v40);
  outlined destroy of AccessibilityAttachment(&v38);
  v2 = v41;
  v3 = v42;
  v4 = v43;
  outlined destroy of AccessibilityProperties(v40);
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = v2;
  }

  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = v3;
  }

  AccessibilityNode.attachment.getter(&v38);
  outlined init with copy of AccessibilityProperties(&v38, v40);
  outlined destroy of AccessibilityAttachment(&v38);
  v7 = AccessibilityProperties.explicitAutomationType.getter();
  v9 = v8;
  outlined destroy of AccessibilityProperties(v40);
  if ((v9 & 1) == 0)
  {
    return v7;
  }

  AccessibilityNode.attachment.getter(&v38);
  outlined init with copy of AccessibilityProperties(&v38, v40);
  outlined destroy of AccessibilityAttachment(&v38);
  outlined init with copy of AccessibilityValueStorage?(&v44, v36, &lazy cache variable for type metadata for AccessibilityValueStorage?, MEMORY[0x1E69804E0], MEMORY[0x1E69E6720], _sypSgMaTm_3);
  outlined destroy of AccessibilityProperties(v40);
  if (v37 == 1)
  {
    outlined destroy of AccessibilityTextLayoutProperties?(v36, &lazy cache variable for type metadata for AccessibilityValueStorage?, MEMORY[0x1E69804E0], MEMORY[0x1E69E6720], _sypSgMaTm_3);
  }

  else
  {
    v38 = v5;
    v39 = v6;
    AccessibilityValueStorage.impliedRole(for:)(&v38);
    v7 = v10;
    v12 = v11;
    outlined destroy of AccessibilityValueStorage(v36);
    if ((v12 & 0x100) == 0 && (v12 & 1) == 0)
    {
      return v7;
    }
  }

  AccessibilityNode.attachment.getter(&v38);
  outlined init with copy of AccessibilityProperties(&v38, v40);
  outlined destroy of AccessibilityAttachment(&v38);
  lazy protocol witness table accessor for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey();
  AccessibilityProperties.subscript.getter();
  result = outlined destroy of AccessibilityProperties(v40);
  v14 = v38;
  v15 = *(v38 + 16);
  if (v15)
  {
    v16 = 0;
    v17 = (v38 + 32);
    while (1)
    {
      v18 = v17[3];
      v19 = v17[4];
      __swift_project_boxed_opaque_existential_1(v17, v18);
      v38 = v5;
      v39 = v6;
      result = (*(v19 + 48))(&v38, v18, v19);
      if ((v20 & 0x100) == 0 && (v20 & 1) == 0)
      {
        break;
      }

      ++v16;
      v17 += 6;
      if (v15 == v16)
      {
        goto LABEL_18;
      }
    }

    v15 = v16;
  }

LABEL_18:
  v21 = *(v14 + 16);
  if (v15 == v21)
  {

    v38 = v5;
    v39 = v6;
    v22 = AccessibilityNullableOptionSet<>.automationType.getter();
    if (v23)
    {
      v24 = MEMORY[0x18D00C850](0x4774694B49555841, 0xEB0000000065756CLL);
      v25 = NSClassFromString(v24);

      if (!v25)
      {
        return 0;
      }

      v35.receiver = v1;
      v35.super_class = type metadata accessor for AccessibilityNode();
      return objc_msgSendSuper2(&v35, sel__accessibilityAutomationType);
    }

    return v22;
  }

  if (v21)
  {
    v26 = v21 - 1;
    v27 = (v14 + 48 * v21 - 16);
    while (1)
    {
      v28 = v27[3];
      v29 = v27[4];
      __swift_project_boxed_opaque_existential_1(v27, v28);
      v38 = v5;
      v39 = v6;
      result = (*(v29 + 48))(&v38, v28, v29);
      if ((v30 & 0x100) == 0 && (v30 & 1) == 0)
      {
        break;
      }

      --v26;
      v27 -= 6;
      if (v26 >= v21)
      {
        __break(1u);
        goto LABEL_34;
      }
    }

    v31 = v27[3];
    v32 = v27[4];
    __swift_project_boxed_opaque_existential_1(v27, v31);
    v38 = v5;
    v39 = v6;
    result = (*(v32 + 48))(&v38, v31, v32);
    if ((v34 & 0x100) == 0 && (v34 & 1) == 0)
    {
      v7 = v33;

      return v7;
    }
  }

  else
  {
LABEL_34:
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::String_optional __swiftcall AccessibilityNode._accessibilityRoleDescription()()
{
  v1 = v0;
  AccessibilityNode.attachment.getter(v32);
  outlined init with copy of AccessibilityProperties(v32, v33);
  outlined destroy of AccessibilityAttachment(v32);
  v2 = AccessibilityProperties.roleDescription.getter();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  outlined destroy of AccessibilityProperties(v33);
  if (v8)
  {

    outlined copy of Text.Storage(v2, v4, v6 & 1);
    v9 = AccessibilityNode.resolvedPlainText(_:)(v2, v4, v6, v8);
    v11 = v10;
    outlined consume of Text.Storage(v2, v4, v6 & 1);

    outlined consume of Text?(v2, v4, v6, v8);
    if (v11)
    {
      v12 = v11;
      v13 = HIBYTE(v11) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        v13 = v9 & 0xFFFFFFFFFFFFLL;
      }

      if (v13)
      {
        goto LABEL_22;
      }
    }
  }

  v14 = MEMORY[0x18D00C850](0x4774694B49555841, 0xEB0000000065756CLL);
  v15 = NSClassFromString(v14);

  if (!v15)
  {
    goto LABEL_21;
  }

  v16 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
  swift_beginAccess();
  v17 = *&v1[v16];
  v18 = *(v17 + 16);

  if (!v18)
  {
    goto LABEL_18;
  }

  v20 = v17 + 320 * v18 - 288;
  while (1)
  {
    if (v18 > *(v17 + 16))
    {
      __break(1u);
      goto LABEL_24;
    }

    outlined init with copy of AccessibilityAttachment(v20, v32);
    v21 = AccessibilityAttachment.platformElement.getter();
    v19 = outlined destroy of AccessibilityAttachment(v32);
    if (v21)
    {
      break;
    }

    v20 -= 320;
    if (!--v18)
    {
      goto LABEL_18;
    }
  }

  v22 = [v21 _accessibilityRoleDescription];

  if (!v22)
  {
    goto LABEL_19;
  }

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v12 = v24;
  v25 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v25 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {
LABEL_18:

LABEL_19:
    v31.receiver = v1;
    v31.super_class = type metadata accessor for AccessibilityNode();
    v26 = objc_msgSendSuper2(&v31, sel__accessibilityRoleDescription);
    if (v26)
    {
      v27 = v26;
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      v12 = v29;
      goto LABEL_22;
    }

LABEL_21:
    v9 = 0;
    v12 = 0;
  }

LABEL_22:
  v19 = v9;
LABEL_24:
  result.value._object = v12;
  result.value._countAndFlagsBits = v19;
  return result;
}

void AccessibilityNode._accessibilityMinValue()(void (*a1)(__int128 *__return_ptr, uint64_t))
{
  AccessibilityNode.attachment.getter(v4);
  outlined init with copy of AccessibilityProperties(v4, v5);
  outlined destroy of AccessibilityAttachment(v4);
  outlined init with copy of AccessibilityValueStorage?(&v6, v7, &lazy cache variable for type metadata for AccessibilityValueStorage?, MEMORY[0x1E69804E0], MEMORY[0x1E69E6720], _sypSgMaTm_3);
  v2 = outlined destroy of AccessibilityProperties(v5);
  if (v8 == 1)
  {
    outlined destroy of AccessibilityTextLayoutProperties?(v7, &lazy cache variable for type metadata for AccessibilityValueStorage?, MEMORY[0x1E69804E0], MEMORY[0x1E69E6720], _sypSgMaTm_3);
    v9 = 0u;
    v10 = 0u;
LABEL_6:
    outlined destroy of AccessibilityTextLayoutProperties?(&v9, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_3);
    return;
  }

  a1(&v9, v2);
  outlined destroy of AccessibilityValueStorage(v7);
  if (!*(&v10 + 1))
  {
    goto LABEL_6;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  if (swift_dynamicCast())
  {
    v3 = v4[0];
    [v4[0] doubleValue];
  }
}

void AccessibilityNode._accessibilityNumberValue()()
{
  AccessibilityNode.attachment.getter(v1);
  outlined init with copy of AccessibilityProperties(v1, v2);
  outlined destroy of AccessibilityAttachment(v1);
  outlined init with copy of AccessibilityValueStorage?(&v3, v4, &lazy cache variable for type metadata for AccessibilityValueStorage?, MEMORY[0x1E69804E0], MEMORY[0x1E69E6720], _sypSgMaTm_3);
  outlined destroy of AccessibilityProperties(v2);
  if (v5 == 1)
  {
    outlined destroy of AccessibilityTextLayoutProperties?(v4, &lazy cache variable for type metadata for AccessibilityValueStorage?, MEMORY[0x1E69804E0], MEMORY[0x1E69E6720], _sypSgMaTm_3);
  }

  else
  {
    v0 = AccessibilityValueStorage.platformNumberValue.getter();
    outlined destroy of AccessibilityValueStorage(v4);
    if (v0)
    {
      [v0 doubleValue];
    }
  }
}

uint64_t AccessibilityNode._accessibilityExpandedStatus()()
{
  v1 = v0;
  AccessibilityNode.attachment.getter(v10);
  outlined init with copy of AccessibilityProperties(v10, v11);
  outlined destroy of AccessibilityAttachment(v10);
  outlined init with copy of AccessibilityValueStorage?(&v12, v13, &lazy cache variable for type metadata for AccessibilityValueStorage?, MEMORY[0x1E69804E0], MEMORY[0x1E69E6720], _sypSgMaTm_3);
  outlined destroy of AccessibilityProperties(v11);
  if (v14 == 1)
  {
    v2 = &lazy cache variable for type metadata for AccessibilityValueStorage?;
    v3 = MEMORY[0x1E69804E0];
    v4 = MEMORY[0x1E69E6720];
    v5 = v13;
LABEL_9:
    outlined destroy of AccessibilityTextLayoutProperties?(v5, v2, v3, v4, _sypSgMaTm_3);
LABEL_10:
    v7 = MEMORY[0x18D00C850](0x4774694B49555841, 0xEB0000000065756CLL);
    v8 = NSClassFromString(v7);

    result = 0;
    if (v8)
    {
      v9.receiver = v1;
      v9.super_class = type metadata accessor for AccessibilityNode();
      return objc_msgSendSuper2(&v9, sel__accessibilityExpandedStatus);
    }

    return result;
  }

  outlined init with copy of AccessibilityValueStorage?(v13, v15, &lazy cache variable for type metadata for AnyAccessibilityValue?, MEMORY[0x1E697FBB0], MEMORY[0x1E69E6720], _sypSgMaTm_3);
  outlined destroy of AccessibilityValueStorage(v13);
  if (!v16)
  {
    v2 = &lazy cache variable for type metadata for AnyAccessibilityValue?;
    v3 = MEMORY[0x1E697FBB0];
    v4 = MEMORY[0x1E69E6720];
    v5 = v15;
    goto LABEL_9;
  }

  lazy protocol witness table accessor for type AccessibilityDisclosureValue and conformance AccessibilityDisclosureValue();
  AnyAccessibilityValue.as<A>(_:)();
  outlined destroy of AnyAccessibilityValue(v15);
  if (v17 == 2)
  {
    goto LABEL_10;
  }

  if (v17)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t AccessibilityNode.accessibilityDataTableCellElement(forRow:column:)(unint64_t a1, void *a2)
{
  AccessibilityNode.attachment.getter(&v8);
  outlined init with copy of AccessibilityProperties(&v8, v11);
  outlined destroy of AccessibilityAttachment(&v8);
  lazy protocol witness table accessor for type AccessibilityProperties.TableContextKey and conformance AccessibilityProperties.TableContextKey();
  AccessibilityProperties.subscript.getter();
  outlined destroy of AccessibilityProperties(v11);
  if (!v10)
  {
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v8.Kind, v12);
    if (a1 || (__swift_project_boxed_opaque_existential_1(v12, v13), !AccessibilityCollectionViewTableDataSource.hasGlobalHeader.getter()))
    {
      v8.Kind = a1;
      v8.Description = a2;
      v9 = 0;
      __swift_project_boxed_opaque_existential_1(v12, v13);
      specialized AccessibilityCollectionViewTableDataSource.visitNodes<A>(applying:at:)(&v8, a1);
      v7 = v9;
      __swift_destroy_boxed_opaque_existential_1(v12);
      return v7;
    }

    v8.Kind = a2;
    v8.Description = 0;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    specialized AccessibilityCollectionViewTableDataSource.visitHeaderNodes<A>(applying:)(&v8);
    Description = v8.Description;
    if (v8.Description)
    {
      if (v8.Description >> 62)
      {
        result = __CocoaSet.count.getter();
        if (result)
        {
          goto LABEL_9;
        }
      }

      else
      {
        result = *((v8.Description & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result)
        {
LABEL_9:
          if ((Description & 0xC000000000000001) != 0)
          {
            v6 = MEMORY[0x18D00E9C0](0, Description);
          }

          else
          {
            if (!*((Description & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return result;
            }

            v6 = *(Description + 32);
            swift_unknownObjectRetain();
          }

LABEL_20:
          __swift_destroy_boxed_opaque_existential_1(v12);
          return v6;
        }
      }
    }

    v6 = 0;
    goto LABEL_20;
  }

  if (v10 == 255)
  {
    outlined destroy of AccessibilityTextLayoutProperties?(&v8, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext, MEMORY[0x1E69E6720], _sypSgMaTm_3);
  }

  else
  {
    outlined destroy of AccessibilityTableContext(&v8);
  }

  return 0;
}

uint64_t AccessibilityNode.accessibilityRowCount()(uint64_t (*a1)(void))
{
  AccessibilityNode.attachment.getter(v4);
  outlined init with copy of AccessibilityProperties(v4, v6);
  outlined destroy of AccessibilityAttachment(v4);
  lazy protocol witness table accessor for type AccessibilityProperties.TableContextKey and conformance AccessibilityProperties.TableContextKey();
  AccessibilityProperties.subscript.getter();
  outlined destroy of AccessibilityProperties(v6);
  if (v5)
  {
    if (v5 == 255)
    {
      outlined destroy of AccessibilityTextLayoutProperties?(v4, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext, MEMORY[0x1E69E6720], _sypSgMaTm_3);
    }

    else
    {
      outlined destroy of AccessibilityTableContext(v4);
    }

    return 0;
  }

  else
  {
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v4, v7);
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    v2 = a1();
    __swift_destroy_boxed_opaque_existential_1(v7);
    return v2;
  }
}

Swift::OpaquePointer_optional __swiftcall AccessibilityNode.accessibilityHeaderElements(forColumn:)(Swift::Int forColumn)
{
  AccessibilityNode.attachment.getter(v5);
  outlined init with copy of AccessibilityProperties(v5, v7);
  outlined destroy of AccessibilityAttachment(v5);
  lazy protocol witness table accessor for type AccessibilityProperties.TableContextKey and conformance AccessibilityProperties.TableContextKey();
  AccessibilityProperties.subscript.getter();
  outlined destroy of AccessibilityProperties(v7);
  if (v6)
  {
    if (v6 == 255)
    {
      outlined destroy of AccessibilityTextLayoutProperties?(v5, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext, MEMORY[0x1E69E6720], _sypSgMaTm_3);
    }

    else
    {
      outlined destroy of AccessibilityTableContext(v5);
    }

    v4 = 0;
  }

  else
  {
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v5[0].Kind, v8);
    v5[0].Kind = forColumn;
    v5[0].Description = 0;
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    specialized AccessibilityCollectionViewTableDataSource.visitHeaderNodes<A>(applying:)(v5);
    Description = v5[0].Description;
    __swift_destroy_boxed_opaque_existential_1(v8);
    v4 = Description;
  }

  result.value._rawValue = v4;
  result.is_nil = v2;
  return result;
}

__C::_NSRange __swiftcall AccessibilityNode.accessibilityColumnRange()()
{
  AccessibilityNode.attachment.getter(v12);
  outlined init with copy of AccessibilityProperties(v12, v14);
  outlined destroy of AccessibilityAttachment(v12);
  lazy protocol witness table accessor for type AccessibilityProperties.TableContextKey and conformance AccessibilityProperties.TableContextKey();
  AccessibilityProperties.subscript.getter();
  outlined destroy of AccessibilityProperties(v14);
  if (v13 == 255)
  {
    goto LABEL_9;
  }

  outlined init with copy of AccessibilityValueStorage?(v12, &v8, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext, MEMORY[0x1E69E6720], _sypSgMaTm_3);
  if (v10 == 1)
  {
    v1 = v9;
    v2 = 1;
    goto LABEL_10;
  }

  if (v10 == 2)
  {
    v1 = 0;
    v2 = v9;
    goto LABEL_10;
  }

  if (v10 != 3)
  {
    outlined destroy of AccessibilityTableContext(&v8);
LABEL_9:
    v3 = type metadata accessor for AccessibilityNode();
    v11.receiver = v0;
    v11.super_class = v3;
    v1 = objc_msgSendSuper2(&v11, sel_accessibilityColumnRange);
    v2 = v4;
    goto LABEL_10;
  }

  v1 = v8;
  v2 = 1;
LABEL_10:
  outlined destroy of AccessibilityTextLayoutProperties?(v12, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext, MEMORY[0x1E69E6720], _sypSgMaTm_3);
  v5 = v1;
  v6 = v2;
  result.length = v6;
  result.location = v5;
  return result;
}

__C::_NSRange __swiftcall AccessibilityNode.accessibilityRowRange()()
{
  v1 = v0;
  AccessibilityNode.attachment.getter(v18);
  outlined init with copy of AccessibilityProperties(v18, v20);
  outlined destroy of AccessibilityAttachment(v18);
  lazy protocol witness table accessor for type AccessibilityProperties.TableContextKey and conformance AccessibilityProperties.TableContextKey();
  AccessibilityProperties.subscript.getter();
  outlined destroy of AccessibilityProperties(v20);
  if (v19 != 255)
  {
    outlined init with copy of AccessibilityValueStorage?(v18, v15, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext, MEMORY[0x1E69E6720], _sypSgMaTm_3);
    if (v16 == 1 || v16 == 2)
    {
      v4 = v15[0];
      outlined destroy of AccessibilityTextLayoutProperties?(v18, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext, MEMORY[0x1E69E6720], _sypSgMaTm_3);
      v2 = v4;
      v3 = 1;
      goto LABEL_19;
    }

    if (v16 == 3)
    {
      outlined destroy of AccessibilityTextLayoutProperties?(v18, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext, MEMORY[0x1E69E6720], _sypSgMaTm_3);
      v2 = 0;
      v3 = 1;
      goto LABEL_19;
    }

    outlined destroy of AccessibilityTableContext(v15);
  }

  outlined destroy of AccessibilityTextLayoutProperties?(v18, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext, MEMORY[0x1E69E6720], _sypSgMaTm_3);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_16:
    v13 = type metadata accessor for AccessibilityNode();
    v17.receiver = v1;
    v17.super_class = v13;
    v2 = objc_msgSendSuper2(&v17, sel_accessibilityRowRange);
    goto LABEL_19;
  }

  v6 = Strong;
  AccessibilityNode.attachment.getter(v18);
  outlined init with copy of AccessibilityProperties(v18, v20);
  outlined destroy of AccessibilityAttachment(v18);
  LOBYTE(v18[0]) = 26;
  v7 = AccessibilityProperties.subscript.getter();
  outlined destroy of AccessibilityProperties(v20);
  if ((v7 & 1) == 0)
  {

    goto LABEL_16;
  }

  v8 = specialized static AccessibilityCore.queryChildren(element:options:)(v6, 2);
  v9 = specialized Collection<>.firstIndex(of:)(v1, v8);
  if (v10)
  {
    v9 = NSNotFound.getter();
  }

  v11 = v9;
  if (v8 >> 62)
  {
    v12 = __CocoaSet.count.getter();
  }

  else
  {
    v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = v12;
  v2 = v11;
LABEL_19:
  result.length = v3;
  result.location = v2;
  return result;
}

id AccessibilityNode._accessibilityIsFirstSibling(for:)(uint64_t a1)
{
  if (a1 == 2)
  {
    AccessibilityNode.attachment.getter(v5);
    outlined init with copy of AccessibilityProperties(v5, v7);
    outlined destroy of AccessibilityAttachment(v5);
    lazy protocol witness table accessor for type AccessibilityProperties.TableContextKey and conformance AccessibilityProperties.TableContextKey();
    AccessibilityProperties.subscript.getter();
    outlined destroy of AccessibilityProperties(v7);
    if (v6 == 3)
    {
      return (v5[0] == 0);
    }

    if (v6 == 255)
    {
      outlined destroy of AccessibilityTextLayoutProperties?(v5, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext, MEMORY[0x1E69E6720], _sypSgMaTm_3);
    }

    else
    {
      outlined destroy of AccessibilityTableContext(v5);
    }
  }

  v4 = type metadata accessor for AccessibilityNode();
  v8.receiver = v1;
  v8.super_class = v4;
  return objc_msgSendSuper2(&v8, sel__accessibilityIsFirstSiblingForType_, a1);
}

Swift::String_optional __swiftcall AccessibilityNode._accessibilityDataSeriesName()()
{
  AccessibilityNode.attachment.getter(v16);
  outlined init with copy of AccessibilityProperties(v16, v14);
  outlined destroy of AccessibilityAttachment(v16);
  AccessibilityProperties.dataSeriesConfiguration.getter();
  outlined destroy of AccessibilityProperties(v14);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v16, __src, sizeof(v16));
  if (getEnumTag for AccessibilityActionCategory.Category(v16) == 1)
  {
    goto LABEL_5;
  }

  v0 = v16[0];
  v1 = v16[1];
  v2 = v16[2];
  v3 = v16[3];
  LODWORD(__src[0]) = 2;

  outlined copy of Text.Storage(v0, v1, v2);
  AccessibilityNode.resolvedAttributedText(_:options:)(v0, v1, v2, v3, __src);
  v5 = v4;
  outlined consume of Text.Storage(v0, v1, v2);

  if (!v5)
  {
    outlined destroy of AccessibilityTextLayoutProperties?(__dst, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration?, MEMORY[0x1E6980BD8], MEMORY[0x1E69E6720], _sypSgMaTm_3);
LABEL_5:
    v11 = 0;
    v10 = 0;
    goto LABEL_6;
  }

  v6 = [v5 string];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  outlined destroy of AccessibilityTextLayoutProperties?(__dst, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration?, MEMORY[0x1E6980BD8], MEMORY[0x1E69E6720], _sypSgMaTm_3);
  v10 = v9;
  v11 = v7;
LABEL_6:
  result.value._object = v10;
  result.value._countAndFlagsBits = v11;
  return result;
}

id @objc AccessibilityNode.accessibilityValue.getter(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  if (v7)
  {
    v8 = MEMORY[0x18D00C850](v5, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t AccessibilityNode._accessibilityDataSeriesType()()
{
  AccessibilityNode.attachment.getter(v4);
  outlined init with copy of AccessibilityProperties(v4, v2);
  outlined destroy of AccessibilityAttachment(v4);
  AccessibilityProperties.dataSeriesConfiguration.getter();
  outlined destroy of AccessibilityProperties(v2);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v4, __src, sizeof(v4));
  if (getEnumTag for AccessibilityActionCategory.Category(v4) == 1)
  {
    return 0;
  }

  outlined destroy of AccessibilityTextLayoutProperties?(__dst, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration?, MEMORY[0x1E6980BD8], MEMORY[0x1E69E6720], _sypSgMaTm_3);
  return LOBYTE(v4[4]);
}

Swift::Double __swiftcall AccessibilityNode._accessibilityDataSeriesSonificationDuration()()
{
  AccessibilityNode.attachment.getter(v4);
  outlined init with copy of AccessibilityProperties(v4, v2);
  outlined destroy of AccessibilityAttachment(v4);
  AccessibilityProperties.dataSeriesConfiguration.getter();
  outlined destroy of AccessibilityProperties(v2);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v4, __src, sizeof(v4));
  if (getEnumTag for AccessibilityActionCategory.Category(v4) == 1)
  {
    return 0.0;
  }

  outlined destroy of AccessibilityTextLayoutProperties?(__dst, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration?, MEMORY[0x1E6980BD8], MEMORY[0x1E69E6720], _sypSgMaTm_3);
  result = 6.0;
  if ((v4[6] & 1) == 0)
  {
    return *&v4[5];
  }

  return result;
}

uint64_t AccessibilityNode._accessibilityDataSeriesValues(for:)(uint64_t a1)
{
  AccessibilityNode.attachment.getter(v25);
  outlined init with copy of AccessibilityProperties(v25, v23);
  outlined destroy of AccessibilityAttachment(v25);
  AccessibilityProperties.dataSeriesConfiguration.getter();
  outlined destroy of AccessibilityProperties(v23);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v25, __src, sizeof(v25));
  if (getEnumTag for AccessibilityActionCategory.Category(v25) == 1)
  {
    return 0;
  }

  if (a1)
  {
    if (a1 != 1)
    {
LABEL_7:
      outlined destroy of AccessibilityTextLayoutProperties?(__dst, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration?, MEMORY[0x1E6980BD8], MEMORY[0x1E69E6720], _sypSgMaTm_3);
      return 0;
    }

    v2 = &v25[23];
  }

  else
  {
    v2 = &v25[7];
  }

  v3 = v2[5];
  v18 = v2[4];
  v19 = v3;
  v4 = v2[7];
  v20 = v2[6];
  v21 = v4;
  v5 = v2[1];
  v15[0] = *v2;
  v15[1] = v5;
  v6 = v2[3];
  v16 = v2[2];
  v17 = v6;
  v14[4] = v18;
  v14[5] = v3;
  v14[6] = v20;
  v14[7] = v4;
  v14[0] = v15[0];
  v14[1] = v5;
  v14[2] = v16;
  v14[3] = v6;
  if (_s7SwiftUI36AccessibilityDataSeriesConfigurationV04AxisF0VSgWOg(v14) == 1)
  {
    goto LABEL_7;
  }

  outlined init with copy of AccessibilityValueStorage?(v15, &v13, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration.AxisConfiguration?, MEMORY[0x1E6980BD0], MEMORY[0x1E69E6720], _sypSgMaTm_3);

  v9 = specialized _arrayForceCast<A, B>(_:)(v8);

  v10 = v9;
  if (v9 >> 62)
  {
    v11 = __CocoaSet.count.getter();
  }

  else
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = MEMORY[0x1E69E6720];
  outlined destroy of AccessibilityTextLayoutProperties?(v15, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration.AxisConfiguration?, MEMORY[0x1E6980BD0], MEMORY[0x1E69E6720], _sypSgMaTm_3);
  outlined destroy of AccessibilityTextLayoutProperties?(__dst, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration?, MEMORY[0x1E6980BD8], v12, _sypSgMaTm_3);
  result = v10;
  if (!v11)
  {

    return 0;
  }

  return result;
}

Class @objc AccessibilityNode._accessibilityDataSeriesGridlinePositions(for:)(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = a1;
  v7 = a4(a3);

  if (v7)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
    v8.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v8.super.isa = 0;
  }

  return v8.super.isa;
}

uint64_t AccessibilityNode._accessibilityDataSeriesTitle(for:)(uint64_t a1)
{
  AccessibilityNode.attachment.getter(v39);
  outlined init with copy of AccessibilityProperties(v39, v37);
  outlined destroy of AccessibilityAttachment(v39);
  AccessibilityProperties.dataSeriesConfiguration.getter();
  outlined destroy of AccessibilityProperties(v37);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v39, __src, sizeof(v39));
  if (getEnumTag for AccessibilityActionCategory.Category(v39) == 1)
  {
    return 0;
  }

  if (a1)
  {
    if (a1 != 1)
    {
      goto LABEL_10;
    }

    v2 = &v39[23];
  }

  else
  {
    v2 = &v39[7];
  }

  v3 = v2[5];
  v32 = v2[4];
  v33 = v3;
  v4 = v2[7];
  v34 = v2[6];
  v35 = v4;
  v5 = v2[1];
  v29[0] = *v2;
  v29[1] = v5;
  v6 = v2[3];
  v30 = v2[2];
  v31 = v6;
  v25 = v32;
  v26 = v3;
  v27 = v34;
  v28 = v4;
  v21 = v29[0];
  v22 = v5;
  v23 = v30;
  v24 = v6;
  if (_s7SwiftUI36AccessibilityDataSeriesConfigurationV04AxisF0VSgWOg(&v21) != 1)
  {
    v7 = *(&v22 + 1);
    if (*(&v22 + 1))
    {
      v8 = v21;
      v9 = v22;
      v20 = 2;

      outlined init with copy of AccessibilityValueStorage?(v29, v19, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration.AxisConfiguration?, MEMORY[0x1E6980BD0], MEMORY[0x1E69E6720], _sypSgMaTm_3);
      outlined copy of Text?(v8, *(&v8 + 1), v9, v7);
      outlined copy of Text.Storage(v8, *(&v8 + 1), v9 & 1);
      AccessibilityNode.resolvedAttributedText(_:options:)(v8, *(&v8 + 1), v9, v7, &v20);
      v11 = v10;
      outlined consume of Text?(v8, *(&v8 + 1), v9, v7);
      if (v11)
      {
        v12 = [v11 string];
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        outlined consume of Text.Storage(v8, *(&v8 + 1), v9 & 1);

        v14 = MEMORY[0x1E69E6720];
        outlined destroy of AccessibilityTextLayoutProperties?(v29, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration.AxisConfiguration?, MEMORY[0x1E6980BD0], MEMORY[0x1E69E6720], _sypSgMaTm_3);
        outlined destroy of AccessibilityTextLayoutProperties?(__dst, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration?, MEMORY[0x1E6980BD8], v14, _sypSgMaTm_3);
        return v13;
      }

      outlined consume of Text.Storage(v8, *(&v8 + 1), v9 & 1);

      v18 = MEMORY[0x1E69E6720];
      outlined destroy of AccessibilityTextLayoutProperties?(v29, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration.AxisConfiguration?, MEMORY[0x1E6980BD0], MEMORY[0x1E69E6720], _sypSgMaTm_3);
      v16 = MEMORY[0x1E6980BD8];
      v17 = v18;
      goto LABEL_11;
    }
  }

LABEL_10:
  v16 = MEMORY[0x1E6980BD8];
  v17 = MEMORY[0x1E69E6720];
LABEL_11:
  outlined destroy of AccessibilityTextLayoutProperties?(__dst, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration?, v16, v17, _sypSgMaTm_3);
  return 0;
}

uint64_t AccessibilityNode._accessibilityDataSeriesUnitLabel(for:)(uint64_t a1)
{
  AccessibilityNode.attachment.getter(v38);
  outlined init with copy of AccessibilityProperties(v38, v36);
  outlined destroy of AccessibilityAttachment(v38);
  AccessibilityProperties.dataSeriesConfiguration.getter();
  outlined destroy of AccessibilityProperties(v36);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v38, __src, sizeof(v38));
  if (getEnumTag for AccessibilityActionCategory.Category(v38) == 1)
  {
    return 0;
  }

  if (a1)
  {
    if (a1 != 1)
    {
      goto LABEL_10;
    }

    v2 = &v38[23];
  }

  else
  {
    v2 = &v38[7];
  }

  v3 = v2[5];
  v31 = v2[4];
  v32 = v3;
  v4 = v2[7];
  v33 = v2[6];
  v34 = v4;
  v5 = v2[1];
  v28[0] = *v2;
  v28[1] = v5;
  v6 = v2[3];
  v29 = v2[2];
  v30 = v6;
  v24 = v31;
  v25 = v3;
  v26 = v33;
  v27 = v4;
  v21[0] = v28[0];
  v21[1] = v5;
  v22 = v29;
  v23 = v6;
  if (_s7SwiftUI36AccessibilityDataSeriesConfigurationV04AxisF0VSgWOg(v21) != 1)
  {
    v7 = *(&v23 + 1);
    if (*(&v23 + 1))
    {
      v8 = v22;
      v9 = v23;
      v20 = 2;

      outlined init with copy of AccessibilityValueStorage?(v28, v19, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration.AxisConfiguration?, MEMORY[0x1E6980BD0], MEMORY[0x1E69E6720], _sypSgMaTm_3);
      outlined copy of Text?(v8, *(&v8 + 1), v9, v7);
      outlined copy of Text.Storage(v8, *(&v8 + 1), v9 & 1);
      AccessibilityNode.resolvedAttributedText(_:options:)(v8, *(&v8 + 1), v9, v7, &v20);
      v11 = v10;
      outlined consume of Text?(v8, *(&v8 + 1), v9, v7);
      if (v11)
      {
        v12 = [v11 string];
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        outlined consume of Text.Storage(v8, *(&v8 + 1), v9 & 1);

        v14 = MEMORY[0x1E69E6720];
        outlined destroy of AccessibilityTextLayoutProperties?(v28, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration.AxisConfiguration?, MEMORY[0x1E6980BD0], MEMORY[0x1E69E6720], _sypSgMaTm_3);
        outlined destroy of AccessibilityTextLayoutProperties?(__dst, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration?, MEMORY[0x1E6980BD8], v14, _sypSgMaTm_3);
        return v13;
      }

      outlined consume of Text.Storage(v8, *(&v8 + 1), v9 & 1);

      v18 = MEMORY[0x1E69E6720];
      outlined destroy of AccessibilityTextLayoutProperties?(v28, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration.AxisConfiguration?, MEMORY[0x1E6980BD0], MEMORY[0x1E69E6720], _sypSgMaTm_3);
      v16 = MEMORY[0x1E6980BD8];
      v17 = v18;
      goto LABEL_11;
    }
  }

LABEL_10:
  v16 = MEMORY[0x1E6980BD8];
  v17 = MEMORY[0x1E69E6720];
LABEL_11:
  outlined destroy of AccessibilityTextLayoutProperties?(__dst, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration?, v16, v17, _sypSgMaTm_3);
  return 0;
}

id @objc AccessibilityNode._accessibilityDataSeriesTitle(for:)(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = a1;
  v7 = a4(a3);
  v9 = v8;

  if (v9)
  {
    v10 = MEMORY[0x18D00C850](v7, v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

Class AccessibilityNode._accessibilityDataSeriesMinimumValue(for:)(uint64_t a1)
{
  AccessibilityNode.attachment.getter(v24);
  outlined init with copy of AccessibilityProperties(v24, v22);
  outlined destroy of AccessibilityAttachment(v24);
  AccessibilityProperties.dataSeriesConfiguration.getter();
  outlined destroy of AccessibilityProperties(v22);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v24, __src, sizeof(v24));
  if (getEnumTag for AccessibilityActionCategory.Category(v24) == 1)
  {
    return 0;
  }

  if (!a1)
  {
    v2 = &v24[7];
    goto LABEL_6;
  }

  if (a1 == 1)
  {
    v2 = &v24[23];
LABEL_6:
    v3 = v2[5];
    v17 = v2[4];
    v18 = v3;
    v4 = v2[7];
    v19 = v2[6];
    v20 = v4;
    v5 = v2[1];
    v13 = *v2;
    v14 = v5;
    v6 = v2[3];
    v15 = v2[2];
    v16 = v6;
    v9[4] = v17;
    v10 = v3;
    v11 = v19;
    v12 = v4;
    v9[0] = v13;
    v9[1] = v5;
    v9[2] = v15;
    v9[3] = v6;
    if (_s7SwiftUI36AccessibilityDataSeriesConfigurationV04AxisF0VSgWOg(v9) != 1 && (v10 & 1) == 0)
    {
      isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
      outlined destroy of AccessibilityTextLayoutProperties?(__dst, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration?, MEMORY[0x1E6980BD8], MEMORY[0x1E69E6720], _sypSgMaTm_3);
      return isa;
    }
  }

  outlined destroy of AccessibilityTextLayoutProperties?(__dst, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration?, MEMORY[0x1E6980BD8], MEMORY[0x1E69E6720], _sypSgMaTm_3);
  return 0;
}

Class AccessibilityNode._accessibilityDataSeriesMaximumValue(for:)(uint64_t a1)
{
  AccessibilityNode.attachment.getter(v23);
  outlined init with copy of AccessibilityProperties(v23, v21);
  outlined destroy of AccessibilityAttachment(v23);
  AccessibilityProperties.dataSeriesConfiguration.getter();
  outlined destroy of AccessibilityProperties(v21);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v23, __src, sizeof(v23));
  if (getEnumTag for AccessibilityActionCategory.Category(v23) == 1)
  {
    return 0;
  }

  if (!a1)
  {
    v2 = &v23[7];
    goto LABEL_6;
  }

  if (a1 == 1)
  {
    v2 = &v23[23];
LABEL_6:
    v3 = v2[5];
    v16 = v2[4];
    v17 = v3;
    v4 = v2[7];
    v18 = v2[6];
    v19 = v4;
    v5 = v2[1];
    v12 = *v2;
    v13 = v5;
    v6 = v2[3];
    v14 = v2[2];
    v15 = v6;
    v9[4] = v16;
    v9[5] = v3;
    v10 = v18;
    v11 = v4;
    v9[0] = v12;
    v9[1] = v5;
    v9[2] = v14;
    v9[3] = v6;
    if (_s7SwiftUI36AccessibilityDataSeriesConfigurationV04AxisF0VSgWOg(v9) != 1 && (v10 & 1) == 0)
    {
      isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
      outlined destroy of AccessibilityTextLayoutProperties?(__dst, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration?, MEMORY[0x1E6980BD8], MEMORY[0x1E69E6720], _sypSgMaTm_3);
      return isa;
    }
  }

  outlined destroy of AccessibilityTextLayoutProperties?(__dst, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration?, MEMORY[0x1E6980BD8], MEMORY[0x1E69E6720], _sypSgMaTm_3);
  return 0;
}

uint64_t AccessibilityNode._accessibilityDataSeriesGridlinePositions(for:)(uint64_t a1)
{
  AccessibilityNode.attachment.getter(v26);
  outlined init with copy of AccessibilityProperties(v26, v24);
  outlined destroy of AccessibilityAttachment(v26);
  AccessibilityProperties.dataSeriesConfiguration.getter();
  outlined destroy of AccessibilityProperties(v24);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v26, __src, sizeof(v26));
  if (getEnumTag for AccessibilityActionCategory.Category(v26) == 1)
  {
    return 0;
  }

  if (!a1)
  {
    v2 = &v26[7];
    goto LABEL_6;
  }

  if (a1 == 1)
  {
    v2 = &v26[23];
LABEL_6:
    v3 = v2[5];
    v19 = v2[4];
    v20 = v3;
    v4 = v2[7];
    v21 = v2[6];
    v22 = v4;
    v5 = v2[1];
    v16[0] = *v2;
    v16[1] = v5;
    v6 = v2[3];
    v17 = v2[2];
    v18 = v6;
    v13[4] = v19;
    v13[5] = v3;
    v14 = v21;
    v15 = v4;
    v13[0] = v16[0];
    v13[1] = v5;
    v13[2] = v17;
    v13[3] = v6;
    if (_s7SwiftUI36AccessibilityDataSeriesConfigurationV04AxisF0VSgWOg(v13) != 1 && *(*(&v14 + 1) + 16))
    {
      v7 = MEMORY[0x1E6980BD0];
      v8 = MEMORY[0x1E69E6720];
      outlined init with copy of AccessibilityValueStorage?(v16, &v12, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration.AxisConfiguration?, MEMORY[0x1E6980BD0], MEMORY[0x1E69E6720], _sypSgMaTm_3);

      v10 = specialized _arrayForceCast<A, B>(_:)(v9);
      outlined destroy of AccessibilityTextLayoutProperties?(__dst, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration?, MEMORY[0x1E6980BD8], v8, _sypSgMaTm_3);
      outlined destroy of AccessibilityTextLayoutProperties?(v16, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration.AxisConfiguration?, v7, v8, _sypSgMaTm_3);

      return v10;
    }
  }

  outlined destroy of AccessibilityTextLayoutProperties?(__dst, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration?, MEMORY[0x1E6980BD8], MEMORY[0x1E69E6720], _sypSgMaTm_3);
  return 0;
}

uint64_t AccessibilityNode._accessibilityDataSeriesValueDescription(forPosition:axis:)(uint64_t a1, double a2)
{
  AccessibilityNode.attachment.getter(v37);
  outlined init with copy of AccessibilityProperties(v37, v35);
  outlined destroy of AccessibilityAttachment(v37);
  AccessibilityProperties.dataSeriesConfiguration.getter();
  outlined destroy of AccessibilityProperties(v35);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v37, __src, sizeof(v37));
  if (getEnumTag for AccessibilityActionCategory.Category(v37) == 1)
  {
    return 0;
  }

  if (!a1)
  {
    v4 = &v37[7];
LABEL_6:
    v5 = v4[5];
    v30 = v4[4];
    v31 = v5;
    v6 = v4[7];
    v32 = v4[6];
    v33 = v6;
    v7 = v4[1];
    v27[0] = *v4;
    v27[1] = v7;
    v8 = v4[3];
    v28 = v4[2];
    v29 = v8;
    v25[4] = v30;
    v25[5] = v5;
    v25[6] = v32;
    v26 = v6;
    v25[0] = v27[0];
    v25[1] = v7;
    v25[2] = v28;
    v25[3] = v8;
    if (_s7SwiftUI36AccessibilityDataSeriesConfigurationV04AxisF0VSgWOg(v25) != 1)
    {
      v10 = *(&v26 + 1);
      v11 = *(*(&v26 + 1) + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 48;
        v13 = *(v10 + 64) > a2 || *(v10 + 72) <= a2;
        v10 += 48;
        if (!v13)
        {
          v14 = *(v12 - 16);
          v15 = *(v12 - 8);
          v16 = *v12;
          v17 = *(v12 + 8);
          outlined init with copy of AccessibilityValueStorage?(v27, v24, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration.AxisConfiguration?, MEMORY[0x1E6980BD0], MEMORY[0x1E69E6720], _sypSgMaTm_3);
          outlined copy of Text.Storage(v14, v15, v16);

          v24[0] = 2;

          outlined copy of Text.Storage(v14, v15, v16);
          AccessibilityNode.resolvedAttributedText(_:options:)(v14, v15, v16, v17, v24);
          v19 = v18;
          outlined consume of Text.Storage(v14, v15, v16);

          if (v19)
          {
            v20 = [v19 string];
            v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();

            outlined consume of Text.Storage(v14, v15, v16);

            v22 = MEMORY[0x1E69E6720];
            outlined destroy of AccessibilityTextLayoutProperties?(v27, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration.AxisConfiguration?, MEMORY[0x1E6980BD0], MEMORY[0x1E69E6720], _sypSgMaTm_3);
            outlined destroy of AccessibilityTextLayoutProperties?(__dst, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration?, MEMORY[0x1E6980BD8], v22, _sypSgMaTm_3);
            return v21;
          }

          v23 = MEMORY[0x1E69E6720];
          outlined destroy of AccessibilityTextLayoutProperties?(__dst, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration?, MEMORY[0x1E6980BD8], MEMORY[0x1E69E6720], _sypSgMaTm_3);
          outlined destroy of AccessibilityTextLayoutProperties?(v27, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration.AxisConfiguration?, MEMORY[0x1E6980BD0], v23, _sypSgMaTm_3);
          outlined consume of Text.Storage(v14, v15, v16);

          return 0;
        }
      }
    }

    goto LABEL_7;
  }

  if (a1 == 1)
  {
    v4 = &v37[23];
    goto LABEL_6;
  }

LABEL_7:
  outlined destroy of AccessibilityTextLayoutProperties?(__dst, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration?, MEMORY[0x1E6980BD8], MEMORY[0x1E69E6720], _sypSgMaTm_3);
  return 0;
}

char *AccessibilityNode._accessibilityNodeChildrenUnsorted.getter(uint64_t a1)
{
  v2 = specialized static AccessibilityCore.queryChildren(element:options:)(v1, a1);
  v3 = v2;
  if (!(v2 >> 62))
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_13:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = __CocoaSet.count.getter();
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_3:
  v16 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = v16;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x18D00E9C0](v6, v3);
      }

      else
      {
        v8 = *(v3 + 8 * v6 + 32);
      }

      v9 = v8;
      AccessibilityNode.representedElement.getter();
      v11 = v10;
      ObjectType = swift_getObjectType();

      *&v14 = v11;
      v16 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        v7 = v16;
      }

      ++v6;
      *(v7 + 16) = v13 + 1;
      outlined init with take of Any(&v14, (v7 + 32 * v13 + 32));
    }

    while (v4 != v6);

    return v7;
  }

  __break(1u);
  return result;
}

uint64_t specialized AccessibilityNode.hasAction<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AccessibilityNode.attachment.getter(v20);
  outlined init with copy of AccessibilityProperties(v20, v23);
  outlined destroy of AccessibilityAttachment(v20);
  lazy protocol witness table accessor for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey();
  AccessibilityProperties.subscript.getter();
  outlined destroy of AccessibilityProperties(v23);
  v4 = v20[0];
  result = v20[0] + 32;
  v6 = -*(v20[0] + 16);
  v7 = -1;
  while (1)
  {
    v8 = v6 + v7;
    if (v6 + v7 == -1)
    {
LABEL_5:

      return v8 != -1;
    }

    if (++v7 >= *(v4 + 16))
    {
      break;
    }

    v9 = result + 48;
    outlined init with copy of AnyAccessibilityAction(result, v20);
    v19[0] = a1;
    v19[1] = a2;
    v19[2] = a3;
    v19[3] = a4;
    v11 = v21;
    v10 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v12 = *(v10 + 80);
    v13 = lazy protocol witness table accessor for type AccessibilityVoidAction and conformance AccessibilityVoidAction();
    v14 = v12(v19, &type metadata for AccessibilityVoidAction, v13, v11, v10);
    outlined destroy of AnyAccessibilityAction(v20);
    result = v9;
    if (v14)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized AccessibilityNode.hasAction<A>(_:)()
{
  AccessibilityNode.attachment.getter(v11);
  outlined init with copy of AccessibilityProperties(v11, v14);
  outlined destroy of AccessibilityAttachment(v11);
  lazy protocol witness table accessor for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey();
  AccessibilityProperties.subscript.getter();
  outlined destroy of AccessibilityProperties(v14);
  v0 = v11[0];
  result = v11[0] + 32;
  v2 = -*(v11[0] + 16);
  v3 = -1;
  while (1)
  {
    v4 = v2 + v3;
    if (v2 + v3 == -1)
    {
LABEL_5:

      return v4 != -1;
    }

    if (++v3 >= *(v0 + 16))
    {
      break;
    }

    v5 = result + 48;
    outlined init with copy of AnyAccessibilityAction(result, v11);
    v6 = v12;
    v7 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    v8 = *(v7 + 80);
    v9 = lazy protocol witness table accessor for type AccessibilityScrollAction and conformance AccessibilityScrollAction();
    v10 = v8(v9, &type metadata for AccessibilityScrollAction, v9, v6, v7);
    outlined destroy of AnyAccessibilityAction(v11);
    result = v5;
    if (v10)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized AccessibilityNode.hasAction<A>(_:)(char a1)
{
  AccessibilityNode.attachment.getter(v14);
  outlined init with copy of AccessibilityProperties(v14, v17);
  outlined destroy of AccessibilityAttachment(v14);
  lazy protocol witness table accessor for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey();
  AccessibilityProperties.subscript.getter();
  outlined destroy of AccessibilityProperties(v17);
  v1 = v14[0];
  result = v14[0] + 32;
  v3 = -*(v14[0] + 16);
  v4 = -1;
  while (1)
  {
    v5 = v3 + v4;
    if (v3 + v4 == -1)
    {
LABEL_5:

      return v5 != -1;
    }

    if (++v4 >= *(v1 + 16))
    {
      break;
    }

    v6 = result + 48;
    outlined init with copy of AnyAccessibilityAction(result, v14);
    v13 = a1;
    v8 = v15;
    v7 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    v9 = *(v7 + 80);
    v10 = lazy protocol witness table accessor for type AccessibilityAdjustableAction and conformance AccessibilityAdjustableAction();
    v11 = v9(&v13, &type metadata for AccessibilityAdjustableAction, v10, v8, v7);
    outlined destroy of AnyAccessibilityAction(v14);
    result = v6;
    if (v11)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomAction) -> (@unowned Bool)(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v122 = a1;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v127 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v134 = &v119 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v140 = &v119 - v14;
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v15);
  v139 = &v119 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_94:
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20, v16.n128_f64[0]);
    }

    v142 = v20;
    v115 = *(v20 + 2);
    if (v115 >= 2)
    {
      while (*a3)
      {
        v116 = *&v20[16 * v115];
        v117 = *&v20[16 * v115 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)(*a3 + v9[9] * v116, *a3 + v9[9] * *&v20[16 * v115 + 16], *a3 + v9[9] * v117, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v117 < v116)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20, v16.n128_f64[0]);
        }

        if (v115 - 2 >= *(v20 + 2))
        {
          goto LABEL_120;
        }

        v118 = &v20[16 * v115];
        *v118 = v116;
        *(v118 + 1) = v117;
        v142 = v20;
        specialized Array.remove(at:)(v115 - 1);
        v20 = v142;
        v115 = *(v142 + 2);
        if (v115 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v119 = a4;
  v19 = 0;
  v137 = (v9 + 1);
  v138 = v9 + 2;
  v136 = (v9 + 4);
  v20 = MEMORY[0x1E69E7CC0];
  v124 = v9;
  v141 = v8;
  v120 = a3;
  while (1)
  {
    v21 = v19;
    v125 = v20;
    if (v19 + 1 >= v18)
    {
      v34 = v19 + 1;
    }

    else
    {
      v132 = v18;
      v121 = v5;
      v22 = *a3;
      v23 = v9[9];
      v24 = v19;
      v123 = v19;
      v25 = &v22[v23 * (v19 + 1)];
      v26 = v8;
      v27 = v9[2];
      v28 = v139;
      v27(v139, v25, v26, v16);
      v29 = &v22[v23 * v24];
      v30 = v140;
      v131 = v27;
      (v27)(v140, v29, v26);
      v130 = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x1E6969C28], MEMORY[0x1E6969C48]);
      LODWORD(v133) = dispatch thunk of static Comparable.< infix(_:_:)();
      v31 = v9[1];
      v31(v30, v26);
      v129 = v31;
      v31(v28, v26);
      v32 = v123 + 2;
      v135 = v23;
      v33 = &v22[v23 * (v123 + 2)];
      while (1)
      {
        v34 = v132;
        if (v132 == v32)
        {
          break;
        }

        v35 = v139;
        v36 = v9;
        v37 = v141;
        v38 = v131;
        (v131)(v139, v33, v141);
        v39 = v140;
        v38(v140, v25, v37);
        v40 = dispatch thunk of static Comparable.< infix(_:_:)() & 1;
        v41 = v129;
        (v129)(v39, v37);
        v42 = v37;
        v9 = v36;
        v41(v35, v42);
        ++v32;
        v33 += v135;
        v25 += v135;
        if ((v133 & 1) != v40)
        {
          v34 = v32 - 1;
          break;
        }
      }

      v5 = v121;
      v20 = v125;
      v8 = v141;
      a3 = v120;
      v21 = v123;
      if (v133)
      {
        if (v34 < v123)
        {
          goto LABEL_123;
        }

        if (v123 < v34)
        {
          v43 = v34;
          v44 = v135 * (v34 - 1);
          v45 = v34 * v135;
          v132 = v34;
          v46 = v123;
          v47 = v123 * v135;
          do
          {
            if (v46 != --v43)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v133 = *v136;
              v133(v127, &v49[v47], v141);
              if (v47 < v44 || &v49[v47] >= &v49[v45])
              {
                v48 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v48 = v141;
                if (v47 != v44)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v133(&v49[v44], v127, v48);
              v9 = v124;
              v20 = v125;
            }

            ++v46;
            v44 -= v135;
            v45 -= v135;
            v47 += v135;
          }

          while (v46 < v43);
          v5 = v121;
          v8 = v141;
          v21 = v123;
          v34 = v132;
        }
      }
    }

    v50 = a3[1];
    if (v34 < v50)
    {
      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 < v119)
      {
        if (__OFADD__(v21, v119))
        {
          goto LABEL_124;
        }

        if (v21 + v119 >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v21 + v119;
        }

        if (v51 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v34 != v51)
        {
          break;
        }
      }
    }

    v52 = v34;
    if (v34 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
    }

    v54 = *(v20 + 2);
    v53 = *(v20 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1, v20);
    }

    *(v20 + 2) = v55;
    v56 = &v20[16 * v54];
    *(v56 + 4) = v21;
    *(v56 + 5) = v52;
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_131;
    }

    v128 = v52;
    if (v54)
    {
      while (1)
      {
        v57 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(v20 + 4);
          v59 = *(v20 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_52:
          if (v61)
          {
            goto LABEL_110;
          }

          v74 = &v20[16 * v55];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_113;
          }

          v80 = &v20[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_117;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v55 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v84 = &v20[16 * v55];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_66:
        if (v79)
        {
          goto LABEL_112;
        }

        v87 = &v20[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_115;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_73:
        v95 = v57 - 1;
        if (v57 - 1 >= v55)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
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
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v96 = *&v20[16 * v95 + 32];
        v97 = *&v20[16 * v57 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)(*a3 + v9[9] * v96, *a3 + v9[9] * *&v20[16 * v57 + 32], *a3 + v9[9] * v97, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v97 < v96)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20, v16.n128_f64[0]);
        }

        if (v95 >= *(v20 + 2))
        {
          goto LABEL_107;
        }

        v98 = &v20[16 * v95];
        *(v98 + 4) = v96;
        *(v98 + 5) = v97;
        v142 = v20;
        specialized Array.remove(at:)(v57);
        v20 = v142;
        v55 = *(v142 + 2);
        v8 = v141;
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v20[16 * v55 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_108;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_109;
      }

      v69 = &v20[16 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_111;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_114;
      }

      if (v73 >= v65)
      {
        v91 = &v20[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_118;
        }

        if (v60 < v94)
        {
          v57 = v55 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = a3[1];
    v19 = v128;
    if (v128 >= v18)
    {
      goto LABEL_94;
    }
  }

  v121 = v5;
  v99 = *a3;
  v100 = v9[9];
  v135 = v9[2];
  v101 = v99 + v100 * (v34 - 1);
  v102 = -v100;
  v123 = v21;
  v103 = v21 - v34;
  v133 = v99;
  v126 = v100;
  v104 = v99 + v34 * v100;
  v128 = v51;
LABEL_85:
  v131 = v101;
  v132 = v34;
  v129 = v104;
  v130 = v103;
  v105 = v101;
  while (1)
  {
    v106 = v139;
    v107 = v135;
    (v135)(v139, v104, v8);
    v108 = v140;
    v107(v140, v105, v141);
    lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x1E6969C28], MEMORY[0x1E6969C48]);
    v109 = dispatch thunk of static Comparable.< infix(_:_:)();
    v110 = *v137;
    v111 = v108;
    v8 = v141;
    (*v137)(v111, v141);
    v110(v106, v8);
    if ((v109 & 1) == 0)
    {
LABEL_84:
      v34 = v132 + 1;
      v101 = &v131[v126];
      v103 = v130 - 1;
      v104 = &v129[v126];
      v52 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v5 = v121;
      a3 = v120;
      v9 = v124;
      v20 = v125;
      v21 = v123;
      if (v128 < v123)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v112 = *v136;
    v113 = v134;
    (*v136)(v134, v104, v8);
    swift_arrayInitWithTakeFrontToBack();
    v112(v105, v113, v8);
    v105 += v102;
    v104 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
    }
  }

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
}

void specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v51 = type metadata accessor for IndexPath();
  v8 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v49 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v48 = &v39 - v11;
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

  v50 = a3;
  v15 = (a2 - a1) / v13;
  v54 = a1;
  v53 = a4;
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

    v26 = a4 + v17;
    if (v17 >= 1)
    {
      v27 = -v13;
      v42 = a4;
      v43 = (v8 + 16);
      v40 = (v8 + 8);
      v41 = a1;
      v28 = a4 + v17;
      v29 = v50;
      v44 = v27;
      do
      {
        v39 = v26;
        v30 = a2 + v27;
        v46 = a2 + v27;
        v47 = v26;
        v45 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v54 = a2;
            v26 = v39;
            goto LABEL_59;
          }

          v32 = v29;
          v50 = v29 + v27;
          v33 = v28 + v27;
          v34 = *v43;
          v35 = v48;
          v36 = v51;
          (*v43)(v48, v28 + v27, v51);
          v37 = v49;
          v34(v49, v30, v36);
          lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x1E6969C28], MEMORY[0x1E6969C48]);
          LOBYTE(v34) = dispatch thunk of static Comparable.< infix(_:_:)();
          v38 = *v40;
          (*v40)(v37, v36);
          v38(v35, v36);
          if (v34)
          {
            break;
          }

          v29 = v50;
          if (v32 < v28 || v50 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v46;
            a1 = v41;
          }

          else
          {
            v30 = v46;
            a1 = v41;
            if (v32 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v47 = v33;
          v28 = v33;
          v31 = v33 > v42;
          v27 = v44;
          a2 = v45;
          if (!v31)
          {
            v26 = v47;
            goto LABEL_58;
          }
        }

        v29 = v50;
        if (v32 < v45 || v50 >= v45)
        {
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v41;
        }

        else
        {
          a2 = v46;
          a1 = v41;
          if (v32 != v45)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v26 = v47;
        v27 = v44;
      }

      while (v28 > v42);
    }

LABEL_58:
    v54 = a2;
LABEL_59:
    v52 = v26;
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
    v52 = a4 + v16;
    if (v16 >= 1 && a2 < v50)
    {
      v45 = *(v8 + 16);
      v46 = v8 + 16;
      v43 = v13;
      v44 = (v8 + 8);
      do
      {
        v19 = v48;
        v20 = v51;
        v21 = v45;
        (v45)(v48, a2, v51);
        v22 = v49;
        v21(v49, a4, v20);
        lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x1E6969C28], MEMORY[0x1E6969C48]);
        LOBYTE(v21) = dispatch thunk of static Comparable.< infix(_:_:)();
        v23 = *v44;
        (*v44)(v22, v20);
        v23(v19, v20);
        if (v21)
        {
          v24 = v43;
          if (a1 < a2 || a1 >= &v43[a2])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v24;
        }

        else
        {
          v24 = v43;
          v25 = &v43[a4];
          if (a1 < a4 || a1 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v53 = v25;
          a4 += v24;
        }

        a1 += v24;
        v54 = a1;
      }

      while (a4 < v47 && a2 < v50);
    }
  }

  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v54, &v53, &v52);
}

uint64_t specialized closure #1 in AccessibilityNode.applyAction<A>(_:value:key:to:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = a3[2];
  v6 = a3[3];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = specialized AccessibilityNode.sendAction<A>(_:value:)(v3, v4, v5, v6);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t specialized closure #1 in AccessibilityNode.applyAction<A>(_:value:key:to:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v4 = *a4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = specialized AccessibilityNode.sendAction<A>(_:value:)(v4);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t specialized closure #1 in AccessibilityNode.applyAction<A>(_:value:key:to:)(uint64_t a1, uint64_t a2, char *a3, char *a4)
{
  v4 = *a3;
  v5 = *a4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = specialized AccessibilityNode.sendAction<A>(_:value:)(v4, v5);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t partial apply for specialized closure #1 in AccessibilityNode.applyAction<A>(_:value:key:to:)(uint64_t a1)
{
  return specialized closure #1 in AccessibilityNode.applyAction<A>(_:value:key:to:)(a1, *(v1 + 16), (v1 + 24), (v1 + 25));
}

{
  return specialized closure #1 in AccessibilityNode.applyAction<A>(_:value:key:to:)(a1, *(v1 + 16), (v1 + 24));
}

unint64_t type metadata accessor for UIAccessibilityContainerDataTableCell()
{
  result = lazy cache variable for type metadata for UIAccessibilityContainerDataTableCell;
  if (!lazy cache variable for type metadata for UIAccessibilityContainerDataTableCell)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIAccessibilityContainerDataTableCell);
  }

  return result;
}

uint64_t _s7SwiftUI36AccessibilityDataSeriesConfigurationV04AxisF0VSgWOg(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void type metadata accessor for ShadowListDataSource<TableDataSourceAdaptor>?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>?)
  {
    type metadata accessor for ShadowListDataSource<TableDataSourceAdaptor>(255, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>?);
    }
  }
}

void type metadata accessor for ShadowListDataSource<TableDataSourceAdaptor>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, ValueMetadata *, uint64_t))
{
  if (!*a2)
  {
    v7 = a3();
    v8 = a4(a1, &type metadata for TableDataSourceAdaptor, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>)
  {
    type metadata accessor for ModifiedContent<TableRowView, CollectionViewCellModifier>();
    v3 = v2;
    v4 = lazy protocol witness table accessor for type ModifiedContent<TableRowView, CollectionViewCellModifier> and conformance <> ModifiedContent<A, B>();
    v6 = type metadata accessor for _UIHostingView(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>);
    }
  }
}

void type metadata accessor for ModifiedContent<TableRowView, CollectionViewCellModifier>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<TableRowView, CollectionViewCellModifier>)
  {
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<TableRowView, CollectionViewCellModifier>);
    }
  }
}

void type metadata accessor for Text.Style?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t outlined destroy of ImageResolutionContext(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t View.alternateRepresentation<A>(for:content:)(uint64_t a1, void (*a2)(double), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a6;
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AlternateRepresentationModifier(0, v13, v14, v12);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v21 - v18;
  a2(v17);
  (*(v9 + 32))(v19, v11, a5);
  MEMORY[0x18D00A570](v19, a4, v15, v21);
  return (*(v16 + 8))(v19, v15);
}

Swift::Int AlternateRepresentationPlacement.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](0);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type AlternateRepresentationPlacement and conformance AlternateRepresentationPlacement()
{
  result = lazy protocol witness table cache variable for type AlternateRepresentationPlacement and conformance AlternateRepresentationPlacement;
  if (!lazy protocol witness table cache variable for type AlternateRepresentationPlacement and conformance AlternateRepresentationPlacement)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AlternateRepresentationPlacement, &type metadata for AlternateRepresentationPlacement, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AlternateRepresentationPlacement and conformance AlternateRepresentationPlacement);
  }

  return result;
}

uint64_t type metadata completion function for AlternateRepresentationModifier(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AlternateRepresentationModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  v6 = ~v5;
  if (v5 > 7 || (*(v4 + 80) & 0x100000) != 0 || *(*(*(a3 + 16) - 8) + 64) > 0x18uLL)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v5 + 16) & v6));
  }

  else
  {
    (*(v4 + 16))((a1 + v5) & v6, (a2 + v5) & v6);
  }

  return v3;
}

uint64_t initializeWithCopy for AlternateRepresentationModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 16))((*(v4 + 80) + a1) & ~*(v4 + 80), (*(v4 + 80) + a2) & ~*(v4 + 80));
  return a1;
}

uint64_t assignWithCopy for AlternateRepresentationModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 24))((*(v4 + 80) + a1) & ~*(v4 + 80), (*(v4 + 80) + a2) & ~*(v4 + 80));
  return a1;
}

uint64_t initializeWithTake for AlternateRepresentationModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 32))((*(v4 + 80) + a1) & ~*(v4 + 80), (*(v4 + 80) + a2) & ~*(v4 + 80));
  return a1;
}

uint64_t assignWithTake for AlternateRepresentationModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 40))((*(v4 + 80) + a1) & ~*(v4 + 80), (*(v4 + 80) + a2) & ~*(v4 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for AlternateRepresentationModifier(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + *(v4 + 80)) & ~*(v4 + 80));
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((a1 + *(v4 + 80)) & ~*(v4 + 80));
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void storeEnumTagSinglePayload for AlternateRepresentationModifier(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = &a1[v8] & ~v8;

  v18(v19);
}

uint64_t static AlternateRepresentationModifier._makeView(modifier:inputs:body:)(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v53 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 48);
  v9 = *(a2 + 16);
  v43 = *(a2 + 32);
  v44 = v8;
  v10 = *(a2 + 48);
  v45 = *(a2 + 64);
  v11 = *(a2 + 16);
  v42[0] = *a2;
  v42[1] = v11;
  v38 = v43;
  v39 = v10;
  v40 = *(a2 + 64);
  v12 = *a1;
  v46 = *(a2 + 80);
  v41 = *(a2 + 80);
  v36 = v42[0];
  v37 = v9;
  v28 = a5;
  v29 = a6;
  LODWORD(v49[0]) = v12;
  outlined init with copy of _ViewInputs(v42, v51);
  type metadata accessor for AlternateRepresentationModifier(255, a5, a6, v13);
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  v14 = v51[0];
  v26 = a5;
  v27 = a6;
  LODWORD(v51[0]) = v12;
  _GraphValue.subscript.getter();
  type metadata accessor for _GraphValue();
  v15 = _GraphValue.value.getter();
  lazy protocol witness table accessor for type AlternateRepresentationKey and conformance AlternateRepresentationKey();
  PropertyList.subscript.getter();
  v16 = *&v51[0];
  *&v51[0] = __PAIR64__(v15, v14);
  *(&v51[0] + 1) = v16;
  v24 = type metadata accessor for AlternateRepresentationModifier.WriteAlternateRepresentationInput(0, a5, a6, v17);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AlternateRepresentationModifier<A>.WriteAlternateRepresentationInput, v24);
  type metadata accessor for Attribute<[AlternateRepresentationPlacement.Value : AnyView]>(0);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v51, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_20, v23, v24, MEMORY[0x1E69E73E0], v18, MEMORY[0x1E69E7410], v19);
  *&v51[0] = AGCreateWeakAttribute();
  PropertyList.subscript.setter();
  v47[2] = v38;
  v47[3] = v39;
  v47[4] = v40;
  v48 = v41;
  v47[0] = v36;
  v47[1] = v37;
  v32 = v38;
  v33 = v39;
  v34 = v40;
  v35 = v41;
  v30 = v36;
  v31 = v37;
  v20 = outlined init with copy of _ViewInputs(v47, v51);
  a3(v20, &v30);
  v49[2] = v32;
  v49[3] = v33;
  v49[4] = v34;
  v50 = v35;
  v49[0] = v30;
  v49[1] = v31;
  outlined destroy of _ViewInputs(v49);
  v51[2] = v38;
  v51[3] = v39;
  v51[4] = v40;
  v52 = v41;
  v51[0] = v36;
  v51[1] = v37;
  return outlined destroy of _ViewInputs(v51);
}

uint64_t closure #1 in static AlternateRepresentationModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[2] = type metadata accessor for AlternateRepresentationModifier(0, a2, a3, a4);
  v5 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in static PointerOffset.of(_:)partial apply, v8, &type metadata for AlternateRepresentationPlacement.Value, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);
  return v8[5];
}

uint64_t closure #2 in static AlternateRepresentationModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = type metadata accessor for AlternateRepresentationModifier(0, a2, a3, a4);
  v9[3] = a2;
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v9, a2, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

double AlternateRepresentationModifier.WriteAlternateRepresentationInput.existingValue.getter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for [AlternateRepresentationPlacement.Value : AnyView](0);
  if (AGGraphGetWeakValue())
  {
  }

  return result;
}

uint64_t AlternateRepresentationModifier.WriteAlternateRepresentationInput.value.getter(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  AlternateRepresentationModifier.WriteAlternateRepresentationInput.existingValue.getter(v8, v9);
  if (!v10)
  {
    v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI32AlternateRepresentationPlacementV5ValueO_AC7AnyViewVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  v11 = v10;
  AGGraphGetValue();
  Value = AGGraphGetValue();
  (*(v5 + 16))(v7, Value, a3);
  v13 = AnyView.init<A>(_:)();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = v11;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, isUniquelyReferenced_nonNull_native);
  return v17;
}

uint64_t protocol witness for Rule.value.getter in conformance AlternateRepresentationModifier<A>.WriteAlternateRepresentationInput@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = AlternateRepresentationModifier.WriteAlternateRepresentationInput.value.getter(*v2, *(v2 + 8), *(a1 + 16), *(a1 + 24));
  *a2 = result;
  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance AlternateRepresentationModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AlternateRepresentationModifier<A>, a5);

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance AlternateRepresentationKey(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for [AlternateRepresentationPlacement.Value : AnyView](0);

  return static WeakAttribute.== infix(_:_:)();
}

uint64_t View.alert<A>(_:isPresented:actions:)@<X0>(uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t (*a8)(__n128)@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{

  v19 = Text.init(_:tableName:bundle:comment:)();
  v21 = v20;
  v23 = v22;
  View.alert<A>(_:isPresented:actions:)(v19, v20, v22 & 1, v24, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
  outlined consume of Text.Storage(v19, v21, v23 & 1);
}

uint64_t View.alert<A, B>(_:isPresented:actions:message:)@<X0>(uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t (*a8)(__n128)@<X7>, uint64_t a9@<X8>, uint64_t a10, void (*a11)(uint64_t), uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{

  v23 = Text.init(_:tableName:bundle:comment:)();
  v25 = v24;
  v27 = v26;
  View.alert<A, B>(_:isPresented:actions:message:)(v23, v24, v26 & 1, v28, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  outlined consume of Text.Storage(v23, v25, v27 & 1);
}

uint64_t View.alert<A, B>(_:isPresented:presenting:actions:)@<X0>(uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{

  v21 = Text.init(_:tableName:bundle:comment:)();
  v23 = v22;
  v25 = v24;
  View.alert<A, B>(_:isPresented:presenting:actions:)(v21, v22, v24 & 1, v26, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);
  outlined consume of Text.Storage(v21, v23, v25 & 1);
}

uint64_t View.alert<A, B, C>(_:isPresented:presenting:actions:message:)@<X0>(uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t x8_0@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t arg10_8, uint64_t arg20, uint64_t arg20_8, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v21 = a7;

  v25 = Text.init(_:tableName:bundle:comment:)();
  v27 = v26;
  v29 = v28;
  View.alert<A, B, C>(_:isPresented:presenting:actions:message:)(v25, v26, v28 & 1, v30, a5, a6, v21, a8, x8_0, a9, a10, a11, arg10_8, arg20, arg20_8, a12, a13, a14, a15, a16);
  outlined consume of Text.Storage(v25, v27, v29 & 1);
}

uint64_t View.alert<A, B, C>(_:isPresented:presenting:actions:message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v49 = a14;
  v50 = a15;
  v51 = a16;
  v52 = a17;
  v53 = a18;
  v54 = a19;
  v55 = a20;
  v56 = a5;
  v57 = a6;
  v58 = a7;
  v59 = a8;
  v60 = a10;
  v61 = a11;
  v35 = a14;
  v36 = a15;
  v37 = a16;
  v38 = a17;
  v39 = a18;
  v40 = a19;
  v41 = a20;
  v42 = a5;
  v43 = a6;
  v44 = a7;
  v45 = a8;
  v46 = a12;
  v47 = a13;
  v24 = type metadata accessor for Optional();
  v25 = type metadata accessor for Optional();
  v26 = MEMORY[0x1E6982090];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6982090], v24, &a19);
  v28 = swift_getWitnessTable(v26, v25, &a20);
  return View.alert<A, B>(_:isPresented:actions:message:)(a1, a2, a3 & 1, a4, a5, a6, a7, partial apply for closure #1 in View.alert<A, B, C>(_:isPresented:presenting:actions:message:), a9, v48, partial apply for closure #2 in View.alert<A, B, C>(_:isPresented:presenting:actions:message:), v34, a14, v24, v25, a18, WitnessTable, v28);
}

uint64_t View.alert<A, B, C, D>(_:isPresented:presenting:actions:message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, __int128 a12, __int128 a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v36 = a5;
  v32 = a6;
  v33 = a2;
  v35 = a4;
  v34 = a3;
  v30 = a12;
  v31 = a10;
  v29 = a13;
  v19 = MEMORY[0x1EEE9AC00](a1);
  (*(v21 + 16))(&v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
  v22 = Text.init<A>(_:)();
  v24 = v23;
  v26 = v25;
  View.alert<A, B, C>(_:isPresented:presenting:actions:message:)(v22, v23, v25 & 1, v27, v33, v34, v35, v36, a9, v32, a7, a8, v31, *(&v31 + 1), v30, *(&v30 + 1), v29, *(&v29 + 1), a15, a16);
  outlined consume of Text.Storage(v22, v24, v26 & 1);
}

uint64_t closure #1 in View.alert<A, B, C>(_:isPresented:presenting:actions:message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, void (*a5)(char *)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v45[1] = a6;
  v46 = a5;
  v49 = a4;
  v55 = a8;
  v54 = a12;
  v15 = *(a7 - 8);
  v52 = a2;
  v53 = v15;
  MEMORY[0x1EEE9AC00](a1);
  v47 = v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v45[0] = v45 - v18;
  v19 = type metadata accessor for Optional();
  v48 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v45 - v20;
  v50 = a10;
  v51 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Optional();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = v45 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = v45 - v30;
  v58 = a1;
  v59 = v52;
  v60 = a3;
  type metadata accessor for Binding<Bool>();
  MEMORY[0x18D00ACC0](&v57);
  if (v57 == 1)
  {
    v32 = v48;
    (*(v48 + 16))(v21, v49, v19);
    if ((*(v51 + 48))(v21, 1, v50) != 1)
    {
      v36 = v51;
      v37 = v21;
      v38 = v50;
      (*(v51 + 32))(v24, v37, v50);
      v39 = v47;
      v46(v24);
      (*(v36 + 8))(v24, v38);
      v52 = v26;
      v40 = v45[0];
      v34 = v54;
      static ViewBuilder.buildExpression<A>(_:)();
      v35 = v53;
      v41 = *(v53 + 8);
      v41(v39, a7);
      static ViewBuilder.buildExpression<A>(_:)();
      v42 = v40;
      v26 = v52;
      v41(v42, a7);
      (*(v35 + 32))(v28, v39, a7);
      v33 = 0;
      goto LABEL_6;
    }

    (*(v32 + 8))(v21, v19);
  }

  v33 = 1;
  v35 = v53;
  v34 = v54;
LABEL_6:
  (*(v35 + 56))(v28, v33, 1, a7);
  static ToolbarContentBuilder.buildIf<A>(_:)(v28, v31);
  v43 = *(v26 + 8);
  v43(v28, v25);
  v56 = v34;
  swift_getWitnessTable(MEMORY[0x1E6982090], v25, &v56);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v43)(v31, v25);
}

uint64_t closure #2 in View.alert<A, B, C>(_:isPresented:presenting:actions:message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, void (*a5)(char *)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v40[1] = a6;
  v41 = a5;
  v44 = a4;
  LODWORD(v47) = a3;
  v46 = a2;
  v50 = a7;
  v48 = *(a8 - 8);
  v49 = a12;
  MEMORY[0x1EEE9AC00](a1);
  v42 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v40[0] = v40 - v15;
  v16 = type metadata accessor for Optional();
  v43 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v40 - v17;
  v45 = *(a9 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Optional();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = v40 - v27;
  v53 = a1;
  v54 = v46;
  v55 = v47;
  type metadata accessor for Binding<Bool>();
  MEMORY[0x18D00ACC0](&v52);
  if (v52 == 1)
  {
    v29 = v43;
    (*(v43 + 16))(v18, v44, v16);
    if ((*(v45 + 48))(v18, 1, a9) != 1)
    {
      v33 = v45;
      (*(v45 + 32))(v21, v18);
      v34 = v42;
      v41(v21);
      (*(v33 + 8))(v21, a9);
      v47 = v23;
      v35 = v40[0];
      v31 = v49;
      static ViewBuilder.buildExpression<A>(_:)();
      v32 = v48;
      v36 = *(v48 + 8);
      v36(v34, a8);
      static ViewBuilder.buildExpression<A>(_:)();
      v37 = v35;
      v23 = v47;
      v36(v37, a8);
      (*(v32 + 32))(v25, v34, a8);
      v30 = 0;
      goto LABEL_6;
    }

    (*(v29 + 8))(v18, v16);
  }

  v30 = 1;
  v32 = v48;
  v31 = v49;
LABEL_6:
  (*(v32 + 56))(v25, v30, 1, a8);
  static ToolbarContentBuilder.buildIf<A>(_:)(v25, v28);
  v38 = *(v23 + 8);
  v38(v25, v22);
  v51 = v31;
  swift_getWitnessTable(MEMORY[0x1E6982090], v22, &v51);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v38)(v28, v22);
}

uint64_t View.alert<A, B>(isPresented:error:actions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v27 = a7;
  v28 = a9;
  v32 = a5;
  v33 = a6;
  v29 = a3;
  v30 = a1;
  v31 = a2;
  v26 = a10;
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v26 - v18;
  (*(v16 + 16))(&v26 - v18, a4, v15, v17);
  v20 = *(a8 - 8);
  if ((*(v20 + 48))(v19, 1, a8) == 1)
  {
    v21 = 0;
    v22 = 0xE000000000000000;
    a8 = v15;
  }

  else
  {
    v21 = LocalizedError.alertTitle.getter(a8, a12);
    v22 = v23;
    v16 = v20;
  }

  (*(v16 + 8))(v19, a8);
  v34[0] = v21;
  v34[1] = v22;
  v24 = lazy protocol witness table accessor for type String and conformance String();
  View.errorAlert<A, B, C>(_:isPresented:actions:message:)(v34, v30, v31, v29 & 1, v32, v33, destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation, 0, v28, v27, MEMORY[0x1E69E6158], v26, MEMORY[0x1E6981E70], a11, v24, a13, MEMORY[0x1E6981E60]);
}

uint64_t LocalizedError.alertTitle.getter(uint64_t a1, uint64_t a2)
{
  result = dispatch thunk of LocalizedError.errorDescription.getter();
  if (!v3)
  {
    v4 = static os_log_type_t.fault.getter();
    v5 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v4, &dword_18BD4A000, v5, "An error was provided to alert(error:actions:) without an implementation of LocalizedError.errorDescription. Falling back to the Error's localizedDescription instead.", 166, 2, MEMORY[0x1E69E7CC0]);

    return Error.localizedDescription.getter();
  }

  return result;
}

uint64_t View.errorAlert<A, B, C>(_:isPresented:actions:message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v64 = a8;
  v65 = a7;
  v62 = a6;
  v63 = a5;
  v17 = a4;
  v52 = a4;
  v69 = a3;
  v58 = a1;
  v67 = a9;
  v68 = a14;
  v60 = a15;
  v53 = a17;
  v51 = a16;
  v56 = a13;
  v66 = a10;
  v50 = a11;
  MEMORY[0x1EEE9AC00](a1);
  v61 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v20;
  v59 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for ModifiedContent();
  MEMORY[0x1EEE9AC00](v24);
  v55 = &v48 - v25;
  v26 = *(a11 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v48 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = lazy protocol witness table accessor for type ActionsModifier and conformance ActionsModifier();
  v80[0] = a16;
  v80[1] = v30;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v24, v80);
  *&v70 = v24;
  *(&v70 + 1) = a13;
  *&v71 = WitnessTable;
  *(&v71 + 1) = a17;
  v31 = type metadata accessor for AlertModifier(0, &v70);
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v48 - v33;
  v48 = a2;
  v77 = a2;
  v78 = v69;
  v79 = v17;
  type metadata accessor for Binding<Bool>();
  MEMORY[0x18D00ACC0](&v76);
  v49 = v76;
  (*(v26 + 16))(v29, v58, v50);

  v60 = Text.init<A>(_:)();
  v58 = v35;
  LOBYTE(v26) = v36;
  v38 = v37;
  v39 = v63();
  v40 = v55;
  v41 = v57;
  MEMORY[0x18D00A570](v39, v57, &unk_1EFFCFD30, v51);
  v42 = (*(v59 + 8))(v23, v41);
  v43 = v61;
  v65(v42);
  v75 = 0;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v70 = 0u;
  *(&v47 + 1) = v53;
  *&v47 = WitnessTable;
  *&v46 = v24;
  *(&v46 + 1) = v56;
  v44 = AlertModifier.init(presentedValue:isPresented:title:actions:message:auxiliaryContent:representsError:)(v49, v48, v69, v52, v60, v58, v26 & 1, v38, v34, v40, v43, &v70, 1, v46, v47);
  MEMORY[0x18D00A570](v34, v66, v31, v68, v44);
  return (*(v32 + 8))(v34, v31);
}

uint64_t View.alert<A, B, C>(isPresented:error:actions:message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v63 = a2;
  v56 = a7;
  v57 = a8;
  v52 = a5;
  v53 = a6;
  v51 = a3;
  v61 = a9;
  v62 = a1;
  v58 = a16;
  v59 = a17;
  v60 = a14;
  v54 = a13;
  v18 = type metadata accessor for Optional();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v46 - v21;
  v23 = *(v19 + 16);
  v55 = a4;
  v23(&v46 - v21, a4, v18, v20);
  v24 = *(a11 - 8);
  if ((*(v24 + 48))(v22, 1, a11) == 1)
  {
    v25 = 0;
    v26 = 0xE000000000000000;
  }

  else
  {
    v25 = LocalizedError.alertTitle.getter(a11, a15);
    v26 = v27;
    v19 = v24;
    v18 = a11;
  }

  v48 = v26;
  v28 = (*(v19 + 8))(v22, v18);
  v50 = &v46;
  v66[0] = v25;
  v66[1] = v26;
  MEMORY[0x1EEE9AC00](v28);
  v49 = &v46 - 16;
  *(&v46 - 14) = a10;
  *(&v46 - 13) = a11;
  *(&v46 - 12) = a12;
  v29 = v54;
  v47 = a10;
  v30 = v59;
  v31 = v60;
  *(&v46 - 11) = v54;
  *(&v46 - 10) = v31;
  v32 = v58;
  *(&v46 - 9) = a15;
  v33 = v62;
  v34 = v63;
  v35 = v51 & 1;
  MEMORY[0x1EEE9AC00](v36);
  v53 = &v46 - 16;
  *(&v46 - 14) = v37;
  *(&v46 - 13) = a11;
  *(&v46 - 12) = v38;
  *(&v46 - 11) = v29;
  *(&v46 - 10) = v31;
  *(&v46 - 9) = a15;
  v39 = type metadata accessor for Optional();
  v40 = type metadata accessor for Optional();
  v41 = lazy protocol witness table accessor for type String and conformance String();
  v65 = v32;
  v42 = MEMORY[0x1E6982090];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6982090], v39, &v65);
  v64 = v30;
  v44 = swift_getWitnessTable(v42, v40, &v64);
  View.errorAlert<A, B, C>(_:isPresented:actions:message:)(v66, v33, v34, v35, partial apply for closure #1 in View.alert<A, B, C>(isPresented:error:actions:message:), v49, partial apply for closure #2 in View.alert<A, B, C>(isPresented:error:actions:message:), v53, v61, v47, MEMORY[0x1E69E6158], v39, v40, v31, v41, WitnessTable, v44);
}

uint64_t closure #1 in View.alert<A, B, C>(isPresented:error:actions:message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, void (*a5)(char *)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v44 = a6;
  v45 = a5;
  v47 = a4;
  v52 = a3;
  v51 = a2;
  v55 = a8;
  v53 = *(a9 - 8);
  v54 = a13;
  MEMORY[0x1EEE9AC00](a1);
  v49 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v48 = &v44 - v17;
  v18 = type metadata accessor for Optional();
  v46 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v44 - v19;
  v50 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Optional();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v44 - v29;
  v58 = a1;
  v59 = v51;
  v60 = v52;
  type metadata accessor for Binding<Bool>();
  MEMORY[0x18D00ACC0](&v57);
  if (v57 == 1)
  {
    v31 = v46;
    (*(v46 + 16))(v20, v47, v18);
    if ((*(v50 + 48))(v20, 1, a7) != 1)
    {
      v35 = a7;
      v36 = v50;
      v37 = v20;
      v38 = v35;
      (*(v50 + 32))(v23, v37);
      v39 = v49;
      v45(v23);
      (*(v36 + 8))(v23, v38);
      v33 = v54;
      static ViewBuilder.buildExpression<A>(_:)();
      v34 = v53;
      v40 = *(v53 + 8);
      v40(v39, a9);
      v41 = v48;
      static ViewBuilder.buildExpression<A>(_:)();
      v40(v41, a9);
      (*(v34 + 32))(v27, v49, a9);
      v32 = 0;
      goto LABEL_6;
    }

    (*(v31 + 8))(v20, v18);
  }

  v32 = 1;
  v34 = v53;
  v33 = v54;
LABEL_6:
  (*(v34 + 56))(v27, v32, 1, a9);
  static ToolbarContentBuilder.buildIf<A>(_:)(v27, v30);
  v42 = *(v25 + 8);
  v42(v27, v24);
  v56 = v33;
  swift_getWitnessTable(MEMORY[0x1E6982090], v24, &v56, v44);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v42)(v30, v24);
}

uint64_t closure #2 in View.alert<A, B, C>(isPresented:error:actions:message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, void (*a5)(char *)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v45 = a6;
  v46 = a5;
  v48 = a4;
  v53 = a3;
  v52 = a2;
  v56 = a8;
  v54 = *(a10 - 8);
  v55 = a14;
  MEMORY[0x1EEE9AC00](a1);
  v50 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v49 = &v45 - v18;
  v19 = type metadata accessor for Optional();
  v47 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v45 - v20;
  v51 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Optional();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v45 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v45 - v30;
  v59 = a1;
  v60 = v52;
  v61 = v53;
  type metadata accessor for Binding<Bool>();
  MEMORY[0x18D00ACC0](&v58);
  if (v58 == 1)
  {
    v32 = v47;
    (*(v47 + 16))(v21, v48, v19);
    if ((*(v51 + 48))(v21, 1, a7) != 1)
    {
      v36 = a7;
      v37 = v51;
      v38 = v21;
      v39 = v36;
      (*(v51 + 32))(v24, v38);
      v40 = v50;
      v46(v24);
      (*(v37 + 8))(v24, v39);
      v34 = v55;
      static ViewBuilder.buildExpression<A>(_:)();
      v35 = v54;
      v41 = *(v54 + 8);
      v41(v40, a10);
      v42 = v49;
      static ViewBuilder.buildExpression<A>(_:)();
      v41(v42, a10);
      (*(v35 + 32))(v28, v50, a10);
      v33 = 0;
      goto LABEL_6;
    }

    (*(v32 + 8))(v21, v19);
  }

  v33 = 1;
  v35 = v54;
  v34 = v55;
LABEL_6:
  (*(v35 + 56))(v28, v33, 1, a10);
  static ToolbarContentBuilder.buildIf<A>(_:)(v28, v31);
  v43 = *(v26 + 8);
  v43(v28, v25);
  v57 = v34;
  swift_getWitnessTable(MEMORY[0x1E6982090], v25, &v57, v45);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v43)(v31, v25);
}

uint64_t View.alert<A, B, C>(_:isPresented:actions:message:auxiliaryContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t (*a8)(uint64_t)@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t (*a11)(uint64_t), uint64_t a12, void (*a13)(uint64_t), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v88 = a8;
  v97 = a7;
  v110 = a6;
  v96 = a5;
  v112 = a2;
  v113 = a4;
  v105 = a3;
  v83 = a1;
  v99 = a9;
  v109 = a22;
  v92 = a13;
  v91 = a12;
  v95 = a21;
  v106 = a20;
  v89 = a11;
  v84 = a10;
  v85 = a17;
  v90 = a14;
  v103 = a15;
  v102 = *(a15 - 8);
  v93 = *(v102 + 64);
  v107 = a19;
  v108 = a18;
  MEMORY[0x1EEE9AC00](a1);
  v86 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v101 = &v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = *(v26 - 8);
  v87 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v104 = &v80 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v82 = &v80 - v30;
  v31 = *(a16 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v80 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for ModifiedContent();
  v35 = *(v100 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v100);
  v81 = &v80 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v37);
  v40 = &v80 - v39;
  MEMORY[0x18D009CE0](v115, v38);
  v105 &= 1u;
  v41 = Text.assertUnstyled(_:options:)();
  v42 = v88(v41);
  MEMORY[0x18D00A570](v42, a16, &unk_1EFFCFD30, v106);
  v43 = (*(v31 + 8))(v34, a16);
  v44 = v82;
  v45 = v89(v43);
  v92(v45);
  v47 = v102;
  v46 = v103;
  v48 = v86;
  (*(v102 + 16))(v86, v94, v103);
  v94 = *(v35 + 32);
  v94(&v80 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0), v40, v100);
  v49 = v111 + 32;
  v92 = *(v111 + 32);
  v50 = v44;
  v51 = v85;
  (v92)(v104, v50, v85);
  v111 = v49;
  v52 = (*(v47 + 80) + 80) & ~*(v47 + 80);
  v53 = v52 + v93;
  v93 = (v52 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = (v53 + 31) & 0xFFFFFFFFFFFFFFF8;
  v55 = (*(v35 + 80) + v54 + 32) & ~*(v35 + 80);
  v56 = (v36 + *(v49 + 48) + v55) & ~*(v49 + 48);
  v57 = swift_allocObject();
  v58 = v46;
  *(v57 + 2) = v46;
  *(v57 + 3) = a16;
  v59 = v51;
  v60 = v107;
  v61 = v108;
  *(v57 + 4) = v51;
  *(v57 + 5) = v61;
  v62 = v106;
  *(v57 + 6) = v60;
  *(v57 + 7) = v62;
  v63 = v95;
  v64 = v109;
  *(v57 + 8) = v95;
  *(v57 + 9) = v64;
  (*(v102 + 32))(&v57[v52], v48, v58);
  v65 = &v57[v93];
  v66 = v110;
  *v65 = v96;
  *(v65 + 1) = v66;
  v65[16] = v97;
  v67 = &v57[v54];
  v68 = v83;
  v69 = v112;
  *v67 = v83;
  *(v67 + 1) = v69;
  v67[16] = v105;
  *(v67 + 3) = v113;
  v70 = v100;
  v94(&v57[v55], v81, v100);
  (v92)(&v57[v56], v104, v59);
  v71 = lazy protocol witness table accessor for type ActionsModifier and conformance ActionsModifier();
  v116[0] = v62;
  v116[1] = v71;
  v72 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v70, v116);
  v115[0] = v70;
  v115[1] = v59;
  v115[2] = WitnessTable;
  v115[3] = v63;
  type metadata accessor for AlertModifier(255, v115);
  v74 = type metadata accessor for ModifiedContent();
  v114[0] = v107;
  v114[1] = &protocol witness table for AlertModifier<A, B>;
  v75 = swift_getWitnessTable(v72, v74, v114);
  v76 = v108;
  v77 = v74;
  v78 = v101;
  View.bindInputs<A>(transform:)(partial apply for closure #1 in View.alert<A, B, C>(_:isPresented:actions:message:auxiliaryContent:), v57, v108, v77, v109, v75, v99);

  outlined copy of Text.Storage(v68, v112, v105);

  return (*(v98 + 8))(v78, v76);
}

uint64_t closure #1 in View.alert<A, B, C>(_:isPresented:actions:message:auxiliaryContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v77 = a8;
  v78 = a7;
  v76 = a6;
  v82 = a5;
  v80 = a2;
  v81 = a9;
  v75 = a10;
  v70 = a11;
  v72 = a12;
  v68 = a13;
  v63 = a19;
  v59 = a15;
  v69 = *(a15 - 8);
  v79 = a17;
  MEMORY[0x1EEE9AC00](a1);
  v65 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for ModifiedContent();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v60 = &v55 - v25;
  v26 = lazy protocol witness table accessor for type ActionsModifier and conformance ActionsModifier();
  v91[0] = a18;
  v91[1] = v26;
  v74 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v23, v91);
  *&v92 = v23;
  *(&v92 + 1) = a15;
  v27 = v23;
  v57 = v23;
  *&v93 = WitnessTable;
  *(&v93 + 1) = a19;
  v66 = type metadata accessor for AlertModifier(0, &v92);
  v71 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v62 = &v55 - v28;
  v29 = type metadata accessor for ModifiedContent();
  v73 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v61 = &v55 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v67 = &v55 - v32;
  v33 = *(a1 + 48);
  v94 = *(a1 + 32);
  v95 = v33;
  v96 = *(a1 + 64);
  v97 = *(a1 + 80);
  v34 = *(a1 + 16);
  v92 = *a1;
  v93 = v34;
  v56 = a3;
  v88 = a3;
  v89 = a4;
  v35 = a4;
  v90 = v82;
  type metadata accessor for Binding<Bool>();
  MEMORY[0x18D00ACC0](&v87);
  v58 = v87;
  v36 = v60;
  (*(v24 + 16))(v60, v70, v27);
  v37 = v65;
  v38 = v59;
  (*(v69 + 16))(v65, v72, v59);
  v85[2] = v94;
  v85[3] = v95;
  v85[4] = v96;
  v86 = v97;
  v85[0] = v92;
  v85[1] = v93;

  v39 = v35;

  LOBYTE(v27) = v77;
  v40 = v76;
  v41 = v78;
  outlined copy of Text.Storage(v76, v78, v77 & 1);
  v42 = v75;

  outlined init with copy of BoundInputsView(&v92, &v84);
  *(&v54 + 1) = v63;
  *(&v53 + 1) = v38;
  *&v54 = WitnessTable;
  *&v53 = v57;
  v52 = v37;
  v43 = v62;
  v44 = AlertModifier.init(presentedValue:isPresented:title:actions:message:auxiliaryContent:representsError:)(v58, v56, v39, v82, v40, v41, v27 & 1, v42, v62, v36, v52, v85, 0, v53, v54);
  v45 = v61;
  v46 = v66;
  v47 = v79;
  MEMORY[0x18D00A570](v43, v68, v66, v79, v44);
  (*(v71 + 8))(v43, v46);
  v83[0] = v47;
  v83[1] = &protocol witness table for AlertModifier<A, B>;
  swift_getWitnessTable(v74, v29, v83);
  v48 = v67;
  v49 = v45;
  static ViewBuilder.buildExpression<A>(_:)();
  v50 = *(v73 + 8);
  v50(v49, v29);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v50)(v48, v29);
}

uint64_t partial apply for closure #1 in View.alert<A, B, C>(_:isPresented:actions:message:auxiliaryContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = *(v2 + 32);
  v15 = *(v2 + 56);
  v16 = *(v2 + 40);
  v8 = (*(*(v6 - 8) + 80) + 80) & ~*(*(v6 - 8) + 80);
  v9 = v8 + *(*(v6 - 8) + 64);
  v10 = (v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + 31) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(type metadata accessor for ModifiedContent() - 8);
  v13 = (v11 + *(v12 + 80) + 32) & ~*(v12 + 80);
  return closure #1 in View.alert<A, B, C>(_:isPresented:actions:message:auxiliaryContent:)(a1, v2 + v8, *(v2 + v10), *(v2 + v10 + 8), *(v2 + v10 + 16), *(v2 + v11), *(v2 + v11 + 8), *(v2 + v11 + 16), a2, *(v2 + v11 + 24), v2 + v13, v2 + ((v13 + *(v12 + 64) + *(*(v7 - 8) + 80)) & ~*(*(v7 - 8) + 80)), v6, v5, v7, v16, *(&v16 + 1), v15, *(&v15 + 1));
}

uint64_t View.alert<A, B, C, D>(_:isPresented:presenting:actions:message:auxiliaryContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v73 = a16;
  v74 = a17;
  v75 = a18;
  v76 = a19;
  v77 = a20;
  v78 = a21;
  v79 = a22;
  v80 = a23;
  v81 = a24;
  v82 = a5;
  v83 = a6;
  v84 = a7;
  v85 = a8;
  v86 = a10;
  v87 = a11;
  v57 = a16;
  v58 = a17;
  v59 = a18;
  v60 = a19;
  v61 = a20;
  v62 = a21;
  v63 = a22;
  v64 = a23;
  v65 = a24;
  v66 = a5;
  v67 = a6;
  v68 = a7;
  v69 = a8;
  v70 = a12;
  v71 = a13;
  v41 = a16;
  v42 = a17;
  v43 = a18;
  v44 = a19;
  v45 = a20;
  v46 = a21;
  v47 = a22;
  v48 = a23;
  v49 = a24;
  v50 = a5;
  v51 = a6;
  v52 = a7;
  v53 = a8;
  v54 = a14;
  v55 = a15;
  v26 = type metadata accessor for Optional();
  v27 = type metadata accessor for Optional();
  v28 = type metadata accessor for Optional();
  v29 = MEMORY[0x1E6982090];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6982090], v26, &a22);
  v31 = swift_getWitnessTable(v29, v27, &a23);
  v32 = swift_getWitnessTable(v29, v28, &a24);
  return View.alert<A, B, C>(_:isPresented:actions:message:auxiliaryContent:)(a1, a2, a3 & 1, a4, a5, a6, a7, partial apply for closure #1 in View.alert<A, B, C, D>(_:isPresented:presenting:actions:message:auxiliaryContent:), a9, v72, partial apply for closure #2 in View.alert<A, B, C, D>(_:isPresented:presenting:actions:message:auxiliaryContent:), v56, partial apply for closure #3 in View.alert<A, B, C, D>(_:isPresented:presenting:actions:message:auxiliaryContent:), v40, a16, v26, v27, v28, a21, WitnessTable, v31, v32);
}

uint64_t closure #1 in View.alert<A, B, C, D>(_:isPresented:presenting:actions:message:auxiliaryContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, void (*a5)(char *)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v46[1] = a6;
  v47 = a5;
  v50 = a4;
  v56 = a8;
  v55 = a13;
  v16 = *(a7 - 8);
  v53 = a2;
  v54 = v16;
  MEMORY[0x1EEE9AC00](a1);
  v48 = v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v46[0] = v46 - v19;
  v20 = type metadata accessor for Optional();
  v49 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v46 - v21;
  v51 = a11;
  v52 = *(a11 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for Optional();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = v46 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = v46 - v31;
  v59 = a1;
  v60 = v53;
  v61 = a3;
  type metadata accessor for Binding<Bool>();
  MEMORY[0x18D00ACC0](&v58);
  if (v58 == 1)
  {
    v33 = v49;
    (*(v49 + 16))(v22, v50, v20);
    if ((*(v52 + 48))(v22, 1, v51) != 1)
    {
      v37 = v52;
      v38 = v22;
      v39 = v51;
      (*(v52 + 32))(v25, v38, v51);
      v40 = v48;
      v47(v25);
      (*(v37 + 8))(v25, v39);
      v53 = v27;
      v41 = v46[0];
      v35 = v55;
      static ViewBuilder.buildExpression<A>(_:)();
      v36 = v54;
      v42 = *(v54 + 8);
      v42(v40, a7);
      static ViewBuilder.buildExpression<A>(_:)();
      v43 = v41;
      v27 = v53;
      v42(v43, a7);
      (*(v36 + 32))(v29, v40, a7);
      v34 = 0;
      goto LABEL_6;
    }

    (*(v33 + 8))(v22, v20);
  }

  v34 = 1;
  v36 = v54;
  v35 = v55;
LABEL_6:
  (*(v36 + 56))(v29, v34, 1, a7);
  static ToolbarContentBuilder.buildIf<A>(_:)(v29, v32);
  v44 = *(v27 + 8);
  v44(v29, v26);
  v57 = v35;
  swift_getWitnessTable(MEMORY[0x1E6982090], v26, &v57);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v44)(v32, v26);
}

uint64_t closure #2 in View.alert<A, B, C, D>(_:isPresented:presenting:actions:message:auxiliaryContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, void (*a5)(char *)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v45[1] = a6;
  v46 = a5;
  v49 = a4;
  v55 = a7;
  v54 = a13;
  v15 = *(a8 - 8);
  v52 = a2;
  v53 = v15;
  MEMORY[0x1EEE9AC00](a1);
  v47 = v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v45[0] = v45 - v18;
  v19 = type metadata accessor for Optional();
  v48 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v45 - v20;
  v50 = a10;
  v51 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Optional();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = v45 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = v45 - v30;
  v58 = a1;
  v59 = v52;
  v60 = a3;
  type metadata accessor for Binding<Bool>();
  MEMORY[0x18D00ACC0](&v57);
  if (v57 == 1)
  {
    v32 = v48;
    (*(v48 + 16))(v21, v49, v19);
    if ((*(v51 + 48))(v21, 1, v50) != 1)
    {
      v36 = v51;
      v37 = v21;
      v38 = v50;
      (*(v51 + 32))(v24, v37, v50);
      v39 = v47;
      v46(v24);
      (*(v36 + 8))(v24, v38);
      v52 = v26;
      v40 = v45[0];
      v34 = v54;
      static ViewBuilder.buildExpression<A>(_:)();
      v35 = v53;
      v41 = *(v53 + 8);
      v41(v39, a8);
      static ViewBuilder.buildExpression<A>(_:)();
      v42 = v40;
      v26 = v52;
      v41(v42, a8);
      (*(v35 + 32))(v28, v39, a8);
      v33 = 0;
      goto LABEL_6;
    }

    (*(v32 + 8))(v21, v19);
  }

  v33 = 1;
  v35 = v53;
  v34 = v54;
LABEL_6:
  (*(v35 + 56))(v28, v33, 1, a8);
  static ToolbarContentBuilder.buildIf<A>(_:)(v28, v31);
  v43 = *(v26 + 8);
  v43(v28, v25);
  v56 = v34;
  swift_getWitnessTable(MEMORY[0x1E6982090], v25, &v56);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v43)(v31, v25);
}

uint64_t closure #3 in View.alert<A, B, C, D>(_:isPresented:presenting:actions:message:auxiliaryContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, void (*a5)(char *)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v42[1] = a6;
  v43 = a5;
  v46 = a4;
  LODWORD(v49) = a3;
  v48 = a2;
  v52 = a7;
  v50 = *(a9 - 8);
  v51 = a14;
  MEMORY[0x1EEE9AC00](a1);
  v44 = v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v42[0] = v42 - v17;
  v18 = type metadata accessor for Optional();
  v45 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v42 - v19;
  v47 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Optional();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = v42 - v29;
  v55 = a1;
  v56 = v48;
  v57 = v49;
  type metadata accessor for Binding<Bool>();
  MEMORY[0x18D00ACC0](&v54);
  if (v54 == 1)
  {
    v31 = v45;
    (*(v45 + 16))(v20, v46, v18);
    if ((*(v47 + 48))(v20, 1, a10) != 1)
    {
      v35 = v47;
      (*(v47 + 32))(v23, v20);
      v36 = v44;
      v43(v23);
      (*(v35 + 8))(v23, a10);
      v49 = v25;
      v37 = v42[0];
      v33 = v51;
      static ViewBuilder.buildExpression<A>(_:)();
      v34 = v50;
      v38 = *(v50 + 8);
      v38(v36, a9);
      static ViewBuilder.buildExpression<A>(_:)();
      v39 = v37;
      v25 = v49;
      v38(v39, a9);
      (*(v34 + 32))(v27, v36, a9);
      v32 = 0;
      goto LABEL_6;
    }

    (*(v31 + 8))(v20, v18);
  }

  v32 = 1;
  v34 = v50;
  v33 = v51;
LABEL_6:
  (*(v34 + 56))(v27, v32, 1, a9);
  static ToolbarContentBuilder.buildIf<A>(_:)(v27, v30);
  v40 = *(v25 + 8);
  v40(v27, v24);
  v53 = v33;
  swift_getWitnessTable(MEMORY[0x1E6982090], v24, &v53);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v40)(v30, v24);
}

uint64_t ActionsModifier.body(content:)@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  v4 = swift_getKeyPath();
  result = swift_getKeyPath();
  *a1 = KeyPath;
  *(a1 + 8) = 0;
  *(a1 + 16) = v3;
  *(a1 + 24) = 0;
  *(a1 + 32) = v4;
  *(a1 + 40) = 0;
  *(a1 + 48) = result;
  *(a1 + 56) = 0;
  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ActionsModifier>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>>, TextFieldStyleModifier<PlatformItemListTextFieldStyle>>, StyleContextWriter<DialogActionStyleContext>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ActionsModifier>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>>, TextFieldStyleModifier<PlatformItemListTextFieldStyle>>, StyleContextWriter<DialogActionStyleContext>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<ActionsModifier>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>>, TextFieldStyleModifier<PlatformItemListTextFieldStyle>>(255);
    type metadata accessor for StyleContextWriter<DialogActionStyleContext>();
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ActionsModifier>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>>, TextFieldStyleModifier<PlatformItemListTextFieldStyle>>, StyleContextWriter<DialogActionStyleContext>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<ActionsModifier>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>>, TextFieldStyleModifier<PlatformItemListTextFieldStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<ActionsModifier>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>>, TextFieldStyleModifier<PlatformItemListTextFieldStyle>>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<ActionsModifier>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>>(255);
    type metadata accessor for _ViewModifier_Content<ActionsModifier>(255, &lazy cache variable for type metadata for TextFieldStyleModifier<PlatformItemListTextFieldStyle>, lazy protocol witness table accessor for type PlatformItemListTextFieldStyle and conformance PlatformItemListTextFieldStyle, &type metadata for PlatformItemListTextFieldStyle, type metadata accessor for TextFieldStyleModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<ActionsModifier>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>>, TextFieldStyleModifier<PlatformItemListTextFieldStyle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<ActionsModifier>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ActionsModifier>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>>)
  {
    type metadata accessor for _ViewModifier_Content<ActionsModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<ActionsModifier>, lazy protocol witness table accessor for type ActionsModifier and conformance ActionsModifier, &unk_1EFFCFD30, MEMORY[0x1E697FDE8]);
    type metadata accessor for _ViewModifier_Content<ActionsModifier>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, lazy protocol witness table accessor for type PlatformItemListButtonStyle and conformance PlatformItemListButtonStyle, &type metadata for PlatformItemListButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ActionsModifier>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>>);
    }
  }
}

void type metadata accessor for _ViewModifier_Content<ActionsModifier>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void type metadata accessor for StyleContextWriter<DialogActionStyleContext>()
{
  if (!lazy cache variable for type metadata for StyleContextWriter<DialogActionStyleContext>)
  {
    v0 = type metadata accessor for StyleContextWriter();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StyleContextWriter<DialogActionStyleContext>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ActionsModifier>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>>, TextFieldStyleModifier<PlatformItemListTextFieldStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ActionsModifier>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>>, TextFieldStyleModifier<PlatformItemListTextFieldStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ActionsModifier>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>>, TextFieldStyleModifier<PlatformItemListTextFieldStyle>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<ActionsModifier>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>>, TextFieldStyleModifier<PlatformItemListTextFieldStyle>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ActionsModifier>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>>, TextFieldStyleModifier<PlatformItemListTextFieldStyle>>, StyleContextWriter<DialogActionStyleContext>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ActionsModifier>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<_ViewModifier_Content<ActionsModifier>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>>, lazy protocol witness table accessor for type _ViewModifier_Content<ActionsModifier> and conformance _ViewModifier_Content<A>, lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>);
    v5[1] = &protocol witness table for TextFieldStyleModifier<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ActionsModifier>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>>, TextFieldStyleModifier<PlatformItemListTextFieldStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ActionsModifier>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>>, TextFieldStyleModifier<PlatformItemListTextFieldStyle>>, StyleContextWriter<DialogActionStyleContext>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<ActionsModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<ActionsModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<ActionsModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for _ViewModifier_Content<ActionsModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<ActionsModifier>, lazy protocol witness table accessor for type ActionsModifier and conformance ActionsModifier, &unk_1EFFCFD30, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable(MEMORY[0x1E697FDF8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<ActionsModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

uint64_t specialized FocusState.projectedValue.getter(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    type metadata accessor for GraphHost();

    if ((static GraphHost.isUpdating.getter() & 1) == 0)
    {
      dispatch thunk of AnyLocation.get()();
    }

    return 0;
  }

  else
  {
    v3 = static os_log_type_t.fault.getter();
    v4 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v3, &dword_18BD4A000, v4, "Accessing FocusState's value outside of the body of a View. This will result in a constant Binding of the initial value and will not update.", 140, 2, MEMORY[0x1E69E7CC0]);

    static Binding.constant(_:)();
    return v5;
  }
}

uint64_t @objc InteropResponder.cut(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v4, 0, sizeof(v4));
  }

  return outlined destroy of CommandAction?(v4, type metadata accessor for Any?);
}

uint64_t protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance ResponderCommandsKey(uint64_t *a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(&v6);
  v3 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *a1;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v3, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v6);

  *a1 = v6;
  return result;
}

uint64_t protocol witness for CommandAction.perform() in conformance StandardCommandAction()
{
  if (*v0)
  {
    return (*v0)();
  }

  return result;
}

void closure #1 in OnCommandModifier.body(content:)(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  if (*(a2 + 56))
  {
    type metadata accessor for GraphHost();

    if (static GraphHost.isUpdating.getter())
    {
      dispatch thunk of AnyLocation.wasRead.setter();

      if ((v4 & 1) == 0)
      {
        return;
      }
    }

    else
    {
      dispatch thunk of AnyLocation.get()();

      if ((v9[0] & 1) == 0)
      {
        return;
      }
    }
  }

  else if (!*(a2 + 48))
  {
    return;
  }

  v5 = *a2;
  v6 = *a1;
  if (*(*a1 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(*a2), (v8 & 1) != 0))
  {
    outlined init with copy of _Benchmark(*(v6 + 56) + 40 * v7, v9);
    outlined destroy of CommandAction?(v9, type metadata accessor for CommandAction?);
  }

  else
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    outlined destroy of CommandAction?(v9, type metadata accessor for CommandAction?);
    outlined init with copy of _Benchmark(a2 + 8, v9);
    specialized Dictionary.subscript.setter(v9, v5);
  }
}

__n128 protocol witness for ViewModifier.body(content:) in conformance OnCommandModifier@<Q0>(uint64_t a1@<X8>)
{
  v3 = specialized FocusState.projectedValue.getter(*(v1 + 48), *(v1 + 56));
  v5 = v4;
  v7 = v6 & 1;
  outlined init with copy of OnCommandModifier(v1, v11);
  v8 = swift_allocObject();
  v9 = v11[3];
  *(v8 + 48) = v11[2];
  *(v8 + 64) = v9;
  *(v8 + 80) = v12;
  result = v11[1];
  *(v8 + 16) = v11[0];
  *(v8 + 32) = result;
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;
  *(a1 + 17) = 1;
  *(a1 + 24) = partial apply for closure #1 in OnCommandModifier.body(content:);
  *(a1 + 32) = v8;
  return result;
}

uint64_t View.onCommand(_:perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[4] = &unk_1EFFCFE30;
  v8[5] = &protocol witness table for StandardCommandAction;
  v8[1] = a2;
  v8[2] = a3;
  v8[0] = a1;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  outlined copy of AppIntentExecutor?(a2, a3);
  MEMORY[0x18D00A570](v8, a4, &type metadata for OnCommandModifier, a5);
  return outlined destroy of OnCommandModifier(v8);
}

void View.onPasteCommand(of:perform:)()
{
  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

{
  View.onPasteCommand(of:perform:)();
}

void View.onPasteCommand<A>(of:validator:perform:)()
{
  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

{
  View.onPasteCommand<A>(of:validator:perform:)();
}

unint64_t lazy protocol witness table accessor for type OnCommandModifier and conformance OnCommandModifier()
{
  result = lazy protocol witness table cache variable for type OnCommandModifier and conformance OnCommandModifier;
  if (!lazy protocol witness table cache variable for type OnCommandModifier and conformance OnCommandModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OnCommandModifier, &type metadata for OnCommandModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type OnCommandModifier and conformance OnCommandModifier);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRz16CoreTransferable0E0Rd__r__lAA15ModifiedContentVyxAA17OnCommandModifier33_1D7D458D08B5AD38421D04B7C887FEF0LLVGAaBHPxAaBHD1__AiA0cJ0HPyHCHCTm(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type OnCommandModifier and conformance OnCommandModifier();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t initializeWithCopy for OnCommandModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 32);
  *(a1 + 32) = v4;
  (**(v4 - 8))(a1 + 8, a2 + 8);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  return a1;
}

uint64_t assignWithCopy for OnCommandModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  __swift_assign_boxed_opaque_existential_1((a1 + 8), (a2 + 8));
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t assignWithTake for OnCommandModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  __swift_destroy_boxed_opaque_existential_1((a1 + 8));
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t getEnumTagSinglePayload for OnCommandModifier(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for OnCommandModifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for CommandAction?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CommandAction?)
  {
    type metadata accessor for CommandAction();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for CommandAction?);
    }
  }
}

unint64_t type metadata accessor for CommandAction()
{
  result = lazy cache variable for type metadata for CommandAction;
  if (!lazy cache variable for type metadata for CommandAction)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CommandAction);
  }

  return result;
}

uint64_t outlined destroy of CommandAction?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<OnCommandModifier>, FocusStateBindingModifier<Bool>>, _PreferenceTransformModifier<ResponderCommandsKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<OnCommandModifier>, FocusStateBindingModifier<Bool>>, _PreferenceTransformModifier<ResponderCommandsKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<OnCommandModifier>, FocusStateBindingModifier<Bool>>, _PreferenceTransformModifier<ResponderCommandsKey>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<OnCommandModifier>, FocusStateBindingModifier<Bool>>, _PreferenceTransformModifier<ResponderCommandsKey>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<OnCommandModifier>, FocusStateBindingModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type _PreferenceTransformModifier<ResponderCommandsKey> and conformance _PreferenceTransformModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<OnCommandModifier>, FocusStateBindingModifier<Bool>>, _PreferenceTransformModifier<ResponderCommandsKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<OnCommandModifier>, FocusStateBindingModifier<Bool>>, _PreferenceTransformModifier<ResponderCommandsKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<OnCommandModifier>, FocusStateBindingModifier<Bool>>, _PreferenceTransformModifier<ResponderCommandsKey>>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<OnCommandModifier>, FocusStateBindingModifier<Bool>>(255);
    _s7SwiftUI25FocusStateBindingModifier33_274D264A38B51DC68ACC48A91353B7D0LLVySbGMaTm_0(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<ResponderCommandsKey>, &type metadata for ResponderCommandsKey, &protocol witness table for ResponderCommandsKey, MEMORY[0x1E6980910]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<OnCommandModifier>, FocusStateBindingModifier<Bool>>, _PreferenceTransformModifier<ResponderCommandsKey>>);
    }
  }
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<OnCommandModifier>, FocusStateBindingModifier<Bool>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<OnCommandModifier>, FocusStateBindingModifier<Bool>>)
  {
    type metadata accessor for _ViewModifier_Content<OnCommandModifier>(255);
    _s7SwiftUI25FocusStateBindingModifier33_274D264A38B51DC68ACC48A91353B7D0LLVySbGMaTm_0(255, &lazy cache variable for type metadata for FocusStateBindingModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6380], type metadata accessor for FocusStateBindingModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<OnCommandModifier>, FocusStateBindingModifier<Bool>>);
    }
  }
}

void type metadata accessor for _ViewModifier_Content<OnCommandModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<OnCommandModifier>)
  {
    lazy protocol witness table accessor for type OnCommandModifier and conformance OnCommandModifier();
    v1 = type metadata accessor for _ViewModifier_Content();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ViewModifier_Content<OnCommandModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<OnCommandModifier>, FocusStateBindingModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<OnCommandModifier>, FocusStateBindingModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<OnCommandModifier>, FocusStateBindingModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<_ViewModifier_Content<OnCommandModifier>, FocusStateBindingModifier<Bool>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _ViewModifier_Content<OnCommandModifier> and conformance _ViewModifier_Content<A>();
    v5[1] = &protocol witness table for FocusStateBindingModifier<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<OnCommandModifier>, FocusStateBindingModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<OnCommandModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<OnCommandModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<OnCommandModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for _ViewModifier_Content<OnCommandModifier>(255);
    result = swift_getWitnessTable(MEMORY[0x1E697FDF8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<OnCommandModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _PreferenceTransformModifier<ResponderCommandsKey> and conformance _PreferenceTransformModifier<A>()
{
  result = lazy protocol witness table cache variable for type _PreferenceTransformModifier<ResponderCommandsKey> and conformance _PreferenceTransformModifier<A>;
  if (!lazy protocol witness table cache variable for type _PreferenceTransformModifier<ResponderCommandsKey> and conformance _PreferenceTransformModifier<A>)
  {
    _s7SwiftUI25FocusStateBindingModifier33_274D264A38B51DC68ACC48A91353B7D0LLVySbGMaTm_0(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<ResponderCommandsKey>, &type metadata for ResponderCommandsKey, &protocol witness table for ResponderCommandsKey, MEMORY[0x1E6980910]);
    result = swift_getWitnessTable(MEMORY[0x1E6980918], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _PreferenceTransformModifier<ResponderCommandsKey> and conformance _PreferenceTransformModifier<A>);
  }

  return result;
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = outlined init with copy of _Benchmark((a1 + 1), (a2 + 1));
  *a2 = v3;
  return result;
}

{
  v3 = *a1;
  result = outlined init with copy of NavigationDestinationPresentation((a1 + 1), (a2 + 1));
  *a2 = v3;
  return result;
}

uint64_t SearchSuggestionsModifier.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v28 = a2;
  swift_getWitnessTable(protocol conformance descriptor for SearchSuggestionsModifier<A>);
  v5 = type metadata accessor for _ViewModifier_Content();
  v6 = *(a1 + 16);
  v25 = lazy protocol witness table accessor for type EnvironmentValues.SearchSuggestions and conformance EnvironmentValues.SearchSuggestions();
  v7 = *(a1 + 24);
  v35[0] = &type metadata for EnvironmentValues.SearchSuggestions;
  v35[1] = v6;
  v35[2] = v25;
  v35[3] = v7;
  type metadata accessor for StaticSourceWriter(255, v35);
  v8 = type metadata accessor for ModifiedContent();
  v27 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  v26 = lazy protocol witness table accessor for type SearchHasSuggestions and conformance SearchHasSuggestions;
  type metadata accessor for ViewInputFlagModifier<SearchHasSuggestions>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<SearchHasSuggestions>, lazy protocol witness table accessor for type SearchHasSuggestions and conformance SearchHasSuggestions, &type metadata for SearchHasSuggestions);
  v11 = type metadata accessor for ModifiedContent();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v25 - v17;
  v30 = v6;
  v31 = v7;
  v32 = v3;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697FDF8], v5, v16, v25);
  View.viewAlias<A, B>(_:_:)(&type metadata for EnvironmentValues.SearchSuggestions, partial apply for closure #1 in SearchSuggestionsModifier.body(content:), v29, v5, &type metadata for EnvironmentValues.SearchSuggestions, v6, WitnessTable);
  v34[0] = WitnessTable;
  v34[1] = &protocol witness table for StaticSourceWriter<A, B>;
  v20 = MEMORY[0x1E697E858];
  v21 = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v34);
  lazy protocol witness table accessor for type SearchHasSuggestions and conformance SearchHasSuggestions();
  View.input<A>(_:)();
  (*(v27 + 8))(v10, v8);
  HasCustom = lazy protocol witness table accessor for type ViewInputFlagModifier<HasCustomAccessory> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type ViewInputFlagModifier<SearchHasSuggestions> and conformance ViewInputFlagModifier<A>, &lazy cache variable for type metadata for ViewInputFlagModifier<SearchHasSuggestions>, v26, &type metadata for SearchHasSuggestions);
  v33[0] = v21;
  v33[1] = HasCustom;
  swift_getWitnessTable(v20, v11, v33);
  static ViewBuilder.buildExpression<A>(_:)();
  v23 = *(v12 + 8);
  v23(v14, v11);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v23)(v18, v11);
}

uint64_t closure #1 in SearchSuggestionsModifier.body(content:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v3 + 8))(v5, a2);
}

uint64_t View.searchSuggestions<A>(_:)(void (*a1)(double), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a5;
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SearchSuggestionsModifier(0, v11, v12, v11);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v19 - v16;
  a1(v15);
  (*(v8 + 32))(v17, v10, a4);
  MEMORY[0x18D00A570](v17, a3, v13, v19);
  return (*(v14 + 8))(v17, v13);
}

uint64_t View.searchable<A>(text:placement:prompt:suggestions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X5>, unsigned __int8 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v119 = a5;
  v117 = a3;
  v109 = a9;
  _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_2(0, &lazy cache variable for type metadata for Binding<TextSelection?>?, type metadata accessor for Binding<TextSelection?>, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v104 = &v86 - v23;
  v97 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v97);
  v115 = &v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v25 - 8);
  type metadata accessor for Binding<AttributedString>(0);
  MEMORY[0x1EEE9AC00](v26);
  v116 = &v86 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v112 = (&v86 - v29);
  type metadata accessor for SearchModifier<TextField<EmptyView>>(0, v30, v31, v32);
  MEMORY[0x1EEE9AC00](v33);
  v113 = &v86 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = a13;
  v114 = v35;
  v107 = type metadata accessor for ModifiedContent();
  v106 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v105 = &v86 - v36;
  v98 = *v119;

  if (a10)
  {
    v111 = a6;
    v118 = a10;
    v119 = a7;
    v37 = a2;
    v38 = a8;
  }

  else
  {
    v111 = static Text.System.search.getter();
    v118 = v40;
    v119 = v39;
    v37 = a2;
    v38 = v41;
  }

  v90 = v38;
  v91 = v37;
  v110 = a1;
  v92 = a4;
  v93 = a6;
  v94 = a7;
  v95 = a10;
  v96 = a8;
  v103 = a16;
  v101 = a15;
  v102 = a14;
  v100 = a12;
  v99 = a11;
  outlined copy of Text?(a6, a7, a8, a10);

  outlined copy of Text?(a6, a7, a8, a10);
  AttributeContainer.init()();
  v42 = v112;
  AttributedString.init(_:attributes:)();
  lazy protocol witness table accessor for type StringToAttributedStringProjection and conformance StringToAttributedStringProjection();
  v43 = dispatch thunk of AnyLocation.projecting<A>(_:)();
  *v42 = a1;
  v42[1] = v43;
  outlined init with copy of Binding<AttributedString>(v42, v116, type metadata accessor for Binding<AttributedString>);
  v44 = v114;
  v45 = &v113[v114[12]];
  *v45 = 0;
  *(v45 + 1) = 0;
  *(v45 + 8) = 0;
  v46 = v115;
  *v115 = 2;

  v47 = v38 & 1;
  outlined copy of Text.Storage(v111, v119, v38 & 1);
  v46[1] = specialized static SearchSuggestionsPlacement.Role.initial.getter() & 1;
  *(v46 + 1) = 2;
  *(v46 + 1) = 0;
  v46[8] = 1;
  v48 = v97;
  AttributedString.init()();
  v46[*(v48 + 40)] = 0;
  v49 = *(v48 + 44);
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v50 = &v46[v49];
  v51 = byte_1EAB095CC;
  *v50 = static SearchFocusUpdate.empty;
  v50[4] = v51;
  v52 = v118;

  v53 = v111;
  v54 = v119;
  v55 = outlined copy of Text.Storage(v111, v119, v47);
  MEMORY[0x18D009CE0](v122, v55);
  Text.assertUnstyled(_:options:)();
  outlined consume of Text.Storage(v53, v54, v47);

  v56 = v113;
  *(v113 + 1) = v53;
  *(v56 + 16) = v54;
  *(v56 + 24) = v47;
  v89 = v47;
  *(v56 + 32) = v52;
  v118 = v52;
  outlined init with copy of Binding<AttributedString>(v116, v56 + v44[11], type metadata accessor for Binding<AttributedString>);
  v57 = v56 + v44[13];
  outlined init with copy of Binding<AttributedString>(v46, v57, type metadata accessor for SearchFieldState);
  _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_2(0, &lazy cache variable for type metadata for State<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981790]);
  *(v57 + *(v58 + 28)) = 0;
  v59 = v56 + v44[10];
  v97 = v90 & 1;
  v123 = 1;
  v60 = v91;
  v122[0] = v110;
  v122[1] = v91;
  v61 = v92;
  v122[2] = v117;
  v122[3] = v92;

  outlined copy of Text.Storage(v53, v119, v47);
  type metadata accessor for Binding<String>();
  MEMORY[0x18D00ACC0](v121);
  v88 = v121[0];
  v87 = v121[1];
  LODWORD(v90) = v123;
  type metadata accessor for Binding<TextSelection?>(0);
  v63 = v62;
  v64 = *(*(v62 - 8) + 56);
  v65 = v104;
  v64(v104, 1, 1, v62);
  type metadata accessor for TextField<EmptyView>(0, &lazy cache variable for type metadata for TextField<EmptyView>, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], type metadata accessor for TextField);
  v67 = *(v66 + 56);
  v64((v59 + v67), 1, 1, v63);
  LOBYTE(v122[0]) = 0;
  v68 = v87;
  *(v59 + 72) = v88;
  *(v59 + 80) = v68;
  *(v59 + 88) = 0u;
  *(v59 + 104) = 0u;
  *(v59 + 120) = 0u;
  *(v59 + 136) = 0u;
  *(v59 + 152) = 0;
  *(v59 + 156) = 0;
  *(v59 + 160) = v90;
  *(v59 + 161) = 2;
  *(v59 + 163) = 0;
  *(v59 + 168) = 0;
  *(v59 + 180) = 0;
  *v59 = v110;
  *(v59 + 8) = v60;
  v69 = v118;
  *(v59 + 16) = v117;
  *(v59 + 24) = v61;
  *(v59 + 32) = 0;
  v70 = v119;
  *(v59 + 40) = v53;
  *(v59 + 48) = v70;
  *(v59 + 56) = v97;
  *(v59 + 64) = v69;
  outlined assign with take of Binding<TextSelection?>?(v65, v59 + v67);

  *v56 = v98;
  outlined consume of Text.Storage(v53, v70, v89);

  outlined consume of Text?(v93, v94, v96, v95);
  _s7SwiftUI16SearchFieldStateVWOhTm_2(v115, type metadata accessor for SearchFieldState);
  _s7SwiftUI16SearchFieldStateVWOhTm_2(v116, type metadata accessor for Binding<AttributedString>);
  _s7SwiftUI16SearchFieldStateVWOhTm_2(v112, type metadata accessor for Binding<AttributedString>);
  v71 = v105;
  v72 = v108;
  v73 = v101;
  MEMORY[0x18D00A570](v56, v108, v114, v101);
  v74 = _s7SwiftUI16SearchFieldStateVWOhTm_2(v56, type metadata accessor for SearchModifier<TextField<EmptyView>>);
  MEMORY[0x1EEE9AC00](v74);
  v75 = v102;
  *(&v86 - 6) = v72;
  *(&v86 - 5) = v75;
  v76 = v103;
  *(&v86 - 4) = v73;
  *(&v86 - 3) = v76;
  v77 = v100;
  *(&v86 - 2) = v99;
  *(&v86 - 1) = v77;
  v82 = lazy protocol witness table accessor for type SearchModifier<TextField<EmptyView>> and conformance SearchModifier<A>(v78, v79, v80, v81);
  v120[0] = v73;
  v120[1] = v82;
  v83 = v107;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v107, v120);
  View.searchSuggestions<A>(_:)(partial apply for closure #1 in View.searchable<A>(text:placement:prompt:suggestions:), (&v86 - 8), v83, v75, WitnessTable);
  return (*(v106 + 8))(v71, v83);
}

uint64_t View.searchable<A>(text:placement:prompt:suggestions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  LODWORD(v100) = a8;
  v97 = a7;
  v99 = a6;
  v98 = a5;
  v115 = a1;
  v116 = a3;
  v113 = a2;
  v109 = a9;
  v110 = a14;
  v111 = a16;
  v107 = a12;
  v108 = a15;
  v106 = a11;
  _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_2(0, &lazy cache variable for type metadata for Binding<TextSelection?>?, type metadata accessor for Binding<TextSelection?>, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v101 = &v89 - v18;
  v96 = type metadata accessor for SearchFieldState(0) - 8;
  MEMORY[0x1EEE9AC00](v96);
  v20 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v21 - 8);
  v93 = &v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Binding<AttributedString>(0);
  MEMORY[0x1EEE9AC00](v23);
  v114 = &v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = (&v89 - v26);
  type metadata accessor for SearchModifier<TextField<EmptyView>>(0, v28, v29, v30);
  v32 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v112 = &v89 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = a13;
  v104 = type metadata accessor for ModifiedContent();
  v103 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v102 = &v89 - v34;
  LODWORD(v98) = *v98;

  LOWORD(v88) = 256;
  v87 = 0;
  v35 = Text.init(_:tableName:bundle:comment:)();
  v37 = v36;
  v39 = v38;
  v41 = v40;

  v95 = v39;
  v42 = v39 & 1;
  outlined copy of Text.Storage(v35, v37, v42);

  AttributeContainer.init()();
  v99 = a4;
  AttributedString.init(_:attributes:)();
  lazy protocol witness table accessor for type StringToAttributedStringProjection and conformance StringToAttributedStringProjection();
  v43 = dispatch thunk of AnyLocation.projecting<A>(_:)();
  *v27 = v115;
  v27[1] = v43;
  v100 = v27;
  v44 = v112;
  outlined init with copy of Binding<AttributedString>(v27, v114, type metadata accessor for Binding<AttributedString>);
  v45 = &v44[v32[12]];
  *v45 = 0;
  *(v45 + 1) = 0;
  *(v45 + 8) = 0;
  *v20 = 2;

  v97 = v35;
  v46 = v37;
  outlined copy of Text.Storage(v35, v37, v42);
  v20[1] = specialized static SearchSuggestionsPlacement.Role.initial.getter() & 1;
  *(v20 + 1) = 2;
  *(v20 + 1) = 0;
  v20[8] = 1;
  v47 = v96;
  AttributedString.init()();
  v20[*(v47 + 48)] = 0;
  v48 = *(v47 + 52);
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v49 = &v20[v48];
  v50 = byte_1EAB095CC;
  *v49 = static SearchFocusUpdate.empty;
  v49[4] = v50;

  v51 = v97;
  v52 = outlined copy of Text.Storage(v97, v37, v42);
  MEMORY[0x18D009CE0](v119, v52);
  Text.assertUnstyled(_:options:)();
  outlined consume of Text.Storage(v51, v37, v42);

  *(v44 + 1) = v51;
  *(v44 + 2) = v37;
  v44[24] = v42;
  *(v44 + 4) = v41;
  v53 = &v44[v32[11]];
  v91 = v41;
  outlined init with copy of Binding<AttributedString>(v114, v53, type metadata accessor for Binding<AttributedString>);
  v54 = v32[13];
  v94 = v32;
  v55 = &v44[v54];
  outlined init with copy of Binding<AttributedString>(v20, &v44[v54], type metadata accessor for SearchFieldState);
  _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_2(0, &lazy cache variable for type metadata for State<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981790]);
  *&v55[*(v56 + 28)] = 0;
  v57 = v32[10];
  v92 = v42;
  v58 = &v44[v57];
  v96 = v95 & 1;
  v120 = 1;
  v59 = v113;
  v119[0] = v115;
  v119[1] = v113;
  v60 = v99;
  v119[2] = v116;
  v119[3] = v99;

  outlined copy of Text.Storage(v51, v46, v42);
  type metadata accessor for Binding<String>();
  MEMORY[0x18D00ACC0](v118);
  v90 = v118[0];
  v89 = v118[1];
  LODWORD(v93) = v120;
  type metadata accessor for Binding<TextSelection?>(0);
  v62 = v61;
  v63 = *(*(v61 - 8) + 56);
  v64 = v101;
  v63(v101, 1, 1, v61);
  type metadata accessor for TextField<EmptyView>(0, &lazy cache variable for type metadata for TextField<EmptyView>, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], type metadata accessor for TextField);
  v95 = v20;
  v66 = *(v65 + 56);
  v63(&v58[v66], 1, 1, v62);
  LOBYTE(v119[0]) = 0;
  v67 = v89;
  *(v58 + 9) = v90;
  *(v58 + 10) = v67;
  *(v58 + 88) = 0u;
  *(v58 + 104) = 0u;
  *(v58 + 120) = 0u;
  *(v58 + 136) = 0u;
  v58[152] = 0;
  *(v58 + 39) = 0;
  v58[160] = v93;
  *(v58 + 161) = 2;
  v58[163] = 0;
  *(v58 + 21) = 0;
  v58[180] = 0;
  v68 = v116;
  *v58 = v115;
  *(v58 + 1) = v59;
  *(v58 + 2) = v68;
  *(v58 + 3) = v60;
  *(v58 + 16) = 0;
  *(v58 + 5) = v51;
  *(v58 + 6) = v46;
  v69 = v91;
  *(v58 + 7) = v96;
  *(v58 + 8) = v69;
  outlined assign with take of Binding<TextSelection?>?(v64, &v58[v66]);

  v70 = v112;
  *v112 = v98;
  LOBYTE(v60) = v92;
  outlined consume of Text.Storage(v51, v46, v92);

  outlined consume of Text.Storage(v51, v46, v60);

  _s7SwiftUI16SearchFieldStateVWOhTm_2(v95, type metadata accessor for SearchFieldState);
  _s7SwiftUI16SearchFieldStateVWOhTm_2(v114, type metadata accessor for Binding<AttributedString>);
  _s7SwiftUI16SearchFieldStateVWOhTm_2(v100, type metadata accessor for Binding<AttributedString>);
  v71 = v102;
  v72 = v105;
  v73 = v108;
  MEMORY[0x18D00A570](v70, v105, v94, v108);
  v74 = _s7SwiftUI16SearchFieldStateVWOhTm_2(v70, type metadata accessor for SearchModifier<TextField<EmptyView>>);
  MEMORY[0x1EEE9AC00](v74);
  *(&v89 - 6) = v72;
  v76 = v110;
  v75 = v111;
  *(&v89 - 5) = v110;
  *(&v89 - 4) = v73;
  v78 = v106;
  v77 = v107;
  *(&v89 - 3) = v75;
  v87 = v78;
  v88 = v77;
  v83 = lazy protocol witness table accessor for type SearchModifier<TextField<EmptyView>> and conformance SearchModifier<A>(v79, v80, v81, v82);
  v117[0] = v73;
  v117[1] = v83;
  v84 = v104;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v104, v117);
  View.searchSuggestions<A>(_:)(partial apply for closure #1 in View.searchable<A>(text:placement:prompt:suggestions:), (&v89 - 8), v84, v76, WitnessTable);
  return (*(v103 + 8))(v71, v84);
}

uint64_t closure #1 in View.searchable<A>(text:placement:prompt:suggestions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - v10;
  v12(v9);
  static ViewBuilder.buildExpression<A>(_:)();
  v13 = *(v5 + 8);
  v13(v7, a4);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v13)(v11, a4);
}

uint64_t View.searchable<A, B>(text:placement:prompt:suggestions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v110 = a8;
  v109 = a7;
  v117 = a6;
  v120 = a1;
  v121 = a3;
  v112 = a9;
  v119 = a15;
  v113 = a14;
  v114 = a5;
  v108 = a13;
  v111 = a11;
  _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_2(0, &lazy cache variable for type metadata for Binding<TextSelection?>?, type metadata accessor for Binding<TextSelection?>, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v103 = &v94 - v18;
  v98 = type metadata accessor for SearchFieldState(0) - 8;
  MEMORY[0x1EEE9AC00](v98);
  v20 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v21 - 8);
  v101 = (&v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for Binding<AttributedString>(0);
  v99 = v23 - 8;
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = (&v94 - v27);
  v29 = *(a12 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v94 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SearchModifier<TextField<EmptyView>>(0, v33, v34, v35);
  v116 = v36;
  MEMORY[0x1EEE9AC00](v36);
  v115 = &v94 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = a10;
  v105 = type metadata accessor for ModifiedContent();
  v104 = *(v105 - 8);
  v38 = MEMORY[0x1EEE9AC00](v105);
  v102 = &v94 - v39;
  v100 = *v114;
  (*(v29 + 16))(v32, v117, a12, v38);
  v40 = v25;

  v107 = a12;
  v41 = a2;
  v42 = Text.init<A>(_:)();
  v44 = v43;
  v46 = v45;
  v48 = v47;

  v97 = v46;
  LODWORD(v114) = v46 & 1;
  outlined copy of Text.Storage(v42, v44, v46 & 1);

  AttributeContainer.init()();
  v49 = v120;
  v99 = a4;
  AttributedString.init(_:attributes:)();
  lazy protocol witness table accessor for type StringToAttributedStringProjection and conformance StringToAttributedStringProjection();
  v118 = v41;
  v50 = dispatch thunk of AnyLocation.projecting<A>(_:)();
  *v28 = v49;
  v28[1] = v50;
  v101 = v28;
  v117 = v40;
  v51 = v40;
  v53 = v115;
  v52 = v116;
  outlined init with copy of Binding<AttributedString>(v28, v51, type metadata accessor for Binding<AttributedString>);
  v54 = &v53[v52[12]];
  *v54 = 0;
  *(v54 + 1) = 0;
  *(v54 + 8) = 0;
  *v20 = 2;

  v55 = v48;

  v56 = v44;
  v57 = v44;
  v58 = v114;
  outlined copy of Text.Storage(v42, v57, v114);
  v20[1] = specialized static SearchSuggestionsPlacement.Role.initial.getter() & 1;
  *(v20 + 1) = 2;
  *(v20 + 1) = 0;
  v20[8] = 1;
  v59 = v98;
  AttributedString.init()();
  v20[*(v59 + 48)] = 0;
  v60 = *(v59 + 52);
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v96 = v20;
  v61 = &v20[v60];
  v62 = byte_1EAB095CC;
  *v61 = static SearchFocusUpdate.empty;
  v61[4] = v62;

  v63 = outlined copy of Text.Storage(v42, v56, v58);
  MEMORY[0x18D009CE0](v124, v63);
  Text.assertUnstyled(_:options:)();
  outlined consume of Text.Storage(v42, v56, v58);

  *(v53 + 1) = v42;
  *(v53 + 2) = v56;
  v53[24] = v58;
  *(v53 + 4) = v55;
  outlined init with copy of Binding<AttributedString>(v117, &v53[v52[11]], type metadata accessor for Binding<AttributedString>);
  v64 = &v53[v52[13]];
  outlined init with copy of Binding<AttributedString>(v20, v64, type metadata accessor for SearchFieldState);
  _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_2(0, &lazy cache variable for type metadata for State<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981790]);
  *(v64 + *(v65 + 28)) = 0;
  v66 = &v53[v52[10]];
  v98 = v97 & 1;
  v125 = 1;
  v124[0] = v120;
  v124[1] = v118;
  v67 = v99;
  v124[2] = v121;
  v124[3] = v99;

  outlined copy of Text.Storage(v42, v56, v58);
  type metadata accessor for Binding<String>();
  MEMORY[0x18D00ACC0](v123);
  v95 = v123[0];
  v94 = v123[1];
  LODWORD(v97) = v125;
  type metadata accessor for Binding<TextSelection?>(0);
  v69 = v68;
  v70 = *(*(v68 - 8) + 56);
  v71 = v103;
  v70(v103, 1, 1, v68);
  type metadata accessor for TextField<EmptyView>(0, &lazy cache variable for type metadata for TextField<EmptyView>, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], type metadata accessor for TextField);
  v73 = *(v72 + 56);
  v70(&v66[v73], 1, 1, v69);
  LOBYTE(v124[0]) = 0;
  v74 = v94;
  *(v66 + 9) = v95;
  *(v66 + 10) = v74;
  *(v66 + 88) = 0u;
  *(v66 + 104) = 0u;
  *(v66 + 120) = 0u;
  *(v66 + 136) = 0u;
  v66[152] = 0;
  *(v66 + 39) = 0;
  v66[160] = v97;
  *(v66 + 161) = 2;
  v66[163] = 0;
  *(v66 + 21) = 0;
  v66[180] = 0;
  v75 = v121;
  v76 = v118;
  *v66 = v120;
  *(v66 + 1) = v76;
  *(v66 + 2) = v75;
  *(v66 + 3) = v67;
  *(v66 + 16) = 0;
  *(v66 + 5) = v42;
  *(v66 + 6) = v56;
  *(v66 + 7) = v98;
  *(v66 + 8) = v55;
  outlined assign with take of Binding<TextSelection?>?(v71, &v66[v73]);

  v77 = v115;
  *v115 = v100;
  LOBYTE(v76) = v114;
  outlined consume of Text.Storage(v42, v56, v114);

  outlined consume of Text.Storage(v42, v56, v76);

  _s7SwiftUI16SearchFieldStateVWOhTm_2(v96, type metadata accessor for SearchFieldState);
  _s7SwiftUI16SearchFieldStateVWOhTm_2(v117, type metadata accessor for Binding<AttributedString>);
  _s7SwiftUI16SearchFieldStateVWOhTm_2(v101, type metadata accessor for Binding<AttributedString>);
  v78 = v102;
  v79 = v106;
  v80 = v108;
  MEMORY[0x18D00A570](v77, v106, v116, v108);
  v81 = _s7SwiftUI16SearchFieldStateVWOhTm_2(v77, type metadata accessor for SearchModifier<TextField<EmptyView>>);
  MEMORY[0x1EEE9AC00](v81);
  *(&v94 - 8) = v79;
  v82 = v111;
  v83 = v107;
  *(&v94 - 7) = v111;
  *(&v94 - 6) = v83;
  v84 = v113;
  *(&v94 - 5) = v80;
  *(&v94 - 4) = v84;
  v85 = v109;
  *(&v94 - 3) = v119;
  *(&v94 - 2) = v85;
  *(&v94 - 1) = v110;
  v90 = lazy protocol witness table accessor for type SearchModifier<TextField<EmptyView>> and conformance SearchModifier<A>(v86, v87, v88, v89);
  v122[0] = v80;
  v122[1] = v90;
  v91 = v105;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v105, v122);
  View.searchSuggestions<A>(_:)(partial apply for closure #1 in View.searchable<A, B>(text:placement:prompt:suggestions:), (&v94 - 10), v91, v82, WitnessTable);
  return (*(v104 + 8))(v78, v91);
}

uint64_t closure #1 in View.searchable<A, B>(text:placement:prompt:suggestions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - v10;
  v12(v9);
  static ViewBuilder.buildExpression<A>(_:)();
  v13 = *(v5 + 8);
  v13(v7, a4);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v13)(v11, a4);
}

uint64_t SearchCustomAccessoryModifier.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v28 = a2;
  swift_getWitnessTable(protocol conformance descriptor for SearchCustomAccessoryModifier<A>);
  v5 = type metadata accessor for _ViewModifier_Content();
  v6 = *(a1 + 16);
  v25 = lazy protocol witness table accessor for type EnvironmentValues.SearchCustomAccessory and conformance EnvironmentValues.SearchCustomAccessory();
  v7 = *(a1 + 24);
  v35[0] = &type metadata for EnvironmentValues.SearchCustomAccessory;
  v35[1] = v6;
  v35[2] = v25;
  v35[3] = v7;
  type metadata accessor for OptionalSourceWriter(255, v35);
  v8 = type metadata accessor for ModifiedContent();
  v27 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  v26 = lazy protocol witness table accessor for type HasCustomAccessory and conformance HasCustomAccessory;
  type metadata accessor for ViewInputFlagModifier<SearchHasSuggestions>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<HasCustomAccessory>, lazy protocol witness table accessor for type HasCustomAccessory and conformance HasCustomAccessory, &unk_1EFFCFFE0);
  v11 = type metadata accessor for ModifiedContent();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v25 - v17;
  v30 = v6;
  v31 = v7;
  v32 = v3;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697FDF8], v5, v16);
  View.optionalViewAlias<A, B>(_:_:)(&type metadata for EnvironmentValues.SearchCustomAccessory, partial apply for closure #1 in SearchCustomAccessoryModifier.body(content:), v29, v5, &type metadata for EnvironmentValues.SearchCustomAccessory, v6, WitnessTable, v25, v7);
  v34[0] = WitnessTable;
  v34[1] = &protocol witness table for OptionalSourceWriter<A, B>;
  v20 = MEMORY[0x1E697E858];
  v21 = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v34);
  lazy protocol witness table accessor for type HasCustomAccessory and conformance HasCustomAccessory();
  View.input<A>(_:)();
  (*(v27 + 8))(v10, v8);
  HasCustom = lazy protocol witness table accessor for type ViewInputFlagModifier<HasCustomAccessory> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type ViewInputFlagModifier<HasCustomAccessory> and conformance ViewInputFlagModifier<A>, &lazy cache variable for type metadata for ViewInputFlagModifier<HasCustomAccessory>, v26, &unk_1EFFCFFE0);
  v33[0] = v21;
  v33[1] = HasCustom;
  swift_getWitnessTable(v20, v11, v33);
  static ViewBuilder.buildExpression<A>(_:)();
  v23 = *(v12 + 8);
  v23(v14, v11);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v23)(v18, v11);
}

uint64_t closure #1 in SearchCustomAccessoryModifier.body(content:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  if (*a1 == 1)
  {
    v8 = *(type metadata accessor for SearchCustomAccessoryModifier(0, a2, a3, a5) + 36);
    v13 = *(a2 - 8);
    (*(v13 + 16))(a4, &a1[v8], a2);
    v9 = v13;
    v10 = 0;
  }

  else
  {
    v9 = *(a2 - 8);
    v10 = 1;
  }

  v11 = *(v9 + 56);

  return v11(a4, v10, 1, a2);
}

uint64_t View.customSearchAccessory<A>(isActive:accessory:)(uint64_t a1, void (*a2)(double), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a6;
  v22 = a4;
  v8 = a1;
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SearchCustomAccessoryModifier(0, v13, v14, v12);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v21 - v18;
  a2(v17);
  *v19 = v8;
  (*(v9 + 32))(&v19[*(v15 + 36)], v11, a5);
  MEMORY[0x18D00A570](v19, v22, v15, v23);
  return (*(v16 + 8))(v19, v15);
}

unint64_t lazy protocol witness table accessor for type SearchModifier<TextField<EmptyView>> and conformance SearchModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = lazy protocol witness table cache variable for type SearchModifier<TextField<EmptyView>> and conformance SearchModifier<A>;
  if (!lazy protocol witness table cache variable for type SearchModifier<TextField<EmptyView>> and conformance SearchModifier<A>)
  {
    type metadata accessor for SearchModifier<TextField<EmptyView>>(255, a2, a3, a4);
    result = swift_getWitnessTable(protocol conformance descriptor for SearchModifier<A>, v7, v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type SearchModifier<TextField<EmptyView>> and conformance SearchModifier<A>);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzAaBRd__r__lAA15ModifiedContentVyxAA25SearchSuggestionsModifierVyqd__GGAaBHPxAaBHD1__AgA0cH0HPyHCHCTm(void *a1, uint64_t (*a2)(uint64_t, void, void), const char *a3)
{
  v4 = a1[2];
  v5 = a2(255, a1[1], a1[3]);
  v6 = type metadata accessor for ModifiedContent();
  v8[0] = v4;
  v8[1] = swift_getWitnessTable(a3, v5);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v6, v8);
}

uint64_t type metadata completion function for SearchCustomAccessoryModifier(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void AVKitCaptureButtonBridge.attachInteraction()()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v5 = ViewGraphDelegate.uiView.getter(ObjectType, *(*(v3 + 16) + 8));
    swift_unknownObjectRelease();
    if (v5)
    {
      v6 = [objc_opt_self() _cameraShutterConfigurationsWithOptionsProvider_];
      type metadata accessor for _UIPhysicalButtonConfiguration();
      lazy protocol witness table accessor for type _UIPhysicalButtonConfiguration and conformance NSObject();
      static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v7 = objc_allocWithZone(MEMORY[0x1E69DD638]);
      isa = Set._bridgeToObjectiveC()().super.isa;

      v9 = [v7 initWithConfigurations:isa delegate:v1];

      v10 = v9;
      [v5 swiftui:v10 addManagedInteraction:?];

      v11 = *(v1 + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_interaction);
      *(v1 + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_interaction) = v10;
    }
  }

  else
  {
    __break(1u);
  }
}

char *AVKitCaptureButtonBridge.dispatchCameraCapture(_:)(void *a1)
{
  if ([a1 _numberOfStages] < 2)
  {
    goto LABEL_5;
  }

  v3 = [a1 _stage];
  result = [a1 _numberOfStages];
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    return result;
  }

  if (v3 == result - 1)
  {
    v5 = [a1 _stagePhase] != 1;
  }

  else
  {
LABEL_5:
    v5 = 0;
  }

  result = [a1 _numberOfStages];
  if (result == 1)
  {
    result = [a1 _state];
    if (!v5)
    {
      if (result == 1)
      {
        return result;
      }

      v6 = &selRef__state;
      goto LABEL_12;
    }
  }

  else if (!v5)
  {
    return result;
  }

  v6 = &selRef__stagePhase;
LABEL_12:
  result = [a1 *v6];
  v7 = *(v1 + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_dispatch);
  if (v7)
  {
    v8 = *(v1 + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_dispatch + 8);
    if (result >= 4)
    {
      v9 = 4;
    }

    else
    {
      v9 = result;
    }

    v11 = 0;
    v10 = v9;

    v7(&v11, &v10);
    return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v7, v8);
  }

  return result;
}

char *specialized AVKitCaptureButtonBridge._physicalButtonInteraction(_:handle:withActiveActions:)(void *a1)
{
  result = [a1 _button];
  if (result == 5)
  {

    return AVKitCaptureButtonBridge.dispatchCameraCapture(_:)(a1);
  }

  else
  {
    v4 = *(v1 + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_dispatch);
    if (v4)
    {
      v5 = *(v1 + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_dispatch + 8);

      v6 = [a1 _button];
      v7 = 0x200000102uLL >> (8 * v6);
      if (v6 >= 6)
      {
        LOBYTE(v7) = 2;
      }

      v11 = v7;
      v8 = [a1 _state];
      v9 = 4;
      if (v8 < 4)
      {
        v9 = v8;
      }

      v10 = v9;
      v4(&v11, &v10);
      return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v4, v5);
    }
  }

  return result;
}

unint64_t type metadata accessor for _UIPhysicalButtonConfiguration()
{
  result = lazy cache variable for type metadata for _UIPhysicalButtonConfiguration;
  if (!lazy cache variable for type metadata for _UIPhysicalButtonConfiguration)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for _UIPhysicalButtonConfiguration);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIPhysicalButtonConfiguration and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type _UIPhysicalButtonConfiguration and conformance NSObject;
  if (!lazy protocol witness table cache variable for type _UIPhysicalButtonConfiguration and conformance NSObject)
  {
    v3 = type metadata accessor for _UIPhysicalButtonConfiguration();
    result = swift_getWitnessTable(MEMORY[0x1E69E81B8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIPhysicalButtonConfiguration and conformance NSObject);
  }

  return result;
}

uint64_t View.containerValue<A>(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a4;
  v7 = *(*a1 + *MEMORY[0x1E69E6CE8] + 8);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - v9;
  v11 = type metadata accessor for _ContainerValueWritingModifier();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = (&v17 - v14);
  (*(v8 + 16))(v10, a2, v7, v13);
  _ContainerValueWritingModifier.init(keyPath:value:)(a1, v10, v15);

  MEMORY[0x18D00A570](v15, a3, v11, v17);
  return (*(v12 + 8))(v15, v11);
}

uint64_t View.tabItem<A>(_:)@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v40 = a5;
  v39 = a2;
  v38 = a1;
  v42 = a7;
  v43 = a4;
  MEMORY[0x1EEE9AC00](a1);
  v41 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ModifiedContent();
  type metadata accessor for ViewInputFlagModifier<AccessibilityShowsLabelIcon>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<AccessibilityShowsLabelIcon>, lazy protocol witness table accessor for type AccessibilityShowsLabelIcon and conformance AccessibilityShowsLabelIcon, &type metadata for AccessibilityShowsLabelIcon, MEMORY[0x1E697FD28]);
  v37 = v10;
  v11 = type metadata accessor for ModifiedContent();
  v12 = type metadata accessor for ModifiedContent();
  v13 = type metadata accessor for ModifiedContent();
  v57[0] = a6;
  v57[1] = &protocol witness table for UpdateDefaultTabFill;
  v34[1] = a6;
  v14 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v10, v57);
  v16 = lazy protocol witness table accessor for type ViewInputFlagModifier<AccessibilityShowsLabelIcon> and conformance ViewInputFlagModifier<A>();
  v56[0] = WitnessTable;
  v56[1] = v16;
  v55[0] = swift_getWitnessTable(v14, v11, v56);
  v55[1] = &protocol witness table for AccessibilityAttachmentModifier;
  v54[0] = swift_getWitnessTable(v14, v12, v55);
  v54[1] = &protocol witness table for AccessibilityDetachedPropertyWriterModifier;
  v17 = swift_getWitnessTable(v14, v13, v54);
  v53[0] = MEMORY[0x1E69806B0];
  v53[1] = v13;
  v53[2] = &type metadata for TabItem.TraitKey;
  v53[3] = MEMORY[0x1E69806A0];
  v53[4] = v17;
  v53[5] = &protocol witness table for TabItem.TraitKey;
  v35 = type metadata accessor for PlatformItemTraitWriter();
  v18 = type metadata accessor for ModifiedContent();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v34 - v20;
  v22 = type metadata accessor for ModifiedContent();
  v36 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v34 - v23;
  v45 = a3;
  v46 = v43;
  v47 = v40;
  v48 = a6;
  v25 = v38;
  v49 = v38;
  v50 = v39;
  v26 = a3;
  v27 = v40;
  View.platformItemLabelTrait<A, B>(for:_:)(&type metadata for TabItem.TraitKey, partial apply for closure #1 in View.tabItem<A>(_:), v44, v26, &type metadata for TabItem.TraitKey, v37, v40, &protocol witness table for TabItem.TraitKey, WitnessTable);
  v28 = swift_getWitnessTable(MEMORY[0x1E6980240], v35);
  v52[0] = v27;
  v52[1] = v28;
  v29 = swift_getWitnessTable(v14, v18, v52);
  v53[0] = 0;
  MEMORY[0x18D00A570](v53, v18, &type metadata for TabPlatformIdentified, v29);
  (*(v19 + 8))(v21, v18);
  KeyPath = swift_getKeyPath();
  v25();
  v53[0] = AnyView.init<A>(_:)();
  v31 = lazy protocol witness table accessor for type TabPlatformIdentified and conformance TabPlatformIdentified();
  v51[0] = v29;
  v51[1] = v31;
  v32 = swift_getWitnessTable(v14, v22, v51);
  View.containerValue<A>(_:_:)(KeyPath, v53, v22, v32);

  return (*(v36 + 8))(v24, v22);
}

uint64_t closure #1 in View.tabItem<A>(_:)@<X0>(uint64_t (*a1)(double)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v21[1] = a4;
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ModifiedContent();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v21 - v16;
  v18 = a1(v15);
  MEMORY[0x18D00A570](v18, a2, &type metadata for UpdateDefaultTabFill, a3);
  (*(v7 + 8))(v9, a2);
  v22[0] = a3;
  v22[1] = &protocol witness table for UpdateDefaultTabFill;
  swift_getWitnessTable(MEMORY[0x1E697E858], v10, v22);
  static ViewBuilder.buildExpression<A>(_:)();
  v19 = *(v11 + 8);
  v19(v13, v10);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v19)(v17, v10);
}

void *key path getter for ContainerValues.tabItemLabel_v0 : ContainerValues@<X0>(void *a1@<X8>)
{
  result = ContainerValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance TabPlatformIdentified@<X0>(uint64_t a1@<X8>)
{
  result = Namespace.wrappedValue.getter();
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

double TabItemLabel_v0.body.getter@<D0>(uint64_t *a1@<X8>)
{
  *a1 = *v1;

  return result;
}

void (*ContainerValues.tabItemLabel_v0.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  ContainerValues.subscript.getter();
  return ContainerValues.tabItemLabel_v0.modify;
}

void ContainerValues.tabItemLabel_v0.modify(uint64_t *a1, char a2)
{
  a1[1] = *a1;
  if (a2)
  {

    ContainerValues.subscript.setter();
  }

  else
  {
    ContainerValues.subscript.setter();
  }
}

void UITabBarController.identifiedViewTree.getter(uint64_t a1@<X8>)
{
  v3 = [v1 selectedViewController];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for TabHostingController(0);
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = *(v5 + direct field offset for UIHostingController.host);
      type metadata accessor for ViewInputFlagModifier<AccessibilityShowsLabelIcon>(0, &lazy cache variable for type metadata for _UIHostingView<TabItem.RootView>, lazy protocol witness table accessor for type TabItem.RootView and conformance TabItem.RootView, &type metadata for TabItem.RootView, type metadata accessor for _UIHostingView);
      lazy protocol witness table accessor for type _UIHostingView<TabItem.RootView> and conformance _UIHostingView<A>();
      v7 = v6;
      ViewGraphRootValueUpdater._preferenceValue<A>(_:)();

      outlined init with copy of _IdentifiedViewTree(v23, v22);
      if (v22[168] != 2 || (v8 = vorrq_s8(vorrq_s8(vorrq_s8(vorrq_s8(*&v22[40], *&v22[104]), vorrq_s8(*&v22[72], *&v22[136])), vorrq_s8(vorrq_s8(*&v22[56], *&v22[120]), vorrq_s8(*&v22[88], *&v22[152]))), vorrq_s8(*&v22[8], *&v22[24])), *&vorr_s8(*v8.i8, *&vextq_s8(v8, v8, 8uLL)) | *v22))
      {
        outlined destroy of _IdentifiedViewTree(v22);
        outlined init with copy of _IdentifiedViewTree(v23, v22);
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v11 = *(v9 + 2);
        v10 = *(v9 + 3);
        if (v11 >= v10 >> 1)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v9);
        }

        outlined destroy of _IdentifiedViewTree(v23);
        *(v9 + 2) = v11 + 1;
        v12 = &v9[176 * v11];
        v14 = *&v22[16];
        v13 = *&v22[32];
        *(v12 + 2) = *v22;
        *(v12 + 3) = v14;
        *(v12 + 4) = v13;
        v15 = *&v22[96];
        v17 = *&v22[48];
        v16 = *&v22[64];
        *(v12 + 7) = *&v22[80];
        *(v12 + 8) = v15;
        *(v12 + 5) = v17;
        *(v12 + 6) = v16;
        v19 = *&v22[128];
        v18 = *&v22[144];
        v20 = *&v22[112];
        *(v12 + 185) = *&v22[153];
        *(v12 + 10) = v19;
        *(v12 + 11) = v18;
        *(v12 + 9) = v20;
        if (!*(v9 + 2))
        {
          goto LABEL_8;
        }

LABEL_12:
        v21 = 1;
        goto LABEL_13;
      }

      outlined destroy of _IdentifiedViewTree(v23);

      outlined destroy of _IdentifiedViewTree(v22);
    }

    else
    {
    }
  }

  v9 = MEMORY[0x1E69E7CC0];
  if (*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_12;
  }

LABEL_8:

  v9 = 0;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  v21 = 2;
  *(a1 + 8) = 0u;
LABEL_13:
  *a1 = v9;
  *(a1 + 168) = v21;
}