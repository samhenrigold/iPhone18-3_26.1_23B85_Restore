void CanvasFormattingProxy.strokeWidth.getter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit12LoupeElementVGSgMd, &_s9Coherence7WeakRefVy8PaperKit12LoupeElementVGSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v82 = &v72 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit12LoupeElementVSgMd, &_s8PaperKit12LoupeElementVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v72 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit9SignatureVGSgMd, &_s9Coherence7WeakRefVy8PaperKit9SignatureVGSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v84 = &v72 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9SignatureVSgMd, &_s8PaperKit9SignatureVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v77 = &v72 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v72 = &v72 - v13;
  v14 = *(a1 + 16);
  v95 = *(a1 + 24);
  v96 = v14;
  v94 = type metadata accessor for Capsule();
  v15 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v74 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v76 = &v72 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v80 = &v72 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v72 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v72 - v25;
  v89 = type metadata accessor for Shape(0);
  v27 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v73 = &v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v72 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v87 = &v72 - v34;
  v97 = v1;
  v35 = *(v1 + 8);
  v36 = v35 + 56;
  v37 = 1 << *(v35 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & *(v35 + 56);
  v90 = (v37 + 63) >> 6;
  v85 = v33 + 32;
  v86 = v33 + 16;
  v93 = (v15 + 8);
  v79 = (v27 + 48);
  v78 = (v27 + 56);
  v88 = v33;
  v83 = (v33 + 8);
  v91 = v35;

  v40 = 0;
  v98 = v31;
  v92 = v23;
  v81 = v36;
  v75 = v7;
  v41 = v90;
  if (v39)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v42 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      __break(1u);
      return;
    }

    if (v42 >= v41)
    {

      return;
    }

    v39 = *(v36 + 8 * v42);
    ++v40;
  }

  while (!v39);
  while (1)
  {
    v44 = v87;
    v43 = v88;
    (*(v88 + 16))(v87, *(v91 + 48) + *(v88 + 72) * (__clz(__rbit64(v39)) | (v42 << 6)), v29);
    (*(v43 + 32))(v31, v44, v29);
    WeakTagged_10.tagged6.getter();
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGMR);
    v46 = *(v45 - 8);
    if ((*(v46 + 48))(v23, 1, v45) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v23, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
      (*v78)(v26, 1, 1, v89);
LABEL_13:
      outlined destroy of StocksKitCurrencyCache.Provider?(v26, &_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
      v51 = v84;
      goto LABEL_16;
    }

    v47 = v29;
    v48 = v23;
    v49 = v80;
    Canvas.updatablePaper2.getter(v80);
    WeakRef.subscript.getter();
    (*v93)(v49, v94);
    v50 = v48;
    v29 = v47;
    (*(v46 + 8))(v50, v45);
    if ((*v79)(v26, 1, v89) == 1)
    {
      goto LABEL_13;
    }

    v52 = v73;
    _s8PaperKit5ShapeVWObTm_3(v26, v73, type metadata accessor for Shape);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd, &_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMR);
    CRRegister.wrappedValue.getter();
    v51 = v84;
    if (!v99)
    {
      break;
    }

    outlined destroy of Shape(v52, type metadata accessor for Shape);
LABEL_16:
    WeakTagged_10.tagged7.getter();
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit9SignatureVGMd, &_s9Coherence7WeakRefVy8PaperKit9SignatureVGMR);
    v54 = *(v53 - 8);
    if ((*(v54 + 48))(v51, 1, v53) == 1)
    {
      v55 = v51;
      v56 = &_s9Coherence7WeakRefVy8PaperKit9SignatureVGSgMd;
      v57 = &_s9Coherence7WeakRefVy8PaperKit9SignatureVGSgMR;
LABEL_20:
      outlined destroy of StocksKitCurrencyCache.Provider?(v55, v56, v57);
      v61 = v82;
      v23 = v92;
      goto LABEL_22;
    }

    v58 = v76;
    Canvas.updatablePaper2.getter(v76);
    v59 = v77;
    WeakRef.subscript.getter();
    (*v93)(v58, v94);
    (*(v54 + 8))(v51, v53);
    v60 = type metadata accessor for Signature(0);
    if ((*(*(v60 - 8) + 48))(v59, 1, v60) == 1)
    {
      v55 = v59;
      v56 = &_s8PaperKit9SignatureVSgMd;
      v57 = &_s8PaperKit9SignatureVSgMR;
      goto LABEL_20;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiSgGMd, &_s9Coherence10CRRegisterVySiSgGMR);
    CRRegister.wrappedValue.getter();
    v62 = v100;
    outlined destroy of Shape(v59, type metadata accessor for Signature);
    v61 = v82;
    v23 = v92;
    if ((v62 & 1) == 0)
    {
      (*v83)(v98, v29);

      return;
    }

LABEL_22:
    v39 &= v39 - 1;
    v63 = v98;
    WeakTagged_10.tagged10.getter();
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit12LoupeElementVGMd, &_s9Coherence7WeakRefVy8PaperKit12LoupeElementVGMR);
    v65 = *(v64 - 8);
    if ((*(v65 + 48))(v61, 1, v64) == 1)
    {
      (*v83)(v63, v29);
      outlined destroy of StocksKitCurrencyCache.Provider?(v61, &_s9Coherence7WeakRefVy8PaperKit12LoupeElementVGSgMd, &_s9Coherence7WeakRefVy8PaperKit12LoupeElementVGSgMR);
      v40 = v42;
      v31 = v63;
      v36 = v81;
      v41 = v90;
      if (!v39)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v66 = v29;
      v67 = v74;
      Canvas.updatablePaper2.getter(v74);
      v68 = v75;
      WeakRef.subscript.getter();
      (*v93)(v67, v94);
      (*(v65 + 8))(v61, v64);
      v69 = type metadata accessor for LoupeElement(0);
      if ((*(*(v69 - 8) + 48))(v68, 1, v69) != 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
        CRRegister.wrappedValue.getter();

        (*v83)(v98, v66);
        outlined destroy of Shape(v68, type metadata accessor for LoupeElement);
        return;
      }

      v31 = v98;
      v29 = v66;
      (*v83)(v98, v66);
      outlined destroy of StocksKitCurrencyCache.Provider?(v68, &_s8PaperKit12LoupeElementVSgMd, &_s8PaperKit12LoupeElementVSgMR);
      v40 = v42;
      v23 = v92;
      v36 = v81;
      v41 = v90;
      if (!v39)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    v42 = v40;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v70 = v72;
  CRRegister.wrappedValue.getter();
  v71 = type metadata accessor for Color(0);
  if ((*(*(v71 - 8) + 48))(v70, 1, v71) == 1)
  {

    outlined destroy of Shape(v52, type metadata accessor for Shape);
    (*v83)(v98, v29);
    outlined destroy of StocksKitCurrencyCache.Provider?(v70, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  }

  else
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v70, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
    CRRegister.wrappedValue.getter();

    outlined destroy of Shape(v52, type metadata accessor for Shape);
    (*v83)(v98, v29);
  }
}

void closure #1 in CanvasFormattingProxy.strokeWidth.setter(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = specialized Canvas.paperView.getter();
  swift_beginAccess();
  type metadata accessor for Capsule();
  v7 = v6;
  Capsule.callAsFunction<A>(_:)();
  swift_endAccess();
}

void closure #1 in closure #1 in CanvasFormattingProxy.strokeWidth.setter(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v91 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit12LoupeElementVGSgMd, &_s9Coherence7WeakRefVy8PaperKit12LoupeElementVGSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v73 = &v63 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit12LoupeElementVGMd, &_s9Coherence7WeakRefVy8PaperKit12LoupeElementVGMR);
  v90 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v72 = &v63 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit9SignatureVGSgMd, &_s9Coherence7WeakRefVy8PaperKit9SignatureVGSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v94 = &v63 - v12;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit9SignatureVGMd, &_s9Coherence7WeakRefVy8PaperKit9SignatureVGMR);
  v13 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92 - 8);
  v78 = &v63 - v14;
  v77 = type metadata accessor for Shape(0);
  v86 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v66 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v87 = &v63 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v95 = &v63 - v19;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGMR);
  v20 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v88 = &v63 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  MEMORY[0x1EEE9AC00](v22);
  v96 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v85 = &v63 - v26;
  v27 = *(a2 + 8);
  v28 = v27 + 56;
  v29 = 1 << *(v27 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & *(v27 + 56);
  v32 = (v29 + 63) >> 6;
  v83 = v25 + 32;
  v84 = v25 + 16;
  v82 = (v20 + 48);
  v74 = (v20 + 32);
  v76 = (v86 + 48);
  v75 = (v20 + 8);
  if (a4)
  {
    v33 = 0.0;
  }

  else
  {
    v33 = *&a3;
  }

  v86 = v25;
  v80 = (v25 + 8);
  v79 = (v13 + 48);
  v71 = (v13 + 32);
  v65 = a4 | ((a3 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000);
  v64 = v33;
  v69 = (v13 + 8);
  v70 = (v90 + 48);
  v68 = (v90 + 32);
  v67 = (v90 + 8);
  v90 = v27;

  v34 = 0;
  v89 = v9;
  v81 = v32;
  while (v31)
  {
    v35 = v94;
LABEL_14:
    v37 = __clz(__rbit64(v31));
    v31 &= v31 - 1;
    v38 = v85;
    v39 = v86;
    (*(v86 + 16))(v85, *(v90 + 48) + *(v86 + 72) * (v37 | (v34 << 6)), v22);
    (*(v39 + 32))(v96, v38, v22);
    v40 = v22;
    WeakTagged_10.tagged6.getter();
    v41 = v95;
    v42 = v93;
    if ((*v82)(v95, 1, v93) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v41, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
      v22 = v40;
      v43 = v89;
      goto LABEL_20;
    }

    (*v74)(v88, v41, v42);
    v44 = v87;
    WeakRef.subscript.getter();
    v45 = *v76;
    if ((*v76)(v44, 1, v77))
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v87, &_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
LABEL_19:
      (*v75)(v88, v93);
      v43 = v89;
      v35 = v94;
      v22 = v40;
LABEL_20:
      v49 = v96;
      WeakTagged_10.tagged7.getter();
      v50 = v92;
      if ((*v79)(v35, 1, v92) != 1)
      {
        (*v71)(v78, v35, v50);
        v52 = WeakRef.subscript.modify();
        v54 = v53;
        v55 = type metadata accessor for Signature(0);
        if (!(*(*(v55 - 8) + 48))(v54, 1, v55))
        {
          if ((v65 & 1) == 0)
          {
            goto LABEL_39;
          }

          if (v33 <= -9.22337204e18)
          {
            goto LABEL_40;
          }

          if (v33 >= 9.22337204e18)
          {
            goto LABEL_41;
          }

          v97 = *&v64;
          v98 = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiSgGMd, &_s9Coherence10CRRegisterVySiSgGMR);
          CRRegister.wrappedValue.setter();
        }

        v52(&v99, 0);
        (*v69)(v78, v92);
        goto LABEL_29;
      }

      outlined destroy of StocksKitCurrencyCache.Provider?(v35, &_s9Coherence7WeakRefVy8PaperKit9SignatureVGSgMd, &_s9Coherence7WeakRefVy8PaperKit9SignatureVGSgMR);
      v51 = v73;
      WeakTagged_10.tagged10.getter();
      if ((*v70)(v51, 1, v43) == 1)
      {
        (*v80)(v49, v22);
        outlined destroy of StocksKitCurrencyCache.Provider?(v51, &_s9Coherence7WeakRefVy8PaperKit12LoupeElementVGSgMd, &_s9Coherence7WeakRefVy8PaperKit12LoupeElementVGSgMR);
        goto LABEL_30;
      }

      (*v68)(v72, v51, v43);
      v56 = WeakRef.subscript.modify();
      v58 = v57;
      v59 = type metadata accessor for LoupeElement(0);
      if (!(*(*(v59 - 8) + 48))(v58, 1, v59))
      {
        v97 = v33;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
        CRRegister.wrappedValue.setter();
      }

      v56(&v99, 0);
      v32 = v81;
      (*v67)(v72, v89);
      (*v80)(v96, v22);
    }

    else
    {
      v46 = v87;
      v47 = v66;
      _s8PaperKit5ColorVWOcTm_0(v87, v66, type metadata accessor for Shape);
      outlined destroy of StocksKitCurrencyCache.Provider?(v46, &_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd, &_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMR);
      CRRegister.wrappedValue.getter();
      v48 = v99;
      outlined destroy of Shape(v47, type metadata accessor for Shape);
      if (v48)
      {
        goto LABEL_19;
      }

      v60 = WeakRef.subscript.modify();
      v62 = v45(v61, 1, v77);
      v22 = v40;
      if (!v62)
      {
        v97 = v33;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
        CRRegister.wrappedValue.setter();
      }

      v60(&v99, 0);
      (*v75)(v88, v93);
LABEL_29:
      (*v80)(v96, v22);
LABEL_30:
      v32 = v81;
    }
  }

  v35 = v94;
  while (1)
  {
    v36 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v36 >= v32)
    {

      return;
    }

    v31 = *(v28 + 8 * v36);
    ++v34;
    if (v31)
    {
      v34 = v36;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
}

BOOL closure #1 in CanvasFormattingProxy.strokeIsRequired.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a2;
  v37 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v37);
  v38 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v36 = &v35 - v8;
  v42 = a3;
  v43 = a4;
  v9 = type metadata accessor for Capsule();
  v39 = *(v9 - 8);
  v40 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v35 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v44 = &v35 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit9SignatureVGSgMd, &_s9Coherence7WeakRefVy8PaperKit9SignatureVGSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v35 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  WeakTagged_10.tagged7.getter();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit9SignatureVGMd, &_s9Coherence7WeakRefVy8PaperKit9SignatureVGMR);
  v21 = 1;
  v22 = (*(*(v20 - 8) + 48))(v19, 1, v20);
  outlined destroy of StocksKitCurrencyCache.Provider?(v19, &_s9Coherence7WeakRefVy8PaperKit9SignatureVGSgMd, &_s9Coherence7WeakRefVy8PaperKit9SignatureVGSgMR);
  if (v22 == 1)
  {
    WeakTagged_10.tagged6.getter();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGMR);
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v14, 1, v23) == 1)
    {
      v25 = &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd;
      v26 = &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR;
      v27 = v14;
LABEL_6:
      outlined destroy of StocksKitCurrencyCache.Provider?(v27, v25, v26);
      return 0;
    }

    Canvas.updatablePaper2.getter(v11);
    v28 = v44;
    WeakRef.subscript.getter();
    (*(v39 + 8))(v11, v40);
    (*(v24 + 8))(v14, v23);
    v29 = type metadata accessor for Shape(0);
    if ((*(*(v29 - 8) + 48))(v28, 1, v29) == 1)
    {
      v25 = &_s8PaperKit5ShapeVSgMd;
      v26 = &_s8PaperKit5ShapeVSgMR;
      v27 = v28;
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd, &_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMR);
    v30 = v36;
    CRRegister.wrappedValue.getter();
    v31 = v30;
    v32 = v38;
    _s8PaperKit5ShapeVWObTm_3(v31, v38, type metadata accessor for ShapeType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v21 = EnumCaseMultiPayload == 2;
    if (EnumCaseMultiPayload != 2)
    {
      outlined destroy of Shape(v32, type metadata accessor for ShapeType);
    }

    outlined destroy of Shape(v28, type metadata accessor for Shape);
  }

  return v21;
}

void CanvasFormattingProxy.defaultEmptyTextBoxAttribues(for:)(uint64_t a1@<X8>)
{
  v2 = 1.0;
  if (!Shape.isFormField.getter())
  {
    Canvas.screenScaleOverride.getter();
    if (v3)
    {
      v2 = AnyCanvas.scaleFactorForNewElements.getter();
    }
  }

  if (one-time initialization token for defaultTextBoxAttributes != -1)
  {
    swift_once();
  }

  v4 = static UIConstants.defaultTextBoxAttributes;

  Dictionary<>.scaleBy(_:)(v2);

  CRAttributedString.Attributes<>.init(nsAttributes:darkMode:)(v4, 0, a1);
}

void CanvasFormattingProxy.fontName.getter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v67 = &v64 - v4;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  v5 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v6 = *(a1 + 24);
  v77 = *(a1 + 16);
  v78 = &v64 - v7;
  v76 = v6;
  v75 = type metadata accessor for Capsule();
  v8 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v74 = &v64 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v64 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v86 = &v64 - v14;
  v89 = type metadata accessor for Shape(0);
  v15 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v79 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v90 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v85 = &v64 - v21;
  v80 = v1;
  v22 = *(v1 + 8);
  v23 = v22 + 56;
  v24 = 1 << *(v22 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v22 + 56);
  v27 = (v24 + 63) >> 6;
  v83 = v18 + 32;
  v84 = v18 + 16;
  v70 = (v8 + 8);
  v69 = (v15 + 48);
  v66 = (v5 + 16);
  v65 = (v5 + 8);
  v87 = (v18 + 8);
  v68 = (v15 + 56);
  v88 = v22;

  v28 = 0;
  v82 = v27;
  v73 = v17;
  v72 = v12;
  v71 = v18;
  if (v26)
  {
    while (1)
    {
      v29 = v90;
LABEL_10:
      v31 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
      v32 = v85;
      (*(v18 + 16))(v85, *(v88 + 48) + *(v18 + 72) * (v31 | (v28 << 6)), v17);
      (*(v18 + 32))(v29, v32, v17);
      v33 = v29;
      WeakTagged_10.tagged6.getter();
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGMR);
      v35 = *(v34 - 8);
      if ((*(v35 + 48))(v12, 1, v34) == 1)
      {
        break;
      }

      v37 = v74;
      Canvas.updatablePaper2.getter(v74);
      v36 = v86;
      WeakRef.subscript.getter();
      v38 = v89;
      (*v70)(v37, v75);
      (*(v35 + 8))(v12, v34);
      if ((*v69)(v36, 1, v38) == 1)
      {
        v17 = v73;
        (*v87)(v90, v73);
        v12 = v72;
        v18 = v71;
        goto LABEL_14;
      }

      v42 = v79;
      _s8PaperKit5ShapeVWObTm_3(v36, v79, type metadata accessor for Shape);
      (*v66)(v78, v42 + *(v89 + 52), v81);
      v43 = CRAttributedString.attributedString.getter();
      v44 = [v43 string];

      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v46;

      v17 = v73;
      if (v45 || v47 != 0xE000000000000000)
      {
        v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

        (*v65)(v78, v81);
        v12 = v72;
        v18 = v71;
        if ((v48 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMd, &_ss23_ContiguousArrayStorageCy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMR);
          v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMR);
          v60 = *(v59 - 8);
          v61 = (*(v60 + 80) + 32) & ~*(v60 + 80);
          v62 = swift_allocObject();
          *(v62 + 16) = xmmword_1D4058CF0;
          v63 = v79;
          CRAttributedString.runs.getter();
          Array<A>.fontName.getter(v62);

          swift_setDeallocating();
          (*(v60 + 8))(v62 + v61, v59);
          swift_deallocClassInstance();
          outlined destroy of Shape(v63, type metadata accessor for Shape);
          (*v87)(v90, v17);
          return;
        }
      }

      else
      {

        (*v65)(v78, v81);
        v12 = v72;
        v18 = v71;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd, &_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMR);
      v49 = v79;
      v50 = v67;
      CRRegister.wrappedValue.getter();
      v51 = v50;
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMR);
      v53 = *(v52 - 8);
      if ((*(v53 + 48))(v51, 1, v52) != 1)
      {
        v89 = v53;
        swift_getKeyPath();
        lazy protocol witness table accessor for type TextAttributeScope.FontAttribute and conformance TextAttributeScope.FontAttribute();
        CRAttributedString.Attributes.subscript.getter();

        outlined destroy of Shape(v49, type metadata accessor for Shape);
        (*v87)(v90, v17);
        v55 = v92;
        if (v92 != 1)
        {
          v56 = v91;
          v57 = v93;
          v58 = v94;
          if (v94)
          {
          }

          v54.n128_f64[0] = outlined consume of Font?(v56, v55, v57, v58);
        }

        (*(v89 + 8))(v67, v52, v54);
        return;
      }

      outlined destroy of Shape(v49, type metadata accessor for Shape);
      (*v87)(v90, v17);
      v39 = v51;
      v40 = &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd;
      v41 = &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR;
LABEL_21:
      outlined destroy of StocksKitCurrencyCache.Provider?(v39, v40, v41);
      v27 = v82;
      if (!v26)
      {
        goto LABEL_5;
      }
    }

    (*v87)(v33, v17);
    outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
    v36 = v86;
    (*v68)(v86, 1, 1, v89);
LABEL_14:
    v39 = v36;
    v40 = &_s8PaperKit5ShapeVSgMd;
    v41 = &_s8PaperKit5ShapeVSgMR;
    goto LABEL_21;
  }

LABEL_5:
  v29 = v90;
  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v30 >= v27)
    {

      return;
    }

    v26 = *(v23 + 8 * v30);
    ++v28;
    if (v26)
    {
      v28 = v30;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void closure #1 in CanvasFormattingProxy.fontName.setter(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = specialized Canvas.paperView.getter();
  swift_beginAccess();
  type metadata accessor for Capsule();
  v7 = v6;
  Capsule.callAsFunction<A>(_:)();
  swift_endAccess();
}

