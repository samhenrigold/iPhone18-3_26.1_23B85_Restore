uint64_t _s5TeaUI31BlueprintCollectionViewDelegateC010collectionE0_18didHighlightItemAtySo012UICollectionE0C_10Foundation9IndexPathVtF_0(void *a1, uint64_t a2)
{
  v43 = a2;
  v41 = a1;
  v3 = *v2;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = sub_1D818E2D4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v40[1] = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v3;
  v7 = *((v4 & v3) + 0x68);
  v8 = *((v4 & v3) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedConformanceWitness();
  v49[0] = AssociatedTypeWitness;
  v49[1] = v10;
  v49[2] = AssociatedConformanceWitness;
  v50 = v12;
  v13 = type metadata accessor for Blueprint(0, v49);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v40 - v15;
  v18 = type metadata accessor for BlueprintItem(0, v10, v12, v17);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v40 - v23;
  v26 = v25;
  BlueprintProviderType.blueprint.getter(v8, v7);
  Blueprint.subscript.getter();
  (*(v14 + 8))(v16, v13);
  (*(v19 + 16))(v21, v24, v26);
  sub_1D7E0631C(0, qword_1EDBB65E0, &protocol descriptor for AppEntityAnnotationProviding);
  if (swift_dynamicCast())
  {
    sub_1D7E05450(&v46, v49);
    v27 = v50;
    v28 = v51;
    __swift_project_boxed_opaque_existential_1(v49, v50);
    (*(v28 + 8))(&v44, v27, v28);
    if (v45)
    {
      sub_1D7E05450(&v44, &v46);
      v29 = sub_1D818E8E4();
      v30 = [v41 cellForItemAtIndexPath_];

      if (v30)
      {
        v31 = *(&v47 + 1);
        v32 = __swift_project_boxed_opaque_existential_1(&v46, *(&v47 + 1));
        v33 = sub_1D818FD34();
        v43 = v26;
        v34 = MEMORY[0x1EEE9AC00](v33);
        (*(v36 + 16))(v40 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0), v32, v31, v34);
        sub_1D7E9A940();
        v37 = sub_1D818FD24();
        v38 = [v30 contentView];
        sub_1D8191C64();

        (*(v19 + 8))(v24, v43);
      }

      else
      {
        (*(v19 + 8))(v24, v26);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v46);
    }

    else
    {
      (*(v19 + 8))(v24, v26);
      sub_1D7E25DBC(&v44, &unk_1EDBBC730, &unk_1EDBBC740, MEMORY[0x1E6959DF8]);
    }

    return __swift_destroy_boxed_opaque_existential_1Tm(v49);
  }

  else
  {
    v48 = 0;
    v46 = 0u;
    v47 = 0u;
    (*(v19 + 8))(v24, v26);
    return sub_1D7E25DBC(&v46, &unk_1EDBB65D0, qword_1EDBB65E0, &protocol descriptor for AppEntityAnnotationProviding);
  }
}

void BlueprintCollectionViewDelegate.collectionView(_:didDeselectItemAt:)()
{
  OUTLINED_FUNCTION_120();
  v2 = v0;
  v88 = v3;
  v86 = v4;
  v5 = *v0;
  v6 = *MEMORY[0x1E69E7D40];
  v83 = *MEMORY[0x1E69E7D40] & v5;
  v79 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v77 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_2();
  v10 = OUTLINED_FUNCTION_38_0(v9);
  sub_1D7EA0824(v10);
  v75 = v11;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_2();
  v14 = OUTLINED_FUNCTION_38_0(v13);
  sub_1D7E3D564(v14);
  v16 = OUTLINED_FUNCTION_50(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_24_1();
  v84 = v19;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_21_12();
  v87 = v21;
  v22 = *((v6 & v5) + 0x68);
  v23 = *((v6 & v5) + 0x50);
  OUTLINED_FUNCTION_80_3();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_80_3();
  v25 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_107_1();
  OUTLINED_FUNCTION_65();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_107_1();
  OUTLINED_FUNCTION_64();
  v90[0] = AssociatedTypeWitness;
  v90[1] = v25;
  v90[2] = AssociatedConformanceWitness;
  v91 = swift_getAssociatedConformanceWitness();
  v27 = OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_9();
  v29 = v28;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_12_24();
  v32 = type metadata accessor for BlueprintItem(0, v25, v91, v31);
  OUTLINED_FUNCTION_9();
  v85 = v33;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_60_0();
  v82 = v23;
  BlueprintProviderType.blueprint.getter(v23, v22);
  OUTLINED_FUNCTION_106_1();
  Blueprint.subscript.getter();
  v81 = v27;
  v80 = *(v29 + 8);
  v35 = v80(v1, v27);
  OUTLINED_FUNCTION_16_22(v35, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740]);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1D81A1B70;
  OUTLINED_FUNCTION_10_19();
  v38 = (v2 + *(v37 + 312));
  v40 = *v38;
  v39 = v38[1];
  v41 = MEMORY[0x1E69E6158];
  *(v42 + 56) = MEMORY[0x1E69E6158];
  v43 = sub_1D7E13BF4();
  *(v36 + 64) = v43;
  *(v36 + 32) = v40;
  *(v36 + 40) = v39;
  sub_1D8190DB4();
  v44 = BlueprintItem.identifier.getter(v32);
  *(v36 + 96) = v41;
  *(v36 + 104) = v43;
  *(v36 + 72) = v44;
  *(v36 + 80) = v45;
  v46 = MEMORY[0x1DA710AD0]();
  *(v36 + 136) = v41;
  *(v36 + 144) = v43;
  *(v36 + 112) = v46;
  *(v36 + 120) = v47;
  sub_1D7E0A1A8(0, &qword_1EDBBE110, 0x1E69E9BF8);
  v48 = sub_1D8191E44();
  v49 = sub_1D81919E4();
  sub_1D818FD44("Blueprint did deselect item at index path, model=%{public}@, item=%{public}@, indexPath=%{public}@", 98, 2, &dword_1D7DFF000, v48, v49, v36);

  OUTLINED_FUNCTION_10_19();
  OUTLINED_FUNCTION_8_4(v2 + *(v50 + 168), v90);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v52 = Strong;
    BlueprintProviderType.blueprint.getter(v82, v22);
    (*(*(v83 + 120) + 64))(v1, AssociatedConformanceWitness, v88, *(v83 + 96));

    v80(v1, v81);
  }

  if (([v86 allowsMultipleSelection] & 1) == 0)
  {
    (*(v77 + 16))(v87, v88, v79);
    OUTLINED_FUNCTION_102();
    __swift_storeEnumTagSinglePayload(v53, v54, v55, v79);
    OUTLINED_FUNCTION_10_19();
    v57 = v2 + *(v56 + 192);
    OUTLINED_FUNCTION_8_4(v57, &v89);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v58 = *(v57 + 8);
      ObjectType = swift_getObjectType();
      v60 = v84;
      (*(v58 + 8))(ObjectType, v58);
      swift_unknownObjectRelease();
    }

    else
    {
      v60 = v84;
      __swift_storeEnumTagSinglePayload(v84, 1, 1, v79);
    }

    v61 = *(v75 + 48);
    sub_1D7E54838(v87, v78);
    sub_1D7E54838(v60, v78 + v61);
    OUTLINED_FUNCTION_43_0(v78, 1, v79);
    if (v63)
    {
      sub_1D7E54AA4(v60, sub_1D7E3D564);
      sub_1D7E54AA4(v87, sub_1D7E3D564);
      OUTLINED_FUNCTION_43_0(v78 + v61, 1, v79);
      if (v63)
      {
        OUTLINED_FUNCTION_0_114();
        sub_1D7E54AA4(v78, v62);
LABEL_17:
        if (swift_unknownObjectWeakLoadStrong())
        {
          swift_getObjectType();
          v70 = OUTLINED_FUNCTION_109_1();
          __swift_storeEnumTagSinglePayload(v70, v71, 1, v79);
          v72 = OUTLINED_FUNCTION_4_8();
          v73(v72);
          swift_unknownObjectRelease();
        }

        goto LABEL_19;
      }
    }

    else
    {
      sub_1D7E54838(v78, v76);
      OUTLINED_FUNCTION_43_0(v78 + v61, 1, v79);
      if (!v63)
      {
        (*(v77 + 32))(v74, v78 + v61, v79);
        sub_1D8008590();
        OUTLINED_FUNCTION_4_8();
        v66 = sub_1D8190ED4();
        v67 = *(v77 + 8);
        v68 = OUTLINED_FUNCTION_118_1();
        v67(v68);
        OUTLINED_FUNCTION_43_8();
        sub_1D7E54AA4(v84, v69);
        sub_1D7E54AA4(v87, v74);
        (v67)(v76, v79);
        sub_1D7E54AA4(v78, v74);
        if ((v66 & 1) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_17;
      }

      OUTLINED_FUNCTION_6_49();
      sub_1D7E54AA4(v84, v64);
      sub_1D7E54AA4(v87, v87);
      (*(v77 + 8))(v76, v79);
    }

    OUTLINED_FUNCTION_12_26();
    sub_1D7E54AA4(v78, v65);
  }

LABEL_19:
  _s5TeaUI31BlueprintCollectionViewDelegateC010collectionE0_18didHighlightItemAtySo012UICollectionE0C_10Foundation9IndexPathVtF_0(v86, v88);
  (*(v85 + 8))(AssociatedConformanceWitness, v32);
  OUTLINED_FUNCTION_100();
}

Swift::Void __swiftcall BlueprintCollectionViewDelegate.collectionView(_:didUpdateFocusIn:with:)(UICollectionView *_, UICollectionViewFocusUpdateContext didUpdateFocusIn, UIFocusAnimationCoordinator with)
{
  OUTLINED_FUNCTION_120();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_97_1();
  v7 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v38 - v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v38 - v17;
  v19 = [v6 previouslyFocusedIndexPath];
  if (v19)
  {
    v20 = v19;
    sub_1D818E924();

    (*(v9 + 32))(v18, v14, v7);
    v21 = OUTLINED_FUNCTION_118_1();
    _s5TeaUI31BlueprintCollectionViewDelegateC010collectionE0_18didHighlightItemAtySo012UICollectionE0C_10Foundation9IndexPathVtF_0(v21, v22);
    v23 = OUTLINED_FUNCTION_106_1();
    v24(v23);
  }

  v25 = [v6 nextFocusedIndexPath];
  if (v25)
  {
    v26 = v25;
    sub_1D818E924();

    v27 = OUTLINED_FUNCTION_111();
    v28(v27);
    v29 = OUTLINED_FUNCTION_15_5();
    _s5TeaUI31BlueprintCollectionViewDelegateC010collectionE0_18didHighlightItemAtySo012UICollectionE0C_10Foundation9IndexPathVtF_0(v29, v30);
    v31 = OUTLINED_FUNCTION_54_1();
    v32(v31);
  }

  OUTLINED_FUNCTION_10_19();
  v34 = v4 + *(v33 + 192);
  OUTLINED_FUNCTION_8_4(v34, &v39);
  if (!swift_unknownObjectWeakLoadStrong() || (v35 = *(v34 + 8), ObjectType = swift_getObjectType(), (*(v35 + 32))(v38, ObjectType, v35), swift_unknownObjectRelease(), (v38[0] & 1) == 0))
  {
    OUTLINED_FUNCTION_10_19();
    OUTLINED_FUNCTION_8_4(v4 + *(v37 + 184), v38);
    if (swift_weakLoadStrong())
    {
      KeyCommandManager.invalidate(clearState:)(1);
    }
  }

  OUTLINED_FUNCTION_100();
}

void sub_1D7FFF950(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a1;
  BlueprintCollectionViewDelegate.collectionView(_:didUpdateFocusIn:with:)(v8, v9, v11);
}

void BlueprintCollectionViewDelegate.collectionView(_:contextMenuConfigurationForItemAt:point:)(void *a1, uint64_t a2, double a3, double a4)
{
  v5 = v4;
  v71 = a2;
  OUTLINED_FUNCTION_3_7();
  v10 = *(v9 + 104);
  v13 = *((v12 & v11) + 0x50);
  v14 = OUTLINED_FUNCTION_33_0();
  v16 = OUTLINED_FUNCTION_139_1(v14, v15);
  v17 = OUTLINED_FUNCTION_33_0();
  v19 = OUTLINED_FUNCTION_139_1(v17, v18);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_105_1();
  v72[0] = v16;
  v72[1] = v19;
  v72[2] = AssociatedConformanceWitness;
  v73 = swift_getAssociatedConformanceWitness();
  v21 = OUTLINED_FUNCTION_118_0();
  v23 = type metadata accessor for Blueprint(v21, v22);
  OUTLINED_FUNCTION_9();
  v25 = v24;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_119();
  v28 = type metadata accessor for BlueprintItem(0, v19, v73, v27);
  OUTLINED_FUNCTION_9();
  v30 = v29;
  OUTLINED_FUNCTION_44();
  v32 = MEMORY[0x1EEE9AC00](v31);
  v34 = &v68 - v33;
  if ([a1 allowsSelection] && (objc_msgSend(a1, sel_isEditing) & 1) == 0 && (objc_msgSend(a1, sel_allowsMultipleSelection) & 1) == 0)
  {
    v70 = v30;
    type metadata accessor for SwipeActionCollectionView(0);
    if (swift_dynamicCastClass())
    {
      v69 = a1;
      sub_1D8082BB0();
      if (v35)
      {

        return;
      }

      sub_1D80F82E4();
      sub_1D7E6931C();
    }

    v36 = [a1 hitTest:0 withEvent:{a3, a4}];
    if (!v36 || (v37 = v36, LODWORD(v69) = sub_1D802334C(), v37, (v69 & 1) == 0))
    {
      v38 = sub_1D818E8E4();
      v69 = [a1 cellForItemAtIndexPath_];

      BlueprintProviderType.blueprint.getter(v13, v10);
      v39 = v71;
      Blueprint.subscript.getter();
      v40 = v23;
      v41 = v69;
      (*(v25 + 8))(AssociatedConformanceWitness, v40);
      v42 = OUTLINED_FUNCTION_11_0();
      v43 = v39;
      v45 = sub_1D800000C(v42, v44, v39, a1);
      v46 = sub_1D8000710(v34, v43, v5, a1);
      v47 = sub_1D80012D4(v5, v41, v45, v46);
      v48 = OUTLINED_FUNCTION_11_0();
      v50 = sub_1D8001464(v48, v49, v43);
      if (!(sub_1D7E36AB8(v47) | v50))
      {
        if (!v45 || (, v51 = ContextMenu.activityItemConfiguration.getter(), , !v51))
        {

          goto LABEL_22;
        }
      }

      v71 = v46;
      OUTLINED_FUNCTION_8_4(v5 + *((*MEMORY[0x1E69E7D40] & *v5) + 0xC8), v72);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v53 = Strong;
        v54 = [Strong view];

        if (!v54)
        {
          __break(1u);
          return;
        }

        v55 = [v54 window];

        if (v55)
        {
          v56 = [v55 rootViewController];

          if (v56)
          {
            v57 = [v56 presentedViewController];

            if (v57)
            {
              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {

LABEL_22:
                v58 = OUTLINED_FUNCTION_88_2();
                v59(v58);
                return;
              }
            }
          }
        }
      }

      sub_1D7E0A1A8(0, &unk_1EDBAE4B0, 0x1E69DC8D8);
      BlueprintItem.identifier.getter(v28);
      v60 = sub_1D8190EE4();

      v61 = swift_allocObject();
      *(v61 + 16) = v50;
      *(v61 + 24) = v41;
      OUTLINED_FUNCTION_0_8();
      v62 = v41;
      v63 = swift_allocObject();
      *(v63 + 16) = v47;
      v64 = v50;
      v65 = v62;
      sub_1D7F0DCE4(v60, sub_1D8008648, v61, sub_1D7F9DB78, v63);

      v66 = OUTLINED_FUNCTION_88_2();
      v67(v66);
    }
  }
}

uint64_t sub_1D800000C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v71 = a4;
  v77 = a3;
  v78 = a1;
  v5 = *a2;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x68);
  v8 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = swift_getAssociatedTypeWitness();
  v79 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v69 = v8;
  v70 = v7;
  v12 = swift_getAssociatedConformanceWitness();
  *&v84 = AssociatedTypeWitness;
  *(&v84 + 1) = v10;
  *&v85 = AssociatedConformanceWitness;
  *(&v85 + 1) = v12;
  v13 = type metadata accessor for Blueprint(0, &v84);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v68 = &v59 - v14;
  v15 = sub_1D818E994();
  v64 = *(v15 - 8);
  v65 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v73 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *((v6 & v5) + 0x70);
  v75 = a2;
  v18 = *((v6 & v5) + 0x58);
  v19 = swift_getAssociatedTypeWitness();
  v20 = swift_getAssociatedTypeWitness();
  v21 = swift_getAssociatedConformanceWitness();
  v74 = v17;
  v22 = v18;
  v23 = v79;
  v24 = swift_getAssociatedConformanceWitness();
  *&v84 = v23;
  *(&v84 + 1) = v10;
  *&v85 = v19;
  *(&v85 + 1) = v20;
  v76 = v20;
  v72 = AssociatedConformanceWitness;
  v86 = AssociatedConformanceWitness;
  v87 = v12;
  v25 = v12;
  v88 = v21;
  v89 = v24;
  v26 = v24;
  v27 = type metadata accessor for ContextMenuContext(0, &v84);
  v67 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v66 = &v59 - v28;
  v30 = MEMORY[0x1EEE9AC00](v29);
  (*(v32 + 16))(&v59 - v31, v78, v10, v30);
  sub_1D7E0631C(0, &qword_1EDBB9540, &protocol descriptor for ContextMenuProviding);
  v78 = v10;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v86 = 0;
    v84 = 0u;
    v85 = 0u;
    sub_1D7E25DBC(&v84, &unk_1ECA0D9C0, &qword_1EDBB9540, &protocol descriptor for ContextMenuProviding);
    return 0;
  }

  v63 = v19;
  sub_1D7E05450(&v84, v90);
  v34 = v91;
  v33 = v92;
  __swift_project_boxed_opaque_existential_1(v90, v91);
  if ((*(v33 + 16))(v34, v33))
  {
    BlueprintLayoutProviderType.layoutBlueprint.getter(v22, v74);
    *&v80 = v63;
    *(&v80 + 1) = v76;
    v81 = v21;
    v82 = v26;
    v35 = type metadata accessor for BlueprintLayout(0, &v80);
    v36 = sub_1D81138E8(v77, v35);
    (*(*(v35 - 8) + 8))(&v84, v35);
    if ((v36 & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v90);
      return 0;
    }
  }

  v37 = v91;
  v38 = v92;
  __swift_project_boxed_opaque_existential_1(v90, v91);
  v39 = (*(v38 + 8))(v37, v38);
  if (v39)
  {
    v40 = v39;
  }

  else
  {
    v60 = v92;
    v61 = v91;
    v62 = __swift_project_boxed_opaque_existential_1(v90, v91);
    (*(v64 + 16))(v73, v77, v65);
    v77 = v27;
    v41 = v68;
    BlueprintProviderType.blueprint.getter(v69, v70);
    BlueprintLayoutProviderType.layoutBlueprint.getter(v22, v74);
    v42 = type metadata accessor for RendererEnvironment();
    v43 = objc_allocWithZone(v42);
    v44 = v71;
    v45 = v71;
    v46 = RendererEnvironment.init(scrollView:testing:)(v44, 0);
    v82 = v42;
    v83 = &protocol witness table for RendererEnvironment;
    *&v80 = v46;
    v47 = v26;
    v57 = v21;
    v58 = v26;
    v48 = v21;
    v49 = v72;
    v50 = v66;
    v51 = v41;
    v53 = v78;
    v52 = v79;
    v54 = v63;
    v55 = v76;
    sub_1D7FB0E2C(v73, v51, &v84, &v80, v79, v78, v63, v76, v66, v72, v25, v57, v58);
    v40 = (*(v60 + 32))(v50, v52, v53, v54, v55, v49, v25, v48, v47, v61, v60);
    (*(v67 + 8))(v50, v77);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v90);
  return v40;
}

uint64_t sub_1D8000710(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v108 = a4;
  v104 = a2;
  v110 = a1;
  v5 = *a3;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & *a3) + 0x68);
  v8 = *((*MEMORY[0x1E69E7D40] & *a3) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v105 = v8;
  v106 = v7;
  v11 = swift_getAssociatedConformanceWitness();
  *&v121 = AssociatedTypeWitness;
  *(&v121 + 1) = v10;
  *&v122 = AssociatedConformanceWitness;
  *(&v122 + 1) = v11;
  v12 = type metadata accessor for Blueprint(0, &v121);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v103 = &v84 - v13;
  v99 = sub_1D818E994();
  v111 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v112 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *((v6 & v5) + 0x70);
  v96 = a3;
  v16 = *((v6 & v5) + 0x58);
  v17 = swift_getAssociatedTypeWitness();
  v18 = swift_getAssociatedTypeWitness();
  v19 = swift_getAssociatedConformanceWitness();
  v97 = v16;
  v98 = v15;
  v20 = swift_getAssociatedConformanceWitness();
  v109 = AssociatedTypeWitness;
  *&v121 = AssociatedTypeWitness;
  *(&v121 + 1) = v10;
  v101 = v18;
  v102 = v17;
  *&v122 = v17;
  *(&v122 + 1) = v18;
  v123 = AssociatedConformanceWitness;
  v124 = v11;
  v107 = v11;
  v113 = v19;
  v125 = v19;
  v126 = v20;
  v100 = v20;
  v21 = type metadata accessor for ContextMenuContext(0, &v121);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v84 - v23;
  v25 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v84 - v27;
  sub_1D818EEE4();
  v29 = 0;
  if (sub_1D818EEC4())
  {
    (*(v25 + 16))(v28, v110, v10);
    sub_1D7E0631C(0, &qword_1EDBB9540, &protocol descriptor for ContextMenuProviding);
    if (swift_dynamicCast())
    {
      sub_1D7E05450(&v121, v127);
      v92 = v129;
      v93 = v128;
      v94 = __swift_project_boxed_opaque_existential_1(v127, v128);
      v30 = *(v111 + 16);
      v111 += 16;
      v90 = v30;
      v30(v112, v104, v99);
      v31 = v96;
      v32 = MEMORY[0x1E69E7D40];
      v89 = *((*MEMORY[0x1E69E7D40] & *v96) + 0x88);
      v110 = v22;
      v33 = v103;
      BlueprintProviderType.blueprint.getter(v105, v106);
      v88 = *((*v32 & *v31) + 0x90);
      BlueprintLayoutProviderType.layoutBlueprint.getter(v97, v98);
      v34 = type metadata accessor for RendererEnvironment();
      v35 = objc_allocWithZone(v34);
      v36 = v108;
      v87 = v108;
      v37 = RendererEnvironment.init(scrollView:testing:)(v36, 0);
      v119 = v34;
      v120 = &protocol witness table for RendererEnvironment;
      v91 = v34;
      *&v118 = v37;
      v38 = v100;
      v95 = v21;
      v39 = v10;
      v40 = v107;
      v41 = AssociatedConformanceWitness;
      v42 = v33;
      v43 = v109;
      v45 = v101;
      v44 = v102;
      sub_1D7FB0E2C(v112, v42, &v121, &v118, v109, v39, v102, v101, v24, AssociatedConformanceWitness, v107, v113, v100);
      v46 = v92[5];
      v83 = v93;
      v93 = v39;
      v47 = v44;
      v48 = v110;
      v49 = v45;
      v50 = v95;
      v29 = v46(v24, v43, v39, v47, v49, v41, v40, v113, v38, v83, v92);
      v53 = *(v48 + 8);
      v52 = v48 + 8;
      v51 = v53;
      v94 = v24;
      v53(v24, v50);
      v55 = v128;
      v54 = v129;
      __swift_project_boxed_opaque_existential_1(v127, v128);
      if ((v54[3])(v55, v54))
      {
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v57 = Strong;
          sub_1D805B770(&v121);

          if (*(&v122 + 1))
          {
            sub_1D7E05450(&v121, &v118);
            v85 = v120;
            v86 = v119;
            v92 = __swift_project_boxed_opaque_existential_1(&v118, v119);
            v110 = v52;
            v58 = v112;
            v90(v112, v104, v99);
            v59 = v103;
            BlueprintProviderType.blueprint.getter(v105, v106);
            BlueprintLayoutProviderType.layoutBlueprint.getter(v97, v98);
            v60 = v91;
            v61 = objc_allocWithZone(v91);
            v62 = v87;
            v63 = RendererEnvironment.init(scrollView:testing:)(v108, 0);
            v116 = v60;
            v117 = &protocol witness table for RendererEnvironment;
            *&v115 = v63;
            v64 = v100;
            v108 = v51;
            v65 = v107;
            v111 = v29;
            v66 = AssociatedConformanceWitness;
            v67 = v94;
            v68 = v58;
            v69 = v59;
            v70 = v109;
            v71 = v93;
            v73 = v101;
            v72 = v102;
            sub_1D7FB0E2C(v68, v69, &v121, &v115, v109, v93, v102, v101, v94, AssociatedConformanceWitness, v107, v113, v100);
            v74 = v66;
            v75 = v111;
            v76 = (v85[5])(v67, v70, v71, v72, v73, v74, v65, v113, v64, v86, v85);
            (v108)(v67, v50);
            if (v75)
            {
              if (v76)
              {
                sub_1D7EE5CC4(0);
                v77 = swift_allocObject();
                *(v77 + 16) = xmmword_1D819FAB0;
                type metadata accessor for ContextMenuGroup();

                sub_1D8125948(v75);
                v79 = v78;
                sub_1D8125948(v76);
                *&v121 = v79;
                sub_1D7F0A988(v80);
                static ContextMenuGroup.debug(items:)(v121, (v77 + 32));

                type metadata accessor for ContextMenu();
                swift_allocObject();
                v81 = ContextMenu.init(groups:activityItemConfiguration:)(v77);

                v76 = v81;
              }

              else
              {
                v76 = v75;
              }
            }

            __swift_destroy_boxed_opaque_existential_1Tm(&v118);
            v29 = v76;
            goto LABEL_14;
          }
        }

        else
        {
          v123 = 0;
          v121 = 0u;
          v122 = 0u;
        }

        sub_1D7E25DBC(&v121, &unk_1ECA0D9C0, &qword_1EDBB9540, &protocol descriptor for ContextMenuProviding);
      }

LABEL_14:
      __swift_destroy_boxed_opaque_existential_1Tm(v127);
      return v29;
    }

    v123 = 0;
    v121 = 0u;
    v122 = 0u;
    sub_1D7E25DBC(&v121, &unk_1ECA0D9C0, &qword_1EDBB9540, &protocol descriptor for ContextMenuProviding);
    return 0;
  }

  return v29;
}

uint64_t sub_1D8001060(uint64_t a1, void *a2, void *a3)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40] & *a2;
  if (!a1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v7 = *MEMORY[0x1E69E7D40] & *a2;
  HIBYTE(v27) = 2;
  sub_1D7E25380(a2 + *(v4 + 272), v24);
  v28 = 0u;
  v29 = 0u;
  LOBYTE(v30) = 1;
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = *(v7 + 80);
  *(v9 + 24) = *(v7 + 88);
  *(v9 + 40) = *(v7 + 104);
  *(v9 + 48) = *(v7 + 112);
  *(v9 + 64) = *(v7 + 128);
  *(v9 + 72) = v8;
  type metadata accessor for CommandExecutionSource();
  v10 = swift_allocObject();
  v11 = v25;
  v12 = v26;
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v14);

  v18 = a3;
  sub_1D7E3B938(&v27 + 7, v16, a3, &v28, 0, sub_1D8008954, v9, v10, v11, v12, v24[0], v24[1], v24[2], v25, v26, v27, v28, *(&v28 + 1), v29, *(&v29 + 1), v30, v31);
  v20 = v19;
  __swift_destroy_boxed_opaque_existential_1Tm(v24);
  v21 = (a2 + *((*v3 & *a2) + 0xA0));
  v22 = ContextMenu.build(commandCenter:source:)(*v21, v21[1], v20);

  return v22;
}

uint64_t sub_1D80012D4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x1E69E7D40] & *a1;
  if (qword_1EDBBC648 != -1)
  {
    swift_once();
  }

  v9 = *(v8 + 128);
  v10 = *(v8 + 96);
  v15[0] = *(v8 + 80);
  v15[1] = v10;
  v15[2] = *(v8 + 112);
  v16 = v9;
  type metadata accessor for BlueprintCollectionViewDelegate(0, v15);
  swift_getWitnessTable();
  sub_1D818EA44();
  if (!v17)
  {
    return sub_1D8001060(a3, a1, a2);
  }

  if (v17 == 1)
  {
    v11 = sub_1D8001060(a4, a1, a2);
    v12 = sub_1D8001060(a3, a1, a2);
    *&v15[0] = v11;
  }

  else
  {
    v14 = sub_1D8001060(a3, a1, a2);
    v12 = sub_1D8001060(a4, a1, a2);
    *&v15[0] = v14;
  }

  sub_1D7F0A724(v12);
  return *&v15[0];
}

