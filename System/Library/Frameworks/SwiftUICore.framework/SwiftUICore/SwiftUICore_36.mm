BOOL _s7SwiftUI14EnvironmentKeyPAASQ5ValueRpzrlE12_valuesEqualySbAE_AEtFZAA0C6ValuesVAAE021MaterialBackdropProxyD033_DEF3755CDC6B87C0368876C9F497EC3DLLV_Tt1B5(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      return a1 == a2;
    }

    goto LABEL_5;
  }

  if (a2)
  {
LABEL_5:

    return 0;
  }

  return 1;
}

void type metadata accessor for VibrantColorStyle.Type?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for VibrantColorStyle.Type?)
  {
    type metadata accessor for ImageStyleProtocol.Type(255, &lazy cache variable for type metadata for VibrantColorStyle.Type, &lazy cache variable for type metadata for VibrantColorStyle, &protocol descriptor for VibrantColorStyle);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for VibrantColorStyle.Type?);
    }
  }
}

uint64_t type metadata completion function for EnvironmentValues.CapitalizationContext(uint64_t a1)
{
  result = type metadata accessor for FormatStyleCapitalizationContext();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.Key> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.Key> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.Key>, &type metadata for EnvironmentValues.Key, &protocol witness table for EnvironmentValues.Key, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.Key> and conformance EnvironmentPropertyKey<A>);
  }
}

uint64_t getEnumTagSinglePayload for EventPhase(unsigned __int8 *a1, unsigned int a2)
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

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AnyHashable2(uint64_t a1, void *a2)
{
  if (*a1 == *a2)
  {
    return 1;
  }

  else
  {
    return (*(**a1 + 112))() & 1;
  }
}

uint64_t assignWithCopy for Text.ResolvedProperties.Transition(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 12);
  v6 = *(a2 + 8);
  v7 = *(a2 + 13);
  outlined copy of ContentTransition.Storage(*a2, v6 | (v5 << 32), v7);
  v8 = *a1;
  v9 = *(a1 + 8) | (*(a1 + 12) << 32);
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 12) = v5;
  v10 = *(a1 + 13);
  *(a1 + 13) = v7;
  outlined consume of ContentTransition.Storage(v8, v9, v10);
  *(a1 + 14) = *(a2 + 14);
  return a1;
}