void closure #1 in closure #1 in CanvasFormattingProxy.fontName.setter(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v142 = a5;
  v153 = a4;
  v159 = a3;
  v6 = *a1;
  v165 = a1;
  v140 = v6;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMR);
  v7 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154 - 8);
  v167 = v130 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v152 = v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v138 = v130 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v137 = v130 - v14;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  v15 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v132 = v130 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v133 = v130 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v143 = v130 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v158 = v130 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = v130 - v24;
  v176 = type metadata accessor for Shape(0);
  v26 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176 - 8);
  v166 = v130 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = v130 - v29;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGMR);
  v31 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189);
  v168 = v130 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  MEMORY[0x1EEE9AC00](v33);
  MEMORY[0x1EEE9AC00](v34);
  v174 = v130 - v38;
  v141 = a2;
  v39 = *(a2 + 8);
  v40 = v39 + 56;
  v41 = 1 << *(v39 + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v43 = v42 & *(v39 + 56);
  v44 = (v41 + 63) >> 6;
  v173 = v36 + 16;
  v172 = v36 + 32;
  v171 = (v31 + 48);
  v157 = (v31 + 32);
  v164 = (v26 + 48);
  v45 = v37;
  v151 = (v15 + 16);
  v150 = (v15 + 8);
  v136 = (v7 + 56);
  v146 = (v7 + 48);
  v139 = (v7 + 32);
  v134 = (v7 + 16);
  v145 = (v7 + 8);
  v156 = (v31 + 8);
  v46 = v25;
  v47 = v35;
  v175 = v36;
  v169 = (v36 + 8);
  v177 = v39;

  v48 = 0;
  v170 = v44;
  v147 = v46;
  v155 = v30;
  v162 = v47;
  v163 = v45;
  v144 = v40;
  if (v43)
  {
    while (1)
    {
LABEL_11:
      while (1)
      {
        v53 = __clz(__rbit64(v43));
        v43 &= v43 - 1;
        v54 = v175;
        v55 = v174;
        (*(v175 + 16))(v174, *(v177 + 48) + *(v175 + 72) * (v53 | (v48 << 6)), v47);
        (*(v54 + 32))(v45, v55, v47);
        WeakTagged_10.tagged6.getter();
        v56 = v189;
        if ((*v171)(v30, 1, v189) != 1)
        {
          break;
        }

        (*v169)(v45, v47);
        v49 = v30;
        v50 = &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd;
        v51 = &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR;
LABEL_6:
        outlined destroy of StocksKitCurrencyCache.Provider?(v49, v50, v51);
        v44 = v170;
        if (!v43)
        {
          goto LABEL_7;
        }
      }

      v57 = v168;
      (*v157)(v168, v30, v56);
      v58 = v56;
      WeakRef.subscript.getter();
      v59 = v176;
      v160 = *v164;
      if (v160(v46, 1, v176) == 1)
      {
        (*v156)(v57, v58);
        v45 = v163;
        v47 = v162;
        (*v169)(v163, v162);
        v49 = v46;
        v50 = &_s8PaperKit5ShapeVSgMd;
        v51 = &_s8PaperKit5ShapeVSgMR;
        goto LABEL_6;
      }

      v60 = v46;
      v61 = v166;
      _s8PaperKit5ShapeVWObTm_3(v60, v166, type metadata accessor for Shape);
      v62 = *v151;
      (*v151)(v158, v61 + *(v59 + 52), v161);
      v63 = CRAttributedString.attributedString.getter();
      v64 = [v63 string];

      v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v67 = v66;

      if (!v65 && v67 == 0xE000000000000000)
      {

        (*v150)(v158, v161);
        v45 = v163;
        goto LABEL_27;
      }

      v68 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v69 = *v150;
      (*v150)(v158, v161);
      v45 = v163;
      if ((v68 & 1) == 0)
      {
        break;
      }

LABEL_27:
      v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd, &_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMR);
      v98 = v152;
      v135 = v97;
      CRRegister.wrappedValue.getter();
      v99 = v98;
      v100 = *v146;
      v101 = v154;
      if ((*v146)(v99, 1, v154) == 1)
      {
        type metadata accessor for CanvasFormattingProxy(0, *(v140 + *MEMORY[0x1E6995440]), *(v140 + *MEMORY[0x1E6995440] + 8), v142);
        CanvasFormattingProxy.defaultEmptyTextBoxAttribues(for:)(v167);
        v102 = v152;
        v103 = v100(v152, 1, v101);
        v30 = v155;
        if (v103 != 1)
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(v102, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
        }
      }

      else
      {
        (*v139)(v167, v99, v101);
        v30 = v155;
      }

      KeyPath = swift_getKeyPath();
      swift_getKeyPath();
      v148 = lazy protocol witness table accessor for type TextAttributeScope.FontAttribute and conformance TextAttributeScope.FontAttribute();
      CRAttributedString.Attributes.subscript.getter();

      if (v184 == 1)
      {
        if (one-time initialization token for textBoxDefaultFont != -1)
        {
          swift_once();
        }

        Font.init(_:)(&v188, static UIConstants.textBoxDefaultFont);
        countAndFlagsBits = v188._familyName.value._countAndFlagsBits;
        object = v188._familyName.value._object;
      }

      else
      {
        countAndFlagsBits = v185.value._countAndFlagsBits;
        object = v185.value._object;
        v188._name.value._countAndFlagsBits = v183;
        v188._name.value._object = v184;
        v188._familyName = v185;
        LODWORD(v188.pointSize) = v186;
        v188.traits.rawValue = rawValue;
      }

      v47 = v162;
      if (!object)
      {
LABEL_41:
        v108._countAndFlagsBits = 46;
        v108._object = 0xE100000000000000;
        v109 = v159;
        v110 = v153;
        if (String.hasPrefix(_:)(v108))
        {
          v109 = 0;
          v110 = 0;
        }

        else
        {
        }

        v188._familyName.value._countAndFlagsBits = v109;
        v188._familyName.value._object = v110;
        v112 = v188._name.value._countAndFlagsBits;
        v111 = v188._name.value._object;
        v183 = v188._name.value._countAndFlagsBits;
        v184 = v188._name.value._object;
        v185.value._countAndFlagsBits = v109;
        v185.value._object = v110;
        *&v186 = v188.pointSize;
        rawValue = v188.traits.rawValue;
        v113 = Font.platformFont.getter();
        v114 = [v113 fontName];

        v115 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v117 = v116;

        v47 = v162;
        if (v111 && (v115 == v112 && v111 == v117 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
        {
        }

        else
        {

          v118._countAndFlagsBits = 46;
          v118._object = 0xE100000000000000;
          v119 = String.hasPrefix(_:)(v118);

          if (v119)
          {

            v115 = 0;
            v117 = 0;
          }

          v188._name.value._countAndFlagsBits = v115;
          v188._name.value._object = v117;
          v178 = v115;
          v179 = v117;
          familyName = v188._familyName;
          pointSize = v188.pointSize;
          v182 = v188.traits.rawValue;
          v120 = Font.platformFont.getter();
          v121 = [v120 familyName];

          v122 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v124 = v123;

          Font.familyName.setter(v122, v124);
        }

        v107 = v188._familyName.value._countAndFlagsBits;
        v106 = v188._familyName.value._object;
        v101 = v154;
        v30 = v155;
        v45 = v163;
        goto LABEL_53;
      }

      if (countAndFlagsBits != v159 || (v106 = v153, v107 = v159, object != v153))
      {
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_41;
        }

        v106 = object;
        v107 = countAndFlagsBits;
      }

LABEL_53:
      v188._familyName.value._countAndFlagsBits = v107;
      v188._familyName.value._object = v106;
      *&v188.pointSize = LODWORD(v188.pointSize);
      CRAttributedString.Attributes.subscript.setter();
      v125 = v168;
      KeyPath = WeakRef.subscript.modify();
      if (v160(v126, 1, v176))
      {
        KeyPath(&v188, 0);
        v127 = v166;
      }

      else
      {
        v128 = v137;
        (*v134)(v137, v167, v101);
        (*v136)(v128, 0, 1, v101);
        outlined init with copy of Date?(v128, v138, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
        v30 = v155;
        CRRegister.wrappedValue.setter();
        v129 = v128;
        v45 = v163;
        v127 = v166;
        v47 = v162;
        v125 = v168;
        outlined destroy of StocksKitCurrencyCache.Provider?(v129, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
        KeyPath(&v188, 0);
      }

      (*v145)(v167, v101);
      outlined destroy of Shape(v127, type metadata accessor for Shape);
      (*v156)(v125, v189);
      (*v169)(v45, v47);
      v46 = v147;
      v44 = v170;
      v40 = v144;
      if (!v43)
      {
        goto LABEL_7;
      }
    }

    v148 = v69;
    KeyPath = v62;
    v70 = v176;
    v71 = CRAttributedString.count.getter();
    v72 = swift_getKeyPath();
    v73 = v153;

    v74 = WeakRef.subscript.modify();
    v76 = v75;
    if (v160(v75, 1, v70) == 1)
    {
      goto LABEL_61;
    }

    v135 = v74;
    v77 = *(v70 + 52);

    specialized CRAttributedString<>.updateAttribute<A>(in:newValue:keypath:)(0, v71, v72, &v76[v77], v159, v73);

    swift_bridgeObjectRelease_n();
    v131 = v77;
    v78 = v161;
    (KeyPath)(v143, &v76[v77], v161);
    v79 = CRAttributedString.attributedString.getter();
    v80 = [v79 string];

    v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v83 = v82;

    if (v81 || v83 != 0xE000000000000000)
    {
      v84 = v76;
      v85 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v86 = v148;
      v148(v143, v78);
      v45 = v163;
      if (v85)
      {
LABEL_26:
        v135(&v188, 0);
        goto LABEL_27;
      }

      v87 = v131;
      v88 = v161;
      v89 = v86;
      v90 = KeyPath;
      (KeyPath)(v133, &v84[v131], v161);
      v130[1] = v84;
      v91 = &v84[v87];
      v92 = v132;
      v90(v132, v91, v88);
      v93 = CRAttributedString.attributedString.getter();
      v89(v92, v88);
      v94 = [v93 length];

      if (__OFSUB__(v94, 1))
      {
        goto LABEL_60;
      }

      v95 = v137;
      v96 = v133;
      CRAttributedString.attributes(at:effectiveRange:)();
      v89(v96, v88);
      (*v136)(v95, 0, 1, v154);
      outlined init with copy of Date?(v95, v138, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd, &_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMR);
      CRRegister.wrappedValue.setter();
      outlined destroy of StocksKitCurrencyCache.Provider?(v95, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
    }

    else
    {

      v148(v143, v78);
    }

    v45 = v163;
    goto LABEL_26;
  }

LABEL_7:
  while (1)
  {
    v52 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      break;
    }

    if (v52 >= v44)
    {

      return;
    }

    v43 = *(v40 + 8 * v52);
    ++v48;
    if (v43)
    {
      v48 = v52;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:

  __break(1u);
}

id CanvasFormattingProxy.fontSize.getter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v64 = &v63 - v4;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  v5 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v76 = &v63 - v6;
  v7 = *(a1 + 24);
  v71 = *(a1 + 16);
  v74 = v7;
  v73 = type metadata accessor for Capsule();
  v87 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v70 = &v63 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v63 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v84 = &v63 - v13;
  v14 = type metadata accessor for Shape(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v75 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v82 = &v63 - v22;
  v77 = v1;
  v23 = *(v1 + 8);
  v24 = v23 + 56;
  v25 = 1 << *(v23 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v23 + 56);
  v28 = (v25 + 63) >> 6;
  v80 = v21 + 32;
  v81 = v21 + 16;
  v68 = (v15 + 48);
  v69 = (v87 + 8);
  v66 = (v5 + 16);
  v65 = (v5 + 8);
  v83 = v21;
  v85 = (v21 + 8);
  v67 = (v15 + 56);
  v87 = v23;

  v29 = 0;
  v72 = v19;
  v86 = v11;
  v79 = v14;
  if (v27)
  {
    while (1)
    {
LABEL_11:
      while (1)
      {
        v32 = __clz(__rbit64(v27));
        v27 &= v27 - 1;
        v34 = v82;
        v33 = v83;
        (*(v83 + 16))(v82, *(v87 + 48) + *(v83 + 72) * (v32 | (v29 << 6)), v17);
        (*(v33 + 32))(v19, v34, v17);
        v35 = v19;
        WeakTagged_10.tagged6.getter();
        v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGMR);
        v37 = *(v36 - 8);
        if ((*(v37 + 48))(v11, 1, v36) != 1)
        {
          break;
        }

        (*v85)(v35, v17);
        outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
        v30 = v84;
        (*v67)(v84, 1, 1, v14);
        v19 = v35;
LABEL_6:
        outlined destroy of StocksKitCurrencyCache.Provider?(v30, &_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
        if (!v27)
        {
          goto LABEL_7;
        }
      }

      v38 = v70;
      Canvas.updatablePaper2.getter(v70);
      v39 = v84;
      WeakRef.subscript.getter();
      v40 = v38;
      v11 = v86;
      (*v69)(v40, v73);
      (*(v37 + 8))(v11, v36);
      v30 = v39;
      v14 = v79;
      if ((*v68)(v30, 1, v79) == 1)
      {
        v19 = v72;
        (*v85)(v72, v17);
        goto LABEL_6;
      }

      v41 = v75;
      _s8PaperKit5ShapeVWObTm_3(v30, v75, type metadata accessor for Shape);
      (*v66)(v76, v41 + *(v14 + 52), v78);
      v42 = CRAttributedString.attributedString.getter();
      v43 = [v42 string];

      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      if (v44 || v46 != 0xE000000000000000)
      {
        v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

        (*v65)(v76, v78);
        if ((v47 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMd, &_ss23_ContiguousArrayStorageCy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMR);
          v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMR);
          v58 = *(v57 - 8);
          v59 = (*(v58 + 80) + 32) & ~*(v58 + 80);
          v60 = swift_allocObject();
          *(v60 + 16) = xmmword_1D4058CF0;
          v61 = v75;
          CRAttributedString.runs.getter();
          v62 = Array<A>.fontSize.getter(v60);

          swift_setDeallocating();
          (*(v58 + 8))(v60 + v59, v57);
          swift_deallocClassInstance();
          outlined destroy of Shape(v61, type metadata accessor for Shape);
          (*v85)(v72, v17);
          return v62;
        }
      }

      else
      {

        (*v65)(v76, v78);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd, &_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMR);
      v48 = v75;
      v49 = v64;
      CRRegister.wrappedValue.getter();
      v50 = v49;
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMR);
      v52 = *(v51 - 8);
      if ((*(v52 + 48))(v50, 1, v51) != 1)
      {
        CRAttributedString.Attributes<>.fontSize.getter();
        v56 = v55;

        outlined destroy of Shape(v48, type metadata accessor for Shape);
        (*v85)(v72, v17);
        (*(v52 + 8))(v50, v51);
        return v56;
      }

      outlined destroy of Shape(v48, type metadata accessor for Shape);
      v19 = v72;
      (*v85)(v72, v17);
      outlined destroy of StocksKitCurrencyCache.Provider?(v50, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
      v11 = v86;
      v14 = v79;
      if (!v27)
      {
        goto LABEL_7;
      }
    }
  }

  while (1)
  {
LABEL_7:
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    if (v31 >= v28)
    {
      break;
    }

    v27 = *(v24 + 8 * v31);
    ++v29;
    if (v27)
    {
      v29 = v31;
      goto LABEL_11;
    }
  }

  if (one-time initialization token for textBoxDefaultFont == -1)
  {
    goto LABEL_22;
  }

LABEL_29:
  swift_once();
LABEL_22:
  result = [static UIConstants.textBoxDefaultFont pointSize];
  if ((*&v54 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v54 > -9.22337204e18)
  {
    if (v54 < 9.22337204e18)
    {
      return v54;
    }

    goto LABEL_32;
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void closure #1 in closure #1 in CanvasFormattingProxy.fontSize.setter(void *a1, uint64_t a2, void (*a3)(PaperKit::Font *, void), uint64_t a4)
{
  v179 = a4;
  KeyPath = a3;
  v200 = a1;
  v177 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v185 = &v162 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v174 = &v162 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v173 = &v162 - v10;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMR);
  v11 = *(v221 - 8);
  MEMORY[0x1EEE9AC00](v221);
  v193 = &v162 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v232 = &v162 - v14;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMR);
  v230 = *(v218 - 8);
  MEMORY[0x1EEE9AC00](v218 - 8);
  v16 = &v162 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v214 = &v162 - v18;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV9SubstringVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV9SubstringVy8PaperKit18TextAttributeScopeV_GMR);
  v229 = *(v213 - 8);
  MEMORY[0x1EEE9AC00](v213);
  v168 = &v162 - v19;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMR);
  v228 = *(v217 - 8);
  MEMORY[0x1EEE9AC00](v217);
  v216 = &v162 - v20;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  v21 = *(v224 - 8);
  MEMORY[0x1EEE9AC00](v224 - 8);
  v165 = &v162 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v175 = &v162 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v170 = &v162 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v192 = &v162 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v169 = &v162 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v191 = &v162 - v32;
  v33 = type metadata accessor for Shape(0);
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v194 = &v162 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v38 = &v162 - v37;
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGMR);
  v39 = *(v225 - 8);
  MEMORY[0x1EEE9AC00](v225);
  v219 = &v162 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  MEMORY[0x1EEE9AC00](v41);
  v226 = &v162 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v210 = &v162 - v46;
  v178 = a2;
  v47 = *(a2 + 8);
  v48 = v47 + 56;
  v49 = 1 << *(v47 + 32);
  v50 = -1;
  if (v49 < 64)
  {
    v50 = ~(-1 << v49);
  }

  v51 = v50 & *(v47 + 56);
  v209 = v45 + 16;
  v208 = v45 + 32;
  v207 = (v39 + 48);
  v190 = (v39 + 32);
  v197 = (v34 + 48);
  v52 = v16;
  v187 = (v21 + 16);
  v186 = (v21 + 8);
  v53 = v38;
  v54 = (v49 + 63) >> 6;
  v55 = v44;
  v167 = (v229 + 8);
  v56 = v200;
  v212 = (v230 + 48);
  v57 = KeyPath;
  v203 = (v230 + 32);
  v220 = (v11 + 8);
  v215 = COERCE_UNSIGNED_INT(KeyPath);
  v202 = (v230 + 8);
  v166 = (v228 + 8);
  v172 = (v11 + 56);
  v183 = (v11 + 48);
  v176 = (v11 + 32);
  v171 = (v11 + 16);
  v188 = (v39 + 8);
  v58 = v221;
  v211 = v45;
  v204 = (v45 + 8);
  v223 = v47;

  v59 = 0;
  v182 = xmmword_1D405D330;
  v239 = v52;
  v206 = v48;
  v205 = v54;
  v222 = v33;
  v227 = v53;
  v189 = v55;
  if (v51)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v62 = v59 + 1;
    if (__OFADD__(v59, 1))
    {
      break;
    }

    if (v62 >= v54)
    {

      return;
    }

    v51 = *(v48 + 8 * v62);
    ++v59;
    if (v51)
    {
      v60 = v58;
      v61 = v56;
      v59 = v62;
LABEL_12:
      v63 = __clz(__rbit64(v51));
      v51 &= v51 - 1;
      v64 = v211;
      v65 = v210;
      (*(v211 + 16))(v210, *(v223 + 48) + *(v211 + 72) * (v63 | (v59 << 6)), v55);
      v66 = *(v64 + 32);
      v67 = v226;
      v66(v226, v65, v55);
      WeakTagged_10.tagged6.getter();
      v68 = v227;
      v69 = v55;
      v70 = v225;
      if ((*v207)(v227, 1, v225) == 1)
      {
        (*v204)(v67, v69);
        outlined destroy of StocksKitCurrencyCache.Provider?(v68, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
        v55 = v69;
LABEL_6:
        v48 = v206;
        v54 = v205;
        v56 = v61;
        v58 = v60;
        if (!v51)
        {
          continue;
        }

        goto LABEL_7;
      }

      v71 = v219;
      (*v190)(v219, v68, v70);
      v72 = v191;
      WeakRef.subscript.getter();
      v73 = v222;
      v74 = *v197;
      if ((*v197)(v72, 1, v222) == 1)
      {
        (*v188)(v71, v70);
        v55 = v189;
        (*v204)(v226, v189);
        outlined destroy of StocksKitCurrencyCache.Provider?(v72, &_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
        goto LABEL_6;
      }

      v75 = v194;
      _s8PaperKit5ShapeVWObTm_3(v72, v194, type metadata accessor for Shape);
      v76 = v75 + *(v73 + 52);
      v77 = v224;
      v181 = *v187;
      v181(v192, v76, v224);
      v78 = CRAttributedString.attributedString.getter();
      v79 = [v78 string];

      v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v82 = v81;

      v184 = v74;
      if (!v80 && v82 == 0xE000000000000000)
      {

        (*v186)(v192, v77);
        v58 = v60;
LABEL_68:
        v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd, &_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMR);
        v146 = v185;
        v230 = v145;
        CRRegister.wrappedValue.getter();
        v147 = v146;
        v148 = *v183;
        if ((*v183)(v147, 1, v58) == 1)
        {
          type metadata accessor for CanvasFormattingProxy(0, *(v177 + *MEMORY[0x1E6995440]), *(v177 + *MEMORY[0x1E6995440] + 8), v179);
          CanvasFormattingProxy.defaultEmptyTextBoxAttribues(for:)(v193);
          v149 = v185;
          if (v148(v185, 1, v58) != 1)
          {
            outlined destroy of StocksKitCurrencyCache.Provider?(v149, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
          }
        }

        else
        {
          (*v176)(v193, v147, v58);
        }

        KeyPath = swift_getKeyPath();
        swift_getKeyPath();
        lazy protocol witness table accessor for type TextAttributeScope.FontAttribute and conformance TextAttributeScope.FontAttribute();
        CRAttributedString.Attributes.subscript.getter();

        object = v234;
        if (v234 == 1)
        {
          v151 = v222;
          v152 = v184;
          if (one-time initialization token for textBoxDefaultFont != -1)
          {
            swift_once();
          }

          Font.init(_:)(&v237, static UIConstants.textBoxDefaultFont);
          countAndFlagsBits = v237._name.value._countAndFlagsBits;
          object = v237._name.value._object;
          familyName = v237._familyName;
          rawValue = v237.traits.rawValue;
        }

        else
        {
          rawValue = v236;
          familyName = v235;
          countAndFlagsBits = v233;
          v237._name.value._countAndFlagsBits = v233;
          v237._name.value._object = v234;
          v237._familyName = v235;
          v151 = v222;
          v152 = v184;
        }

        v237._name.value._countAndFlagsBits = countAndFlagsBits;
        v237._name.value._object = object;
        v237._familyName = familyName;
        *&v237.pointSize = v215;
        v237.traits.rawValue = rawValue;
        v156 = v193;
        CRAttributedString.Attributes.subscript.setter();
        v157 = v225;
        KeyPath = WeakRef.subscript.modify();
        if (v152(v158, 1, v151))
        {
          KeyPath(&v237, 0);
          v54 = v205;
          v159 = v156;
          v160 = v219;
        }

        else
        {
          v161 = v173;
          (*v171)(v173, v156, v58);
          (*v172)(v161, 0, 1, v58);
          outlined init with copy of Date?(v161, v174, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
          v160 = v219;
          v159 = v193;
          CRRegister.wrappedValue.setter();
          v157 = v225;
          outlined destroy of StocksKitCurrencyCache.Provider?(v161, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
          KeyPath(&v237, 0);
          v54 = v205;
        }

        (*v220)(v159, v58);
        outlined destroy of Shape(v194, type metadata accessor for Shape);
        (*v188)(v160, v157);
        v55 = v189;
        (*v204)(v226, v189);
        v56 = v200;
        v48 = v206;
        if (!v51)
        {
          continue;
        }

LABEL_7:
        v60 = v58;
        v61 = v56;
        goto LABEL_12;
      }

      v83 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v84 = *v186;
      (*v186)(v192, v77);
      v85 = v218;
      v58 = v60;
      if (v83)
      {
        goto LABEL_68;
      }

      v164 = v84;
      v86 = v169;
      WeakRef.subscript.getter();
      v87 = v222;
      if (v74(v86, 1, v222) == 1)
      {
        goto LABEL_92;
      }

      v88 = &v86[*(v87 + 52)];
      v89 = v170;
      v90 = v224;
      v181(v170, v88, v224);
      v91 = v86;
      v92 = v222;
      outlined destroy of Shape(v91, type metadata accessor for Shape);
      KeyPath = CRAttributedString.count.getter();
      v164(v89, v90);
      v198 = swift_getKeyPath();
      v93 = WeakRef.subscript.modify();
      v95 = v94;
      v96 = v74(v94, 1, v92);
      v97 = v239;
      if (v96 == 1)
      {
        goto LABEL_91;
      }

      v98 = *(v92 + 52);
      if (!NSNotFound.getter())
      {
        goto LABEL_89;
      }

      v163 = v93;
      v201 = v95;
      v199 = v98;
      v99 = v168;
      CRAttributedString.subscript.getter();
      v100 = v213;
      CRAttributedString.Substring.runs.getter();
      (*v167)(v99, v100);
      v101 = v214;
      CRAttributedString.Runs.next()();
      v196 = *v212;
      v102 = v196(v101, 1, v85);
      v103 = MEMORY[0x1E69E7CC0];
      if (v102 == 1)
      {
LABEL_23:
        (*v166)(v216, v217);

        v104 = v224;
        v181(v175, v201 + v199, v224);
        v105 = CRAttributedString.attributedString.getter();
        v106 = [v105 string];

        v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v109 = v108;

        if (v107 || v109 != 0xE000000000000000)
        {
          v132 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v164(v175, v104);
          if ((v132 & 1) == 0)
          {
            v133 = v201;
            v134 = v199;
            v135 = v170;
            v136 = v181;
            v181(v170, v201 + v199, v104);
            v137 = v133 + v134;
            v138 = v164;
            v139 = v165;
            v136(v165, v137, v104);
            v140 = CRAttributedString.attributedString.getter();
            v138(v139, v104);
            v141 = [v140 length];

            if (__OFSUB__(v141, 1))
            {
              goto LABEL_90;
            }

            v142 = v173;
            CRAttributedString.attributes(at:effectiveRange:)();
            v138(v135, v104);
            v143 = v221;
            (*v172)(v142, 0, 1, v221);
            outlined init with copy of Date?(v142, v174, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd, &_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMR);
            CRRegister.wrappedValue.setter();
            v144 = v142;
            v58 = v143;
            outlined destroy of StocksKitCurrencyCache.Provider?(v144, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
          }
        }

        else
        {

          v164(v175, v104);
        }

        v163(v238, 0);
        goto LABEL_68;
      }

      v195 = *v203;
      while (2)
      {
        v229 = v103;
        v195(v97, v101, v85);
        CRAttributedString.Runs.Run.attributes.getter();
        swift_getKeyPath();
        v110 = lazy protocol witness table accessor for type TextAttributeScope.FontAttribute and conformance TextAttributeScope.FontAttribute();
        CRAttributedString.Attributes.subscript.getter();

        v111 = v234;
        v228 = v110;
        if (v234 == 1)
        {
          if (one-time initialization token for textBoxDefaultFont != -1)
          {
            swift_once();
          }

          Font.init(_:)(&v237, static UIConstants.textBoxDefaultFont);
          v112 = v237._name.value._countAndFlagsBits;
          v111 = v237._name.value._object;
          v113 = v237._familyName.value._object;
          KeyPath = v237._familyName.value._countAndFlagsBits;
          v230 = v237.traits.rawValue;
        }

        else
        {
          v230 = v236;
          v113 = v235.value._object;
          v112 = v233;
          v237._name.value._countAndFlagsBits = v233;
          v237._name.value._object = v234;
          KeyPath = v235.value._countAndFlagsBits;
          v237._familyName = v235;
        }

        (*v220)(v232, v58);
        v114 = CRAttributedString.Runs.Run.range.getter();
        v116 = v115 - v114;
        if (__OFSUB__(v115, v114))
        {
          goto LABEL_84;
        }

        v117 = v114;
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
        }

        v118 = qword_1EC7A2EB8;
        v119 = qword_1EC7A2EC0;
        v120 = *&dword_1EC7A2EC8;
        v121 = qword_1EC7A2ED0;
        if (v111)
        {
          if (!qword_1EC7A2EB0 || (v112 != static TextAttributeScope.FontAttribute.defaultValue || v111 != qword_1EC7A2EB0) && (v180 = v112, v122 = qword_1EC7A2ED0, v123 = _stringCompareWithSmolCheck(_:_:expecting:)(), v121 = v122, v112 = v180, (v123 & 1) == 0))
          {
LABEL_55:
            if (__OFADD__(v117, v116))
            {
              goto LABEL_85;
            }

            if (v117 + v116 < v117)
            {
              goto LABEL_86;
            }

            v237._name.value._countAndFlagsBits = v112;
            v237._name.value._object = v111;
            v237._familyName.value._countAndFlagsBits = KeyPath;
            v237._familyName.value._object = v113;
            *&v237.pointSize = v215;
            v237.traits.rawValue = v230;

            v126 = CRAttributedString.subscript.modify();
            CRAttributedString.Substring.subscript.setter();
            v126(&v233, 0);

            goto LABEL_58;
          }
        }

        else if (qword_1EC7A2EB0)
        {
          goto LABEL_55;
        }

        if (v113)
        {
          if (!v119)
          {
            goto LABEL_55;
          }

          if (KeyPath != v118 || v113 != v119)
          {
            v124 = v121;
            if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || v120 != v57)
            {
              goto LABEL_55;
            }

            v121 = v124;
            goto LABEL_51;
          }
        }

        else if (v119)
        {
          goto LABEL_55;
        }

        if (v120 != v57)
        {
          goto LABEL_55;
        }

LABEL_51:
        if (v230 != v121)
        {
          goto LABEL_55;
        }

        if (__OFADD__(v117, v116))
        {
          goto LABEL_87;
        }

        if (v117 + v116 < v117)
        {
          goto LABEL_88;
        }

        v237._name = v182;
        memset(&v237._familyName, 0, 32);

        v125 = CRAttributedString.subscript.modify();
        CRAttributedString.Substring.subscript.setter();
        v125(&v233, 0);

LABEL_58:

        v103 = v229;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v85 = v218;
        v97 = v239;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v103 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v103 + 2) + 1, 1, v103);
        }

        v129 = *(v103 + 2);
        v128 = *(v103 + 3);
        if (v129 >= v128 >> 1)
        {
          v103 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v128 > 1), v129 + 1, 1, v103);
        }

        (*v202)(v97, v85);
        *(v103 + 2) = v129 + 1;
        v130 = &v103[16 * v129];
        *(v130 + 4) = v117;
        *(v130 + 5) = v116;
        v101 = v214;
        CRAttributedString.Runs.next()();
        v131 = v196(v101, 1, v85);
        v58 = v221;
        if (v131 == 1)
        {
          goto LABEL_23;
        }

        continue;
      }
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
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
}