id sub_1D8001464(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v35 = a3;
  v4 = *a2;
  v5 = *MEMORY[0x1E69E7D40];
  v37 = (*MEMORY[0x1E69E7D40] & *a2);
  v6 = *((v5 & v4) + 0x68);
  v7 = *((v5 & v4) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = swift_getAssociatedTypeWitness();
  *&v39 = AssociatedTypeWitness;
  *(&v39 + 1) = v9;
  *&v40 = swift_getAssociatedConformanceWitness();
  *(&v40 + 1) = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for Blueprint(0, &v39);
  v36 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  (*(v16 + 16))(&v32 - v15, a1, v9, v14);
  sub_1D7E0631C(0, &qword_1EDBB9540, &protocol descriptor for ContextMenuProviding);
  if (swift_dynamicCast())
  {
    v34 = a1;
    sub_1D7E05450(&v39, v42);
    v18 = v43;
    v17 = v44;
    __swift_project_boxed_opaque_existential_1(v42, v43);
    if ((*(v17 + 16))(v18, v17))
    {
      BlueprintLayoutProviderType.layoutBlueprint.getter(v37[11], v37[14]);
      v19 = swift_getAssociatedTypeWitness();
      v20 = swift_getAssociatedTypeWitness();
      v33 = v10;
      v21 = v20;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v23 = swift_getAssociatedConformanceWitness();
      v38[0] = v19;
      v38[1] = v21;
      v38[2] = AssociatedConformanceWitness;
      v10 = v33;
      v38[3] = v23;
      v24 = type metadata accessor for BlueprintLayout(0, v38);
      LOBYTE(AssociatedConformanceWitness) = sub_1D81138E8(v35, v24);
      (*(*(v24 - 8) + 8))(&v39, v24);
      if ((AssociatedConformanceWitness & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v42);
        return 0;
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    a1 = v34;
  }

  else
  {
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    sub_1D7E25DBC(&v39, &unk_1ECA0D9C0, &qword_1EDBB9540, &protocol descriptor for ContextMenuProviding);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v26 = Strong;
  BlueprintProviderType.blueprint.getter(v7, v6);
  v27 = (*(v37[15] + 80))(v12, a1, v37[12]);

  (*(v36 + 8))(v12, v10);
  if (v27)
  {
    v38[0] = v27;
    sub_1D7E0A1A8(0, &qword_1EDBB31B0, 0x1E69DD258);
    sub_1D7E0631C(0, &unk_1ECA0F3C0, &protocol descriptor for NonBlueprintPreviewable);
    v28 = v27;
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(&v39);
    }

    else
    {
      swift_beginAccess();
      v29 = swift_unknownObjectWeakLoadStrong();
      v30 = objc_allocWithZone(type metadata accessor for PreviewViewController());
      return PreviewViewController.init(previewedViewController:triggeringViewController:)(v28, v29);
    }
  }

  return v27;
}

void *sub_1D8001A34(void *a1, void *a2)
{
  if (!a1)
  {
    if (a2 && (sub_1D7E0A1A8(0, &qword_1EDBB3110, 0x1E69DC7F8), sub_1D7E0631C(0, &unk_1ECA0F5A0, &protocol descriptor for ContextMenuPreviewable), v4 = a2, (swift_dynamicCast() & 1) != 0))
    {
      if (*(&v10 + 1))
      {
        sub_1D7E05450(&v9, v12);
        v5 = v13;
        v6 = v14;
        __swift_project_boxed_opaque_existential_1(v12, v13);
        (*(v6 + 8))(1, v5, v6);
        __swift_destroy_boxed_opaque_existential_1Tm(v12);
        goto LABEL_8;
      }
    }

    else
    {
      v11 = 0;
      v9 = 0u;
      v10 = 0u;
    }

    sub_1D7E25DBC(&v9, &unk_1ECA0E630, &unk_1ECA0F5A0, &protocol descriptor for ContextMenuPreviewable);
  }

LABEL_8:
  v7 = a1;
  return a1;
}

id sub_1D8001B54(void *a1, double a2, double a3, uint64_t a4, void *a5, uint64_t a6)
{
  v10 = sub_1D818E994();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818E924();
  v14 = a5;
  v15 = a1;
  BlueprintCollectionViewDelegate.collectionView(_:contextMenuConfigurationForItemAt:point:)(v14, v13, a2, a3);
  v17 = v16;

  (*(v11 + 8))(v13, v10);

  return v17;
}

void BlueprintCollectionViewDelegate.collectionView(_:willPerformPreviewActionForMenuWith:animator:)(void *a1, void *a2, void *a3)
{
  if ([a1 allowsSelection])
  {
    OUTLINED_FUNCTION_0_8();
    v6 = swift_allocObject();
    v7 = [a3 previewViewController];
    if (v7)
    {
      *(v6 + 16) = v7;
      [a3 setPreferredCommitStyle_];
      OUTLINED_FUNCTION_1_63();
      v8 = swift_allocObject();
      v8[2] = v6;
      v8[3] = v3;
      v8[4] = a2;
      v12[4] = sub_1D8008650;
      v12[5] = v8;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 1107296256;
      v12[2] = sub_1D7E64940;
      v12[3] = &block_descriptor_40;
      v9 = _Block_copy(v12);

      v10 = v3;
      v11 = a2;

      [a3 addCompletion_];
      _Block_release(v9);
    }

    else
    {
      OUTLINED_FUNCTION_0_8();
      swift_deallocUninitializedObject();

      sub_1D8001E0C(a2, v3);
    }
  }
}

uint64_t sub_1D8001E0C(void *a1, void *a2)
{
  v55 = a1;
  v3 = *a2;
  v4 = *MEMORY[0x1E69E7D40];
  v47 = *MEMORY[0x1E69E7D40] & *a2;
  sub_1D7E3D564(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v53 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D818E994();
  v49 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v48 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *((v4 & v3) + 0x68);
  v54 = a2;
  v10 = *((v4 & v3) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = swift_getAssociatedConformanceWitness();
  v57[0] = AssociatedTypeWitness;
  v57[1] = v12;
  v57[2] = AssociatedConformanceWitness;
  v57[3] = v14;
  v15 = type metadata accessor for Blueprint(0, v57);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v42 - v17;
  v20 = type metadata accessor for BlueprintItem(255, v12, v14, v19);
  v21 = sub_1D8191E84();
  v50 = *(v21 - 8);
  v51 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v42 - v22;
  v24 = *(v20 - 8);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v52 = &v42 - v27;
  v56 = [v55 identifier];
  sub_1D7F9DB88();
  result = swift_dynamicCast();
  if (result)
  {
    v55 = v24;
    v45 = v7;
    v46 = *((*MEMORY[0x1E69E7D40] & *v54) + 0x88);
    BlueprintProviderType.blueprint.getter(v10, v9);
    Blueprint.item(for:)();

    v30 = v16 + 8;
    v29 = *(v16 + 8);
    (v29)(v18, v15);
    if (__swift_getEnumTagSinglePayload(v23, 1, v20) == 1)
    {
      return v50[1](v23, v51);
    }

    else
    {
      v31 = v20;
      v32 = v55;
      v33 = v52;
      (*(v55 + 4))(v52, v23, v31);
      v50 = v29;
      v51 = v30;
      v43 = v10;
      v44 = v9;
      v34 = v9;
      v35 = v33;
      BlueprintProviderType.blueprint.getter(v10, v34);
      v36 = v53;
      Blueprint.indexPath(forItem:)();
      (v50)(v18, v15);
      v37 = v45;
      if (__swift_getEnumTagSinglePayload(v36, 1, v45) == 1)
      {
        (v32)[1](v35, v31);
        return sub_1D7E54AA4(v36, sub_1D7E3D564);
      }

      else
      {
        v42 = v31;
        v38 = v48;
        v39 = v49;
        (*(v49 + 32))(v48, v36, v37);
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v41 = Strong;
          BlueprintProviderType.blueprint.getter(v43, v44);
          (*(*(v47 + 120) + 88))(v18, v35, v38, *(v47 + 96));

          (v50)(v18, v15);
        }

        (*(v39 + 8))(v38, v37);
        return (*(v55 + 1))(v35, v42);
      }
    }
  }

  return result;
}

void sub_1D8002454(uint64_t a1, void *a2, void *a3)
{
  swift_beginAccess();
  v6 = *(a1 + 16);
  type metadata accessor for PreviewViewController();
  if (swift_dynamicCastClass())
  {
    v7 = v6;
    v8 = sub_1D7F0E0A0();
    swift_beginAccess();
    v9 = *(a1 + 16);
    *(a1 + 16) = v8;

    v10 = v8;
    setPreviewing(viewController:previewing:)(v10, 0);
  }

  v11 = sub_1D8002628(a2, &selRef_splitViewController);
  v12 = sub_1D8002628(a2, &selRef_tabBarController);
  v13 = v12;
  if (v11)
  {
    swift_beginAccess();
    [v11 showViewController:*(a1 + 16) sender:a2];
  }

  else if (v12)
  {
    swift_beginAccess();
    [v13 showViewController:*(a1 + 16) sender:a2];
  }

  else
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = Strong;
      swift_beginAccess();
      [v15 showViewController:*(a1 + 16) sender:a2];
    }
  }

  sub_1D8001E0C(a3, a2);
}

id sub_1D8002628(uint64_t a1, SEL *a2)
{
  OUTLINED_FUNCTION_104_1();
  OUTLINED_FUNCTION_10(v4 + *(v3 + 200), v5);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v7 = Strong, v8 = [Strong *a2], v7, !v8))
  {
    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      v10 = v9;
      v11 = [v9 presentingViewController];

      v8 = [v11 *a2];
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

void sub_1D800270C(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = a1;
  BlueprintCollectionViewDelegate.collectionView(_:willPerformPreviewActionForMenuWith:animator:)(v8, v9, a5);

  swift_unknownObjectRelease();
}

UITargetedPreview_optional __swiftcall BlueprintCollectionViewDelegate.collectionView(_:previewForHighlightingContextMenuWithConfiguration:)(UICollectionView *_, UIContextMenuConfiguration previewForHighlightingContextMenuWithConfiguration)
{
  OUTLINED_FUNCTION_120();
  v80 = v5;
  v82 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_79_3();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v71 = v8;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_94();
  v72 = v10;
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_64();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for BlueprintLayoutItem(0, AssociatedTypeWitness, AssociatedConformanceWitness, v11);
  OUTLINED_FUNCTION_50(v12);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_94();
  v70 = v14;
  v15 = OUTLINED_FUNCTION_52_0();
  sub_1D7E3D564(v15);
  v17 = OUTLINED_FUNCTION_50(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_2();
  v75 = v18;
  OUTLINED_FUNCTION_52_0();
  v76 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v74 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13_2();
  v73 = v21;
  OUTLINED_FUNCTION_71_1();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_71_1();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_80_3();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_64();
  v22 = swift_getAssociatedConformanceWitness();
  v23 = OUTLINED_FUNCTION_101_1(v22);
  OUTLINED_FUNCTION_9();
  v79 = v24;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_21_11();
  v26 = OUTLINED_FUNCTION_33_0();
  type metadata accessor for BlueprintItem(v26, v27, &protocol requirements base descriptor for BlueprintProviderType, v28);
  OUTLINED_FUNCTION_46_5();
  sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2();
  v78 = v30;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_94();
  v77 = v32;
  if ([v82 allowsSelection])
  {
    *&v84 = [v80 identifier];
    sub_1D7F9DB88();
    if (swift_dynamicCast())
    {
      v81 = v6;
      v33 = OUTLINED_FUNCTION_114_1();
      BlueprintProviderType.blueprint.getter(v33, v34);
      Blueprint.item(for:)();

      v35 = *(v79 + 8);
      v35(v3, v23);
      v36 = OUTLINED_FUNCTION_109_1();
      OUTLINED_FUNCTION_43_0(v36, v37, v81);
      if (v45)
      {
        v38 = OUTLINED_FUNCTION_4_8();
        v39(v38);
      }

      else
      {
        v40 = OUTLINED_FUNCTION_15_5();
        v41(v40);
        v42 = OUTLINED_FUNCTION_114_1();
        BlueprintProviderType.blueprint.getter(v42, v43);
        Blueprint.indexPath(forItem:)();
        v44 = OUTLINED_FUNCTION_107_1();
        (v35)(v44);
        OUTLINED_FUNCTION_43_0(v75, 1, v76);
        if (v45)
        {
          (*(v78 + 8))(v77, v81);
          OUTLINED_FUNCTION_0_114();
          sub_1D7E54AA4(v75, v46);
        }

        else
        {
          (*(v74 + 32))(v73, v75, v76);
          v49 = sub_1D818E8E4();
          v50 = [v82 cellForItemAtIndexPath_];

          if (v50)
          {
            v51 = v50;
            v52 = [v51 window];
            if (v52)
            {

              v53 = OUTLINED_FUNCTION_110();
              BlueprintLayoutProviderType.layoutBlueprint.getter(v53, v54);
              OUTLINED_FUNCTION_16();
              v55 = swift_getAssociatedTypeWitness();
              OUTLINED_FUNCTION_111();
              OUTLINED_FUNCTION_65();
              v56 = swift_getAssociatedConformanceWitness();
              *&v84 = v55;
              *(&v84 + 1) = AssociatedTypeWitness;
              *&v85 = v56;
              *(&v85 + 1) = AssociatedConformanceWitness;
              v57 = OUTLINED_FUNCTION_118_0();
              v59 = type metadata accessor for BlueprintLayout(v57, v58);
              BlueprintLayout.subscript.getter(v73, v59);
              OUTLINED_FUNCTION_3_0();
              (*(v60 + 8))(v83, v59);
              (*(v71 + 32))(v72, v70, AssociatedTypeWitness);
              sub_1D7E0631C(0, &qword_1EDBB17D0, &protocol descriptor for DragPreviewable);
              if ((swift_dynamicCast() & 1) == 0)
              {
                v86 = 0;
                v84 = 0u;
                v85 = 0u;
              }

              sub_1D7E0A1A8(0, &unk_1EDBAE520, 0x1E69DD070);
              sub_1D7E25620(&v84, v83, &qword_1EDBB17C0, &qword_1EDBB17D0, &protocol descriptor for DragPreviewable);
              sub_1D8184638(v51, v83);

              v61 = OUTLINED_FUNCTION_73();
              v62(v61);
              (*(v78 + 8))(v77, v81);
              v63 = OUTLINED_FUNCTION_83_2();
              sub_1D7E25DBC(v63, v64, &qword_1EDBB17D0, &protocol descriptor for DragPreviewable);
            }

            else
            {

              v67 = OUTLINED_FUNCTION_73();
              v68(v67);
              (*(v78 + 8))(v77);
            }
          }

          else
          {
            v65 = OUTLINED_FUNCTION_73();
            v66(v65);
            (*(v78 + 8))(v77, v81);
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_100();
  result.value.super.isa = v47;
  result.is_nil = v48;
  return result;
}

id sub_1D8002FAC(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = BlueprintCollectionViewDelegate.collectionView(_:previewForHighlightingContextMenuWithConfiguration:)(v6, v7);

  return v9;
}

UITargetedPreview_optional __swiftcall BlueprintCollectionViewDelegate.collectionView(_:previewForDismissingContextMenuWithConfiguration:)(UICollectionView *_, UIContextMenuConfiguration previewForDismissingContextMenuWithConfiguration)
{
  OUTLINED_FUNCTION_120();
  v151 = v3;
  v137 = v4;
  v5 = *v2;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x70);
  v8 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x58);
  OUTLINED_FUNCTION_55_6();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v129 = v10;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_94();
  v130 = v12;
  v127 = v8;
  v128 = v7;
  v13 = OUTLINED_FUNCTION_111();
  v14 = v2;
  v125 = OUTLINED_FUNCTION_140_1(v13, v15, v16, v17, v18);
  v20 = type metadata accessor for BlueprintLayoutItem(0, AssociatedTypeWitness, v125, v19);
  OUTLINED_FUNCTION_50(v20);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_94();
  v126 = v22;
  v23 = OUTLINED_FUNCTION_52_0();
  sub_1D7E3D564(v23);
  v25 = OUTLINED_FUNCTION_50(v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_23();
  v136 = v26;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_21_12();
  v135 = v28;
  OUTLINED_FUNCTION_52_0();
  v146 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v138 = v29;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_23();
  v133 = v31;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_21_12();
  v132 = v33;
  v34 = *((v6 & v5) + 0x68);
  v35 = *((v6 & v5) + 0x50);
  OUTLINED_FUNCTION_71_1();
  v36 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_71_1();
  v37 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_65();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v149 = v35;
  OUTLINED_FUNCTION_80_3();
  v39 = swift_getAssociatedConformanceWitness();
  v152[0] = v36;
  v152[1] = v37;
  v152[2] = AssociatedConformanceWitness;
  v153 = v39;
  v40 = type metadata accessor for Blueprint(0, v152);
  OUTLINED_FUNCTION_9();
  v150 = v41;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_119();
  v43 = OUTLINED_FUNCTION_124();
  v46 = type metadata accessor for BlueprintItem(v43, v44, v39, v45);
  sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v140 = v48;
  v141 = v47;
  MEMORY[0x1EEE9AC00](v47);
  v50 = v123 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v53 = v123 - v52;
  OUTLINED_FUNCTION_2();
  v55 = v54;
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_23();
  v139 = v57;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_21_12();
  v134 = v59;
  *&v155 = [v151 identifier];
  v147 = sub_1D7F9DB88();
  v60 = swift_dynamicCast();
  v131 = AssociatedTypeWitness;
  v148 = v55;
  v145 = v34;
  v142 = v35;
  v143 = v40;
  if (v60)
  {
    v124 = v50;
    v123[1] = *((*MEMORY[0x1E69E7D40] & *v14) + 0x88);
    OUTLINED_FUNCTION_136_1();
    OUTLINED_FUNCTION_105_1();
    Blueprint.item(for:)();

    v61 = *(v150 + 8);
    v62 = OUTLINED_FUNCTION_128();
    v61(v62);
    v63 = OUTLINED_FUNCTION_109_1();
    OUTLINED_FUNCTION_43_0(v63, v64, v46);
    if (v69)
    {
      (*(v140 + 8))(v53, v141);
    }

    else
    {
      v66 = v134;
      (*(v148 + 32))();
      v144 = v46;
      OUTLINED_FUNCTION_136_1();
      v67 = v135;
      OUTLINED_FUNCTION_54_1();
      Blueprint.indexPath(forItem:)();
      v68 = OUTLINED_FUNCTION_128();
      v61(v68);
      OUTLINED_FUNCTION_43_0(v67, 1, v146);
      if (v69)
      {
        v46 = v144;
        (*(v148 + 8))(v66, v144);
        OUTLINED_FUNCTION_0_114();
        sub_1D7E54AA4(v67, v70);
      }

      else
      {
        (*(v138 + 32))(v132, v67, v146);
        v71 = sub_1D818E8E4();
        [v137 deselectItemAtIndexPath:v71 animated:1];

        OUTLINED_FUNCTION_82_2();
        v72 = OUTLINED_FUNCTION_11_0();
        v73(v72);
        v46 = v144;
        (*(v148 + 8))(v66, v144);
      }
    }

    v65 = MEMORY[0x1E69E7D40];
    v50 = v124;
  }

  else
  {
    v65 = MEMORY[0x1E69E7D40];
  }

  *&v155 = [v151 identifier];
  if (swift_dynamicCast())
  {
    v74 = v50;
    v75 = *((*v65 & *v14) + 0x88);
    v144 = v46;
    v151 = v75;
    v76 = v142;
    v77 = v149;
    BlueprintProviderType.blueprint.getter(v149, v145);
    OUTLINED_FUNCTION_15_5();
    v78 = v143;
    Blueprint.item(for:)();
    v79 = v144;

    v81 = v150 + 8;
    v80 = *(v150 + 8);
    v80(v76, v78);
    OUTLINED_FUNCTION_43_0(v74, 1, v79);
    if (v69)
    {
      (*(v140 + 8))(v74, v141);
    }

    else
    {
      v150 = v81;
      v82 = v136;
      v83 = OUTLINED_FUNCTION_67();
      v84(v83);
      BlueprintProviderType.blueprint.getter(v77, v145);
      Blueprint.indexPath(forItem:)();
      v80(v76, v78);
      v85 = OUTLINED_FUNCTION_109_1();
      OUTLINED_FUNCTION_43_0(v85, v86, v146);
      if (v87)
      {
        v88 = OUTLINED_FUNCTION_67();
        v89(v88);
        OUTLINED_FUNCTION_0_114();
        sub_1D7E54AA4(v82, v90);
      }

      else
      {
        (*(v138 + 32))(v133, v82, v146);
        v93 = sub_1D818E8E4();
        v94 = [v137 cellForItemAtIndexPath_];

        if (v94)
        {
          v158[0] = v94;
          sub_1D7E0A1A8(0, &qword_1EDBB3110, 0x1E69DC7F8);
          sub_1D7E0631C(0, &unk_1ECA0F5A0, &protocol descriptor for ContextMenuPreviewable);
          v95 = v94;
          if (OUTLINED_FUNCTION_100_1(&v155, v158))
          {
            sub_1D7E05450(&v155, v152);
            v96 = v153;
            v97 = v154;
            __swift_project_boxed_opaque_existential_1(v152, v153);
            OUTLINED_FUNCTION_82_2();
            v98(0, v96, v97);
            __swift_destroy_boxed_opaque_existential_1Tm(v152);
          }

          else
          {
            v157 = 0;
            v155 = 0u;
            v156 = 0u;
            sub_1D7E25DBC(&v155, &unk_1ECA0E630, &unk_1ECA0F5A0, &protocol descriptor for ContextMenuPreviewable);
          }

          v103 = v131;
          v104 = v95;
          v105 = [v104 window];
          if (v105)
          {

            v106 = OUTLINED_FUNCTION_110();
            BlueprintLayoutProviderType.layoutBlueprint.getter(v106, v107);
            OUTLINED_FUNCTION_16();
            v108 = swift_getAssociatedTypeWitness();
            OUTLINED_FUNCTION_111();
            OUTLINED_FUNCTION_80_3();
            v109 = swift_getAssociatedConformanceWitness();
            *&v155 = v108;
            *(&v155 + 1) = v103;
            *&v156 = v109;
            *(&v156 + 1) = v125;
            v110 = type metadata accessor for BlueprintLayout(0, &v155);
            v111 = v126;
            v112 = OUTLINED_FUNCTION_73();
            BlueprintLayout.subscript.getter(v112, v113);
            OUTLINED_FUNCTION_3_0();
            (*(v114 + 8))(v152, v110);
            (*(v129 + 32))(v130, v111, v103);
            sub_1D7E0631C(0, &qword_1EDBB17D0, &protocol descriptor for DragPreviewable);
            if ((swift_dynamicCast() & 1) == 0)
            {
              v157 = 0;
              v155 = 0u;
              v156 = 0u;
            }

            sub_1D7E0A1A8(0, &unk_1EDBAE520, 0x1E69DD070);
            sub_1D7E25620(&v155, v152, &qword_1EDBB17C0, &qword_1EDBB17D0, &protocol descriptor for DragPreviewable);
            sub_1D8184638(v104, v152);

            v115 = OUTLINED_FUNCTION_89_2();
            v116(v115);
            v117 = OUTLINED_FUNCTION_92_2();
            v118(v117);
            sub_1D7E25DBC(&v155, &qword_1EDBB17C0, &qword_1EDBB17D0, &protocol descriptor for DragPreviewable);
          }

          else
          {

            v119 = OUTLINED_FUNCTION_89_2();
            v120(v119);
            v121 = OUTLINED_FUNCTION_92_2();
            v122(v121);
          }
        }

        else
        {
          v99 = OUTLINED_FUNCTION_89_2();
          v100(v99);
          v101 = OUTLINED_FUNCTION_92_2();
          v102(v101);
        }
      }
    }
  }

  OUTLINED_FUNCTION_100();
  result.value.super.isa = v91;
  result.is_nil = v92;
  return result;
}

id sub_1D8003B9C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = BlueprintCollectionViewDelegate.collectionView(_:previewForDismissingContextMenuWithConfiguration:)(v6, v7);

  return v9;
}

void BlueprintCollectionViewDelegate.collectionView(_:willDisplayContextMenu:animator:)()
{
  OUTLINED_FUNCTION_120();
  v19 = v1;
  OUTLINED_FUNCTION_129_2();
  OUTLINED_FUNCTION_16();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_16();
  swift_getAssociatedTypeWitness();
  v2 = OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_140_1(v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_111();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_75_4(AssociatedConformanceWitness);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_21_11();
  OUTLINED_FUNCTION_129_2();
  OUTLINED_FUNCTION_8_4(v0 + *(v9 + 168), &v20);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    OUTLINED_FUNCTION_3_7();
    v12 = OUTLINED_FUNCTION_110();
    BlueprintProviderType.blueprint.getter(v12, v13);
    v14 = OUTLINED_FUNCTION_126_0();
    v15(v14);

    v16 = OUTLINED_FUNCTION_68_0();
    v17(v16);
  }

  type metadata accessor for SwipeActionCollectionView(0);
  if (swift_dynamicCastClass())
  {
    v18 = v19;
    sub_1D8082C8C(0);
  }

  OUTLINED_FUNCTION_100();
}

void BlueprintCollectionViewDelegate.collectionView(_:willEndContextMenuInteraction:animator:)()
{
  OUTLINED_FUNCTION_120();
  v19 = v1;
  OUTLINED_FUNCTION_129_2();
  OUTLINED_FUNCTION_16();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_16();
  swift_getAssociatedTypeWitness();
  v2 = OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_140_1(v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_111();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_75_4(AssociatedConformanceWitness);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_21_11();
  OUTLINED_FUNCTION_129_2();
  OUTLINED_FUNCTION_8_4(v0 + *(v9 + 168), &v20);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    OUTLINED_FUNCTION_3_7();
    v12 = OUTLINED_FUNCTION_110();
    BlueprintProviderType.blueprint.getter(v12, v13);
    v14 = OUTLINED_FUNCTION_126_0();
    v15(v14);

    v16 = OUTLINED_FUNCTION_68_0();
    v17(v16);
  }

  type metadata accessor for SwipeActionCollectionView(0);
  if (swift_dynamicCastClass())
  {
    v18 = v19;
    sub_1D8082C8C(1);
  }

  OUTLINED_FUNCTION_100();
}

void sub_1D8004068(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id))
{
  v9 = a3;
  v10 = a4;
  swift_unknownObjectRetain();
  v11 = a1;
  a6(v9);

  swift_unknownObjectRelease();
}

void BlueprintCollectionViewDelegate.collectionView(_:shouldHighlightItemAt:)()
{
  OUTLINED_FUNCTION_120();
  v51 = v1;
  v46 = v2;
  v48 = *v0;
  v49 = *MEMORY[0x1E69E7D40];
  v3 = *((v49 & v48) + 0x68);
  v4 = OUTLINED_FUNCTION_139_1(0, v3);
  OUTLINED_FUNCTION_9();
  v50 = v5;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_94();
  v47 = v7;
  v60[0] = OUTLINED_FUNCTION_139_1(255, v3);
  v60[1] = v4;
  v60[2] = swift_getAssociatedConformanceWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = OUTLINED_FUNCTION_118_0();
  v10 = type metadata accessor for Blueprint(v8, v9);
  OUTLINED_FUNCTION_9();
  v12 = v11;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v45 - v14;
  type metadata accessor for BlueprintItem(0, v4, AssociatedConformanceWitness, v16);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_46();
  BlueprintProviderType.blueprint.getter(v18, v19);
  Blueprint.subscript.getter();
  (*(v12 + 8))(v15, v10);
  OUTLINED_FUNCTION_55_6();
  v20();
  sub_1D7E0631C(0, qword_1EDBBB828, &protocol descriptor for Highlightable);
  if (!swift_dynamicCast())
  {
    v28 = OUTLINED_FUNCTION_158();
    v29(v28);
    v59 = 0;
    v57 = 0u;
    v58 = 0u;
    sub_1D7E25DBC(&v57, &unk_1ECA0F380, qword_1EDBBB828, &protocol descriptor for Highlightable);
    goto LABEL_16;
  }

  sub_1D7E05450(&v57, v60);
  v21 = v62;
  v22 = OUTLINED_FUNCTION_83_2();
  __swift_project_boxed_opaque_existential_1(v22, v23);
  v24 = OUTLINED_FUNCTION_6_1();
  v25(v24, v21);
  if (!v56)
  {
    v30 = OUTLINED_FUNCTION_158();
    v31(v30);
    goto LABEL_15;
  }

  if (v56 != 1)
  {
    v32 = sub_1D818E8E4();
    v33 = [v46 cellForItemAtIndexPath_];

    if (v33)
    {
      v52 = v33;
      sub_1D7E0A1A8(0, &qword_1EDBB3110, 0x1E69DC7F8);
      v34 = sub_1D7E0631C(0, qword_1EDBBA0F0, &protocol descriptor for ViewHighlightable);
      if (OUTLINED_FUNCTION_141_0(&v53, &v52, v35, v34))
      {
        if (*(&v54 + 1))
        {
          sub_1D7E05450(&v53, &v57);
          v36 = v59;
          __swift_project_boxed_opaque_existential_1(&v57, *(&v58 + 1));
          v37 = OUTLINED_FUNCTION_6_1();
          v38(v37, v36);
          v39 = OUTLINED_FUNCTION_4_8();
          v40(v39);
          __swift_destroy_boxed_opaque_existential_1Tm(&v57);
          __swift_destroy_boxed_opaque_existential_1Tm(v60);
          goto LABEL_16;
        }
      }

      else
      {
        v55 = 0;
        v53 = 0u;
        v54 = 0u;
      }

      v43 = OUTLINED_FUNCTION_4_8();
      v44(v43);
    }

    else
    {
      v41 = OUTLINED_FUNCTION_4_8();
      v42(v41);
      v55 = 0;
      v53 = 0u;
      v54 = 0u;
    }

    sub_1D7E25DBC(&v53, &unk_1EDBBA0E0, qword_1EDBBA0F0, &protocol descriptor for ViewHighlightable);
LABEL_15:
    __swift_destroy_boxed_opaque_existential_1Tm(v60);
    goto LABEL_16;
  }

  v26 = OUTLINED_FUNCTION_4_8();
  v27(v26);
  __swift_destroy_boxed_opaque_existential_1Tm(v60);
LABEL_16:
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D8004638(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_97_1();
  sub_1D818E994();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_119();
  sub_1D818E924();
  v11 = a3;
  v12 = v5;
  v13 = OUTLINED_FUNCTION_6_1();
  LOBYTE(a5) = a5(v13, v6);

  v14 = OUTLINED_FUNCTION_110();
  v15(v14);
  return a5 & 1;
}

uint64_t sub_1D800475C(uint64_t a1, uint64_t a2, void *a3, void *a4, void (*a5)(uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_97_1();
  sub_1D818E994();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_119();
  sub_1D818E924();
  v11 = a3;
  v12 = v5;
  v13 = OUTLINED_FUNCTION_6_1();
  a5(v13, v6);

  v14 = OUTLINED_FUNCTION_110();
  return v15(v14);
}

void BlueprintCollectionViewDelegate.collectionView(_:didEndDisplaying:forItemAt:)(void *a1, void *a2, uint64_t a3)
{
  v5 = v3;
  v8 = [a1 indexPathsForVisibleItems];
  OUTLINED_FUNCTION_46_5();
  sub_1D818E994();
  OUTLINED_FUNCTION_17_7();
  v9 = sub_1D8191314();

  v39 = a3;
  v10 = sub_1D7EB0860(sub_1D7EB0ED8, v38, v9);

  if (!v10)
  {
    OUTLINED_FUNCTION_10_19();
    LOBYTE(v45[0]) = 3;
    BlueprintImpressionManager.endImpression(at:view:triggerSource:)(a3, a2, v45, v11, v12, v13, v14, v15, v38[0], v38[1], v39, v40, v41, *(&v41 + 1), v42, *(&v42 + 1), v43, v44, v45[0], v45[1]);
  }

  OUTLINED_FUNCTION_26_10();
  v17 = *(v16 + 208);
  OUTLINED_FUNCTION_8_4(v5 + v17, v47);
  v18 = *(v5 + v17);
  OUTLINED_FUNCTION_26_10();
  OUTLINED_FUNCTION_8_4(v5 + *(v19 + 200), v46);
  Strong = swift_unknownObjectWeakLoadStrong();
  OUTLINED_FUNCTION_26_10();
  v22 = *(v5 + *(v21 + 264));
  type metadata accessor for BlueprintViewportTransitionManager();
  OUTLINED_FUNCTION_1_63();
  swift_allocObject();
  sub_1D7EA2E4C(v18, Strong, v22);
  v44 = a2;
  sub_1D7E0A1A8(0, &qword_1EDBB3110, 0x1E69DC7F8);
  sub_1D7E0631C(0, qword_1EDBB8580, &protocol descriptor for ViewControllerBackable);

  v23 = a2;
  if (swift_dynamicCast())
  {
    sub_1D7E05450(&v41, v45);
    __swift_project_boxed_opaque_existential_1(v45, v45[3]);
    v24 = OUTLINED_FUNCTION_111();
    v26 = v25(v24);
    v27 = v26;
    if (v26)
    {
      v28 = [v26 view];

      if (!v28)
      {
        __break(1u);
        return;
      }

      v27 = [v28 superview];
    }

    v29 = [v23 contentView];

    if (v27)
    {
      swift_unknownObjectRelease();
      if (v29 == v27)
      {
        sub_1D7F35A9C(v45);
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v45);
  }

  else
  {
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    sub_1D7E25DBC(&v41, &qword_1EDBB8578, qword_1EDBB8580, &protocol descriptor for ViewControllerBackable);
  }

  OUTLINED_FUNCTION_26_10();
  v31 = *(v30 + 224);
  OUTLINED_FUNCTION_8_4(v5 + v31, v45);
  v32 = *(v5 + v31);
  if (v32)
  {
    ObjectType = swift_getObjectType();
    if (dynamic_cast_existential_1_conditional(v23, ObjectType, &protocol descriptor for BlueprintViewportMonitorObserver))
    {
      v34 = v23;
      v35 = v32;
      OUTLINED_FUNCTION_158();
      BlueprintViewportMonitor.remove(observer:)();
      swift_getObjectType();
      v36 = OUTLINED_FUNCTION_128();
      v37(v36);
    }
  }
}

void BlueprintCollectionViewDelegate.collectionView(_:canEditItemAt:)()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_111_1();
  OUTLINED_FUNCTION_55_6();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_111();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = OUTLINED_FUNCTION_137_1(AssociatedConformanceWitness, v5, v6, v7);
  OUTLINED_FUNCTION_50(v8);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_16();
  v10 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_111();
  v21[0] = v10;
  v21[1] = AssociatedTypeWitness;
  v21[2] = swift_getAssociatedConformanceWitness();
  v22 = v1;
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_12_24();
  OUTLINED_FUNCTION_111_1();
  v12 = OUTLINED_FUNCTION_110();
  BlueprintProviderType.blueprint.getter(v12, v13);
  OUTLINED_FUNCTION_122_0();
  Blueprint.subscript.getter();
  v14 = OUTLINED_FUNCTION_46();
  v15(v14);
  v16 = OUTLINED_FUNCTION_91_2();
  v17(v16, v0, AssociatedTypeWitness);
  sub_1D7E0631C(0, &qword_1EDBB0730, &protocol descriptor for BlueprintViewActionable);
  OUTLINED_FUNCTION_92();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_39_7();
    v18 = OUTLINED_FUNCTION_3_1();
    v19(v18);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }

  else
  {
    OUTLINED_FUNCTION_90();
    sub_1D7E25DBC(&v20, &qword_1ECA0E650, &qword_1EDBB0730, &protocol descriptor for BlueprintViewActionable);
  }

  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D8004E8C(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_1D818E994();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818E924();
  v10 = a3;
  v11 = a1;
  BlueprintCollectionViewDelegate.collectionView(_:canEditItemAt:)();
  LOBYTE(a1) = v12;

  (*(v7 + 8))(v9, v6);
  return a1 & 1;
}

uint64_t BlueprintCollectionViewDelegate.collectionView(_:targetIndexPathForMoveOfItemFromOriginalIndexPath:atCurrentIndexPath:toProposedIndexPath:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v9 = *MEMORY[0x1E69E7D40] & *v4;
  OUTLINED_FUNCTION_3_7();
  v11 = (v4 + *(v10 + 232));
  OUTLINED_FUNCTION_8_4(v11, v21);
  if (*v11)
  {
    v12 = v11[1];
    ObjectType = swift_getObjectType();
    v14 = *(v12 + 8);
    swift_unknownObjectRetain();
    v14(a1, a3, ObjectType, v12);
    return swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_3_7();
    v17 = dragItems<A>(from:at:)(v4 + *(v16 + 136), a2, *(v9 + 80), *(v9 + 104));
    v18 = sub_1D7E36AB8(v17);

    sub_1D818E994();
    OUTLINED_FUNCTION_8();
    if (v18)
    {
      v20 = a3;
    }

    else
    {
      v20 = a1;
    }

    return (*(v19 + 16))(a4, v20);
  }
}

id sub_1D8005110(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a1;
  v7 = sub_1D818E994();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v25 - v18;
  sub_1D818E924();
  sub_1D818E924();
  sub_1D818E924();
  v20 = a3;
  v21 = v26;
  BlueprintCollectionViewDelegate.collectionView(_:targetIndexPathForMoveOfItemFromOriginalIndexPath:atCurrentIndexPath:toProposedIndexPath:)(v16, v13, v10, v19);

  v22 = *(v8 + 8);
  v22(v10, v7);
  v22(v13, v7);
  v22(v16, v7);
  v23 = sub_1D818E8E4();
  v22(v19, v7);

  return v23;
}

Swift::Void __swiftcall BlueprintCollectionViewDelegate.scrollViewWillBeginDragging(_:)(UIScrollView *a1)
{
  OUTLINED_FUNCTION_3_7();
  v3 = v1 + *(v2 + 192);
  OUTLINED_FUNCTION_8_4(v3, v8);
  if (!swift_unknownObjectWeakLoadStrong() || (v4 = *(v3 + 8), ObjectType = swift_getObjectType(), (*(v4 + 32))(v7, ObjectType, v4), swift_unknownObjectRelease(), (v7[0] & 1) == 0))
  {
    OUTLINED_FUNCTION_10_19();
    OUTLINED_FUNCTION_8_4(v1 + *(v6 + 184), v7);
    if (swift_weakLoadStrong())
    {
      KeyCommandManager.invalidate(clearState:)(1);
    }
  }
}

void sub_1D80053F0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  BlueprintCollectionViewDelegate.scrollViewWillBeginDragging(_:)(v5);
}

Swift::Void __swiftcall BlueprintCollectionViewDelegate.scrollViewDidEndDragging(_:willDecelerate:)(UIScrollView *_, Swift::Bool willDecelerate)
{
  if (!willDecelerate)
  {
    sub_1D7E499B0(_, 3);
    OUTLINED_FUNCTION_3_7();
    BlueprintImpressionManager.updateImpressions(triggerSource:)();
    OUTLINED_FUNCTION_10_19();
    OUTLINED_FUNCTION_138_1();
    OUTLINED_FUNCTION_55_7();
    v2();
  }
}

void sub_1D80054F0(void *a1, uint64_t a2, void *a3, Swift::Bool a4)
{
  v6 = a3;
  v7 = a1;
  BlueprintCollectionViewDelegate.scrollViewDidEndDragging(_:willDecelerate:)(v6, a4);
}

Swift::Void __swiftcall BlueprintCollectionViewDelegate.scrollViewDidEndDecelerating(_:)(UIScrollView *a1)
{
  sub_1D7E499B0(a1, 3);
  OUTLINED_FUNCTION_3_7();
  BlueprintImpressionManager.updateImpressions(triggerSource:)();
  OUTLINED_FUNCTION_10_19();
  OUTLINED_FUNCTION_138_1();
  OUTLINED_FUNCTION_55_7();
  v1();
}

void sub_1D80055FC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  BlueprintCollectionViewDelegate.scrollViewDidEndDecelerating(_:)(v4);
}

id BlueprintCollectionViewDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BlueprintCollectionViewDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D8005710(uint64_t a1)
{
  OUTLINED_FUNCTION_48_0();
  (*(v2 + 8))(v3 + v4);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_48_0();
  (*(v5 + 8))(a1 + v6);
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_1();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1DA715E30](a1 + *(v7 + 168));
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_1();
  swift_weakDestroy();
  OUTLINED_FUNCTION_1();
  sub_1D7E166A0(a1 + *(v9 + 192));
  OUTLINED_FUNCTION_1();
  MEMORY[0x1DA715E30](a1 + *(v10 + 200));
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_1();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_1();
  __swift_destroy_boxed_opaque_existential_1Tm((a1 + *(v12 + 272)));
  OUTLINED_FUNCTION_1();
  sub_1D7E25DBC(a1 + *(v13 + 280), &qword_1EDBB7AF0, qword_1EDBB7AF8, &protocol descriptor for KeyboardInputMonitorType);
  OUTLINED_FUNCTION_1();
  sub_1D7E25DBC(a1 + *(v14 + 288), &qword_1EDBB8200, qword_1EDBB8208, &protocol descriptor for BlueprintPrefetcherType);
  OUTLINED_FUNCTION_1();
  MEMORY[0x1DA715E30](a1 + *(v15 + 296));
  OUTLINED_FUNCTION_1();
}

uint64_t (*sub_1D80059C0(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = BlueprintCollectionViewDelegate.delegate.modify();
  return sub_1D7F41FE0;
}

uint64_t (*sub_1D8005A24(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = BlueprintCollectionViewDelegate.keyCommandManager.modify();
  return sub_1D7F41FE0;
}

uint64_t (*sub_1D8005A88(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = BlueprintCollectionViewDelegate.selectionProvider.modify(v2);
  return sub_1D7F41FE0;
}

uint64_t (*sub_1D8005AE8(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = BlueprintCollectionViewDelegate.viewportMonitor.modify(v2);
  return sub_1D7F41FE0;
}

uint64_t (*sub_1D8005B48(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = BlueprintCollectionViewDelegate.dragReorderDelegate.modify();
  return sub_1D7F413B4;
}

void BlueprintCollectionViewDelegate.blueprintInfiniteScrollManager(_:didCompleteRequestForIdentifier:)()
{
  OUTLINED_FUNCTION_3_7();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_1D7E499B0(Strong, 1);
  }

  else
  {
    v2 = sub_1D81919C4();
    OUTLINED_FUNCTION_16_22(v2, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740]);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1D819FAB0;
    OUTLINED_FUNCTION_3_7();
    v5 = (v0 + *(v4 + 312));
    v7 = *v5;
    v6 = v5[1];
    *(v8 + 56) = MEMORY[0x1E69E6158];
    *(v3 + 64) = sub_1D7E13BF4();
    *(v3 + 32) = v7;
    *(v3 + 40) = v6;
    sub_1D7E0A1A8(0, &qword_1EDBBE110, 0x1E69E9BF8);
    sub_1D8190DB4();
    v9 = sub_1D8191E44();
    sub_1D818FD44("Blueprint infinite scroll requests completed request without blueprint view, model=%{public}@", 93, 2, &dword_1D7DFF000);
  }
}

void sub_1D8005D94()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_64();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_81();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for BlueprintItem(0, AssociatedTypeWitness, AssociatedConformanceWitness, v2);
  OUTLINED_FUNCTION_9();
  v20 = v3;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_64();
  v5 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_5();
  v21[0] = v5;
  v21[1] = AssociatedTypeWitness;
  v21[2] = swift_getAssociatedConformanceWitness();
  v21[3] = AssociatedConformanceWitness;
  type metadata accessor for Blueprint(0, v21);
  OUTLINED_FUNCTION_9();
  v7 = v6;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_12_24();
  v9 = OUTLINED_FUNCTION_4_8();
  BlueprintProviderType.blueprint.getter(v9, v10);
  OUTLINED_FUNCTION_122_0();
  Blueprint.contains(indexPath:)();
  v12 = v11;
  v13 = *(v7 + 8);
  v14 = OUTLINED_FUNCTION_46();
  v13(v14);
  if (v12)
  {
    v15 = OUTLINED_FUNCTION_4_8();
    BlueprintProviderType.blueprint.getter(v15, v16);
    OUTLINED_FUNCTION_122_0();
    Blueprint.subscript.getter();
    v17 = OUTLINED_FUNCTION_46();
    v13(v17);
    BlueprintItem.identifier.getter(v20);
    v18 = OUTLINED_FUNCTION_88_2();
    v19(v18);
  }

  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D8006020@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v71 = a4;
  v69 = a2;
  v74 = a1;
  v75 = a5;
  v6 = *a3;
  v7 = *MEMORY[0x1E69E7D40];
  v8 = *((*MEMORY[0x1E69E7D40] & *a3) + 0x68);
  v9 = *((*MEMORY[0x1E69E7D40] & *a3) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v70 = v8;
  v66 = v9;
  v76 = swift_getAssociatedConformanceWitness();
  *&v80 = AssociatedTypeWitness;
  *(&v80 + 1) = v11;
  *&v81 = AssociatedConformanceWitness;
  *(&v81 + 1) = v76;
  v13 = type metadata accessor for Blueprint(0, &v80);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v68 = &v54 - v14;
  v15 = sub_1D818E994();
  v59 = *(v15 - 8);
  v60 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v65 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *((v7 & v6) + 0x70);
  v62 = a3;
  v18 = *((v7 & v6) + 0x58);
  v19 = swift_getAssociatedTypeWitness();
  v20 = swift_getAssociatedTypeWitness();
  v21 = swift_getAssociatedConformanceWitness();
  v58 = v17;
  v22 = swift_getAssociatedConformanceWitness();
  v72 = AssociatedConformanceWitness;
  v73 = AssociatedTypeWitness;
  *&v80 = AssociatedTypeWitness;
  *(&v80 + 1) = v11;
  v67 = v19;
  *&v81 = v19;
  *(&v81 + 1) = v20;
  v63 = v21;
  v64 = v20;
  v82 = AssociatedConformanceWitness;
  v83 = v76;
  v84 = v21;
  v85 = v22;
  v61 = v22;
  v23 = type metadata accessor for SwipeActionMenuContext(0, &v80);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v54 - v25;
  v28 = MEMORY[0x1EEE9AC00](v27);
  (*(v30 + 16))(&v54 - v29, v74, v11, v28);
  sub_1D7E0631C(0, qword_1EDBB14D8, &protocol descriptor for SwipeActionable);
  v31 = v11;
  if (swift_dynamicCast())
  {
    v74 = v26;
    sub_1D7E05450(&v80, v86);
    v32 = v87;
    v33 = v88;
    __swift_project_boxed_opaque_existential_1(v86, v87);
    (*(v33 + 8))(&v80, v32, v33);
    if (v80)
    {
      *v75 = v80;
    }

    else
    {
      v55 = v88;
      v56 = v87;
      v57 = __swift_project_boxed_opaque_existential_1(v86, v87);
      v35 = v65;
      (*(v59 + 16))(v65, v69, v60);
      v69 = v23;
      v60 = v24;
      v36 = v68;
      BlueprintProviderType.blueprint.getter(v66, v70);
      BlueprintLayoutProviderType.layoutBlueprint.getter(v18, v58);
      v37 = type metadata accessor for RendererEnvironment();
      v38 = objc_allocWithZone(v37);
      v39 = v71;
      v40 = v71;
      v41 = RendererEnvironment.init(scrollView:testing:)(v39, 0);
      v78 = v37;
      v79 = &protocol witness table for RendererEnvironment;
      *&v77 = v41;
      v42 = v61;
      v43 = v63;
      v44 = v76;
      v45 = v72;
      v46 = v73;
      v47 = v74;
      v48 = v35;
      v49 = v36;
      v50 = v31;
      v51 = v31;
      v52 = v67;
      v53 = v64;
      sub_1D8180248(v48, v49, &v80, &v77, v73, v51, v67, v64, v74, v72, v76, v63, v61);
      (*(v55 + 16))(v47, v46, v50, v52, v53, v45, v44, v43, v42, v56, v55);
      (*(v60 + 8))(v47, v69);
    }

    return __swift_destroy_boxed_opaque_existential_1Tm(v86);
  }

  else
  {
    v82 = 0;
    v80 = 0u;
    v81 = 0u;
    result = sub_1D7E25DBC(&v80, &unk_1ECA0F3B0, qword_1EDBB14D8, &protocol descriptor for SwipeActionable);
    *v75 = 0;
  }

  return result;
}

void sub_1D8006660()
{
  OUTLINED_FUNCTION_120();
  v61 = v1;
  v69 = v2;
  v72 = v3;
  v74 = v4;
  v75 = v5;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x68);
  v8 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  OUTLINED_FUNCTION_81();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_81();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_80_3();
  swift_getAssociatedConformanceWitness();
  v65 = v8;
  v66 = v7;
  OUTLINED_FUNCTION_64();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_101_1(AssociatedConformanceWitness);
  OUTLINED_FUNCTION_9();
  v63 = v12;
  v64 = v11;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_94();
  v62 = v14;
  v15 = OUTLINED_FUNCTION_52_0();
  type metadata accessor for BlueprintItem(v15, AssociatedTypeWitness, &protocol requirements base descriptor for BlueprintProviderType, v16);
  OUTLINED_FUNCTION_9();
  v67 = v18;
  v68 = v17;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_94();
  v73 = v20;
  v21 = OUTLINED_FUNCTION_74_5();
  OUTLINED_FUNCTION_9();
  v23 = v22;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_94();
  v71 = v25;
  OUTLINED_FUNCTION_67();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_46_5();
  OUTLINED_FUNCTION_105_1();
  v30 = type metadata accessor for BlueprintLayoutItem(v26, v27, v28, v29);
  OUTLINED_FUNCTION_50(v30);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_51();
  v70 = v0;
  v32 = OUTLINED_FUNCTION_68_0();
  BlueprintLayoutProviderType.layoutBlueprint.getter(v32, v33);
  OUTLINED_FUNCTION_10_8();
  v34 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_67();
  v35 = swift_getAssociatedConformanceWitness();
  *&v80 = v34;
  *(&v80 + 1) = v21;
  *&v81 = v35;
  *(&v81 + 1) = &protocol requirements base descriptor for BlueprintLayoutProviderType;
  v36 = OUTLINED_FUNCTION_118_0();
  v38 = type metadata accessor for BlueprintLayout(v36, v37);
  v39 = v72;
  v40 = OUTLINED_FUNCTION_54_1();
  BlueprintLayout.subscript.getter(v40, v41);
  OUTLINED_FUNCTION_3_0();
  (*(v42 + 8))(v78, v38);
  (*(v23 + 32))(v71, v6, v21);
  sub_1D7E0631C(0, &qword_1EDBB0898, &protocol descriptor for SwipeActionAppearance);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v82 = 0;
    v80 = 0u;
    v81 = 0u;
  }

  sub_1D7E25620(&v80, v78, &unk_1ECA0F3A0, &qword_1EDBB0898, &protocol descriptor for SwipeActionAppearance);
  if (v79)
  {
    __swift_project_boxed_opaque_existential_1(v78, v79);
    v43 = OUTLINED_FUNCTION_85();
    v44(v43);
    __swift_destroy_boxed_opaque_existential_1Tm(v78);
    v46 = v73;
    v45 = v74;
    if (v77 == 1 && v76 == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    sub_1D7E25DBC(v78, &unk_1ECA0F3A0, &qword_1EDBB0898, &protocol descriptor for SwipeActionAppearance);
    v46 = v73;
    v45 = v74;
  }

  v47 = v70;
  BlueprintProviderType.blueprint.getter(v65, v66);
  Blueprint.subscript.getter();
  (*(v63 + 8))(v62, v64);
  v69(v78, v46, v72, v70, v45);
  v48 = v78[0];
  if (!v78[0])
  {
    v55 = OUTLINED_FUNCTION_86_2();
    v56(v55);
LABEL_13:
    v59 = v75;
    v75[1] = 0u;
    v59[2] = 0u;
    *v59 = 0u;
    goto LABEL_14;
  }

  if (!*(v78[0] + 16))
  {
    v57 = OUTLINED_FUNCTION_86_2();
    v58(v57);

    goto LABEL_13;
  }

  v49 = v75;
  v50 = sub_1D7E25620(&v80, v75, &unk_1ECA0F3A0, &qword_1EDBB0898, &protocol descriptor for SwipeActionAppearance);
  MEMORY[0x1EEE9AC00](v50);
  *(&v60 - 4) = v47;
  *(&v60 - 3) = v45;
  *(&v60 - 2) = v39;
  sub_1D7FFB8F8(v61, (&v60 - 6), v48);
  v52 = v51;

  v53 = OUTLINED_FUNCTION_86_2();
  v54(v53);
  *(v49 + 40) = v52;
LABEL_14:
  sub_1D7E25DBC(&v80, &unk_1ECA0F3A0, &qword_1EDBB0898, &protocol descriptor for SwipeActionAppearance);
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D8006C50@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v71 = a4;
  v69 = a2;
  v74 = a1;
  v75 = a5;
  v6 = *a3;
  v7 = *MEMORY[0x1E69E7D40];
  v8 = *((*MEMORY[0x1E69E7D40] & *a3) + 0x68);
  v9 = *((*MEMORY[0x1E69E7D40] & *a3) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v70 = v8;
  v66 = v9;
  v76 = swift_getAssociatedConformanceWitness();
  *&v80 = AssociatedTypeWitness;
  *(&v80 + 1) = v11;
  *&v81 = AssociatedConformanceWitness;
  *(&v81 + 1) = v76;
  v13 = type metadata accessor for Blueprint(0, &v80);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v68 = &v54 - v14;
  v15 = sub_1D818E994();
  v59 = *(v15 - 8);
  v60 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v65 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *((v7 & v6) + 0x70);
  v62 = a3;
  v18 = *((v7 & v6) + 0x58);
  v19 = swift_getAssociatedTypeWitness();
  v20 = swift_getAssociatedTypeWitness();
  v21 = swift_getAssociatedConformanceWitness();
  v58 = v17;
  v22 = swift_getAssociatedConformanceWitness();
  v72 = AssociatedConformanceWitness;
  v73 = AssociatedTypeWitness;
  *&v80 = AssociatedTypeWitness;
  *(&v80 + 1) = v11;
  v67 = v19;
  *&v81 = v19;
  *(&v81 + 1) = v20;
  v63 = v21;
  v64 = v20;
  v82 = AssociatedConformanceWitness;
  v83 = v76;
  v84 = v21;
  v85 = v22;
  v61 = v22;
  v23 = type metadata accessor for SwipeActionMenuContext(0, &v80);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v54 - v25;
  v28 = MEMORY[0x1EEE9AC00](v27);
  (*(v30 + 16))(&v54 - v29, v74, v11, v28);
  sub_1D7E0631C(0, qword_1EDBB14D8, &protocol descriptor for SwipeActionable);
  v31 = v11;
  if (swift_dynamicCast())
  {
    v74 = v26;
    sub_1D7E05450(&v80, v86);
    v32 = v87;
    v33 = v88;
    __swift_project_boxed_opaque_existential_1(v86, v87);
    (*(v33 + 24))(&v80, v32, v33);
    if (v80)
    {
      *v75 = v80;
    }

    else
    {
      v55 = v88;
      v56 = v87;
      v57 = __swift_project_boxed_opaque_existential_1(v86, v87);
      v35 = v65;
      (*(v59 + 16))(v65, v69, v60);
      v69 = v23;
      v60 = v24;
      v36 = v68;
      BlueprintProviderType.blueprint.getter(v66, v70);
      BlueprintLayoutProviderType.layoutBlueprint.getter(v18, v58);
      v37 = type metadata accessor for RendererEnvironment();
      v38 = objc_allocWithZone(v37);
      v39 = v71;
      v40 = v71;
      v41 = RendererEnvironment.init(scrollView:testing:)(v39, 0);
      v78 = v37;
      v79 = &protocol witness table for RendererEnvironment;
      *&v77 = v41;
      v42 = v61;
      v43 = v63;
      v44 = v76;
      v45 = v72;
      v46 = v73;
      v47 = v74;
      v48 = v35;
      v49 = v36;
      v50 = v31;
      v51 = v31;
      v52 = v67;
      v53 = v64;
      sub_1D8180248(v48, v49, &v80, &v77, v73, v51, v67, v64, v74, v72, v76, v63, v61);
      (*(v55 + 32))(v47, v46, v50, v52, v53, v45, v44, v43, v42, v56, v55);
      (*(v60 + 8))(v47, v69);
    }

    return __swift_destroy_boxed_opaque_existential_1Tm(v86);
  }

  else
  {
    v82 = 0;
    v80 = 0u;
    v81 = 0u;
    result = sub_1D7E25DBC(&v80, &unk_1ECA0F3B0, qword_1EDBB14D8, &protocol descriptor for SwipeActionable);
    *v75 = 0;
  }

  return result;
}

double sub_1D8007290@<D0>(void *__src@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8)
{
  v51 = *MEMORY[0x1E69E7D40] & *a2;
  memcpy(v65, __src, sizeof(v65));
  v64 = 1;
  OUTLINED_FUNCTION_112_1();
  sub_1D7E25380(a2 + *(v11 + 272), v61);
  v12 = sub_1D818E8E4();
  v55 = [a3 cellForItemAtIndexPath_];

  memset(v66, 0, 32);
  v66[32] = 1;
  OUTLINED_FUNCTION_0_8();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  OUTLINED_FUNCTION_112_1();
  *(v16 + 16) = *(v15 + 80);
  *(v16 + 24) = *(v51 + 88);
  OUTLINED_FUNCTION_112_1();
  *(v18 + 40) = *(v17 + 104);
  *(v18 + 48) = *(v19 + 112);
  OUTLINED_FUNCTION_112_1();
  *(v21 + 64) = *(v20 + 128);
  *(v21 + 72) = v13;
  type metadata accessor for CommandExecutionSource();
  v22 = swift_allocObject();
  v23 = v62;
  v24 = v63;
  __swift_mutable_project_boxed_opaque_existential_1(v61, v62);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_15();
  v28 = v27 - v26;
  (*(v29 + 16))(v27 - v26);
  sub_1D7E3B938(&v64, v28, v55, v66, 0, a5, v14, v22, v23, v24, v49, v51, a4, v55, a5, a6, a8, v61[0], v61[1], v61[2], v62, v63);
  v58 = v30;
  __swift_destroy_boxed_opaque_existential_1Tm(v61);
  OUTLINED_FUNCTION_94_0();
  v32 = (a2 + *(v31 + 160));
  v33 = *v32;
  v34 = v32[1];
  v35 = OUTLINED_FUNCTION_124_1();
  v56 = v36(v35);
  v37 = OUTLINED_FUNCTION_124_1();
  v54 = v38(v37);
  v39 = OUTLINED_FUNCTION_124_1();
  LOBYTE(v28) = v40(v39);
  v52 = BYTE1(v65[8]);
  v41 = v65[1];
  v50 = v65[0];
  v42 = v65[2];
  sub_1D8190DB4();
  v43 = OUTLINED_FUNCTION_124_1();
  v44 = v42(v43);
  v46 = v45;
  v47 = swift_allocObject();
  memcpy(v47 + 2, v65, 0x68uLL);
  v47[15] = v33;
  v47[16] = v34;
  v47[17] = v58;
  *a7 = v56;
  *(a7 + 8) = v54;
  *(a7 + 16) = v28 & 1;
  *(a7 + 17) = v52;
  *(a7 + 24) = v50;
  *(a7 + 32) = v41;
  *(a7 + 40) = v44;
  *(a7 + 48) = v46;
  *(a7 + 56) = v60;
  *(a7 + 64) = v47;
  sub_1D7FF3B0C(v65, v61);
  swift_unknownObjectRetain();
  return result;
}

void sub_1D800760C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_120();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v46 = v27;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_16();
  swift_getAssociatedTypeWitness();
  v29 = OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_140_1(v29, v30, v31, v32, v33);
  OUTLINED_FUNCTION_111();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_75_4(AssociatedConformanceWitness);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_21_11();
  OUTLINED_FUNCTION_8_4(v24 + 16, &v48);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v37 = Strong;
    OUTLINED_FUNCTION_104_1();
    OUTLINED_FUNCTION_8_4(v39 + *(v38 + 168), &v47);
    v40 = swift_unknownObjectWeakLoadStrong();
    if (v40)
    {
      v41 = v40;
      v42 = OUTLINED_FUNCTION_110();
      BlueprintProviderType.blueprint.getter(v42, v43);
      (*(a21 + 176))(AssociatedTypeWitness, v46, v26, v22, a21);

      v44 = OUTLINED_FUNCTION_68_0();
      v45(v44);
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_100();
}

void sub_1D80077F4()
{
  OUTLINED_FUNCTION_120();
  v24 = v1;
  OUTLINED_FUNCTION_79_3();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_55_0();
  swift_getAssociatedConformanceWitness();
  v4 = OUTLINED_FUNCTION_120_1();
  v8 = type metadata accessor for BlueprintLayoutItem(v4, v5, v6, v7);
  OUTLINED_FUNCTION_50(v8);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_12_24();
  v10 = OUTLINED_FUNCTION_74();
  BlueprintLayoutProviderType.layoutBlueprint.getter(v10, v11);
  OUTLINED_FUNCTION_79_3();
  v12 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_55_0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v28[0] = v12;
  v28[1] = AssociatedTypeWitness;
  v28[2] = AssociatedConformanceWitness;
  v29 = v0;
  v14 = OUTLINED_FUNCTION_118_0();
  v16 = type metadata accessor for BlueprintLayout(v14, v15);
  BlueprintLayout.subscript.getter(v24, v16);
  OUTLINED_FUNCTION_3_0();
  (*(v17 + 8))(&v27, v16);
  OUTLINED_FUNCTION_105_1();
  v18();
  sub_1D7E0631C(0, &qword_1EDBB0898, &protocol descriptor for SwipeActionAppearance);
  if (swift_dynamicCast())
  {
    sub_1D7E05450(v25, v28);
    v19 = v30;
    v20 = OUTLINED_FUNCTION_83_2();
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v22 = OUTLINED_FUNCTION_6_1();
    v23(v22, v19);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
  }

  else
  {
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    sub_1D7E25DBC(v25, &unk_1ECA0F3A0, &qword_1EDBB0898, &protocol descriptor for SwipeActionAppearance);
  }

  OUTLINED_FUNCTION_100();
}

void sub_1D8007AA8()
{
  OUTLINED_FUNCTION_120();
  v24 = v2;
  OUTLINED_FUNCTION_79_3();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v23 = v4;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_94();
  v22 = v6;
  OUTLINED_FUNCTION_55_0();
  swift_getAssociatedConformanceWitness();
  v7 = OUTLINED_FUNCTION_120_1();
  v11 = type metadata accessor for BlueprintItem(v7, v8, v9, v10);
  OUTLINED_FUNCTION_50(v11);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_21_11();
  OUTLINED_FUNCTION_79_3();
  v13 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_55_0();
  v26[0] = v13;
  v26[1] = AssociatedTypeWitness;
  v26[2] = swift_getAssociatedConformanceWitness();
  v27 = v1;
  v14 = OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_9();
  v16 = v15;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_12_24();
  v18 = OUTLINED_FUNCTION_74();
  BlueprintProviderType.blueprint.getter(v18, v19);
  Blueprint.subscript.getter();
  (*(v16 + 8))(&protocol requirements base descriptor for BlueprintProviderType, v14);
  (*(v23 + 32))(v22, v0, AssociatedTypeWitness);
  sub_1D7E0631C(0, qword_1EDBB14D8, &protocol descriptor for SwipeActionable);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_39_7();
    v20 = OUTLINED_FUNCTION_3_1();
    v21(v20);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
  }

  else
  {
    OUTLINED_FUNCTION_90();
    sub_1D7E25DBC(&v25, &unk_1ECA0F3B0, qword_1EDBB14D8, &protocol descriptor for SwipeActionable);
    *v24 = 1;
  }

  OUTLINED_FUNCTION_100();
}

void sub_1D8007D70()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_111_1();
  OUTLINED_FUNCTION_55_6();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_111();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = OUTLINED_FUNCTION_137_1(AssociatedConformanceWitness, v5, v6, v7);
  OUTLINED_FUNCTION_50(v8);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_16();
  v10 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_111();
  v21[0] = v10;
  v21[1] = AssociatedTypeWitness;
  v21[2] = swift_getAssociatedConformanceWitness();
  v22 = v1;
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_12_24();
  OUTLINED_FUNCTION_111_1();
  v12 = OUTLINED_FUNCTION_110();
  BlueprintProviderType.blueprint.getter(v12, v13);
  OUTLINED_FUNCTION_122_0();
  Blueprint.subscript.getter();
  v14 = OUTLINED_FUNCTION_46();
  v15(v14);
  v16 = OUTLINED_FUNCTION_91_2();
  v17(v16, v0, AssociatedTypeWitness);
  sub_1D7E0631C(0, qword_1EDBB14D8, &protocol descriptor for SwipeActionable);
  OUTLINED_FUNCTION_92();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_39_7();
    v18 = OUTLINED_FUNCTION_3_1();
    v19(v18);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }

  else
  {
    OUTLINED_FUNCTION_90();
    sub_1D7E25DBC(&v20, &unk_1ECA0F3B0, qword_1EDBB14D8, &protocol descriptor for SwipeActionable);
  }

  OUTLINED_FUNCTION_100();
}

void sub_1D800800C()
{
  OUTLINED_FUNCTION_120();
  v24 = v1;
  v25 = v2;
  v3 = OUTLINED_FUNCTION_74_5();
  OUTLINED_FUNCTION_9();
  v5 = v4;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_94();
  v23 = v7;
  OUTLINED_FUNCTION_67();
  swift_getAssociatedConformanceWitness();
  v8 = OUTLINED_FUNCTION_46_5();
  v10 = type metadata accessor for BlueprintLayoutItem(v8, v3, &protocol requirements base descriptor for BlueprintLayoutProviderType, v9);
  OUTLINED_FUNCTION_50(v10);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_51();
  v12 = OUTLINED_FUNCTION_68_0();
  BlueprintLayoutProviderType.layoutBlueprint.getter(v12, v13);
  OUTLINED_FUNCTION_10_8();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_67();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v26 = AssociatedTypeWitness;
  *(&v26 + 1) = v3;
  *&v27 = AssociatedConformanceWitness;
  *(&v27 + 1) = &protocol requirements base descriptor for BlueprintLayoutProviderType;
  v16 = type metadata accessor for BlueprintLayout(0, &v26);
  BlueprintLayout.subscript.getter(v24, v16);
  OUTLINED_FUNCTION_3_0();
  (*(v17 + 8))(&v29, v16);
  (*(v5 + 32))(v23, v0, v3);
  sub_1D7E0631C(0, &qword_1EDBB0898, &protocol descriptor for SwipeActionAppearance);
  if (swift_dynamicCast())
  {
    sub_1D7E05450(&v26, v30);
    v18 = v30[4];
    v19 = OUTLINED_FUNCTION_83_2();
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v21 = OUTLINED_FUNCTION_6_1();
    v22(v21, v18);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
  }

  else
  {
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    sub_1D7E25DBC(&v26, &unk_1ECA0F3A0, &qword_1EDBB0898, &protocol descriptor for SwipeActionAppearance);
    *v25 = 0;
    v25[1] = 0;
  }

  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D80082C0()
{
  v0 = MEMORY[0x1E69E7CC0];
  v35 = MEMORY[0x1E69E7CC0];
  sub_1D8006660();
  if (v33)
  {
    OUTLINED_FUNCTION_93_1(v1, v2, v3, v4, v5, v6, v7, v8, v27, v28, v29, v30, v31, v32, v33);
    sub_1D7F0AA4C(v9);
    sub_1D8008794(__dst);
  }

  else
  {
    OUTLINED_FUNCTION_49_4(v1, v2);
  }

  OUTLINED_FUNCTION_85();
  sub_1D8006660();
  if (v33)
  {
    OUTLINED_FUNCTION_93_1(v10, v11, v12, v13, v14, v15, v16, v17, v27, v28, v29, v30, v31, v32, v33);
    sub_1D7F0AA4C(v18);
    sub_1D8008794(__dst);
  }

  else
  {
    OUTLINED_FUNCTION_49_4(v10, v11);
  }

  v19 = v35;
  v20 = *(v35 + 16);
  if (v20)
  {
    v34 = v0;
    sub_1D81922A4();
    v21 = 32;
    do
    {
      memcpy(__dst, (v19 + v21), 0x48uLL);
      v22 = __dst[0];
      OUTLINED_FUNCTION_115_1();
      v23 = swift_allocObject();
      memmove((v23 + 16), (v19 + v21), 0x48uLL);
      objc_allocWithZone(MEMORY[0x1E69DC5E8]);
      sub_1D8008738(__dst, &v28);
      sub_1D8190DB4();
      v24 = v22;
      sub_1D80A446C();
      sub_1D8192274();
      sub_1D81922B4();
      OUTLINED_FUNCTION_110();
      sub_1D81922C4();
      sub_1D8192284();
      v21 += 72;
      --v20;
    }

    while (v20);

    v25 = v34;
  }

  else
  {

    v25 = MEMORY[0x1E69E7CC0];
  }

  if (!sub_1D7E36AB8(v25))
  {

    return 0;
  }

  return v25;
}

unint64_t sub_1D8008590()
{
  result = qword_1EDBBC6B0;
  if (!qword_1EDBBC6B0)
  {
    sub_1D818E994();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBBC6B0);
  }

  return result;
}

void sub_1D80085E8(uint64_t a1)
{
  if (!qword_1ECA0F378)
  {
    v2 = type metadata accessor for SeparatorView();
    v4 = type metadata accessor for CollectionReusableView(a1, v2, &protocol witness table for SeparatorView, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1ECA0F378);
    }
  }
}

void sub_1D80086B4()
{
  if (!qword_1ECA0F390)
  {
    v0 = sub_1D8191E84();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA0F390);
    }
  }
}

uint64_t sub_1D8008704()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    (*(v0 + 72))();
  }

  return v1 & 1;
}