uint64_t initializeWithCopy for SpringState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 16);
  v7(a1, a2, v5);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v10 = (v8 + v9 + a2) & ~v9;
  v7((v8 + v9 + a1) & ~v9, v10, v5);
  v11 = (v8 + v9 + v10) & ~v9;
  v7((v8 + v9 + ((v8 + v9 + a1) & ~v9)) & ~v9, v11, v5);
  v12 = ((v8 + 7 + ((v8 + v9 + ((v8 + v9 + a1) & ~v9)) & ~v9)) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v8 + 7 + v11) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v14 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  v16 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  *((v16 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t destroy for SpringState(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v9 = *(v4 + 8);
  v9(a1, v3);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64) + v5;
  v7 = (v6 + a1) & ~v5;
  v9(v7, v3);

  return (v9)((v6 + v7) & ~v5, v3);
}

double MaterialBackdropProxy.luminance.setter(uint64_t a1)
{
  v3 = *v1;
  os_unfair_lock_lock(*v1 + 4);
  if ((v3[7]._os_unfair_lock_opaque & 1) == 0)
  {
    if ((a1 & 0x100000000) != 0 || *&v3[6]._os_unfair_lock_opaque != *&a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    v4 = MEMORY[0x1E69E7CC0];
    goto LABEL_8;
  }

  if ((a1 & 0x100000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  v3[6]._os_unfair_lock_opaque = a1;
  LOBYTE(v3[7]._os_unfair_lock_opaque) = BYTE4(a1) & 1;
  v4 = *&v3[8]._os_unfair_lock_opaque;

LABEL_8:
  os_unfair_lock_unlock(v3 + 4);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;
    do
    {
      outlined init with copy of MaterialBackdropProxy.Observer(v6, v12);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v7 = v13;
        ObjectType = swift_getObjectType();
        os_unfair_lock_lock(v3 + 4);
        os_unfair_lock_opaque = v3[6]._os_unfair_lock_opaque;
        v10 = v3[7]._os_unfair_lock_opaque;
        os_unfair_lock_unlock(v3 + 4);
        (*(v7 + 8))(os_unfair_lock_opaque | (v10 << 32), ObjectType, v7);
        swift_unknownObjectRelease();
      }

      outlined destroy of weak GestureGraphDelegate?(v12);
      v6 += 16;
      --v5;
    }

    while (v5);
  }

  else
  {
  }

  return result;
}

uint64_t _AnyEquatableBox.__deallocating_deinit()
{
  (*(*(*(*v0 + 112) - 8) + 8))(v0 + *(*v0 + 128));

  return swift_deallocClassInstance();
}

void type metadata accessor for [ScrollStateRequest](uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = type metadata accessor for AnyTrackedValue(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t outlined destroy of ViewList?(uint64_t a1)
{
  type metadata accessor for [ScrollStateRequest](0, &lazy cache variable for type metadata for ViewList?, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t AnimationState.init()@<X0>(unint64_t *a1@<X8>)
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  return result;
}

void lazy protocol witness table accessor for type TextLayoutProperties and conformance TextLayoutProperties()
{
  if (!lazy protocol witness table cache variable for type TextLayoutProperties and conformance TextLayoutProperties)
  {
    swift_getWitnessTable(protocol conformance descriptor for TextLayoutProperties, &type metadata for TextLayoutProperties, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TextLayoutProperties and conformance TextLayoutProperties);
  }
}

void lazy protocol witness table accessor for type Font.Context and conformance Font.Context()
{
  if (!lazy protocol witness table cache variable for type Font.Context and conformance Font.Context)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.Context, &type metadata for Font.Context, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.Context and conformance Font.Context);
  }
}

void ShapeLayerHelper.gradientLayer()()
{
  v1 = *v0;
  if ((*(v0 + 128) & 1) == 0)
  {
    v3 = [v1 sublayers];
    if (v3)
    {
      v4 = v3;
      type metadata accessor for CAMediaTimingFunction(0, lazy cache variable for type metadata for CALayer, 0x1E6979398);
      v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if ((v5 & 0xC000000000000001) != 0)
      {
        MEMORY[0x193AC03C0](0, v5);
        goto LABEL_9;
      }

      if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v6 = *(v5 + 32);
LABEL_9:

        return;
      }

      __break(1u);
    }

    __break(1u);
    return;
  }

  v2 = v1;
}

double makeAxis #1 (start:end:) in GradientLayer.GradientGeometry.init(size:function:bounds:)(double a1, double a2, double a3, double a4, double a5, double a6)
{
  if (a5 > a6)
  {
    v6 = a5;
  }

  else
  {
    v6 = a6;
  }

  return a1 / v6 * (v6 / a5);
}

unint64_t specialized static GradientLayer.clippedValues(gradient:function:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = 1.0;
  v6 = 0.0;
  if ((*(a2 + 32) & 0xFE) == 2)
  {
    v7 = *(a2 + 16);
    if (v7 != 0.0)
    {
      v8 = *(a2 + 24);
      if (v7 >= v8)
      {
        v5 = v8 / v7 + -1.0;
        v6 = 1.0;
      }

      else
      {
        v5 = (v8 - v7) / v8;
        v6 = v7 / v8;
      }
    }
  }

  v101 = *(a1 + 8);
  v9 = *(a1 + 12);
  LODWORD(v10) = *(a1 + 16);
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E7CC0];
  v96 = v11;
  *(v11 + 16) = MEMORY[0x1E69E7CC0];
  v13 = (v11 + 16);
  v133 = v12;
  v14 = swift_allocObject();
  v15 = v14;
  *(v14 + 16) = v12;
  if (v6 < 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v6;
  }

  if (v16 > 1.0)
  {
    v16 = 1.0;
  }

  v17 = v5 + v6;
  if (v5 + v6 < 0.0)
  {
    v17 = 0.0;
  }

  if (v17 > 1.0)
  {
    v17 = 1.0;
  }

  if (v17 >= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  if (v16 > v17)
  {
    v19 = v16;
  }

  else
  {
    v19 = v17;
  }

  v20 = *(v4 + 16);
  if (!v20)
  {
    v88 = v12;
    if (v12 >> 62)
    {
      goto LABEL_80;
    }

    goto LABEL_75;
  }

  v107 = v13;
  v99 = v14;
  v100 = (v14 + 16);
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = v4 + 32;
  v27 = v20 - 1;
  if (v5 > 0.0)
  {
    v27 = 0;
  }

  v28 = *&v9;
  if (v10)
  {
    v28 = NAN;
  }

  v105 = v28;
  v94 = v9 << 32;
  v29 = 0.0;
  v15 = 1;
  v98 = MEMORY[0x1E69E7CC0];
  v106 = *(v4 + 16);
  v30 = v106;
  v31 = 1;
  v97 = v5;
  v103 = v19;
  v104 = v6;
  v102 = v18;
  v108 = v4 + 32;
  v110 = v4;
  v109 = v10;
  while (1)
  {
    v32 = *(v4 + 16);
    if (v27 >= v32)
    {
      break;
    }

    v33 = v26 + 48 * v27;
    v34 = *v33;
    v35 = *(v33 + 4);
    v2 = *(v33 + 8);
    v3 = *(v33 + 12);
    v36 = *(v33 + 24);
    v37 = *(v33 + 32);
    v38 = *(v33 + 40);
    v39 = v6 + v5 * *(v33 + 16);
    if (v39 >= v18)
    {
      if (v19 >= v39)
      {
        goto LABEL_46;
      }

      if (v15 != 1)
      {
        v43 = v15 - 2;
        if (v5 <= 0.0)
        {
          v43 = v30;
        }

        if (v43 >= v32)
        {
          goto LABEL_87;
        }

        v44 = v26 + 48 * v43;
        v45 = v6 + v5 * *(v44 + 16);
        if (v45 <= v19)
        {
          v46 = *(v44 + 8);
          v47 = *(v44 + 12);
          v48 = *v44;
          v49 = *(v44 + 4);
          v117 = v34;
          v50 = (v19 - v45) / (v39 - v45);
          v115 = v50;
          v131[0].i8[0] = v101;
          v123 = v37;
          v126 = v36;
          v120 = v38;
          v51 = v35;
          v10 = v22;
          v52 = v23;
          ResolvedGradient.ColorSpace.convertIn(_:)(v132, v48, v49, v46, v47);
          v129.i8[0] = v101;
          ResolvedGradient.ColorSpace.convertIn(_:)(v131, v117, v51, v2, v3);
          v130[0] = v101;
          v129 = vaddq_f32(vmulq_n_f32(v132[0], 1.0 - v115), vmulq_n_f32(v131[0], v115));
          v12 = v130;
          v53 = ResolvedGradient.ColorSpace.convertOut(_:)(&v129);
          v23 = v52;
          v22 = v10;
          v38 = v120;
          LOBYTE(v10) = v109;
          v37 = v123;
          v36 = v126;
          v4 = v110;
          v26 = v108;
          v34 = v53;
          v35 = v54;
          v2 = v55;
          v3 = v56;
        }
      }

      v39 = v19;
      if (v31)
      {
        goto LABEL_67;
      }
    }

    else
    {
      if (v15 >= v106)
      {
        v39 = v18;
LABEL_46:
        if (v31)
        {
          goto LABEL_67;
        }

        goto LABEL_47;
      }

      v40 = v30 - 2;
      if (v5 > 0.0)
      {
        v40 = v15;
      }

      if (v40 >= v32)
      {
        goto LABEL_85;
      }

      v41 = v26 + 48 * v40;
      v42 = v6 + v5 * *(v41 + 16);
      if (v18 <= v42)
      {
        v75 = *(v41 + 8);
        v74 = *(v41 + 12);
        v77 = *v41;
        v76 = *(v41 + 4);
        v78 = (v102 - v39) / (v42 - v39);
        v119 = v78;
        v131[0].i8[0] = v101;
        v125 = v37;
        v128 = v36;
        v122 = v38;
        v10 = v22;
        v79 = v23;
        ResolvedGradient.ColorSpace.convertIn(_:)(v132, v34, v35, v2, v3);
        v129.i8[0] = v101;
        v80 = v77;
        v81 = v76;
        v18 = v102;
        v19 = v103;
        v82 = v75;
        v5 = v97;
        v83 = v74;
        v6 = v104;
        ResolvedGradient.ColorSpace.convertIn(_:)(v131, v80, v81, v82, v83);
        v130[0] = v101;
        v129 = vaddq_f32(vmulq_n_f32(v132[0], 1.0 - v119), vmulq_n_f32(v131[0], v119));
        v12 = v130;
        v84 = ResolvedGradient.ColorSpace.convertOut(_:)(&v129);
        v23 = v79;
        v22 = v10;
        v38 = v122;
        LOBYTE(v10) = v109;
        v37 = v125;
        v36 = v128;
        v4 = v110;
        v26 = v108;
        v34 = v84;
        v35 = v85;
        v2 = v86;
        v3 = v87;
        v39 = v102;
        if (v31)
        {
          goto LABEL_67;
        }
      }

      else
      {
        v39 = v18;
        if (v31)
        {
          goto LABEL_67;
        }
      }
    }

LABEL_47:
    v111 = v23;
    v113 = v22;
    v116 = *&v35;
    v118 = v34;
    v121 = v38;
    v124 = v37;
    v127 = v36;
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    MEMORY[0x193ABF170]();
    if (*((v133 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v133 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v4 = HIDWORD(v25);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v134[0] = v25;
    v134[1] = v24;
    v135 = v105;
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    LOBYTE(v10) = specialized ObjectCache.subscript.getter(v134);
    v57 = v107;
    v58 = swift_beginAccess();
    MEMORY[0x193ABF170](v58);
    if (*((*v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v57 = v107;
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v12 = *v57;
    swift_endAccess();
    if (v21)
    {
      v34 = v118;
      *&v35 = v116;
      if (v101 != 2)
      {
        v4 = v110;
        LOBYTE(v10) = v109;
        v26 = v108;
        v37 = v124;
        v36 = v127;
        v38 = v121;
        goto LABEL_67;
      }

      v132[0].i8[0] = 2;
      ResolvedGradient.ColorSpace.mix(_:_:by:)(*&v25, *(&v25 + 1), *&v24, *(&v24 + 1), v118, v116, v2, v3, 0.5);
      v60 = v59;
      v62 = v61;
      v114 = v63;
      v112 = v64;
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      v12 = &v133;
      MEMORY[0x193ABF170]();
      if (*((v133 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v133 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v4 = v110;
      v95 = v95 & 0xFFFFFF00 | v94 | 2;
      LOBYTE(v10) = v109;
      appendColor #1 (_:) in static GradientLayer.clippedValues(gradient:function:)(v96, v60, v62, v114, v112, v110, v95, v109);
      v5 = v97;
      v6 = v104;
    }

    else
    {
      if (v12 >> 62)
      {
        v65 = __CocoaSet.count.getter();
      }

      else
      {
        v65 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v12 = v100;
      v66 = __OFSUB__(v65, 1);
      v67 = v65 - 1;
      if (v66)
      {
        goto LABEL_86;
      }

      addMissingInterpolations #1 (to:) in static GradientLayer.clippedValues(gradient:function:)(v67, v99);
      v68 = objc_allocWithZone(MEMORY[0x1E69793D0]);
      LODWORD(v70) = HIDWORD(v111);
      LODWORD(v69) = v111;
      LODWORD(v72) = HIDWORD(v113);
      LODWORD(v71) = v113;
      [v68 initWithControlPoints__:v69 :{v70, v71, v72}];
      v73 = swift_beginAccess();
      MEMORY[0x193ABF170](v73);
      if (*((*(v99 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v99 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v98 = *v100;
      swift_endAccess();
      v4 = v110;
      LOBYTE(v10) = v109;
      v6 = v104;
      v18 = v102;
    }

    v19 = v103;
    v26 = v108;
    v37 = v124;
    v36 = v127;
    v38 = v121;
    v34 = v118;
    *&v35 = v116;
LABEL_67:
    if (v30 == 1)
    {
      LODWORD(v18) = v35;
      *&v19 = v34;
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      MEMORY[0x193ABF170]();
      if (*((v133 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v133 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_91;
      }

      goto LABEL_74;
    }

    v31 = 0;
    v24 = LODWORD(v2) | (LODWORD(v3) << 32);
    v25 = LODWORD(v34) | (v35 << 32);
    v27 = v30 - 2;
    if (v5 > 0.0)
    {
      v27 = v15;
    }

    ++v15;
    --v30;
    v21 = v38;
    v22 = v37;
    v23 = v36;
    v29 = v39;
    if ((v27 & 0x8000000000000000) != 0)
    {
      goto LABEL_84;
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
LABEL_88:
  v93 = __CocoaSet.count.getter();
  v66 = __OFSUB__(v93, 1);
  v91 = v93 - 1;
  while (v66)
  {
    __break(1u);
LABEL_91:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_74:
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v12 = v133;
    appendColor #1 (_:) in static GradientLayer.clippedValues(gradient:function:)(v96, *&v19, *&v18, v2, v3, v4, v94 | v101, v10);
    v15 = v99;
    v13 = v107;
    v88 = v98;
    if (v98 >> 62)
    {
LABEL_80:
      if (!__CocoaSet.count.getter())
      {
LABEL_81:
        swift_beginAccess();

        goto LABEL_82;
      }
    }

    else
    {
LABEL_75:
      if (!*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_81;
      }
    }

    swift_beginAccess();
    v89 = *v13;
    if (v89 >> 62)
    {
      goto LABEL_88;
    }

    v90 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v66 = __OFSUB__(v90, 1);
    v91 = v90 - 1;
  }

  addMissingInterpolations #1 (to:) in static GradientLayer.clippedValues(gradient:function:)(v91, v15);
  swift_beginAccess();

LABEL_82:

  return v12;
}

uint64_t sub_18D23CA34()
{

  return swift_deallocObject();
}

void ResolvedGradient.ColorSpace.mix(_:_:by:)(float a1, float a2, float a3, float32_t a4, float a5, float a6, float a7, float32_t a8, float a9)
{
  v17.i8[0] = *v9;
  v14 = v17.i8[0];
  ResolvedGradient.ColorSpace.convertIn(_:)(&v18, a1, LODWORD(a2), a3, a4);
  ResolvedGradient.ColorSpace.convertIn(_:)(&v17, a5, LODWORD(a6), a7, a8);
  v16 = v14;
  v15 = vaddq_f32(vmulq_n_f32(v18, 1.0 - a9), vmulq_n_f32(v17, a9));
  ResolvedGradient.ColorSpace.convertOut(_:)(&v15);
}

float32_t ResolvedGradient.ColorSpace.convertOut(_:)(float32x2_t *a1)
{
  v2 = *a1;
  v3 = a1[1].f32[0];
  v4 = a1[1].f32[1];
  if (v4 == 0.0)
  {
    if (*v1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = vmul_n_f32(v2, 1.0 / v4);
    v3 = v3 * (1.0 / v4);
    if (*v1)
    {
LABEL_3:
      if (*v1 != 1)
      {
        v5 = vmul_f32(v2, vmul_f32(v2, v2));
        v2.i32[0] = vadd_f32(vsub_f32(vmul_f32(v5, 0x40270644408274ABLL), vrev64_s32(vmul_f32(v5, 0x4053B18C3FA25C2DLL))), vmul_n_f32(0x3EAEC16A3E6C8362, v3 * (v3 * v3))).u32[0];
      }

      return v2.f32[0];
    }
  }

  if (v2.f32[0] <= 0.0)
  {
    v6 = -v2.f32[0];
  }

  else
  {
    v6 = v2.f32[0];
  }

  if (v6 <= 0.04045)
  {
    v7 = v6 * 0.077399;
  }

  else
  {
    v7 = 1.0;
    if (v6 != 1.0)
    {
      v8 = v3;
      v14 = v2;
      v7 = powf((v6 * 0.94787) + 0.052133, 2.4);
      v2 = v14;
      v3 = v8;
    }
  }

  if (v2.f32[0] <= 0.0)
  {
    v9 = -v7;
  }

  else
  {
    v9 = v7;
  }

  if (v2.f32[1] <= 0.0)
  {
    v10 = -v2.f32[1];
  }

  else
  {
    v10 = v2.f32[1];
  }

  if (v10 > 0.04045 && v10 != 1.0)
  {
    v11 = v3;
    v15 = v9;
    powf((v10 * 0.94787) + 0.052133, 2.4);
    v9 = v15;
    v3 = v11;
  }

  if (v3 <= 0.0)
  {
    v12 = -v3;
  }

  else
  {
    v12 = v3;
  }

  if (v12 > 0.04045 && v12 != 1.0)
  {
    v16 = v9;
    powf((v12 * 0.94787) + 0.052133, 2.4);
    v9 = v16;
  }

  v2.f32[0] = v9;
  return v2.f32[0];
}

double appendColor #1 (_:) in static GradientLayer.clippedValues(gradient:function:)(uint64_t a1, float a2, float a3, float a4, float a5, uint64_t a6, uint64_t a7, char a8)
{
  v9 = *(&a7 + 1);
  if (a8)
  {
    v9 = NAN;
  }

  v12 = __PAIR64__(LODWORD(a3), LODWORD(a2));
  v13 = a4;
  v14 = a5;
  v15 = v9;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  specialized ObjectCache.subscript.getter(&v12);
  v10 = swift_beginAccess();
  MEMORY[0x193ABF170](v10);
  if (*((*(a1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  return result;
}

char *specialized _arrayForceCast<A, B>(_:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x193AC03C0](i, a1);
        type metadata accessor for CGColorRef(0);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        outlined init with take of Any(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      type metadata accessor for CGColorRef(0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        outlined init with take of Any(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t _CGColorSpaceGetPerceptual(uint64_t a1, uint64_t a2)
{
  if (_CGColorSpaceGetPerceptual_once != -1)
  {
    _CGColorSpaceGetPerceptual_cold_1();
  }

  return _CGColorSpaceGetPerceptual_space;
}

int16x8_t DisplayList.ViewUpdater.ViewInfo.init(platform:kind:)@<Q0>(uint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v6 = *a1 & 0xFFFFFFFFFFFFFFF8;
  v12 = *a2;
  v5 = v12;
  v7 = (*(v6 + 96))(&v12);
  swift_unknownObjectRetain();
  v8 = CoreViewLayer(v4 & 3, v7);
  v9 = AGMakeUniqueID();
  *a3 = v4;
  *(a3 + 8) = v7;
  *(a3 + 16) = v8;
  *(a3 + 24) = v7;
  v10 = vdupq_n_s64(0x7FF0000000000000uLL);
  *(a3 + 32) = v10;
  *(a3 + 48) = v10;
  *(a3 + 64) = v5;
  *(a3 + 65) = 0;
  result = vdupq_n_s16(2 * ((v5 - 15) < 2));
  *(a3 + 72) = v9;
  *(a3 + 80) = -1;
  *(a3 + 88) = result;
  *(a3 + 104) = 0;
  *(a3 + 108) = 0;
  *(a3 + 112) = 0;
  *(a3 + 120) = 0x7FF0000000000000;
  return result;
}

id static CALayerPlatformViewDefinition.makeView(kind:)(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  v3 = v2;
  if (v1 != 14)
  {
    v9 = v2;
    [v9 setCoordinatedAnimationDelegate];
    [v9 setAnchorPoint_];
    if (v1 <= 0xD)
    {
      v10 = 1;
      if (((1 << v1) & 0x3801) != 0)
      {
        goto LABEL_6;
      }

      if (((1 << v1) & 0xE) != 0)
      {
        v11 = &selRef_setAllowsEdgeAntialiasing_;
        goto LABEL_9;
      }
    }

LABEL_10:

    return v3;
  }

  v4 = objc_allocWithZone(MEMORY[0x1E6979398]);
  v5 = v3;
  v6 = [v4 init];
  [v5 setMask_];

  result = [v5 mask];
  if (result)
  {
    v8 = result;
    [result setCoordinatedAnimationDelegate];
    [v8 setAnchorPoint_];
    [v8 setAllowsGroupOpacity_];
    [v8 setAllowsGroupBlending_];

    [v5 setCoordinatedAnimationDelegate];
    [v5 setAnchorPoint_];
LABEL_6:
    [v3 setAllowsGroupOpacity_];
    v10 = 0;
    v11 = &selRef_setAllowsGroupBlending_;
LABEL_9:
    [v3 *v11];
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t AnyColorBox.as<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  type metadata accessor for ColorBox(0, a1, a2, a3);
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v11 = *(a1 - 8);
    (*(v11 + 16))(a4, v6 + *(*v6 + 192), a1);
    v7 = v11;
    v8 = 0;
  }

  else
  {
    v7 = *(a1 - 8);
    v8 = 1;
  }

  v9 = *(v7 + 56);

  return v9(a4, v8, 1, a1);
}

uint64_t EventBindingManager.__deallocating_deinit()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    [v1 invalidate];
  }

  outlined destroy of weak GestureGraphDelegate?(v0 + 16);
  outlined destroy of weak GestureGraphDelegate?(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ColorProvider.staticColor.getter in conformance ResolvedColorProvider()
{
  v2 = *v0;
  v3 = *(v0 + 4);
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  return specialized ObjectCache.subscript.getter(&v2);
}

uint64_t partial apply for closure #1 in ShapeStyledDisplayList.updateValue()(uint64_t a1, __n128 a2)
{
  v3 = *(v2 + 32);
  result = AGGraphAnyInputsChanged();
  *v3 = result;
  return result;
}

BOOL DisplayList.Item.canInheritShadowOrFilters.getter()
{
  v1 = *(v0 + 64) >> 30;
  if (v1 > 1)
  {
    if (v1 != 3)
    {
LABEL_49:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      JUMPOUT(0x18D23DAB8);
    }

    return 1;
  }

  v2 = *(v0 + 40);
  if (!v1)
  {
    return (v2 >> 60) - 10 < 0xFFFFFFFD;
  }

  v4 = *(v0 + 48);
  switch(BYTE4(v4))
  {
    case 1:
      outlined copy of DisplayList.Effect(*(v0 + 40), *(v0 + 48), 1);
      v5 = v2;
      v6 = v4;
      v7 = 1;
      goto LABEL_39;
    case 2:
      v8 = *(v0 + 40);
      v9 = *(v0 + 48);
      v10 = 2;
      goto LABEL_27;
    case 3:
      outlined copy of DisplayList.Effect(*(v0 + 40), *(v0 + 48), 3);
      v15 = v2;
      v16 = v4;
      v17 = 3;
      goto LABEL_37;
    case 4:
      v8 = *(v0 + 40);
      v9 = *(v0 + 48);
      v10 = 4;
      goto LABEL_27;
    case 5:
      outlined copy of DisplayList.Effect(*(v0 + 40), *(v0 + 48), 5);
      outlined consume of DisplayList.Effect(v2, v4, 5);
      return (v2 == 0) & ~v4;
    case 6:
      outlined copy of DisplayList.Effect(*(v0 + 40), *(v0 + 48), 6);
      v15 = v2;
      v16 = v4;
      v17 = 6;
      goto LABEL_37;
    case 7:
      outlined copy of DisplayList.Effect(*(v0 + 40), *(v0 + 48), 7);
      v15 = v2;
      v16 = v4;
      v17 = 7;
      goto LABEL_37;
    case 8:
      outlined copy of DisplayList.Effect(*(v0 + 40), *(v0 + 48), 8);
      v15 = v2;
      v16 = v4;
      v17 = 8;
      goto LABEL_37;
    case 9:
      outlined copy of DisplayList.Effect(*(v0 + 40), *(v0 + 48), 9);
      a = *(v2 + 16);
      b = *(v2 + 24);
      c = *(v2 + 32);
      if (*(v2 + 88) <= 1u)
      {
        if (!*(v2 + 88))
        {
          d = *(v2 + 40);
          goto LABEL_32;
        }

LABEL_36:
        v15 = v2;
        v16 = v4;
        v17 = 9;
        goto LABEL_37;
      }

      if (*(v2 + 88) != 2)
      {
        goto LABEL_36;
      }

      CGAffineTransformMakeTranslation(__dst, *(v2 + 24), *(v2 + 32));
      CGAffineTransformRotate(&v19, __dst, a);
      __dst[0] = v19;
      CGAffineTransformTranslate(&v19, __dst, -b, -c);
      a = v19.a;
      b = v19.b;
      c = v19.c;
      d = v19.d;
LABEL_32:
      outlined consume of DisplayList.Effect(v2, v4, 9);
      if (b == 0.0 && c == 0.0)
      {
        if (a != d)
        {
          return 0;
        }
      }

      else
      {
        if (a != 0.0)
        {
          return 0;
        }

        if (d != 0.0 || a != d)
        {
          return 0;
        }
      }

      return b == c;
    case 0xA:
      outlined copy of DisplayList.Effect(*(v0 + 40), *(v0 + 48), 10);
      memmove(__dst, (v2 + 16), 0x7CuLL);
      if (_s7SwiftUI14GraphicsFilterOWOg(__dst) != 4)
      {
        v5 = v2;
        v6 = v4;
        v7 = 10;
LABEL_39:
        outlined consume of DisplayList.Effect(v5, v6, v7);
        return 1;
      }

      _s7SwiftUI14GraphicsFilterOWOj6_(__dst);
      v15 = v2;
      v16 = v4;
      v17 = 10;
LABEL_37:
      outlined consume of DisplayList.Effect(v15, v16, v17);
      return 0;
    case 0xB:
    case 0xD:
      goto LABEL_49;
    case 0xC:
      outlined copy of DisplayList.Effect(*(v0 + 40), *(v0 + 48), 12);
      v5 = v2;
      v6 = v4;
      v7 = 12;
      goto LABEL_39;
    case 0xE:
      outlined copy of DisplayList.Effect(*(v0 + 40), *(v0 + 48), 14);
      v5 = v2;
      v6 = v4;
      v7 = 14;
      goto LABEL_39;
    case 0xF:
      outlined copy of DisplayList.Effect(*(v0 + 40), *(v0 + 48), 15);
      v5 = v2;
      v6 = v4;
      v7 = 15;
      goto LABEL_39;
    case 0x10:
      outlined copy of DisplayList.Effect(*(v0 + 40), *(v0 + 48), 16);
      v5 = v2;
      v6 = v4;
      v7 = 16;
      goto LABEL_39;
    case 0x11:
      outlined copy of DisplayList.Effect(*(v0 + 40), *(v0 + 48), 17);
      v5 = v2;
      v6 = v4;
      v7 = 17;
      goto LABEL_39;
    case 0x12:
      outlined copy of DisplayList.Effect(*(v0 + 40), *(v0 + 48), 18);
      v5 = v2;
      v6 = v4;
      v7 = 18;
      goto LABEL_39;
    case 0x13:
      outlined copy of DisplayList.Effect(*(v0 + 40), *(v0 + 48), 19);
      v5 = v2;
      v6 = v4;
      v7 = 19;
      goto LABEL_39;
    case 0x14:
      v8 = *(v0 + 40);
      v9 = *(v0 + 48);
      v10 = 20;
LABEL_27:
      outlined copy of DisplayList.Effect(v8, v9, v10);
      return 1;
    default:
      outlined copy of DisplayList.Effect(*(v0 + 40), *(v0 + 48), 0);
      v5 = v2;
      v6 = v4;
      v7 = 0;
      goto LABEL_39;
  }
}

void specialized GraphHost.continueTransaction<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v23 = *MEMORY[0x1E69E9840];
  v19 = a1;
  if (one-time initialization token for lockAssertionsAreEnabled != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_7;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (!_MovableLockIsOwner(static Update._lock))
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_7:
    v4 = *(v1 + 152);
    v5 = swift_retain_n();
    if (v4)
    {
      v6 = v2;
LABEL_12:
      if (one-time initialization token for enabledCategories != -1)
      {
        swift_once();
      }

      if (*(static CustomEventTrace.enabledCategories + 2) < 0x55uLL)
      {
        __break(1u);
      }

      else
      {
        if (*(static CustomEventTrace.enabledCategories + 116) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 17236;
          *&v20 = v6;
          type metadata accessor for GraphHost();
          AGGraphAddTraceEvent();
        }

        swift_beginAccess();
        v2 = *(v6 + 160);
        v9 = v2[2];
        if (v9)
        {
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v6 + 160) = v2;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
            *(v6 + 160) = v2;
          }

          if (v9 > v2[2])
          {
            __break(1u);
          }

          v11 = &v2[5 * v9];
          v12 = v11[2];
          v13 = v11[3];
          __swift_mutable_project_boxed_opaque_existential_1((v11 - 1), v12);
          v14 = (*(v13 + 16))(&v19, &type metadata for InvalidatingGraphMutation, &protocol witness table for InvalidatingGraphMutation, v12, v13);
          *(v6 + 160) = v2;
          swift_endAccess();
          if (v14)
          {
            goto LABEL_27;
          }
        }

        swift_beginAccess();
        v15 = swift_isUniquelyReferenced_nonNull_native();
        *(v6 + 160) = v2;
        if (v15)
        {
LABEL_24:
          v17 = v2[2];
          v16 = v2[3];
          if (v17 >= v16 >> 1)
          {
            v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v2);
          }

          v21 = &type metadata for InvalidatingGraphMutation;
          v22 = &protocol witness table for InvalidatingGraphMutation;
          *&v20 = a1;
          v2[2] = v17 + 1;
          outlined init with take of AnyTrackedValue(&v20, &v2[5 * v17 + 4]);
          *(v6 + 160) = v2;
          swift_endAccess();
LABEL_27:

          return;
        }
      }

      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2[2] + 1, 1, v2);
      *(v6 + 160) = v2;
      goto LABEL_24;
    }

    v7 = v2;
    while (1)
    {
      v6 = (*(*v7 + 200))(v5);

      if (!v6)
      {
        break;
      }

      v8 = *(v6 + 152);

      v7 = v6;
      if (v8)
      {
        goto LABEL_12;
      }
    }

    LOBYTE(v20) = 17;
    v18 = swift_allocObject();
    *(v18 + 16) = v2;
    *(v18 + 24) = a1;

    static Update.enqueueAction(reason:_:)(&v20, partial apply for specialized closure #1 in GraphHost.continueTransaction<A>(_:), v18);
  }
}

{
  v2 = v1;
  v23 = *MEMORY[0x1E69E9840];
  if (one-time initialization token for lockAssertionsAreEnabled != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_7;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (!_MovableLockIsOwner(static Update._lock))
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_7:
    v4 = v1[152];
    v5 = swift_retain_n();
    if (v4)
    {
      v6 = v1;
LABEL_11:
      if (one-time initialization token for enabledCategories != -1)
      {
        swift_once();
      }

      if (*(static CustomEventTrace.enabledCategories + 2) < 0x55uLL)
      {
        __break(1u);
      }

      else
      {
        if ((*(static CustomEventTrace.enabledCategories + 116) & 1) != 0 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 17236;
          *&v19 = v6;
          type metadata accessor for GraphHost();
          AGGraphAddTraceEvent();
        }

        swift_beginAccess();
        v2 = *(v6 + 160);
        v8 = v2[2];
        if (v8)
        {
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v6 + 160) = v2;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
            *(v6 + 160) = v2;
          }

          if (v8 > v2[2])
          {
            __break(1u);
          }

          v10 = &v2[5 * v8];
          v11 = v10[2];
          v12 = v10[3];
          __swift_mutable_project_boxed_opaque_existential_1((v10 - 1), v11);
          v13 = (*(v12 + 16))(a1, &type metadata for LazyLayoutCacheItem.AllItemsPhaseMutation, &protocol witness table for LazyLayoutCacheItem.AllItemsPhaseMutation, v11, v12);
          *(v6 + 160) = v2;
          swift_endAccess();
          if (v13)
          {
            goto LABEL_26;
          }
        }

        outlined init with copy of LazyLayoutCacheItem.AllItemsPhaseMutation(a1, v18);
        swift_beginAccess();
        v14 = swift_isUniquelyReferenced_nonNull_native();
        *(v6 + 160) = v2;
        if (v14)
        {
LABEL_23:
          v16 = v2[2];
          v15 = v2[3];
          if (v16 >= v15 >> 1)
          {
            v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v2);
            *(v6 + 160) = v2;
          }

          v20 = &type metadata for LazyLayoutCacheItem.AllItemsPhaseMutation;
          v21 = &protocol witness table for LazyLayoutCacheItem.AllItemsPhaseMutation;
          *&v19 = swift_allocObject();
          outlined init with copy of LazyLayoutCacheItem.AllItemsPhaseMutation(v18, v19 + 16);
          v2[2] = v16 + 1;
          outlined init with take of AnyTrackedValue(&v19, &v2[5 * v16 + 4]);
          outlined destroy of LazyLayoutCacheItem.AllItemsPhaseMutation(v18);
          *(v6 + 160) = v2;
          swift_endAccess();
LABEL_26:

          return;
        }
      }

      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2[2] + 1, 1, v2);
      *(v6 + 160) = v2;
      goto LABEL_23;
    }

    while (1)
    {
      v6 = (*(*v1 + 200))(v5);

      if (!v6)
      {
        break;
      }

      v7 = *(v6 + 152);

      v1 = v6;
      if (v7)
      {
        goto LABEL_11;
      }
    }

    v22[0] = 17;
    outlined init with copy of LazyLayoutCacheItem.AllItemsPhaseMutation(a1, &v19);
    v17 = swift_allocObject();
    *(v17 + 16) = v2;
    outlined init with take of LazyLayoutCacheItem.AllItemsPhaseMutation(&v19, v17 + 24);

    static Update.enqueueAction(reason:_:)(v22, partial apply for specialized closure #1 in GraphHost.continueTransaction<A>(_:), v17);
  }
}

{
  v2 = v1;
  v23 = *MEMORY[0x1E69E9840];
  if (one-time initialization token for lockAssertionsAreEnabled != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_7;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (!_MovableLockIsOwner(static Update._lock))
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_7:
    v4 = v1[152];
    v5 = swift_retain_n();
    if (v4)
    {
      v6 = v1;
LABEL_11:
      if (one-time initialization token for enabledCategories != -1)
      {
        swift_once();
      }

      if (*(static CustomEventTrace.enabledCategories + 2) < 0x55uLL)
      {
        __break(1u);
      }

      else
      {
        if ((*(static CustomEventTrace.enabledCategories + 116) & 1) != 0 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 17236;
          *&v19 = v6;
          type metadata accessor for GraphHost();
          AGGraphAddTraceEvent();
        }

        swift_beginAccess();
        v2 = *(v6 + 160);
        v8 = v2[2];
        if (v8)
        {
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v6 + 160) = v2;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
            *(v6 + 160) = v2;
          }

          if (v8 > v2[2])
          {
            __break(1u);
          }

          v10 = &v2[5 * v8];
          v11 = v10[2];
          v12 = v10[3];
          __swift_mutable_project_boxed_opaque_existential_1((v10 - 1), v11);
          v13 = (*(v12 + 16))(a1, &type metadata for LazyLayoutCacheItem.SingleItemPhaseMutation, &protocol witness table for LazyLayoutCacheItem.SingleItemPhaseMutation, v11, v12);
          *(v6 + 160) = v2;
          swift_endAccess();
          if (v13)
          {
            goto LABEL_26;
          }
        }

        outlined init with copy of LazyLayoutCacheItem.SingleItemPhaseMutation(a1, v18);
        swift_beginAccess();
        v14 = swift_isUniquelyReferenced_nonNull_native();
        *(v6 + 160) = v2;
        if (v14)
        {
LABEL_23:
          v16 = v2[2];
          v15 = v2[3];
          if (v16 >= v15 >> 1)
          {
            v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v2);
            *(v6 + 160) = v2;
          }

          v20 = &type metadata for LazyLayoutCacheItem.SingleItemPhaseMutation;
          v21 = &protocol witness table for LazyLayoutCacheItem.SingleItemPhaseMutation;
          *&v19 = swift_allocObject();
          outlined init with copy of LazyLayoutCacheItem.SingleItemPhaseMutation(v18, v19 + 16);
          v2[2] = v16 + 1;
          outlined init with take of AnyTrackedValue(&v19, &v2[5 * v16 + 4]);
          outlined destroy of LazyLayoutCacheItem.SingleItemPhaseMutation(v18);
          *(v6 + 160) = v2;
          swift_endAccess();
LABEL_26:

          return;
        }
      }

      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2[2] + 1, 1, v2);
      *(v6 + 160) = v2;
      goto LABEL_23;
    }

    while (1)
    {
      v6 = (*(*v1 + 200))(v5);

      if (!v6)
      {
        break;
      }

      v7 = *(v6 + 152);

      v1 = v6;
      if (v7)
      {
        goto LABEL_11;
      }
    }

    v22[0] = 17;
    outlined init with copy of LazyLayoutCacheItem.SingleItemPhaseMutation(a1, &v19);
    v17 = swift_allocObject();
    *(v17 + 16) = v2;
    outlined init with take of LazyLayoutCacheItem.SingleItemPhaseMutation(&v19, v17 + 24);

    static Update.enqueueAction(reason:_:)(v22, partial apply for specialized closure #1 in GraphHost.continueTransaction<A>(_:), v17);
  }
}

{
  v2 = v1;
  v23 = *MEMORY[0x1E69E9840];
  v19 = a1;
  if (one-time initialization token for lockAssertionsAreEnabled != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_7;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (!_MovableLockIsOwner(static Update._lock))
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_7:
    v4 = *(v1 + 152);
    v5 = swift_retain_n();
    if (v4)
    {
      v6 = v2;
LABEL_12:
      if (one-time initialization token for enabledCategories != -1)
      {
        swift_once();
      }

      if (*(static CustomEventTrace.enabledCategories + 2) < 0x55uLL)
      {
        __break(1u);
      }

      else
      {
        if ((*(static CustomEventTrace.enabledCategories + 116) & 1) != 0 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 17236;
          *&v20 = v6;
          type metadata accessor for GraphHost();
          AGGraphAddTraceEvent();
        }

        swift_beginAccess();
        v2 = *(v6 + 160);
        v9 = v2[2];
        if (v9)
        {
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v6 + 160) = v2;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
            *(v6 + 160) = v2;
          }

          if (v9 > v2[2])
          {
            __break(1u);
          }

          v11 = &v2[5 * v9];
          v12 = v11[2];
          v13 = v11[3];
          __swift_mutable_project_boxed_opaque_existential_1((v11 - 1), v12);
          v14 = (*(v13 + 16))(&v19, &type metadata for RepeatMutation, &protocol witness table for RepeatMutation, v12, v13);
          *(v6 + 160) = v2;
          swift_endAccess();
          if (v14)
          {
            goto LABEL_27;
          }
        }

        swift_beginAccess();
        v15 = swift_isUniquelyReferenced_nonNull_native();
        *(v6 + 160) = v2;
        if (v15)
        {
LABEL_24:
          v17 = v2[2];
          v16 = v2[3];
          if (v17 >= v16 >> 1)
          {
            v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v2);
          }

          v21 = &type metadata for RepeatMutation;
          v22 = &protocol witness table for RepeatMutation;
          *&v20 = a1;
          v2[2] = v17 + 1;
          outlined init with take of AnyTrackedValue(&v20, &v2[5 * v17 + 4]);
          *(v6 + 160) = v2;
          swift_endAccess();
LABEL_27:

          return;
        }
      }

      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2[2] + 1, 1, v2);
      *(v6 + 160) = v2;
      goto LABEL_24;
    }

    v7 = v2;
    while (1)
    {
      v6 = (*(*v7 + 200))(v5);

      if (!v6)
      {
        break;
      }

      v8 = *(v6 + 152);

      v7 = v6;
      if (v8)
      {
        goto LABEL_12;
      }
    }

    LOBYTE(v20) = 17;
    v18 = swift_allocObject();
    *(v18 + 16) = v2;
    *(v18 + 24) = a1;

    static Update.enqueueAction(reason:_:)(&v20, partial apply for specialized closure #1 in GraphHost.continueTransaction<A>(_:), v18);
  }
}

uint64_t sub_18D23E018()
{

  return swift_deallocObject();
}

void type metadata accessor for TappableEventType?(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = type metadata accessor for AnyTrackedValue(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t outlined destroy of ViewList?(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for TappableEventType?(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t _s7SwiftUI8ViewList_pSgWOhTm_0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for ViewList?(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void type metadata accessor for _NativeDictionary<UInt32, Int>()
{
  if (!lazy cache variable for type metadata for _NativeDictionary<UInt32, Int>)
  {
    v0 = type metadata accessor for _NativeDictionary();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _NativeDictionary<UInt32, Int>);
    }
  }
}

uint64_t Color.init(_:red:green:blue:opacity:)(_BYTE *a1, double a2, double a3, double a4, double a5)
{
  if (*a1)
  {
    if (*a1 != 1)
    {
      v14 = a5;
      type metadata accessor for ColorBox<Color.DisplayP3>(0, &lazy cache variable for type metadata for ColorBox<Color.DisplayP3>, lazy protocol witness table accessor for type Color.DisplayP3 and conformance Color.DisplayP3, &type metadata for Color.DisplayP3);
      result = swift_allocObject();
      *(result + 16) = a2;
      *(result + 24) = a3;
      *(result + 32) = a4;
      *(result + 40) = v14;
      return result;
    }

    v7 = a2;
    v8 = a3;
    v9 = a4;
  }

  else
  {
    v10 = a2;
    if (v10 <= 0.0)
    {
      v11 = -v10;
    }

    else
    {
      v11 = a2;
    }

    if (v11 <= 0.04045)
    {
      v12 = v11 * 0.077399;
    }

    else
    {
      v12 = 1.0;
      if (v11 != 1.0)
      {
        v13 = a5;
        v12 = powf((v11 * 0.94787) + 0.052133, 2.4);
        a5 = v13;
      }
    }

    if (v10 <= 0.0)
    {
      v7 = -v12;
    }

    else
    {
      v7 = v12;
    }

    v17 = a3;
    if (v17 <= 0.0)
    {
      v18 = -v17;
    }

    else
    {
      v18 = v17;
    }

    if (v18 <= 0.04045)
    {
      v19 = v18 * 0.077399;
    }

    else
    {
      v19 = 1.0;
      if (v18 != 1.0)
      {
        v20 = a5;
        v19 = powf((v18 * 0.94787) + 0.052133, 2.4);
        a5 = v20;
      }
    }

    if (v17 <= 0.0)
    {
      v8 = -v19;
    }

    else
    {
      v8 = v19;
    }

    v21 = a4;
    if (v21 <= 0.0)
    {
      v22 = -v21;
    }

    else
    {
      v22 = v21;
    }

    if (v22 <= 0.04045)
    {
      v23 = v22 * 0.077399;
    }

    else
    {
      v23 = 1.0;
      if (v22 != 1.0)
      {
        v24 = a5;
        v23 = powf((v22 * 0.94787) + 0.052133, 2.4);
        a5 = v24;
      }
    }

    if (v21 <= 0.0)
    {
      v9 = -v23;
    }

    else
    {
      v9 = v23;
    }
  }

  v25 = a5;
  type metadata accessor for ColorBox<Color.DisplayP3>(0, &lazy cache variable for type metadata for ColorBox<ResolvedColorProvider>, lazy protocol witness table accessor for type ResolvedColorProvider and conformance ResolvedColorProvider, &type metadata for ResolvedColorProvider);
  result = swift_allocObject();
  *(result + 16) = v7;
  *(result + 20) = v8;
  *(result + 24) = v9;
  *(result + 28) = v25;
  *(result + 32) = 2143289344;
  return result;
}

void type metadata accessor for ColorBox<Color.DisplayP3>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3();
    v9 = type metadata accessor for ColorBox(a1, a4, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

double CGSize.apply(_:)(unsigned __int8 a1, double a2, double a3)
{
  if (a1 > 3u)
  {
    return a3;
  }

  return result;
}

__n128 GraphicsImage.init(contents:scale:unrotatedPixelSize:orientation:isTemplate:resizingInfo:antialiased:interpolation:)@<Q0>(uint64_t *a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, char *a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>)
{
  v18 = *a1;
  v19 = *(a1 + 8);
  v20 = *(a4 + 32);
  v21 = *a6;
  outlined consume of GraphicsImage.Contents?(0, 0xFFu);
  *a7 = v18;
  v22 = 0x3F8000003F800000;
  if ((a3 & 1) == 0)
  {
    v22 = 0;
  }

  *(a7 + 8) = v19;
  if (a3)
  {
    v23 = 2143289344;
  }

  else
  {
    v23 = 0;
  }

  *(a7 + 16) = a8;
  *(a7 + 24) = a9;
  *(a7 + 32) = a10;
  *(a7 + 40) = a2;
  *(a7 + 44) = v22;
  *(a7 + 52) = v22;
  *(a7 + 60) = v23;
  *(a7 + 64) = (a3 & 1) == 0;
  result = *a4;
  *(a7 + 88) = *(a4 + 16);
  *(a7 + 72) = result;
  *(a7 + 104) = v20;
  *(a7 + 105) = a5;
  *(a7 + 106) = v21;
  *(a7 + 107) = 0;
  return result;
}

double ImageResolutionContext.effectiveAllowedDynamicRange(for:)@<D0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (!*(a1 + 8))
  {
    v4 = *a1;
    outlined copy of GraphicsImage.Contents(*a1, 0);
    v5 = CGImageGetColorSpace(v4);
    if (v5)
    {
      v6 = v5;
      v7 = CGColorSpaceUsesITUR_2100TF(v5);
      outlined consume of GraphicsImage.Contents?(v4, 0);

      if (v7)
      {
        v9 = v2[1];
        v11 = *v2;
        v12 = v9;
        v10 = *(v2 + *(type metadata accessor for ImageResolutionContext(0) + 36));

        EnvironmentValues.effectiveAllowedDynamicRange(explicitRange:)(&v10, a2);

        return result;
      }
    }

    else
    {
      outlined consume of GraphicsImage.Contents?(v4, 0);
    }
  }

  *a2 = 0;
  return result;
}

uint64_t EnvironmentValues.shouldRedactContent.getter()
{
  v1 = *v0;
  if (v0[1])
  {

    ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5 = _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA019ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5(v1);
  }

  else
  {
    v4[0] = *v0;
    v4[1] = 0;

    ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5 = specialized static ShouldRedactContentKey.value(in:)(v4);
  }

  return ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5 & 1;
}

__n128 Image.Resolved.init(image:decorative:label:basePlatformItemImage:backgroundShape:backgroundCornerRadius:)@<Q0>(_OWORD *a1@<X0>, char a2@<W1>, __n128 *a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, double a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v13 = a1[5];
  v48 = a1[4];
  v49[0] = v13;
  *(v49 + 12) = *(a1 + 92);
  v14 = a1[1];
  v45[0] = *a1;
  v45[1] = v14;
  v15 = a1[3];
  v46 = a1[2];
  v47 = v15;
  v34 = a3[1];
  v33 = *a3;
  v16 = *a5;
  v40 = v14;
  v41 = v46;
  v39 = v45[0];
  *(v44 + 12) = *(v49 + 12);
  v43 = v48;
  v44[0] = v13;
  v42 = v15;
  outlined init with copy of GraphicsImage(v45, &v36);
  outlined consume of AccessibilityImageLabel?(0, 0, 0x1FFFFFFFELL, 0);
  if (BYTE8(v45[0]) == 255)
  {
    v22 = 0;
    goto LABEL_7;
  }

  if (BYTE8(v45[0]) != 2)
  {
    v22 = (v48 & 1) == 0;
LABEL_7:
    outlined destroy of GraphicsImage(v45);
    v21 = 0;
    v23 = 0;
    if (v16 != 3)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  v17 = *(*&v45[0] + 32);
  v18 = *(*&v45[0] + 48);
  v19 = *(*&v45[0] + 16);
  outlined copy of Image.Location(v17);
  v20 = v18;
  outlined copy of Image.Location(v17);
  v35 = v17;
  _ShapeStyle_ResolverMode.init(rbSymbolStyleMask:location:)([v19 styleMask], &v35, &v36);

  outlined consume of Image.Location(v17);
  outlined destroy of GraphicsImage(v45);
  v21 = v36;
  v22 = v37;
  v23 = v38;
  if (v16 != 3)
  {
LABEL_4:
    v24 = v23 | 2;
    goto LABEL_9;
  }

LABEL_8:
  v24 = v23 & 0xFD;
LABEL_9:
  v25 = a6;
  v26 = v25;
  v27 = v42;
  v28 = v44[0];
  v29 = v44[1];
  *(a8 + 64) = v43;
  *(a8 + 80) = v28;
  v30 = v40;
  v31 = v41;
  *a8 = v39;
  *(a8 + 16) = v30;
  *(a8 + 32) = v31;
  *(a8 + 48) = v27;
  if (a7)
  {
    v26 = 0.0;
  }

  result = v34;
  *(a8 + 96) = v29;
  *(a8 + 112) = v33;
  *(a8 + 128) = v34;
  *(a8 + 144) = a4;
  *(a8 + 152) = 0;
  *(a8 + 160) = a2 & 1;
  *(a8 + 161) = v16;
  *(a8 + 164) = v26;
  *(a8 + 168) = a7 & 1;
  *(a8 + 176) = v21;
  *(a8 + 184) = v22;
  *(a8 + 186) = v24;
  return result;
}

uint64_t CGSize.scaledToFill(_:)()
{
  if (one-time initialization token for unspecified != -1)
  {
    return swift_once();
  }

  return result;
}

void _CGImagePrepareCALayerContents(void *a1, CGColorSpace *a2, char a3)
{
  if ((a3 & 2) == 0 && ((a3 & 1) == 0 || (CGImageIsSubimage() & 1) == 0))
  {
    if (!a2)
    {
      {
        _CGImagePrepareCALayerContents::srgb = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
      }

      a2 = _CGImagePrepareCALayerContents::srgb;
    }

    if (!CGImageGetProperty())
    {
      v5 = [[_SwiftUIProxyImage alloc] initWithCGImage:a1 colorSpace:a2];
      CGImageSetProperty();
      [(_SwiftUIProxyImage *)v5 schedule];
    }
  }
}

void ShapeStyle._apply(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = v14 - v8;
  if (v10 != MEMORY[0x1E69E73E0])
  {
    v11 = *(a1 + 56);
    v14[0] = *(a1 + 48);
    v14[1] = v11;
    v12 = *(a3 + 48);

    v12(v14, a2, a3);

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 32))(a1, AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v7 + 8))(v9, AssociatedTypeWitness);
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Image(uint64_t a1, void *a2)
{
  if (*a1 == *a2)
  {
    return 1;
  }

  else
  {
    return (*(**a1 + 96))() & 1;
  }
}

id _CGImageGetCALayerContents(id a1, char a2)
{
  if ((a2 & 2) == 0 && ((a2 & 1) == 0 || (CGImageIsSubimage() & 1) == 0))
  {
    Property = CGImageGetProperty();
    if (Property)
    {
      a1 = Property;
    }
  }

  return a1;
}

void ImageLayer.update(image:size:)(__int128 *a1, double a2, double a3)
{
  v4 = v3;
  v7 = a1[5];
  v56 = a1[4];
  *v57 = v7;
  *&v57[12] = *(a1 + 92);
  v8 = a1[1];
  v53 = *a1;
  v54 = v8;
  v9 = a1[3];
  *v55 = a1[2];
  *&v55[16] = v9;
  value = v53;
  if (BYTE8(v53) <= 3u)
  {
    if (!BYTE8(v53))
    {
      v15 = v57[24] != 2 && (v57[24] & 1) == 0;
      v14.value = _CGImageGetCALayerContents(v53, v15);
      goto LABEL_13;
    }

    if (BYTE8(v53) == 1)
    {
      outlined init with copy of GraphicsImage(&v53, &v43);
LABEL_14:
      [v3 setContents_];
      v16 = 0;
      v17 = value == 0;
      goto LABEL_15;
    }

LABEL_8:
    v11 = a1[5];
    v47 = a1[4];
    *v48 = v11;
    *&v48[12] = *(a1 + 92);
    v12 = a1[1];
    v43 = *a1;
    v44 = v12;
    v13 = a1[3];
    v45 = a1[2];
    v46 = v13;
    v14.value = GraphicsImage.render(at:prefersMask:)(__PAIR128__(*&a3, *&a2), (v56 & 1) == 0).value;
LABEL_13:
    value = v14.value;
    goto LABEL_14;
  }

  if (BYTE8(v53) != 4)
  {
    if (BYTE8(v53) == 255)
    {
      value = 0;
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  v27 = *(v53 + 32);
  v41 = *(v53 + 16);
  [v3 setContents_];
  v51 = v41;
  v52 = v27;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v16 = specialized ObjectCache.subscript.getter(&v51);
  v17 = 1;
LABEL_15:
  [v4 setBackgroundColor_];

  [v4 setAllowsEdgeAntialiasing_];
  if (v17)
  {
    return;
  }

  [v4 setContentsScale_];
  v18 = *&v55[12];
  v19 = *&v55[20];
  v20 = *&v55[28];
  v21 = v56;
  _CALayerSetSplatsContentsAlpha(v4, (v56 ^ 1u));
  if (v21)
  {
    [v4 setContentsMultiplyColor_];
  }

  else
  {
    v49[0] = v18;
    v49[1] = v19;
    v50 = v20;
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    v22 = specialized ObjectCache.subscript.getter(v49);
    [v4 setContentsMultiplyColor_];
  }

  v47 = v56;
  *v48 = *v57;
  *&v48[12] = *&v57[12];
  v43 = v53;
  v44 = v54;
  v45 = *v55;
  v46 = *&v55[16];
  GraphicsImage.layerStretchInPixels(size:)(v42, a2, a3);
  [v4 setContentsCenter_];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = MEMORY[0x193ABEC20](v23);

  [v4 setContentsScaling_];

  if (v57[26] - 1 < 2)
  {
    v25 = MEMORY[0x1E6979C48];
LABEL_25:
    v26 = *v25;
    [v4 setMinificationFilter_];
    goto LABEL_30;
  }

  if (!v57[26])
  {
    v25 = MEMORY[0x1E6979CB8];
    goto LABEL_25;
  }

  [v4 setMinificationFilter_];
  v26 = *MEMORY[0x1E6979C48];
LABEL_30:
  [v4 setMagnificationFilter_];
  v28 = v57[27];
  if (v57[27])
  {
    v47 = v56;
    *v48 = *v57;
    *&v48[12] = *&v57[12];
    v43 = v53;
    v44 = v54;
    v45 = *v55;
    v46 = *&v55[16];
    v29 = GraphicsImage.headroom.getter();
    v30 = MEMORY[0x1E69792A8];
    v31 = MEMORY[0x1E6979298];
    if (v28 == 2)
    {
      v31 = MEMORY[0x1E69792A0];
    }

    if (v29 > 1.0)
    {
      v30 = v31;
    }

    v28 = v29 > 1.0;
  }

  else
  {
    v30 = MEMORY[0x1E69792A8];
  }

  v32 = *v30;
  [v4 contentsEDRStrength];
  v34 = v33;
  [v4 contentsCDRStrength];
  v36 = v35;
  [v4 setPreferredDynamicRange_];
  [v4 contentsEDRStrength];
  v38 = v37;
  [v4 contentsCDRStrength];
  v40 = v39;
  if (v38 != v34)
  {
    CALayer.animateEDRProperty(_:interval:)(0xD000000000000013, 0x800000018DD7DBC0, v38 - v34);
    if (v40 == v36)
    {
      goto LABEL_39;
    }

LABEL_42:
    CALayer.animateEDRProperty(_:interval:)(0xD000000000000013, 0x800000018DD7DBE0, v40 - v36);
    goto LABEL_39;
  }

  if (v39 != v36)
  {
    goto LABEL_42;
  }

LABEL_39:
  [v4 setWantsExtendedDynamicRangeContent_];
  swift_unknownObjectRelease();
}

uint64_t _CALayerSetSplatsContentsAlpha(void *a1, const char *a2)
{
  v2 = MEMORY[0x1E6979E30];
  if (!a2)
  {
    v2 = MEMORY[0x1E6979E38];
  }

  return [a1 setContentsSwizzle:*v2];
}

uint64_t GraphicsImage.layerStretchInPixels(size:)@<X0>(uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v7 = *(v4 + 2);
  v8 = *(v4 + 3);
  v9 = *(v4 + 4);
  v10 = *(v4 + 40);
  v11 = *(v4 + 9);
  v12 = *(v4 + 10);
  v13 = *(v4 + 11);
  v14 = *(v4 + 12);
  v15 = *(v4 + 104);
  v17 = (v4 + 105);
  v16 = *(v4 + 105);
  v55 = *v4;
  v56 = v7;
  v57 = v8;
  v58 = v9;
  v59 = v10;
  *v60 = *(v4 + 41);
  *&v60[15] = *(v4 + 56);
  v61 = v11;
  v62 = v12;
  v63 = v13;
  v64 = v14;
  v65 = v15;
  v66 = v16;
  v67 = *(v4 + 107);
  if (GraphicsImage.bitmapOrientation.getter() > 3u)
  {
    v18 = a3;
  }

  else
  {
    v18 = a4;
    a4 = a3;
  }

  v55 = *v4;
  v56 = v7;
  v57 = v8;
  v58 = v9;
  v59 = v10;
  *v60 = *(v4 + 41);
  *&v60[15] = *(v4 + 56);
  v61 = v11;
  v62 = v12;
  v63 = v13;
  v64 = v14;
  v66 = *v17;
  v67 = *(v4 + 107);
  v65 = v15;
  result = GraphicsImage.slicesAndTiles(at:)(*&a4, v18, 0, v53);
  v20 = 1.0;
  if (v54 != 2)
  {
    v55 = *v4;
    v56 = v7;
    v57 = v8;
    v58 = v9;
    v59 = v10;
    *v60 = *(v4 + 41);
    *&v60[15] = *(v4 + 56);
    v61 = v11;
    v62 = v12;
    v63 = v13;
    v64 = v14;
    v65 = v15;
    v66 = *v17;
    v67 = *(v4 + 107);
    v25 = GraphicsImage.isTiledWhenStretchedToSize(_:)(a4, v18);
    v26 = 0.0;
    v27 = 0.0;
    v28 = 0.0;
    v29 = 0.0;
    if (v15 != 2)
    {
      v26 = v11;
      v27 = v12;
      v28 = v13;
      v29 = v14;
    }

    v51 = v25;
    v30 = v9;
    v31 = v8;
    if (v10 > 3)
    {
      v30 = v8;
      v31 = v9;
      if (v10 > 5)
      {
        if (v10 == 6)
        {
          goto LABEL_14;
        }
      }

      else if (v10 == 4)
      {
        goto LABEL_14;
      }

      v30 = v8;
      v31 = v9;
    }

LABEL_14:
    v32 = CGRect.inset(by:)(v7 * v26, v7 * v27, v7 * v28, v7 * v29, 0.0, 0.0, v31, v30);
    v33 = v9;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v55 = *v4;
    v56 = v7;
    v57 = v8;
    v40 = v33;
    v58 = v33;
    v59 = v10;
    *v60 = *(v4 + 41);
    *&v60[15] = *(v4 + 56);
    v61 = v11;
    v62 = v12;
    v63 = v13;
    v64 = v14;
    v65 = v15;
    v66 = *v17;
    v67 = *(v4 + 107);
    v41 = GraphicsImage.bitmapOrientation.getter();
    v68.origin.x = CGRect.unapply(_:in:)(v41, v31, v30, v32, v35, v37, v39);
    x = v68.origin.x;
    y = v68.origin.y;
    width = v68.size.width;
    height = v68.size.height;
    result = CGRectIsNull(v68);
    v46 = 0.0;
    v47 = 0.0;
    v23 = 0.0;
    v22 = 0.0;
    v21 = v51;
    if ((result & 1) == 0 && (v46 = height, v47 = width, v23 = y, v22 = x, x != 0.0) || (v24 = 1.0, v47 != v8))
    {
      if (v51)
      {
        v22 = v22 / v8;
      }

      else
      {
        v48 = v47 + -1.0;
        v49 = v47 + -1.0 < 0.0;
        v47 = 0.0;
        if (!v49)
        {
          v47 = v48;
        }

        v22 = (v22 + 0.5) / v8;
        if (v47 <= 1.0)
        {
          v22 = v22 + -0.01 / v8;
          v24 = 0.02 / v8;
          if (v23 == 0.0 && v46 == v40)
          {
            v21 = 0;
            v20 = 1.0;
            goto LABEL_36;
          }

          goto LABEL_31;
        }
      }

      v24 = v47 / v8;
    }

    if (v23 == 0.0 && v46 == v40)
    {
      v20 = 1.0;
      goto LABEL_36;
    }

    if (v51)
    {
      v23 = v23 / v40;
LABEL_34:
      v20 = v46 / v40;
      goto LABEL_36;
    }

LABEL_31:
    v50 = v46 + -1.0;
    v49 = v46 + -1.0 < 0.0;
    v46 = 0.0;
    if (!v49)
    {
      v46 = v50;
    }

    v23 = (v23 + 0.5) / v40;
    if (v46 <= 1.0)
    {
      v21 = 0;
      v23 = v23 + -0.01 / v40;
      v20 = 0.02 / v40;
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  v21 = 0;
  v22 = 0.0;
  v23 = 0.0;
  v24 = 1.0;
LABEL_36:
  *a2 = v22;
  *(a2 + 8) = v23;
  *(a2 + 16) = v24;
  *(a2 + 24) = v20;
  *(a2 + 32) = v21;
  return result;
}

uint64_t GraphicsImage.slicesAndTiles(at:)@<X0>(uint64_t result@<X0>, double a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(v4 + 16);
  v6 = 0.0;
  v7 = 0.0;
  if (v5 != 0.0)
  {
    v8 = *(v4 + 24);
    if (*(v4 + 40) <= 3u)
    {
      v9 = *(v4 + 32);
    }

    else
    {
      v9 = *(v4 + 24);
    }

    if (*(v4 + 40) > 3u)
    {
      v8 = *(v4 + 32);
    }

    v10 = 1.0 / v5;
    v6 = v10 * v8;
    v7 = v10 * v9;
  }

  v11 = *(v4 + 72);
  v12 = *(v4 + 80);
  v13 = *(v4 + 88);
  v14 = *(v4 + 96);
  v15 = *(v4 + 104);
  if ((a3 & 1) != 0 || v6 != *&result)
  {
    if (v15 == 2)
    {
LABEL_30:
      *a4 = 0u;
      *(a4 + 16) = 0u;
      *(a4 + 32) = 2;
      return result;
    }
  }

  else if (v7 == a2 || v15 == 2)
  {
    goto LABEL_30;
  }

  result = v14 & 0x7FFFFFFFFFFFFFFFLL;
  v19 = (v11 & 0x7FFFFFFFFFFFFFFFLL) == 0 && (v12 & 0x7FFFFFFFFFFFFFFFLL) == 0 && (v13 & 0x7FFFFFFFFFFFFFFFLL) == 0 && result == 0;
  if (v19 && (v15 & 1) != 0 || *(v4 + 8) == 4)
  {
    goto LABEL_30;
  }

  *a4 = v11;
  *(a4 + 8) = v12;
  *(a4 + 16) = v13;
  *(a4 + 24) = v14;
  *(a4 + 32) = v15 & 1;
  return result;
}

CGFloat CGAffineTransform.apply(_:in:)(unsigned __int8 a1, CGFloat result, double a3)
{
  if (a1 > 3u)
  {
    v4 = result * 0.5;
    v5 = a3 * 0.5;
    if (a1 > 5u)
    {
      if (a1 == 6)
      {
        v7 = xmmword_18DDAB500;
      }

      else
      {
        v7 = xmmword_18DDBA6A0;
      }

      v6 = vnegq_f64(xmmword_18DDAA020);
    }

    else
    {
      v6 = xmmword_18DDAA020;
      if (a1 == 4)
      {
        v7 = xmmword_18DDBA6A0;
      }

      else
      {
        v7 = xmmword_18DDAB500;
      }
    }

    v8 = result * 0.5;
    v9 = v5;
  }

  else
  {
    if (a1 > 1u)
    {
      v4 = result * 0.5;
      v5 = a3 * 0.5;
      if (a1 == 2)
      {
        v7 = xmmword_18DDBA6B0;
      }

      else
      {
        v7 = xmmword_18DDAA020;
      }

      v6 = vnegq_f64(xmmword_18DDAB500);
    }

    else
    {
      if (!a1)
      {
        return result;
      }

      v4 = result * 0.5;
      v5 = a3 * 0.5;
      v6 = xmmword_18DDAB500;
      v7 = xmmword_18DDBA6B0;
    }

    v8 = v5;
    v9 = v4;
  }

  *&t1.a = v7;
  *&t1.c = v6;
  t1.tx = v4;
  t1.ty = v5;
  CGAffineTransformTranslate(&t2, &t1, -v9, -v8);
  t1 = t2;
  v10 = v3[1];
  *&t2.a = *v3;
  *&t2.c = v10;
  *&t2.tx = v3[2];
  CGAffineTransformConcat(&v13, &t1, &t2);
  result = v13.a;
  v11 = *&v13.c;
  v12 = *&v13.tx;
  *v3 = *&v13.a;
  v3[1] = v11;
  v3[2] = v12;
  return result;
}

uint64_t GraphicsImage.bitmapOrientation.getter()
{
  v1 = v0[40];
  if (v0[8] == 2)
  {
    if ([*(*v0 + 16) flipsRightToLeft])
    {
      return (0x405060702030001uLL >> (8 * v1));
    }

    else
    {
      return v1;
    }
  }

  return v1;
}

unint64_t *protocol witness for RandomAccessCollection.distance(from:to:) in conformance LayoutSubviews(unint64_t *result, unint64_t *a2)
{
  v3 = *(*(v2 + 8) + 16);
  if (*result > v3)
  {
    __break(1u);
  }

  else if (*a2 <= v3)
  {
    return (*a2 - *result);
  }

  __break(1u);
  return result;
}

uint64_t Path.append(to:)(uint64_t result)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(v1 + 32);
  if (v3 <= 2)
  {
    v5 = *(v1 + 8);
    v4 = *(v1 + 16);
    v6 = *(v1 + 24);
    if (*(v1 + 32))
    {
      if (v3 == 1)
      {
        *&v11 = *v1;
        *(&v11 + 1) = v5;
        *&v12 = v4;
        *(&v12 + 1) = v6;
        v7 = 7;
      }

      else
      {
        v8 = *(v2 + 64);
        v9 = *(v2 + 32);
        v11 = *(v2 + 16);
        v12 = v9;
        v13 = *(v2 + 48);
        if (v8)
        {
          v7 = 9;
        }

        else
        {
          v7 = 8;
        }
      }
    }

    else
    {
      *&v11 = *v1;
      *(&v11 + 1) = v5;
      *&v12 = v4;
      *(&v12 + 1) = v6;
      v7 = 5;
    }

    return MEMORY[0x193AC35E0](result, v7, &v11, 0);
  }

  if (v3 != 5)
  {
    if (v3 == 6)
    {
      return result;
    }

    goto LABEL_24;
  }

  if (!*(v2 + 16))
  {
    if (*(v2 + 24))
    {
      goto LABEL_8;
    }

    __break(1u);
LABEL_24:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (*(v2 + 16) != 1)
  {
    v10 = one-time initialization token for bufferCallbacks;

    if (v10 != -1)
    {
      swift_once();
    }

    goto LABEL_20;
  }

LABEL_8:

LABEL_20:
  RBPathStorageAppendPath();

  return outlined destroy of Path(v1);
}

double protocol witness for Shape.path(in:) in conformance Circle@<D0>(uint64_t a1@<X8>, double a2@<D0>, CGFloat a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  specialized Circle.path(in:)(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

BOOL specialized Circle.path(in:)@<W0>(uint64_t a1@<X8>, double a2@<D0>, CGFloat a3@<D1>, double Height@<D2>, double a5@<D3>)
{
  v8 = a2;
  if (CGRectIsNull(*&a2) || (v14.origin.x = v8, v14.origin.y = a3, v14.size.width = Height, v14.size.height = a5, CGRectIsInfinite(v14)))
  {
    v15.origin.x = v8;
    v15.origin.y = a3;
    v15.size.width = Height;
    v15.size.height = a5;
    result = CGRectIsNull(v15);
    if (result)
    {
      v8 = 0.0;
      a3 = 0.0;
      Height = 0.0;
      a5 = 0.0;
      v11 = 6;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v16.origin.x = v8;
    v16.origin.y = a3;
    v16.size.width = Height;
    v16.size.height = a5;
    Width = CGRectGetWidth(v16);
    v17.origin.x = v8;
    v17.origin.y = a3;
    v17.size.width = Height;
    v17.size.height = a5;
    v13 = Width - CGRectGetHeight(v17);
    if (v13 <= 0.0)
    {
      if (v13 < 0.0)
      {
        a3 = a3 + v13 * -0.5;
        v19.origin.x = v8;
        v19.origin.y = a3;
        v19.size.width = Height;
        v19.size.height = a5;
        a5 = CGRectGetWidth(v19);
      }
    }

    else
    {
      v8 = v13 * 0.5 + v8;
      v18.origin.x = v8;
      v18.origin.y = a3;
      v18.size.width = Height;
      v18.size.height = a5;
      Height = CGRectGetHeight(v18);
    }

    v20.origin.x = v8;
    v20.origin.y = a3;
    v20.size.width = Height;
    v20.size.height = a5;
    result = CGRectIsNull(v20);
    if (result)
    {
      v11 = 6;
      v8 = 0.0;
      a3 = 0.0;
      Height = 0.0;
      a5 = 0.0;
    }

    else
    {
      v21.origin.x = v8;
      v21.origin.y = a3;
      v21.size.width = Height;
      v21.size.height = a5;
      result = CGRectIsInfinite(v21);
      v11 = !result;
    }
  }

  *a1 = v8;
  *(a1 + 8) = a3;
  *(a1 + 16) = Height;
  *(a1 + 24) = a5;
  *(a1 + 32) = v11;
  return result;
}

double one-time initialization function for bufferCallbacks()
{
  v0 = swift_slowAlloc();
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0;
  *(v0 + 8) = @objc closure #1 in closure #1 in variable initialization expression of static Path.PathBox.bufferCallbacks;
  *(v0 + 16) = @objc closure #2 in closure #1 in variable initialization expression of static Path.PathBox.bufferCallbacks;
  *(v0 + 24) = @objc closure #3 in closure #1 in variable initialization expression of static Path.PathBox.bufferCallbacks;
  *(v0 + 32) = @objc closure #4 in closure #1 in variable initialization expression of static Path.PathBox.bufferCallbacks;
  *(v0 + 40) = @objc closure #5 in closure #1 in variable initialization expression of static Path.PathBox.bufferCallbacks;
  *(v0 + 48) = @objc closure #6 in closure #1 in variable initialization expression of static Path.PathBox.bufferCallbacks;
  *(v0 + 56) = @objc closure #7 in closure #1 in variable initialization expression of static Path.PathBox.bufferCallbacks;
  *(v0 + 64) = @objc closure #8 in closure #1 in variable initialization expression of static Path.PathBox.bufferCallbacks;
  static Path.PathBox.bufferCallbacks = v0;
  return result;
}

uint64_t ImageRendererHost.proposedSize.didset(uint64_t result, char a2, uint64_t a3, char a4)
{
  v5 = *v4;
  v6 = (v4 + *(*v4 + 248));
  if (v6[1])
  {
    if ((a2 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if ((a2 & 1) != 0 || *v6 != *&result)
  {
    goto LABEL_12;
  }

  if (v6[3])
  {
    if (a4)
    {
      return result;
    }
  }

  else if ((a4 & 1) == 0 && v6[2] == *&a3)
  {
    return result;
  }

LABEL_12:
  ImageRendererHost.updateSizeThatFitsObserver()();

  *&result = COERCE_DOUBLE(ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)(8u, 1, v5, &protocol witness table for ImageRendererHost<A>));
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI22ResolvedGradientVectorV4Stop026_3CA72A515D037D62EA3FD1FE1M4F3CBLLV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  for (i = 0; ; i += 48)
  {
    v4 = 0;
    v5 = a1 + i;
    v6 = a2 + i;
    if ((vminv_u16(vmovn_s32(vceqq_f32(*(a1 + i + 32), *(a2 + i + 32)))) & 1) == 0 || *(v5 + 48) != *(v6 + 48))
    {
      break;
    }

    if (*(v5 + 72))
    {
      if ((*(v6 + 72) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*(v6 + 72))
      {
        return 0;
      }

      v7 = *(v5 + 56);
      v8 = *(v5 + 64);
      v9 = *(v6 + 64);
      v10 = *&v7 == COERCE_FLOAT(*(v6 + 56)) && *(&v7 + 1) == COERCE_FLOAT(HIDWORD(*(v6 + 56)));
      v11 = v10 && *&v8 == *&v9;
      if (!v11 || *(&v8 + 1) != *(&v9 + 1))
      {
        return 0;
      }
    }

    if (!--v2)
    {
      return 1;
    }
  }

  return v4;
}

double DynamicViewList.Item.invalidate()()
{
  swift_beginAccess();
  type metadata accessor for Unmanaged();
  v0 = type metadata accessor for Array();

  swift_getWitnessTable(MEMORY[0x1E69E6340], v0);
  Collection.firstIndex(where:)();

  if (v2 != 1)
  {
    swift_beginAccess();
    Array.remove(at:)();
    swift_endAccess();
  }

  return result;
}

uint64_t *assignWithCopy for LinearGradient(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  return a1;
}

uint64_t type metadata completion function for _BackgroundShapeModifier(uint64_t a1)
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

uint64_t AnimatedShape.Init.value.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  (*(v7 + 16))(v9, Value, a2);
  v11 = AGGraphGetValue();
  v12 = *v11;
  v13 = v11[1];
  (*(v7 + 32))(a4, v9, a2);
  result = type metadata accessor for AnimatedShape(0, a2, a3, v14);
  v16 = (a4 + *(result + 36));
  *v16 = v12;
  v16[1] = v13;
  return result;
}

double AnimatedShape.shape(in:)(uint64_t a1, uint64_t a2, double a3)
{
  Shape.effectivePath(in:)(*(a2 + 16), *(a2 + 24), v14, a3);
  v6 = v15;
  v7 = (v3 + *(a2 + 36));
  v8 = *v7;
  LODWORD(v7) = v7[1];
  v9 = v14[1];
  *a1 = v14[0];
  *(a1 + 16) = v9;
  v10 = v7 == 0;
  v11 = 0x10000;
  if (v10)
  {
    v11 = 0;
  }

  v10 = v8 == 0;
  v12 = 256;
  if (v10)
  {
    v12 = 0;
  }

  *(a1 + 32) = v12 | v6 | v11;
  *(a1 + 64) = 0;
  *(a1 + 104) = 0;
  return 0.0;
}

uint64_t initializeWithCopy for _ClipEffect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  *(*(v5 + 48) + a1) = *(*(v5 + 48) + a2);
  return a1;
}

void ShapeType.initFromFilled(type:shape:)(int a1, void *a2)
{
  v56 = *MEMORY[0x1E69E9840];
  if (a1 == 6)
  {
    if (RBPathIsEmpty())
    {
      v28 = *(*&v2 + 48);
      *&v52.tx = *(*&v2 + 32);
      v53 = v28;
      v54 = *(*&v2 + 64);
      v55 = *(*&v2 + 80);
      v29 = *(*&v2 + 16);
      *&v52.a = **&v2;
      *&v52.c = v29;
      outlined destroy of ShapeType(&v52);
      **&v2 = 0u;
      *(*&v2 + 16) = 0u;
      *(*&v2 + 32) = 0u;
      *(*&v2 + 48) = 0u;
      *(*&v2 + 64) = 0u;
      v30 = 3;
    }

    else
    {
      v31 = a2[6];
      if (v31 < 0)
      {
        __break(1u);
      }

      v32 = *(a2 + 2);
      v33 = *(a2 + 6);
      v34 = *(a2 + 7);
      v36 = *(a2 + 4);
      v35 = *(a2 + 5);
      if (v31)
      {
        v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v38 = 0;
        v39 = *(v37 + 2);
        do
        {
          v40 = *(a2[7] + 8 * v38);
          v41 = *(v37 + 3);
          if (v39 >= v41 >> 1)
          {
            v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v39 + 1, 1, v37);
          }

          ++v38;
          *(v37 + 2) = v39 + 1;
          *&v37[8 * v39++ + 32] = v40;
        }

        while (v31 != v38);
      }

      else
      {
        v37 = MEMORY[0x1E69E7CC0];
      }

      v52.a = v2;
      v52.b = v32;
      *&v52.c = __PAIR64__(v34, v33);
      v52.d = v36;
      *&v52.tx = v37;
      v52.ty = v35;

      RBPathApplyShape();

      if (*(*&v2 + 80) != 3 || **&v2 != 1 || (v42 = vorrq_s8(vorrq_s8(*(*&v2 + 16), *(*&v2 + 48)), vorrq_s8(*(*&v2 + 32), *(*&v2 + 64))), *&vorr_s8(*v42.i8, *&vextq_s8(v42, v42, 8uLL)) | *(*&v2 + 8)))
      {

        return;
      }

      v43 = *(*&v2 + 48);
      *&v52.tx = *(*&v2 + 32);
      v53 = v43;
      v54 = *(*&v2 + 64);
      v55 = *(*&v2 + 80);
      v44 = *(*&v2 + 16);
      *&v52.a = **&v2;
      *&v52.c = v44;
      outlined destroy of ShapeType(&v52);
      v45 = RBPathRetain();
      v47 = v46;
      type metadata accessor for Path.PathBox();
      v48 = swift_allocObject();
      *(v48 + 40) = 0u;
      *(v48 + 56) = 0u;
      *(v48 + 72) = 0u;
      *(v48 + 88) = 0u;
      *(v48 + 104) = 0u;
      *(v48 + 16) = 1;
      *(v48 + 24) = v45;
      *(v48 + 32) = v47;
      **&v2 = v48;
      *(*&v2 + 8) = 0;
      *(*&v2 + 16) = 0;
      *(*&v2 + 24) = 0;
      *(*&v2 + 32) = 5;
      *(*&v2 + 40) = v32;
      *(*&v2 + 48) = v33;
      *(*&v2 + 52) = v34;
      *(*&v2 + 56) = v36;
      *(*&v2 + 64) = v37;
      *(*&v2 + 72) = v35;
      v30 = 2;
    }

    *(*&v2 + 80) = v30;
    return;
  }

  if (a1 == 3)
  {
    v7 = *a2;
    v8 = *(a2 + 1);
    v9 = *(a2 + 2);
    v10 = *(a2 + 3);
    v11 = *(a2 + 4);
    v12 = *(a2 + 5);
    v13 = a2[12];
    v14 = a2[6];
    v15 = a2[7];
    v16 = a2[8];
    v17 = a2[9];
    if (v8 == 0.0 && v9 == 0.0 || v7 == 0.0 && v10 == 0.0)
    {
      v18 = *(a2 + 10);
      v19 = *(a2 + 11);
      v52.a = *a2;
      v52.b = v8;
      v52.c = v9;
      v52.d = v10;
      v52.tx = v11;
      v52.ty = v12;
      v58 = CGRectApplyAffineTransform(*&v14, &v52);
      x = v58.origin.x;
      y = v58.origin.y;
      height = v58.size.height;
      width = v58.size.width;
      v52.a = v7;
      v52.b = v8;
      v52.c = v9;
      v52.d = v10;
      v52.tx = v11;
      v52.ty = v12;
      v58.origin.x = v18;
      v58.origin.y = v19;
      v22 = CGSizeApplyAffineTransform(v58.origin, &v52);
      if (v22.width == v22.height || vabdd_f64(v22.width, v22.height) < 0.001)
      {
        v23 = *(*&v2 + 48);
        *&v52.tx = *(*&v2 + 32);
        v53 = v23;
        v54 = *(*&v2 + 64);
        v55 = *(*&v2 + 80);
        v24 = *(*&v2 + 16);
        *&v52.a = **&v2;
        *&v52.c = v24;
        outlined destroy of ShapeType(&v52);
        v59.origin.x = x;
        v59.origin.y = y;
        v59.size.width = width;
        v59.size.height = height;
        v25 = CGRectGetWidth(v59);
        v60.origin.x = x;
        v60.origin.y = y;
        v60.size.width = width;
        v60.size.height = height;
        v26 = CGRectGetHeight(v60);
        if (v26 >= v25)
        {
          v26 = v25;
        }

        v27 = v26 * 0.5;
        **&v2 = x;
        *(*&v2 + 8) = y;
        if (v27 >= v22.width)
        {
          v27 = v22.width;
        }

        *(*&v2 + 16) = width;
        *(*&v2 + 24) = height;
        *(*&v2 + 32) = v27;
        *(*&v2 + 40) = v13 == 1;
        *(*&v2 + 80) = 0;
      }
    }
  }

  else if (!a1 && (*(a2 + 1) == 0.0 && *(a2 + 2) == 0.0 || *a2 == 0.0 && *(a2 + 3) == 0.0))
  {
    v4 = *(*&v2 + 48);
    *&v52.tx = *(*&v2 + 32);
    v53 = v4;
    v54 = *(*&v2 + 64);
    v55 = *(*&v2 + 80);
    v5 = *(*&v2 + 16);
    *&v52.a = **&v2;
    *&v52.c = v5;
    outlined destroy of ShapeType(&v52);
    v57 = *(a2 + 6);
    v6 = *(a2 + 1);
    *&v51.a = *a2;
    *&v51.c = v6;
    *&v51.tx = *(a2 + 2);
    **&v2 = CGRectApplyAffineTransform(v57, &v51);
    *(*&v2 + 32) = 0;
    *(*&v2 + 40) = 0;
    *(*&v2 + 80) = 0;
  }
}

unsigned int *storeEnumTagSinglePayload for _ClipEffect(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 2;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
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

      else if (v12)
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
      if (v6 < 0xFE)
      {
        if (a2 > 0xFE)
        {
          *(result + v8) = a2 - 255;
        }

        else
        {
          *(result + v8) = a2 + 1;
        }
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 2);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -2)
  {
LABEL_43:
    if (v12 > 1)
    {
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_43;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_47:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_47;
    }
  }

LABEL_44:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

uint64_t closure #2 in static _ShapeView._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[0] = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  v10[2] = type metadata accessor for _ShapeView(0, v11);
  v10[3] = a2;
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v10, a2, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v11[0];
}

uint64_t closure #3 in static _ShapeView._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a2;
  v12[1] = a3;
  v12[2] = a4;
  v12[3] = a5;
  v6 = type metadata accessor for _ShapeView(0, v12);
  v7 = *(v6 + 56);
  v11[2] = v6;
  v8 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v7, closure #1 in static PointerOffset.of(_:)partial apply, v11, &type metadata for FillStyle, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return v12[0];
}

uint64_t type metadata completion function for AnimatedShape(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance AnimatedShape<A>.Init(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for AnimatedShape<A>.Init, a1);

  return static AsyncAttribute.flags.getter();
}

BOOL ValueCycleDetector.dispatch(value:label:isDebug:)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, char a4, uint64_t a5)
{
  v6 = v5;
  AGGraphClearUpdate();
  v11 = *(a5 + 16);
  v12 = *(a5 + 24);
  v13 = *AGGraphGetValue();
  AGGraphSetUpdate();
  if (*(v6 + 4) != v13)
  {
    *(v6 + 4) = v13;
    v15 = *(a5 + 44);
    v16 = type metadata accessor for Stack3(0, v11, v12, v14);
    (*(*(v16 - 8) + 8))(v6 + v15, v16);
    Stack3.init()(v11, v6 + v15);
  }

  v17 = type metadata accessor for Stack3(0, v11, v12, v14);
  v18 = Stack3.contains(_:)(a1, v17);
  if (v18)
  {
    if ((*(v6 + 8) & 1) == 0)
    {
      if ((a4 & 1) == 0)
      {
        _StringGuts.grow(_:)(39);
        v21 = a2(v19, v20);
        v23 = v22;

        MEMORY[0x193ABEDD0](0xD000000000000025, 0x800000018DD78BF0);
        specialized static Log.externalWarning(_:)(v21, v23);
      }

      *(v6 + 8) = 1;
    }
  }

  else
  {
    Stack3.push(_:)(a1, v17);
  }

  return (v18 & 1) == 0;
}

uint64_t type metadata completion function for Stack3(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_getTupleTypeLayout3();
    v4 = &v3;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t Stack3.contains(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v102 = a2;
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v101 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v118 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v100 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v104 = &v97 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v97 - v14;
  v120 = *(v8 - 8);
  v16 = v120;
  MEMORY[0x1EEE9AC00](v17);
  v97 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v103 = &v97 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v99 = &v97 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v105 = &v97 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v123 = &v97 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v97 - v28;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v116 = &v97 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v122 = &v97 - v33;
  v35 = MEMORY[0x1EEE9AC00](v34);
  v37 = &v97 - v36;
  v39 = *(v38 + 16);
  v113 = v38 + 16;
  v114 = v3;
  v125 = v40;
  v108 = v39;
  (v39)(&v97 - v36, v3, v35);
  v41 = v6[2];
  v115 = a1;
  v110 = v6 + 2;
  v107 = v41;
  v41(v29, a1, v5);
  v42 = v6[7];
  v109 = v6 + 7;
  v106 = v42;
  v42(v29, 0, 1, v5);
  v124 = TupleTypeMetadata2;
  v43 = *(TupleTypeMetadata2 + 48);
  v121 = v16;
  v45 = v16 + 16;
  v44 = *(v16 + 16);
  v44(v15, v37, v8);
  v44(&v15[v43], v29, v8);
  v119 = v6;
  v48 = v6[6];
  v46 = v6 + 6;
  v47 = v48;
  v49 = v48(v15, 1, v5);
  v111 = v48;
  v112 = v45;
  v117 = v44;
  if (v49 != 1)
  {
    v44(v123, v15, v8);
    if (v47(&v15[v43], 1, v5) != 1)
    {
      v53 = v119;
      v54 = v101;
      (v119[4])(v101, &v15[v43], v5);
      v51 = dispatch thunk of static Equatable.== infix(_:_:)();
      v98 = v46;
      v55 = v53[1];
      v55(v54, v5);
      v50 = *(v120 + 8);
      v50(v29, v8);
      v55(v123, v5);
      v46 = v98;
      v50(v15, v8);
      goto LABEL_8;
    }

    v50 = *(v120 + 8);
    v50(v29, v8);
    (v119[1])(v123, v5);
LABEL_6:
    v52 = v124;
    (*(v118 + 8))(v15, v124);
    v51 = 0;
    goto LABEL_9;
  }

  v50 = *(v120 + 8);
  v50(v29, v8);
  if (v47(&v15[v43], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  v50(v15, v8);
  v51 = 1;
LABEL_8:
  v52 = v124;
LABEL_9:
  v56 = v125;
  v57 = *(v125 + 48);
  v58 = v121 + 8;
  v50(&v37[*(v125 + 64)], v8);
  v50(&v37[v57], v8);
  v50(v37, v8);
  if ((v51 & 1) == 0)
  {
    v121 = v58;
    v60 = v122;
    v108(v122, v114, v56);
    v61 = &v60[*(v56 + 48)];
    v62 = v52;
    v63 = v105;
    v107(v105, v115, v5);
    v106(v63, 0, 1, v5);
    v64 = *(v62 + 48);
    v65 = v104;
    v123 = v61;
    v66 = v117;
    v117(v104, v61, v8);
    v66(&v65[v64], v63, v8);
    v67 = v111;
    if (v111(v65, 1, v5) == 1)
    {
      v50(v63, v8);
      v68 = v67(&v65[v64], 1, v5);
      v69 = v116;
      if (v68 == 1)
      {
        v50(v65, v8);
        v70 = v122;
        v71 = v123;
        v72 = &v122[*(v125 + 64)];
        v59 = 1;
LABEL_27:
        v50(v72, v8);
        v50(v71, v8);
        v50(v70, v8);
        return v59 & 1;
      }
    }

    else
    {
      v73 = v99;
      v66(v99, v65, v8);
      if (v67(&v65[v64], 1, v5) != 1)
      {
        v98 = v46;
        v85 = v119;
        v86 = v101;
        (v119[4])(v101, &v65[v64], v5);
        LODWORD(v120) = dispatch thunk of static Equatable.== infix(_:_:)();
        v87 = v65;
        v88 = v85[1];
        v89 = v86;
        v78 = v66;
        v88(v89, v5);
        v50(v105, v8);
        v88(v99, v5);
        v74 = v124;
        v50(v87, v8);
        v75 = v125;
        v90 = v122;
        v50(&v122[*(v125 + 64)], v8);
        v50(v123, v8);
        v50(v90, v8);
        v77 = v116;
        if (v120)
        {
          goto LABEL_10;
        }

LABEL_17:
        v108(v77, v114, v75);
        v79 = &v77[*(v75 + 64)];
        v80 = v103;
        v107(v103, v115, v5);
        v106(v80, 0, 1, v5);
        v81 = *(v74 + 48);
        v82 = v100;
        v123 = v79;
        v78(v100, v79, v8);
        v78(&v82[v81], v80, v8);
        v83 = v111;
        if (v111(v82, 1, v5) == 1)
        {
          v50(v80, v8);
          if (v83(&v82[v81], 1, v5) == 1)
          {
            v50(v82, v8);
            v59 = 1;
            v70 = v116;
LABEL_26:
            v71 = &v70[*(v125 + 48)];
            v72 = v123;
            goto LABEL_27;
          }
        }

        else
        {
          v84 = v97;
          v117(v97, v82, v8);
          if (v83(&v82[v81], 1, v5) != 1)
          {
            v91 = v84;
            v92 = v119;
            v93 = v101;
            (v119[4])(v101, &v82[v81], v5);
            v59 = dispatch thunk of static Equatable.== infix(_:_:)();
            v94 = v92[1];
            v95 = v116;
            v94(v93, v5);
            v50(v103, v8);
            v94(v91, v5);
            v70 = v95;
            v50(v100, v8);
            goto LABEL_26;
          }

          v50(v103, v8);
          (v119[1])(v84, v5);
        }

        (*(v118 + 8))(v82, v124);
        v59 = 0;
        v70 = v116;
        goto LABEL_26;
      }

      v50(v105, v8);
      (v119[1])(v73, v5);
      v69 = v116;
    }

    v98 = v46;
    v74 = v124;
    (*(v118 + 8))(v65, v124);
    v75 = v125;
    v76 = v122;
    v50(&v122[*(v125 + 64)], v8);
    v50(v123, v8);
    v50(v76, v8);
    v77 = v69;
    v78 = v117;
    goto LABEL_17;
  }

LABEL_10:
  v59 = 1;
  return v59 & 1;
}

uint64_t Stack3.push(_:)(uint64_t a1, uint64_t a2)
{
  v35 = a1;
  v3 = *(a2 + 16);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v29 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v31 = &v26 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v12 = *(TupleTypeMetadata3 + 64);
  v32 = v2;
  v13 = v2 + v12;
  v34 = *(v5 + 16);
  v34(v11, v2 + v12, v4);
  v14 = *(v3 - 8);
  v33 = *(v14 + 48);
  v15 = v33(v11, 1, v3);
  v28 = v5;
  v16 = *(v5 + 8);
  v16(v11, v4);
  if (v15 == 1)
  {
    v17 = v13;
  }

  else
  {
    v27 = v13;
    v18 = v31;
    v19 = v32;
    TupleTypeMetadata3 = v32 + *(TupleTypeMetadata3 + 48);
    (v34)(v31);
    v20 = v33(v18, 1, v3);
    v16(v18, v4);
    if (v20 == 1)
    {
      v17 = TupleTypeMetadata3;
    }

    else
    {
      v17 = v19;
      v22 = v29;
      v21 = TupleTypeMetadata3;
      v34(v29, v17, v4);
      v23 = v33(v22, 1, v3);
      v16(v22, v4);
      if (v23 != 1)
      {
        v24 = *(v28 + 24);
        v24(v27, v21, v4);
        v24(v21, v17, v4);
      }
    }
  }

  v16(v17, v4);
  (*(v14 + 16))(v17, v35, v3);
  return (*(v14 + 56))(v17, 0, 1, v3);
}

CGPathRef Path.cgPath.getter()
{
  v1 = *v0;
  v2 = *(v0 + 32);
  if (v2 <= 2)
  {
    if (*(v0 + 32))
    {
      if (v2 != 1)
      {
        return FixedRoundedRect.cgPath.getter();
      }

      v3 = *v0;
      v4 = *(v0 + 8);
      v5 = *(v0 + 16);
      v6 = *(v0 + 24);

      return CGPathCreateWithEllipseInRect(*&v3, 0);
    }

    v8 = *v0;
    v9 = *(v0 + 8);
    v10 = *(v0 + 16);
    v11 = *(v0 + 24);
    goto LABEL_15;
  }

  if (v2 != 5)
  {
    if (v2 == 6)
    {
      v8 = *MEMORY[0x1E695F050];
      v9 = *(MEMORY[0x1E695F050] + 8);
      v10 = *(MEMORY[0x1E695F050] + 16);
      v11 = *(MEMORY[0x1E695F050] + 24);
LABEL_15:

      return CGPathCreateWithRect(*&v8, 0);
    }

LABEL_26:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (*(v1 + 16))
  {
    if (*(v1 + 16) == 1)
    {
    }

    else
    {
      v13 = one-time initialization token for bufferCallbacks;

      if (v13 != -1)
      {
        swift_once();
      }
    }

    v14 = RBPathCopyCGPath();
    outlined destroy of Path(v0);
    return v14;
  }

  v12 = *(v1 + 24);
  if (!v12)
  {
    __break(1u);
    goto LABEL_26;
  }

  return v12;
}

uint64_t instantiation function for generic protocol witness table for Color.Resolved(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t specialized AttributeInvalidatingSubscriber.receive(_:)()
{
  v1 = *v0;
  swift_beginAccess();
  v3 = type metadata accessor for AttributeInvalidatingSubscriber.StateType(0, *(v1 + 80), *(v1 + 88), v2);
  v4 = *(v3 - 8);
  (*(v4 + 16))(v7, v0 + 4, v3);
  v5 = v7[3];
  (*(v4 + 8))(v7, v3);
  if (v5 >= 2)
  {
    AttributeInvalidatingSubscriber.invalidateAttribute()();
  }

  return static Subscribers.Demand.none.getter();
}

double AttributeInvalidatingSubscriber.invalidateAttribute()()
{
  if (!pthread_main_np())
  {
    v2 = static os_log_type_t.fault.getter();
    if (one-time initialization token for runtimeIssuesLog != -1)
    {
      v11 = v2;
      swift_once();
      v2 = v11;
    }

    os_log(_:dso:log:_:_:)(v2, &dword_18D018000, static Log.runtimeIssuesLog, "Publishing changes from background threads is not allowed; make sure to publish values from the main thread (via operators like receive(on:)) on model updates.", 159, 2, MEMORY[0x1E69E7CC0]);
    goto LABEL_16;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (!_MovableLockIsOwner(static Update._lock) || static Update.dispatchDepth >= static Update.depth)
  {
LABEL_16:
    v3 = 0;
    goto LABEL_17;
  }

  if (one-time initialization token for v4 != -1)
  {
    swift_once();
  }

  v1 = static Semantics.v4;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_28;
    }

LABEL_25:
    v10 = static os_log_type_t.fault.getter();
    if (one-time initialization token for runtimeIssuesLog != -1)
    {
      v12 = v10;
      swift_once();
      v10 = v12;
    }

    os_log(_:dso:log:_:_:)(v10, &dword_18D018000, static Log.runtimeIssuesLog, "Publishing changes from within view updates is not allowed, this will cause undefined behavior.", 95, 2, MEMORY[0x1E69E7CC0]);
    goto LABEL_28;
  }

  if (static Semantics.forced >= v1)
  {
    goto LABEL_25;
  }

LABEL_28:
  v3 = 1;
LABEL_17:
  Strong = swift_weakLoadStrong();
  v5 = *(v0 + 24);
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v6 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  if (Strong)
  {
    v7 = _threadTransactionData();
    if (v7)
    {
      type metadata accessor for PropertyList.Element();
      swift_unknownObjectRetain();
      v7 = swift_dynamicCastClassUnconditional();
    }

    v8 = _threadTransactionID();
    specialized GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)(v7, v8, v5, v3, 1);
  }

  static Update.end()();
  _MovableLockUnlock(v6);

  return result;
}

double protocol witness for Shape.sizeThatFits(_:) in conformance Circle(uint64_t a1, char a2, uint64_t a3, char a4)
{
  result = *&a3;
  v5 = 10.0;
  if ((a4 & 1) == 0)
  {
    v5 = *&a3;
  }

  if (*&a3 >= *&a1)
  {
    result = *&a1;
  }

  if (a4)
  {
    result = *&a1;
  }

  if (a2)
  {
    return v5;
  }

  return result;
}

void sub_18D242DF8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = _SwiftUIProxyImage;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

double Transaction.addAnimationListener(_:)(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void *, uint64_t, _BYTE *, __n128))
{
  if (one-time initialization token for pendingListeners != -1)
  {
    swift_once();
  }

  v7 = static Transaction.pendingListeners;
  v8 = *(type metadata accessor for Transaction.PendingListeners(0) - 8);
  v9 = (*(v8 + 80) + 20) & ~*(v8 + 80);
  os_unfair_lock_lock(v7 + 4);
  closure #1 in static Transaction.addPendingListener(_:)((v7 + v9), a1);
  os_unfair_lock_unlock(v7 + 4);
  v10 = a2(*v3);
  if (v10 && (v11 = *(v10 + 72)) != 0)
  {
    type metadata accessor for ListenerPair();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = a1;
    swift_retain_n();

    (a3)(v3, v12, v14);
  }

  else
  {

    (a3)(v3, a1, v15);
  }

  return result;
}

double closure #1 in DynamicContainerInfo.tryRemovingItem(at:disableTransitions:)(uint64_t a1)
{
  v1 = *(a1 + 32) - 1;
  *(a1 + 32) = v1;
  if (!v1 && swift_weakLoadStrong())
  {
    specialized GraphHost.continueTransaction<A>(_:)(*(a1 + 24));
  }

  return result;
}

void specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<DisplayList.ViewUpdater.ViewCache.Key>, lazy protocol witness table accessor for type DisplayList.ViewUpdater.ViewCache.Key and conformance DisplayList.ViewUpdater.ViewCache.Key, &type metadata for DisplayList.ViewUpdater.ViewCache.Key, MEMORY[0x1E69E6A10]);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v33 = v2;
    v6 = 0;
    v34 = (v3 + 56);
    v35 = v3;
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
    v11 = v4 + 56;
    v36 = v4;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v37 = (v9 - 1) & v9;
LABEL_15:
      v17 = *(v3 + 48) + 20 * (v14 | (v6 << 6));
      v19 = *v17;
      v18 = *(v17 + 4);
      v20 = *(v17 + 8);
      v21 = *(v17 + 12);
      v22 = *(v17 + 16);
      v23 = *(v17 + 17);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v19);
      Hasher._combine(_:)(v18);
      Hasher._combine(_:)(v20);
      Hasher._combine(_:)(v21);
      Hasher._combine(_:)(v22);
      Hasher._combine(_:)(v23);
      v24 = Hasher._finalize()();
      v5 = v36;
      v25 = -1 << *(v36 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v11 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v11 + 8 * v27);
          if (v31 != -1)
          {
            v12 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v12 = __clz(__rbit64((-1 << v26) & ~*(v11 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v36 + 48) + 20 * v12;
      *v13 = v19;
      *(v13 + 4) = v18;
      *(v13 + 8) = v20;
      *(v13 + 12) = v21;
      *(v13 + 16) = v22;
      *(v13 + 17) = v23;
      ++*(v36 + 16);
      v3 = v35;
      v9 = v37;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v10)
      {
        break;
      }

      v16 = v34[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v37 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v32 = 1 << *(v3 + 32);
    if (v32 >= 64)
    {
      bzero(v34, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v34 = -1 << v32;
    }

    v2 = v33;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for _SetStorage<ObjectIdentifier>(0, &lazy cache variable for type metadata for _SetStorage<ObjectIdentifier>, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E5FE8]);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v26 = v2;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      v18 = MEMORY[0x193AC1170](*(v5 + 40), v17);
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v26;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<AttributedString.AnyAttribute>, lazy protocol witness table accessor for type AttributedString.AnyAttribute and conformance AttributedString.AnyAttribute, &type metadata for AttributedString.AnyAttribute, MEMORY[0x1E69E6A10]);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v20 = *v18;
      v19 = v18[1];
      Hasher.init(_seed:)();
      if (v19 < 0)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        dispatch thunk of static AttributedStringKey.name.getter();
      }

      String.hash(into:)();

      v21 = Hasher._finalize()();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v20;
      v14[1] = v19;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

{
  v2 = v1;
  v37 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  type metadata accessor for _SetStorage<Date.ComponentsFormatStyle.Field>(0);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      lazy protocol witness table accessor for type CGSize and conformance CGSize(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field, MEMORY[0x1E6969498], MEMORY[0x1E69694A8]);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

{
  v2 = v1;
  v37 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  type metadata accessor for _SetStorage<Duration.UnitsFormatStyle.Unit>(0);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      lazy protocol witness table accessor for type CGSize and conformance CGSize(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Unit and conformance Duration.UnitsFormatStyle.Unit, MEMORY[0x1E696A1C0], MEMORY[0x1E696A1C8]);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<Subview.ID>, lazy protocol witness table accessor for type Subview.ID and conformance Subview.ID, &type metadata for Subview.ID, MEMORY[0x1E69E6A10]);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v35 = v2;
    v36 = (v3 + 56);
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
    v11 = v4 + 56;
    v37 = v3;
    v38 = v4;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v40 = (v9 - 1) & v9;
LABEL_15:
      v17 = *(v3 + 48) + 16 * (v14 | (v6 << 6));
      v18 = *v17;
      v19 = *(v17 + 4);
      v20 = *(v17 + 8);
      Hasher.init(_seed:)();
      v39 = v18;
      Hasher._combine(_:)(v18);
      Hasher._combine(_:)(v19);
      v41 = v20;
      v21 = *(v20 + 16);
      if (v21)
      {
        v22 = (v20 + 48);
        do
        {
          v23 = *(v22 - 2);
          v24 = *v22;
          v22 += 6;
          v25 = *(*v23 + 120);

          v25(v42);
          Hasher._combine(_:)(v24);

          --v21;
        }

        while (v21);
      }

      v26 = Hasher._finalize()();
      v5 = v38;
      v27 = -1 << *(v38 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v11 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v11 + 8 * v29);
          if (v33 != -1)
          {
            v12 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v12 = __clz(__rbit64((-1 << v28) & ~*(v11 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      v3 = v37;
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v38 + 48) + 16 * v12;
      *v13 = v39;
      *(v13 + 4) = v19;
      v9 = v40;
      *(v13 + 8) = v41;
      ++*(v38 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v6 >= v10)
      {
        break;
      }

      v16 = v36[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v40 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v34 = 1 << *(v3 + 32);
    if (v34 >= 64)
    {
      bzero(v36, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v36 = -1 << v34;
    }

    v2 = v35;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for _SetStorage<ObjectIdentifier>(0, &lazy cache variable for type metadata for _SetStorage<AnyHashable>, MEMORY[0x1E69E69B8], MEMORY[0x1E69E69C0]);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 40 * (v15 | (v6 << 6));
      v28 = *v18;
      v29 = *(v18 + 16);
      v30 = *(v18 + 32);
      v19 = AnyHashable._rawHashValue(seed:)(*(v5 + 40));
      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 40 * v13;
      *v14 = v28;
      *(v14 + 16) = v29;
      *(v14 + 32) = v30;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v27;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<GlassContainer.Entry.StableID>, lazy protocol witness table accessor for type GlassContainer.Entry.StableID and conformance GlassContainer.Entry.StableID, &type metadata for GlassContainer.Entry.StableID, MEMORY[0x1E69E6A10]);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](v17);
      v18 = Hasher._finalize()();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<GlassContainer.Item.ID>, lazy protocol witness table accessor for type GlassContainer.Item.ID and conformance GlassContainer.Item.ID, &type metadata for GlassContainer.Item.ID, MEMORY[0x1E69E6A10]);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v31 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v19);
      if (v20)
      {
        Hasher._combine(_:)(1u);
        (*(*v20 + 120))(v32);
        MEMORY[0x193AC11A0](v21);
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v22 = Hasher._finalize()();
      v23 = -1 << *(v5 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v12 + 8 * v25);
          if (v29 != -1)
          {
            v13 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      ++*(v5 + 16);
      v3 = v31;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero(v7, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v30;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<GlassContainer.Entry.ModelID>, lazy protocol witness table accessor for type GlassContainer.Entry.ModelID and conformance GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, MEMORY[0x1E69E6A10]);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v32 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (1)
    {
      if (!v10)
      {
        v16 = v6;
        while (1)
        {
          v6 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            __break(1u);
            goto LABEL_38;
          }

          if (v6 >= v11)
          {
            break;
          }

          v17 = v7[v6];
          ++v16;
          if (v17)
          {
            v15 = __clz(__rbit64(v17));
            v10 = (v17 - 1) & v17;
            goto LABEL_15;
          }
        }

        v31 = 1 << *(v3 + 32);
        if (v31 >= 64)
        {
          bzero(v7, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v7 = -1 << v31;
        }

        v2 = v1;
        *(v3 + 16) = 0;
        goto LABEL_36;
      }

      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 40 * (v15 | (v6 << 6));
      v19 = *(v18 + 8);
      v20 = *(v18 + 16);
      v33 = *(v18 + 24);
      *v34 = *v18;
      v21 = *(v18 + 32);
      Hasher.init(_seed:)();
      if (!v21)
      {
        break;
      }

      if (v21 != 1)
      {
        v22 = 0;
        goto LABEL_21;
      }

      MEMORY[0x193AC11A0](2);
      Hasher._combine(_:)(v34[0]);
      if (v19)
      {
        Hasher._combine(_:)(1u);
        (*(*v19 + 120))(v35);
        v22 = v20;
LABEL_21:
        MEMORY[0x193AC11A0](v22);
        goto LABEL_22;
      }

      Hasher._combine(_:)(0);
LABEL_22:
      v23 = Hasher._finalize()();
      v24 = -1 << *(v5 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v12 + 8 * v26);
          if (v30 != -1)
          {
            v13 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 40 * v13;
      *v14 = *v34;
      *(v14 + 8) = v19;
      *(v14 + 16) = v20;
      *(v14 + 24) = v33;
      *(v14 + 32) = v21;
      ++*(v5 + 16);
      v3 = v32;
    }

    MEMORY[0x193AC11A0](1);
    _Glass.Variant.ID.hash(into:)(v35);
    Hasher._combine(_:)(BYTE1(v19) & 1);
    (*(*v20 + 120))(v35);
    v22 = v33;
    goto LABEL_21;
  }

LABEL_36:

  *v2 = v5;
}

{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for _SetStorage<ObjectIdentifier>(0, &lazy cache variable for type metadata for _SetStorage<String>, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      v21 = Hasher._finalize()();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for _SetStorage<AttributedString.WritingDirection?>(0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      if (v17 == 2)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        AttributedString.WritingDirection.hash(into:)();
      }

      v18 = Hasher._finalize()();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for _SetStorage<ObjectIdentifier>(0, &lazy cache variable for type metadata for _SetStorage<UInt32>, MEMORY[0x1E69E7668], MEMORY[0x1E69E7678]);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v26 = v2;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 4 * (v14 | (v6 << 6)));
      v18 = MEMORY[0x193AC1150](*(v5 + 40), v17, 4);
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 4 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v26;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<Axis>, lazy protocol witness table accessor for type Axis and conformance Axis, &type metadata for Axis, MEMORY[0x1E69E6A10]);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v17);
      v18 = Hasher._finalize()();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for _SetStorage<CTFontRef>(0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      type metadata accessor for CTFontRef(0);
      lazy protocol witness table accessor for type CGSize and conformance CGSize(&lazy protocol witness table cache variable for type CTFontRef and conformance CTFontRef, type metadata accessor for CTFontRef, protocol conformance descriptor for CTFontRef);
      _CFObject.hash(into:)();
      v18 = Hasher._finalize()();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<EventID>, lazy protocol witness table accessor for type EventID and conformance EventID, &type metadata for EventID, MEMORY[0x1E69E6A10]);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](v19);
      MEMORY[0x193AC11A0](v20);
      v21 = Hasher._finalize()();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

{
  v2 = *v1;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<DefaultDescriptionAttribute>, lazy protocol witness table accessor for type DefaultDescriptionAttribute and conformance DefaultDescriptionAttribute, &type metadata for DefaultDescriptionAttribute, MEMORY[0x1E69E6A10]);
  v3 = static _SetStorage.resize(original:capacity:move:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v3 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v25 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      Hasher.init(_seed:)();
      DefaultDescriptionAttribute.rawValue.getter();
      String.hash(into:)();

      v16 = Hasher._finalize()();
      v17 = -1 << *(v4 + 32);
      v18 = v16 & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v25;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
}

{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for _SetStorage<NSAttributedStringKey>(0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v18 = Hasher._finalize()();

      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v28;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero(v7, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<AnyHashable2>, lazy protocol witness table accessor for type AnyHashable2 and conformance AnyHashable2, &type metadata for AnyHashable2, MEMORY[0x1E69E6A10]);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      (*(*v17 + 120))(v27);
      v18 = Hasher._finalize()();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for _SetStorage<AnyKeyPath>(0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      type metadata accessor for AnyKeyPath();
      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<CAHostingLayerEvent.MouseButton>, lazy protocol witness table accessor for type CAHostingLayerEvent.MouseButton and conformance CAHostingLayerEvent.MouseButton, &type metadata for CAHostingLayerEvent.MouseButton, MEMORY[0x1E69E6A10]);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](v17);
      v18 = Hasher._finalize()();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<_ProposedSize>, lazy protocol witness table accessor for type _ProposedSize and conformance _ProposedSize, &type metadata for _ProposedSize, MEMORY[0x1E69E6A10]);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v33 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (1)
    {
      if (!v10)
      {
        v16 = v6;
        while (1)
        {
          v6 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            __break(1u);
            goto LABEL_41;
          }

          if (v6 >= v11)
          {
            break;
          }

          v17 = v7[v6];
          ++v16;
          if (v17)
          {
            v15 = __clz(__rbit64(v17));
            v10 = (v17 - 1) & v17;
            goto LABEL_15;
          }
        }

        v32 = 1 << *(v3 + 32);
        if (v32 >= 64)
        {
          bzero(v7, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v7 = -1 << v32;
        }

        v2 = v1;
        *(v3 + 16) = 0;
        break;
      }

      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 32 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v34 = *(v18 + 24);
      Hasher.init(_seed:)();
      if (v20 == 1)
      {
        Hasher._combine(_:)(0);
        if (v34)
        {
          goto LABEL_25;
        }
      }

      else
      {
        Hasher._combine(_:)(1u);
        if ((v19 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v23 = v19;
        }

        else
        {
          v23 = 0;
        }

        MEMORY[0x193AC11E0](v23);
        if (v34)
        {
LABEL_25:
          Hasher._combine(_:)(0);
          goto LABEL_26;
        }
      }

      Hasher._combine(_:)(1u);
      if ((v21 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v22 = v21;
      }

      else
      {
        v22 = 0;
      }

      MEMORY[0x193AC11E0](v22);
LABEL_26:
      v24 = Hasher._finalize()();
      v25 = -1 << *(v5 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v12 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v12 + 8 * v27);
          if (v31 != -1)
          {
            v13 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_41:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v26) & ~*(v12 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 32 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      *(v14 + 24) = v34;
      ++*(v5 + 16);
      v3 = v33;
    }
  }

  *v2 = v5;
}

{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for _SetStorage<ObjectIdentifier>(0, &lazy cache variable for type metadata for _SetStorage<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v26 = v2;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      v18 = MEMORY[0x193AC1170](*(v5 + 40), v17);
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v26;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

uint64_t specialized _ArrayBuffer._consumeAndCreateNew()(unint64_t a1)
{
  if (a1 >> 62)
  {
    __CocoaSet.count.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t specialized closure #1 in GraphHost.continueTransaction<A>(_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = _threadTransactionID();
  result = a3(0, v5, a2, 1, 1);
  if (one-time initialization token for enabledCategories != -1)
  {
    v7 = result;
    swift_once();
    result = v7;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x55uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 116) == 1)
  {
    if (static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 20052;
      return AGGraphAddTraceEvent();
    }
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in GraphHost.continueTransaction<A>(_:)()
{
  return specialized closure #1 in GraphHost.continueTransaction<A>(_:)(*(v0 + 16), *(v0 + 24), specialized GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:));
}

{
  return specialized closure #1 in GraphHost.continueTransaction<A>(_:)(*(v0 + 16), *(v0 + 24), specialized GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:));
}

{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v4[0] = *(v0 + 24);
  v4[1] = v2;
  v4[2] = *(v0 + 56);
  return specialized closure #1 in GraphHost.continueTransaction<A>(_:)(v1, v4);
}

{
  return specialized closure #1 in GraphHost.continueTransaction<A>(_:)(*(v0 + 16), v0 + 24);
}

{
  return specialized closure #1 in GraphHost.continueTransaction<A>(_:)(*(v0 + 16), v0 + 24);
}

void specialized DynamicContainerInfo.eraseItem(at:)(unint64_t a1)
{
  v6 = v2[17];
  v7 = (v6 + 8 * a1);
  v8 = v6 & 0xC000000000000001;
  if ((v6 & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v3 = v7[4];

      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_25;
  }

  v3 = MEMORY[0x193AC03C0](a1, v2[17]);
LABEL_5:
  swift_beginAccess();
  v9 = v3[84];

  if (v9 > 1)
  {
    if (v9 != 2)
    {
      goto LABEL_28;
    }

    --v2[20];
    v4 = v2[21];
    if (v8)
    {
LABEL_8:
      v3 = *(MEMORY[0x193AC03C0](a1, v6) + 16);
      swift_unknownObjectRelease();
      v10 = MEMORY[0x193AC03C0](a1, v6);
      v12 = v10;
      if ((v4 & 0x8000000000000000) == 0)
      {
LABEL_9:
        v13 = MEMORY[0x1EEE9AC00](v10);
        v14(partial apply for closure #1 in DynamicLayoutViewAdaptor.removeItemLayout(uniqueId:itemLayout:), v13);
        if (*(v12 + 56))
        {
          swift_weakAssign();
        }

        specialized Array.remove(at:)(a1, v15);

        AGSubgraphRef.willInvalidate(isInserted:)(1);
        AGSubgraphInvalidate();
        goto LABEL_21;
      }

LABEL_17:
      v7 = v2;
      specialized Array.remove(at:)(a1, v11);

      *(v12 + 72) = 0;
      ++*(v12 + 80);
      swift_beginAccess();
      *(v12 + 84) = 3;
      if (*(v12 + 56))
      {
        swift_weakAssign();
      }

      *(v12 + 56) = 0;

      MEMORY[0x193ABF170](v16);
      if (*((v2[17] & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v2[17] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_20;
      }

      goto LABEL_26;
    }
  }

  else
  {
    if (v9 != 1)
    {
      goto LABEL_28;
    }

    v4 = v2[21];
    if (v8)
    {
      goto LABEL_8;
    }
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_20:
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v7[21] = v4 + 1;
    AGSubgraphApply();
    AGSubgraphRemoveChild();
LABEL_21:

    return;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    v12 = v7[4];
    v3 = *(v12 + 16);

    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

  __break(1u);
LABEL_28:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall DynamicLayoutMap.remove(uniqueId:)(Swift::UInt32 uniqueId)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (!v3)
  {
    return;
  }

  v5 = 0;
  v6 = *(*v1 + 16);
  do
  {
    v7 = v6 >> 1;
    v8 = v5 + (v6 >> 1);
    if (__OFADD__(v5, v6 >> 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (v8 >= v3)
    {
      goto LABEL_22;
    }

    v9 = (v2 + 32 + 16 * v8);
    if (*v9 < uniqueId || *v9 == uniqueId && (v9[1] & 0x80000000) != 0)
    {
      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_23;
      }

      v7 = v6 + ~v7;
    }

    v6 = v7;
  }

  while (v7 > 0);
  if (v5 == v3)
  {
    return;
  }

  if (v3 < v5)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v5 < 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v10 = (v2 + 16 * v5 + 32);
  v11 = v5;
  while (1)
  {
    v12 = *v10;
    v10 += 4;
    if (v12 != uniqueId)
    {
      break;
    }

    if (v3 == ++v11)
    {
      v11 = *(*v1 + 16);
      break;
    }
  }

  if (v11 >= v5)
  {
    specialized Array.replaceSubrange<A>(_:with:)(v5, v11);
    v1[4] = 0;
    return;
  }

LABEL_26:
  __break(1u);
}

uint64_t specialized Array.remove(at:)(unint64_t a1, __n128 a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
    v4 = result;
  }

  v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6 <= a1)
  {
    __break(1u);
  }

  else
  {
    v7 = v6 - 1;
    v8 = *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v4 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v4 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v6 - 1 - a1));
    *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
    *v2 = v4;
    return v8;
  }

  return result;
}

void closure #1 in AGSubgraphRef.willInvalidate(isInserted:)(uint64_t a1, char a2)
{
  v4 = *AGGraphGetAttributeInfo();
  static InvalidatableAttributeDescriptor.cachedConformance(of:)(v4, v5);
  if (v5[0] || (a2 & 1) != 0 && (static RemovableAttributeDescriptor.cachedConformance(of:)(v4, v5), v5[0]))
  {
    (*(v5[1] + 16))(a1);
  }
}

void static InvalidatableAttributeDescriptor.cachedConformance(of:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (one-time initialization token for lockAssertionsAreEnabled != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_7;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (!_MovableLockIsOwner(static Update._lock))
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_7:
    if (one-time initialization token for typeCache != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v4 = static InvalidatableAttributeDescriptor.typeCache;
    if (*(static InvalidatableAttributeDescriptor.typeCache + 2) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
    {
      v10 = *(v4[7] + 16 * v5);
      swift_endAccess();
      *a2 = v10;
    }

    else
    {
      swift_endAccess();
      _invalidatableAttributeProtocolDescriptor();
      v7 = swift_conformsToProtocol();
      if (v7)
      {
        v8 = v7;
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v11 = static InvalidatableAttributeDescriptor.typeCache;
        static InvalidatableAttributeDescriptor.typeCache = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, v8, a1, isUniquelyReferenced_nonNull_native);
        static InvalidatableAttributeDescriptor.typeCache = v11;
        swift_endAccess();
        *a2 = a1;
        *(a2 + 8) = v8;
      }

      else
      {
        *a2 = 0;
        *(a2 + 8) = 0;
      }
    }
  }
}

uint64_t DynamicAnimationListener.__deallocating_deinit()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

Class once_init()
{
  result = NSClassFromString(&cfstr_Uiview.isa);
  _uiViewClass = result;
  return result;
}

void *CoreViewSubviewAtIndex(void *result, void *a2, uint64_t a3, char *a4)
{
  if (result == 1)
  {
    v7 = [objc_msgSend(objc_msgSend(a2 "layer")];

    return CoreViewLayerView(1, v7, a4);
  }

  else if (!result)
  {
    *a4 = 0;
    v6 = [a2 sublayers];

    return [v6 objectAtIndexedSubscript:a3];
  }

  return result;
}

uint64_t CoreViewLayerView(int a1, uint64_t a2, char *a3)
{
  if (!a1)
  {
    goto LABEL_7;
  }

  Delegate = CALayerGetDelegate();
  if (a1 != 1)
  {
    goto LABEL_7;
  }

  v7 = Delegate;
  if (_once != -1)
  {
    CoreViewLayerView_cold_1();
  }

  if (objc_opt_isKindOfClass())
  {
    v8 = 1;
    a2 = v7;
  }

  else
  {
LABEL_7:
    v8 = 0;
  }

  *a3 = v8;
  return a2;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, unint64_t a2, unint64_t a3, __int16 a4)
{
  v9 = HIDWORD(a2);
  v10 = HIDWORD(a3);
  v11 = a4 & 0x100;
  v12 = *v4;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(a3);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(a4);
  Hasher._combine(_:)(HIBYTE(a4) & 1);
  v13 = Hasher._finalize()();
  v14 = -1 << *(v12 + 32);
  v15 = v13 & ~v14;
  if ((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    while (1)
    {
      v17 = *(v12 + 48) + 20 * v15;
      v18 = *v17 == a2 && *(v17 + 4) == v9;
      v19 = v18 && *(v17 + 8) == a3;
      if (v19 && *(v17 + 12) == v10 && *(v17 + 16) == a4)
      {
        v21 = *(v17 + 17);
        if ((((v11 != 0) ^ v21) & 1) == 0)
        {
          break;
        }
      }

      v15 = (v15 + 1) & v16;
      if (((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    result = 0;
    *a1 = a2;
    *(a1 + 4) = v9;
    *(a1 + 8) = a3;
    *(a1 + 12) = v10;
    *(a1 + 16) = a4;
    *(a1 + 17) = v21;
  }

  else
  {
LABEL_18:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v24;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, a4 & 0x1FF, v15, isUniquelyReferenced_nonNull_native);
    *v24 = v25;
    *a1 = a2;
    *(a1 + 4) = v9;
    *(a1 + 8) = a3;
    *(a1 + 12) = v10;
    *(a1 + 16) = a4;
    *(a1 + 17) = BYTE1(v11);
    return 1;
  }

  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(unint64_t result, unint64_t a2, __int16 a3, unint64_t a4, char a5)
{
  v6 = a3;
  v7 = a2;
  v8 = result;
  v9 = HIDWORD(result);
  v10 = HIDWORD(a2);
  v11 = a3 & 0x100;
  v12 = *(*v5 + 16);
  v13 = *(*v5 + 24);
  v14 = v11 >> 8;
  if (v13 > v12 && (a5 & 1) != 0)
  {
    goto LABEL_25;
  }

  if (a5)
  {
    specialized _NativeSet.resize(capacity:)(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      v15 = a4;
      specialized _NativeSet.copy()();
      a4 = v15;
      goto LABEL_25;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v12 + 1);
  }

  v16 = *v5;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(BYTE1(v11));
  v17 = Hasher._finalize()();
  v18 = -1 << *(v16 + 32);
  a4 = v17 & ~v18;
  if ((*(v16 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v19 = ~v18;
    while (1)
    {
      v20 = *(v16 + 48) + 20 * a4;
      v21 = *v20 == v8 && *(v20 + 4) == v9;
      v22 = v21 && *(v20 + 8) == v7;
      v23 = v22 && *(v20 + 12) == v10;
      if (v23 && *(v20 + 16) == v6 && (((v11 != 0) ^ *(v20 + 17)) & 1) == 0)
      {
        break;
      }

      a4 = (a4 + 1) & v19;
      if (((*(v16 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

LABEL_25:
  v24 = *v5;
  *(*v5 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v25 = *(v24 + 48) + 20 * a4;
  *v25 = v8;
  *(v25 + 4) = v9;
  *(v25 + 8) = v7;
  *(v25 + 12) = v10;
  *(v25 + 16) = v6;
  *(v25 + 17) = v14;
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v24 + 16) = v28;
  }
}

void specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<DisplayList.ViewUpdater.ViewCache.Key>, lazy protocol witness table accessor for type DisplayList.ViewUpdater.ViewCache.Key and conformance DisplayList.ViewUpdater.ViewCache.Key, &type metadata for DisplayList.ViewUpdater.ViewCache.Key, MEMORY[0x1E69E6A10]);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v32 = v2;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v33 = (v8 + 63) >> 6;
    v34 = v3;
    v11 = v4 + 56;
    v35 = v4;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v36 = (v10 - 1) & v10;
LABEL_15:
      v17 = *(v3 + 48) + 20 * (v14 | (v6 << 6));
      v19 = *v17;
      v18 = *(v17 + 4);
      v20 = *(v17 + 8);
      v21 = *(v17 + 12);
      v22 = *(v17 + 16);
      v23 = *(v17 + 17);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v19);
      Hasher._combine(_:)(v18);
      Hasher._combine(_:)(v20);
      Hasher._combine(_:)(v21);
      Hasher._combine(_:)(v22);
      Hasher._combine(_:)(v23);
      v24 = Hasher._finalize()();
      v5 = v35;
      v25 = -1 << *(v35 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v11 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v11 + 8 * v27);
          if (v31 != -1)
          {
            v12 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v26) & ~*(v11 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v35 + 48) + 20 * v12;
      *v13 = v19;
      *(v13 + 4) = v18;
      *(v13 + 8) = v20;
      *(v13 + 12) = v21;
      *(v13 + 16) = v22;
      *(v13 + 17) = v23;
      ++*(v35 + 16);
      v3 = v34;
      v10 = v36;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v33)
      {

        v2 = v32;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v36 = (v16 - 1) & v16;
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
}

{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for _SetStorage<ObjectIdentifier>(0, &lazy cache variable for type metadata for _SetStorage<UInt32>, MEMORY[0x1E69E7668], MEMORY[0x1E69E7678]);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 4 * (v13 | (v6 << 6)));
      v17 = MEMORY[0x193AC1150](*(v5 + 40), v16, 4);
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 4 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }
}

{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<AttributedString.AnyAttribute>, lazy protocol witness table accessor for type AttributedString.AnyAttribute and conformance AttributedString.AnyAttribute, &type metadata for AttributedString.AnyAttribute, MEMORY[0x1E69E6A10]);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v30 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 16 * (v15 | (v6 << 6));
      v20 = *v18;
      v19 = *(v18 + 8);
      Hasher.init(_seed:)();
      if (v19 < 0)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;
      }

      else
      {
        dispatch thunk of static AttributedStringKey.name.getter();
      }

      String.hash(into:)();

      v22 = Hasher._finalize()();
      v23 = -1 << *(v5 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v12 + 8 * v25);
          if (v29 != -1)
          {
            v13 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v20;
      v14[1] = v19;
      ++*(v5 + 16);
      v3 = v30;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_29;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v5;
  }
}

{
  v2 = v1;
  v34 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  type metadata accessor for _SetStorage<Date.ComponentsFormatStyle.Field>(0);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      lazy protocol witness table accessor for type CGSize and conformance CGSize(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field, MEMORY[0x1E6969498], MEMORY[0x1E69694A8]);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }
}

{
  v2 = v1;
  v34 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  type metadata accessor for _SetStorage<Duration.UnitsFormatStyle.Unit>(0);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      lazy protocol witness table accessor for type CGSize and conformance CGSize(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Unit and conformance Duration.UnitsFormatStyle.Unit, MEMORY[0x1E696A1C0], MEMORY[0x1E696A1C8]);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }
}

{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<Subview.ID>, lazy protocol witness table accessor for type Subview.ID and conformance Subview.ID, &type metadata for Subview.ID, MEMORY[0x1E69E6A10]);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v36 = v2;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    v37 = v11;
    v38 = v4;
    v39 = v3;
    while (v10)
    {
      v16 = __clz(__rbit64(v10));
      v42 = (v10 - 1) & v10;
LABEL_15:
      v19 = *(v3 + 48) + 16 * (v16 | (v6 << 6));
      v20 = *v19;
      v21 = *(v19 + 4);
      v22 = *(v19 + 8);
      Hasher.init(_seed:)();
      v41 = v20;
      Hasher._combine(_:)(v20);
      v40 = v21;
      Hasher._combine(_:)(v21);
      v23 = *(v22 + 16);
      v43 = v22;
      if (v23)
      {

        v24 = (v22 + 48);
        do
        {
          v25 = *(v24 - 2);
          v26 = *v24;
          v24 += 6;
          v27 = *(*v25 + 120);

          v27(v44);
          Hasher._combine(_:)(v26);

          --v23;
        }

        while (v23);
      }

      else
      {
      }

      v28 = Hasher._finalize()();
      v5 = v38;
      v29 = -1 << *(v38 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v12 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        v3 = v39;
        v14 = v43;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v12 + 8 * v31);
          if (v35 != -1)
          {
            v13 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_33;
      }

      v13 = __clz(__rbit64((-1 << v30) & ~*(v12 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
      v3 = v39;
      v14 = v43;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v15 = *(v38 + 48) + 16 * v13;
      *v15 = v41;
      *(v15 + 4) = v40;
      *(v15 + 8) = v14;
      ++*(v38 + 16);
      v11 = v37;
      v10 = v42;
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v36;
        goto LABEL_31;
      }

      v18 = *(v7 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v42 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

LABEL_31:
    *v2 = v5;
  }
}

{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for _SetStorage<ObjectIdentifier>(0, &lazy cache variable for type metadata for _SetStorage<AnyHashable>, MEMORY[0x1E69E69B8], MEMORY[0x1E69E69C0]);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      outlined init with copy of AnyHashable(*(v3 + 48) + 40 * (v16 | (v6 << 6)), v27);
      v19 = AnyHashable._rawHashValue(seed:)(*(v5 + 40));
      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
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
}

{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<GlassContainer.Entry.StableID>, lazy protocol witness table accessor for type GlassContainer.Entry.StableID and conformance GlassContainer.Entry.StableID, &type metadata for GlassContainer.Entry.StableID, MEMORY[0x1E69E6A10]);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](v16);
      v17 = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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
}

{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<GlassContainer.Item.ID>, lazy protocol witness table accessor for type GlassContainer.Item.ID and conformance GlassContainer.Item.ID, &type metadata for GlassContainer.Item.ID, MEMORY[0x1E69E6A10]);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v31 = (v7 + 63) >> 6;
    v10 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(v3 + 48) + 24 * (v13 | (v6 << 6));
      v17 = *v16;
      v18 = *(v16 + 8);
      v19 = *(v16 + 16);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v17);
      if (v18)
      {
        Hasher._combine(_:)(1u);
        v32 = v19;
        v20 = v17;
        v21 = v9;
        v22 = *(*v18 + 120);

        v22(v33);
        v9 = v21;
        v17 = v20;
        v19 = v32;
        MEMORY[0x193AC11A0](v32);
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v23 = Hasher._finalize()();
      v24 = -1 << *(v5 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v10 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v10 + 8 * v26);
          if (v30 != -1)
          {
            v11 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v11 = __clz(__rbit64((-1 << v25) & ~*(v10 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = *(v5 + 48) + 24 * v11;
      *v12 = v17;
      *(v12 + 8) = v18;
      *(v12 + 16) = v19;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v31)
      {

        v2 = v1;
        goto LABEL_29;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v5;
  }
}

{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<GlassContainer.Entry.ModelID>, lazy protocol witness table accessor for type GlassContainer.Entry.ModelID and conformance GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, MEMORY[0x1E69E6A10]);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (!*(v3 + 16))
  {

LABEL_34:
    *v2 = v5;
    return;
  }

  v32 = v3;
  v6 = 0;
  v7 = v3 + 56;
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = v4 + 56;
  while (v10)
  {
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_15:
    v18 = *(v3 + 48) + 40 * (v15 | (v6 << 6));
    v19 = *(v18 + 8);
    v20 = *(v18 + 16);
    v33 = *(v18 + 24);
    v34 = *v18;
    v21 = *(v18 + 32);
    Hasher.init(_seed:)();
    if (!v21)
    {
      MEMORY[0x193AC11A0](1);
      outlined copy of _Glass.Variant.ID(v34, v19);

      _Glass.Variant.ID.hash(into:)(v35);
      Hasher._combine(_:)(BYTE1(v19) & 1);
      (*(*v20 + 120))(v35);
      v22 = v33;
      goto LABEL_21;
    }

    if (v21 != 1)
    {
      v22 = 0;
      goto LABEL_21;
    }

    MEMORY[0x193AC11A0](2);
    Hasher._combine(_:)(v34);
    if (v19)
    {
      Hasher._combine(_:)(1u);
      v31 = *(*v19 + 120);

      v31(v35);
      v22 = v20;
LABEL_21:
      MEMORY[0x193AC11A0](v22);
      goto LABEL_22;
    }

    Hasher._combine(_:)(0);
LABEL_22:
    v23 = Hasher._finalize()();
    v24 = -1 << *(v5 + 32);
    v25 = v23 & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v24) >> 6;
      while (++v26 != v28 || (v27 & 1) == 0)
      {
        v29 = v26 == v28;
        if (v26 == v28)
        {
          v26 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v26);
        if (v30 != -1)
        {
          v13 = __clz(__rbit64(~v30)) + (v26 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_36;
    }

    v13 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    v14 = *(v5 + 48) + 40 * v13;
    *v14 = v34;
    *(v14 + 8) = v19;
    *(v14 + 16) = v20;
    *(v14 + 24) = v33;
    *(v14 + 32) = v21;
    ++*(v5 + 16);
    v3 = v32;
  }

  v16 = v6;
  while (1)
  {
    v6 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v6 >= v11)
    {

      v2 = v1;
      goto LABEL_34;
    }

    v17 = *(v7 + 8 * v6);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v10 = (v17 - 1) & v17;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
}

{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for _SetStorage<ObjectIdentifier>(0, &lazy cache variable for type metadata for _SetStorage<String>, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v20 = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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
}

{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for _SetStorage<AttributedString.WritingDirection?>(0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      if (v16 == 2)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        AttributedString.WritingDirection.hash(into:)();
      }

      v17 = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_29;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v5;
  }
}

{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<Axis>, lazy protocol witness table accessor for type Axis and conformance Axis, &type metadata for Axis, MEMORY[0x1E69E6A10]);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v16);
      v17 = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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
}

{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for _SetStorage<CTFontRef>(0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      type metadata accessor for CTFontRef(0);
      lazy protocol witness table accessor for type CGSize and conformance CGSize(&lazy protocol witness table cache variable for type CTFontRef and conformance CTFontRef, type metadata accessor for CTFontRef, protocol conformance descriptor for CTFontRef);
      v17 = v16;
      _CFObject.hash(into:)();
      v18 = Hasher._finalize()();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
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
      *(*(v5 + 48) + 8 * v12) = v17;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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
}

{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<EventID>, lazy protocol witness table accessor for type EventID and conformance EventID, &type metadata for EventID, MEMORY[0x1E69E6A10]);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](v18);
      MEMORY[0x193AC11A0](v19);
      v20 = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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
}

{
  v2 = *v1;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<DefaultDescriptionAttribute>, lazy protocol witness table accessor for type DefaultDescriptionAttribute and conformance DefaultDescriptionAttribute, &type metadata for DefaultDescriptionAttribute, MEMORY[0x1E69E6A10]);
  v3 = static _SetStorage.resize(original:capacity:move:)();
  v4 = v3;
  if (*(v2 + 16))
  {
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
    v10 = v3 + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v23 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      Hasher.init(_seed:)();
      DefaultDescriptionAttribute.rawValue.getter();
      String.hash(into:)();

      v15 = Hasher._finalize()();
      v16 = -1 << *(v4 + 32);
      v17 = v15 & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v23;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_24;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }
}

{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for _SetStorage<NSAttributedStringKey>(0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v18 = v17;
      String.hash(into:)();
      v19 = Hasher._finalize()();

      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v18;
      ++*(v5 + 16);
      v3 = v28;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v27;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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
}

{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<AnyHashable2>, lazy protocol witness table accessor for type AnyHashable2 and conformance AnyHashable2, &type metadata for AnyHashable2, MEMORY[0x1E69E6A10]);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v27 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      v18 = *(*v17 + 120);

      v18(v28);
      v19 = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v27;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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
}

{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for _SetStorage<AnyKeyPath>(0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v26 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      type metadata accessor for AnyKeyPath();

      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v26;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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
}

{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<CAHostingLayerEvent.MouseButton>, lazy protocol witness table accessor for type CAHostingLayerEvent.MouseButton and conformance CAHostingLayerEvent.MouseButton, &type metadata for CAHostingLayerEvent.MouseButton, MEMORY[0x1E69E6A10]);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](v16);
      v17 = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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
}

{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<_ProposedSize>, lazy protocol witness table accessor for type _ProposedSize and conformance _ProposedSize, &type metadata for _ProposedSize, MEMORY[0x1E69E6A10]);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (!*(v3 + 16))
  {

LABEL_37:
    *v2 = v5;
    return;
  }

  v32 = v3;
  v6 = 0;
  v7 = v3 + 56;
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = v4 + 56;
  while (v10)
  {
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_15:
    v18 = *(v3 + 48) + 32 * (v15 | (v6 << 6));
    v19 = *v18;
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
    v33 = *(v18 + 24);
    Hasher.init(_seed:)();
    if (v20 == 1)
    {
      Hasher._combine(_:)(0);
      if (v33)
      {
        goto LABEL_25;
      }
    }

    else
    {
      Hasher._combine(_:)(1u);
      if ((v19 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v23 = v19;
      }

      else
      {
        v23 = 0;
      }

      MEMORY[0x193AC11E0](v23);
      if (v33)
      {
LABEL_25:
        Hasher._combine(_:)(0);
        goto LABEL_26;
      }
    }

    Hasher._combine(_:)(1u);
    if ((v21 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    MEMORY[0x193AC11E0](v22);
LABEL_26:
    v24 = Hasher._finalize()();
    v25 = -1 << *(v5 + 32);
    v26 = v24 & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v12 + 8 * (v26 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v25) >> 6;
      while (++v27 != v29 || (v28 & 1) == 0)
      {
        v30 = v27 == v29;
        if (v27 == v29)
        {
          v27 = 0;
        }

        v28 |= v30;
        v31 = *(v12 + 8 * v27);
        if (v31 != -1)
        {
          v13 = __clz(__rbit64(~v31)) + (v27 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_39;
    }

    v13 = __clz(__rbit64((-1 << v26) & ~*(v12 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    v14 = *(v5 + 48) + 32 * v13;
    *v14 = v19;
    *(v14 + 8) = v20;
    *(v14 + 16) = v21;
    *(v14 + 24) = v33;
    ++*(v5 + 16);
    v3 = v32;
  }

  v16 = v6;
  while (1)
  {
    v6 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v6 >= v11)
    {

      v2 = v1;
      goto LABEL_37;
    }

    v17 = *(v7 + 8 * v6);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v10 = (v17 - 1) & v17;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
}

{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for _SetStorage<ObjectIdentifier>(0, &lazy cache variable for type metadata for _SetStorage<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      v17 = MEMORY[0x193AC1170](*(v5 + 40), v16);
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }
}