void CanvasFormattingProxy.textAlignment.getter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v61 = &v61 - v4;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  v5 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v73 = &v61 - v6;
  v7 = *(a1 + 16);
  v70 = *(a1 + 24);
  v71 = v7;
  v69 = type metadata accessor for Capsule();
  v8 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v68 = &v61 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v84 = &v61 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v61 - v13;
  v83 = type metadata accessor for Shape(0);
  v15 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v75 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v81 = &v61 - v22;
  v76 = v1;
  v23 = *(v1 + 8);
  v24 = v23 + 56;
  v25 = 1 << *(v23 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v23 + 56);
  v28 = (v25 + 63) >> 6;
  v79 = v21 + 32;
  v80 = v21 + 16;
  v66 = (v8 + 8);
  v65 = (v15 + 48);
  v63 = (v5 + 16);
  v62 = (v5 + 8);
  v82 = v21;
  v29 = (v21 + 8);
  v64 = (v15 + 56);
  v85 = v23;

  v30 = 0;
  v74 = v17;
  v72 = v19;
  v67 = v29;
  v78 = v14;
  while (v27)
  {
LABEL_11:
    while (1)
    {
      v33 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
      v35 = v81;
      v34 = v82;
      (*(v82 + 16))(v81, *(v85 + 48) + *(v82 + 72) * (v33 | (v30 << 6)), v17);
      (*(v34 + 32))(v19, v35, v17);
      v36 = v84;
      v37 = v19;
      WeakTagged_10.tagged6.getter();
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGMR);
      v39 = *(v38 - 8);
      if ((*(v39 + 48))(v36, 1, v38) != 1)
      {
        break;
      }

      (*v29)(v37, v17);
      outlined destroy of StocksKitCurrencyCache.Provider?(v36, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
      v31 = v78;
      (*v64)(v78, 1, 1, v83);
      v19 = v37;
LABEL_6:
      outlined destroy of StocksKitCurrencyCache.Provider?(v31, &_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
      if (!v27)
      {
        goto LABEL_7;
      }
    }

    v40 = v68;
    Canvas.updatablePaper2.getter(v68);
    v41 = v78;
    WeakRef.subscript.getter();
    (*v66)(v40, v69);
    v42 = v36;
    v31 = v41;
    (*(v39 + 8))(v42, v38);
    v43 = v83;
    if ((*v65)(v41, 1, v83) == 1)
    {
      v29 = v67;
      v19 = v72;
      v17 = v74;
      (*v67)(v72, v74);
      goto LABEL_6;
    }

    v44 = v75;
    _s8PaperKit5ShapeVWObTm_3(v41, v75, type metadata accessor for Shape);
    (*v63)(v73, v44 + *(v43 + 52), v77);
    v45 = CRAttributedString.attributedString.getter();
    v46 = [v45 string];

    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    if (v47 || v49 != 0xE000000000000000)
    {
      v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*v62)(v73, v77);
      if ((v50 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMd, &_ss23_ContiguousArrayStorageCy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMR);
        v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMR);
        v57 = *(v56 - 8);
        v58 = (*(v57 + 80) + 32) & ~*(v57 + 80);
        v59 = swift_allocObject();
        *(v59 + 16) = xmmword_1D4058CF0;
        v60 = v75;
        CRAttributedString.runs.getter();
        Array<A>.textAlignment.getter(v59);

        swift_setDeallocating();
        (*(v57 + 8))(v59 + v58, v56);
        swift_deallocClassInstance();
        outlined destroy of Shape(v60, type metadata accessor for Shape);
        (*v67)(v72, v74);
        return;
      }
    }

    else
    {

      (*v62)(v73, v77);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd, &_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMR);
    v51 = v75;
    v52 = v61;
    CRRegister.wrappedValue.getter();
    v53 = v52;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMR);
    v55 = *(v54 - 8);
    if ((*(v55 + 48))(v53, 1, v54) != 1)
    {
      swift_getKeyPath();
      lazy protocol witness table accessor for type TextAttributeScope.AlignmentAttribute and conformance TextAttributeScope.AlignmentAttribute();
      CRAttributedString.Attributes.subscript.getter();

      outlined destroy of Shape(v51, type metadata accessor for Shape);
      (*v67)(v72, v74);
      (*(v55 + 8))(v53, v54);
      return;
    }

    outlined destroy of Shape(v51, type metadata accessor for Shape);
    v29 = v67;
    v19 = v72;
    v17 = v74;
    (*v67)(v72, v74);
    outlined destroy of StocksKitCurrencyCache.Provider?(v53, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
  }

LABEL_7:
  while (1)
  {
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v32 >= v28)
    {

      return;
    }

    v27 = *(v24 + 8 * v32);
    ++v30;
    if (v27)
    {
      v30 = v32;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void closure #1 in CanvasFormattingProxy.fontSize.setter(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = specialized Canvas.paperView.getter();
  swift_beginAccess();
  type metadata accessor for Capsule();
  v8 = v7;
  Capsule.callAsFunction<A>(_:)();
  swift_endAccess();
}

void closure #1 in closure #1 in CanvasFormattingProxy.textAlignment.setter(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v127 = a4;
  v133 = a3;
  v5 = *a1;
  v149 = a1;
  v125 = v5;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMR);
  v6 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132 - 8);
  v131 = &v111 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v138 = &v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v122 = &v111 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v128 = &v111 - v13;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  v14 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v115 = &v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v123 = &v111 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v118 = &v111 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v145 = &v111 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v117 = &v111 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v111 - v25;
  v157 = type metadata accessor for Shape(0);
  v27 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157 - 8);
  v146 = &v111 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = &v111 - v30;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGMR);
  v32 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164);
  v156 = &v111 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  MEMORY[0x1EEE9AC00](v34);
  MEMORY[0x1EEE9AC00](v35);
  v155 = &v111 - v39;
  v126 = a2;
  v40 = *(a2 + 8);
  v41 = v40 + 56;
  v42 = 1 << *(v40 + 32);
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  v44 = v43 & *(v40 + 56);
  v45 = (v42 + 63) >> 6;
  v153 = v37 + 32;
  v154 = v37 + 16;
  v152 = (v32 + 48);
  v144 = (v32 + 32);
  v148 = (v27 + 48);
  v139 = (v14 + 16);
  v136 = (v14 + 8);
  v121 = (v6 + 56);
  v135 = (v6 + 48);
  v124 = (v6 + 32);
  v119 = (v6 + 16);
  v129 = (v6 + 8);
  v46 = v38;
  v140 = (v32 + 8);
  v47 = v26;
  v48 = v36;
  v49 = v37;
  v150 = (v37 + 8);
  v158 = v40;

  v50 = 0;
  v137 = v31;
  v151 = v45;
  v130 = v47;
  v143 = v48;
  v142 = v49;
  v141 = v46;
  if (v44)
  {
    while (1)
    {
LABEL_10:
      while (1)
      {
        v52 = __clz(__rbit64(v44));
        v44 &= v44 - 1;
        v53 = v155;
        (*(v49 + 16))(v155, *(v158 + 48) + *(v49 + 72) * (v52 | (v50 << 6)), v48);
        (*(v49 + 32))(v46, v53, v48);
        v54 = v46;
        WeakTagged_10.tagged6.getter();
        v55 = v164;
        if ((*v152)(v31, 1, v164) != 1)
        {
          break;
        }

        (*v150)(v54, v48);
        outlined destroy of StocksKitCurrencyCache.Provider?(v31, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
        v46 = v54;
        v45 = v151;
        if (!v44)
        {
          goto LABEL_6;
        }
      }

      v56 = v156;
      (*v144)(v156, v31, v55);
      v57 = v55;
      WeakRef.subscript.getter();
      v58 = *v148;
      v59 = v157;
      if ((*v148)(v47, 1, v157) != 1)
      {
        break;
      }

      (*v140)(v56, v57);
      v46 = v141;
      v48 = v143;
      (*v150)(v141, v143);
      outlined destroy of StocksKitCurrencyCache.Provider?(v47, &_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
LABEL_35:
      v49 = v142;
      v45 = v151;
      if (!v44)
      {
        goto LABEL_6;
      }
    }

    v60 = v146;
    _s8PaperKit5ShapeVWObTm_3(v47, v146, type metadata accessor for Shape);
    v61 = *v139;
    (*v139)(v145, v60 + *(v59 + 52), v147);
    v62 = CRAttributedString.attributedString.getter();
    v63 = [v62 string];

    v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v66 = v65;

    v134 = v58;
    if (!v64 && v66 == 0xE000000000000000)
    {

      (*v136)(v145, v147);
      v67 = v135;
LABEL_28:
      v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd, &_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMR);
      v98 = v138;
      v120 = v97;
      CRRegister.wrappedValue.getter();
      v99 = v98;
      v100 = *v67;
      v101 = v98;
      v102 = v132;
      if ((*v67)(v101, 1, v132) == 1)
      {
        type metadata accessor for CanvasFormattingProxy(0, *(v125 + *MEMORY[0x1E6995440]), *(v125 + *MEMORY[0x1E6995440] + 8), v127);
        v103 = v131;
        CanvasFormattingProxy.defaultEmptyTextBoxAttribues(for:)(v131);
        v104 = v138;
        if (v100(v138, 1, v102) != 1)
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(v104, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
        }
      }

      else
      {
        v103 = v131;
        (*v124)(v131, v99, v102);
      }

      swift_getKeyPath();
      v160 = v133;
      v161 = 0;
      lazy protocol witness table accessor for type TextAttributeScope.AlignmentAttribute and conformance TextAttributeScope.AlignmentAttribute();
      CRAttributedString.Attributes.subscript.setter();
      v105 = WeakRef.subscript.modify();
      v107 = v134(v106, 1, v157);
      v31 = v137;
      if (!v107)
      {
        v108 = v128;
        (*v119)(v128, v103, v102);
        (*v121)(v108, 0, 1, v102);
        outlined init with copy of Date?(v108, v122, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
        v31 = v137;
        CRRegister.wrappedValue.setter();
        outlined destroy of StocksKitCurrencyCache.Provider?(v128, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
      }

      v105(&v160, 0);
      (*v129)(v103, v102);
      outlined destroy of Shape(v146, type metadata accessor for Shape);
      (*v140)(v156, v164);
      v109 = v141;
      v110 = v143;
      (*v150)(v141, v143);
      v48 = v110;
      v46 = v109;
      v47 = v130;
      goto LABEL_35;
    }

    v120 = v61;
    v68 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v69 = v147;
    v116 = *v136;
    v116(v145, v147);
    v67 = v135;
    if (v68)
    {
      goto LABEL_28;
    }

    v70 = v117;
    WeakRef.subscript.getter();
    v71 = v58;
    v72 = v157;
    if (v71(v70, 1, v157) == 1)
    {
      goto LABEL_41;
    }

    v73 = v118;
    v120(v118, v70 + *(v72 + 52), v69);
    outlined destroy of Shape(v70, type metadata accessor for Shape);
    v74 = CRAttributedString.count.getter();
    v75 = v69;
    v76 = v74;
    v116(v73, v75);
    if (v76 < 0)
    {
      goto LABEL_39;
    }

    swift_getKeyPath();
    v162 = v133;
    v163 = 0;
    v113 = WeakRef.subscript.modify();
    v78 = v77;
    if (v134(v77, 1, v72) == 1)
    {
      goto LABEL_42;
    }

    v79 = *(v72 + 52);
    v80 = v147;
    v114 = CRAttributedString.subscript.modify();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV9SubstringVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV9SubstringVy8PaperKit18TextAttributeScopeV_GMR);
    lazy protocol witness table accessor for type TextAttributeScope.AlignmentAttribute and conformance TextAttributeScope.AlignmentAttribute();
    CRAttributedString.Substring.subscript.setter();
    (v114)(v159, 0);
    v112 = v78;
    v120(v123, &v79[v78], v80);
    v81 = CRAttributedString.attributedString.getter();
    v82 = [v81 string];

    v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v85 = v84;

    if (v83 || v85 != 0xE000000000000000)
    {
      v114 = v79;
      v86 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v116(v123, v147);
      v67 = v135;
      if (v86)
      {
LABEL_27:
        v113(&v160, 0);
        goto LABEL_28;
      }

      v87 = v112;
      v88 = v114;
      v89 = v147;
      v90 = v120;
      v120(v118, &v114[v112], v147);
      v91 = v115;
      v90(v115, &v88[v87], v89);
      v92 = CRAttributedString.attributedString.getter();
      v93 = v116;
      v116(v91, v89);
      v94 = [v92 length];

      if (__OFSUB__(v94, 1))
      {
        goto LABEL_40;
      }

      v95 = v128;
      v96 = v118;
      CRAttributedString.attributes(at:effectiveRange:)();
      v93(v96, v89);
      (*v121)(v95, 0, 1, v132);
      outlined init with copy of Date?(v95, v122, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd, &_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMR);
      CRRegister.wrappedValue.setter();
      outlined destroy of StocksKitCurrencyCache.Provider?(v95, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
    }

    else
    {

      v116(v123, v147);
    }

    v67 = v135;
    goto LABEL_27;
  }

LABEL_6:
  while (1)
  {
    v51 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      break;
    }

    if (v51 >= v45)
    {

      return;
    }

    v44 = *(v41 + 8 * v51);
    ++v50;
    if (v44)
    {
      v50 = v51;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
}

void CanvasFormattingProxy.bold.getter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v60 = &v57 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  v58 = *(v5 - 8);
  v59 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v57 = &v57 - v6;
  v7 = *(a1 + 16);
  v65 = *(a1 + 24);
  v66 = v7;
  v64 = type metadata accessor for Capsule();
  v8 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v57 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v57 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v70 = &v57 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v73 = &v57 - v20;
  v67 = v1;
  v21 = *(v1 + 8);
  v22 = v21 + 56;
  v23 = 1 << *(v21 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v21 + 56);
  v26 = (v23 + 63) >> 6;
  v71 = v16 + 32;
  v72 = v16 + 16;
  v62 = (v8 + 8);
  v74 = (v16 + 8);
  v75 = v21;

  v27 = 0;
  v68 = v18;
  v69 = v15;
  v61 = v16;
  if (v25)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
      return;
    }

    if (v28 >= v26)
    {

      return;
    }

    v25 = *(v22 + 8 * v28);
    ++v27;
  }

  while (!v25);
  while (1)
  {
    v29 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v30 = v73;
    (*(v16 + 16))(v73, *(v75 + 48) + *(v16 + 72) * (v29 | (v28 << 6)), v15);
    (*(v16 + 32))(v18, v30, v15);
    v31 = v18;
    WeakTagged_10.tagged6.getter();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGMR);
    v33 = *(v32 - 8);
    if ((*(v33 + 48))(v12, 1, v32) == 1)
    {
      (*v74)(v31, v15);
      outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
      v27 = v28;
      v18 = v31;
      if (!v25)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    v34 = v12;
    v35 = v63;
    Canvas.updatablePaper2.getter(v63);
    v36 = v70;
    WeakRef.subscript.getter();
    v37 = v35;
    v12 = v34;
    (*v62)(v37, v64);
    (*(v33 + 8))(v34, v32);
    v38 = type metadata accessor for Shape(0);
    if ((*(*(v38 - 8) + 48))(v36, 1, v38) != 1)
    {
      break;
    }

    v18 = v68;
    v39 = v69;
    (*v74)(v68, v69);
    v40 = v36;
    v15 = v39;
    outlined destroy of StocksKitCurrencyCache.Provider?(v40, &_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
    v27 = v28;
    v16 = v61;
    if (!v25)
    {
      goto LABEL_7;
    }

LABEL_6:
    v28 = v27;
  }

  v42 = v57;
  v41 = v58;
  v43 = v59;
  (*(v58 + 16))(v57, v36 + *(v38 + 52), v59);
  v44 = CRAttributedString.attributedString.getter();
  v45 = [v44 string];

  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v47;

  if (v46 || v48 != 0xE000000000000000)
  {
    v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*(v41 + 8))(v42, v43);
    v49 = v60;
    if (v50)
    {
      goto LABEL_19;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMd, &_ss23_ContiguousArrayStorageCy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMR);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMR);
    v54 = *(v53 - 8);
    v55 = (*(v54 + 80) + 32) & ~*(v54 + 80);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_1D4058CF0;
    CRAttributedString.runs.getter();
    Array<A>.textStyles.getter(v56);

    swift_setDeallocating();
    (*(v54 + 8))(v56 + v55, v53);
    swift_deallocClassInstance();
  }

  else
  {

    (*(v41 + 8))(v42, v43);
    v49 = v60;
LABEL_19:
    off_1F4F6C320(v38);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMR);
    v52 = *(v51 - 8);
    if ((*(v52 + 48))(v49, 1, v51) == 1)
    {

      outlined destroy of StocksKitCurrencyCache.Provider?(v49, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
    }

    else
    {
      CRAttributedString.Attributes<>.textStyles.getter();

      (*(v52 + 8))(v49, v51);
    }
  }

  outlined destroy of Shape(v36, type metadata accessor for Shape);
  (*v74)(v68, v69);
}

void CanvasFormattingProxy.italic.getter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v60 = &v57 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  v58 = *(v5 - 8);
  v59 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v57 = &v57 - v6;
  v7 = *(a1 + 16);
  v65 = *(a1 + 24);
  v66 = v7;
  v64 = type metadata accessor for Capsule();
  v8 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v57 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v57 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v70 = &v57 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v73 = &v57 - v20;
  v67 = v1;
  v21 = *(v1 + 8);
  v22 = v21 + 56;
  v23 = 1 << *(v21 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v21 + 56);
  v26 = (v23 + 63) >> 6;
  v71 = v16 + 32;
  v72 = v16 + 16;
  v62 = (v8 + 8);
  v74 = (v16 + 8);
  v75 = v21;

  v27 = 0;
  v68 = v18;
  v69 = v15;
  v61 = v16;
  if (v25)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
      return;
    }

    if (v28 >= v26)
    {

      return;
    }

    v25 = *(v22 + 8 * v28);
    ++v27;
  }

  while (!v25);
  while (1)
  {
    v29 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v30 = v73;
    (*(v16 + 16))(v73, *(v75 + 48) + *(v16 + 72) * (v29 | (v28 << 6)), v15);
    (*(v16 + 32))(v18, v30, v15);
    v31 = v18;
    WeakTagged_10.tagged6.getter();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGMR);
    v33 = *(v32 - 8);
    if ((*(v33 + 48))(v12, 1, v32) == 1)
    {
      (*v74)(v31, v15);
      outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
      v27 = v28;
      v18 = v31;
      if (!v25)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    v34 = v12;
    v35 = v63;
    Canvas.updatablePaper2.getter(v63);
    v36 = v70;
    WeakRef.subscript.getter();
    v37 = v35;
    v12 = v34;
    (*v62)(v37, v64);
    (*(v33 + 8))(v34, v32);
    v38 = type metadata accessor for Shape(0);
    if ((*(*(v38 - 8) + 48))(v36, 1, v38) != 1)
    {
      break;
    }

    v18 = v68;
    v39 = v69;
    (*v74)(v68, v69);
    v40 = v36;
    v15 = v39;
    outlined destroy of StocksKitCurrencyCache.Provider?(v40, &_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
    v27 = v28;
    v16 = v61;
    if (!v25)
    {
      goto LABEL_7;
    }

LABEL_6:
    v28 = v27;
  }

  v42 = v57;
  v41 = v58;
  v43 = v59;
  (*(v58 + 16))(v57, v36 + *(v38 + 52), v59);
  v44 = CRAttributedString.attributedString.getter();
  v45 = [v44 string];

  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v47;

  if (v46 || v48 != 0xE000000000000000)
  {
    v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*(v41 + 8))(v42, v43);
    v49 = v60;
    if (v50)
    {
      goto LABEL_19;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMd, &_ss23_ContiguousArrayStorageCy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMR);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMR);
    v54 = *(v53 - 8);
    v55 = (*(v54 + 80) + 32) & ~*(v54 + 80);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_1D4058CF0;
    CRAttributedString.runs.getter();
    Array<A>.textStyles.getter(v56);

    swift_setDeallocating();
    (*(v54 + 8))(v56 + v55, v53);
    swift_deallocClassInstance();
  }

  else
  {

    (*(v41 + 8))(v42, v43);
    v49 = v60;
LABEL_19:
    off_1F4F6C320(v38);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMR);
    v52 = *(v51 - 8);
    if ((*(v52 + 48))(v49, 1, v51) == 1)
    {

      outlined destroy of StocksKitCurrencyCache.Provider?(v49, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
    }

    else
    {
      CRAttributedString.Attributes<>.textStyles.getter();

      (*(v52 + 8))(v49, v51);
    }
  }

  outlined destroy of Shape(v36, type metadata accessor for Shape);
  (*v74)(v68, v69);
}