double CGSize.with(aspectRatio:)(double a1, double a2, double a3)
{
  if (a2 / a3 > a1)
  {
    return a1 * a3;
  }

  return a2;
}

CGSize __swiftcall CGSize.smallerThan(maxSize:)(CGSize maxSize)
{
  width = maxSize.width;
  v4 = 0.0;
  if (v1 <= 0.0 || v2 <= 0.0 || width <= 0.0)
  {
    height = 0.0;
  }

  else
  {
    height = 0.0;
    if (maxSize.height > 0.0)
    {
      if (width < v1 || maxSize.height < v2)
      {
        if (width / maxSize.height >= v1 / v2)
        {
          height = maxSize.height;
          v4 = maxSize.height * v1 / v2;
        }

        else
        {
          v4 = width;
          height = width * v2 / v1;
        }
      }

      else
      {
        v4 = v1;
        height = v2;
      }
    }
  }

  v7 = height;
  result.height = v7;
  result.width = v4;
  return result;
}

double PickerView.items.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_1_0(a1);
  sub_1D8190DB4();
  return result;
}

double sub_1D8008AAC@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_1ECA0F3D0;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  sub_1D8190DB4();
  return result;
}

id PickerView.items.setter(uint64_t a1)
{
  v3 = qword_1ECA0F3D0;
  swift_beginAccess();
  *&v1[v3] = a1;

  return [v1 reloadAllComponents];
}

id (*PickerView.items.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D8008C00;
}

id sub_1D8008C00(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);

    return [v5 reloadAllComponents];
  }

  return result;
}

uint64_t PickerView.selectedItem.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x1E69E7D40] & *v1;
  if (([v1 selectedRowInComponent_] & 0x8000000000000000) != 0)
  {
    v6 = *(v3 + 80);

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v6);
  }

  else
  {
    swift_beginAccess();
    v4 = *(v3 + 80);
    sub_1D81914C4();
    swift_endAccess();
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v4);
  }
}

uint64_t sub_1D8008D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1D8191E84();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1, v6);
  return PickerView.selectedItem.setter(v8);
}

uint64_t PickerView.selectedItem.setter(uint64_t a1)
{
  v2 = sub_1D8191E84();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

void (*PickerView.selectedItem.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = sub_1D8191E84();
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v6 = *(v5 + 64);
  v3[3] = __swift_coroFrameAllocStub(v6);
  v7 = __swift_coroFrameAllocStub(v6);
  v3[4] = v7;
  PickerView.selectedItem.getter(v7);
  return sub_1D8008FB8;
}

void sub_1D8008FB8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    PickerView.selectedItem.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    PickerView.selectedItem.setter(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

id PickerView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void PickerView.init(coder:)()
{
  v1 = qword_1ECA0F3D0;
  *(v0 + v1) = sub_1D81913C4();
  v2 = qword_1ECA0F3D8;
  OUTLINED_FUNCTION_0_115();
  swift_getFunctionTypeMetadata1();
  *(v0 + v2) = sub_1D81913C4();
  sub_1D81923A4();
  __break(1u);
}

id PickerView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_80();

  return [v2 v3];
}

id PickerView.init(frame:)()
{
  OUTLINED_FUNCTION_155();
  ObjectType = swift_getObjectType();
  v2 = qword_1ECA0F3D0;
  *(v0 + v2) = sub_1D81913C4();
  v3 = qword_1ECA0F3D8;
  OUTLINED_FUNCTION_0_115();
  swift_getFunctionTypeMetadata1();
  *(v0 + v3) = sub_1D81913C4();
  v4 = OUTLINED_FUNCTION_80();
  v7 = objc_msgSendSuper2(v5, v6, v4, v0, ObjectType);
  [v7 setDelegate_];
  [v7 setDataSource_];

  return v7;
}

Swift::Int __swiftcall PickerView.pickerView(_:numberOfRowsInComponent:)(UIPickerView *_, Swift::Int numberOfRowsInComponent)
{
  OUTLINED_FUNCTION_1_0(_, numberOfRowsInComponent);
  sub_1D8190DB4();
  v2 = sub_1D8191414();

  return v2;
}

Swift::Int sub_1D80093A0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v7 = PickerView.pickerView(_:numberOfRowsInComponent:)(v5, v6);

  return v7;
}

Swift::String_optional __swiftcall PickerView.pickerView(_:titleForRow:forComponent:)(UIPickerView *_, Swift::Int titleForRow, Swift::Int forComponent)
{
  v4 = *v3;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x50);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](_);
  v9 = &v16 - v8;
  swift_beginAccess();
  sub_1D81914C4();
  swift_endAccess();
  v10 = (*(*((v5 & v4) + 0x58) + 8))(v6);
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  v13 = v10;
  v14 = v12;
  result.value._object = v14;
  result.value._countAndFlagsBits = v13;
  return result;
}

id sub_1D8009548(void *a1, uint64_t a2, void *a3, Swift::Int a4)
{
  v6 = a3;
  v7 = a1;
  object = PickerView.pickerView(_:titleForRow:forComponent:)(v7, a4, v8).value._object;

  if (object)
  {
    v10 = sub_1D8190EE4();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

Swift::Void __swiftcall PickerView.pickerView(_:didSelectRow:inComponent:)(UIPickerView *_, Swift::Int didSelectRow, Swift::Int inComponent)
{
  swift_beginAccess();
  OUTLINED_FUNCTION_0_115();
  swift_getFunctionTypeMetadata1();
  sub_1D8191484();
  sub_1D8190DB4();
  swift_getWitnessTable();
  sub_1D8191224();
}

uint64_t sub_1D80096D4(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x50);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v10 - v5;
  v8 = *v7;
  swift_beginAccess();
  sub_1D81914C4();
  swift_endAccess();
  v8(v6);
  return (*(v4 + 8))(v6, v3);
}

void sub_1D8009814(void *a1, uint64_t a2, void *a3, Swift::Int a4)
{
  v6 = a3;
  v8 = a1;
  PickerView.pickerView(_:didSelectRow:inComponent:)(v8, a4, v7);
}

id PickerView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D80098B4()
{
}

uint64_t PickerView.onSelect(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = swift_allocObject();
  v7[2] = *((v6 & v5) + 0x50);
  v7[3] = *((v6 & v5) + 0x58);
  v7[4] = a1;
  v7[5] = a2;
  swift_beginAccess();
  OUTLINED_FUNCTION_0_115();
  swift_getFunctionTypeMetadata1();
  sub_1D8191484();

  sub_1D8191434();
  return swift_endAccess();
}

uint64_t BlueprintSectionCollapsibleStateManager.state(for:)@<X0>(BOOL *a1@<X8>)
{
  v6[0] = OUTLINED_FUNCTION_34_9();
  v6[1] = OUTLINED_FUNCTION_34_9();
  v6[2] = swift_getAssociatedConformanceWitness();
  v6[3] = swift_getAssociatedConformanceWitness();
  v2 = type metadata accessor for BlueprintSection(0, v6);
  v3 = BlueprintSection.identifier.getter(v2);
  BlueprintSectionCollapsibleStateManager.state(for:)(v3, v4, a1);
}

double BlueprintSectionCollapsibleStateManager.onStateChange(_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_12();
  v6 = (v2 + *(v5 + 120));
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  sub_1D7E0E10C(v7, v8);

  return result;
}

uint64_t BlueprintSectionCollapsibleStateManager.State.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

uint64_t sub_1D8009CE0(uint64_t a1)
{
  sub_1D81927E4();
  BlueprintSectionCollapsibleStateManager.State.hash(into:)();
  return sub_1D8192824();
}

uint64_t BlueprintSectionCollapsibleStateManager.__allocating_init(blueprintProvider:collapsedSectionsKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  BlueprintSectionCollapsibleStateManager.init(blueprintProvider:collapsedSectionsKey:)(a1, a2, a3);
  return v6;
}

char *BlueprintSectionCollapsibleStateManager.init(blueprintProvider:collapsedSectionsKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[*(*v3 + 112)] = MEMORY[0x1E69E7CD0];
  OUTLINED_FUNCTION_12();
  v8 = &v3[*(v7 + 120)];
  *v8 = 0;
  *(v8 + 1) = 0;
  OUTLINED_FUNCTION_12();
  v11 = *(v10 + 80);
  v12 = *(v11 - 8);
  (*(v12 + 16))(&v3[*(v9 + 104)], a1, v11);
  *(v3 + 2) = a2;
  *(v3 + 3) = a3;
  v13 = objc_opt_self();
  sub_1D8190DB4();
  v14 = [v13 standardUserDefaults];
  v15 = sub_1D8190EE4();

  v16 = [v14 stringArrayForKey_];

  if (v16)
  {
    v17 = sub_1D8191314();
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  v18 = sub_1D7E919E0(v17);
  (*(v12 + 8))(a1, v11);
  OUTLINED_FUNCTION_12();
  v20 = *(v19 + 112);
  OUTLINED_FUNCTION_12_15(v21);
  *&v3[v20] = v18;

  return v3;
}

Swift::Void __swiftcall BlueprintSectionCollapsibleStateManager.reset()()
{
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 112);
  OUTLINED_FUNCTION_12_15(v3);
  *(v0 + v2) = MEMORY[0x1E69E7CD0];

  v4 = [objc_opt_self() standardUserDefaults];
  v5 = sub_1D8190EE4();
  [v4 removeObjectForKey_];
}

uint64_t BlueprintSectionCollapsibleStateManager.state(for:)@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v35 = a1;
  v36 = a2;
  v34 = *v2;
  v3 = v34[11];
  v4 = v34[10];
  OUTLINED_FUNCTION_16();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_16();
  v6 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_111();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_111();
  v8 = swift_getAssociatedConformanceWitness();
  v37 = AssociatedTypeWitness;
  v38 = v6;
  v39 = AssociatedConformanceWitness;
  v40 = v8;
  v33 = type metadata accessor for Blueprint(0, &v37);
  OUTLINED_FUNCTION_9();
  v10 = v9;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  v37 = AssociatedTypeWitness;
  v38 = v6;
  v39 = AssociatedConformanceWitness;
  v40 = v8;
  v14 = type metadata accessor for BlueprintSection(255, &v37);
  sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v31 = v16;
  v32 = v15;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v29 - v18;
  v30 = *(v14 - 8);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v29 - v21;
  v34 = v2;
  BlueprintProviderType.blueprint.getter(v4, v3);
  v24 = type metadata accessor for BlueprintItem(0, v6, v8, v23);
  v25 = BlueprintItem.identifier.getter(v24);
  v26 = v33;
  Blueprint.section(forItem:)(v25);

  (*(v10 + 8))(v13, v26);
  if (__swift_getEnumTagSinglePayload(v19, 1, v14) == 1)
  {
    result = (*(v31 + 8))(v19, v32);
    *v36 = 1;
  }

  else
  {
    v28 = v30;
    (*(v30 + 32))(v22, v19, v14);
    BlueprintSectionCollapsibleStateManager.state(for:)(v36);
    return (*(v28 + 8))(v22, v14);
  }

  return result;
}

uint64_t BlueprintSectionCollapsibleStateManager.state(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  OUTLINED_FUNCTION_12();
  v8 = *(v7 + 112);
  swift_beginAccess();
  v9 = *(v3 + v8);
  sub_1D8190DB4();
  LOBYTE(a2) = sub_1D7F28578(a1, a2, v9);

  *a3 = (a2 & 1) == 0;
  return result;
}

uint64_t BlueprintSectionCollapsibleStateManager.toggle(section:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v4[11];
  v6 = v4[10];
  OUTLINED_FUNCTION_16();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_16();
  v8 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_111();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_111();
  v10 = swift_getAssociatedConformanceWitness();
  v50 = AssociatedTypeWitness;
  v51 = v8;
  v52 = AssociatedConformanceWitness;
  v53 = v10;
  v11 = type metadata accessor for BlueprintSection(255, &v50);
  v44 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v42 = v12;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v13);
  v47 = &v40 - v14;
  v50 = AssociatedTypeWitness;
  v51 = v8;
  v52 = AssociatedConformanceWitness;
  v53 = v10;
  type metadata accessor for Blueprint(0, &v50);
  OUTLINED_FUNCTION_9();
  v45 = v16;
  v46 = v15;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v40 - v18;
  v43 = *(v11 - 8);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v20);
  v41 = &v40 - v21;
  v22 = v4[14];
  swift_beginAccess();
  v23 = *(v2 + v22);
  sub_1D8190DB4();
  v48 = a1;
  v24 = BlueprintSection.identifier.getter(v11);
  v26 = sub_1D7F28578(v24, v25, v23);

  BlueprintSection.identifier.getter(v11);
  OUTLINED_FUNCTION_18_19();
  if (v26)
  {
    sub_1D800C0EC(v23, v26);
    swift_endAccess();
  }

  else
  {
    sub_1D7E91548(v49, v23, v26, v27);
    swift_endAccess();
  }

  v28 = [objc_opt_self() standardUserDefaults];
  v29 = sub_1D8190DB4();
  sub_1D81329BC(v29);
  v30 = sub_1D8191304();

  v31 = sub_1D8190EE4();
  [v28 setObject:v30 forKey:v31];

  BlueprintProviderType.blueprint.getter(v6, v5);
  BlueprintSection.identifier.getter(v11);
  v33 = v46;
  v32 = v47;
  Blueprint.subscript.getter();

  (*(v45 + 8))(v19, v33);
  if (__swift_getEnumTagSinglePayload(v32, 1, v11) == 1)
  {
    return (*(v42 + 8))(v32, v44);
  }

  v35 = v43;
  v36 = v41;
  (*(v43 + 32))(v41, v32, v11);
  v37 = v2 + *(*v2 + 120);
  swift_beginAccess();
  v38 = *v37;
  if (*v37)
  {
    v39 = *(v37 + 1);
    swift_endAccess();

    v38(v36);
    sub_1D7E0E10C(v38, v39);
    return (*(v35 + 8))(v36, v11);
  }

  else
  {
    (*(v35 + 8))(v36, v11);
    return swift_endAccess();
  }
}

void BlueprintSectionCollapsibleStateManager.sanitize(diff:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(*v2 + 88);
  v6 = *(*v2 + 80);
  OUTLINED_FUNCTION_16();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_16();
  v8 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_111();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v220 = v6;
  v221 = v5;
  OUTLINED_FUNCTION_111();
  v10 = swift_getAssociatedConformanceWitness();
  v232 = AssociatedTypeWitness;
  v233 = v8;
  v234 = AssociatedConformanceWitness;
  v235 = v10;
  v219 = type metadata accessor for Blueprint(0, &v232);
  OUTLINED_FUNCTION_9();
  v12 = v11;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v13);
  v218 = &v192 - v14;
  v232 = AssociatedTypeWitness;
  v233 = v8;
  v234 = AssociatedConformanceWitness;
  v235 = v10;
  v217 = type metadata accessor for BlueprintSection(0, &v232);
  OUTLINED_FUNCTION_9();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_28_0();
  v20 = (v18 - v19);
  MEMORY[0x1EEE9AC00](v21);
  v229 = &v192 - v22;
  sub_1D7E98BE0(0);
  v216 = v23;
  OUTLINED_FUNCTION_9();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v27);
  v228 = &v192 - v28;
  v230 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v208 = v29;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_24_1();
  v225 = v34;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_24_1();
  v226 = v37;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_24_1();
  v227 = v40;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v192 - v43;
  v45 = sub_1D818E8B4();
  OUTLINED_FUNCTION_9();
  v47 = v46;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v192 - v51;
  if (![objc_opt_self() isMainThread])
  {
    goto LABEL_87;
  }

  v196 = a2;
  v193 = v25;
  v194 = v16;
  v203 = v12;
  v215 = v20;
  sub_1D818E8A4();
  v53 = a1[3];
  v54 = a1[4];
  v198 = v52;
  v201 = a1;
  v55 = __swift_project_boxed_opaque_existential_1(a1, v53);
  v56 = *(v54 + 32);
  v57 = v214;
  v58 = v45;
  v209 = v55;
  v56(v53, v54);
  v59 = sub_1D818E874();
  v197 = v47;
  v60 = *(v47 + 8);
  v60(v57, v58);
  v222 = v47 + 8;
  v223 = v60;
  v195 = v58;
  if (v59)
  {
    v20 = 0;
  }

  else
  {
    v61 = v211;
    v56(v53, v54);
    v62 = v214;
    v20 = 0;
    sub_1D818E7E4();
    v60(v61, v58);
    v63 = v198;
    v60(v198, v58);
    (*(v197 + 32))(v63, v62, v58);
  }

  OUTLINED_FUNCTION_16_23();
  v64 = *(v58 + 24);
  v47 = *(v58 + 32);
  __swift_project_boxed_opaque_existential_1(v58, v64);
  v65 = OUTLINED_FUNCTION_21_15();
  v67 = *(v66(v65) + 16);

  v68 = v208;
  if (!v67)
  {
    v200 = MEMORY[0x1E69E7CC0];
    v72 = v223;
    goto LABEL_18;
  }

  v47 = *(v58 + 32);
  __swift_project_boxed_opaque_existential_1(v58, *(v58 + 24));
  v69 = OUTLINED_FUNCTION_21_15();
  v64 = v70(v69);
  OUTLINED_FUNCTION_15_21();
  v211 = v71;
  OUTLINED_FUNCTION_26_11(MEMORY[0x1E69E7CC0]);
  while (1)
  {
    v72 = v223;
    if (v56 == v58)
    {

      OUTLINED_FUNCTION_16_23();
LABEL_18:
      OUTLINED_FUNCTION_2_80();
      v80 = OUTLINED_FUNCTION_5_43();
      v82 = *(v81(v80) + 16);

      if (v82)
      {
        OUTLINED_FUNCTION_2_80();
        v83 = OUTLINED_FUNCTION_5_43();
        v44 = v84(v83);
        OUTLINED_FUNCTION_15_21();
        v213 = v85;
        OUTLINED_FUNCTION_26_11(MEMORY[0x1E69E7CC0]);
        while (v56 != v58)
        {
          if (v58 >= *(v44 + 2))
          {
            goto LABEL_84;
          }

          OUTLINED_FUNCTION_3_74();
          v86 = v227;
          v87(v227);
          if (sub_1D7EC58A4(v86, v67))
          {
            v211 = *v213;
            (v211)(v212, v227, v230);
            v88 = v199;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v232 = v88;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              OUTLINED_FUNCTION_6_50();
              v67 = v224;
              v88 = v232;
            }

            v91 = *(v88 + 16);
            v90 = *(v88 + 24);
            v92 = (v91 + 1);
            if (v91 >= v90 >> 1)
            {
              OUTLINED_FUNCTION_13_26(v90);
              v209 = v93;
              v202 = v94;
              sub_1D7EB0144();
              v92 = v209;
              v67 = v224;
              v88 = v232;
            }

            ++v58;
            *(v88 + 16) = v92;
            v199 = v88;
            OUTLINED_FUNCTION_27_12();
            v211();
          }

          else
          {
            (*v47)(v227, v230);
            ++v58;
          }
        }

        OUTLINED_FUNCTION_16_23();
        v72 = v223;
      }

      else
      {
        v199 = MEMORY[0x1E69E7CC0];
      }

      OUTLINED_FUNCTION_2_80();
      v95 = OUTLINED_FUNCTION_5_43();
      v97 = *(v96(v95) + 16);

      if (v97)
      {
        OUTLINED_FUNCTION_2_80();
        v98 = OUTLINED_FUNCTION_5_43();
        v44 = v99(v98);
        v58 = 0;
        v100 = *(v44 + 2);
        v227 = v68 + 16;
        v214 = (v68 + 32);
        OUTLINED_FUNCTION_26_11(MEMORY[0x1E69E7CC0]);
        while (v100 != v58)
        {
          if (v58 >= *(v44 + 2))
          {
            goto LABEL_85;
          }

          OUTLINED_FUNCTION_3_74();
          v47 = v226;
          v101(v226);
          if (sub_1D7EC58A4(v47, v67))
          {
            v213 = *v214;
            (v213)(v210, v226, v230);
            v47 = v211;
            v102 = swift_isUniquelyReferenced_nonNull_native();
            v232 = v47;
            if ((v102 & 1) == 0)
            {
              OUTLINED_FUNCTION_6_50();
              OUTLINED_FUNCTION_24_11();
            }

            v104 = *(v47 + 16);
            v103 = *(v47 + 24);
            v105 = v104 + 1;
            if (v104 >= v103 >> 1)
            {
              OUTLINED_FUNCTION_13_26(v103);
              v47 = v106;
              v212 = v107;
              sub_1D7EB0144();
              OUTLINED_FUNCTION_24_11();
            }

            ++v58;
            *(v47 + 16) = v105;
            v211 = v47;
            OUTLINED_FUNCTION_27_12();
            v213();
          }

          else
          {
            (*(v68 + 8))(v226, v230);
            ++v58;
          }
        }

        OUTLINED_FUNCTION_16_23();
        v72 = v223;
      }

      else
      {
        v211 = MEMORY[0x1E69E7CC0];
      }

      OUTLINED_FUNCTION_2_80();
      v108 = OUTLINED_FUNCTION_5_43();
      v110 = *(v109(v108) + 16);

      if (v110)
      {
        OUTLINED_FUNCTION_2_80();
        v111 = OUTLINED_FUNCTION_5_43();
        v44 = v112(v111);
        v58 = 0;
        v113 = *(v44 + 2);
        v226 = (v68 + 32);
        v227 = v68 + 16;
        OUTLINED_FUNCTION_26_11(MEMORY[0x1E69E7CC0]);
        while (v113 != v58)
        {
          if (v58 >= *(v44 + 2))
          {
            goto LABEL_86;
          }

          OUTLINED_FUNCTION_3_74();
          v47 = v225;
          v114(v225);
          if (sub_1D7EC58A4(v47, v67))
          {
            v214 = *v226;
            (v214)(v204, v225, v230);
            v47 = v209;
            v115 = swift_isUniquelyReferenced_nonNull_native();
            v232 = v47;
            if ((v115 & 1) == 0)
            {
              OUTLINED_FUNCTION_6_50();
              OUTLINED_FUNCTION_24_11();
            }

            v117 = *(v47 + 16);
            v116 = *(v47 + 24);
            v118 = v117 + 1;
            if (v117 >= v116 >> 1)
            {
              OUTLINED_FUNCTION_13_26(v116);
              v47 = v119;
              v213 = v120;
              sub_1D7EB0144();
              OUTLINED_FUNCTION_24_11();
            }

            ++v58;
            *(v47 + 16) = v118;
            v209 = v47;
            OUTLINED_FUNCTION_27_12();
            v214();
          }

          else
          {
            (*(v68 + 8))(v225, v230);
            ++v58;
          }
        }

        OUTLINED_FUNCTION_16_23();
        v72 = v223;
      }

      else
      {
        v209 = MEMORY[0x1E69E7CC0];
      }

      v121 = *(v58 + 24);
      v122 = *(v58 + 32);
      __swift_project_boxed_opaque_existential_1(v58, v121);
      v123 = (*(v122 + 80))(v121, v122);
      v124 = *(v123 + 16);
      if (!v124)
      {

        v210 = MEMORY[0x1E69E7CC0];
LABEL_82:
        OUTLINED_FUNCTION_22_12();
        v180 = *(v64 + 16);
        v181 = type metadata accessor for Diff(0);
        v182 = v196;
        v196[3] = v181;
        v182[4] = sub_1D7E2DB00(&qword_1EDBB3F18, type metadata accessor for Diff, &protocol conformance descriptor for Diff);
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v182);
        v184 = OUTLINED_FUNCTION_111();
        v180(v184);
        OUTLINED_FUNCTION_22_12();
        v185 = OUTLINED_FUNCTION_111();
        v186(v185);
        v187 = v198;
        v188 = v195;
        (*(v197 + 16))(boxed_opaque_existential_0 + v181[6], v198, v195);
        OUTLINED_FUNCTION_22_12();
        v189 = OUTLINED_FUNCTION_111();
        v191 = v190(v189);
        sub_1D818E8A4();
        *(boxed_opaque_existential_0 + v181[8]) = v191;
        OUTLINED_FUNCTION_19_17(v181[9]);
        OUTLINED_FUNCTION_19_17(v181[10]);
        OUTLINED_FUNCTION_19_17(v181[11]);
        OUTLINED_FUNCTION_19_17(v181[12]);
        OUTLINED_FUNCTION_19_17(v181[13]);
        v72(v187, v188);
        return;
      }

      v214 = *(*v224 + 104);
      v125 = (*(v193 + 80) + 32) & ~*(v193 + 80);
      v192 = v123;
      v202 = v125;
      v126 = v123 + v125;
      v225 = *(v193 + 72);
      v213 = (v203 + 8);
      v212 = (v194 + 8);
      v204 = (v68 + 16);
      v203 = v68 + 32;
      v210 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v226 = v126;
        v227 = v124;
        v64 = v228;
        sub_1D800C244(v126, v228);
        v127 = v218;
        v128 = v220;
        v129 = v221;
        BlueprintProviderType.blueprint.getter(v220, v221);
        sub_1D818E974();
        v130 = v219;
        Blueprint.subscript.getter();
        v131 = *v213;
        (*v213)(v127, v130);
        BlueprintProviderType.blueprint.getter(v128, v129);
        v132 = *(v216 + 36);
        sub_1D818E974();
        Blueprint.subscript.getter();
        (v131)(v127, v130);
        BlueprintSectionCollapsibleStateManager.state(for:)(&v232);
        LOBYTE(v131) = v232;
        BlueprintSectionCollapsibleStateManager.state(for:)(&v231);
        if (v131)
        {
          v133 = v211;
          v64 = v210;
          if (v231)
          {
            sub_1D800C244(v228, v207);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v158 = OUTLINED_FUNCTION_17_18();
              sub_1D7EE5484(v158, v159, v160, v64);
              v64 = v161;
            }

            v135 = *(v64 + 16);
            v134 = *(v64 + 24);
            if (v135 >= v134 >> 1)
            {
              v162 = OUTLINED_FUNCTION_12_27(v134);
              sub_1D7EE5484(v162, v163, v164, v64);
              v64 = v165;
            }

            v136 = *v212;
            v137 = OUTLINED_FUNCTION_11_30();
            v136(v137);
            v138 = OUTLINED_FUNCTION_23_10();
            v136(v138);
            sub_1D7FE84DC(v228);
            *(v64 + 16) = v135 + 1;
            v210 = v64;
            sub_1D800C2A8(v207, v64 + v202 + v135 * v225);
            goto LABEL_79;
          }

          (*v204)(v206, v228, v230);
          v149 = swift_isUniquelyReferenced_nonNull_native();
          v64 = v208;
          if ((v149 & 1) == 0)
          {
            v173 = OUTLINED_FUNCTION_17_18();
            sub_1D7EAEB70(v173, v174, v175, v133);
            v133 = v176;
          }

          v150 = *(v133 + 24);
          if (*(v133 + 16) >= v150 >> 1)
          {
            v177 = OUTLINED_FUNCTION_12_27(v150);
            sub_1D7EAEB70(v177, v178, v179, v133);
          }

          v151 = *v212;
          v152 = OUTLINED_FUNCTION_11_30();
          v151(v152);
          v153 = OUTLINED_FUNCTION_23_10();
          v151(v153);
          sub_1D7FE84DC(v228);
          OUTLINED_FUNCTION_25_9();
          v146 = OUTLINED_FUNCTION_20_16(v154);
          v148 = &v237;
        }

        else
        {
          if (!v231)
          {
            v155 = *v212;
            v156 = OUTLINED_FUNCTION_11_30();
            v155(v156);
            v157 = OUTLINED_FUNCTION_23_10();
            v155(v157);
            sub_1D7FE84DC(v228);
            goto LABEL_79;
          }

          (*v204)(v205, v228 + v132, v230);
          v139 = v209;
          v140 = swift_isUniquelyReferenced_nonNull_native();
          v64 = v208;
          if ((v140 & 1) == 0)
          {
            v166 = OUTLINED_FUNCTION_17_18();
            sub_1D7EAEB70(v166, v167, v168, v139);
            v139 = v169;
          }

          v141 = *(v139 + 24);
          if (*(v139 + 16) >= v141 >> 1)
          {
            v170 = OUTLINED_FUNCTION_12_27(v141);
            sub_1D7EAEB70(v170, v171, v172, v139);
          }

          v142 = *v212;
          v143 = OUTLINED_FUNCTION_11_30();
          v142(v143);
          v144 = OUTLINED_FUNCTION_23_10();
          v142(v144);
          sub_1D7FE84DC(v228);
          OUTLINED_FUNCTION_25_9();
          v146 = OUTLINED_FUNCTION_20_16(v145);
          v148 = &v236;
        }

        v147(v146, *(v148 - 32), v230);