void closure #1 in closure #1 in CanvasFormattingProxy.bold.setter(void *a1, uint64_t a2, int a3, uint64_t a4, void *a5)
{
  v236 = a5;
  v235 = a3;
  v201 = a2;
  v214 = a1;
  v191 = *a1;
  v192 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v200 = &v176 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v188 = &v176 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v187 = &v176 - v10;
  v260 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMR);
  v11 = *(v260 - 8);
  MEMORY[0x1EEE9AC00](v260 - 8);
  v208 = &v176 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v243 = &v176 - v14;
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMR);
  *&v248 = *(v246 - 8);
  MEMORY[0x1EEE9AC00](v246 - 8);
  v245 = &v176 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v231 = &v176 - v17;
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV9SubstringVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV9SubstringVy8PaperKit18TextAttributeScopeV_GMR);
  *&v244 = *(v230 - 8);
  MEMORY[0x1EEE9AC00](v230);
  v182 = &v176 - v18;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMR);
  v241 = *(v233 - 8);
  MEMORY[0x1EEE9AC00](v233);
  v232 = &v176 - v19;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  v20 = *(v240 - 8);
  MEMORY[0x1EEE9AC00](v240 - 8);
  v179 = &v176 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v189 = &v176 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v184 = &v176 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v207 = &v176 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v183 = &v176 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v176 - v31;
  v215 = type metadata accessor for Shape(0);
  v33 = *(v215 - 8);
  MEMORY[0x1EEE9AC00](v215);
  v35 = &v176 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v38 = &v176 - v37;
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGMR);
  v39 = *(v242 - 8);
  MEMORY[0x1EEE9AC00](v242);
  v218 = &v176 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  MEMORY[0x1EEE9AC00](v41);
  v238 = &v176 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v227 = &v176 - v46;
  v47 = *(v201 + 8);
  v48 = v47 + 56;
  v49 = 1 << *(v47 + 32);
  v50 = -1;
  if (v49 < 64)
  {
    v50 = ~(-1 << v49);
  }

  v247 = v50 & *(v47 + 56);
  v51 = (v49 + 63) >> 6;
  v225 = v45 + 32;
  v226 = v45 + 16;
  v224 = (v39 + 48);
  v206 = (v39 + 32);
  v213 = (v33 + 48);
  v202 = (v20 + 8);
  v203 = (v20 + 16);
  v229 = (v248 + 48);
  v234 = (v11 + 8);
  v219 = (v248 + 8);
  v220 = (v248 + 32);
  v180 = (v241 + 8);
  v181 = (v244 + 8);
  v197 = (v11 + 48);
  v190 = (v11 + 32);
  v185 = (v11 + 16);
  v186 = (v11 + 56);
  v52 = v44;
  v204 = (v39 + 8);
  v228 = v45;
  v221 = (v45 + 8);
  v237 = v47;

  v53 = 0;
  v196 = xmmword_1D405D330;
  v222 = v51;
  v223 = v48;
  v198 = v32;
  v209 = v35;
  v239 = v38;
  v205 = v52;
  v54 = v247;
  if (v247)
  {
    while (1)
    {
LABEL_8:
      while (1)
      {
        v247 = (v54 - 1) & v54;
        v57 = v227;
        v56 = v228;
        (*(v228 + 16))(v227, *(v237 + 48) + *(v228 + 72) * (__clz(__rbit64(v54)) | (v53 << 6)), v52);
        v58 = v238;
        (*(v56 + 32))(v238, v57, v52);
        WeakTagged_10.tagged6.getter();
        v59 = v239;
        v60 = v242;
        if ((*v224)(v239, 1, v242) != 1)
        {
          break;
        }

        (*v221)(v58, v52);
        outlined destroy of StocksKitCurrencyCache.Provider?(v59, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
LABEL_12:
        v51 = v222;
        v48 = v223;
        v54 = v247;
        if (!v247)
        {
          goto LABEL_4;
        }
      }

      v61 = v218;
      (*v206)(v218, v59, v60);
      WeakRef.subscript.getter();
      v62 = *v213;
      v63 = v215;
      if ((*v213)(v32, 1, v215) == 1)
      {
        (*v204)(v61, v60);
        v52 = v205;
        (*v221)(v238, v205);
        outlined destroy of StocksKitCurrencyCache.Provider?(v32, &_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
        goto LABEL_12;
      }

      v64 = v209;
      _s8PaperKit5ShapeVWObTm_3(v32, v209, type metadata accessor for Shape);
      v65 = v64 + *(v63 + 52);
      v195 = *v203;
      v195(v207, v65, v240);
      v66 = CRAttributedString.attributedString.getter();
      v67 = [v66 string];

      v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v70 = v69;

      v199 = v62;
      if (!v68 && v70 == 0xE000000000000000)
      {

        (*v202)(v207, v240);
        v71 = v200;
        v72 = v260;
        goto LABEL_81;
      }

      v73 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v74 = *v202;
      (*v202)(v207, v240);
      v71 = v200;
      v72 = v260;
      if ((v73 & 1) == 0)
      {
        break;
      }

LABEL_81:
      *&v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd, &_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMR);
      CRRegister.wrappedValue.getter();
      v153 = *v197;
      if ((*v197)(v71, 1, v72) == 1)
      {
        type metadata accessor for CanvasFormattingProxy(0, *(v191 + *MEMORY[0x1E6995440]), *(v191 + *MEMORY[0x1E6995440] + 8), v192);
        CanvasFormattingProxy.defaultEmptyTextBoxAttribues(for:)(v208);
        if (v153(v71, 1, v72) != 1)
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(v71, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
        }
      }

      else
      {
        (*v190)(v208, v71, v72);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      lazy protocol witness table accessor for type TextAttributeScope.FontAttribute and conformance TextAttributeScope.FontAttribute();
      CRAttributedString.Attributes.subscript.getter();

      if (*v255 == 1)
      {
        if (one-time initialization token for textBoxDefaultFont != -1)
        {
          swift_once();
        }

        Font.init(_:)(&v258, static UIConstants.textBoxDefaultFont);
        if ((v235 & 1) == 0)
        {
LABEL_89:
          v154 = v236;
          swift_beginAccess();
          rawValue = v258.traits.rawValue;
          if ((v258.traits.rawValue & *v154) == 0)
          {
            goto LABEL_95;
          }

          rawValue = v258.traits.rawValue & ~*v154;
          goto LABEL_94;
        }
      }

      else
      {
        v258._name.value._countAndFlagsBits = v254;
        v258._name.value._object = *v255;
        v258._familyName = *&v255[8];
        LODWORD(v258.pointSize) = v256;
        v258.traits.rawValue = v257;
        if ((v235 & 1) == 0)
        {
          goto LABEL_89;
        }
      }

      v156 = v236;
      swift_beginAccess();
      rawValue = v258.traits.rawValue;
      if ((*v156 & ~v258.traits.rawValue) == 0)
      {
        goto LABEL_95;
      }

      rawValue = v258.traits.rawValue | *v156;
LABEL_94:
      v258.traits.rawValue = rawValue;
LABEL_95:
      countAndFlagsBits = v258._name.value._countAndFlagsBits;
      v248 = *&v258._name.value._object;
      *v255 = *&v258._name.value._object;
      v254 = v258._name.value._countAndFlagsBits;
      *&v255[16] = v258._familyName.value._object;
      *&v256 = v258.pointSize;
      v257 = rawValue;
      v158 = Font.platformFont.getter();
      v159 = [v158 fontName];

      v160 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v162 = v161;

      if (v248 && (v160 == countAndFlagsBits && v248 == v162 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
      }

      else
      {

        v163._countAndFlagsBits = 46;
        v163._object = 0xE100000000000000;
        v164 = String.hasPrefix(_:)(v163);

        if (v164)
        {

          v160 = 0;
          v162 = 0;
        }

        v258._name.value._countAndFlagsBits = v160;
        v258._name.value._object = v162;
        v249 = v160;
        v250 = v162;
        familyName = v258._familyName;
        pointSize = v258.pointSize;
        v253 = v258.traits.rawValue;
        v165 = Font.platformFont.getter();
        v166 = [v165 familyName];

        v167 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v169 = v168;

        Font.familyName.setter(v167, v169);
      }

      *&v258.pointSize = LODWORD(v258.pointSize);
      v170 = v260;
      v171 = v208;
      CRAttributedString.Attributes.subscript.setter();
      v172 = v218;
      v173 = WeakRef.subscript.modify();
      if (!v199(v174, 1, v215))
      {
        v175 = v187;
        (*v185)(v187, v171, v170);
        (*v186)(v175, 0, 1, v170);
        outlined init with copy of Date?(v175, v188, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
        v170 = v260;
        CRRegister.wrappedValue.setter();
        v172 = v218;
        v171 = v208;
        outlined destroy of StocksKitCurrencyCache.Provider?(v175, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
      }

      v173(&v258, 0);
      v51 = v222;
      (*v234)(v171, v170);
      outlined destroy of Shape(v209, type metadata accessor for Shape);
      (*v204)(v172, v242);
      v52 = v205;
      (*v221)(v238, v205);
      v32 = v198;
      v48 = v223;
      v54 = v247;
      if (!v247)
      {
        goto LABEL_4;
      }
    }

    v178 = v74;
    v75 = v183;
    WeakRef.subscript.getter();
    if (v62(v75, 1, v63) == 1)
    {
      goto LABEL_117;
    }

    v76 = v184;
    v77 = v240;
    v195(v184, v75 + *(v63 + 52), v240);
    outlined destroy of Shape(v75, type metadata accessor for Shape);
    CRAttributedString.count.getter();
    v178(v76, v77);
    KeyPath = swift_getKeyPath();
    v78 = WeakRef.subscript.modify();
    v80 = v79;
    if (v199(v79, 1, v63) == 1)
    {
      goto LABEL_116;
    }

    v81 = *(v63 + 52);
    v82 = NSNotFound.getter();
    v83 = v245;
    v84 = v246;
    if (!v82)
    {
      goto LABEL_114;
    }

    v177 = v78;
    v216 = v81;
    v85 = v182;
    CRAttributedString.subscript.getter();
    v86 = v230;
    CRAttributedString.Substring.runs.getter();
    (*v181)(v85, v86);
    v87 = v231;
    CRAttributedString.Runs.next()();
    v211 = *v229;
    v88 = v211(v87, 1, v84);
    *&v248 = MEMORY[0x1E69E7CC0];
    v212 = v80;
    if (v88 == 1)
    {
LABEL_22:
      (*v180)(v232, v233);

      v89 = v216;
      v90 = v240;
      v195(v189, &v80[v216], v240);
      v91 = CRAttributedString.attributedString.getter();
      v92 = [v91 string];

      v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v95 = v94;

      if (v93 || v95 != 0xE000000000000000)
      {
        v138 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v139 = v178;
        v178(v189, v90);
        v71 = v200;
        v72 = v260;
        if ((v138 & 1) == 0)
        {
          v140 = v212;
          v141 = &v212[v89];
          v142 = v184;
          v143 = v89;
          v144 = v240;
          v145 = v195;
          v195(v184, v141, v240);
          v146 = &v140[v143];
          v147 = v179;
          v145(v179, v146, v144);
          v148 = CRAttributedString.attributedString.getter();
          v139(v147, v144);
          v149 = [v148 length];

          if (__OFSUB__(v149, 1))
          {
            goto LABEL_115;
          }

          v150 = v187;
          CRAttributedString.attributes(at:effectiveRange:)();
          v139(v142, v144);
          v151 = v260;
          (*v186)(v150, 0, 1, v260);
          outlined init with copy of Date?(v150, v188, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd, &_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMR);
          CRRegister.wrappedValue.setter();
          v152 = v150;
          v72 = v151;
          outlined destroy of StocksKitCurrencyCache.Provider?(v152, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
          v71 = v200;
        }
      }

      else
      {

        v178(v189, v90);
        v71 = v200;
        v72 = v260;
      }

      v177(v259, 0);
      goto LABEL_81;
    }

    v210 = *v220;
    *&v248 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v210(v83, v87, v84);
      CRAttributedString.Runs.Run.attributes.getter();
      swift_getKeyPath();
      v96 = lazy protocol witness table accessor for type TextAttributeScope.FontAttribute and conformance TextAttributeScope.FontAttribute();
      CRAttributedString.Attributes.subscript.getter();

      if (*v255 == 1)
      {
        if (one-time initialization token for textBoxDefaultFont != -1)
        {
          swift_once();
        }

        Font.init(_:)(&v258, static UIConstants.textBoxDefaultFont);
        if ((v235 & 1) == 0)
        {
LABEL_30:
          v97 = v236;
          swift_beginAccess();
          v98 = v258.traits.rawValue;
          if ((v258.traits.rawValue & *v97) != 0)
          {
            v98 = v258.traits.rawValue & ~*v97;
LABEL_35:
            v258.traits.rawValue = v98;
            goto LABEL_36;
          }

          goto LABEL_36;
        }
      }

      else
      {
        v258._name.value._countAndFlagsBits = v254;
        v258._name.value._object = *v255;
        v258._familyName = *&v255[8];
        LODWORD(v258.pointSize) = v256;
        v258.traits.rawValue = v257;
        if ((v235 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      v99 = v236;
      swift_beginAccess();
      v98 = v258.traits.rawValue;
      if ((*v99 & ~v258.traits.rawValue) != 0)
      {
        v98 = v258.traits.rawValue | *v99;
        goto LABEL_35;
      }

LABEL_36:
      v100 = v258._name.value._countAndFlagsBits;
      v244 = *&v258._name.value._object;
      *v255 = *&v258._name.value._object;
      v254 = v258._name.value._countAndFlagsBits;
      *&v255[16] = v258._familyName.value._object;
      *&v256 = v258.pointSize;
      v257 = v98;
      v101 = Font.platformFont.getter();
      v102 = [v101 fontName];

      v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v105 = v104;

      v241 = v96;
      if (v244 && (v103 == v100 && v244 == v105 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
      }

      else
      {

        v106._countAndFlagsBits = 46;
        v106._object = 0xE100000000000000;
        v107 = String.hasPrefix(_:)(v106);

        if (v107)
        {

          v103 = 0;
          v105 = 0;
        }

        v258._name.value._countAndFlagsBits = v103;
        v258._name.value._object = v105;
        v249 = v103;
        v250 = v105;
        familyName = v258._familyName;
        pointSize = v258.pointSize;
        v253 = v258.traits.rawValue;
        v108 = Font.platformFont.getter();
        v109 = [v108 familyName];

        v110 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v112 = v111;

        Font.familyName.setter(v110, v112);
      }

      v113 = v258._name.value._countAndFlagsBits;
      object = v258._name.value._object;
      v116 = v258._familyName.value._countAndFlagsBits;
      v115 = v258._familyName.value._object;
      v117 = v258.pointSize;
      v118 = v258.traits.rawValue;
      (*v234)(v243, v260);
      v119 = CRAttributedString.Runs.Run.range.getter();
      v121 = v120 - v119;
      if (__OFSUB__(v120, v119))
      {
        goto LABEL_109;
      }

      v122 = v119;
      *&v244 = v120 - v119;
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
        v121 = v244;
      }

      v123 = qword_1EC7A2EB8;
      v124 = qword_1EC7A2EC0;
      v125 = *&dword_1EC7A2EC8;
      v126 = qword_1EC7A2ED0;
      if (object)
      {
        if (!qword_1EC7A2EB0)
        {
          goto LABEL_68;
        }

        if (v113 != static TextAttributeScope.FontAttribute.defaultValue || object != qword_1EC7A2EB0)
        {
          v193 = qword_1EC7A2EB8;
          v194 = qword_1EC7A2ED0;
          v127 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v123 = v193;
          v126 = v194;
          v121 = v244;
          if ((v127 & 1) == 0)
          {
            goto LABEL_68;
          }
        }
      }

      else if (qword_1EC7A2EB0)
      {
        goto LABEL_68;
      }

      if (v115)
      {
        if (!v124)
        {
          goto LABEL_68;
        }

        if (v116 != v123 || v115 != v124)
        {
          v128 = v126;
          v129 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v121 = v244;
          if ((v129 & 1) != 0 && v117 == v125 && v118 == v128)
          {
            goto LABEL_65;
          }

          goto LABEL_68;
        }
      }

      else if (v124)
      {
        goto LABEL_68;
      }

      if (v117 == v125 && v118 == v126)
      {
LABEL_65:
        if (__OFADD__(v122, v121))
        {
          goto LABEL_112;
        }

        if (v122 + v121 < v122)
        {
          goto LABEL_113;
        }

        v258._name = v196;
        memset(&v258._familyName, 0, 32);

        v80 = v212;
        v130 = CRAttributedString.subscript.modify();
        CRAttributedString.Substring.subscript.setter();
        v130(&v254, 0);

        goto LABEL_71;
      }

LABEL_68:
      if (__OFADD__(v122, v121))
      {
        goto LABEL_110;
      }

      if (v122 + v121 < v122)
      {
        goto LABEL_111;
      }

      v258._name.value._countAndFlagsBits = v113;
      v258._name.value._object = object;
      v258._familyName.value._countAndFlagsBits = v116;
      v258._familyName.value._object = v115;
      *&v258.pointSize = LODWORD(v117);
      v258.traits.rawValue = v118;

      v80 = v212;
      v131 = CRAttributedString.subscript.modify();
      CRAttributedString.Substring.subscript.setter();
      v131(&v254, 0);

LABEL_71:

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v84 = v246;
      v83 = v245;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        *&v248 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v248 + 16) + 1, 1, v248);
      }

      v134 = *(v248 + 16);
      v133 = *(v248 + 24);
      if (v134 >= v133 >> 1)
      {
        *&v248 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v133 > 1), v134 + 1, 1, v248);
      }

      (*v219)(v83, v84);
      v135 = v248;
      *(v248 + 16) = v134 + 1;
      v136 = v135 + 16 * v134;
      v137 = v244;
      *(v136 + 32) = v122;
      *(v136 + 40) = v137;
      v87 = v231;
      CRAttributedString.Runs.next()();
      if (v211(v87, 1, v84) == 1)
      {
        goto LABEL_22;
      }
    }
  }

LABEL_4:
  while (1)
  {
    v55 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      break;
    }

    if (v55 >= v51)
    {

      return;
    }

    v54 = *(v48 + 8 * v55);
    ++v53;
    if (v54)
    {
      v53 = v55;
      goto LABEL_8;
    }
  }

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
}

void CanvasFormattingProxy.underline.getter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v60 = &v57 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  v58 = *(v5 - 8);
  v59 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v57 = &v57 - v6;
  v7 = *(a1 + 16);
  v65 = *(a1 + 24);
  v66 = v7;
  v64 = type metadata accessor for Capsule();
  v8 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v57 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v57 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v70 = &v57 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v73 = &v57 - v20;
  v67 = v1;
  v21 = *(v1 + 8);
  v22 = v21 + 56;
  v23 = 1 << *(v21 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v21 + 56);
  v26 = (v23 + 63) >> 6;
  v71 = v16 + 32;
  v72 = v16 + 16;
  v62 = (v8 + 8);
  v74 = (v16 + 8);
  v75 = v21;

  v27 = 0;
  v68 = v18;
  v69 = v15;
  v61 = v16;
  if (v25)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
      return;
    }

    if (v28 >= v26)
    {

      return;
    }

    v25 = *(v22 + 8 * v28);
    ++v27;
  }

  while (!v25);
  while (1)
  {
    v29 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v30 = v73;
    (*(v16 + 16))(v73, *(v75 + 48) + *(v16 + 72) * (v29 | (v28 << 6)), v15);
    (*(v16 + 32))(v18, v30, v15);
    v31 = v18;
    WeakTagged_10.tagged6.getter();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGMR);
    v33 = *(v32 - 8);
    if ((*(v33 + 48))(v12, 1, v32) == 1)
    {
      (*v74)(v31, v15);
      outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
      v27 = v28;
      v18 = v31;
      if (!v25)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    v34 = v12;
    v35 = v63;
    Canvas.updatablePaper2.getter(v63);
    v36 = v70;
    WeakRef.subscript.getter();
    v37 = v35;
    v12 = v34;
    (*v62)(v37, v64);
    (*(v33 + 8))(v34, v32);
    v38 = type metadata accessor for Shape(0);
    if ((*(*(v38 - 8) + 48))(v36, 1, v38) != 1)
    {
      break;
    }

    v18 = v68;
    v39 = v69;
    (*v74)(v68, v69);
    v40 = v36;
    v15 = v39;
    outlined destroy of StocksKitCurrencyCache.Provider?(v40, &_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
    v27 = v28;
    v16 = v61;
    if (!v25)
    {
      goto LABEL_7;
    }

LABEL_6:
    v28 = v27;
  }

  v42 = v57;
  v41 = v58;
  v43 = v59;
  (*(v58 + 16))(v57, v36 + *(v38 + 52), v59);
  v44 = CRAttributedString.attributedString.getter();
  v45 = [v44 string];

  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v47;

  if (v46 || v48 != 0xE000000000000000)
  {
    v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*(v41 + 8))(v42, v43);
    v49 = v60;
    if (v50)
    {
      goto LABEL_19;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMd, &_ss23_ContiguousArrayStorageCy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMR);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMR);
    v54 = *(v53 - 8);
    v55 = (*(v54 + 80) + 32) & ~*(v54 + 80);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_1D4058CF0;
    CRAttributedString.runs.getter();
    Array<A>.textStyles.getter(v56);

    swift_setDeallocating();
    (*(v54 + 8))(v56 + v55, v53);
    swift_deallocClassInstance();
  }

  else
  {

    (*(v41 + 8))(v42, v43);
    v49 = v60;
LABEL_19:
    off_1F4F6C320(v38);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMR);
    v52 = *(v51 - 8);
    if ((*(v52 + 48))(v49, 1, v51) == 1)
    {

      outlined destroy of StocksKitCurrencyCache.Provider?(v49, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
    }

    else
    {
      CRAttributedString.Attributes<>.textStyles.getter();

      (*(v52 + 8))(v49, v51);
    }
  }

  outlined destroy of Shape(v36, type metadata accessor for Shape);
  (*v74)(v68, v69);
}

void CanvasFormattingProxy.strikethrough.getter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v60 = &v57 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  v58 = *(v5 - 8);
  v59 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v57 = &v57 - v6;
  v7 = *(a1 + 16);
  v65 = *(a1 + 24);
  v66 = v7;
  v64 = type metadata accessor for Capsule();
  v8 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v57 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v57 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v70 = &v57 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v73 = &v57 - v20;
  v67 = v1;
  v21 = *(v1 + 8);
  v22 = v21 + 56;
  v23 = 1 << *(v21 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v21 + 56);
  v26 = (v23 + 63) >> 6;
  v71 = v16 + 32;
  v72 = v16 + 16;
  v62 = (v8 + 8);
  v74 = (v16 + 8);
  v75 = v21;

  v27 = 0;
  v68 = v18;
  v69 = v15;
  v61 = v16;
  if (v25)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
      return;
    }

    if (v28 >= v26)
    {

      return;
    }

    v25 = *(v22 + 8 * v28);
    ++v27;
  }

  while (!v25);
  while (1)
  {
    v29 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v30 = v73;
    (*(v16 + 16))(v73, *(v75 + 48) + *(v16 + 72) * (v29 | (v28 << 6)), v15);
    (*(v16 + 32))(v18, v30, v15);
    v31 = v18;
    WeakTagged_10.tagged6.getter();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGMR);
    v33 = *(v32 - 8);
    if ((*(v33 + 48))(v12, 1, v32) == 1)
    {
      (*v74)(v31, v15);
      outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
      v27 = v28;
      v18 = v31;
      if (!v25)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    v34 = v12;
    v35 = v63;
    Canvas.updatablePaper2.getter(v63);
    v36 = v70;
    WeakRef.subscript.getter();
    v37 = v35;
    v12 = v34;
    (*v62)(v37, v64);
    (*(v33 + 8))(v34, v32);
    v38 = type metadata accessor for Shape(0);
    if ((*(*(v38 - 8) + 48))(v36, 1, v38) != 1)
    {
      break;
    }

    v18 = v68;
    v39 = v69;
    (*v74)(v68, v69);
    v40 = v36;
    v15 = v39;
    outlined destroy of StocksKitCurrencyCache.Provider?(v40, &_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
    v27 = v28;
    v16 = v61;
    if (!v25)
    {
      goto LABEL_7;
    }

LABEL_6:
    v28 = v27;
  }

  v42 = v57;
  v41 = v58;
  v43 = v59;
  (*(v58 + 16))(v57, v36 + *(v38 + 52), v59);
  v44 = CRAttributedString.attributedString.getter();
  v45 = [v44 string];

  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v47;

  if (v46 || v48 != 0xE000000000000000)
  {
    v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*(v41 + 8))(v42, v43);
    v49 = v60;
    if (v50)
    {
      goto LABEL_19;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMd, &_ss23_ContiguousArrayStorageCy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMR);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMR);
    v54 = *(v53 - 8);
    v55 = (*(v54 + 80) + 32) & ~*(v54 + 80);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_1D4058CF0;
    CRAttributedString.runs.getter();
    Array<A>.textStyles.getter(v56);

    swift_setDeallocating();
    (*(v54 + 8))(v56 + v55, v53);
    swift_deallocClassInstance();
  }

  else
  {

    (*(v41 + 8))(v42, v43);
    v49 = v60;
LABEL_19:
    off_1F4F6C320(v38);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMR);
    v52 = *(v51 - 8);
    if ((*(v52 + 48))(v49, 1, v51) == 1)
    {

      outlined destroy of StocksKitCurrencyCache.Provider?(v49, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
    }

    else
    {
      CRAttributedString.Attributes<>.textStyles.getter();

      (*(v52 + 8))(v49, v51);
    }
  }

  outlined destroy of Shape(v36, type metadata accessor for Shape);
  (*v74)(v68, v69);
}

void closure #1 in CanvasFormattingProxy.bold.setter(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = specialized Canvas.paperView.getter();
  swift_beginAccess();
  type metadata accessor for Capsule();
  v8 = v7;
  Capsule.callAsFunction<A>(_:)();
  swift_endAccess();
}