LABEL_79:
        v126 = v226 + v225;
        v124 = v227 - 1;
        if (v227 == 1)
        {

          v72 = v223;
          OUTLINED_FUNCTION_16_23();
          goto LABEL_82;
        }
      }
    }

    if (v58 >= *(v64 + 16))
    {
      break;
    }

    (*(v68 + 16))(v44, v64 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v58, v230);
    if (sub_1D7EC58A4(v44, v67))
    {
      v209 = *v211;
      (v209)(v213, v44, v230);
      v73 = swift_isUniquelyReferenced_nonNull_native();
      v74 = v200;
      v232 = v200;
      if ((v73 & 1) == 0)
      {
        OUTLINED_FUNCTION_6_50();
        v67 = v224;
        v74 = v232;
      }

      v76 = *(v74 + 16);
      v75 = *(v74 + 24);
      v77 = v76 + 1;
      if (v76 >= v75 >> 1)
      {
        OUTLINED_FUNCTION_13_26(v75);
        v202 = v78;
        v200 = v79;
        sub_1D7EB0144();
        v77 = v202;
        v67 = v224;
        v74 = v232;
      }

      ++v58;
      *(v74 + 16) = v77;
      v200 = v74;
      OUTLINED_FUNCTION_27_12();
      v209();
    }

    else
    {
      (*v47)(v44, v230);
      ++v58;
    }
  }

  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);

  (*v47)(v44, v230);

  __break(1u);
}

uint64_t sub_1D800BD64(uint64_t a1, uint64_t a2)
{
  v16[1] = a1;
  v2 = *(*a2 + 88);
  v3 = *(*a2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = swift_getAssociatedConformanceWitness();
  v17 = AssociatedTypeWitness;
  v18 = v5;
  v19 = AssociatedConformanceWitness;
  v20 = v7;
  v16[0] = type metadata accessor for BlueprintSection(0, &v17);
  v8 = *(v16[0] - 8);
  MEMORY[0x1EEE9AC00](v16[0]);
  v10 = v16 - v9;
  v17 = AssociatedTypeWitness;
  v18 = v5;
  v19 = AssociatedConformanceWitness;
  v20 = v7;
  v11 = type metadata accessor for Blueprint(0, &v17);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v16 - v13;
  BlueprintProviderType.blueprint.getter(v3, v2);
  Blueprint.subscript.getter();
  (*(v12 + 8))(v14, v11);
  BlueprintSectionCollapsibleStateManager.state(for:)(&v17);
  (*(v8 + 8))(v10, v16[0]);
  return v17;
}

char *BlueprintSectionCollapsibleStateManager.deinit()
{
  v1 = *v0;

  OUTLINED_FUNCTION_12();
  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(v2 + 104)]);
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_12();
  sub_1D7E0E10C(*&v0[*(v3 + 120)], *&v0[*(v3 + 120) + 8]);
  return v0;
}

uint64_t BlueprintSectionCollapsibleStateManager.__deallocating_deinit()
{
  BlueprintSectionCollapsibleStateManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D800C0EC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1D81927E4();
  sub_1D8190FF4();
  v6 = sub_1D8192824();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      return 0;
    }

    v9 = (*(v5 + 48) + 16 * v8);
    v10 = *v9 == a1 && v9[1] == a2;
    if (v10 || (sub_1D8192634() & 1) != 0)
    {
      break;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v15 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D7F5C484(isUniquelyReferenced_nonNull_native);
    v12 = v15;
  }

  v13 = *(*(v12 + 48) + 16 * v8);
  sub_1D800C718(v8);
  *v2 = v15;
  return v13;
}