void closure #1 in closure #1 in CanvasFormattingProxy.underline.setter(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  v195 = a6;
  v156 = a5;
  v151 = a4;
  v203 = a3;
  v170 = a1;
  v149 = *a1;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMR);
  v7 = *(v194 - 8);
  MEMORY[0x1EEE9AC00](v194);
  v161 = &v133 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v177 = &v133 - v10;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMR);
  v11 = *(v190 - 8);
  MEMORY[0x1EEE9AC00](v190);
  v189 = &v133 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v157 = &v133 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v146 = &v133 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v145 = &v133 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMR);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v188 = &v133 - v20;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV9SubstringVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV9SubstringVy8PaperKit18TextAttributeScopeV_GMR);
  v198 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186);
  v140 = &v133 - v21;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMR);
  v185 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192);
  v191 = &v133 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v147 = &v133 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v137 = &v133 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v142 = &v133 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v166 = &v133 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v141 = &v133 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v133 - v35;
  v193 = type metadata accessor for Shape(0);
  v37 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193 - 8);
  v167 = &v133 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v41 = &v133 - v40;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGMR);
  v42 = *(v200 - 8);
  MEMORY[0x1EEE9AC00](v200);
  v175 = &v133 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  MEMORY[0x1EEE9AC00](v44);
  MEMORY[0x1EEE9AC00](v45);
  v184 = &v133 - v49;
  v150 = a2;
  v50 = *(a2 + 8);
  v51 = v50 + 56;
  v52 = 1 << *(v50 + 32);
  v53 = -1;
  if (v52 < 64)
  {
    v53 = ~(-1 << v52);
  }

  v54 = v53 & *(v50 + 56);
  v199 = (v52 + 63) >> 6;
  v183 = v47 + 16;
  v182 = v47 + 32;
  v181 = (v42 + 48);
  v165 = (v42 + 32);
  v174 = (v37 + 48);
  v160 = (v24 + 16);
  v159 = (v24 + 8);
  v55 = v46;
  v139 = (v198 + 8);
  v187 = (v11 + 48);
  v178 = (v11 + 32);
  v196 = (v7 + 8);
  v176 = (v11 + 8);
  v138 = (v185 + 8);
  v144 = (v7 + 56);
  v153 = (v7 + 48);
  v148 = (v7 + 32);
  v152 = v203 & 1;
  v143 = (v7 + 16);
  v56 = v48;
  v162 = (v42 + 8);
  v57 = v194;
  v185 = v47;
  v179 = (v47 + 8);
  v198 = v50;

  v58 = 0;
  v197 = v23;
  v180 = v51;
  v155 = v36;
  v154 = v41;
  v164 = v55;
  v163 = v56;
  while (v54)
  {
LABEL_12:
    v63 = __clz(__rbit64(v54));
    v54 &= v54 - 1;
    v64 = v185;
    v65 = v184;
    (*(v185 + 16))(v184, *(v198 + 48) + *(v185 + 72) * (v63 | (v58 << 6)), v55);
    (*(v64 + 32))(v56, v65, v55);
    WeakTagged_10.tagged6.getter();
    v66 = v200;
    if ((*v181)(v41, 1, v200) == 1)
    {
      (*v179)(v56, v55);
      v59 = v41;
      v60 = &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd;
      v61 = &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR;
LABEL_5:
      outlined destroy of StocksKitCurrencyCache.Provider?(v59, v60, v61);
      goto LABEL_6;
    }

    v67 = v175;
    (*v165)(v175, v41, v66);
    WeakRef.subscript.getter();
    v68 = *v174;
    v69 = v193;
    if ((*v174)(v36, 1, v193) == 1)
    {
      (*v162)(v67, v66);
      v56 = v163;
      v55 = v164;
      (*v179)(v163, v164);
      v59 = v36;
      v60 = &_s8PaperKit5ShapeVSgMd;
      v61 = &_s8PaperKit5ShapeVSgMR;
      goto LABEL_5;
    }

    v158 = v68;
    v70 = v167;
    _s8PaperKit5ShapeVWObTm_3(v36, v167, type metadata accessor for Shape);
    v71 = *v160;
    v72 = v70 + *(v69 + 52);
    v73 = v197;
    (*v160)(v166, v72, v197);
    v74 = CRAttributedString.attributedString.getter();
    v75 = [v74 string];

    v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v78 = v77;

    v79 = v157;
    if (v76 || v78 != 0xE000000000000000)
    {
      v81 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v82 = *v159;
      (*v159)(v166, v73);
      v80 = v161;
      if ((v81 & 1) == 0)
      {
        v136 = v82;
        v135 = v71;
        v83 = v141;
        WeakRef.subscript.getter();
        v84 = v193;
        if (v158(v83, 1, v193) == 1)
        {
          goto LABEL_65;
        }

        v85 = v142;
        v135(v142, v83 + *(v84 + 52), v73);
        outlined destroy of Shape(v83, type metadata accessor for Shape);
        CRAttributedString.count.getter();
        v136(v85, v73);
        KeyPath = swift_getKeyPath();
        v86 = WeakRef.subscript.modify();
        v88 = v87;
        if (v158(v87, 1, v84) == 1)
        {
          goto LABEL_64;
        }

        v89 = *(v84 + 52);
        if (!NSNotFound.getter())
        {
          goto LABEL_62;
        }

        v134 = v86;
        v173 = v88;
        v172 = v89;
        v90 = v140;
        CRAttributedString.subscript.getter();
        v91 = v186;
        CRAttributedString.Substring.runs.getter();
        (*v139)(v90, v91);
        v92 = v188;
        CRAttributedString.Runs.next()();
        v93 = v190;
        v169 = *v187;
        v94 = v169(v92, 1, v190);
        v95 = MEMORY[0x1E69E7CC0];
        v96 = v189;
        if (v94 != 1)
        {
          v168 = *v178;
          do
          {
            v168(v96, v92, v93);
            v103 = v177;
            CRAttributedString.Runs.Run.attributes.getter();
            (*v196)(v103, v57);
            v104 = CRAttributedString.Runs.Run.range.getter();
            v106 = v105 - v104;
            if (__OFSUB__(v105, v104))
            {
              goto LABEL_57;
            }

            v107 = v104;
            v108 = __OFADD__(v104, v106);
            if (v203)
            {
              if (v108)
              {
                goto LABEL_58;
              }

              if (v105 < v104)
              {
                goto LABEL_60;
              }

              v204 = 1;
            }

            else
            {
              if (v108)
              {
                goto LABEL_59;
              }

              if (v105 < v104)
              {
                goto LABEL_61;
              }

              v204 = 2;
            }

            v109 = CRAttributedString.subscript.modify();
            v195();
            CRAttributedString.Substring.subscript.setter();
            v109(v201, 0);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v95 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v95 + 2) + 1, 1, v95);
            }

            v111 = *(v95 + 2);
            v110 = *(v95 + 3);
            if (v111 >= v110 >> 1)
            {
              v95 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v110 > 1), v111 + 1, 1, v95);
            }

            v96 = v189;
            v93 = v190;
            (*v176)(v189, v190);
            *(v95 + 2) = v111 + 1;
            v112 = &v95[16 * v111];
            *(v112 + 4) = v107;
            *(v112 + 5) = v106;
            v92 = v188;
            CRAttributedString.Runs.next()();
            v113 = v169(v92, 1, v93);
            v57 = v194;
            v73 = v197;
          }

          while (v113 != 1);
        }

        (*v138)(v191, v192);

        v97 = v135;
        v135(v147, v173 + v172, v73);
        v98 = CRAttributedString.attributedString.getter();
        v99 = [v98 string];

        v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v102 = v101;

        if (v100 || v102 != 0xE000000000000000)
        {
          v114 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v136(v147, v73);
          v80 = v161;
          v79 = v157;
          if ((v114 & 1) == 0)
          {
            v115 = v173;
            v116 = v172;
            v97(v142, v173 + v172, v73);
            v117 = v115 + v116;
            v118 = v137;
            v97(v137, v117, v73);
            v119 = CRAttributedString.attributedString.getter();
            v120 = v136;
            v136(v118, v73);
            v121 = [v119 length];

            if (__OFSUB__(v121, 1))
            {
              goto LABEL_63;
            }

            v122 = v145;
            v123 = v142;
            CRAttributedString.attributes(at:effectiveRange:)();
            v120(v123, v73);
            (*v144)(v122, 0, 1, v57);
            outlined init with copy of Date?(v122, v146, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd, &_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMR);
            CRRegister.wrappedValue.setter();
            outlined destroy of StocksKitCurrencyCache.Provider?(v122, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
            v80 = v161;
          }
        }

        else
        {

          v136(v147, v73);
          v80 = v161;
          v79 = v157;
        }

        v134(v202, 0);
      }
    }

    else
    {

      (*v159)(v166, v73);
      v80 = v161;
    }

    v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd, &_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMR);
    v125 = v167;
    v173 = v124;
    CRRegister.wrappedValue.getter();
    v126 = *v153;
    if ((*v153)(v79, 1, v57) == 1)
    {
      type metadata accessor for CanvasFormattingProxy(0, *(v149 + *MEMORY[0x1E6995440]), *(v149 + *MEMORY[0x1E6995440] + 8), v151);
      CanvasFormattingProxy.defaultEmptyTextBoxAttribues(for:)(v80);
      v127 = v126(v79, 1, v57);
      v125 = v167;
      if (v127 != 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v79, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
      }
    }

    else
    {
      (*v148)(v80, v79, v57);
    }

    swift_getKeyPath();
    v202[0] = v152;
    v195();
    CRAttributedString.Attributes.subscript.setter();
    v128 = v175;
    v129 = WeakRef.subscript.modify();
    if (!v158(v130, 1, v193))
    {
      v131 = v145;
      (*v143)(v145, v80, v57);
      (*v144)(v131, 0, 1, v57);
      outlined init with copy of Date?(v131, v146, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
      CRRegister.wrappedValue.setter();
      v132 = v131;
      v125 = v167;
      v80 = v161;
      v128 = v175;
      outlined destroy of StocksKitCurrencyCache.Provider?(v132, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
    }

    v129(v202, 0);
    (*v196)(v80, v57);
    outlined destroy of Shape(v125, type metadata accessor for Shape);
    (*v162)(v128, v200);
    v56 = v163;
    v55 = v164;
    (*v179)(v163, v164);
    v36 = v155;
    v41 = v154;
LABEL_6:
    v51 = v180;
  }

  while (1)
  {
    v62 = v58 + 1;
    if (__OFADD__(v58, 1))
    {
      break;
    }

    if (v62 >= v199)
    {

      return;
    }

    v54 = *(v51 + 8 * v62);
    ++v58;
    if (v54)
    {
      v58 = v62;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
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
}

void CanvasFormattingProxy.fontColor.getter(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v73 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v74 = &v71 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v75 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v71 = &v71 - v9;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  v10 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v91 = &v71 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v102 = &v71 - v13;
  v14 = *(a1 + 16);
  v88 = *(a1 + 24);
  v89 = v14;
  v87 = type metadata accessor for Capsule();
  v15 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v86 = &v71 - v16;
  v93 = type metadata accessor for Shape(0);
  v17 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v76 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v100 = &v71 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGMR);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v94 = &v71 - v23;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  MEMORY[0x1EEE9AC00](v103);
  MEMORY[0x1EEE9AC00](v24);
  v98 = &v71 - v27;
  v28 = *(v2 + 8);
  v29 = v28 + 56;
  v30 = 1 << *(v28 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & *(v28 + 56);
  v80 = (v30 + 63) >> 6;
  v96 = v26 + 32;
  v97 = v26 + 16;
  v95 = (v22 + 48);
  v83 = (v22 + 32);
  v82 = (v15 + 8);
  v81 = (v17 + 48);
  v78 = (v10 + 16);
  v77 = (v10 + 8);
  v85 = (v22 + 8);
  v33 = v25;
  v99 = v26;
  v101 = (v26 + 8);

  v34 = 0;
  v72 = v2;
  v79 = v21;
  v90 = v33;
  for (i = v28; ; v28 = i)
  {
    while (1)
    {
      while (1)
      {
        if (!v32)
        {
          while (1)
          {
            v37 = v34 + 1;
            if (__OFADD__(v34, 1))
            {
              __break(1u);
              goto LABEL_29;
            }

            if (v37 >= v80)
            {
              break;
            }

            v32 = *(v29 + 8 * v37);
            ++v34;
            if (v32)
            {
              v35 = v21;
              v36 = v2;
              goto LABEL_11;
            }
          }

          v60 = *(type metadata accessor for Color(0) + 20);
          v61 = type metadata accessor for UnknownValueProperties();
          v33 = v73;
          (*(*(v61 - 8) + 56))(v73 + v60, 1, 1, v61);
          if (one-time initialization token for extendedSRGBColorSpace == -1)
          {
            goto LABEL_21;
          }

LABEL_29:
          swift_once();
LABEL_21:
          v62 = CGColorCreate(static Color.extendedSRGBColorSpace, dbl_1F4F510A0);
          if (v62)
          {
            v63 = v62;
            CGColorRef.calculateMinimumHeadroom.getter();
            v64 = CGColorCreateWithContentHeadroom();
            if (v64)
            {
              v65 = v64;

              *v33 = v65;
              return;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
          goto LABEL_32;
        }

        v35 = v21;
        v36 = v2;
        v37 = v34;
LABEL_11:
        v38 = __clz(__rbit64(v32));
        v32 &= v32 - 1;
        v39 = v98;
        v40 = v99;
        v41 = v103;
        (*(v99 + 16))(v98, *(v28 + 48) + *(v99 + 72) * (v38 | (v37 << 6)), v103);
        (*(v40 + 32))(v33, v39, v41);
        v42 = v100;
        WeakTagged_10.tagged6.getter();
        v21 = v35;
        if ((*v95)(v42, 1, v35) != 1)
        {
          break;
        }

        (*v101)(v33, v103);
        outlined destroy of StocksKitCurrencyCache.Provider?(v42, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
        v34 = v37;
        v2 = v36;
      }

      v43 = v94;
      (*v83)(v94, v42, v35);
      v44 = v86;
      Canvas.updatablePaper2.getter(v86);
      v45 = v102;
      WeakRef.subscript.getter();
      (*v82)(v44, v87);
      v46 = v93;
      if ((*v81)(v45, 1, v93) != 1)
      {
        break;
      }

      (*v85)(v43, v21);
      v33 = v90;
      (*v101)(v90, v103);
      outlined destroy of StocksKitCurrencyCache.Provider?(v102, &_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
      v34 = v37;
      v28 = i;
      v2 = v36;
    }

    v47 = v76;
    _s8PaperKit5ShapeVWObTm_3(v102, v76, type metadata accessor for Shape);
    (*v78)(v91, v47 + *(v46 + 52), v92);
    v48 = CRAttributedString.attributedString.getter();
    v49 = [v48 string];

    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;

    if (!v50 && v52 == 0xE000000000000000)
    {

      (*v77)(v91, v92);
      goto LABEL_18;
    }

    v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*v77)(v91, v92);
    if ((v53 & 1) == 0)
    {
      break;
    }

LABEL_18:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd, &_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMR);
    v54 = v74;
    CRRegister.wrappedValue.getter();
    v55 = v54;
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMR);
    v57 = *(v56 - 8);
    if ((*(v57 + 48))(v55, 1, v56) != 1)
    {
      v66 = v75;
      CRAttributedString.Attributes<>.fontColor.getter(v75);

      outlined destroy of Shape(v47, type metadata accessor for Shape);
      (*v85)(v94, v79);
      (*v101)(v90, v103);
      (*(v57 + 8))(v55, v56);
      v67 = type metadata accessor for Color(0);
      (*(*(v67 - 8) + 56))(v66, 0, 1, v67);
LABEL_27:
      _s8PaperKit5ShapeVWObTm_3(v66, v73, type metadata accessor for Color);
      return;
    }

    outlined destroy of Shape(v47, type metadata accessor for Shape);
    v21 = v79;
    (*v85)(v94, v79);
    v33 = v90;
    (*v101)(v90, v103);
    outlined destroy of StocksKitCurrencyCache.Provider?(v55, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
    v58 = type metadata accessor for Color(0);
    v59 = v75;
    (*(*(v58 - 8) + 56))(v75, 1, 1, v58);
    outlined destroy of StocksKitCurrencyCache.Provider?(v59, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
    v34 = v37;
    v2 = v72;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMd, &_ss23_ContiguousArrayStorageCy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMR);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_1D4058CF0;
  CRAttributedString.runs.getter();
  v69 = Array<A>.fontColors.getter(v68);

  v66 = v71;
  specialized Collection.first.getter(v69, v71);

  v70 = type metadata accessor for Color(0);
  if ((*(*(v70 - 8) + 48))(v66, 1, v70) != 1)
  {
    outlined destroy of Shape(v47, type metadata accessor for Shape);
    (*v85)(v94, v79);
    (*v101)(v90, v103);
    goto LABEL_27;
  }

LABEL_32:
  __break(1u);
}

void closure #1 in closure #1 in CanvasFormattingProxy.fontColor.setter(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v131 = a4;
  v139 = a3;
  v129 = *a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v137 = &v116 - v7;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMR);
  v8 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v10 = &v116 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v141 = &v116 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v126 = &v116 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v134 = &v116 - v16;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  v17 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v122 = &v116 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v132 = &v116 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v127 = &v116 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v150 = &v116 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v123 = &v116 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v149 = &v116 - v28;
  v164 = type metadata accessor for Shape(0);
  v29 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164);
  v152 = &v116 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v162 = &v116 - v32;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGMR);
  v33 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167);
  v163 = &v116 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  MEMORY[0x1EEE9AC00](v35);
  MEMORY[0x1EEE9AC00](v36);
  v160 = &v116 - v40;
  v130 = a2;
  v41 = *(a2 + 8);
  v42 = v41 + 56;
  v43 = 1 << *(v41 + 32);
  v44 = -1;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  v45 = v44 & *(v41 + 56);
  v46 = (v43 + 63) >> 6;
  v158 = v38 + 32;
  v159 = v38 + 16;
  v157 = (v33 + 48);
  v148 = (v33 + 32);
  v154 = (v29 + 48);
  v47 = v39;
  v140 = (v17 + 16);
  v143 = (v17 + 8);
  v125 = (v8 + 56);
  v136 = (v8 + 48);
  v128 = (v8 + 32);
  v124 = (v8 + 16);
  v135 = (v8 + 8);
  v48 = v37;
  v145 = (v33 + 8);
  v161 = v38;
  v156 = (v38 + 8);
  v165 = v41;

  v49 = 0;
  v155 = v46;
  v153 = a1;
  v144 = v10;
  v147 = v48;
  v146 = v47;
  if (v45)
  {
LABEL_10:
    while (1)
    {
      v51 = __clz(__rbit64(v45));
      v45 &= v45 - 1;
      v52 = v160;
      v53 = v161;
      (*(v161 + 16))(v160, *(v165 + 48) + *(v161 + 72) * (v51 | (v49 << 6)), v48);
      (*(v53 + 32))(v47, v52, v48);
      v54 = v162;
      WeakTagged_10.tagged6.getter();
      v55 = v47;
      v56 = v167;
      if ((*v157)(v54, 1, v167) == 1)
      {
        break;
      }

      v57 = v163;
      (*v148)();
      v58 = v149;
      WeakRef.subscript.getter();
      v59 = v164;
      v60 = *v154;
      if ((*v154)(v58, 1, v164) == 1)
      {
        (*v145)(v57, v56);
        v47 = v146;
        v48 = v147;
        (*v156)(v146, v147);
        outlined destroy of StocksKitCurrencyCache.Provider?(v58, &_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
        v46 = v155;
        if (!v45)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v142 = v60;
        v61 = v152;
        _s8PaperKit5ShapeVWObTm_3(v58, v152, type metadata accessor for Shape);
        v62 = v61 + *(v59 + 52);
        v133 = *v140;
        v133(v150, v62, v151);
        v63 = CRAttributedString.attributedString.getter();
        v64 = [v63 string];

        v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v67 = v66;

        if (v65 || v67 != 0xE000000000000000)
        {
          v68 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v69 = *v143;
          v70 = v151;
          (*v143)(v150, v151);
          if ((v68 & 1) == 0)
          {
            v121 = v69;
            v71 = v123;
            WeakRef.subscript.getter();
            v72 = v164;
            if (v142(v71, 1, v164) == 1)
            {
              goto LABEL_39;
            }

            v73 = v71 + *(v72 + 52);
            v74 = v72;
            v75 = v127;
            v133(v127, v73, v70);
            outlined destroy of Shape(v71, type metadata accessor for Shape);
            v119 = CRAttributedString.count.getter();
            v76 = (v121)(v75, v70);
            v120 = &v116;
            MEMORY[0x1EEE9AC00](v76);
            *(&v116 - 2) = v139;
            v77 = v74;
            v78 = v70;
            KeyPath = swift_getKeyPath();
            v80 = WeakRef.subscript.modify();
            v82 = v81;
            if (v142(v81, 1, v77) == 1)
            {
              goto LABEL_38;
            }

            v118 = v80;
            v83 = *(v77 + 52);
            specialized CRAttributedString<>.updateAttribute<A>(in:newValue:keypath:)(0, v119, partial apply for closure #1 in closure #1 in closure #1 in CanvasFormattingProxy.fontColor.setter, (&v116 - 4), KeyPath);

            v120 = v83;
            v133(v132, v83 + v82, v78);
            v84 = CRAttributedString.attributedString.getter();
            v85 = [v84 string];

            v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v88 = v87;

            if (v86 || v88 != 0xE000000000000000)
            {
              v117 = v82;
              v89 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v90 = v151;
              v121(v132, v151);
              if ((v89 & 1) == 0)
              {
                v91 = v117;
                v92 = v120;
                v93 = v133;
                v133(v127, v120 + v117, v90);
                v94 = v92 + v91;
                v95 = v122;
                v93(v122, v94, v90);
                v96 = CRAttributedString.attributedString.getter();
                v97 = v121;
                v121(v95, v90);
                v98 = [v96 length];

                v99 = v127;
                if (__OFSUB__(v98, 1))
                {
                  goto LABEL_37;
                }

                v100 = v134;
                CRAttributedString.attributes(at:effectiveRange:)();
                v97(v99, v90);
                (*v125)(v100, 0, 1, v138);
                outlined init with copy of Date?(v100, v126, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
                __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd, &_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMR);
                CRRegister.wrappedValue.setter();
                outlined destroy of StocksKitCurrencyCache.Provider?(v134, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
              }
            }

            else
            {

              v121(v132, v151);
            }

            v118(v166, 0);
          }
        }

        else
        {

          (*v143)(v150, v151);
        }

        v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd, &_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMR);
        v102 = v141;
        v133 = v101;
        CRRegister.wrappedValue.getter();
        v103 = v102;
        v104 = *v136;
        v105 = v138;
        if ((*v136)(v103, 1, v138) == 1)
        {
          type metadata accessor for CanvasFormattingProxy(0, *(v129 + *MEMORY[0x1E6995440]), *(v129 + *MEMORY[0x1E6995440] + 8), v131);
          v106 = v105;
          v107 = v144;
          CanvasFormattingProxy.defaultEmptyTextBoxAttribues(for:)(v144);
          v108 = v141;
          v109 = v107;
          v105 = v106;
          if (v104(v141, 1, v106) != 1)
          {
            outlined destroy of StocksKitCurrencyCache.Provider?(v108, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
          }
        }

        else
        {
          v109 = v144;
          (*v128)(v144, v103, v105);
        }

        swift_getKeyPath();
        v110 = v137;
        _s8PaperKit5ColorVWOcTm_0(v139, v137, type metadata accessor for Color);
        v111 = type metadata accessor for Color(0);
        (*(*(v111 - 8) + 56))(v110, 0, 1, v111);
        lazy protocol witness table accessor for type TextAttributeScope.ColorAttribute and conformance TextAttributeScope.ColorAttribute();
        CRAttributedString.Attributes.subscript.setter();
        v112 = v167;
        v113 = WeakRef.subscript.modify();
        if (!v142(v114, 1, v164))
        {
          v115 = v134;
          (*v124)(v134, v144, v105);
          (*v125)(v115, 0, 1, v105);
          outlined init with copy of Date?(v115, v126, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
          v109 = v144;
          CRRegister.wrappedValue.setter();
          outlined destroy of StocksKitCurrencyCache.Provider?(v134, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
        }

        v113(v166, 0);
        (*v135)(v109, v105);
        outlined destroy of Shape(v152, type metadata accessor for Shape);
        (*v145)(v163, v112);
        v55 = v146;
        v48 = v147;
        (*v156)(v146, v147);
LABEL_33:
        v47 = v55;
        v46 = v155;
        if (!v45)
        {
          goto LABEL_6;
        }
      }
    }

    (*v156)(v55, v48);
    outlined destroy of StocksKitCurrencyCache.Provider?(v54, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
    goto LABEL_33;
  }

LABEL_6:
  while (1)
  {
    v50 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      break;
    }

    if (v50 >= v46)
    {

      return;
    }

    v45 = *(v42 + 8 * v50);
    ++v49;
    if (v45)
    {
      v49 = v50;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
}

uint64_t closure #1 in CanvasFormattingProxy.boldAllowed.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v72 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v63 = &v62 - v7;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v64 = &v62 - v8;
  v68 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v68);
  v69 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v67 = &v62 - v11;
  v73 = a3;
  v74 = a4;
  v71 = type metadata accessor for Capsule();
  v12 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v14 = &v62 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v62 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v62 - v19;
  v21 = type metadata accessor for Shape(0);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v70 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  WeakTagged_10.tagged6.getter();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGMR);
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v17, 1, v24) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
    (*(v22 + 56))(v20, 1, 1, v21);
  }

  else
  {
    Canvas.updatablePaper2.getter(v14);
    WeakRef.subscript.getter();
    (*(v12 + 8))(v14, v71);
    (*(v25 + 8))(v17, v24);
    if ((*(v22 + 48))(v20, 1, v21) != 1)
    {
      v30 = v70;
      _s8PaperKit5ShapeVWObTm_3(v20, v70, type metadata accessor for Shape);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd, &_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMR);
      v31 = v67;
      CRRegister.wrappedValue.getter();
      v32 = v31;
      v33 = v69;
      _s8PaperKit5ShapeVWObTm_3(v32, v69, type metadata accessor for ShapeType);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v34 = v30;
      }

      else
      {
        outlined destroy of Shape(v33, type metadata accessor for ShapeType);
        v35 = v65;
        v36 = v30 + *(v21 + 52);
        v37 = v64;
        v38 = v66;
        (*(v65 + 16))(v64, v36, v66);
        v39 = CRAttributedString.attributedString.getter();
        v40 = [v39 string];

        v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v43 = v42;

        if (v41 || v43 != 0xE000000000000000)
        {
          v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

          (*(v35 + 8))(v37, v38);
          if ((v44 & 1) == 0)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMd, &_ss23_ContiguousArrayStorageCy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMR);
            v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMR);
            v56 = *(v55 - 8);
            v57 = (*(v56 + 80) + 32) & ~*(v56 + 80);
            v58 = swift_allocObject();
            *(v58 + 16) = xmmword_1D4058CF0;
            CRAttributedString.runs.getter();
            Array<A>.allowedTextStyles.getter(v58);
            v60 = v59;
            swift_setDeallocating();
            (*(v56 + 8))(v58 + v57, v55);
            swift_deallocClassInstance();
            outlined destroy of Shape(v30, type metadata accessor for Shape);
            v28 = v60 & 1;
            return v28 & 1;
          }
        }

        else
        {

          (*(v35 + 8))(v37, v38);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd, &_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMR);
        v20 = v63;
        CRRegister.wrappedValue.getter();
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMR);
        v46 = *(v45 - 8);
        if ((*(v46 + 48))(v20, 1, v45) == 1)
        {
          outlined destroy of Shape(v30, type metadata accessor for Shape);
          v26 = &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd;
          v27 = &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR;
          goto LABEL_5;
        }

        swift_getKeyPath();
        lazy protocol witness table accessor for type TextAttributeScope.FontAttribute and conformance TextAttributeScope.FontAttribute();
        CRAttributedString.Attributes.subscript.getter();

        v48 = v81;
        v47 = v82;
        v49 = v83;
        v50 = v84;
        v51 = v20;
        v52 = v85;
        v53 = v86;
        (*(v46 + 8))(v51, v45);
        if (v47 != 1)
        {
          v75 = v48;
          v76 = v47;
          v77 = v49;
          v78 = v50;
          v79 = v52;
          v80 = v53;
          Font.supportsBold.getter(v54);
          v28 = v61;
          outlined destroy of Shape(v70, type metadata accessor for Shape);
          outlined consume of Font?(v48, v47, v49, v50);
          return v28 & 1;
        }

        v34 = v70;
      }

      outlined destroy of Shape(v34, type metadata accessor for Shape);
      goto LABEL_6;
    }
  }

  v26 = &_s8PaperKit5ShapeVSgMd;
  v27 = &_s8PaperKit5ShapeVSgMR;
LABEL_5:
  outlined destroy of StocksKitCurrencyCache.Provider?(v20, v26, v27);
LABEL_6:
  v28 = 0;
  return v28 & 1;
}

uint64_t CanvasFormattingProxy.strokeIsRequired.getter(void *a1, uint64_t (*a2)(char *, uint64_t, void, void, void))
{
  v22 = a2;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v4 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v6 = v19 - v5;
  v21 = v2;
  v7 = *(v2 + 8);
  v8 = v7 + 56;
  v9 = 1 << *(v7 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v7 + 56);
  v12 = (v9 + 63) >> 6;
  v19[1] = v4 + 16;
  v20 = (v4 + 8);
  v24 = v7;

  v13 = 0;
  while (v11)
  {
    v14 = v23;
LABEL_11:
    (*(v4 + 16))(v6, *(v24 + 48) + *(v4 + 72) * (__clz(__rbit64(v11)) | (v13 << 6)), v14);
    v16 = v22(v6, v21, a1[2], a1[3], a1[4]);
    v11 &= v11 - 1;
    (*v20)(v6, v14);
    if (v16)
    {
      v17 = 1;
LABEL_14:

      return v17;
    }
  }

  v14 = v23;
  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      v17 = 0;
      goto LABEL_14;
    }

    v11 = *(v8 + 8 * v15);
    ++v13;
    if (v11)
    {
      v13 = v15;
      goto LABEL_11;
    }
  }

  __break(1u);

  result = (*v20)(v6, v14);
  __break(1u);
  return result;
}

uint64_t closure #1 in CanvasFormattingProxy.italicAllowed.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v72 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v63 = &v62 - v7;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v64 = &v62 - v8;
  v68 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v68);
  v69 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v67 = &v62 - v11;
  v73 = a3;
  v74 = a4;
  v71 = type metadata accessor for Capsule();
  v12 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v14 = &v62 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v62 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v62 - v19;
  v21 = type metadata accessor for Shape(0);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v70 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  WeakTagged_10.tagged6.getter();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGMR);
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v17, 1, v24) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
    (*(v22 + 56))(v20, 1, 1, v21);
  }

  else
  {
    Canvas.updatablePaper2.getter(v14);
    WeakRef.subscript.getter();
    (*(v12 + 8))(v14, v71);
    (*(v25 + 8))(v17, v24);
    if ((*(v22 + 48))(v20, 1, v21) != 1)
    {
      v30 = v70;
      _s8PaperKit5ShapeVWObTm_3(v20, v70, type metadata accessor for Shape);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd, &_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMR);
      v31 = v67;
      CRRegister.wrappedValue.getter();
      v32 = v31;
      v33 = v69;
      _s8PaperKit5ShapeVWObTm_3(v32, v69, type metadata accessor for ShapeType);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v34 = v30;
      }

      else
      {
        outlined destroy of Shape(v33, type metadata accessor for ShapeType);
        v35 = v65;
        v36 = v30 + *(v21 + 52);
        v37 = v64;
        v38 = v66;
        (*(v65 + 16))(v64, v36, v66);
        v39 = CRAttributedString.attributedString.getter();
        v40 = [v39 string];

        v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v43 = v42;

        if (v41 || v43 != 0xE000000000000000)
        {
          v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

          (*(v35 + 8))(v37, v38);
          if ((v44 & 1) == 0)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMd, &_ss23_ContiguousArrayStorageCy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMR);
            v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMR);
            v56 = *(v55 - 8);
            v57 = (*(v56 + 80) + 32) & ~*(v56 + 80);
            v58 = swift_allocObject();
            *(v58 + 16) = xmmword_1D4058CF0;
            CRAttributedString.runs.getter();
            Array<A>.allowedTextStyles.getter(v58);
            v60 = v59;
            swift_setDeallocating();
            (*(v56 + 8))(v58 + v57, v55);
            swift_deallocClassInstance();
            outlined destroy of Shape(v30, type metadata accessor for Shape);
            v28 = (v60 >> 1) & 1;
            return v28 & 1;
          }
        }

        else
        {

          (*(v35 + 8))(v37, v38);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd, &_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMR);
        v20 = v63;
        CRRegister.wrappedValue.getter();
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMR);
        v46 = *(v45 - 8);
        if ((*(v46 + 48))(v20, 1, v45) == 1)
        {
          outlined destroy of Shape(v30, type metadata accessor for Shape);
          v26 = &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd;
          v27 = &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR;
          goto LABEL_5;
        }

        swift_getKeyPath();
        lazy protocol witness table accessor for type TextAttributeScope.FontAttribute and conformance TextAttributeScope.FontAttribute();
        CRAttributedString.Attributes.subscript.getter();

        v48 = v81;
        v47 = v82;
        v49 = v83;
        v50 = v84;
        v51 = v20;
        v52 = v85;
        v53 = v86;
        (*(v46 + 8))(v51, v45);
        if (v47 != 1)
        {
          v75 = v48;
          v76 = v47;
          v77 = v49;
          v78 = v50;
          v79 = v52;
          v80 = v53;
          Font.supportsItalic.getter(v54);
          LOBYTE(v28) = v61;
          outlined destroy of Shape(v70, type metadata accessor for Shape);
          outlined consume of Font?(v48, v47, v49, v50);
          return v28 & 1;
        }

        v34 = v70;
      }

      outlined destroy of Shape(v34, type metadata accessor for Shape);
      goto LABEL_6;
    }
  }

  v26 = &_s8PaperKit5ShapeVSgMd;
  v27 = &_s8PaperKit5ShapeVSgMR;
LABEL_5:
  outlined destroy of StocksKitCurrencyCache.Provider?(v20, v26, v27);
LABEL_6:
  LOBYTE(v28) = 0;
  return v28 & 1;
}