uint64_t sub_1D800C244(uint64_t a1, uint64_t a2)
{
  sub_1D7E98BE0(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D800C2A8(uint64_t a1, uint64_t a2)
{
  sub_1D7E98BE0(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *sub_1D800C354(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D800C438(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  if ((*v2 & 0xC000000000000001) == 0)
  {
    sub_1D81927E4();
    v9 = *(a1 + 16);
    v10 = *(a1 + 24);
    sub_1D8190FF4();
    v11 = sub_1D8192824();
    v12 = ~(-1 << *(v4 + 32));
    while (1)
    {
      v13 = v11 & v12;
      if (((*(v4 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
      {
        break;
      }

      v14 = *(*(v4 + 48) + 8 * v13);
      v15 = *(v14 + 16) == v9 && *(v14 + 24) == v10;
      if (v15 || (sub_1D8192634() & 1) != 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = *v2;
        v19 = *v2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D7F5C83C();
          v17 = v19;
        }

        v8 = *(*(v17 + 48) + 8 * v13);
        sub_1D800C8D0(v13);
        *v2 = v19;
        return v8;
      }

      v11 = v13 + 1;
    }

    return 0;
  }

  if (v4 < 0)
  {
    v5 = *v2;
  }

  else
  {
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
  }

  sub_1D8190DB4();

  v6 = sub_1D81920E4();

  if ((v6 & 1) == 0)
  {

    return 0;
  }

  sub_1D800C5B8(v5, a1);
  v8 = v7;

  return v8;
}

void sub_1D800C5B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v5 = sub_1D81920A4();
  v6 = swift_unknownObjectRetain();
  v7 = sub_1D7F5A534(v6, v5);
  v17 = v7;
  sub_1D81927E4();
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);

  sub_1D8190FF4();
  v10 = sub_1D8192824();
  v11 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v12 = v10 & v11;
    if (((*(v7 + 56 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
    {
      break;
    }

    v13 = *(*(v7 + 48) + 8 * v12);
    v14 = *(v13 + 16) == v8 && *(v13 + 24) == v9;
    if (v14 || (sub_1D8192634() & 1) != 0)
    {

      v15 = *(*(v7 + 48) + 8 * v12);
      sub_1D800C8D0(v12);
      v16 = v8 == *(v15 + 16) && v9 == *(v15 + 24);
      if (v16 || (sub_1D8192634() & 1) != 0)
      {
        *v3 = v17;
        return;
      }

      __break(1u);
      break;
    }

    v10 = v12 + 1;
  }

  __break(1u);
}

void sub_1D800C718(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1D8192024();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1D81927E4();
        sub_1D8190DB4();
        sub_1D8190FF4();
        v10 = sub_1D8192824();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 16 * v2);
            v16 = (v14 + 16 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }
}

void sub_1D800C8D0(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1D8192024();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1D81927E4();

        sub_1D8190FF4();
        v10 = sub_1D8192824();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 8 * v2);
            v16 = (v14 + 8 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }
}

unint64_t sub_1D800CAF0()
{
  result = qword_1ECA0F520;
  if (!qword_1ECA0F520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0F520);
  }

  return result;
}

unint64_t sub_1D800CB48()
{
  result = qword_1ECA0F528;
  if (!qword_1ECA0F528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0F528);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CardSplitViewPresentation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x1C)
  {
    if (a2 + 228 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 228) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 229;
    return v5 + 1;
  }

LABEL_17:
  v5 = (*a1 & 0x18 | (*a1 >> 5)) ^ 0x1F;
  if (v5 >= 0x1B)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *storeEnumTagSinglePayload for CardSplitViewPresentation(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 228 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 228) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x1C)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x1B)
  {
    v6 = ((a2 - 28) >> 8) + 1;
    *result = a2 - 28;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = 8 * (((-a2 >> 3) & 3) - 4 * a2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D800CD08(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 5;
  }

  else
  {
    return (v1 & 7u) + 4;
  }
}

_BYTE *sub_1D800CD40(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void __swiftcall UIViewController.findSourceView(identifier:)(UIView_optional *__return_ptr retstr, Swift::String identifier)
{
  object = identifier._object;
  countAndFlagsBits = identifier._countAndFlagsBits;
  sub_1D7E194D0();
  sub_1D800D034();
  v5 = v2;
  if (swift_dynamicCast())
  {
    sub_1D7E05450(v25, v27);
    v6 = v28;
    v7 = v29;
    __swift_project_boxed_opaque_existential_1(v27, v28);
    v8 = (*(v7 + 8))(countAndFlagsBits, object, v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    if (v8)
    {
      return;
    }
  }

  else
  {
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    sub_1D800D090(v25);
  }

  v9 = [v5 presentedViewController];
  if (!v9 || (v11 = v9, v12._countAndFlagsBits = countAndFlagsBits, v12._object = object, UIViewController.findSourceView(identifier:)(v10, v12), v14 = v13, v11, !v14))
  {
    v15 = [v5 childViewControllers];
    v16 = sub_1D8191314();

    v17 = sub_1D7E36AB8(v16);
    for (i = 0; ; ++i)
    {
      if (v17 == i)
      {

        return;
      }

      if ((v16 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x1DA714420](i, v16);
      }

      else
      {
        if (i >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v19 = *(v16 + 8 * i + 32);
      }

      v21 = v19;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v22._countAndFlagsBits = countAndFlagsBits;
      v22._object = object;
      UIViewController.findSourceView(identifier:)(v20, v22);
      v24 = v23;

      if (v24)
      {

        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }
}

unint64_t sub_1D800D034()
{
  result = qword_1EDBB6100;
  if (!qword_1EDBB6100)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDBB6100);
  }

  return result;
}

uint64_t sub_1D800D090(uint64_t a1)
{
  sub_1D800D0EC(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D800D0EC(uint64_t a1)
{
  if (!qword_1EDBB60F8)
  {
    sub_1D800D034();
    v1 = sub_1D8191E84();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDBB60F8);
    }
  }
}

id BackBarButtonItem.__allocating_init(target:action:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  sub_1D7E471D0();
  v6 = [objc_opt_self() configurationWithWeight_];
  v7 = sub_1D7E6FE24(0xD000000000000010, 0x80000001D81CEB50, v6);
  v8 = [v5 initWithImage:v7 style:0 target:a1 action:a2];

  [v8 setWidth_];
  return v8;
}

id BackBarButtonItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BackBarButtonItem.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id BackBarButtonItem.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id BackBarButtonItem.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id BackBarButtonItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D800D404(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7B && *(a1 + 8))
    {
      v2 = *a1 + 122;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7A)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1D800D458(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *result = a2 - 123;
    if (a3 >= 0x7B)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1D800D4B8(uint64_t result)
{
  v1 = *result;
  if (*result != _TtC5TeaUI20JSONSchemaValueArray)
  {
    if (v1 == _TtC5TeaUI19JSONSchemaValueBool)
    {
      return result | 0x2000000000000000;
    }

    else if (v1 == _TtC5TeaUI22JSONSchemaValueInteger)
    {
      return result | 0x4000000000000000;
    }

    else if (v1 == _TtC5TeaUI21JSONSchemaValueNumber)
    {
      return result | 0x6000000000000000;
    }

    else if (v1 == _TtC5TeaUI21JSONSchemaValueString)
    {
      return result | 0x8000000000000000;
    }

    else if (v1 == _TtC5TeaUI21JSONSchemaValueObject)
    {
      return result | 0xA000000000000000;
    }

    else
    {

      result = sub_1D81923A4();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1D800D5C8(void *a1, unint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = sub_1D81928B4();
  switch(a2 >> 61)
  {
    case 1uLL:
      OUTLINED_FUNCTION_0_116(v3, v4, v5, v6, v7, v8, v9, v10, v20, v21, v22, v23, v24);
      v17 = OUTLINED_FUNCTION_113();
      type metadata accessor for JSONSchemaValueBool(v17);
      v12 = &unk_1ECA0F550;
      v13 = type metadata accessor for JSONSchemaValueBool;
      break;
    case 2uLL:
      OUTLINED_FUNCTION_0_116(v3, v4, v5, v6, v7, v8, v9, v10, v20, v21, v22, v23, v24);
      v15 = OUTLINED_FUNCTION_113();
      type metadata accessor for JSONSchemaValueInteger(v15);
      v12 = &unk_1ECA0F548;
      v13 = type metadata accessor for JSONSchemaValueInteger;
      break;
    case 3uLL:
      OUTLINED_FUNCTION_0_116(v3, v4, v5, v6, v7, v8, v9, v10, v20, v21, v22, v23, v24);
      v16 = OUTLINED_FUNCTION_113();
      type metadata accessor for JSONSchemaValueNumber(v16);
      v12 = &unk_1ECA0F540;
      v13 = type metadata accessor for JSONSchemaValueNumber;
      break;
    case 4uLL:
      OUTLINED_FUNCTION_0_116(v3, v4, v5, v6, v7, v8, v9, v10, v20, v21, v22, v23, v24);
      v14 = OUTLINED_FUNCTION_113();
      type metadata accessor for JSONSchemaValueString(v14);
      v12 = &unk_1ECA0F538;
      v13 = type metadata accessor for JSONSchemaValueString;
      break;
    case 5uLL:
      OUTLINED_FUNCTION_0_116(v3, v4, v5, v6, v7, v8, v9, v10, v20, v21, v22, v23, v24);
      v18 = OUTLINED_FUNCTION_113();
      type metadata accessor for JSONSchemaValueObject(v18);
      v12 = &unk_1ECA0F530;
      v13 = type metadata accessor for JSONSchemaValueObject;
      break;
    default:
      v25 = a2;
      __swift_mutable_project_boxed_opaque_existential_1(&v21, v24);
      v11 = OUTLINED_FUNCTION_113();
      type metadata accessor for JSONSchemaValueArray(v11);
      v12 = &unk_1ECA0F558;
      v13 = type metadata accessor for JSONSchemaValueArray;
      break;
  }

  sub_1D800D7AC(v12, v13);
  sub_1D8192694();
  return __swift_destroy_boxed_opaque_existential_1Tm(&v21);
}

uint64_t sub_1D800D7AC(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

id sub_1D800D834(uint64_t a1, double a2, double a3)
{
  v9.receiver = v3;
  v9.super_class = type metadata accessor for PassthroughView();
  result = objc_msgSendSuper2(&v9, sel_hitTest_withEvent_, a1, a2, a3);
  if (result)
  {
    v8 = result == v3;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {

    return 0;
  }

  return result;
}

id PassthroughView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_80();

  return [v2 v3];
}

id PassthroughView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PassthroughView.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PassthroughView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id PassthroughView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PassthroughView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double PillSize.cornerRadius(for:)(double a1, double a2, double a3, double a4)
{
  v5 = 14.0;
  if (*(v4 + 32) <= 1u)
  {
    return CGRectGetHeight(*&a1) * 0.5;
  }

  return v5;
}

uint64_t getEnumTagSinglePayload for PillSize(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 33))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PillSize(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

BOOL sub_1D800DB84()
{
  sub_1D818E994();
  sub_1D8014214();
  sub_1D8191724();
  sub_1D81917B4();
  return v2 == v1;
}

uint64_t BlueprintCollectionViewDragDelegate.collectionView(_:itemsForBeginning:at:)()
{
  OUTLINED_FUNCTION_39_8();
  OUTLINED_FUNCTION_3_7();
  v1 = sub_1D818E8E4();
  v2 = OUTLINED_FUNCTION_48_7();
  [v2 v3];

  v4 = sub_1D818E8E4();
  v5 = [v0 cellForItemAtIndexPath_];

  if (!v5 || (sub_1D7E0A1A8(0, &qword_1EDBB3110, 0x1E69DC7F8), v6 = sub_1D7E0631C(0, &unk_1ECA0F568, &protocol descriptor for DragCancellable), (OUTLINED_FUNCTION_1_13(v6, v7) & 1) == 0))
  {
    OUTLINED_FUNCTION_0_38();
    goto LABEL_7;
  }

  if (!v18)
  {
LABEL_7:
    sub_1D7FBDB74(&v17, &qword_1ECA0F560, &unk_1ECA0F568, &protocol descriptor for DragCancellable);
    goto LABEL_8;
  }

  sub_1D7E05450(&v17, v19);
  __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  v8 = OUTLINED_FUNCTION_14_20();
  v10 = v9(v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  if (v10)
  {
    return MEMORY[0x1E69E7CC0];
  }

LABEL_8:
  OUTLINED_FUNCTION_66();
  v13 = OUTLINED_FUNCTION_34_10(*(v12 + 112));
  return dragItems<A>(from:at:)(v13, v14, v15, v16);
}

id sub_1D800DDD4(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1D818E994();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818E924();
  v11 = a3;
  swift_unknownObjectRetain();
  v12 = a1;
  BlueprintCollectionViewDragDelegate.collectionView(_:itemsForBeginning:at:)();

  swift_unknownObjectRelease();
  (*(v8 + 8))(v10, v7);
  sub_1D7E0A1A8(0, &qword_1ECA0F6B0, 0x1E69DC990);
  v13 = sub_1D8191304();

  return v13;
}

uint64_t BlueprintCollectionViewDragDelegate.collectionView(_:itemsForAddingTo:at:point:)()
{
  OUTLINED_FUNCTION_39_8();
  OUTLINED_FUNCTION_3_7();
  v1 = sub_1D818E8E4();
  v2 = OUTLINED_FUNCTION_48_7();
  [v2 v3];

  v4 = sub_1D818E8E4();
  v5 = [v0 cellForItemAtIndexPath_];

  if (!v5 || (sub_1D7E0A1A8(0, &qword_1EDBB3110, 0x1E69DC7F8), v6 = sub_1D7E0631C(0, &unk_1ECA0F568, &protocol descriptor for DragCancellable), (OUTLINED_FUNCTION_1_13(v6, v7) & 1) == 0))
  {
    OUTLINED_FUNCTION_0_38();
    goto LABEL_7;
  }

  if (!v18)
  {
LABEL_7:
    sub_1D7FBDB74(&v17, &qword_1ECA0F560, &unk_1ECA0F568, &protocol descriptor for DragCancellable);
    goto LABEL_8;
  }

  sub_1D7E05450(&v17, v19);
  __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  v8 = OUTLINED_FUNCTION_14_20();
  v10 = v9(v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  if (v10)
  {
    return MEMORY[0x1E69E7CC0];
  }

LABEL_8:
  OUTLINED_FUNCTION_66();
  v13 = OUTLINED_FUNCTION_34_10(*(v12 + 112));
  return dragItems<A>(from:at:)(v13, v14, v15, v16);
}

void BlueprintCollectionViewDragDelegate.collectionView(_:dragPreviewParametersForItemAt:)()
{
  OUTLINED_FUNCTION_20_17();
  OUTLINED_FUNCTION_63_3();
  OUTLINED_FUNCTION_85_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_67();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = OUTLINED_FUNCTION_76_4(AssociatedConformanceWitness, v3, v4, v5);
  OUTLINED_FUNCTION_50(v6);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_75_5();
  v9 = OUTLINED_FUNCTION_48_7();
  v11 = [v9 v10];

  v54 = v11;
  if (v11)
  {
    OUTLINED_FUNCTION_63_3();
    OUTLINED_FUNCTION_74_6();
    OUTLINED_FUNCTION_85_0();
    v12 = swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_67();
    OUTLINED_FUNCTION_64();
    v13 = swift_getAssociatedConformanceWitness();
    v14 = OUTLINED_FUNCTION_73_3(v13);
    OUTLINED_FUNCTION_55_8(v14);
    MEMORY[0x801D0FEDE5](&v57, &protocol requirements base descriptor for BlueprintLayoutProviderType);
    v15 = OUTLINED_FUNCTION_47_6();
    v16(v15);
    v17 = sub_1D7E0631C(0, &qword_1EDBB17D0, &protocol descriptor for DragPreviewable);
    if (OUTLINED_FUNCTION_51_5(v17))
    {
      sub_1D7E05450(v55, v58);
      v18 = [objc_allocWithZone(MEMORY[0x1E69DC9A0]) init];
      OUTLINED_FUNCTION_30_11();
      v19 = *(v12 + 8);
      v20 = v18;
      v21 = OUTLINED_FUNCTION_60_5();
      v22 = v19(v21);
      [AssociatedTypeWitness setBackgroundColor_];

      OUTLINED_FUNCTION_30_11();
      v23 = OUTLINED_FUNCTION_6_1();
      v24(v23, v12);
      OUTLINED_FUNCTION_46_9();
      [v54 bounds];
      v25 = 0;
      switch(v12)
      {
        case 1:
          OUTLINED_FUNCTION_4_51();
          UIEdgeInsetsInsetRect(v36, v37, v38, v39, v40, v41);
          OUTLINED_FUNCTION_0_99();
          objc_opt_self();
          v42 = OUTLINED_FUNCTION_5_13();
          v35 = [v43 v44];
          goto LABEL_9;
        case 2:
          OUTLINED_FUNCTION_4_51();
          UIEdgeInsetsInsetRect(v45, v46, v47, v48, v49, v50);
          OUTLINED_FUNCTION_0_99();
          objc_opt_self();
          v51 = OUTLINED_FUNCTION_5_13();
          v35 = [v52 v53];
          goto LABEL_9;
        case 3:
          goto LABEL_10;
        default:
          OUTLINED_FUNCTION_4_51();
          UIEdgeInsetsInsetRect(v26, v27, v28, v29, v30, v31);
          OUTLINED_FUNCTION_9_0();
          objc_opt_self();
          v32 = OUTLINED_FUNCTION_8_0();
          v35 = [v33 v34];
LABEL_9:
          v25 = v35;
LABEL_10:
          [AssociatedTypeWitness setVisiblePath_];

          __swift_destroy_boxed_opaque_existential_1Tm(v58);
          break;
      }
    }

    else
    {

      v56 = 0;
      memset(v55, 0, sizeof(v55));
      sub_1D7FBDB74(v55, &qword_1EDBB17C0, &qword_1EDBB17D0, &protocol descriptor for DragPreviewable);
    }
  }

  OUTLINED_FUNCTION_3_48();
}

id BlueprintCollectionViewDragDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1D800E578(uint64_t a1)
{
  OUTLINED_FUNCTION_10_2();
  (*(v2 + 8))(v3 + v4);
  OUTLINED_FUNCTION_10_19();
  OUTLINED_FUNCTION_10_2();
  v7 = *(v6 + 8);

  return v7(a1 + v5);
}

uint64_t sub_1D800E658()
{
  v1 = OBJC_IVAR____TtC5TeaUIP33_D34D381894B01FD84F2F257FA2F1BCB915DragSessionData_initialIndexPath;
  v2 = sub_1D818E994();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t BlueprintCollectionViewDragDelegate2.delegate.modify()
{
  v1 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_62_0(v1);
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_61_0(v2);
  *(v0 + 24) = swift_unknownObjectWeakLoadStrong();
  return OUTLINED_FUNCTION_20_10();
}

uint64_t BlueprintCollectionViewDragDelegate2.registerDiffableDropDelegate(_:)(uint64_t a1)
{
  sub_1D7E0E768(a1, v5);
  OUTLINED_FUNCTION_3_7();
  v3 = *(v2 + 152);
  swift_beginAccess();
  sub_1D800E830(v5, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1D800E830(uint64_t a1, uint64_t a2)
{
  sub_1D7E328A8(0, &qword_1ECA0F578, &qword_1ECA0F580, &protocol descriptor for BlueprintViewDiffableDropDelegateType);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void BlueprintCollectionViewDragDelegate2.targetIndexPathToReorderItem(from:to:)()
{
  OUTLINED_FUNCTION_120();
  v1 = v0;
  v52 = v2;
  v53 = v3;
  v51 = v4;
  v5 = *MEMORY[0x1E69E7D40];
  v47 = *v0;
  v48 = v5;
  v6 = *((v5 & v47) + 0x68);
  v7 = *((v5 & v47) + 0x50);
  v8 = OUTLINED_FUNCTION_78_2(0, v6);
  OUTLINED_FUNCTION_9();
  v50 = v9;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_94();
  v49 = v11;
  v12 = OUTLINED_FUNCTION_78_2(255, v6);
  OUTLINED_FUNCTION_85_0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = swift_getAssociatedConformanceWitness();
  v57 = v8;
  v58 = v12;
  v59 = AssociatedConformanceWitness;
  v60 = v14;
  v46 = type metadata accessor for BlueprintSection(0, &v57);
  OUTLINED_FUNCTION_9();
  v16 = v15;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_43();
  v57 = v8;
  v58 = v12;
  v59 = AssociatedConformanceWitness;
  v60 = v14;
  v18 = type metadata accessor for Blueprint(0, &v57);
  OUTLINED_FUNCTION_9();
  v20 = v19;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v46 - v22;
  v48 = *((v48 & v47) + 0x88);
  BlueprintProviderType.blueprint.getter(v7, v6);
  sub_1D818E974();
  Blueprint.subscript.getter();
  (*(v20 + 8))(v23, v18);
  (*(v50 + 16))(v49, &protocol requirements base descriptor for BlueprintProviderType, v8);
  (*(v16 + 8))(&protocol requirements base descriptor for BlueprintProviderType, v46);
  sub_1D7E0631C(0, &qword_1ECA0F588, &protocol descriptor for Droppable);
  if (swift_dynamicCast())
  {
    v24 = v51;
    sub_1D7E05450(&v54, &v57);
    v25 = v1 + v48;
    v26 = v52;
    v27 = dragItems<A>(from:at:)(v25, v52, v7, v6);
    v28 = sub_1D7E36AB8(v27);

    if (v28)
    {
      __swift_project_boxed_opaque_existential_1(&v57, v60);
      v29 = OUTLINED_FUNCTION_31();
      v30(v29);
      v31 = v54;
      if (v55 == 1)
      {
        v32 = v53;
        if (v54 != 0)
        {
          if (!(v54 ^ 1 | *(&v54 + 1)))
          {
            sub_1D818E994();
            OUTLINED_FUNCTION_8();
            v34 = *(v33 + 16);
LABEL_21:
            v41 = v24;
            v42 = v32;
            goto LABEL_17;
          }

          v43 = sub_1D818E974();
          v44 = sub_1D818E974();
          sub_1D818E994();
          OUTLINED_FUNCTION_8();
          v34 = *(v45 + 16);
          if (v43 == v44)
          {
            goto LABEL_21;
          }

LABEL_16:
          v41 = v24;
          v42 = v26;
LABEL_17:
          v34(v41, v42);
          goto LABEL_18;
        }
      }

      else
      {
        v36 = sub_1D818E974();
        v37 = v53;
        if (v36 == sub_1D818E974())
        {
          v38 = sub_1D818E964();
          if (v38 < v31 || *(&v31 + 1) < v38)
          {
            sub_1D818E994();
            OUTLINED_FUNCTION_8();
            (*(v40 + 16))(v24, v37);
LABEL_18:
            __swift_destroy_boxed_opaque_existential_1Tm(&v57);
            goto LABEL_19;
          }
        }
      }
    }

    v34 = *(*(sub_1D818E994() - 8) + 16);
    goto LABEL_16;
  }

  v56 = 0;
  v54 = 0u;
  v55 = 0u;
  sub_1D7FBDB74(&v54, &qword_1ECA0F590, &qword_1ECA0F588, &protocol descriptor for Droppable);
  sub_1D818E994();
  OUTLINED_FUNCTION_8();
  (*(v35 + 16))(v51, v52);
LABEL_19:
  OUTLINED_FUNCTION_100();
}

void BlueprintCollectionViewDragDelegate2.collectionView(_:dragSessionWillBegin:)()
{
  OUTLINED_FUNCTION_120();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_3_7();
  v7 = v6;
  v10 = *((v9 & v8) + 0x68);
  v11 = *((v9 & v8) + 0x50);
  OUTLINED_FUNCTION_64();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_64();
  *&v43 = AssociatedTypeWitness;
  *(&v43 + 1) = swift_getAssociatedTypeWitness();
  *&v44 = swift_getAssociatedConformanceWitness();
  *(&v44 + 1) = swift_getAssociatedConformanceWitness();
  type metadata accessor for Blueprint(0, &v43);
  OUTLINED_FUNCTION_9();
  v38 = v14;
  v39 = v13;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v36 - v16;
  v18 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_15();
  v24 = v23 - v22;
  if ([v3 localContext])
  {
    sub_1D8191F34();
    swift_unknownObjectRelease();
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
  }

  v43 = v40;
  v44 = v41;
  if (*(&v41 + 1))
  {
    type metadata accessor for DragSessionData(0);
    if (swift_dynamicCast())
    {
      v37 = v7;
      (*(v20 + 16))(v24, v46 + OBJC_IVAR____TtC5TeaUIP33_D34D381894B01FD84F2F257FA2F1BCB915DragSessionData_initialIndexPath, v18);
      v25 = sub_1D818E8E4();
      (*(v20 + 8))(v24, v18);
      v26 = [v5 cellForItemAtIndexPath_];

      if (v26)
      {
        v46 = v26;
        sub_1D7E0A1A8(0, &qword_1EDBB3110, 0x1E69DC7F8);
        sub_1D7E0631C(0, &unk_1ECA0F5A0, &protocol descriptor for ContextMenuPreviewable);
        v27 = v26;
        if (swift_dynamicCast())
        {
          sub_1D7E05450(&v40, &v43);
          v28 = *(&v44 + 1);
          v29 = v45;
          __swift_project_boxed_opaque_existential_1(&v43, *(&v44 + 1));
          (*(v29 + 8))(0, v28, v29);
          __swift_destroy_boxed_opaque_existential_1Tm(&v43);
        }

        else
        {
          v42 = 0;
          v40 = 0u;
          v41 = 0u;
          sub_1D7FBDB74(&v40, &unk_1ECA0E630, &unk_1ECA0F5A0, &protocol descriptor for ContextMenuPreviewable);
        }

        v31 = v37;
        v32 = [objc_opt_self() defaultCenter];
        [v32 postNotificationName:@"TUBlueprintDidBeginItemDraggingNotification" object:0];

        OUTLINED_FUNCTION_10_19();
        OUTLINED_FUNCTION_8_4(v1 + *(v33 + 128), &v43);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v35 = Strong;
          OUTLINED_FUNCTION_10_19();
          BlueprintProviderType.blueprint.getter(v11, v10);
          (*(*(v31 + 120) + 184))(v17, *(v31 + 96));

          (*(v38 + 8))(v17, v39);
        }

        else
        {
        }
      }

      else
      {
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_17_19();
    sub_1D7E70DEC(&v43, v30);
  }

  OUTLINED_FUNCTION_100();
}

void BlueprintCollectionViewDragDelegate2.collectionView(_:dragSessionDidEnd:)()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_3_7();
  v2 = v1;
  v5 = *((v4 & v3) + 0x68);
  v6 = *((v4 & v3) + 0x50);
  OUTLINED_FUNCTION_13_20();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_13_20();
  v16[0] = AssociatedTypeWitness;
  v16[1] = swift_getAssociatedTypeWitness();
  v16[2] = swift_getAssociatedConformanceWitness();
  v16[3] = swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for Blueprint(0, v16);
  OUTLINED_FUNCTION_9();
  v10 = v9;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_27_5();
  v12 = [objc_opt_self() defaultCenter];
  [v12 postNotificationName:@"TUBlueprintDidEndItemDraggingNotification" object:0];

  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_42_0(v0 + *(v13 + 128));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    OUTLINED_FUNCTION_3_7();
    BlueprintProviderType.blueprint.getter(v6, v5);
    (*(*(v2 + 120) + 192))(AssociatedTypeWitness, *(v2 + 96));

    (*(v10 + 8))(AssociatedTypeWitness, v8);
  }

  OUTLINED_FUNCTION_100();
}

void sub_1D800F4F8(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = a1;
  BlueprintCollectionViewDragDelegate2.collectionView(_:dragSessionDidEnd:)();

  swift_unknownObjectRelease();
}

void BlueprintCollectionViewDragDelegate2.collectionView(_:itemsForBeginning:at:)()
{
  OUTLINED_FUNCTION_120();
  v1 = v0;
  v25 = v2;
  v4 = v3;
  OUTLINED_FUNCTION_3_7();
  v5 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  v11 = v10 - v9;
  v12 = sub_1D818E8E4();
  [v4 deselectItemAtIndexPath:v12 animated:0];

  v13 = sub_1D818E8E4();
  v14 = [v4 cellForItemAtIndexPath_];

  if (v14 && (sub_1D7E0A1A8(0, &qword_1EDBB3110, 0x1E69DC7F8), sub_1D7E0631C(0, &unk_1ECA0F568, &protocol descriptor for DragCancellable), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v27 + 1))
    {
      sub_1D7E05450(&v26, v29);
      v15 = v30;
      v16 = v31;
      __swift_project_boxed_opaque_existential_1(v29, v30);
      v17 = (*(v16 + 8))(v15, v16);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      if (v17)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
  }

  sub_1D7FBDB74(&v26, &qword_1ECA0F560, &unk_1ECA0F568, &protocol descriptor for DragCancellable);
LABEL_8:
  (*(v7 + 16))(v11, v1, v5);
  type metadata accessor for DragSessionData(0);
  v18 = swift_allocObject();
  (*(v7 + 32))(v18 + OBJC_IVAR____TtC5TeaUIP33_D34D381894B01FD84F2F257FA2F1BCB915DragSessionData_initialIndexPath, v11, v5);
  *(v18 + OBJC_IVAR____TtC5TeaUIP33_D34D381894B01FD84F2F257FA2F1BCB915DragSessionData_sourceView) = v4;
  v19 = v4;
  [v25 setLocalContext_];

  OUTLINED_FUNCTION_66();
  v21 = OUTLINED_FUNCTION_34_10(*(v20 + 136));
  dragItems<A>(from:at:)(v21, v22, v23, v24);
LABEL_9:
  OUTLINED_FUNCTION_100();
}

id sub_1D800F83C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1D818E994();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818E924();
  v11 = a3;
  swift_unknownObjectRetain();
  v12 = a1;
  BlueprintCollectionViewDragDelegate2.collectionView(_:itemsForBeginning:at:)();

  swift_unknownObjectRelease();
  (*(v8 + 8))(v10, v7);
  sub_1D7E0A1A8(0, &qword_1ECA0F6B0, 0x1E69DC990);
  v13 = sub_1D8191304();

  return v13;
}

uint64_t BlueprintCollectionViewDragDelegate2.collectionView(_:itemsForAddingTo:at:point:)()
{
  OUTLINED_FUNCTION_39_8();
  OUTLINED_FUNCTION_3_7();
  v1 = sub_1D818E8E4();
  v2 = OUTLINED_FUNCTION_48_7();
  [v2 v3];

  v4 = sub_1D818E8E4();
  v5 = [v0 cellForItemAtIndexPath_];

  if (!v5 || (sub_1D7E0A1A8(0, &qword_1EDBB3110, 0x1E69DC7F8), v6 = sub_1D7E0631C(0, &unk_1ECA0F568, &protocol descriptor for DragCancellable), (OUTLINED_FUNCTION_1_13(v6, v7) & 1) == 0))
  {
    OUTLINED_FUNCTION_0_38();
    goto LABEL_7;
  }

  if (!v18)
  {
LABEL_7:
    sub_1D7FBDB74(&v17, &qword_1ECA0F560, &unk_1ECA0F568, &protocol descriptor for DragCancellable);
    goto LABEL_8;
  }

  sub_1D7E05450(&v17, v19);
  __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  v8 = OUTLINED_FUNCTION_14_20();
  v10 = v9(v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  if (v10)
  {
    return MEMORY[0x1E69E7CC0];
  }

LABEL_8:
  OUTLINED_FUNCTION_66();
  v13 = OUTLINED_FUNCTION_34_10(*(v12 + 136));
  return dragItems<A>(from:at:)(v13, v14, v15, v16);
}

id sub_1D800FB60(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(id))
{
  v9 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_15();
  v15 = v14 - v13;
  sub_1D818E924();
  v16 = a3;
  swift_unknownObjectRetain();
  v17 = a1;
  a6(v16);

  swift_unknownObjectRelease();
  (*(v11 + 8))(v15, v9);
  sub_1D7E0A1A8(0, &qword_1ECA0F6B0, 0x1E69DC990);
  v18 = sub_1D8191304();

  return v18;
}

void BlueprintCollectionViewDragDelegate2.collectionView(_:dragPreviewParametersForItemAt:)()
{
  OUTLINED_FUNCTION_20_17();
  OUTLINED_FUNCTION_63_3();
  OUTLINED_FUNCTION_85_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_67();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = OUTLINED_FUNCTION_76_4(AssociatedConformanceWitness, v3, v4, v5);
  OUTLINED_FUNCTION_50(v6);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_75_5();
  v9 = OUTLINED_FUNCTION_48_7();
  v11 = [v9 v10];

  v54 = v11;
  if (v11)
  {
    OUTLINED_FUNCTION_63_3();
    OUTLINED_FUNCTION_74_6();
    OUTLINED_FUNCTION_85_0();
    v12 = swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_67();
    OUTLINED_FUNCTION_64();
    v13 = swift_getAssociatedConformanceWitness();
    v14 = OUTLINED_FUNCTION_73_3(v13);
    OUTLINED_FUNCTION_55_8(v14);
    MEMORY[0x801D0FEDE5](&v57, &protocol requirements base descriptor for BlueprintLayoutProviderType);
    v15 = OUTLINED_FUNCTION_47_6();
    v16(v15);
    v17 = sub_1D7E0631C(0, &qword_1EDBB17D0, &protocol descriptor for DragPreviewable);
    if (OUTLINED_FUNCTION_51_5(v17))
    {
      sub_1D7E05450(v55, v58);
      v18 = [objc_allocWithZone(MEMORY[0x1E69DC9A0]) init];
      OUTLINED_FUNCTION_30_11();
      v19 = *(v12 + 8);
      v20 = v18;
      v21 = OUTLINED_FUNCTION_60_5();
      v22 = v19(v21);
      [AssociatedTypeWitness setBackgroundColor_];

      OUTLINED_FUNCTION_30_11();
      v23 = OUTLINED_FUNCTION_6_1();
      v24(v23, v12);
      OUTLINED_FUNCTION_46_9();
      [v54 bounds];
      v25 = 0;
      switch(v12)
      {
        case 1:
          OUTLINED_FUNCTION_4_51();
          UIEdgeInsetsInsetRect(v36, v37, v38, v39, v40, v41);
          OUTLINED_FUNCTION_0_99();
          objc_opt_self();
          v42 = OUTLINED_FUNCTION_5_13();
          v35 = [v43 v44];
          goto LABEL_9;
        case 2:
          OUTLINED_FUNCTION_4_51();
          UIEdgeInsetsInsetRect(v45, v46, v47, v48, v49, v50);
          OUTLINED_FUNCTION_0_99();
          objc_opt_self();
          v51 = OUTLINED_FUNCTION_5_13();
          v35 = [v52 v53];
          goto LABEL_9;
        case 3:
          goto LABEL_10;
        default:
          OUTLINED_FUNCTION_4_51();
          UIEdgeInsetsInsetRect(v26, v27, v28, v29, v30, v31);
          OUTLINED_FUNCTION_9_0();
          objc_opt_self();
          v32 = OUTLINED_FUNCTION_8_0();
          v35 = [v33 v34];
LABEL_9:
          v25 = v35;
LABEL_10:
          [AssociatedTypeWitness setVisiblePath_];

          __swift_destroy_boxed_opaque_existential_1Tm(v58);
          break;
      }
    }

    else
    {

      v56 = 0;
      memset(v55, 0, sizeof(v55));
      sub_1D7FBDB74(v55, &qword_1EDBB17C0, &qword_1EDBB17D0, &protocol descriptor for DragPreviewable);
    }
  }

  OUTLINED_FUNCTION_3_48();
}

id sub_1D80100C0(void *a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v9 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_15();
  v15 = v14 - v13;
  sub_1D818E924();
  v16 = a3;
  v17 = a1;
  v18 = OUTLINED_FUNCTION_6_1();
  v19 = a5(v18, v15);

  (*(v11 + 8))(v15, v9);

  return v19;
}

void BlueprintCollectionViewDragDelegate2.collectionView(_:dropSessionDidUpdate:withDestinationIndexPath:)()
{
  OUTLINED_FUNCTION_120();
  v1 = v0;
  v80 = v2;
  v86 = v3;
  v84 = v4;
  v5 = *v0;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & v5) + 0x68);
  v8 = *((*MEMORY[0x1E69E7D40] & v5) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v78 = v10;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_14_1(v12);
  OUTLINED_FUNCTION_40_7();
  v13 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_6_16();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_6_16();
  v15 = swift_getAssociatedConformanceWitness();
  *&v92 = AssociatedTypeWitness;
  *(&v92 + 1) = v13;
  *&v93 = AssociatedConformanceWitness;
  *(&v93 + 1) = v15;
  v77 = type metadata accessor for BlueprintSection(0, &v92);
  OUTLINED_FUNCTION_9();
  v76 = v16;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_14_1(v18);
  sub_1D7E3D564(0);
  v20 = OUTLINED_FUNCTION_50(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_15();
  v23 = v22 - v21;
  v85 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v83 = v24;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_21_12();
  OUTLINED_FUNCTION_14_1(v28);
  *&v92 = AssociatedTypeWitness;
  *(&v92 + 1) = v13;
  *&v93 = AssociatedConformanceWitness;
  *(&v93 + 1) = v15;
  v29 = type metadata accessor for Blueprint(0, &v92);
  OUTLINED_FUNCTION_9();
  v82 = v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v66 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v66 - v35;
  OUTLINED_FUNCTION_42_0(v1 + *((v6 & v5) + 0x80));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_12;
  }

  v38 = [v86 localDragSession];
  if (!v38)
  {
    goto LABEL_12;
  }

  v39 = v38;
  if ([v38 localContext])
  {
    sub_1D8191F34();
    swift_unknownObjectRelease();
  }

  else
  {
    v89 = 0u;
    v90 = 0u;
  }

  v92 = v89;
  v93 = v90;
  if (!*(&v90 + 1))
  {
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_17_19();
    sub_1D7E70DEC(&v92, v41);
    goto LABEL_12;
  }

  type metadata accessor for DragSessionData(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  v40 = v87;
  if (*(v87 + OBJC_IVAR____TtC5TeaUIP33_D34D381894B01FD84F2F257FA2F1BCB915DragSessionData_sourceView) != v84)
  {
    swift_unknownObjectRelease();

LABEL_12:
    [objc_allocWithZone(MEMORY[0x1E69DC838]) initWithDropOperation_];
    goto LABEL_13;
  }

  v84 = v39;
  v71 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x88);
  BlueprintProviderType.blueprint.getter(v8, v7);
  v42 = *(v83 + 16);
  v86 = v40;
  v68 = OBJC_IVAR____TtC5TeaUIP33_D34D381894B01FD84F2F257FA2F1BCB915DragSessionData_initialIndexPath;
  v43 = v81;
  v70 = v83 + 16;
  v69 = v42;
  (v42)(v81, &v40[OBJC_IVAR____TtC5TeaUIP33_D34D381894B01FD84F2F257FA2F1BCB915DragSessionData_initialIndexPath], v85);
  Blueprint.contains(indexPath:)();
  v73 = v44;
  v45 = v83 + 8;
  v72 = *(v83 + 8);
  v72(v43, v85);
  v46 = *(v82 + 8);
  v82 += 8;
  v67 = v46;
  v46(v36, v29);
  if ((v73 & 1) != 0 && (v47 = v81, (v69)(v81, &v86[v68], v85), OUTLINED_FUNCTION_50_5(), v49 = dragItems<A>(from:at:)(v1 + v48, v47, v8, v7), v72(v47, v85), v50 = sub_1D7E36AB8(v49), , v50))
  {
    sub_1D7E54838(v80, v23);
    v51 = v85;
    if (__swift_getEnumTagSinglePayload(v23, 1, v85) != 1)
    {
      v80 = v45;
      (*(v83 + 32))(v79, v23, v51);
      if (sub_1D800DB84())
      {
        [objc_allocWithZone(MEMORY[0x1E69DC838]) initWithDropOperation_];
      }

      else
      {
        OUTLINED_FUNCTION_50_5();
        BlueprintProviderType.blueprint.getter(v8, v7);
        sub_1D818E974();
        v53 = v75;
        Blueprint.subscript.getter();
        v67(v33, v29);
        v54 = OUTLINED_FUNCTION_31();
        v55(v54);
        OUTLINED_FUNCTION_14_15();
        v56(v53, v77);
        sub_1D7E0631C(0, &qword_1ECA0F588, &protocol descriptor for Droppable);
        if (swift_dynamicCast())
        {
          sub_1D7E05450(&v89, &v92);
          sub_1D7E0A1A8(0, &qword_1ECA0F5C0, 0x1E69DC838);
          v57 = v51;
          v58 = *(&v93 + 1);
          v59 = v94;
          __swift_project_boxed_opaque_existential_1(&v92, *(&v93 + 1));
          (*(v59 + 8))(&v89, v58, v59);
          v87 = v89;
          v88 = v90;
          v60 = v81;
          v61 = v69;
          (v69)(v81, &v86[v68], v57);
          v62 = v74;
          v63 = OUTLINED_FUNCTION_35_11();
          v61(v63);
          sub_1D80DE4FC(&v87, v60, v62);
          OUTLINED_FUNCTION_54_3();

          OUTLINED_FUNCTION_58_6();
          v64();
          __swift_destroy_boxed_opaque_existential_1Tm(&v92);
          goto LABEL_13;
        }

        v91 = 0;
        v89 = 0u;
        v90 = 0u;
        sub_1D7FBDB74(&v89, &qword_1ECA0F590, &qword_1ECA0F588, &protocol descriptor for Droppable);
        [objc_allocWithZone(MEMORY[0x1E69DC838]) initWithDropOperation:3 intent:0];
      }

      OUTLINED_FUNCTION_54_3();

      OUTLINED_FUNCTION_58_6();
      v65();
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_0_118();
    sub_1D7E70DEC(v23, v52);
    [objc_allocWithZone(MEMORY[0x1E69DC838]) initWithDropOperation:3 intent:0];
  }

  else
  {
    [objc_allocWithZone(MEMORY[0x1E69DC838]) initWithDropOperation_];
  }

  OUTLINED_FUNCTION_54_3();

LABEL_13:
  OUTLINED_FUNCTION_100();
}

id sub_1D8010B2C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_1D7E3D564(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5)
  {
    sub_1D818E924();
    v11 = sub_1D818E994();
    v12 = 0;
  }

  else
  {
    v11 = sub_1D818E994();
    v12 = 1;
  }

  __swift_storeEnumTagSinglePayload(v10, v12, 1, v11);
  v13 = a3;
  swift_unknownObjectRetain();
  v14 = a1;
  BlueprintCollectionViewDragDelegate2.collectionView(_:dropSessionDidUpdate:withDestinationIndexPath:)();
  v16 = v15;

  swift_unknownObjectRelease();
  sub_1D7E70DEC(v10, sub_1D7E3D564);

  return v16;
}

void BlueprintCollectionViewDragDelegate2.collectionView(_:performDropWith:)()
{
  OUTLINED_FUNCTION_20_17();
  v1 = v0;
  v3 = v2;
  v122 = v4;
  v5 = *v0;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x68);
  v8 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v117 = v10;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_14_1(v12);
  v13 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = swift_getAssociatedConformanceWitness();
  v129 = AssociatedTypeWitness;
  v130 = v13;
  v131 = AssociatedConformanceWitness;
  v132 = v15;
  v116 = type metadata accessor for BlueprintSection(0, &v129);
  OUTLINED_FUNCTION_9();
  v115 = v16;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_14_1(v18);
  v119 = AssociatedTypeWitness;
  v129 = AssociatedTypeWitness;
  v130 = v13;
  v131 = AssociatedConformanceWitness;
  v132 = v15;
  v113 = type metadata accessor for Blueprint(0, &v129);
  OUTLINED_FUNCTION_9();
  v112 = v19;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_14_1(v21);
  sub_1D7E3D564(0);
  v23 = OUTLINED_FUNCTION_50(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_21_12();
  OUTLINED_FUNCTION_14_1(v25);
  v26 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v125 = v27;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v29);
  v31 = v105 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = v105 - v33;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_21_12();
  v124 = v36;
  OUTLINED_FUNCTION_8_4(v1 + *((v6 & v5) + 0x80), &v134);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_41;
  }

  v38 = Strong;
  v120 = v26;
  v39 = [v3 items];
  sub_1D8013D1C();
  v40 = sub_1D8191314();

  if (!sub_1D7E36AB8(v40))
  {

LABEL_13:

LABEL_41:
    OUTLINED_FUNCTION_3_48();
    return;
  }

  sub_1D7E33DD8(0, (v40 & 0xC000000000000001) == 0, v40);
  if ((v40 & 0xC000000000000001) != 0)
  {
    v41 = MEMORY[0x1DA714420](0, v40);
  }

  else
  {
    v41 = *(v40 + 32);
    swift_unknownObjectRetain();
  }

  v42 = [v3 destinationIndexPath];
  if (!v42)
  {
    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  v43 = v42;
  v108 = v41;
  v109 = v38;
  v107 = v31;
  sub_1D818E924();

  v44 = *(v125 + 32);
  v45 = v120;
  v105[1] = v125 + 32;
  v105[0] = v44;
  v44(v124, v34, v120);
  v106 = v3;
  v46 = [v3 items];
  v47 = sub_1D8191314();

  if (!sub_1D7E36AB8(v47))
  {

    OUTLINED_FUNCTION_77_4();
    OUTLINED_FUNCTION_50_5();

    v56 = OUTLINED_FUNCTION_35_11();
    v57(v56);
    v48 = v123;
    v58 = OUTLINED_FUNCTION_61_4();
    __swift_storeEnumTagSinglePayload(v58, v59, 1, v45);
LABEL_18:
    OUTLINED_FUNCTION_0_118();
    sub_1D7E70DEC(v48, v65);
    goto LABEL_41;
  }

  sub_1D7E33DD8(0, (v47 & 0xC000000000000001) == 0, v47);
  v48 = v123;
  if ((v47 & 0xC000000000000001) != 0)
  {
    v49 = MEMORY[0x1DA714420](0, v47);
  }

  else
  {
    v49 = *(v47 + 32);
    swift_unknownObjectRetain();
  }

  v50 = v124;
  v51 = v109;

  v52 = [v49 sourceIndexPath];
  swift_unknownObjectRelease();
  v53 = v121;
  if (v52)
  {
    sub_1D818E924();

    v54 = 0;
  }

  else
  {
    v54 = 1;
  }

  v60 = v120;
  v61 = v125;
  v62 = v122;
  __swift_storeEnumTagSinglePayload(v53, v54, 1, v120);
  sub_1D8013D78(v53, v48);
  v63 = OUTLINED_FUNCTION_61_4();
  if (__swift_getEnumTagSinglePayload(v63, v64, v60) == 1)
  {
    (*(v61 + 8))(v50, v60);
    OUTLINED_FUNCTION_77_4();

    goto LABEL_18;
  }

  (v105[0])(v107, v48, v60);
  v125 = swift_allocBox();
  v67 = v66;
  v68 = v60;
  v69 = v50;
  (*(v61 + 16))(v66, v50, v68);
  v70 = [v62 collectionViewLayout];
  v71 = sub_1D8190EE4();
  v72 = sub_1D818E8E4();
  v73 = [v70 layoutAttributesForSupplementaryViewOfKind:v71 atIndexPath:v72];

  v74 = v122;
  v75 = v106;
  if (!v73 || ([v73 frame], OUTLINED_FUNCTION_9_0(), v73, objc_msgSend(objc_msgSend(v75, sel_session), sel_locationInView_, v74), v77 = v76, swift_unknownObjectRelease(), v135.origin.x = OUTLINED_FUNCTION_8_0(), v77 >= CGRectGetMidY(v135)) || sub_1D818E974() < 1)
  {
LABEL_24:
    OUTLINED_FUNCTION_66();
    v82 = v111;
    BlueprintProviderType.blueprint.getter(v8, v7);
    sub_1D818E974();
    v83 = v114;
    v84 = v113;
    Blueprint.subscript.getter();
    OUTLINED_FUNCTION_14_15();
    v85(v82, v84);
    (*(v117 + 16))(v118, v83, v119);
    OUTLINED_FUNCTION_14_15();
    v86(v83, v116);
    sub_1D7E0631C(0, &qword_1ECA0F588, &protocol descriptor for Droppable);
    if (!swift_dynamicCast())
    {
      OUTLINED_FUNCTION_77_4();
      OUTLINED_FUNCTION_50_5();

      v96 = *(v61 + 8);
      v97 = v120;
      v96(v107, v120);
      v96(v69, v97);
      v128 = 0;
      v126 = 0u;
      v127 = 0u;
      sub_1D7FBDB74(&v126, &qword_1ECA0F590, &qword_1ECA0F588, &protocol descriptor for Droppable);
LABEL_40:

      goto LABEL_41;
    }

    sub_1D7E05450(&v126, &v129);
    v87 = v132;
    v88 = v133;
    __swift_project_boxed_opaque_existential_1(&v129, v132);
    (*(v88 + 8))(&v126, v87, v88);
    v89 = v126;
    v90 = v120;
    if (v127 == 1)
    {
      v91 = v107;
      v92 = v125;
      if (v126 == 0)
      {
        goto LABEL_39;
      }

      if (v126 ^ 1 | *(&v126 + 1))
      {
        v93 = sub_1D818E974();
        v94 = sub_1D818E974();
        v91 = v107;
        if (v93 != v94)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v98 = sub_1D818E974();
      v99 = sub_1D818E974();
      v92 = v125;
      if (v98 != v99)
      {
        goto LABEL_39;
      }

      v100 = sub_1D818E964();
      v91 = v107;
      if (v100 >= v89 && *(&v89 + 1) >= v100)
      {
        goto LABEL_39;
      }
    }

    sub_1D8011750(v1, v91, v92, v109, v106, v108);
LABEL_39:
    OUTLINED_FUNCTION_77_4();
    OUTLINED_FUNCTION_50_5();

    v103 = *(v61 + 8);
    v104 = OUTLINED_FUNCTION_35_11();
    v103(v104);
    (v103)(v69, v90);
    __swift_destroy_boxed_opaque_existential_1Tm(&v129);
    goto LABEL_40;
  }

  v78 = sub_1D818E974();
  v79 = v78 - 1;
  if (!__OFSUB__(v78, 1))
  {
    v80 = [v74 numberOfItemsInSection_];
    v81 = v110;
    MEMORY[0x1DA710B60](v80, v79);
    (*(v61 + 40))(v67, v81, v120);
    goto LABEL_24;
  }

  __break(1u);
}

uint64_t sub_1D8011750(uint64_t *a1, uint64_t (*a2)(void, void, void, __n128), uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v79 = a6;
  v80 = a5;
  v78 = a4;
  v81 = a3;
  v73 = a2;
  v7 = *a1;
  v8 = *MEMORY[0x1E69E7D40];
  v77 = *MEMORY[0x1E69E7D40] & *a1;
  v74 = type metadata accessor for BlueprintViewAction.Action(0);
  MEMORY[0x1EEE9AC00](v74);
  v76 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *((v8 & v7) + 0x68);
  v11 = *((v8 & v7) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v82 = type metadata accessor for BlueprintItem(0, AssociatedTypeWitness, AssociatedConformanceWitness, v14);
  v83 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v85 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v87 = &v63 - v17;
  v18 = swift_getAssociatedTypeWitness();
  v84 = v10;
  v72 = v11;
  v19 = swift_getAssociatedConformanceWitness();
  v90[0] = v18;
  v90[1] = AssociatedTypeWitness;
  v70 = AssociatedTypeWitness;
  v90[2] = v19;
  v91 = AssociatedConformanceWitness;
  v68 = AssociatedConformanceWitness;
  v86 = type metadata accessor for Blueprint(0, v90);
  v75 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v71 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v63 - v22;
  v24 = sub_1D818E994();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = swift_projectBox();
  v29 = *((v8 & v7) + 0x98);
  swift_beginAccess();
  sub_1D8014070(a1 + v29, &v88);
  v67 = v27;
  v81 = v28;
  if (v89)
  {
    sub_1D7E05450(&v88, v90);
    v31 = v91;
    v30 = v92;
    __swift_project_boxed_opaque_existential_1(v90, v91);
    swift_beginAccess();
    (*(v25 + 16))(v27, v28, v24);
    v32 = v73;
    (*(v30 + 8))(v73, v27, v31, v30);
    (*(v25 + 8))(v27, v24);
    __swift_destroy_boxed_opaque_existential_1Tm(v90);
  }

  else
  {
    sub_1D7FBDB74(&v88, &qword_1ECA0F578, &qword_1ECA0F580, &protocol descriptor for BlueprintViewDiffableDropDelegateType);
    v32 = v73;
  }

  v33 = v24;
  v65 = v24;
  v34 = v72;
  BlueprintProviderType.blueprint.getter(v72, v84);
  v35 = v87;
  Blueprint.subscript.getter();
  v70 = type metadata accessor for BlueprintViewActionRequest(0, v70, v68, v36);
  v37 = v32;
  (*(v83 + 16))(v85, v35, v82);
  sub_1D7F9E3F0(0);
  v39 = *(v38 + 48);
  v66 = v25;
  v40 = *(v25 + 16);
  v41 = v23;
  v64 = v23;
  v42 = v76;
  v40(v76, v37, v33);
  v73 = v40;
  v43 = v81;
  swift_beginAccess();
  v40((v42 + v39), v43, v33);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v88) = 4;
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v45 = v75;
  v46 = v71;
  v47 = v86;
  (*(v75 + 16))(v71, v41, v86);
  v48 = (*(v45 + 80) + 72) & ~*(v45 + 80);
  v49 = swift_allocObject();
  *(v49 + 2) = v34;
  v50 = v77;
  *(v49 + 3) = *(v77 + 88);
  v51 = v50[12];
  v52 = v84;
  *(v49 + 4) = v51;
  *(v49 + 5) = v52;
  *(v49 + 6) = v50[14];
  v53 = v50[15];
  *(v49 + 7) = v53;
  *(v49 + 8) = v44;
  (*(v45 + 32))(&v49[v48], v46, v47);
  v54 = BlueprintViewActionRequest.__allocating_init(item:action:source:sourceView:completion:)(v85, v42, &v88, 0, sub_1D80140EC, v49);
  v55 = v64;
  (*(v53 + 208))(v64, v51, v53);
  (*(v53 + 72))(v55, v54, v51, v53);
  v56 = [v79 dragItem];
  v57 = v81;
  swift_beginAccess();
  v58 = v67;
  v59 = v65;
  v73(v67, v57, v65);
  v60 = sub_1D818E8E4();
  (*(v66 + 8))(v58, v59);
  v61 = [v80 dropItem:v56 toItemAtIndexPath:v60];

  swift_unknownObjectRelease();

  (*(v83 + 8))(v87, v82);
  return (*(v45 + 8))(v55, v47);
}

void sub_1D8011FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_beginAccess();
    v13 = swift_unknownObjectWeakLoadStrong();

    if (v13)
    {
      (*(a9 + 216))(a3, a6);
    }
  }
}

void sub_1D80120C0(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, uint64_t))
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a1;
  a5(v8, a4);

  swift_unknownObjectRelease();
}

uint64_t sub_1D8012188(char *a1)
{
  MEMORY[0x1DA715E30](&a1[*((*MEMORY[0x1E69E7D40] & *a1) + 0x80)]);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_10_2();
  (*(v2 + 8))(&a1[v3]);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_10_2();
  (*(v4 + 8))(&a1[v5]);
  OUTLINED_FUNCTION_2_5();
  return sub_1D7FBDB74(&a1[*(v6 + 152)], &qword_1ECA0F578, &qword_1ECA0F580, &protocol descriptor for BlueprintViewDiffableDropDelegateType);
}

uint64_t sub_1D80122A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_8_4(v3 + *(v4 + 128), v6);
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1D8012314(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_5_0(v2);
  return swift_unknownObjectWeakAssign();
}

uint64_t _s5TeaUI36BlueprintCollectionViewDragDelegate2C8delegateq0_Sgvg_0()
{
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_8_4(v0 + *(v1 + 128), v3);
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t BlueprintCollectionViewDragDelegate3.delegate.modify()
{
  v1 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_62_0(v1);
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_61_0(v2);
  *(v0 + 24) = swift_unknownObjectWeakLoadStrong();
  return OUTLINED_FUNCTION_20_10();
}

void BlueprintCollectionViewDragDelegate3.init(blueprintProvider:blueprintLayoutProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_30_3();
  a20 = v23;
  a21 = v24;
  v25 = OUTLINED_FUNCTION_72_4();
  v26 = *v22;
  v27 = *MEMORY[0x1E69E7D40];
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_3_75();
  v29 = *(v28 + 152);
  v30 = sub_1D818E994();
  __swift_storeEnumTagSinglePayload(v22 + v29, 1, 1, v30);
  OUTLINED_FUNCTION_3_75();
  *(v22 + *(v31 + 160)) = 0;
  OUTLINED_FUNCTION_3_75();
  v32 = *((v27 & v26) + 0x50);
  OUTLINED_FUNCTION_48_0();
  v34 = v33;
  v36 = OUTLINED_FUNCTION_34_10(v35);
  v37(v36);
  OUTLINED_FUNCTION_3_75();
  OUTLINED_FUNCTION_48_0();
  v39 = OUTLINED_FUNCTION_64_5(v38);
  v40(v39);
  a9.receiver = v22;
  a9.super_class = v25;
  objc_msgSendSuper2(&a9, sel_init);
  v41 = OUTLINED_FUNCTION_35_11();
  v42(v41);
  (*(v34 + 8))(v21, v32);
  OUTLINED_FUNCTION_29();
}

Swift::Void __swiftcall BlueprintCollectionViewDragDelegate3.register(in:)(UICollectionView *in)
{
  v5[3] = swift_getObjectType();
  v5[0] = v1;
  objc_allocWithZone(MEMORY[0x1E69DCC48]);
  v3 = v1;
  v4 = sub_1D7FB6EA8(v5, sel_handleLongPressWithGestureRecognizer_);
  [(UICollectionView *)in addGestureRecognizer:v4];
}

void BlueprintCollectionViewDragDelegate3.targetIndexPathToReorderItem(from:to:)()
{
  OUTLINED_FUNCTION_120();
  v75 = v1;
  v68 = v2;
  v76 = v3;
  v65 = *v0;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & v65) + 0x68);
  v6 = *((*MEMORY[0x1E69E7D40] & v65) + 0x50);
  v7 = OUTLINED_FUNCTION_78_2(0, v5);
  OUTLINED_FUNCTION_9();
  v71 = v8;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_94();
  v73 = v10;
  v11 = OUTLINED_FUNCTION_78_2(255, v5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v69 = v6;
  v70 = v5;
  v13 = swift_getAssociatedConformanceWitness();
  v80 = v7;
  v81 = v11;
  v82 = AssociatedConformanceWitness;
  v83 = v13;
  v67 = type metadata accessor for BlueprintSection(0, &v80);
  OUTLINED_FUNCTION_9();
  v66 = v14;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v64 - v16;
  v80 = v7;
  v81 = v11;
  v82 = AssociatedConformanceWitness;
  v83 = v13;
  v64[1] = type metadata accessor for Blueprint(0, &v80);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_43();
  sub_1D7E3D564(0);
  v20 = OUTLINED_FUNCTION_50(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_15();
  v23 = v22 - v21;
  v24 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_15();
  v30 = v29 - v28;
  v31 = *((v4 & v65) + 0x98);
  OUTLINED_FUNCTION_42_0(v0 + v31);
  v32 = v0 + v31;
  v33 = v24;
  sub_1D7E54838(v32, v23);
  v34 = OUTLINED_FUNCTION_61_4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v34, v35, v24);
  v74 = v24;
  v72 = v30;
  if (EnumTagSinglePayload == 1)
  {
    (*(v26 + 16))(v30, v68, v24);
    v37 = OUTLINED_FUNCTION_61_4();
    v39 = v26;
    if (__swift_getEnumTagSinglePayload(v37, v38, v33) != 1)
    {
      OUTLINED_FUNCTION_0_118();
      sub_1D7E70DEC(v23, v40);
    }
  }

  else
  {
    OUTLINED_FUNCTION_85_0();
    v41();
    v39 = v26;
  }

  OUTLINED_FUNCTION_3_7();
  BlueprintProviderType.blueprint.getter(v69, v70);
  v42 = v75;
  sub_1D818E974();
  Blueprint.subscript.getter();
  v43 = OUTLINED_FUNCTION_31();
  v44(v43);
  (*(v71 + 16))(v73, v17, v7);
  OUTLINED_FUNCTION_14_15();
  v45(v17, v67);
  sub_1D7E0631C(0, &qword_1ECA0F588, &protocol descriptor for Droppable);
  if (swift_dynamicCast())
  {
    sub_1D7E05450(&v77, &v80);
    __swift_project_boxed_opaque_existential_1(&v80, v83);
    v46 = OUTLINED_FUNCTION_31();
    v47(v46);
    v48 = v77;
    if (v78 == 1)
    {
      if (v77 != 0)
      {
        v49 = v74;
        if (v77 ^ 1 | *(&v77 + 1))
        {
          v58 = sub_1D818E974();
          v59 = v72;
          if (v58 != sub_1D818E974())
          {
            (*(v39 + 32))(v76);
            goto LABEL_23;
          }

          (*(v39 + 8))(v59, v49);
        }

        else
        {
          (*(v39 + 8))(v72, v74);
        }

        OUTLINED_FUNCTION_85_0();
        v63(v60, v61, v62);
LABEL_23:
        __swift_destroy_boxed_opaque_existential_1Tm(&v80);
        goto LABEL_24;
      }
    }

    else
    {
      v52 = sub_1D818E974();
      if (v52 == sub_1D818E974())
      {
        v53 = sub_1D818E964();
        if (v53 < v48 || *(&v48 + 1) < v53)
        {
          v55 = v74;
          (*(v39 + 8))(v72, v74);
          (*(v39 + 16))(v76, v42, v55);
          goto LABEL_23;
        }
      }
    }

    v56 = OUTLINED_FUNCTION_65_6();
    v57(v56);
    goto LABEL_23;
  }

  v79 = 0;
  v77 = 0u;
  v78 = 0u;
  sub_1D7FBDB74(&v77, &qword_1ECA0F590, &qword_1ECA0F588, &protocol descriptor for Droppable);
  v50 = OUTLINED_FUNCTION_65_6();
  v51(v50);
LABEL_24:
  OUTLINED_FUNCTION_100();
}

void sub_1D8012D08()
{
  OUTLINED_FUNCTION_120();
  v53 = v1;
  v52 = v2;
  v3 = v0;
  v51 = v4;
  v45 = v5;
  v6 = *v0;
  v7 = *MEMORY[0x1E69E7D40];
  v42[0] = *MEMORY[0x1E69E7D40] & *v0;
  v49 = type metadata accessor for BlueprintViewAction.Action(0);
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  v47 = v10 - v9;
  v11 = *((v7 & v6) + 0x68);
  v12 = *((v7 & v6) + 0x50);
  OUTLINED_FUNCTION_40_7();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_6_16();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v50 = AssociatedConformanceWitness;
  v54 = type metadata accessor for BlueprintItem(0, AssociatedTypeWitness, AssociatedConformanceWitness, v15);
  OUTLINED_FUNCTION_9();
  v43 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_23();
  v44 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v42 - v20;
  OUTLINED_FUNCTION_40_7();
  v22 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_6_16();
  v23 = swift_getAssociatedConformanceWitness();
  v55[0] = v22;
  v55[1] = AssociatedTypeWitness;
  v55[2] = v23;
  v55[3] = AssociatedConformanceWitness;
  v24 = type metadata accessor for Blueprint(0, v55);
  OUTLINED_FUNCTION_9();
  v46 = v25;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_43();
  v27 = v43;
  BlueprintProviderType.blueprint.getter(v12, v11);
  v28 = v45;
  v48 = v24;
  Blueprint.subscript.getter();
  v42[1] = type metadata accessor for BlueprintViewActionRequest(0, AssociatedTypeWitness, v50, v29);
  v30 = *(v27 + 16);
  v31 = v44;
  v50 = v21;
  v30(v44, v21, v54);
  sub_1D7F9E3F0(0);
  v33 = *(v32 + 48);
  v34 = sub_1D818E994();
  OUTLINED_FUNCTION_8();
  v36 = *(v35 + 16);
  v37 = v47;
  v36(v47, v28, v34);
  v36(v37 + v33, v51, v34);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v55[0]) = v52;
  v38 = BlueprintViewActionRequest.__allocating_init(item:action:source:sourceView:completion:)(v31, v37, v55, 0, v53, 0);
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_42_0(v3 + *(v39 + 128));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v41 = Strong;
    (*(*(v42[0] + 120) + 72))(&protocol requirements base descriptor for BlueprintProviderType, v38, *(v42[0] + 96));
  }

  else
  {
  }

  (*(v27 + 8))(v50, v54);
  (*(v46 + 8))(&protocol requirements base descriptor for BlueprintProviderType, v48);
  OUTLINED_FUNCTION_100();
}

void sub_1D8013120()
{
  OUTLINED_FUNCTION_20_17();
  v1 = v0;
  v3 = v2;
  v4 = *v0;
  v5 = *MEMORY[0x1E69E7D40];
  sub_1D7E3D564(0);
  v7 = OUTLINED_FUNCTION_50(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_23();
  v110 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v109 = &v98 - v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_21_12();
  v108 = v12;
  v13 = *((v5 & v4) + 0x68);
  v14 = *((v5 & v4) + 0x50);
  OUTLINED_FUNCTION_64();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v105 = v16;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_14_1(v18);
  OUTLINED_FUNCTION_64();
  v19 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = swift_getAssociatedConformanceWitness();
  v115 = AssociatedTypeWitness;
  v116 = v19;
  v117 = AssociatedConformanceWitness;
  v118 = v21;
  v104 = type metadata accessor for BlueprintSection(0, &v115);
  OUTLINED_FUNCTION_9();
  v103 = v22;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_14_1(v24);
  v115 = AssociatedTypeWitness;
  v116 = v19;
  v117 = AssociatedConformanceWitness;
  v118 = v21;
  v25 = type metadata accessor for Blueprint(0, &v115);
  OUTLINED_FUNCTION_9();
  v101 = v26;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v98 - v28;
  v111 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v31 = v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v98 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_21_12();
  OUTLINED_FUNCTION_14_1(v36);
  v37 = [v3 view];
  if (!v37)
  {
    goto LABEL_30;
  }

  v38 = v37;
  objc_opt_self();
  v39 = swift_dynamicCastObjCClass();
  if (!v39)
  {
    goto LABEL_13;
  }

  v99 = v31;
  v40 = v39;
  v38 = v38;
  [v3 locationInView_];
  v42 = v41;
  v100 = v40;
  [v40 bounds];
  OUTLINED_FUNCTION_0_99();

  v120.origin.x = OUTLINED_FUNCTION_5_13();
  MidX = CGRectGetMidX(v120);
  v44 = [v3 state];
  if ((v44 - 3) >= 2)
  {
    if (v44 != 2)
    {
      if (v44 == 1)
      {
        v110 = v38;
        v45 = [v100 indexPathForItemAtPoint_];
        if (v45)
        {
          v46 = v45;
          sub_1D818E924();

          v47 = v99;
          v48 = v107;
          v49 = v34;
          v50 = v111;
          (*(v99 + 32))(v107, v49, v111);
          OUTLINED_FUNCTION_10_19();
          BlueprintProviderType.blueprint.getter(v14, v13);
          sub_1D818E974();
          v51 = v102;
          Blueprint.subscript.getter();
          OUTLINED_FUNCTION_14_15();
          v52(v29, v25);
          (*(v105 + 16))(v106, v51, AssociatedTypeWitness);
          OUTLINED_FUNCTION_14_15();
          v53(v51, v104);
          sub_1D7E0631C(0, &qword_1ECA0F588, &protocol descriptor for Droppable);
          if (swift_dynamicCast())
          {
            sub_1D7E05450(&v112, &v115);
            v54 = v119;
            __swift_project_boxed_opaque_existential_1(&v115, v118);
            v55 = OUTLINED_FUNCTION_6_1();
            v56(v55, v54);
            if (v113 == 1 && v112 == 0 || (v57 = v100, v58 = UICollectionView.cell(at:)(v48), v59 = v111, !v58))
            {
              (*(v47 + 8))(v48, v111);
            }

            else
            {
              v109 = v58;
              v60 = [v57 collectionViewLayout];
              ObjectType = swift_getObjectType();
              if (dynamic_cast_existential_1_conditional(v60, ObjectType, &protocol descriptor for BlueprintViewDynamicReorderingLayoutType))
              {
                v63 = v62;
                v64 = swift_getObjectType();
                v65 = *(v99 + 16);
                v66 = v108;
                v67 = v107;
                v65(v108, v107, v59);
                OUTLINED_FUNCTION_70_5();
                v68 = v64;
                v47 = v99;
                (*(v63 + 16))(v66, v68, v63);
              }

              else
              {

                v65 = *(v47 + 16);
                v66 = v108;
                v67 = v107;
              }

              v65(v66, v67, v59);
              OUTLINED_FUNCTION_70_5();
              OUTLINED_FUNCTION_10_19();
              v93 = *(v92 + 152);
              swift_beginAccess();
              sub_1D7E55614(v66, v1 + v93);
              swift_endAccess();
              v94 = v109;
              [v109 center];
              OUTLINED_FUNCTION_10_19();
              *(v1 + *(v95 + 160)) = v96;
              v97 = sub_1D818E8E4();
              [v100 beginInteractiveMovementForItemAtIndexPath_];

              (*(v47 + 8))(v67, v59);
            }

            __swift_destroy_boxed_opaque_existential_1Tm(&v115);
          }

          else
          {
            (*(v47 + 8))(v48, v50);

            v114 = 0;
            v112 = 0u;
            v113 = 0u;
            sub_1D7FBDB74(&v112, &qword_1ECA0F590, &qword_1ECA0F588, &protocol descriptor for Droppable);
          }
        }

        else
        {
        }

        goto LABEL_30;
      }

LABEL_13:

      goto LABEL_30;
    }

    v77 = v38;
    OUTLINED_FUNCTION_10_19();
    v79 = *(v78 + 152);
    OUTLINED_FUNCTION_8_4(v1 + v79, &v115);
    v80 = v1 + v79;
    v81 = v109;
    sub_1D7E54838(v80, v109);
    if (__swift_getEnumTagSinglePayload(v81, 1, v111) != 1)
    {
      OUTLINED_FUNCTION_0_118();
      sub_1D7E70DEC(v81, v90);
      OUTLINED_FUNCTION_2_5();
      [v100 updateInteractiveMovementTargetPosition_];

      goto LABEL_30;
    }

    OUTLINED_FUNCTION_0_118();
    v76 = v81;
LABEL_18:
    sub_1D7E70DEC(v76, v75);
    goto LABEL_30;
  }

  v69 = v38;
  OUTLINED_FUNCTION_10_19();
  v71 = *(v70 + 152);
  OUTLINED_FUNCTION_8_4(v1 + v71, &v115);
  v72 = v1 + v71;
  v73 = v110;
  sub_1D7E54838(v72, v110);
  v74 = v111;
  if (__swift_getEnumTagSinglePayload(v73, 1, v111) == 1)
  {

    OUTLINED_FUNCTION_0_118();
    v76 = v73;
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_0_118();
  sub_1D7E70DEC(v73, v82);
  v83 = v100;
  [v100 endInteractiveMovement];
  v84 = [v83 collectionViewLayout];
  v85 = swift_getObjectType();
  if (dynamic_cast_existential_1_conditional(v84, v85, &protocol descriptor for BlueprintViewDynamicReorderingLayoutType))
  {
    v87 = v86;
    v88 = swift_getObjectType();
    v89 = v108;
    __swift_storeEnumTagSinglePayload(v108, 1, 1, v74);
    (*(v87 + 16))(v89, v88, v87);
  }

LABEL_30:
  OUTLINED_FUNCTION_3_48();
}

void sub_1D8013B0C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1D8013120();
}

uint64_t sub_1D8013BB4(char *a1)
{
  MEMORY[0x1DA715E30](&a1[*((*MEMORY[0x1E69E7D40] & *a1) + 0x80)]);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_10_2();
  (*(v2 + 8))(&a1[v3]);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_10_2();
  (*(v4 + 8))(&a1[v5]);
  OUTLINED_FUNCTION_2_5();
  return sub_1D7E70DEC(&a1[*(v6 + 152)], sub_1D7E3D564);
}

uint64_t type metadata accessor for DragSessionData(uint64_t a1)
{
  result = qword_1ECA0F640;
  if (!qword_1ECA0F640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D8013D1C()
{
  result = qword_1ECA0F5C8;
  if (!qword_1ECA0F5C8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ECA0F5C8);
  }

  return result;
}

uint64_t sub_1D8013D78(uint64_t a1, uint64_t a2)
{
  sub_1D7E3D564(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8013E28(uint64_t a1)
{
  result = sub_1D818E994();
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

void sub_1D8013F08(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_1D7E3D564(319);
      if (v3 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

uint64_t sub_1D8014070(uint64_t a1, uint64_t a2)
{
  sub_1D7E328A8(0, &qword_1ECA0F578, &qword_1ECA0F580, &protocol descriptor for BlueprintViewDiffableDropDelegateType);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D80140EC(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[5];
  v6 = v1[7];
  v12 = v1[6];
  v13 = v1[4];
  OUTLINED_FUNCTION_23_11();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_23_11();
  v8 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_68();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_68();
  v14[0] = AssociatedTypeWitness;
  v14[1] = v8;
  v14[2] = AssociatedConformanceWitness;
  v14[3] = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for Blueprint(0, v14);
  OUTLINED_FUNCTION_50(v10);
  sub_1D8011FD8(a1, v1[8], v1 + ((*(v11 + 80) + 72) & ~*(v11 + 80)), v3, v4, v13, v5, v12, v6);
}

unint64_t sub_1D8014214()
{
  result = qword_1ECA0F6B8[0];
  if (!qword_1ECA0F6B8[0])
  {
    sub_1D818E994();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA0F6B8);
  }

  return result;
}

uint64_t KeyCommandTraverseProvider.invalidator.getter()
{
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t KeyCommandTraverseProvider.invalidator.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_25(v2 + 16, a2);
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*KeyCommandTraverseProvider.invalidator.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 24);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1D7F5FE58;
}

uint64_t sub_1D80143A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 40);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D80143F8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 40) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t KeyCommandTraverseProvider.delegate.getter()
{
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t KeyCommandTraverseProvider.delegate.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_25(v2 + 32, a2);
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*KeyCommandTraverseProvider.delegate.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 40);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1D801455C;
}

void sub_1D801455C()
{
  OUTLINED_FUNCTION_3_5();
  *(v2 + 40) = v3;
  swift_unknownObjectWeakAssign();
  if (v1)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v0);
}

void KeyCommandTraverseProvider.traverseDirections.getter(void *a1@<X8>)
{
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  *a1 = *(v1 + 48);
}

uint64_t KeyCommandTraverseProvider.traverseDirections.setter(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = OUTLINED_FUNCTION_0_25(v2 + 48, a2);
  *(v2 + 48) = v3;
  return result;
}

void KeyCommandTraverseProvider.traverseBehavior.getter(_BYTE *a1@<X8>)
{
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  *a1 = *(v1 + 56);
}

uint64_t KeyCommandTraverseProvider.traverseBehavior.setter(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = OUTLINED_FUNCTION_0_25(v2 + 56, a2);
  *(v2 + 56) = v3;
  return result;
}

void KeyCommandTraverseProvider.startBehavior.getter(_BYTE *a1@<X8>)
{
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  *a1 = *(v1 + 57);
}

uint64_t KeyCommandTraverseProvider.startBehavior.setter(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = OUTLINED_FUNCTION_0_25(v2 + 57, a2);
  *(v2 + 57) = v3;
  return result;
}

uint64_t KeyCommandTraverseProvider.scrollToItemWhileTraversing.getter()
{
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  return *(v0 + 58);
}

uint64_t KeyCommandTraverseProvider.scrollToItemWhileTraversing.setter(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_0_25(v2 + 58, a2);
  *(v2 + 58) = a1;
  return result;
}

uint64_t KeyCommandTraverseProvider.StartBehavior.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

uint64_t sub_1D8014938(uint64_t a1)
{
  sub_1D81927E4();
  KeyCommandTraverseProvider.StartBehavior.hash(into:)();
  return sub_1D8192824();
}

uint64_t KeyCommandTraverseProvider.__allocating_init(traverseCollectionProvider:viewProvider:commandCenter:tracker:)()
{
  OUTLINED_FUNCTION_1_33();
  v0 = swift_allocObject();
  KeyCommandTraverseProvider.init(traverseCollectionProvider:viewProvider:commandCenter:tracker:)();
  return v0;
}

uint64_t *KeyCommandTraverseProvider.init(traverseCollectionProvider:viewProvider:commandCenter:tracker:)()
{
  OUTLINED_FUNCTION_1_33();
  v6 = *v1;
  v1[3] = 0;
  swift_unknownObjectWeakInit();
  v1[5] = 0;
  swift_unknownObjectWeakInit();
  v1[6] = 15;
  *(v1 + 28) = 0;
  *(v1 + 58) = 1;
  OUTLINED_FUNCTION_12();
  *(v1 + *(v7 + 192)) = v8;
  OUTLINED_FUNCTION_12();
  *(v1 + *(v9 + 200)) = 0;
  OUTLINED_FUNCTION_12();
  v11 = *(v10 + 208);
  v12 = sub_1D818E994();
  __swift_storeEnumTagSinglePayload(v1 + v11, 1, 1, v12);
  OUTLINED_FUNCTION_12();
  (*(*(*(v6 + 80) - 8) + 32))(v1 + *(v13 + 160), v5);
  OUTLINED_FUNCTION_12();
  *(v1 + *(v14 + 168)) = v4;
  OUTLINED_FUNCTION_12();
  v16 = (v1 + *(v15 + 176));
  *v16 = v3;
  v16[1] = v2;
  OUTLINED_FUNCTION_12();
  v18 = v1 + *(v17 + 184);
  *(v18 + 32) = *(v0 + 32);
  v19 = *(v0 + 16);
  *v18 = *v0;
  *(v18 + 16) = v19;
  return v1;
}

uint64_t KeyCommandTraverseProvider.selectedIndexPath.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_12();
  v4 = *(v3 + 208);
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  return sub_1D7E54838(v1 + v4, a1);
}

uint64_t sub_1D8014B9C(uint64_t a1)
{
  sub_1D7E1AD50(0, &qword_1EDBBC690, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1D7E54838(a1, &v6 - v3);
  return KeyCommandTraverseProvider.selectedIndexPath.setter(v4);
}

uint64_t KeyCommandTraverseProvider.selectedIndexPath.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_0_119(a1, &qword_1EDBBC690);
  v4 = OUTLINED_FUNCTION_50(v3);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;
  OUTLINED_FUNCTION_12();
  v8 = *(v7 + 192);
  *(v1 + v8) = 0;
  sub_1D7E54838(a1, v6);
  sub_1D8014CE4(v6);
  result = sub_1D7E73334(a1);
  *(v1 + v8) = 1;
  return result;
}

uint64_t sub_1D8014CE4(uint64_t a1)
{
  sub_1D8014F60();
  v3 = *(*v1 + 208);
  swift_beginAccess();
  sub_1D8019D44(a1, v1 + v3);
  swift_endAccess();
  sub_1D8015554();
  return sub_1D7E73334(a1);
}

void (*KeyCommandTraverseProvider.selectedIndexPath.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  OUTLINED_FUNCTION_0_119(a1, &qword_1EDBBC690);
  OUTLINED_FUNCTION_50(v3);
  v5 = *(v4 + 64);
  a1[1] = __swift_coroFrameAllocStub(v5);
  v6 = __swift_coroFrameAllocStub(v5);
  a1[2] = v6;
  KeyCommandTraverseProvider.selectedIndexPath.getter(v6);
  return sub_1D8014DF0;
}

void sub_1D8014DF0(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_1D7E54838(v3, v2);
    KeyCommandTraverseProvider.selectedIndexPath.setter(v2);
    sub_1D7E73334(v3);
  }

  else
  {
    KeyCommandTraverseProvider.selectedIndexPath.setter(v3);
  }

  free(v3);

  free(v2);
}

void KeyCommandTraverseProvider.selectionBehavior.getter(_BYTE *a1@<X8>)
{
  OUTLINED_FUNCTION_12();
  v4 = *(v3 + 200);
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  *a1 = *(v1 + v4);
}

uint64_t KeyCommandTraverseProvider.selectionBehavior.setter(char *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_12();
  v4 = *(v3 + 200);
  result = OUTLINED_FUNCTION_0_25(v1 + v4, v5);
  *(v1 + v4) = v2;
  return result;
}

uint64_t (*KeyCommandTraverseProvider.selectionBehavior.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_16_4(v0 + *(v1 + 200));
  return j_j__swift_endAccess;
}

uint64_t sub_1D8014F60()
{
  v1 = v0;
  v2 = *v0;
  sub_1D7E1AD50(0, &qword_1EDBBC690, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = sub_1D818E994();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v2[26];
  swift_beginAccess();
  sub_1D7E54838(v1 + v13, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_1D7E73334(v8);
  }

  (*(v10 + 32))(v12, v8, v9);
  if ((*(v2[12] + 16))(v12, v2[10]))
  {
    (*(v10 + 16))(v5, v12, v9);
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v9);
    sub_1D80151D8(v5);
    sub_1D7E73334(v5);
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1D80151D8(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1D7E1AD50(0, &qword_1EDBBC690, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v25 - v6;
  v8 = sub_1D818E994();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7E54838(a1, v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1D7E73334(v7);
  }

  (*(v9 + 32))(v11, v7, v8);
  if (*(v2 + *(*v2 + 192)) == 1 && ((*(v4[12] + 16))(v11, v4[10]) & 1) != 0)
  {
    v13 = *(v2 + *(*v2 + 168));
    v14 = v4[13];
    v15 = *(v14 + 56);
    v16 = v4[11];
    v27 = v13;
    v28 = v14 + 56;
    v26 = v15;
    v17 = v15(v16, v14);
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v19 = *(AssociatedConformanceWitness + 120);
    v20 = swift_checkMetadataState();
    v21 = v19(v20, AssociatedConformanceWitness);

    if ((v21 & 1) == 0)
    {
      v22 = v26(v16, v14);
      v23 = (*(AssociatedConformanceWitness + 136))(v20, AssociatedConformanceWitness);

      if ((v23 & 1) == 0)
      {
        v24 = v26(v16, v14);
        (*(AssociatedConformanceWitness + 192))(v11, 0, v20, AssociatedConformanceWitness);
      }
    }
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1D8015554()
{
  sub_1D7E1AD50(0, &qword_1EDBBC690, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8[-v2];
  v4 = *(*v0 + 208);
  swift_beginAccess();
  sub_1D7E54838(v0 + v4, v3);
  sub_1D8015678(v3, 1);
  sub_1D7E73334(v3);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = v0[3];
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D8015678(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = *v3;
  sub_1D7E1AD50(0, &qword_1EDBBC690, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  v13 = sub_1D818E994();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7E54838(a1, v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    return sub_1D7E73334(v12);
  }

  (*(v14 + 32))(v16, v12, v13);
  if (v3[*(*v3 + 192)] == 1 && ((*(v6[12] + 16))(v16, v6[10]) & 1) != 0)
  {
    v18 = v6[13];
    v19 = *(v18 + 56);
    v20 = v6[11];
    v30 = *&v3[*(*v3 + 168)];
    v31 = v18 + 56;
    v29 = v19;
    v21 = v19(v20, v18);
    (*(v14 + 16))(v9, v16, v13);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v13);
    swift_getAssociatedTypeWitness();
    v26 = v18;
    v28 = v20;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v32 = a2;
    v23 = *(AssociatedConformanceWitness + 184);
    v24 = swift_checkMetadataState();
    v27 = AssociatedConformanceWitness;
    v23(v9, 0, v24, AssociatedConformanceWitness);

    sub_1D7E73334(v9);
    if (v32)
    {
      swift_beginAccess();
      if (v3[58] == 1)
      {
        v25 = v29(v28, v26);
        (*(v27 + 200))(v16, 1, v24);
      }
    }
  }

  return (*(v14 + 8))(v16, v13);
}

void KeyCommandTraverseProvider.register(in:)(uint64_t a1)
{
  v3 = v1;
  v183 = a1;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_0_119(a1, &qword_1EDBBC690);
  v7 = OUTLINED_FUNCTION_50(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_28_0();
  v176 = v8 - v9;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_24_1();
  v177 = v11;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_24_1();
  v178 = v13;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v14);
  v15 = OUTLINED_FUNCTION_19_18();
  OUTLINED_FUNCTION_9();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_28_0();
  v174 = v19 - v20;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_24_1();
  v175 = v22;
  OUTLINED_FUNCTION_77();
  v24 = MEMORY[0x1EEE9AC00](v23);
  v180 = &v161 - v25;
  v26 = *(v1 + v4[21]);
  v27 = v4[13];
  v28 = *(v27 + 56);
  v29 = v4[11];
  v179 = v26;
  v181 = v28;
  v30 = (v28)(v29, v27, v24);
  v182 = [v30 window];

  if (!v182)
  {
    goto LABEL_30;
  }

  if (![v182 isKeyWindow])
  {
    OUTLINED_FUNCTION_100();

    return;
  }

  v170 = v27 + 56;
  v168 = v17;
  sub_1D8190F14();
  v32 = v31;
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  OUTLINED_FUNCTION_8_8();
  v33 = swift_allocObject();
  v173 = v15;
  v34 = v33;
  v169 = v2;
  v35 = v27;
  v36 = v29;
  v37 = v5[10];
  v33[2] = v37;
  v33[3] = v36;
  v38 = v5[12];
  v33[4] = v38;
  v33[5] = v35;
  v33[6] = v3;
  OUTLINED_FUNCTION_4_52();
  sub_1D7E3DAB0(v39, v40, v41, v42, v43, v44, v34, v45, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178);

  swift_unownedRelease();
  sub_1D8190F14();
  OUTLINED_FUNCTION_27_13();
  swift_unownedRetain();
  swift_unownedRetain();

  OUTLINED_FUNCTION_8_8();
  v46 = swift_allocObject();
  OUTLINED_FUNCTION_31_8(v46);
  OUTLINED_FUNCTION_4_52();
  sub_1D7E3DAB0(v47, v48, v49, v50, v51, v52, v32, v53, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178);

  swift_unownedRelease();
  sub_1D8190F14();
  OUTLINED_FUNCTION_27_13();
  swift_unownedRetain();
  swift_unownedRetain();

  OUTLINED_FUNCTION_8_8();
  v54 = swift_allocObject();
  OUTLINED_FUNCTION_31_8(v54);
  OUTLINED_FUNCTION_4_52();
  sub_1D7E3DAB0(v55, v56, v57, v58, v59, v60, v32, v61, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178);

  swift_unownedRelease();
  sub_1D8190F14();
  OUTLINED_FUNCTION_27_13();
  swift_unownedRetain();
  swift_unownedRetain();

  OUTLINED_FUNCTION_8_8();
  v62 = swift_allocObject();
  v171 = v38;
  v172 = v37;
  v62[2] = v37;
  v63 = v36;
  v64 = v35;
  v65 = v169;
  v62[3] = v63;
  v62[4] = v38;
  v62[5] = v64;
  v62[6] = v3;
  OUTLINED_FUNCTION_4_52();
  sub_1D7E3DAB0(v66, v67, v68, v69, v70, v71, v62, v72, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178);

  swift_unownedRelease();
  v73 = *(*v3 + 208);
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  sub_1D7E54838(v3 + v73, v65);
  OUTLINED_FUNCTION_3_9(v65);
  if (v74)
  {

    sub_1D7E73334(v65);
    goto LABEL_30;
  }

  v77 = v168 + 32;
  v78 = v180;
  OUTLINED_FUNCTION_29_9();
  v161 = v79;
  v79();
  v80 = *(v171 + 8);
  v162 = *(*v3 + 160);
  v163 = v80;
  v164 = v171 + 8;
  v80(v184, v172);
  v81 = v185;
  v82 = v186;
  v166 = __swift_project_boxed_opaque_existential_1(v184, v185);
  v83 = v181(v63, v64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v167 = v64;
  v165 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v86 = *(v82 + 56);
  v169 = AssociatedConformanceWitness;
  v86(&v188, v78, v83);

  if (!*(&v189 + 1))
  {
    v183 = v77;
    sub_1D7E9DD24(&v188, &qword_1ECA0DA98, qword_1EDBB7610, &protocol descriptor for KeyCommandTraversableItem);
    __swift_destroy_boxed_opaque_existential_1Tm(v184);
    v116 = OUTLINED_FUNCTION_22_13();
    v117(v116);
    v118 = v185;
    v119 = v186;
    v166 = __swift_project_boxed_opaque_existential_1(v184, v185);
    v120 = v167;
    v121 = v181(v63, v167);
    v122 = v177;
    (*(v119 + 40))(v180, 1, v121, v169, v118, v119);

    v123 = v173;
    OUTLINED_FUNCTION_43_0(v122, 1, v173);
    if (v74)
    {
      sub_1D7E73334(v122);
      __swift_destroy_boxed_opaque_existential_1Tm(v184);
      v124 = OUTLINED_FUNCTION_22_13();
      v125(v124);
      v126 = v185;
      v127 = v186;
      __swift_project_boxed_opaque_existential_1(v184, v185);
      v128 = v181(v63, v120);
      v129 = v176;
      v130 = v180;
      v131 = v126;
      v132 = v173;
      (*(v127 + 48))(v180, 1, v128, v169, v131, v127);

      OUTLINED_FUNCTION_3_9(v129);
      if (!v74)
      {
        v154 = v174;
        (v161)(v174, v129, v132);
        __swift_destroy_boxed_opaque_existential_1Tm(v184);
        OUTLINED_FUNCTION_21_16();
        v155 = v178;
        OUTLINED_FUNCTION_29_9();
        v156();
        v157 = OUTLINED_FUNCTION_24_0();
        __swift_storeEnumTagSinglePayload(v157, v158, v159, v132);
        sub_1D8014CE4(v155);

        v160 = *(v127 + 8);
        v160(v154, v132);
        v160(v130, v132);
        goto LABEL_30;
      }

      (*(v168 + 8))(v130, v132);

      sub_1D7E73334(v129);
      v133 = v184;
      goto LABEL_28;
    }

    v147 = v175;
    OUTLINED_FUNCTION_29_9();
    v161();
    __swift_destroy_boxed_opaque_existential_1Tm(v184);
    OUTLINED_FUNCTION_21_16();
    v148 = v178;
    v149(v178, v147, v123);
    v150 = OUTLINED_FUNCTION_24_0();
    __swift_storeEnumTagSinglePayload(v150, v151, v152, v123);
    sub_1D8014CE4(v148);

    v153 = *(v119 + 8);
    v153(v147, v123);
    v153(v180, v123);
LABEL_30:
    OUTLINED_FUNCTION_100();
    return;
  }

  sub_1D7E05450(&v188, v191);
  __swift_destroy_boxed_opaque_existential_1Tm(v184);
  OUTLINED_FUNCTION_25_10();
  v87 = OUTLINED_FUNCTION_6_1();
  v89 = v88(v87, v78);
  v90 = v181;
  v91 = v167;
  if ((v89 & 1) == 0)
  {
LABEL_23:
    v134 = v90(v63, v91);
    v135 = v169;
    v136 = v169 + 80;
    v137 = *(v169 + 80);
    v138 = swift_checkMetadataState();
    v139 = v180;
    v140 = v137(v180, v138, v135);

    if (v140)
    {
      v187 = v140;
      v136 = sub_1D7F9F0F0();
      sub_1D7E0631C(0, &qword_1EDBB6760, &protocol descriptor for KeyCommandBlockProviderType);
      v141 = v140;
      if (swift_dynamicCast())
      {
        sub_1D7E05450(&v188, v184);
        v142 = v185;
        v143 = v186;
        __swift_project_boxed_opaque_existential_1(v184, v185);
        v136 = (*(v143 + 8))(v142, v143);
        sub_1D7F04980();

        __swift_destroy_boxed_opaque_existential_1Tm(v184);
      }

      else
      {

        v190 = 0;
        v188 = 0u;
        v189 = 0u;
        sub_1D7E9DD24(&v188, &qword_1EDBB6758, &qword_1EDBB6760, &protocol descriptor for KeyCommandBlockProviderType);
      }
    }

    OUTLINED_FUNCTION_21_16();
    v144 = v178;
    v145 = v173;
    v146(v178, v139, v173);
    __swift_storeEnumTagSinglePayload(v144, 0, 1, v145);
    sub_1D8015678(v144, 0);

    sub_1D7E73334(v144);
    (*(v136 + 8))(v139, v145);
    v133 = v191;
LABEL_28:
    __swift_destroy_boxed_opaque_existential_1Tm(v133);
    goto LABEL_30;
  }

  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  OUTLINED_FUNCTION_8_8();
  v92 = swift_allocObject();
  OUTLINED_FUNCTION_30_12(v92);
  OUTLINED_FUNCTION_4_52();
  sub_1D7E3DAB0(v93, v94, v95, v96, v97, v98, v81, v99, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178);
  OUTLINED_FUNCTION_6_1();

  swift_unownedRelease();
  OUTLINED_FUNCTION_25_10();
  v100 = OUTLINED_FUNCTION_6_1();
  if (v101(v100, v78))
  {
    swift_unownedRetainStrong();
    swift_unownedRetain();
    swift_unownedRetain();

    OUTLINED_FUNCTION_8_8();
    v102 = swift_allocObject();
    OUTLINED_FUNCTION_30_12(v102);
    OUTLINED_FUNCTION_4_52();
    sub_1D7E3DAB0(v103, v104, v105, v106, v107, v108, v81, v109, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178);
    OUTLINED_FUNCTION_6_1();

    swift_unownedRelease();
  }

  OUTLINED_FUNCTION_25_10();
  v110 = OUTLINED_FUNCTION_6_1();
  v112 = v111(v110, v78);
  v113 = 0;
  v114 = *(v112 + 16);
  for (i = v112 + 32; ; i += 136)
  {
    if (v114 == v113)
    {

      v90 = v181;
      goto LABEL_23;
    }

    if (v113 >= *(v112 + 16))
    {
      break;
    }

    sub_1D801991C(i, v184);
    sub_1D8017F7C(v184, v3);
    ++v113;
    sub_1D8019978(v184);
  }

  __break(1u);

  sub_1D8019978(v184);
  __break(1u);
}

double sub_1D80166DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_unownedRetainStrong();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(a1 + 40);

    ObjectType = swift_getObjectType();
    v12 = swift_unownedRetainStrong();
    (*(v10 + 32))(v12, a2, a3, a4, a5, ObjectType, v10);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  swift_unownedRetainStrong();
  swift_beginAccess();
  v13 = *(a1 + 48);

  swift_unownedRetainStrong();
  if ((v13 & 2) != 0)
  {
    KeyCommandTraverseProvider.traverse(_:)(0);
  }

  else
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = *(a1 + 40);

      v15 = swift_getObjectType();
      v16 = swift_unownedRetainStrong();
      (*(v14 + 24))(v16, 0, a2, a3, a4, a5, v15, v14);

      swift_unknownObjectRelease();
      return result;
    }
  }

  return result;
}

void KeyCommandTraverseProvider.traverse(_:)(uint64_t a1)
{
  v3 = v1;
  OUTLINED_FUNCTION_12();
  v6 = v5;
  OUTLINED_FUNCTION_0_119(v7, &qword_1EDBBC690);
  v9 = OUTLINED_FUNCTION_50(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_28_0();
  v169 = v10 - v11;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v151 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v151 - v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_24_1();
  v170 = v19;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_24_1();
  v167 = v21;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_24_1();
  v168 = v23;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_24_1();
  v171 = v25;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v151 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v30 = OUTLINED_FUNCTION_19_18();
  OUTLINED_FUNCTION_9();
  v172 = v31;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_28_0();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_24_1();
  v35 = v34;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v36);
  MEMORY[0x1EEE9AC00](v37);
  if (a1 == 1)
  {
    v168 = v39;
    v170 = 1;
    v41 = v6[26];
    OUTLINED_FUNCTION_7();
    swift_beginAccess();
    sub_1D7E54838(v3 + v41, v14);
    OUTLINED_FUNCTION_3_9(v14);
    if (v72)
    {
      sub_1D7E73334(v14);
      OUTLINED_FUNCTION_39_5();
      v42 = OUTLINED_FUNCTION_20_18();
      v43(v42);
      OUTLINED_FUNCTION_10_35();
      v44 = v171;
      v45 = OUTLINED_FUNCTION_6_1();
      v46(v45, v41);
      sub_1D8014CE4(v44);
      __swift_destroy_boxed_opaque_existential_1Tm(v173);
    }

    else
    {
      v54 = *(v172 + 32);
      v55 = v35;
      v162 = v172 + 32;
      v161 = v54;
      v54(v35, v14, v30);
      OUTLINED_FUNCTION_39_5();
      v56 = OUTLINED_FUNCTION_24_12();
      v155 = v57;
      v164 = v56;
      v165 = v58;
      v156 = v59;
      v154 = v60;
      v60();
      v61 = v175;
      v166 = __swift_project_boxed_opaque_existential_1(v173, v174);
      OUTLINED_FUNCTION_39_5();
      v63 = v6[13];
      v64 = v30;
      v65 = *(v63 + 56);
      v66 = v6[11];
      v160 = *(v3 + *(v62 + 168));
      v159 = v65;
      v67 = v65(v66, v63);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v163 = v66;
      v158 = AssociatedTypeWitness;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v70 = *(v61 + 48);
      v71 = v169;
      v167 = v55;
      v157 = AssociatedConformanceWitness;
      v70(v55, 0, v67);

      OUTLINED_FUNCTION_43_0(v71, 1, v64);
      if (v72)
      {
        sub_1D7E73334(v71);
        __swift_destroy_boxed_opaque_existential_1Tm(v173);
        v73 = v163;
        v74 = v159(v163, v63);
        v75 = v167;
        v76 = sub_1D818E974();
        v77 = v157;
        v78 = v157 + 112;
        v79 = *(v157 + 112);
        v80 = swift_checkMetadataState();
        v81 = v79(v76, v80, v77);

        if (v81 < 1)
        {
          (v154)(v173, v164, v165);
          OUTLINED_FUNCTION_10_35();
          v138 = v171;
          v139 = OUTLINED_FUNCTION_6_1();
          v140(v139, v78);
          sub_1D8014CE4(v138);
          __swift_destroy_boxed_opaque_existential_1Tm(v173);
          a1 = v170;
          v82 = v172;
        }

        else
        {
          v82 = v172;
          v83 = OUTLINED_FUNCTION_28_10();
          v84(v83, v75, v64);
          v85 = OUTLINED_FUNCTION_24_0();
          __swift_storeEnumTagSinglePayload(v85, v86, v87, v64);
          OUTLINED_FUNCTION_34_11();
          a1 = v170;
        }

        OUTLINED_FUNCTION_7();
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          swift_getObjectType();
          v141 = OUTLINED_FUNCTION_32_7();
          v142(v141, 1, v164, v73, v165, v63);
          swift_unknownObjectRelease();
        }

        (*(v82 + 8))(v75, v64);
        goto LABEL_22;
      }

      v121 = v168;
      v161(v168, v71, v64);
      __swift_destroy_boxed_opaque_existential_1Tm(v173);
      v122 = v172;
      v123 = OUTLINED_FUNCTION_28_10();
      v124(v123, v121, v64);
      v125 = OUTLINED_FUNCTION_24_0();
      __swift_storeEnumTagSinglePayload(v125, v126, v127, v64);
      OUTLINED_FUNCTION_34_11();
      v128 = *(v122 + 8);
      v128(v121, v64);
      v128(v167, v64);
    }
  }

  else
  {
    v166 = v40;
    v169 = v30;
    if (a1)
    {
      v173[0] = a1;
      sub_1D81926E4();
      __break(1u);
      return;
    }

    v47 = &v151 - v38;
    v48 = v6[26];
    OUTLINED_FUNCTION_7();
    swift_beginAccess();
    sub_1D7E54838(v3 + v48, v2);
    v49 = v169;
    OUTLINED_FUNCTION_43_0(v2, 1, v169);
    if (v72)
    {
      sub_1D7E73334(v2);
      sub_1D8018E98(v17);
      OUTLINED_FUNCTION_3_9(v17);
      if (v72)
      {
        OUTLINED_FUNCTION_39_5();
        v50 = OUTLINED_FUNCTION_20_18();
        v51(v50);
        OUTLINED_FUNCTION_10_35();
        v129 = v170;
        v52 = OUTLINED_FUNCTION_6_1();
        v53(v52, v28);
        __swift_destroy_boxed_opaque_existential_1Tm(v173);
        OUTLINED_FUNCTION_43_0(v17, 1, v49);
        if (!v72)
        {
          sub_1D7E73334(v17);
        }
      }

      else
      {
        v129 = v170;
        (*(v172 + 32))(v170, v17, v49);
        __swift_storeEnumTagSinglePayload(v129, 0, 1, v49);
      }

      sub_1D8014CE4(v129);
      goto LABEL_22;
    }

    v170 = 0;
    v88 = (v172 + 32);
    OUTLINED_FUNCTION_29_9();
    v160 = v89;
    v89();
    OUTLINED_FUNCTION_39_5();
    v90 = OUTLINED_FUNCTION_24_12();
    v153 = v91;
    v155 = v90;
    v156 = v92;
    v154 = v93;
    v152 = v94;
    v94();
    v164 = v174;
    v162 = v175;
    v163 = __swift_project_boxed_opaque_existential_1(v173, v174);
    OUTLINED_FUNCTION_39_5();
    v96 = v6[13];
    v97 = *(v96 + 56);
    v98 = v6[11];
    v159 = *(v3 + *(v95 + 168));
    v158 = v97;
    v99 = v97(v98, v96);
    v100 = swift_getAssociatedTypeWitness();
    v161 = v98;
    v157 = v100;
    v101 = swift_getAssociatedConformanceWitness();
    v102 = *(v162 + 40);
    v165 = v47;
    v102(v47, 0, v99, v101, v164);

    OUTLINED_FUNCTION_3_9(v28);
    if (v103)
    {
      v166 = v88;
      sub_1D7E73334(v28);
      __swift_destroy_boxed_opaque_existential_1Tm(v173);
      v104 = v161;
      v105 = v158(v161, v96);
      v106 = v165;
      v107 = sub_1D818E974();
      v108 = v101;
      v109 = *(v101 + 112);
      v110 = swift_checkMetadataState();
      v111 = v109(v107, v110, v108);

      v112 = v96;
      if (v111 < 1)
      {
        v171 = v96;
        v143 = v167;
        sub_1D8018E98(v167);
        v116 = v169;
        OUTLINED_FUNCTION_43_0(v143, 1, v169);
        a1 = v170;
        v114 = v172;
        if (v72)
        {
          (v152)(v173, v155, v156);
          OUTLINED_FUNCTION_10_35();
          v144 = OUTLINED_FUNCTION_6_1();
          v145(v144, v112);
          __swift_destroy_boxed_opaque_existential_1Tm(v173);
          OUTLINED_FUNCTION_43_0(v143, 1, v116);
          if (!v72)
          {
            sub_1D7E73334(v143);
          }
        }

        else
        {
          (v160)(v168, v143, v116);
          v146 = OUTLINED_FUNCTION_24_0();
          __swift_storeEnumTagSinglePayload(v146, v147, v148, v116);
        }

        v112 = v171;
        v113 = v161;
      }

      else
      {
        v113 = v104;
        v114 = v172;
        v115 = OUTLINED_FUNCTION_28_10();
        v116 = v169;
        v117(v115, v106, v169);
        v118 = OUTLINED_FUNCTION_24_0();
        __swift_storeEnumTagSinglePayload(v118, v119, v120, v116);
        a1 = v170;
      }

      OUTLINED_FUNCTION_34_11();
      OUTLINED_FUNCTION_7();
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_getObjectType();
        v149 = OUTLINED_FUNCTION_32_7();
        v150(v149, 0, v155, v113, v156, v112);
        swift_unknownObjectRelease();
      }

      (*(v114 + 8))(v106, v116);
      goto LABEL_22;
    }

    v130 = v166;
    (v160)(v166, v28, v49);
    __swift_destroy_boxed_opaque_existential_1Tm(v173);
    v131 = v172;
    v132 = OUTLINED_FUNCTION_28_10();
    v133(v132, v130, v49);
    v134 = OUTLINED_FUNCTION_24_0();
    __swift_storeEnumTagSinglePayload(v134, v135, v136, v49);
    OUTLINED_FUNCTION_34_11();
    v137 = *(v131 + 8);
    v137(v130, v49);
    v137(v165, v49);
  }

  a1 = v170;
LABEL_22:
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  if (*(v3 + 56) == 1)
  {
    sub_1D8017A30();
  }

  sub_1D8018AFC(a1);
  OUTLINED_FUNCTION_100();
}

double sub_1D8017520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_unownedRetainStrong();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(a1 + 40);

    ObjectType = swift_getObjectType();
    v12 = swift_unownedRetainStrong();
    (*(v10 + 32))(v12, a2, a3, a4, a5, ObjectType, v10);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  swift_unownedRetainStrong();
  swift_beginAccess();
  v13 = *(a1 + 48);

  swift_unownedRetainStrong();
  if ((v13 & 8) != 0)
  {
    KeyCommandTraverseProvider.traverse(_:)(0);
  }

  else
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = *(a1 + 40);

      v15 = swift_getObjectType();
      v16 = swift_unownedRetainStrong();
      (*(v14 + 24))(v16, 0, a2, a3, a4, a5, v15, v14);

      swift_unknownObjectRelease();
      return result;
    }
  }

  return result;
}

double sub_1D80176D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_unownedRetainStrong();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(a1 + 40);

    ObjectType = swift_getObjectType();
    v12 = swift_unownedRetainStrong();
    (*(v10 + 32))(v12, a2, a3, a4, a5, ObjectType, v10);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  swift_unownedRetainStrong();
  swift_beginAccess();
  v13 = *(a1 + 48);

  swift_unownedRetainStrong();
  if (v13)
  {
    KeyCommandTraverseProvider.traverse(_:)(1);
  }

  else
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = *(a1 + 40);

      v15 = swift_getObjectType();
      v16 = swift_unownedRetainStrong();
      (*(v14 + 24))(v16, 1, a2, a3, a4, a5, v15, v14);

      swift_unknownObjectRelease();
      return result;
    }
  }

  return result;
}

double sub_1D8017880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_unownedRetainStrong();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(a1 + 40);

    ObjectType = swift_getObjectType();
    v12 = swift_unownedRetainStrong();
    (*(v10 + 32))(v12, a2, a3, a4, a5, ObjectType, v10);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  swift_unownedRetainStrong();
  swift_beginAccess();
  v13 = *(a1 + 48);

  swift_unownedRetainStrong();
  if ((v13 & 4) != 0)
  {
    KeyCommandTraverseProvider.traverse(_:)(1);
  }

  else
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = *(a1 + 40);

      v15 = swift_getObjectType();
      v16 = swift_unownedRetainStrong();
      (*(v14 + 24))(v16, 1, a2, a3, a4, a5, v15, v14);

      swift_unknownObjectRelease();
      return result;
    }
  }

  return result;
}

uint64_t sub_1D8017A30()
{
  v1 = v0;
  v2 = *v0;
  v3 = *v0;
  sub_1D7E1AD50(0, &qword_1EDBBC690, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17[-v5];
  v7 = sub_1D818E994();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = v2[26];
  swift_beginAccess();
  sub_1D7E54838(v1 + v11, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1D7E73334(v6);
  }

  (*(v8 + 32))(v10, v6, v7);
  v13 = v3[12];
  v14 = v3[10];
  if ((*(v13 + 16))(v10, v14, v13))
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = v1[5];
      ObjectType = swift_getObjectType();
      (*(v15 + 8))(v1, v10, v14, v3[11], v13, v3[13], ObjectType, v15);
      swift_unknownObjectRelease();
    }
  }

  return (*(v8 + 8))(v10, v7);
}

double sub_1D8017CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  v7 = swift_unownedRetainStrong();
  a6(v7);

  return result;
}

uint64_t sub_1D8017CF8()
{
  v1 = v0;
  v2 = *v0;
  v3 = *v0;
  sub_1D7E1AD50(0, &qword_1EDBBC690, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17[-v5];
  v7 = sub_1D818E994();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = v2[26];
  swift_beginAccess();
  sub_1D7E54838(v1 + v11, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1D7E73334(v6);
  }

  (*(v8 + 32))(v10, v6, v7);
  v13 = v3[12];
  v14 = v3[10];
  if ((*(v13 + 16))(v10, v14, v13))
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = v1[5];
      ObjectType = swift_getObjectType();
      (*(v15 + 16))(v1, v10, v14, v3[11], v13, v3[13], ObjectType, v15);
      swift_unknownObjectRelease();
    }
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1D8017F7C(uint64_t result, uint64_t a2)
{
  v2 = (a2 + *(*a2 + 176));
  v3 = *v2;
  if (*v2)
  {
    v4 = result;
    v5 = v2[1];
    sub_1D7E62C7C(a2 + *(*a2 + 184), __src);
    if (*&__src[24])
    {
      sub_1D7E05450(__src, v21);
      v6 = *(v4 + 104);
      v7 = swift_unknownObjectRetain();
      if (v6(v7, v5))
      {
        v8 = *(v4 + 48);
        v22 = *(v4 + 40);
        v9 = 56;
        if (*(v4 + 80))
        {
          v9 = 72;
        }

        v10 = *(v4 + v9);
        sub_1D8190DB4();
        v11 = (*(v4 + 120))(v3, v5);
        v13 = v12;
        sub_1D801991C(v4, __src);
        sub_1D7E0E768(v21, &v16);
        v14 = swift_allocObject();
        memcpy(v14 + 2, __src, 0x88uLL);
        v14[19] = v3;
        v14[20] = v5;
        sub_1D7E05450(&v16, (v14 + 21));
        swift_unknownObjectRetain();
        sub_1D7E3DAB0(v22, v8, v10, v11, v13, sub_1D8019D34, v14, v15, v16, *(&v16 + 1), v17, v18, v19, *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], *&__src[72], *&__src[80], *&__src[88], *&__src[96]);
        swift_unknownObjectRelease();

        return __swift_destroy_boxed_opaque_existential_1Tm(v21);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v21);
        return swift_unknownObjectRelease();
      }
    }

    else
    {
      return sub_1D7E9DD24(__src, &qword_1EDBBB508, &qword_1EDBBB510, &protocol descriptor for CommandTracker);
    }
  }

  return result;
}

double sub_1D801819C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 88);
  HIBYTE(v21) = 8;
  sub_1D7E0E768(a4, v18);
  v22 = 0u;
  v23 = 0u;
  LOBYTE(v24) = 1;
  type metadata accessor for CommandExecutionSource();
  v7 = swift_allocObject();
  v8 = v19;
  v9 = v20;
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v11);
  sub_1D7E3B938(&v21 + 7, v13, 0, &v22, 0, 0, 0, v7, v8, v9, v18[0], v18[1], v18[2], v19, v20, v21, v22, *(&v22 + 1), v23, *(&v23 + 1), v24, v25);
  v16 = v15;
  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  v6(a2, a3, v16);

  return result;
}