void CanvasFormattingProxy.hasMultipleFontSizes.getter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v82 = &v74 - v5;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMR);
  v6 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v76 = &v74 - v7;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  v8 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v75 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v93 = &v74 - v11;
  v12 = *(a1 + 16);
  v98 = *(a1 + 24);
  v99 = v12;
  v97 = type metadata accessor for Capsule();
  v13 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v80 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v91 = &v74 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v79 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v90 = &v74 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v74 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGMR);
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v107 = &v74 - v26;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  MEMORY[0x1EEE9AC00](v110);
  MEMORY[0x1EEE9AC00](v27);
  v105 = &v74 - v30;
  v94 = v2;
  v31 = *(v2 + 8);
  v32 = v31 + 56;
  v33 = 1 << *(v31 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v31 + 56);
  v36 = (v33 + 63) >> 6;
  v102 = v29 + 32;
  v103 = v29 + 16;
  v101 = (v25 + 48);
  v88 = (v25 + 32);
  v96 = (v13 + 8);
  v86 = (v8 + 16);
  v87 = (v8 + 8);
  v89 = (v25 + 8);
  v37 = v28;
  v104 = v29;
  v106 = (v29 + 8);
  v77 = v6;
  v81 = (v6 + 56);
  v108 = v31;

  v38 = 0;
  v100 = v24;
  v92 = v37;
  v109 = v23;
  while (v35)
  {
    v39 = v24;
    v40 = v110;
LABEL_12:
    v42 = __clz(__rbit64(v35));
    v35 &= v35 - 1;
    v44 = v104;
    v43 = v105;
    (*(v104 + 16))(v105, *(v108 + 48) + *(v104 + 72) * (v42 | (v38 << 6)), v40);
    (*(v44 + 32))(v37, v43, v40);
    WeakTagged_10.tagged6.getter();
    v45 = v109;
    v24 = v39;
    if ((*v101)(v109, 1, v39) == 1)
    {
      (*v106)(v37, v40);
      outlined destroy of StocksKitCurrencyCache.Provider?(v45, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
    }

    else
    {
      (*v88)(v107, v45, v39);
      v46 = v91;
      Canvas.updatablePaper2.getter(v91);
      v47 = v90;
      WeakRef.subscript.getter();
      v48 = *v96;
      (*v96)(v46, v97);
      v49 = type metadata accessor for Shape(0);
      v50 = *(v49 - 8);
      v51 = *(v50 + 48);
      v52 = v50 + 48;
      if (v51(v47, 1, v49) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v47, &_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
        goto LABEL_20;
      }

      v84 = v52;
      v85 = v51;
      v53 = v47 + *(v49 + 52);
      v78 = *v86;
      v78(v93, v53, v95);
      outlined destroy of Shape(v47, type metadata accessor for Shape);
      v54 = CRAttributedString.attributedString.getter();
      v55 = [v54 string];

      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;

      if (v56 || v58 != 0xE000000000000000)
      {
        v59 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      else
      {

        v59 = 1;
      }

      v60 = *v87;
      (*v87)(v93, v95);
      if (v59)
      {
LABEL_20:
        v24 = v100;
        (*v89)(v107, v100);
        v37 = v92;
        (*v106)(v92, v110);
      }

      else
      {
        v74 = v60;
        v61 = v80;
        Canvas.updatablePaper2.getter(v80);
        v62 = v79;
        v63 = v107;
        WeakRef.subscript.getter();
        v48(v61, v97);
        if (v85(v62, 1, v49) != 1)
        {
          v65 = v75;
          v66 = v95;
          v78(v75, v62 + *(v49 + 52), v95);
          outlined destroy of Shape(v62, type metadata accessor for Shape);
          v67 = v82;
          CRAttributedString.runs.getter();
          v74(v65, v66);
          v68 = v77;
          v69 = v83;
          (*(v77 + 56))(v67, 0, 1, v83);
          v70 = v76;
          (*(v68 + 32))(v76, v67, v69);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMd, &_ss23_ContiguousArrayStorageCy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMR);
          v71 = (*(v68 + 80) + 32) & ~*(v68 + 80);
          v72 = swift_allocObject();
          *(v72 + 16) = xmmword_1D4058CF0;
          (*(v68 + 16))(v72 + v71, v70, v69);
          Array<A>.hasMultipleFontSizes.getter(v72);

          swift_setDeallocating();
          v73 = *(v68 + 8);
          v73(v72 + v71, v69);
          swift_deallocClassInstance();
          v73(v70, v69);
          (*v89)(v63, v100);
          (*v106)(v92, v110);
          return;
        }

        v24 = v100;
        (*v89)(v63, v100);
        v37 = v92;
        (*v106)(v92, v110);
        outlined destroy of StocksKitCurrencyCache.Provider?(v62, &_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
        v64 = v82;
        (*v81)(v82, 1, 1, v83);
        outlined destroy of StocksKitCurrencyCache.Provider?(v64, &_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSgMR);
      }
    }
  }

  v40 = v110;
  while (1)
  {
    v41 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v41 >= v36)
    {

      return;
    }

    v35 = *(v32 + 8 * v41);
    ++v38;
    if (v35)
    {
      v39 = v24;
      v38 = v41;
      goto LABEL_12;
    }
  }

  __break(1u);
}

void CanvasFormattingProxy.lineEnds.getter(void *a1, uint64_t a2, uint64_t a3)
{
  v42 = a1;
  v43 = a2;
  v4 = *(a3 + 16);
  v50 = *(a3 + 24);
  v51 = v4;
  v49 = type metadata accessor for Capsule();
  v5 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v40 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v40 - v11;
  v58 = type metadata accessor for Shape(0);
  v13 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v41 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  MEMORY[0x1EEE9AC00](v15);
  v60 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v55 = &v40 - v19;
  v20 = *(v3 + 8);
  v21 = v20 + 56;
  v22 = 1 << *(v20 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v20 + 56);
  v25 = (v22 + 63) >> 6;
  v54 = v18 + 16;
  v52 = v3;
  v53 = v18 + 32;
  v45 = (v13 + 48);
  v46 = (v5 + 8);
  v56 = v18;
  v57 = (v18 + 8);
  v44 = (v13 + 56);
  v59 = v20;

  v26 = 0;
  v47 = v15;
  while (v24)
  {
    v27 = v60;
LABEL_13:
    v30 = v55;
    v29 = v56;
    (*(v56 + 16))(v55, *(v59 + 48) + *(v56 + 72) * (__clz(__rbit64(v24)) | (v26 << 6)), v15);
    (*(v29 + 32))(v27, v30, v15);
    WeakTagged_10.tagged6.getter();
    v31 = v15;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGMR);
    v33 = *(v32 - 8);
    if ((*(v33 + 48))(v9, 1, v32) == 1)
    {
      (*v57)(v27, v31);
      outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
      (*v44)(v12, 1, 1, v58);
      v15 = v31;
    }

    else
    {
      v34 = v9;
      v35 = v48;
      Canvas.updatablePaper2.getter(v48);
      WeakRef.subscript.getter();
      v36 = v35;
      v9 = v34;
      (*v46)(v36, v49);
      (*(v33 + 8))(v34, v32);
      if ((*v45)(v12, 1, v58) != 1)
      {
        v39 = v41;
        _s8PaperKit5ShapeVWObTm_3(v12, v41, type metadata accessor for Shape);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd, &_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMR);
        CRRegister.wrappedValue.getter();
        CRRegister.wrappedValue.getter();

        outlined destroy of Shape(v39, type metadata accessor for Shape);
        (*v57)(v60, v47);
        return;
      }

      v15 = v47;
      (*v57)(v60, v47);
    }

    v24 &= v24 - 1;
    outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
  }

  v27 = v60;
  while (1)
  {
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v28 >= v25)
    {

      v38 = v42;
      v37 = v43;
      *v42 = 0;
      *(v38 + 8) = 0;
      *v37 = 0;
      *(v37 + 8) = 0;
      return;
    }

    v24 = *(v21 + 8 * v28);
    ++v26;
    if (v24)
    {
      v26 = v28;
      goto LABEL_13;
    }
  }

  __break(1u);
}

void closure #1 in CanvasFormattingProxy.lineEnds.setter(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = specialized Canvas.paperView.getter();
  swift_beginAccess();
  type metadata accessor for Capsule();
  v9 = v8;
  Capsule.callAsFunction<A>(_:)();
  swift_endAccess();
}

void closure #1 in closure #1 in CanvasFormattingProxy.lineEnds.setter(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, char a6)
{
  v43 = a5;
  LODWORD(v50) = a4;
  v42 = a3;
  v57 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGMR);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v62 = &v40 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v55 = &v40 - v18;
  v19 = *(a2 + 8);
  v20 = v16;
  v21 = v19 + 56;
  v22 = 1 << *(v19 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v19 + 56);
  v25 = (v22 + 63) >> 6;
  v53 = v16 + 32;
  v54 = v16 + 16;
  v26 = (v12 + 48);
  v44 = (v12 + 8);
  v45 = (v12 + 32);
  v27 = v17;
  v51 = (v16 + 8);
  v52 = v26;
  v58 = v19;

  v28 = 0;
  v41 = v50 & 1;
  v40 = a6 & 1;
  v49 = v10;
  v50 = v21;
  v56 = v11;
  v47 = v20;
  v48 = v14;
  v46 = v27;
  if (v24)
  {
    goto LABEL_6;
  }

LABEL_7:
  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v30 >= v25)
    {

      return;
    }

    v24 = *(v21 + 8 * v30);
    ++v28;
    if (v24)
    {
      v29 = v11;
      v28 = v30;
      while (1)
      {
        v31 = __clz(__rbit64(v24));
        v24 &= v24 - 1;
        v32 = v55;
        (*(v20 + 16))(v55, *(v58 + 48) + *(v20 + 72) * (v31 | (v28 << 6)), v14);
        (*(v20 + 32))(v27, v32, v14);
        WeakTagged_10.tagged6.getter();
        v11 = v29;
        if ((*v52)(v10, 1, v29) == 1)
        {
          (*v51)(v27, v14);
          outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
          v21 = v50;
          if (!v24)
          {
            goto LABEL_7;
          }
        }

        else
        {
          (*v45)(v62, v10, v29);
          v33 = WeakRef.subscript.modify();
          v35 = v34;
          v36 = type metadata accessor for Shape(0);
          v37 = *(*(v36 - 8) + 48);
          if (!v37(v35, 1, v36))
          {
            v59 = v42;
            v60 = v41;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd, &_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMR);
            CRRegister.wrappedValue.setter();
          }

          v33(v61, 0);
          v38 = WeakRef.subscript.modify();
          if (!v37(v39, 1, v36))
          {
            v59 = v43;
            v60 = v40;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd, &_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMR);
            CRRegister.wrappedValue.setter();
          }

          v38(v61, 0);
          v20 = v47;
          v14 = v48;
          v11 = v56;
          (*v44)(v62, v56);
          v27 = v46;
          (*v51)(v46, v14);
          v10 = v49;
          v21 = v50;
          if (!v24)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v29 = v11;
      }
    }
  }

  __break(1u);
}

void CanvasFormattingProxy.opacity.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v44 = *(a1 + 24);
  v45 = v2;
  v43 = type metadata accessor for Capsule();
  v3 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v38 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v38 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v38 - v9;
  v52 = type metadata accessor for Shape(0);
  v11 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v38 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  MEMORY[0x1EEE9AC00](v55);
  v54 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v49 = &v38 - v16;
  v17 = *(v1 + 8);
  v18 = v17 + 56;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v17 + 56);
  v22 = (v19 + 63) >> 6;
  v48 = v15 + 16;
  v46 = v1;
  v47 = v15 + 32;
  v40 = (v11 + 48);
  v41 = (v3 + 8);
  v50 = (v15 + 8);
  v51 = v15;
  v39 = (v11 + 56);
  v53 = v17;

  v23 = 0;
  while (v21)
  {
    v24 = v10;
    v26 = v54;
    v25 = v55;
LABEL_13:
    v28 = v51;
    v29 = v49;
    (*(v51 + 16))(v49, *(v53 + 48) + *(v51 + 72) * (__clz(__rbit64(v21)) | (v23 << 6)), v25);
    (*(v28 + 32))(v26, v29, v25);
    WeakTagged_10.tagged6.getter();
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGMR);
    v31 = v25;
    v32 = *(v30 - 8);
    if ((*(v32 + 48))(v7, 1, v30) == 1)
    {
      (*v50)(v26, v31);
      outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
      v10 = v24;
      (*v39)(v24, 1, 1, v52);
    }

    else
    {
      v33 = v7;
      v34 = v42;
      Canvas.updatablePaper2.getter(v42);
      WeakRef.subscript.getter();
      v35 = v34;
      v7 = v33;
      (*v41)(v35, v43);
      v36 = v30;
      v10 = v24;
      (*(v32 + 8))(v33, v36);
      if ((*v40)(v24, 1, v52) != 1)
      {
        v37 = v38;
        _s8PaperKit5ShapeVWObTm_3(v24, v38, type metadata accessor for Shape);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
        CRRegister.wrappedValue.getter();

        outlined destroy of Shape(v37, type metadata accessor for Shape);
        (*v50)(v54, v55);
        return;
      }

      (*v50)(v54, v55);
    }

    v21 &= v21 - 1;
    outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
  }

  v26 = v54;
  v25 = v55;
  while (1)
  {
    v27 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v27 >= v22)
    {

      return;
    }

    v21 = *(v18 + 8 * v27);
    ++v23;
    if (v21)
    {
      v24 = v10;
      v23 = v27;
      goto LABEL_13;
    }
  }

  __break(1u);
}

void closure #1 in CanvasFormattingProxy.opacity.setter(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = specialized Canvas.paperView.getter();
  swift_beginAccess();
  type metadata accessor for Capsule();
  v5 = v4;
  Capsule.callAsFunction<A>(_:)();
  swift_endAccess();
}

void closure #1 in closure #1 in CanvasFormattingProxy.opacity.setter(uint64_t a1, uint64_t a2, double a3)
{
  v37 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v32 - v6;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGMR);
  v8 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v43 = &v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v42 = &v32 - v15;
  v16 = *(a2 + 8);
  v17 = v7;
  v18 = v16 + 56;
  v19 = 1 << *(v16 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v16 + 56);
  v22 = (v19 + 63) >> 6;
  v40 = v11 + 32;
  v41 = v11 + 16;
  v33 = (v8 + 8);
  v34 = (v8 + 32);
  v38 = (v11 + 8);
  v39 = (v8 + 48);
  v44 = v16;

  v23 = 0;
  v35 = v13;
  for (i = v17; v21; v17 = i)
  {
LABEL_10:
    while (1)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v26 = v42;
      (*(v11 + 16))(v42, *(v44 + 48) + *(v11 + 72) * (v25 | (v23 << 6)), v10);
      (*(v11 + 32))(v13, v26, v10);
      WeakTagged_10.tagged6.getter();
      v27 = v45;
      if ((*v39)(v17, 1, v45) != 1)
      {
        break;
      }

      (*v38)(v13, v10);
      outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
      if (!v21)
      {
        goto LABEL_6;
      }
    }

    (*v34)(v43, v17, v27);
    v28 = WeakRef.subscript.modify();
    v30 = v29;
    v31 = type metadata accessor for Shape(0);
    if (!(*(*(v31 - 8) + 48))(v30, 1, v31))
    {
      v46 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
      CRRegister.wrappedValue.setter();
    }

    v28(v47, 0);
    v13 = v35;
    (*v33)(v43, v45);
    (*v38)(v13, v10);
  }

LABEL_6:
  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v24 >= v22)
    {

      return;
    }

    v21 = *(v18 + 8 * v24);
    ++v23;
    if (v21)
    {
      v23 = v24;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t CanvasFormattingProxy.hasMultipleOpacities.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v37 = a1;
  v40 = v2;
  v41 = v3;
  v4 = type metadata accessor for Capsule();
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v36 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v36 - v14;
  v16 = type metadata accessor for Shape(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v1;
  v20 = *(v1 + 8);
  specialized Collection.first.getter(v20, v9);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v9, 1, v21) == 1)
  {
    v23 = &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMd;
    v24 = &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMR;
    v25 = v9;
LABEL_5:
    outlined destroy of StocksKitCurrencyCache.Provider?(v25, v23, v24);
    (*(v17 + 56))(v15, 1, 1, v16);
    goto LABEL_6;
  }

  v36 = v20;
  WeakTagged_10.tagged6.getter();
  (*(v22 + 8))(v9, v21);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGMR);
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v12, 1, v26) == 1)
  {
    v23 = &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd;
    v24 = &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR;
    v25 = v12;
    goto LABEL_5;
  }

  Canvas.updatablePaper2.getter(v6);
  v30 = v40;
  WeakRef.subscript.getter();
  (*(v38 + 8))(v6, v39);
  (*(v27 + 8))(v12, v26);
  if ((*(v17 + 48))(v15, 1, v16) != 1)
  {
    v31 = _s8PaperKit5ShapeVWObTm_3(v15, v19, type metadata accessor for Shape);
    MEMORY[0x1EEE9AC00](v31);
    v32 = v41;
    *(&v36 - 6) = v30;
    *(&v36 - 5) = v32;
    v33 = v36;
    v34 = v42;
    *(&v36 - 4) = *(v37 + 32);
    *(&v36 - 3) = v34;
    *(&v36 - 2) = v19;
    specialized Sequence.allSatisfy(_:)(partial apply for closure #1 in CanvasFormattingProxy.hasMultipleOpacities.getter, (&v36 - 8), v33);
    v28 = v35;
    outlined destroy of Shape(v19, type metadata accessor for Shape);
    return v28 & 1;
  }

LABEL_6:
  outlined destroy of StocksKitCurrencyCache.Provider?(v15, &_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
  v28 = 0;
  return v28 & 1;
}

BOOL closure #1 in CanvasFormattingProxy.hasMultipleOpacities.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a5;
  v22[0] = a3;
  v22[1] = a2;
  v25 = a4;
  v5 = type metadata accessor for Capsule();
  v23 = *(v5 - 8);
  v24 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v22 - v12;
  v14 = type metadata accessor for Shape(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  WeakTagged_10.tagged6.getter();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGMR);
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v10, 1, v18) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
    (*(v15 + 56))(v13, 1, 1, v14);
LABEL_4:
    outlined destroy of StocksKitCurrencyCache.Provider?(v13, &_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
    return 0;
  }

  Canvas.updatablePaper2.getter(v7);
  WeakRef.subscript.getter();
  (*(v23 + 8))(v7, v24);
  (*(v19 + 8))(v10, v18);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    goto LABEL_4;
  }

  _s8PaperKit5ShapeVWObTm_3(v13, v17, type metadata accessor for Shape);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.getter();
  v21 = v27;
  CRRegister.wrappedValue.getter();
  outlined destroy of Shape(v17, type metadata accessor for Shape);
  return v21 == v27;
}

void CanvasFormattingProxy.hasLink.getter()
{
  specialized CanvasMembers.views(in:)(*v0, *(v0 + 8));
  if (v1 >> 62)
  {
    v4 = v1;
    if (__CocoaSet.count.getter() == 1)
    {
      v5 = __CocoaSet.count.getter();
      v1 = v4;
      if (v5)
      {
        goto LABEL_3;
      }
    }

LABEL_9:

    return;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x1DA6CE0C0](0);
    goto LABEL_6;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v2 = *(v1 + 32);
LABEL_6:
    v3 = v2;

    type metadata accessor for LinkCanvasElementView(0);
    swift_dynamicCastClass();

    return;
  }

  __break(1u);
}

uint64_t CanvasFormattingProxy.init(canvas:members:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5 & 1;
  return result;
}

uint64_t type metadata instantiation function for CanvasFormattingProxy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for CanvasFormattingProxy(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t storeEnumTagSinglePayload for CanvasFormattingProxy(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double protocol witness for CanvasMembersFormattingState.fontName.setter in conformance CanvasFormattingProxy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  specialized CanvasFormattingProxy.fontName.setter(a1, a2, a3);

  return result;
}

uint64_t protocol witness for CanvasMembersFormattingState.lineEnds.setter in conformance CanvasFormattingProxy<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v10 = *a1;
  v11 = v4;
  v5 = *(a2 + 8);
  v8 = *a2;
  v9 = v5;
  v6 = v3[1];
  v12 = *v3;
  v13 = v6;
  v14 = *(v3 + 32);
  return CanvasFormattingProxy.lineEnds.setter(&v10, &v8, a3);
}

uint64_t _s8PaperKit5ColorVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _sSo10CGColorRefaAB14CoreFoundation9_CFObjectSCWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s8PaperKit5ShapeVWObTm_3(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Shape(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void (*AnyCanvas._delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8PaperKit9AnyCanvas__delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return protocol witness for LinkItem.delegate.modify in conformance SynapseLinkItem;
}

uint64_t AnyCanvas.delegate.getter()
{
  swift_getKeyPath();
  _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas, &protocol conformance descriptor for AnyCanvas);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

double AnyCanvas.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas, &protocol conformance descriptor for AnyCanvas);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_unknownObjectRelease();
  return result;
}

uint64_t (*AnyCanvas.delegate.modify(uint64_t *a1))()
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
  v4[5] = OBJC_IVAR____TtC8PaperKit9AnyCanvas___observationRegistrar;
  *v4 = v1;
  v4[6] = _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas, &protocol conformance descriptor for AnyCanvas);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = AnyCanvas._delegate.modify(v4);
  return AnyCanvas.delegate.modify;
}

void AnyCanvas.overlays.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
  if (v1)
  {
    v2 = &protocol witness table for ResizeView;
    v23[0] = *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
    v23[1] = &protocol witness table for ResizeView;
    v3 = *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_handwritingReflowView);
    if (v3)
    {
      v4 = &protocol witness table for ResizeView;
    }

    else
    {
      v4 = 0;
    }

    v23[2] = *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_handwritingReflowView);
    v23[3] = v4;
    v5 = *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_collaborationStateView);
    v23[4] = v5;
    v23[5] = &protocol witness table for CanvasCollaborationStateView;
    v6 = *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_cropView);
    if (!v6)
    {
      v2 = 0;
    }

    v23[6] = *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_cropView);
    v23[7] = v2;
    v7 = v6;
    v8 = v1;
    v9 = v3;
    v10 = v5;
    v11 = 0;
    v12 = MEMORY[0x1E69E7CC0];
LABEL_8:
    if (v11 <= 4)
    {
      v13 = 4;
    }

    else
    {
      v13 = v11;
    }

    v14 = v13 + 1;
    v15 = &v23[2 * v11];
    while (1)
    {
      if (v11 == 4)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit15CanvasUIOverlay_pSgMd, &_s8PaperKit15CanvasUIOverlay_pSgMR);
        swift_arrayDestroy();
        return;
      }

      if (v14 == ++v11)
      {
        break;
      }

      v16 = v15 + 2;
      v17 = *v15;
      v15 += 2;
      if (v17)
      {
        v18 = *(v16 - 1);
        v19 = v17;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[2] + 1, 1, v12);
        }

        v21 = v12[2];
        v20 = v12[3];
        if (v21 >= v20 >> 1)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v12);
        }

        v12[2] = v21 + 1;
        v22 = &v12[2 * v21];
        v22[4] = v19;
        v22[5] = v18;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

__n128 AnyCanvas.savedCanvasState.getter@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  *&v10 = v1;
  _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas, &protocol conformance descriptor for AnyCanvas);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__savedCanvasState + 80);
  v14 = *(v1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__savedCanvasState + 64);
  v15 = v3;
  v16 = *(v1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__savedCanvasState + 96);
  v4 = *(v1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__savedCanvasState + 16);
  v10 = *(v1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__savedCanvasState);
  v11 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__savedCanvasState + 48);
  v12 = *(v1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__savedCanvasState + 32);
  v13 = v5;
  outlined init with copy of Date?(&v10, v9, &_s8PaperKit9AnyCanvasC0D13StateRollbackVSgMd, &_s8PaperKit9AnyCanvasC0D13StateRollbackVSgMR);
  v6 = v15;
  *(a1 + 64) = v14;
  *(a1 + 80) = v6;
  *(a1 + 96) = v16;
  v7 = v11;
  *a1 = v10;
  *(a1 + 16) = v7;
  result = v13;
  *(a1 + 32) = v12;
  *(a1 + 48) = result;
  return result;
}

void AnyCanvas.overlayViewControllerForPresentingUI.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*AnyCanvas.overlayViewControllerForPresentingUI.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_overlayViewControllerForPresentingUI;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return AnyCanvas.overlayViewControllerForPresentingUI.modify;
}

void AnyCanvas.overlayViewControllerForPresentingUI.modify(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

double AnyCanvas.participantDetailsDataSource.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_participantDetailsDataSource;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  [*(v2 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_collaborationStateView) setNeedsLayout];
  swift_unknownObjectRelease();
  return result;
}

void (*AnyCanvas.participantDetailsDataSource.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_participantDetailsDataSource;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return AnyCanvas.participantDetailsDataSource.modify;
}

void AnyCanvas.participantDetailsDataSource.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    v4 = v3[5];
    swift_endAccess();
    swift_unknownObjectRelease();
    [*(v4 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_collaborationStateView) setNeedsLayout];
  }

  free(v3);
}

void (*AnyCanvas._showParticipantCursors.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return AnyCanvas._showParticipantCursors.modify;
}

void AnyCanvas._showParticipantCursors.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(*(a1 + 24) + OBJC_IVAR____TtC8PaperKit9AnyCanvas_collaborationStateView);

    [v4 setNeedsLayout];
  }
}

void AnyCanvas.showParticipantCursors.setter(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC8PaperKit9AnyCanvas__showParticipantCursors;
  swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
    [*(v1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_collaborationStateView) setNeedsLayout];
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas, &protocol conformance descriptor for AnyCanvas);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t (*AnyCanvas.showParticipantCursors.modify(uint64_t *a1))()
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
  v4[5] = OBJC_IVAR____TtC8PaperKit9AnyCanvas___observationRegistrar;
  *v4 = v1;
  v4[6] = _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas, &protocol conformance descriptor for AnyCanvas);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = AnyCanvas._showParticipantCursors.modify(v4);
  return AnyCanvas.showParticipantCursors.modify;
}

uint64_t AnyCanvas.wantsDataDetection.getter()
{
  v1 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_wantsDataDetection;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*AnyCanvas.wantsDataDetection.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_wantsDataDetection;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return AnyCanvas.wantsDataDetection.modify;
}

uint64_t AnyCanvas.isSharedViaICloud.getter()
{
  v1 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_isSharedViaICloud;
  swift_beginAccess();
  return *(v0 + v1);
}

void AnyCanvas.wantsDataDetection.setter(char a1, uint64_t *a2, SEL *a3)
{
  v5 = v3;
  v7 = *a2;
  v8 = swift_beginAccess();
  *(v5 + v7) = a1;
  v9 = (*((*MEMORY[0x1E69E7D40] & *v5) + 0x440))(v8);
  v11 = v10;
  ObjectType = swift_getObjectType();
  v13 = (*(v11 + 16))(ObjectType, v11);

  if (v13)
  {
    [v13 *a3];
  }
}

void (*AnyCanvas.isSharedViaICloud.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_isSharedViaICloud;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return AnyCanvas.isSharedViaICloud.modify;
}

void AnyCanvas.wantsDataDetection.modify(uint64_t *a1, char a2, SEL *a3)
{
  v5 = *a1;
  v6 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v7 = (*((*MEMORY[0x1E69E7D40] & **(v5 + 24)) + 0x440))(v6);
    v9 = v8;
    ObjectType = swift_getObjectType();
    v11 = (*(v9 + 16))(ObjectType, v9);

    if (v11)
    {
      [v11 *a3];
    }
  }

  free(v5);
}

double AnyCanvas.textualContextProvider.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_textualContextProvider;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*AnyCanvas.textualContextProvider.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_textualContextProvider;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return protocol witness for LinkItem.delegate.modify in conformance SynapseLinkItem;
}