void KeyCommandTraverseProvider.shouldForceClearState.getter(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  OUTLINED_FUNCTION_0_119(a1, &qword_1EDBBC690);
  v5 = OUTLINED_FUNCTION_50(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_28_0();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v26 - v10;
  v12 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v3[26];
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  sub_1D7E54838(v2 + v18, v11);
  OUTLINED_FUNCTION_3_9(v11);
  if (v19)
  {
    sub_1D7E73334(v11);
  }

  else
  {
    (*(v14 + 32))(v17, v11, v12);
    v20 = v3[12];
    v21 = v3[10];
    if ((*(v3[12] + 16))(v17, v3[10], v3[12]))
    {
      (*(v20 + 8))(v26, v21, v20);
      v22 = v27;
      v23 = v28;
      __swift_project_boxed_opaque_existential_1(v26, v27);
      sub_1D7E1AD50(0, &qword_1EDBB2D08, MEMORY[0x1E69E6F90]);
      v24 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1D819FAB0;
      (*(v14 + 16))(v25 + v24, v17, v12);
      (*(v23 + 64))(v25, v22, v23);

      (*(v14 + 8))(v17, v12);
      OUTLINED_FUNCTION_3_9(v8);
      sub_1D7E73334(v8);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
    }

    else
    {
      (*(v14 + 8))(v17, v12);
    }
  }

  OUTLINED_FUNCTION_100();
}

Swift::Void __swiftcall KeyCommandTraverseProvider.clearState()()
{
  v3 = v1;
  v4 = *v1;
  OUTLINED_FUNCTION_0_119(v0, &qword_1EDBBC690);
  v6 = OUTLINED_FUNCTION_50(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_28_0();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_19_18();
  OUTLINED_FUNCTION_9();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = v4[26];
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  sub_1D7E54838(v3 + v17, v2);
  OUTLINED_FUNCTION_43_0(v2, 1, v11);
  if (v18)
  {
    sub_1D7E73334(v2);
  }

  else
  {
    (*(v13 + 32))(v16, v2, v11);
    OUTLINED_FUNCTION_39_5();
    if (((*(v4[12] + 16))(v16, v4[10]) & 1) == 0)
    {
      __swift_storeEnumTagSinglePayload(v9, 1, 1, v11);
      sub_1D8014CE4(v9);
    }

    (*(v13 + 8))(v16, v11);
  }

  OUTLINED_FUNCTION_39_5();
  v20 = *(v19 + 200);
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  if ((*(v3 + v20) & 1) == 0)
  {
    sub_1D7E54838(v3 + v17, v9);
    sub_1D80151D8(v9);
    sub_1D7E73334(v9);
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v11);
    sub_1D8014CE4(v9);
  }
}