void (*AnyCanvas._liveStreamDrawings.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC8PaperKit9AnyCanvas__liveStreamDrawings;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return AnyCanvas._liveStreamDrawings.modify;
}

void AnyCanvas._liveStreamDrawings.modify(void **a1, char a2)
{
  v3 = *a1;
  v4 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = (*((*MEMORY[0x1E69E7D40] & *v3[3]) + 0x468))(v4);
    if (v5)
    {
      v6 = v5;
      v7 = [v5 canvasView];

      if (v7)
      {
        v9 = v3[3];
        v8 = v3[4];
        swift_getKeyPath();
        *v3 = v9;
        _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas, &protocol conformance descriptor for AnyCanvas);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        [v7 setGenerateLiveDrawing_];
      }
    }
  }

  free(v3);
}

uint64_t AnyCanvas.showParticipantCursors.getter(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas, &protocol conformance descriptor for AnyCanvas);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

void AnyCanvas.liveStreamDrawings.setter(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC8PaperKit9AnyCanvas__liveStreamDrawings;
  v5 = swift_beginAccess();
  if (*(v2 + v4) == v3)
  {
    *(v2 + v4) = v3;
    v7 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x468))(v5);
    if (v7)
    {
      v8 = v7;
      v9 = [v7 canvasView];

      if (v9)
      {
        swift_getKeyPath();
        _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas, &protocol conformance descriptor for AnyCanvas);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        [v9 setGenerateLiveDrawing_];
      }
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas, &protocol conformance descriptor for AnyCanvas);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t (*AnyCanvas.liveStreamDrawings.modify(uint64_t *a1))()
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
  v4[5] = OBJC_IVAR____TtC8PaperKit9AnyCanvas___observationRegistrar;
  *v4 = v1;
  v4[6] = _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas, &protocol conformance descriptor for AnyCanvas);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = AnyCanvas._liveStreamDrawings.modify(v4);
  return AnyCanvas.liveStreamDrawings.modify;
}

Swift::Bool __swiftcall AnyCanvas.isLiveEditing()()
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathV3key_8PaperKit20AnyCanvasElementViewC5valuetMd, &_s9Coherence9CRKeyPathV3key_8PaperKit20AnyCanvasElementViewC5valuetMR);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v34 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v35 = &v34 - v4;
  v5 = MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x440);
  v7 = v6(v3);
  v8 = (*((*v5 & *v7) + 0x1B8))();

  if (v8)
  {
    return 1;
  }

  else
  {
    v10 = (v6)();
    v12 = v11;
    ObjectType = swift_getObjectType();
    v14 = (*(v12 + 40))(ObjectType, v12);

    v15 = v14 + 64;
    v16 = 1 << *(v14 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v14 + 64);
    v19 = (v16 + 63) >> 6;
    v34 = v14;

    v21 = 0;
    v22 = v36;
    while (v18)
    {
      v23 = v21;
LABEL_12:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v25 = v24 | (v23 << 6);
      v26 = v34;
      v27 = *(v34 + 48);
      v28 = type metadata accessor for CRKeyPath();
      v29 = *(v28 - 8);
      v38 = v28;
      v39 = v29;
      v30 = v35;
      (*(v29 + 16))(v35, v27 + *(v29 + 72) * v25, v28);
      v31 = *(*(v26 + 56) + 8 * v25);
      v32 = v37;
      *(v30 + *(v37 + 48)) = v31;
      outlined init with copy of Date?(v30, v22, &_s9Coherence9CRKeyPathV3key_8PaperKit20AnyCanvasElementViewC5valuetMd, &_s9Coherence9CRKeyPathV3key_8PaperKit20AnyCanvasElementViewC5valuetMR);
      v33 = *(v22 + *(v32 + 48));
      LOBYTE(v31) = (*((*MEMORY[0x1E69E7D40] & *v33) + 0x1B8))(v31);

      outlined destroy of StocksKitCurrencyCache.Provider?(v30, &_s9Coherence9CRKeyPathV3key_8PaperKit20AnyCanvasElementViewC5valuetMd, &_s9Coherence9CRKeyPathV3key_8PaperKit20AnyCanvasElementViewC5valuetMR);
      result = (*(v39 + 8))(v22, v38);
      if (v31)
      {
        v9 = 1;
LABEL_15:

        return v9;
      }
    }

    while (1)
    {
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v23 >= v19)
      {
        v9 = 0;
        goto LABEL_15;
      }

      v18 = *(v15 + 8 * v23);
      ++v21;
      if (v18)
      {
        v21 = v23;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall AnyCanvas.isResizingChanged()()
{
  v1 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView;
  v2 = *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
  if (!v2)
  {
    __break(1u);
    goto LABEL_18;
  }

  v3 = 0.0;
  if ((*(v2 + OBJC_IVAR____TtC8PaperKit10ResizeView_isResizing) & 1) == 0)
  {
    v4 = *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_handwritingReflowView);
    if (!v4 || (*(v4 + OBJC_IVAR____TtC8PaperKit10ResizeView_isResizing) & 1) == 0)
    {
      v3 = 1.0;
    }
  }

  v5 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_collaborationStateView;
  [*(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_collaborationStateView) alpha];
  if (v3 != v6)
  {
    v7 = objc_opt_self();
    v8 = *(v0 + v5);
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v9 + 24) = v3;
    v18[4] = partial apply for closure #1 in AnyCanvas.isResizingChanged();
    v18[5] = v9;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 1107296256;
    v18[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v18[3] = &block_descriptor_212_0;
    v10 = _Block_copy(v18);
    v11 = v8;

    [v7 animateWithDuration:v10 animations:0.2];
    _Block_release(v10);
  }

  v12 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x468))();
  if (v12)
  {
    v13 = v12;
    v14 = [v12 selectionInteraction];

    v15 = *(v0 + v1);
    if (v15)
    {
      if (*(v15 + OBJC_IVAR____TtC8PaperKit10ResizeView_isResizing))
      {
        v16 = 0;
      }

      else
      {
        v17 = *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_handwritingReflowView);
        if (v17)
        {
          v16 = *(v17 + OBJC_IVAR____TtC8PaperKit10ResizeView_isResizing) ^ 1;
        }

        else
        {
          v16 = 1;
        }
      }

      [v14 setEnabled_];

      return;
    }

LABEL_18:
    __break(1u);
  }
}

void AnyCanvas.selection.setter(uint64_t a1, NSObject *a2, uint64_t a3, char a4)
{
  v6 = v4;
  v7 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView;
  v8 = *&v4[OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView];
  if (!v8)
  {
    __break(1u);
    goto LABEL_43;
  }

  v5 = a2;
  v13 = *&v8[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection];
  v12 = *&v8[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 8];
  v51 = *&v8[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 16];
  v52 = v8[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 24];

  v53 = v12;

  v14 = v8;
  CanvasElementResizeView.selection.setter(a1, v5, a3, a4 & 1);

  v15 = *&v6[v7];
  if (!v15)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v16 = v7;
  v17 = v6;
  v18 = v15 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
  v19 = *v18;
  v20 = *(v18 + 8);
  v21 = *(v18 + 16);
  v22 = *(v18 + 24);

  _sSh2eeoiySbShyxG_ABtFZ9Coherence13WeakTagged_10Vy8PaperKit0D13CanvasElementVG_Tt1g5(v13, v19);
  if (v23)
  {
    _sSh2eeoiySbShyxG_ABtFZ9Coherence7WeakRefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGG_Tt1g5(v53, v20);
    v25 = v24;

    if (v25)
    {
      if (v52)
      {
        if (v22)
        {
LABEL_28:

          return;
        }
      }

      else
      {
        if (v51 == v21)
        {
          v43 = v22;
        }

        else
        {
          v43 = 1;
        }

        if ((v43 & 1) == 0)
        {
          goto LABEL_28;
        }
      }
    }
  }

  else
  {
  }

  if (one-time initialization token for miniMenuLogger != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, miniMenuLogger);
  v5 = v6;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 134217984;
    v30 = *&v6[v16];
    if (!v30)
    {
LABEL_45:

      __break(1u);
      goto LABEL_46;
    }

    *(v29 + 4) = *(*(v30 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection) + 16);
    v31 = v29;

    _os_log_impl(&dword_1D38C4000, v27, v28, "Changing selection to have %ld elements", v31, 0xCu);
    MEMORY[0x1DA6D0660](v31, -1, -1);
  }

  else
  {

    v27 = v5;
  }

  MEMORY[0x1EEE9AC00](v32);
  AnyCanvas.updateCanvasState(_:)();
  if (([v5 isFirstResponder]& 1) != 0)
  {

    goto LABEL_33;
  }

  v34 = *&v6[v16];
  if (!v34)
  {
LABEL_46:
    __break(1u);
    return;
  }

  v35 = v34;

  v36 = CanvasElementResizeView.resizingCanvasElements.getter();

  if (v36 >> 62)
  {
    v37 = __CocoaSet.count.getter();
  }

  else
  {
    v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v37)
  {
    v38 = [v5 window];
    if (v38)
    {
      v39 = v38;
      v40 = [objc_opt_self() activeToolPickerForWindow_];
      if (v40)
      {
        v41 = v40;
        v42 = [v40 _visibilityUpdatesEnabled];
        [v41 _setVisibilityUpdatesEnabled_];
        [v5 becomeFirstResponder];
        [v41 _setVisibilityUpdatesEnabled_];

        goto LABEL_33;
      }
    }

    v33 = [v5 becomeFirstResponder];
  }

LABEL_33:
  v44 = *(&v5->isa + OBJC_IVAR____TtC8PaperKit9AnyCanvas_handwritingReflowView);
  if (v44)
  {
    v45 = v44;
    HandwritingReflowView.updateForNewSelection()();
  }

  v46 = MEMORY[0x1E69E7D40];
  v47 = (*((*MEMORY[0x1E69E7D40] & v5->isa) + 0x520))(v33);
  v48 = *&v17[v16];
  if (!v48)
  {
    goto LABEL_44;
  }

  v49 = v48 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
  if (!*(*v49 + 16) && !*(*(v49 + 8) + 16) && (*(v49 + 24) & 1) == 0)
  {
    v50 = (*((*v46 & v5->isa) + 0x468))(v47);
    [v50 _clearSelectionIfNecessary];
  }
}

void AnyCanvas.availableZAxisMovement.getter()
{
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v99 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v98 = &v81[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v2);
  v94 = &v81[-v3];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v90 = *(v4 - 8);
  v91 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v81[-v5];
  v97 = type metadata accessor for CRKeyPath();
  v86 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v92 = &v81[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v93 = &v81[-v9];
  MEMORY[0x1EEE9AC00](v10);
  v95 = &v81[-v11];
  MEMORY[0x1EEE9AC00](v12);
  v96 = &v81[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v81[-v17];
  v19 = *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
  if (!v19)
  {
    goto LABEL_91;
  }

  v20 = *(v19 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection);
  v21 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x440))(v16);
  v23 = v22;
  ObjectType = swift_getObjectType();
  v25 = *(v23 + 32);

  v25(ObjectType, v23);

  v26 = v18;
  if (!*(v20 + 16) || *(v20 + 16) >= CROrderedSet.count.getter())
  {

    (*(v15 + 8))(v18, v14);
    return;
  }

  CROrderedSet.subscript.getter();
  v27 = v91;
  MEMORY[0x1DA6CB7A0](v91);
  v28 = v90[1];
  v28(v6, v27);
  if (__OFSUB__(CROrderedSet.count.getter(), 1))
  {
    goto LABEL_82;
  }

  v84 = v15;
  v85 = v14;
  v83 = v26;
  CROrderedSet.subscript.getter();
  MEMORY[0x1DA6CB7A0](v27);
  v28(v6, v27);
  v29 = 0;
  v30 = 1 << *(v20 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & *(v20 + 56);
  v33 = (v30 + 63) >> 6;
  v34 = v98;
  v87 = v99 + 32;
  v88 = v99 + 16;
  v90 = v86 + 1;
  v91 = v20;
  v86 = (v99 + 8);
  v35 = 3;
  v36 = v89;
  while (v32)
  {
LABEL_17:
    v38 = v99;
    v39 = v94;
    (*(v99 + 16))(v94, *(v91 + 48) + *(v99 + 72) * (__clz(__rbit64(v32)) | (v29 << 6)), v36);
    (*(v38 + 32))(v34, v39, v36);
    if ((v35 & 2) == 0)
    {
      goto LABEL_46;
    }

    MEMORY[0x1DA6CB5C0](v36);
    v40 = CRKeyPath.rawValue.getter();
    v42 = v41;
    v43 = CRKeyPath.rawValue.getter();
    v45 = v42 >> 62;
    v46 = v44 >> 62;
    if (v42 >> 62 == 3)
    {
      v47 = 0;
      if (!v40 && v42 == 0xC000000000000000 && v44 >> 62 == 3)
      {
        v47 = 0;
        if (!v43 && v44 == 0xC000000000000000)
        {
          outlined consume of Data._Representation(0, 0xC000000000000000);
          v48 = 0;
          v49 = 0xC000000000000000;
LABEL_60:
          outlined consume of Data._Representation(v48, v49);
          (*v90)(v93, v97);
          v34 = v98;
LABEL_61:
          v35 &= ~2uLL;
          if ((v35 & 1) == 0)
          {
            goto LABEL_11;
          }

          goto LABEL_47;
        }
      }
    }

    else if (v45)
    {
      if (v45 == 1)
      {
        LODWORD(v47) = HIDWORD(v40) - v40;
        if (__OFSUB__(HIDWORD(v40), v40))
        {
          goto LABEL_88;
        }

        v47 = v47;
      }

      else
      {
        v51 = *(v40 + 16);
        v50 = *(v40 + 24);
        v52 = __OFSUB__(v50, v51);
        v47 = v50 - v51;
        if (v52)
        {
          goto LABEL_87;
        }
      }
    }

    else
    {
      v47 = BYTE6(v42);
    }

    if (v46 > 1)
    {
      if (v46 != 2)
      {
        if (!v47)
        {
LABEL_59:
          outlined consume of Data._Representation(v43, v44);
          v48 = v40;
          v49 = v42;
          goto LABEL_60;
        }

LABEL_45:
        outlined consume of Data._Representation(v43, v44);
        outlined consume of Data._Representation(v40, v42);
        (*v90)(v93, v97);
        v34 = v98;
        goto LABEL_46;
      }

      v54 = *(v43 + 16);
      v53 = *(v43 + 24);
      v52 = __OFSUB__(v53, v54);
      v55 = v53 - v54;
      if (v52)
      {
        goto LABEL_84;
      }

      if (v47 != v55)
      {
        goto LABEL_45;
      }
    }

    else if (v46)
    {
      if (__OFSUB__(HIDWORD(v43), v43))
      {
        goto LABEL_83;
      }

      if (v47 != HIDWORD(v43) - v43)
      {
        goto LABEL_45;
      }
    }

    else if (v47 != BYTE6(v44))
    {
      goto LABEL_45;
    }

    if (v47 < 1)
    {
      goto LABEL_59;
    }

    v56 = v43;
    v57 = v44;
    outlined copy of Data._Representation(v43, v44);
    v82 = specialized Data.withUnsafeBytes<A>(_:)(v40, v42, v56, v57);
    v58 = v57;
    v36 = v89;
    outlined consume of Data._Representation(v56, v58);
    outlined consume of Data._Representation(v40, v42);
    (*v90)(v93, v97);
    v34 = v98;
    if (v82)
    {
      goto LABEL_61;
    }

LABEL_46:
    if ((v35 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_47:
    MEMORY[0x1DA6CB5C0](v36);
    v59 = CRKeyPath.rawValue.getter();
    v61 = v60;
    v62 = CRKeyPath.rawValue.getter();
    v64 = v61 >> 62;
    v65 = v63 >> 62;
    if (v61 >> 62 == 3)
    {
      v66 = 0;
      if (!v59 && v61 == 0xC000000000000000 && v63 >> 62 == 3)
      {
        v66 = 0;
        if (!v62 && v63 == 0xC000000000000000)
        {
          outlined consume of Data._Representation(0, 0xC000000000000000);
          v67 = 0;
          v68 = 0xC000000000000000;
LABEL_77:
          outlined consume of Data._Representation(v67, v68);
          (*v90)(v92, v97);
          v34 = v98;
LABEL_78:
          v35 &= ~1uLL;
          goto LABEL_11;
        }
      }

LABEL_64:
      if (v65 <= 1)
      {
        goto LABEL_65;
      }

      goto LABEL_70;
    }

    if (v64 == 2)
    {
      v70 = *(v59 + 16);
      v69 = *(v59 + 24);
      v52 = __OFSUB__(v69, v70);
      v66 = v69 - v70;
      if (v52)
      {
        goto LABEL_90;
      }

      goto LABEL_64;
    }

    if (v64 == 1)
    {
      LODWORD(v66) = HIDWORD(v59) - v59;
      if (__OFSUB__(HIDWORD(v59), v59))
      {
        goto LABEL_89;
      }

      v66 = v66;
      if (v65 <= 1)
      {
LABEL_65:
        if (v65)
        {
          LODWORD(v71) = HIDWORD(v62) - v62;
          if (__OFSUB__(HIDWORD(v62), v62))
          {
            goto LABEL_86;
          }

          v71 = v71;
        }

        else
        {
          v71 = BYTE6(v63);
        }

        goto LABEL_72;
      }
    }

    else
    {
      v66 = BYTE6(v61);
      if (v65 <= 1)
      {
        goto LABEL_65;
      }
    }

LABEL_70:
    if (v65 != 2)
    {
      if (!v66)
      {
        goto LABEL_76;
      }

LABEL_10:
      outlined consume of Data._Representation(v62, v63);
      outlined consume of Data._Representation(v59, v61);
      (*v90)(v92, v97);
      v34 = v98;
      goto LABEL_11;
    }

    v73 = *(v62 + 16);
    v72 = *(v62 + 24);
    v52 = __OFSUB__(v72, v73);
    v71 = v72 - v73;
    if (v52)
    {
      goto LABEL_85;
    }

LABEL_72:
    if (v66 != v71)
    {
      goto LABEL_10;
    }

    if (v66 < 1)
    {
LABEL_76:
      outlined consume of Data._Representation(v62, v63);
      v67 = v59;
      v68 = v61;
      goto LABEL_77;
    }

    v74 = v62;
    v75 = v63;
    outlined copy of Data._Representation(v62, v63);
    v82 = specialized Data.withUnsafeBytes<A>(_:)(v59, v61, v74, v75);
    v76 = v75;
    v36 = v89;
    outlined consume of Data._Representation(v74, v76);
    outlined consume of Data._Representation(v59, v61);
    (*v90)(v92, v97);
    v34 = v98;
    if (v82)
    {
      goto LABEL_78;
    }

LABEL_11:
    v32 &= v32 - 1;
    (*v86)(v34, v36);
    if (!v35)
    {

      v79 = *v90;
      v80 = v97;
      (*v90)(v95, v97);
      v79(v96, v80);
      (*(v84 + 8))(v83, v85);
      return;
    }
  }

  while (1)
  {
    v37 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v37 >= v33)
    {
      v77 = *v90;
      v78 = v97;
      (*v90)(v95, v97);
      v77(v96, v78);
      (*(v84 + 8))(v83, v85);

      return;
    }

    v32 = *(v20 + 56 + 8 * v37);
    ++v29;
    if (v32)
    {
      v29 = v37;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
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
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
}

uint64_t AnyCanvas.updateCanvasState(_:)()
{
  v1 = v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_participantDetailsDataSource;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 1);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(ObjectType, v3);
    v5 = swift_unknownObjectRelease();
    MEMORY[0x1EEE9AC00](v5);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit11CanvasStateVGMd, &_s9Coherence7CapsuleVy8PaperKit11CanvasStateVGMR);
    Capsule.callAsFunction<A>(_:)();
    swift_endAccess();

    return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x518))(v6);
  }

  return result;
}

uint64_t AnyCanvas.canvasUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8PaperKit9AnyCanvas__canvasUUID;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void AnyCanvas.selectedCanvasElementIds.getter()
{
  if (*(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView))
  {

    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9Coherence13WeakTagged_10Vy8PaperKit0f6CanvasB0VGG_AF9CRKeyPathVs5NeverOTg503_s8g7Kit9Anyi14C08selectedD10b17IdsSay9Coherence9jk9VGvgAgE13eF19_10VyAA0ldF0VGXEfU_Tf1cn_n(v1);
  }

  else
  {
    __break(1u);
  }
}

void AnyCanvas.selectedCanvasElementIds.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v133 = &v110 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v124 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v123 = &v110 - v10;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v126 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v122 = &v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v131 = &v110 - v13;
  v125 = type metadata accessor for CRKeyPath();
  v14 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v121 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v110 - v17);
  v19 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView;
  v20 = *(v2 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
  if (!v20)
  {
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v21 = v20 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
  v23 = *v21;
  v22 = *(v21 + 8);
  v111 = *(v21 + 16);
  v112 = *(v21 + 24);
  v24 = *(a1 + 16);
  v115 = v23;
  v114 = v22;
  v116 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView;
  if (v24)
  {
    v130 = v6;
    v25 = (*MEMORY[0x1E69E7D40] & *v2);
    v138 = v2;
    v25 += 136;
    v26 = *v25;
    v28 = *(v14 + 16);
    v27 = v14 + 16;
    v136 = v28;
    v137 = v25;
    v29 = (*(v27 + 64) + 32) & ~*(v27 + 64);
    v113 = a1;
    v30 = a1 + v29;
    v129 = (v7 + 48);
    v119 = (v7 + 32);
    v118 = (v7 + 16);
    v135 = *(v27 + 56);
    v117 = (v7 + 8);
    v31 = (v27 - 8);
    v128 = (v126 + 32);

    v134 = MEMORY[0x1E69E7CC0];
    v32 = v125;
    v120 = v27;
    v127 = v26;
    do
    {
      v33 = v136(v18, v30, v32);
      v34 = v26(v33);
      v36 = v35;
      ObjectType = swift_getObjectType();
      v38 = (*(v36 + 40))(ObjectType, v36);

      if (*(v38 + 16) && (v39 = specialized __RawDictionaryStorage.find<A>(_:)(v18), (v40 & 1) != 0))
      {
        v41 = *(*(v38 + 56) + 8 * v39);

        v43 = v133;
        (*((*MEMORY[0x1E69E7D40] & *v41) + 0xF0))(v42);
        v44 = v130;
        if ((*v129)(v43, 1, v130) == 1)
        {

          (*v31)(v18, v32);
          outlined destroy of StocksKitCurrencyCache.Provider?(v43, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
          v26 = v127;
        }

        else
        {
          v45 = v123;
          (*v119)(v123, v43, v44);
          v46 = v124;
          (*v118)(v124, v45, v44);
          WeakTagged_10.tag.getter();
          v139 = v141;
          v140 = v142;
          MEMORY[0x1DA6CB7A0](v44);
          lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
          v47 = v122;
          WeakTagged_10.init(_:id:)();

          v48 = *v117;
          (*v117)(v46, v44);
          v49 = v45;
          v32 = v125;
          v48(v49, v44);
          (*v31)(v18, v32);
          v50 = *v128;
          (*v128)(v131, v47, v132);
          v51 = v134;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v51[2] + 1, 1, v51);
          }

          v26 = v127;
          v53 = v51[2];
          v52 = v51[3];
          v134 = v51;
          if (v53 >= v52 >> 1)
          {
            v134 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1, v134);
          }

          v54 = v134;
          v134[2] = v53 + 1;
          v50(&v54[((*(v126 + 80) + 32) & ~*(v126 + 80)) + *(v126 + 72) * v53], v131, v132);
        }
      }

      else
      {

        (*v31)(v18, v32);
      }

      v30 += v135;
      --v24;
    }

    while (v24);

    v2 = v138;
    v19 = v116;
    v55 = v134;
  }

  else
  {

    v55 = MEMORY[0x1E69E7CC0];
  }

  v56 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence13WeakTagged_10Vy8PaperKit0d6CanvasA0VG_SayAJGTt0g5Tf4g_n(v55);

  v57 = *(v2 + v19);
  if (!v57)
  {
    goto LABEL_68;
  }

  v58 = *&v57[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection];
  v59 = *&v57[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 8];
  v18 = *&v57[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 16];
  v60 = v57[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 24];

  swift_bridgeObjectRetain_n();
  v61 = v57;
  CanvasElementResizeView.selection.setter(v56, v59, v18, v60);

  v62 = *(v2 + v19);
  if (!v62)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v63 = v62 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
  v64 = *v63;
  v65 = *(v63 + 8);
  v66 = *(v63 + 16);
  v67 = *(v63 + 24);

  _sSh2eeoiySbShyxG_ABtFZ9Coherence13WeakTagged_10Vy8PaperKit0D13CanvasElementVG_Tt1g5(v58, v64);
  if (v68)
  {
    _sSh2eeoiySbShyxG_ABtFZ9Coherence7WeakRefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGG_Tt1g5(v59, v65);
    v70 = v69;

    v71 = MEMORY[0x1E69E7D40];
    if (v70)
    {
      if (v60)
      {
        if (v67)
        {
LABEL_44:

          v80 = v115;
          v76 = v116;
          goto LABEL_54;
        }
      }

      else
      {
        if (v18 == v66)
        {
          v92 = v67;
        }

        else
        {
          v92 = 1;
        }

        if ((v92 & 1) == 0)
        {
          goto LABEL_44;
        }
      }
    }
  }

  else
  {

    v71 = MEMORY[0x1E69E7D40];
  }

  if (one-time initialization token for miniMenuLogger != -1)
  {
    swift_once();
  }

  v72 = type metadata accessor for Logger();
  __swift_project_value_buffer(v72, miniMenuLogger);
  v18 = v2;
  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.default.getter();
  v75 = os_log_type_enabled(v73, v74);
  v76 = v116;
  if (v75)
  {
    v77 = swift_slowAlloc();
    *v77 = 134217984;
    v78 = *(v2 + v76);
    if (!v78)
    {
LABEL_72:

      __break(1u);
      goto LABEL_73;
    }

    *(v77 + 4) = *(*(v78 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection) + 16);
    v79 = v77;

    _os_log_impl(&dword_1D38C4000, v73, v74, "Changing selection to have %ld elements", v79, 0xCu);
    MEMORY[0x1DA6D0660](v79, -1, -1);
  }

  else
  {

    v73 = v18;
  }

  v80 = v115;

  MEMORY[0x1EEE9AC00](v81);
  *(&v110 - 2) = v18;
  AnyCanvas.updateCanvasState(_:)();
  if (![v18 isFirstResponder])
  {
    v83 = *(v2 + v76);
    if (!v83)
    {
LABEL_73:
      __break(1u);
      return;
    }

    v84 = v83;

    v85 = CanvasElementResizeView.resizingCanvasElements.getter();

    if (v85 >> 62)
    {
      v86 = __CocoaSet.count.getter();
    }

    else
    {
      v86 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v86)
    {
      goto LABEL_47;
    }

    v87 = [v18 window];
    if (v87)
    {
      v88 = v87;
      v89 = [objc_opt_self() activeToolPickerForWindow_];
      if (v89)
      {
        v90 = v89;
        v91 = [v89 _visibilityUpdatesEnabled];
        [v90 _setVisibilityUpdatesEnabled_];
        [v18 becomeFirstResponder];
        [v90 _setVisibilityUpdatesEnabled_];

        goto LABEL_47;
      }
    }

    v82 = [v18 becomeFirstResponder];
    goto LABEL_47;
  }

LABEL_47:
  v93 = *(&v18->isa + OBJC_IVAR____TtC8PaperKit9AnyCanvas_handwritingReflowView);
  if (v93)
  {
    v94 = v93;
    HandwritingReflowView.updateForNewSelection()();
  }

  v95 = (*((*v71 & v18->isa) + 0x520))(v82);
  v96 = *(v2 + v76);
  if (!v96)
  {
    goto LABEL_71;
  }

  v97 = v96 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
  if (!*(*v97 + 16) && !*(*(v97 + 8) + 16) && (*(v97 + 24) & 1) == 0)
  {
    v98 = (*((*v71 & v18->isa) + 0x468))(v95);
    [v98 _clearSelectionIfNecessary];
  }

LABEL_54:
  v99 = *(v2 + v76);
  if (!v99)
  {
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v100 = v99 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
  v101 = *v100;
  v102 = *(v100 + 8);
  v103 = *(v100 + 16);
  v104 = *(v100 + 24);

  _sSh2eeoiySbShyxG_ABtFZ9Coherence13WeakTagged_10Vy8PaperKit0D13CanvasElementVG_Tt1g5(v101, v80);
  if ((v105 & 1) == 0)
  {

    goto LABEL_61;
  }

  _sSh2eeoiySbShyxG_ABtFZ9Coherence7WeakRefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGG_Tt1g5(v102, v114);
  v107 = v106;

  if ((v107 & 1) == 0)
  {
LABEL_61:
    (*((*v71 & *v2) + 0x520))(v108);
    return;
  }

  if (v104)
  {
    if (v112)
    {
      return;
    }

    goto LABEL_61;
  }

  v109 = v112;
  if (v103 != v111)
  {
    v109 = 1;
  }

  if (v109)
  {
    goto LABEL_61;
  }
}

void (*AnyCanvas.selectedCanvasElementIds.modify(void (*result)(uint64_t *a1, char a2)))(uint64_t *a1, char a2)
{
  *(result + 1) = v1;
  if (*(v1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView))
  {
    v2 = result;

    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9Coherence13WeakTagged_10Vy8PaperKit0f6CanvasB0VGG_AF9CRKeyPathVs5NeverOTg503_s8g7Kit9Anyi14C08selectedD10b17IdsSay9Coherence9jk9VGvgAgE13eF19_10VyAA0ldF0VGXEfU_Tf1cn_n(v3);
    v5 = v4;

    *v2 = v5;
    return AnyCanvas.selectedCanvasElementIds.modify;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void AnyCanvas.selectedCanvasElementIds.modify(uint64_t *a1, char a2)
{
  if (a2)
  {

    AnyCanvas.selectedCanvasElementIds.setter(v2);
  }

  else
  {
    AnyCanvas.selectedCanvasElementIds.setter(*a1);
  }
}

void AnyCanvas.hasSelectedCanvasElements.getter()
{
  if (*(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView))
  {

    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9Coherence13WeakTagged_10Vy8PaperKit0f6CanvasB0VGG_AF9CRKeyPathVs5NeverOTg503_s8g7Kit9Anyi14C08selectedD10b17IdsSay9Coherence9jk9VGvgAgE13eF19_10VyAA0ldF0VGXEfU_Tf1cn_n(v1);
  }

  else
  {
    __break(1u);
  }
}

void (*AnyCanvas._isInCanvasSelectionMode.modify(uint64_t a1))(uint64_t *a1)
{
  v2 = OBJC_IVAR____TtC8PaperKit9AnyCanvas__isInCanvasSelectionMode;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2);
  return AnyCanvas._isInCanvasSelectionMode.modify;
}

void AnyCanvas._isInCanvasSelectionMode.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(a1 + 16);
  v4 = *(*a1 + v1);
  *(v2 + v1) = v3;
  AnyCanvas._isInCanvasSelectionMode.didset(v4);
}

uint64_t AnyCanvas.isCurrentlyLiveEditing.getter(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas, &protocol conformance descriptor for AnyCanvas);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

void AnyCanvas.isInCanvasSelectionMode.setter(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__isInCanvasSelectionMode);
  if (v3 == v2)
  {
    *(v1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__isInCanvasSelectionMode) = v2;

    AnyCanvas._isInCanvasSelectionMode.didset(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas, &protocol conformance descriptor for AnyCanvas);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t (*AnyCanvas.isInCanvasSelectionMode.modify(uint64_t *a1))()
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
  v4[5] = OBJC_IVAR____TtC8PaperKit9AnyCanvas___observationRegistrar;
  *v4 = v1;
  v4[6] = _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas, &protocol conformance descriptor for AnyCanvas);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = AnyCanvas._isInCanvasSelectionMode.modify(v4);
  return AnyCanvas.isInCanvasSelectionMode.modify;
}

void AnyCanvas.startCroppingRootElement()()
{
  if (!*(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_cropView))
  {
    v1 = MEMORY[0x1E69E7D40];
    v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x450))();
    if (v2)
    {
      v3 = v2;
      AnyCanvas.canvasWillEnterCrop()();
      v4 = v3;
      [v4 safeAreaInsets];
      v6 = v5;
      [v4 safeAreaInsets];
      if (v6 > v7)
      {
        v8 = v6;
      }

      else
      {
        v8 = v7;
      }

      v64 = v8 + v8;
      [v4 safeAreaInsets];
      v10 = v9;
      [v4 safeAreaInsets];
      if (v10 > v11)
      {
        v12 = v10;
      }

      else
      {
        v12 = v11;
      }

      [v4 zoomScale];
      v14 = v13;
      [v4 frame];
      Width = CGRectGetWidth(v71);
      v16 = [v0 traitCollection];
      v17 = [v16 horizontalSizeClass];

      if (v17 == 1)
      {
        v18 = 16.0;
      }

      else
      {
        v18 = 20.0;
      }

      v19 = *((*v1 & *v0) + 0x440);
      v20 = v19();
      [v20 bounds];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;

      v72.origin.x = v22;
      v72.origin.y = v24;
      v72.size.width = v26;
      v72.size.height = v28;
      v29 = CGRectGetWidth(v72);
      [v4 frame];
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;

      v73.origin.x = v31;
      v73.origin.y = v33;
      v73.size.width = v35;
      v73.size.height = v37;
      Height = CGRectGetHeight(v73);
      v39 = [v0 traitCollection];
      v40 = [v39 horizontalSizeClass];

      v41 = 16.0;
      if (v40 != 1)
      {
        v41 = 20.0;
      }

      v42 = (Width - v64 - v18) / v29;
      v43 = Height - v63 - v41;
      v44 = v19();
      [v44 bounds];
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v52 = v51;

      v74.origin.x = v46;
      v74.origin.y = v48;
      v74.size.width = v50;
      v74.size.height = v52;
      v53 = v43 / CGRectGetHeight(v74);
      if (v53 >= v42)
      {
        v53 = v42;
      }

      v54 = fmax(v53, 0.0001);
      if (v54 < v14)
      {
        v14 = v54;
      }

      v55 = objc_opt_self();
      v56 = swift_allocObject();
      *(v56 + 16) = v4;
      *(v56 + 24) = v14;
      v69 = partial apply for closure #1 in AnyCanvas.startCroppingRootElement();
      v70 = v56;
      aBlock = MEMORY[0x1E69E9820];
      v66 = 1107296256;
      v67 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v68 = &block_descriptor_199;
      v57 = _Block_copy(&aBlock);
      v58 = v4;

      v59 = swift_allocObject();
      *(v59 + 16) = v58;
      *(v59 + 24) = v0;
      v69 = partial apply for closure #2 in AnyCanvas.startCroppingRootElement();
      v70 = v59;
      aBlock = MEMORY[0x1E69E9820];
      v66 = 1107296256;
      v67 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
      v68 = &block_descriptor_205_0;
      v60 = _Block_copy(&aBlock);
      v61 = v58;
      v62 = v0;

      [v55 animateWithDuration:v57 animations:v60 completion:0.25];
      _Block_release(v60);
      _Block_release(v57);
    }
  }
}

BOOL AnyCanvas.isHDRActive.getter()
{
  swift_getKeyPath();
  _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas, &protocol conformance descriptor for AnyCanvas);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = OBJC_IVAR____TtC8PaperKit9AnyCanvas__potentialHeadroomOverride;
  v2 = 1.0;
  if (*&v0[OBJC_IVAR____TtC8PaperKit9AnyCanvas__potentialHeadroomOverride] >= 1.0)
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v2 = *&v0[v1];
  }

  else
  {
    v3 = [v0 window];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 screen];

      [v5 potentialEDRHeadroom];
      v2 = v6;
    }
  }

  if (one-time initialization token for headroomLimitForHDR != -1)
  {
    swift_once();
  }

  return *&static AnyCanvas.headroomLimitForHDR < v2;
}

void AnyCanvas.isCurrentlyLiveEditing.setter(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == (a1 & 1))
  {
    *(v4 + *a2) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas, &protocol conformance descriptor for AnyCanvas);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

double AnyCanvas.potentialHeadroomOverride.getter()
{
  swift_getKeyPath();
  _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas, &protocol conformance descriptor for AnyCanvas);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__potentialHeadroomOverride);
}

void AnyCanvas.potentialHeadroomOverride.setter(double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__potentialHeadroomOverride);
  if (v3 == a1)
  {
    *(v1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__potentialHeadroomOverride) = a1;

    AnyCanvas._potentialHeadroomOverride.didset(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas, &protocol conformance descriptor for AnyCanvas);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t AnyCanvas.addTextBox(_:frame:setSelected:)(uint64_t a1, int a2, double a3, double a4, double a5, double a6)
{
  v136 = a2;
  v105 = a1;
  v10 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v135 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd, &_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMR);
  v133 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v132 = &v90 - v12;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  v13 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v91 = &v90 - v14;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v130 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v129 = &v90 - v15;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v127 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v126 = &v90 - v16;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd, &_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMR);
  v124 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v123 = &v90 - v17;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v120 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v117 = &v90 - v18;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6ShadowVSgMd, &_s8PaperKit6ShadowVSgMR);
  MEMORY[0x1EEE9AC00](v114);
  v113 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v112 = &v90 - v21;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11StrokeStyleOSgMd, &_s8PaperKit11StrokeStyleOSgMR);
  MEMORY[0x1EEE9AC00](v111);
  v110 = &v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v109 = &v90 - v24;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
  MEMORY[0x1EEE9AC00](v107);
  v106 = &v90 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v104 = &v90 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMR);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v115 = &v90 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v90 - v31;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v139);
  v97 = &v90 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v90 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v90 - v38;
  v141 = &v90 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v90 - v41;
  v143 = &v90 - v41;
  v138 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v138);
  v94 = &v90 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v93 = &v90 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v142 = &v90 - v47;
  v48 = type metadata accessor for Shape(0);
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v90 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v116 = &v90 - v52;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGMR);
  v119 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v118 = &v90 - v53;
  swift_storeEnumTagMultiPayload();
  v54 = type metadata accessor for Color(0);
  v55 = *(v54 - 8);
  v56 = *(v55 + 56);
  v57 = v55 + 56;
  v56(v42, 1, 1, v54);
  v56(v39, 1, 1, v54);
  v95 = v57;
  v96 = v56;
  v103 = v13;
  v58 = *(v13 + 16);
  v108 = v32;
  v59 = v140;
  v58(v32, v105, v140);
  (*(v13 + 56))(v32, 0, 1, v59);
  type metadata accessor for CGRect(0);
  v102 = v60;
  v100 = _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
  v144 = 0u;
  v145 = 0u;
  CRRegister.init(wrappedValue:)();
  *&v144 = 0;
  v92 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  CRRegister.init(_:)();
  v105 = v48[6];
  v56(v36, 1, 1, v54);
  v61 = v97;
  outlined init with copy of Date?(v36, v97, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  v99 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v36, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  v101 = v48[7];
  v96(v36, 1, 1, v54);
  v98 = v36;
  outlined init with copy of Date?(v36, v61, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v36, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  v97 = v48[8];
  *&v144 = 0x4014000000000000;
  CRRegister.init(wrappedValue:)();
  v96 = v48[9];
  v62 = v93;
  swift_storeEnumTagMultiPayload();
  outlined init with copy of ShapeType(v62, v94);
  v95 = _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, type metadata accessor for ShapeType, &protocol conformance descriptor for ShapeType);
  CRRegister.init(wrappedValue:)();
  outlined destroy of ShapeType(v62);
  *&v144 = 0x3FF0000000000000;
  CRRegister.init(wrappedValue:)();
  *&v144 = 0;
  BYTE8(v144) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMR);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMR, MEMORY[0x1E69950E8]);
  CRRegister.init(wrappedValue:)();
  *&v144 = 0;
  BYTE8(v144) = 0;
  CRRegister.init(wrappedValue:)();
  v63 = v48[13];
  lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
  v94 = v63;
  CRAttributedString.init(_:)();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMR);
  v65 = v104;
  (*(*(v64 - 8) + 56))(v104, 1, 1, v64);
  outlined init with copy of Date?(v65, v106, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
  lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v65, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
  v66 = v48[15];
  *&v144 = 0;
  v67 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
  v107 = v66;
  v106 = v67;
  CRRegister.init(wrappedValue:)();
  *&v144 = 0;
  lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
  CRRegister.init(wrappedValue:)();
  v68 = type metadata accessor for StrokeStyle(0);
  v69 = v109;
  (*(*(v68 - 8) + 56))(v109, 1, 1, v68);
  outlined init with copy of Date?(v69, v110, &_s8PaperKit11StrokeStyleOSgMd, &_s8PaperKit11StrokeStyleOSgMR);
  lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v69, &_s8PaperKit11StrokeStyleOSgMd, &_s8PaperKit11StrokeStyleOSgMR);
  v70 = type metadata accessor for Shadow(0);
  v71 = v112;
  (*(*(v70 - 8) + 56))(v112, 1, 1, v70);
  outlined init with copy of Date?(v71, v113, &_s8PaperKit6ShadowVSgMd, &_s8PaperKit6ShadowVSgMR);
  lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v71, &_s8PaperKit6ShadowVSgMd, &_s8PaperKit6ShadowVSgMR);
  v145 = 0u;
  v146 = 0u;
  v144 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd, &_s8PaperKit18ShapeAuxiliaryInfoVSgMR);
  lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  v114 = v48;
  UnknownProperties.init()();
  *&v144 = a3;
  *(&v144 + 1) = a4;
  *&v145 = a5;
  *(&v145 + 1) = a6;
  v72 = v117;
  CRRegister.init(_:)();
  (*(v120 + 40))(v50, v72, v122);
  outlined init with copy of ShapeType(v142, v62);
  v73 = v123;
  CRRegister.init(_:)();
  (*(v124 + 40))(v96 + v50, v73, v125);
  *&v144 = 0;
  v74 = v126;
  CRRegister.init(_:)();
  (*(v127 + 40))(&v50[v97], v74, v128);
  v75 = v98;
  outlined init with copy of Date?(v143, v98, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  v76 = v129;
  CRRegister.init(_:)();
  v77 = *(v130 + 40);
  v78 = v131;
  v77(&v50[v101], v76, v131);
  outlined init with copy of Date?(v141, v75, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  CRRegister.init(_:)();
  v79 = v78;
  v80 = v108;
  v77(&v50[v105], v76, v79);
  v81 = v115;
  v82 = v140;
  outlined init with copy of Date?(v80, v115, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMR);
  v83 = v103;
  if ((*(v103 + 48))(v81, 1, v82) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v81, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMR);
  }

  else
  {
    v84 = v91;
    (*(v83 + 32))(v91, v81, v82);
    (*(v83 + 40))(&v50[v94], v84, v82);
  }

  *&v144 = 0;
  v85 = v132;
  CRRegister.init(_:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v80, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v141, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v143, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  outlined destroy of ShapeType(v142);
  (*(v133 + 40))(&v50[v107], v85, v134);
  outlined init with take of Shape(v50, v116);
  static CRKeyPath.unique.getter();
  v86 = _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type Shape and conformance Shape, type metadata accessor for Shape, &protocol conformance descriptor for Shape);
  v87 = v118;
  v88 = v114;
  Capsule.init(_:id:)();
  (*((*MEMORY[0x1E69E7D40] & *v137) + 0x700))(v87, v136 & 1, 0, 0, v88, v86, &protocol witness table for Shape);
  return (*(v119 + 8))(v87, v121);
}

uint64_t AnyCanvas.acceptedDropLayouts.getter()
{
  v1 = OBJC_IVAR____TtC8PaperKit9AnyCanvas____lazy_storage___acceptedDropLayouts;
  if (*(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas____lazy_storage___acceptedDropLayouts))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas____lazy_storage___acceptedDropLayouts);
  }

  else
  {
    v2 = closure #1 in AnyCanvas.acceptedDropLayouts.getter();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t AnyCanvas.merge<A>(_:from:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v12 = *a2;
  v8 = v12;
  v9 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v4) + 0x7D8))(a1, &v12);
  if (!v8)
  {
    (*((*v9 & *v4) + 0x7D0))(a1, a3, a4);
  }

  v11 = v8;
  return (*((*v9 & *v4) + 0x7B0))(&v11);
}

Swift::Void __swiftcall AnyCanvas.forwardChanges(from:)(PaperKit::AnyCanvas::MergeSource from)
{
  v2 = *from;
  if (v2 <= 1)
  {
    v4 = MEMORY[0x1E69E7D40];
    v5 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x7E0))();
    (*((*v4 & *v1) + 0x7C8))(v5);
  }

  else if (v2 == 2)
  {
    v6 = MEMORY[0x1E69E7D40];
    v7 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x7E0))();
    (*((*v6 & *v1) + 0x7E8))(v7);
  }

  else if (v2 == 3)
  {
    v3 = MEMORY[0x1EEE9AC00](from);
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x7C0))(partial apply for closure #1 in AnyCanvas.forwardChanges(from:), v3);
  }

  else
  {
    v8 = MEMORY[0x1E69E7D40];
    v9 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x7B8))();
    v10 = (*((*v8 & *v1) + 0x7E8))(v9);
    (*((*v8 & *v1) + 0x7F0))(v10);
  }

  v11 = *(v1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
  if (v11)
  {
    v12 = *(v11 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_miniMenuController);
    if (v12)
    {
      *(v12 + direct field offset for MiniMenuController.needsStateUpdate) = 1;
    }
  }

  else
  {
    __break(1u);
  }
}

Swift::Bool __swiftcall AnyCanvas.hit(byTouchLocation:canvasBounds:)(CGPoint byTouchLocation, __C::CGRect canvasBounds)
{
  y = byTouchLocation.y;
  x = byTouchLocation.x;
  v5.x = x;
  v5.y = y;
  return CGRectContainsPoint(canvasBounds, v5);
}

void *AnyCanvas.height(from:delta:)(void *result)
{
  if (result)
  {
    [result bounds];
    CGRectGetHeight(v6);
    v2 = MEMORY[0x1E69E7D40];
    v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x450))();
    if (v3)
    {
      v4 = v3;
      [v3 zoomScale];
    }

    return (*((*v2 & *v1) + 0x858))(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall AnyCanvas.beginLiveResize()()
{
  v1 = *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
  if (v1)
  {
    [v1 setHidden_];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall AnyCanvas.endLiveResize(discard:)(Swift::Bool discard)
{
  v2 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView;
  v3 = *(v1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  [v3 setNeedsLayout];
  v4 = *(v1 + v2);
  if (!v4)
  {
LABEL_7:
    __break(1u);
    return;
  }

  [v4 setHidden_];
}

double AnyCanvas.drawingTransformOverride.getter@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 1;
  return result;
}

void (*AnyCanvas._viewControllerForPresentingUI.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8PaperKit9AnyCanvas__viewControllerForPresentingUI;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return AnyCanvas._viewControllerForPresentingUI.modify;
}

void AnyCanvas._viewControllerForPresentingUI.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    v5 = *(v3 + 32);
    swift_endAccess();

    v6 = (*((*MEMORY[0x1E69E7D40] & *v5) + 0x440))();
    v8 = v7;
    ObjectType = swift_getObjectType();
    (*(v8 + 24))(ObjectType, v8);
  }

  free(v3);
}

uint64_t AnyCanvas.viewControllerForPresentingUI.getter()
{
  swift_getKeyPath();
  _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas, &protocol conformance descriptor for AnyCanvas);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

void AnyCanvas.viewControllerForPresentingUI.setter(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a1)
    {
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258);
      v5 = v4;
      v6 = static NSObject.== infix(_:_:)();

      if ((v6 & 1) == 0)
      {
        goto LABEL_8;
      }

LABEL_6:
      v7 = swift_unknownObjectWeakAssign();
      v8 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x440))(v7);
      v10 = v9;
      ObjectType = swift_getObjectType();
      (*(v10 + 24))(ObjectType, v10);

      return;
    }
  }

  else if (!a1)
  {
    goto LABEL_6;
  }

LABEL_8:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas, &protocol conformance descriptor for AnyCanvas);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t (*AnyCanvas.viewControllerForPresentingUI.modify(uint64_t *a1))()
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
  v4[5] = OBJC_IVAR____TtC8PaperKit9AnyCanvas___observationRegistrar;
  *v4 = v1;
  v4[6] = _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas, &protocol conformance descriptor for AnyCanvas);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = AnyCanvas._viewControllerForPresentingUI.modify(v4);
  return AnyCanvas.viewControllerForPresentingUI.modify;
}

double AnyCanvas.scaleFactorForNewElements.getter()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x348))();
  if ((v2 & 1) != 0 || (v3 = *&v1, (v4 = [v0 window]) == 0))
  {
    [v0 bounds];
    v12 = v11;
    [v0 bounds];
    if (v13 >= v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = v13;
    }

    v10 = 1.0;
    if (v14 > 1024.0)
    {
      v10 = v14 * 0.0009765625;
    }
  }

  else
  {
    v5 = v3;
    v6 = v4;
    v7 = [v4 screen];

    [v7 scale];
    v9 = v8;

    v10 = v9 / v5;
  }

  v15 = v10 * 10.0;
  v16 = floor(v15);
  v17 = v15 - v16;
  v18 = ceil(v15);
  if (v17 < 0.49)
  {
    v18 = v16;
  }

  return fmax(v18 / 10.0, 0.1);
}

CGSize __swiftcall AnyCanvas.adjustedSizeForNewCanvasElement(withSize:)(CGSize withSize)
{
  height = withSize.height;
  width = withSize.width;
  v2 = [v1 window];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 screen];

    [v4 scale];
    v13 = v5;
  }

  else
  {
    v13 = 1.0;
  }

  v6 = AnyCanvas.scaleFactorForNewElements.getter();
  v7.f64[0] = width;
  v7.f64[1] = height;
  v8 = vmulq_n_f64(vmulq_n_f64(v7, v6), v13);
  v9 = vrndmq_f64(v8);
  v10 = vdivq_f64(vbslq_s8(vcgeq_f64(vsubq_f64(v8, v9), vdupq_n_s64(0x3FDF5C28F5C28F5CuLL)), vrndpq_f64(v8), v9), vdupq_lane_s64(*&v13, 0));
  v11 = v10.f64[1];
  result.width = v10.f64[0];
  result.height = v11;
  return result;
}

UIContextMenuConfiguration_optional __swiftcall AnyCanvas.customContextMenuInteraction(canvasElementViews:suggestedActions:)(Swift::OpaquePointer canvasElementViews, Swift::OpaquePointer suggestedActions)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v37 = *(v9 - 8);
  v38 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v41 = v33 - v10;
  swift_getKeyPath();
  aBlock[0] = v2;
  _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas, &protocol conformance descriptor for AnyCanvas);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = v2 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v33[0] = *(v11 + 8);
    if (canvasElementViews._rawValue >> 62)
    {
      goto LABEL_25;
    }

    v13 = *((canvasElementViews._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (1)
    {
      v33[1] = Strong;
      v34 = v3;
      rawValue = suggestedActions._rawValue;
      if (!v13)
      {
        break;
      }

      v14 = 0;
      v15 = canvasElementViews._rawValue & 0xC000000000000001;
      v3 = v38;
      suggestedActions._rawValue = (v37 + 48);
      v39 = (v37 + 32);
      v40 = canvasElementViews._rawValue & 0xFFFFFFFFFFFFFF8;
      v16 = MEMORY[0x1E69E7CC0];
      v36 = canvasElementViews._rawValue & 0xC000000000000001;
      while (1)
      {
        if (v15)
        {
          Strong = MEMORY[0x1DA6CE0C0](v14, canvasElementViews._rawValue);
        }

        else
        {
          if (v14 >= *(v40 + 16))
          {
            goto LABEL_24;
          }

          Strong = *(canvasElementViews._rawValue + v14 + 4);
        }

        v17 = Strong;
        v18 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        (*((*MEMORY[0x1E69E7D40] & *Strong) + 0xF0))();

        if ((*suggestedActions._rawValue)(v8, 1, v3) == 1)
        {
          Strong = outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
        }

        else
        {
          v19 = v13;
          v20 = canvasElementViews._rawValue;
          v21 = *v39;
          (*v39)(v41, v8, v3);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16[2] + 1, 1, v16);
          }

          v23 = v16[2];
          v22 = v16[3];
          if (v23 >= v22 >> 1)
          {
            v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v16);
          }

          v16[2] = v23 + 1;
          v24 = v16 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v23;
          v3 = v38;
          Strong = (v21)(v24, v41, v38);
          canvasElementViews._rawValue = v20;
          v13 = v19;
          v15 = v36;
        }

        ++v14;
        if (v18 == v13)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      v32 = Strong;
      v13 = __CocoaSet.count.getter();
      Strong = v32;
    }

    v16 = MEMORY[0x1E69E7CC0];
LABEL_21:
    ObjectType = swift_getObjectType();
    v28 = (*(v33[0] + 32))(v34, v16, rawValue, ObjectType);
    swift_unknownObjectRelease();
  }

  else
  {
    v25 = swift_allocObject();
    v25[2]._rawValue = suggestedActions._rawValue;
    v26 = objc_opt_self();
    aBlock[4] = partial apply for closure #1 in PaperDocumentViewDelegate.documentView(_:contextMenuConfigurationFor:on:suggestedActions:);
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned UIMenu?);
    aBlock[3] = &block_descriptor_54;
    v27 = _Block_copy(aBlock);

    v28 = [v26 configurationWithIdentifier:0 previewProvider:0 actionProvider:v27];

    _Block_release(v27);
  }

  v31 = v28;
  result.value.super.isa = v31;
  result.is_nil = v29;
  return result;
}