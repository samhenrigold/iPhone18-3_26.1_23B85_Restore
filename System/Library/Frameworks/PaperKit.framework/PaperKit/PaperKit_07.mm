uint64_t lazy protocol witness table accessor for type CRAsset and conformance CRAsset(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with copy of PDFPageID(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PDFPageID(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void specialized SignatureProvider.render(in:darkMode:scale:)(CGContext *a1, char a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v41 - v7);
  type metadata accessor for Signature(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMR);
  CRRegister.wrappedValue.getter();
  a = t1.a;
  if (*&t1.a)
  {
    j___s8PaperKit9SignatureVAA0C8ProviderA2aDP5frameSo6CGRectVvgTWTm();
    v11 = v10;
    v13 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
    CRRegister.wrappedValue.getter();
    v14 = type metadata accessor for Color(0);
    if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
      v15 = 0;
    }

    else
    {
      v15 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
      outlined destroy of Signature.Partial(v8, type metadata accessor for Color);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiSgGMd, &_s9Coherence10CRRegisterVySiSgGMR);
    CRRegister.wrappedValue.getter();
    v16 = SignatureItem.image(withMaximumSize:color:lineWidth:darkMode:renderScale:)(v15, *&t1.a, LOBYTE(t1.b), a2 & 1, v11, v13, a3);

    if (v16)
    {
      v17 = [v16 CGImage];

      if (v17)
      {
        CGContextSaveGState(a1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
        CRRegister.wrappedValue.getter();
        v18 = t1.a;
        j___s8PaperKit9SignatureVAA0C8ProviderA2aDP5frameSo6CGRectVvgTWTm();
        x = v46.origin.x;
        y = v46.origin.y;
        width = v46.size.width;
        height = v46.size.height;
        MidX = CGRectGetMidX(v46);
        v47.origin.x = x;
        v47.origin.y = y;
        v47.size.width = width;
        v47.size.height = height;
        MidY = CGRectGetMidY(v47);
        CGAffineTransformMakeRotation(&t1, v18);
        tx = t1.tx;
        ty = t1.ty;
        v42 = *&t1.a;
        v41 = *&t1.c;
        CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
        v27 = t1.a;
        b = t1.b;
        c = t1.c;
        d = t1.d;
        v31 = t1.tx;
        v32 = t1.ty;
        *&t2.a = v42;
        *&t2.c = v41;
        t2.tx = tx;
        t2.ty = ty;
        CGAffineTransformConcat(&v43, &t1, &t2);
        v33 = v43.tx;
        v34 = v43.ty;
        v42 = *&v43.a;
        v41 = *&v43.c;
        t1.a = v27;
        t1.b = b;
        t1.c = c;
        t1.d = d;
        t1.tx = v31;
        t1.ty = v32;
        CGAffineTransformInvert(&t2, &t1);
        *&t1.a = v42;
        *&t1.c = v41;
        t1.tx = v33;
        t1.ty = v34;
        CGAffineTransformConcat(&v43, &t1, &t2);
        t1 = v43;
        CGContextConcatCTM(a1, &t1);
        j___s8PaperKit9SignatureVAA0C8ProviderA2aDP5frameSo6CGRectVvgTWTm();
        v35 = v48.origin.x;
        v36 = v48.origin.y;
        v37 = v48.size.width;
        v38 = v48.size.height;
        MinY = CGRectGetMinY(v48);
        v49.origin.x = v35;
        v49.origin.y = v36;
        v49.size.width = v37;
        v49.size.height = v38;
        MaxY = CGRectGetMaxY(v49);
        t1.a = 1.0;
        t1.b = 0.0;
        t1.c = 0.0;
        t1.d = 1.0;
        t1.tx = 0.0;
        t1.ty = 0.0;
        t2.b = 0.0;
        t2.c = 0.0;
        t2.a = 1.0;
        *&t2.d = xmmword_1D405A660;
        t2.ty = MinY + MaxY;
        CGAffineTransformConcat(&v43, &t1, &t2);
        t1 = v43;
        CGContextConcatCTM(a1, &t1);
        CGImageSetProperty();
        j___s8PaperKit9SignatureVAA0C8ProviderA2aDP5frameSo6CGRectVvgTWTm();
        CGContextRef.draw(_:in:byTiling:)(v17, v50, 0);
        CGContextRestoreGState(a1);
      }
    }
  }
}

{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v39 - v9);
  if (*(v3 + 5))
  {
    v11 = v3[2];
    v12 = v3[3];
    v13 = type metadata accessor for SignatureValue(0);
    outlined init with copy of Date?(v3 + *(v13 + 28), v10, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
    v14 = type metadata accessor for Color(0);
    if ((*(*(v14 - 8) + 48))(v10, 1, v14) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
      v15 = 0;
    }

    else
    {
      v15 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
      outlined destroy of Signature.Partial(v10, type metadata accessor for Color);
    }

    v16 = SignatureItem.image(withMaximumSize:color:lineWidth:darkMode:renderScale:)(v15, *(v3 + *(v13 + 32)), *(v3 + *(v13 + 32) + 8), a2 & 1, v11, v12, a3);

    if (v16)
    {
      v17 = [v16 CGImage];

      if (v17)
      {
        CGContextSaveGState(a1);
        v18 = v4[4];
        v20 = v4[1];
        v44 = *v4;
        v19 = v44;
        v43 = v20;
        v48.origin.x = v44;
        v48.origin.y = v20;
        v48.size.width = v11;
        v48.size.height = v12;
        MidX = CGRectGetMidX(v48);
        v49.origin.x = v19;
        v49.origin.y = v20;
        v49.size.width = v11;
        v49.size.height = v12;
        MidY = CGRectGetMidY(v49);
        CGAffineTransformMakeRotation(&t1, v18);
        tx = t1.tx;
        ty = t1.ty;
        v40 = *&t1.a;
        v39 = *&t1.c;
        CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
        a = t1.a;
        b = t1.b;
        v42 = v11;
        v41 = v12;
        c = t1.c;
        d = t1.d;
        v29 = t1.tx;
        v30 = t1.ty;
        *&t2.a = v40;
        *&t2.c = v39;
        t2.tx = tx;
        t2.ty = ty;
        CGAffineTransformConcat(&v45, &t1, &t2);
        v31 = v45.tx;
        v32 = v45.ty;
        v40 = *&v45.a;
        v39 = *&v45.c;
        t1.a = a;
        t1.b = b;
        t1.c = c;
        t1.d = d;
        t1.tx = v29;
        t1.ty = v30;
        CGAffineTransformInvert(&t2, &t1);
        *&t1.a = v40;
        *&t1.c = v39;
        t1.tx = v31;
        t1.ty = v32;
        CGAffineTransformConcat(&v45, &t1, &t2);
        t1 = v45;
        CGContextConcatCTM(a1, &t1);
        v33 = v44;
        v50.origin.x = v44;
        v34 = v43;
        v50.origin.y = v43;
        v35 = v42;
        v50.size.width = v42;
        v36 = v41;
        v50.size.height = v41;
        MinY = CGRectGetMinY(v50);
        v51.origin.x = v33;
        v51.origin.y = v34;
        v51.size.width = v35;
        v51.size.height = v36;
        MaxY = CGRectGetMaxY(v51);
        t1.a = 1.0;
        t1.b = 0.0;
        t1.c = 0.0;
        t1.d = 1.0;
        t1.tx = 0.0;
        t1.ty = 0.0;
        t2.b = 0.0;
        t2.c = 0.0;
        t2.a = 1.0;
        *&t2.d = xmmword_1D405A660;
        t2.ty = MinY + MaxY;
        CGAffineTransformConcat(&v45, &t1, &t2);
        t1 = v45;
        CGContextConcatCTM(a1, &t1);
        CGImageSetProperty();
        v52.origin.x = v33;
        v52.origin.y = v34;
        v52.size.width = v35;
        v52.size.height = v36;
        CGContextRef.draw(_:in:byTiling:)(v17, v52, 0);
        CGContextRestoreGState(a1);
      }
    }
  }
}

double Signature.frame.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.getter();
  return v1;
}

double key path getter for Signature.frame : Signature@<D0>(_OWORD *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.getter();
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t (*Signature.frame.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t Signature.$frame.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);

  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for Signature.$frame : Signature(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t Signature.$frame.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

void (*Signature.$frame.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$inherited.modify;
}

double Signature.rotation.getter()
{
  type metadata accessor for Signature(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.getter();
  return v1;
}

double key path getter for Signature.rotation : Signature@<D0>(double *a1@<X8>)
{
  type metadata accessor for Signature(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.getter();
  result = v3;
  *a1 = v3;
  return result;
}

uint64_t key path setter for Signature.rotation : Signature(uint64_t *a1)
{
  type metadata accessor for Signature(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  return CRRegister.wrappedValue.setter();
}

uint64_t Signature.rotation.setter(double a1)
{
  type metadata accessor for Signature(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  return CRRegister.wrappedValue.setter();
}

uint64_t (*Signature.rotation.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Signature(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t Signature.$rotation.getter()
{
  type metadata accessor for Signature(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  return CRRegister.projectedValue.getter();
}

uint64_t key path getter for Signature.$rotation : Signature()
{
  type metadata accessor for Signature(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for Signature.$rotation : Signature(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for Signature(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t Signature.$rotation.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for Signature(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Signature.$rotation.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for Signature(0) + 20);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

uint64_t Signature.signatureItem.getter()
{
  type metadata accessor for Signature(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMR);
  CRRegister.wrappedValue.getter();
  return v1;
}

void key path getter for Signature.signatureItem : Signature(void *a1@<X8>)
{
  type metadata accessor for Signature(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMR);
  CRRegister.wrappedValue.getter();
  *a1 = v2;
}

uint64_t key path setter for Signature.signatureItem : Signature(id *a1)
{
  v1 = *a1;
  type metadata accessor for Signature(0);
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMR);
  return CRRegister.wrappedValue.setter();
}

uint64_t Signature.signatureItem.setter(uint64_t a1)
{
  type metadata accessor for Signature(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMR);
  return CRRegister.wrappedValue.setter();
}

uint64_t (*Signature.signatureItem.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Signature(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMR);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeStruct.properties.modify;
}

uint64_t Signature.$signatureItem.getter()
{
  type metadata accessor for Signature(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMR);
  return CRRegister.projectedValue.getter();
}

uint64_t key path getter for Signature.$signatureItem : Signature()
{
  type metadata accessor for Signature(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMR);
  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for Signature.$signatureItem : Signature(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for Signature(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t Signature.$signatureItem.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMR);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for Signature(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Signature.$signatureItem.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMR);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for Signature(0) + 24);
  CRRegister.projectedValue.getter();
  return PKStrokeStruct.$properties.modify;
}

uint64_t key path setter for Signature.color : Signature(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  outlined init with copy of Date?(a1, &v9 - v6, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  outlined init with copy of Date?(v7, v4, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  type metadata accessor for Signature(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
}

uint64_t Signature.color.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  outlined init with copy of Date?(a1, &v5 - v3, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  type metadata accessor for Signature(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(a1, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
}

uint64_t (*Signature.color.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Signature(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t Signature.color.getter(uint64_t (*a1)(uint64_t))
{
  type metadata accessor for Signature(0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  return a1(v2);
}

uint64_t key path getter for Signature.color : Signature(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for Signature(0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  return a4(v5);
}

uint64_t key path setter for Signature.$color : Signature(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for Signature(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t Signature.$color.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for Signature(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Signature.$color.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for Signature(0) + 28);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

uint64_t Signature.width.getter()
{
  type metadata accessor for Signature(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiSgGMd, &_s9Coherence10CRRegisterVySiSgGMR);
  CRRegister.wrappedValue.getter();
  return v1;
}

void key path getter for Signature.width : Signature(uint64_t a1@<X8>)
{
  type metadata accessor for Signature(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiSgGMd, &_s9Coherence10CRRegisterVySiSgGMR);
  CRRegister.wrappedValue.getter();
  *a1 = v2;
  *(a1 + 8) = v3;
}

uint64_t key path setter for Signature.width : Signature(uint64_t *a1)
{
  type metadata accessor for Signature(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiSgGMd, &_s9Coherence10CRRegisterVySiSgGMR);
  return CRRegister.wrappedValue.setter();
}

uint64_t Signature.width.setter(uint64_t a1, char a2)
{
  type metadata accessor for Signature(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiSgGMd, &_s9Coherence10CRRegisterVySiSgGMR);
  return CRRegister.wrappedValue.setter();
}

uint64_t (*Signature.width.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Signature(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiSgGMd, &_s9Coherence10CRRegisterVySiSgGMR);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t Signature.$width.getter()
{
  type metadata accessor for Signature(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiSgGMd, &_s9Coherence10CRRegisterVySiSgGMR);
  return CRRegister.projectedValue.getter();
}

uint64_t key path getter for Signature.$width : Signature()
{
  type metadata accessor for Signature(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiSgGMd, &_s9Coherence10CRRegisterVySiSgGMR);
  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for Signature.$width : Signature(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiSgGMd, &_s9Coherence10CRRegisterVySiSgGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for Signature(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t Signature.$width.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiSgGMd, &_s9Coherence10CRRegisterVySiSgGMR);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for Signature(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Signature.$width.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiSgGMd, &_s9Coherence10CRRegisterVySiSgGMR);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for Signature(0) + 32);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

BOOL Signature.Partial.merge(delta:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiSgGMd, &_s9Coherence10CRRegisterVySiSgGMR);
  v106 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v85 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiSgGSgMd, &_s9Coherence10CRRegisterVySiSgGSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v97 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v85 - v10;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v105 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v93 = &v85 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v96 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v102 = &v85 - v16;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMR);
  v104 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v92 = &v85 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGSgMR);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v95 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v100 = &v85 - v21;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v107 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v91 = &v85 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v94 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v98 = &v85 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v90 = &v85 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = &v85 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v85 - v34;
  v108 = type metadata accessor for Signature.Partial(0);
  MEMORY[0x1EEE9AC00](v108);
  v37 = &v85 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Signature.Partial(v2, v37, type metadata accessor for Signature.Partial);
  v109 = a1;
  v38 = Signature.Partial.canMerge(delta:)(a1);
  outlined destroy of Signature.Partial(v37, type metadata accessor for Signature.Partial);
  if (v38)
  {
    v87 = v38;
    v88 = v11;
    v86 = v6;
    v89 = v4;
    outlined init with copy of Date?(v2, v35, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    v39 = *(v28 + 48);
    v40 = v39(v35, 1, v27);
    outlined destroy of StocksKitCurrencyCache.Provider?(v35, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    if (v40 == 1)
    {
      outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v109, v2, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    }

    else
    {
      outlined init with copy of Date?(v109, v32, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
      if (v39(v32, 1, v27) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v32, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
      }

      else
      {
        v41 = v90;
        (*(v28 + 32))(v90, v32, v27);
        if (!v39(v2, 1, v27))
        {
          CRRegister.merge(delta:)();
        }

        (*(v28 + 8))(v41, v27);
      }
    }

    v42 = v108;
    v43 = *(v108 + 20);
    v44 = v98;
    outlined init with copy of Date?(v2 + v43, v98, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
    v45 = *(v107 + 48);
    v46 = v99;
    v47 = v45(v44, 1, v99);
    outlined destroy of StocksKitCurrencyCache.Provider?(v44, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
    v48 = v42[5];
    if (v47 == 1)
    {
      outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v109 + v48, v2 + v43, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
      v49 = v104;
    }

    else
    {
      v50 = v94;
      outlined init with copy of Date?(v109 + v48, v94, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
      v51 = v45(v50, 1, v46);
      v49 = v104;
      if (v51 == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v50, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
      }

      else
      {
        v52 = v50;
        v53 = v107;
        v54 = v91;
        (*(v107 + 32))(v91, v52, v46);
        if (!v45(v2 + v43, 1, v46))
        {
          CRRegister.merge(delta:)();
          v53 = v107;
        }

        (*(v53 + 8))(v54, v46);
      }
    }

    v55 = v42[6];
    v56 = v100;
    outlined init with copy of Date?(v2 + v55, v100, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGSgMR);
    v57 = *(v49 + 48);
    v58 = v101;
    v59 = v57(v56, 1, v101);
    outlined destroy of StocksKitCurrencyCache.Provider?(v56, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGSgMR);
    v60 = v42[6];
    if (v59 == 1)
    {
      outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v109 + v60, v2 + v55, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGSgMR);
    }

    else
    {
      v61 = v95;
      outlined init with copy of Date?(v109 + v60, v95, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGSgMR);
      if (v57(v61, 1, v58) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v61, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGSgMR);
      }

      else
      {
        v62 = v104;
        v63 = v92;
        (*(v104 + 32))(v92, v61, v58);
        if (!v57(v2 + v55, 1, v58))
        {
          CRRegister.merge(delta:)();
        }

        (*(v62 + 8))(v63, v58);
      }
    }

    v64 = v42[7];
    v66 = v102;
    v65 = v103;
    outlined init with copy of Date?(v2 + v64, v102, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
    v67 = *(v105 + 48);
    v68 = v67(v66, 1, v65);
    v69 = v66;
    v70 = v108;
    outlined destroy of StocksKitCurrencyCache.Provider?(v69, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
    v71 = *(v70 + 28);
    if (v68 == 1)
    {
      outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v109 + v71, v2 + v64, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
    }

    else
    {
      v72 = v96;
      outlined init with copy of Date?(v109 + v71, v96, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
      if (v67(v72, 1, v65) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v72, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
      }

      else
      {
        v73 = v105;
        v74 = v93;
        (*(v105 + 32))(v93, v72, v65);
        if (!v67(v2 + v64, 1, v65))
        {
          CRRegister.merge(delta:)();
        }

        (*(v73 + 8))(v74, v65);
      }
    }

    v75 = v89;
    v76 = *(v70 + 32);
    v77 = v88;
    outlined init with copy of Date?(v2 + v76, v88, &_s9Coherence10CRRegisterVySiSgGSgMd, &_s9Coherence10CRRegisterVySiSgGSgMR);
    v78 = *(v106 + 48);
    v79 = v78(v77, 1, v75);
    outlined destroy of StocksKitCurrencyCache.Provider?(v77, &_s9Coherence10CRRegisterVySiSgGSgMd, &_s9Coherence10CRRegisterVySiSgGSgMR);
    v80 = *(v70 + 32);
    if (v79 == 1)
    {
      outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v109 + v80, v2 + v76, &_s9Coherence10CRRegisterVySiSgGSgMd, &_s9Coherence10CRRegisterVySiSgGSgMR);
    }

    else
    {
      v81 = v97;
      outlined init with copy of Date?(v109 + v80, v97, &_s9Coherence10CRRegisterVySiSgGSgMd, &_s9Coherence10CRRegisterVySiSgGSgMR);
      if (v78(v81, 1, v75) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v81, &_s9Coherence10CRRegisterVySiSgGSgMd, &_s9Coherence10CRRegisterVySiSgGSgMR);
      }

      else
      {
        v82 = v106;
        v83 = v86;
        (*(v106 + 32))(v86, v81, v75);
        if (!v78(v2 + v76, 1, v75))
        {
          CRRegister.merge(delta:)();
        }

        (*(v82 + 8))(v83, v75);
      }
    }

    LOBYTE(v38) = v87;
  }

  return v38;
}

BOOL Signature.Partial.canMerge(delta:)(uint64_t a1)
{
  v94 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiSgGSgMd, &_s9Coherence10CRRegisterVySiSgGSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v76 = &v76 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v80 = &v76 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiSgGMd, &_s9Coherence10CRRegisterVySiSgGMR);
  v86 = *(v5 - 8);
  v87 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v85 = &v76 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v84 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v91 = (&v76 - v10);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v83 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v77 = &v76 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v78 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v89 = &v76 - v15;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMR);
  v82 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v90 = &v76 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v76 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v88 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v79 = &v76 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v76 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v76 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v76 - v33;
  outlined init with copy of Date?(v94, v30, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  v35 = *(v32 + 48);
  if (v35(v30, 1, v31) == 1)
  {
    v27 = v30;
    v36 = v93;
LABEL_5:
    outlined destroy of StocksKitCurrencyCache.Provider?(v27, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    v38 = v91;
    v39 = v92;
    goto LABEL_6;
  }

  (*(v32 + 32))(v34, v30, v31);
  v37 = v93;
  outlined init with copy of Date?(v93, v27, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  if (v35(v27, 1, v31) == 1)
  {
    (*(v32 + 8))(v34, v31);
    v36 = v37;
    goto LABEL_5;
  }

  v66 = CRRegister.canMerge(delta:)();
  v67 = v37;
  v68 = *(v32 + 8);
  v68(v34, v31);
  v68(v27, v31);
  v36 = v67;
  v38 = v91;
  v39 = v92;
  if ((v66 & 1) == 0)
  {
    return 0;
  }

LABEL_6:
  v40 = type metadata accessor for Signature.Partial(0);
  outlined init with copy of Date?(v94 + v40[5], v22, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  v41 = v88;
  v42 = *(v88 + 48);
  if (v42(v22, 1, v23) == 1)
  {
    v43 = v22;
    v44 = v90;
LABEL_10:
    outlined destroy of StocksKitCurrencyCache.Provider?(v43, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
    v46 = v89;
    v47 = v38;
    goto LABEL_11;
  }

  v45 = v79;
  (*(v41 + 32))(v79, v22, v23);
  v91 = v40;
  outlined init with copy of Date?(v36 + v40[5], v19, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  if (v42(v19, 1, v23) == 1)
  {
    (*(v41 + 8))(v45, v23);
    v44 = v90;
    v40 = v91;
    v39 = v92;
    v36 = v93;
    v43 = v19;
    goto LABEL_10;
  }

  v69 = CRRegister.canMerge(delta:)();
  v70 = *(v41 + 8);
  v70(v45, v23);
  v70(v19, v23);
  v46 = v89;
  v44 = v90;
  v47 = v38;
  v39 = v92;
  v36 = v93;
  v40 = v91;
  if ((v69 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  outlined init with copy of Date?(v94 + v40[6], v46, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGSgMR);
  v48 = v82;
  v49 = *(v82 + 48);
  if (v49(v46, 1, v39) == 1)
  {
    v50 = v46;
    v51 = v86;
    v52 = v87;
    v54 = v84;
    v53 = v85;
LABEL_15:
    outlined destroy of StocksKitCurrencyCache.Provider?(v50, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGSgMR);
    v58 = v83;
    goto LABEL_16;
  }

  (*(v48 + 32))(v44, v46, v39);
  v50 = v78;
  outlined init with copy of Date?(v36 + v40[6], v78, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGSgMR);
  v55 = v49(v50, 1, v39);
  v56 = v86;
  v57 = v87;
  v54 = v84;
  if (v55 == 1)
  {
    (*(v48 + 8))(v44, v39);
    v51 = v56;
    v52 = v57;
    v53 = v85;
    goto LABEL_15;
  }

  LODWORD(v91) = CRRegister.canMerge(delta:)();
  v71 = *(v48 + 8);
  v71(v44, v39);
  v71(v50, v39);
  v58 = v83;
  v51 = v56;
  v52 = v57;
  v53 = v85;
  if ((v91 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  outlined init with copy of Date?(v94 + v40[7], v47, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
  v59 = *(v58 + 48);
  v60 = v81;
  if (v59(v47, 1, v81) == 1)
  {
    v54 = v47;
  }

  else
  {
    v61 = v47;
    v62 = v77;
    (*(v58 + 32))(v77, v61, v60);
    outlined init with copy of Date?(v93 + v40[7], v54, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
    if (v59(v54, 1, v60) != 1)
    {
      v72 = CRRegister.canMerge(delta:)();
      v73 = *(v58 + 8);
      v73(v62, v60);
      v73(v54, v60);
      if ((v72 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_21;
    }

    (*(v58 + 8))(v62, v60);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v54, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
LABEL_21:
  v63 = v80;
  outlined init with copy of Date?(v94 + v40[8], v80, &_s9Coherence10CRRegisterVySiSgGSgMd, &_s9Coherence10CRRegisterVySiSgGSgMR);
  v64 = *(v51 + 48);
  if (v64(v63, 1, v52) == 1)
  {
LABEL_24:
    outlined destroy of StocksKitCurrencyCache.Provider?(v63, &_s9Coherence10CRRegisterVySiSgGSgMd, &_s9Coherence10CRRegisterVySiSgGSgMR);
    return 1;
  }

  (*(v51 + 32))(v53, v63, v52);
  v63 = v76;
  outlined init with copy of Date?(v93 + v40[8], v76, &_s9Coherence10CRRegisterVySiSgGSgMd, &_s9Coherence10CRRegisterVySiSgGSgMR);
  if (v64(v63, 1, v52) == 1)
  {
    (*(v51 + 8))(v53, v52);
    goto LABEL_24;
  }

  v74 = CRRegister.canMerge(delta:)();
  v75 = *(v51 + 8);
  v75(v53, v52);
  v75(v63, v52);
  return (v74 & 1) != 0;
}

uint64_t Signature.Partial.visitReferences(_:)(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiSgGSgMd, &_s9Coherence10CRRegisterVySiSgGSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v30 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v30 - v16;
  outlined init with copy of Date?(v2, &v30 - v16, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v19 + 8))(v17, v18);
  }

  v20 = type metadata accessor for Signature.Partial(0);
  outlined init with copy of Date?(v2 + v20[5], v14, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v14, 1, v21) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v14, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v22 + 8))(v14, v21);
  }

  outlined init with copy of Date?(v2 + v20[6], v11, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGSgMR);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMR);
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v11, 1, v23) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGSgMR);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v24 + 8))(v11, v23);
  }

  outlined init with copy of Date?(v2 + v20[7], v8, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v8, 1, v25) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v26 + 8))(v8, v25);
  }

  outlined init with copy of Date?(v2 + v20[8], v5, &_s9Coherence10CRRegisterVySiSgGSgMd, &_s9Coherence10CRRegisterVySiSgGSgMR);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiSgGMd, &_s9Coherence10CRRegisterVySiSgGMR);
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v5, 1, v27) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_s9Coherence10CRRegisterVySiSgGSgMd, &_s9Coherence10CRRegisterVySiSgGSgMR);
  }

  CRRegister.visitReferences(_:)();
  return (*(v28 + 8))(v5, v27);
}

void Signature.Partial.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiSgGSgMd, &_s9Coherence10CRRegisterVySiSgGSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v64 = v51 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v71 = v51 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v70 = v51 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v68 = v51 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v69 = v51 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v14 = *(v13 - 8);
  v66 = *(v14 + 56);
  v67 = v13;
  v65 = v14 + 56;
  v66(a2, 1, 1);
  v15 = type metadata accessor for Signature.Partial(0);
  v16 = v15[5];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v18 = *(v17 - 8);
  v62 = *(v18 + 56);
  v63 = v16;
  v60 = v17;
  v61 = v18 + 56;
  v62(a2 + v16, 1, 1);
  v19 = v15[6];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMR);
  v21 = *(v20 - 8);
  v22 = *(v21 + 56);
  v72 = v19;
  v58 = v21 + 56;
  v59 = v22;
  v22(a2 + v19, 1, 1, v20);
  v23 = v15[7];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v25 = (*(v24 - 8) + 56);
  v56 = *v25;
  v57 = v23;
  v56(a2 + v23, 1, 1, v24);
  v26 = v15[8];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiSgGMd, &_s9Coherence10CRRegisterVySiSgGMR);
  v28 = *(v27 - 8);
  v29 = *(v28 + 56);
  v30 = v28 + 56;
  v74 = a2;
  v29(a2 + v26, 1, 1, v27);
  v31 = v73;
  dispatch thunk of CRDecoder.keyedContainer()();
  if (v31)
  {
    goto LABEL_2;
  }

  v33 = v69;
  v55 = v20;
  v51[1] = v25;
  v52 = v24;
  v51[0] = v30;
  v54 = v29;
  v34 = v70;
  v53 = v26;
  v73 = 0;
  v35 = v71;
  if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    type metadata accessor for CGRect(0);
    lazy protocol witness table accessor for type Color and conformance Color(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
    v36 = v73;
    CRRegister.init(from:)();
    v37 = v72;
    v38 = v55;
    if (v36)
    {

LABEL_2:

      v32 = v74;
LABEL_3:
      outlined destroy of Signature.Partial(v32, type metadata accessor for Signature.Partial);
      return;
    }

    v73 = 0;
    (v66)(v33, 0, 1, v67);
    v39 = v74;
    outlined assign with take of UUID?(v33, v74, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  }

  else
  {
    v39 = v74;
    v37 = v72;
    v38 = v55;
  }

  if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v40 = v68;
    v41 = v73;
    CRRegister.init(from:)();
    if (v41)
    {
LABEL_14:

      v32 = v39;
      goto LABEL_3;
    }

    v73 = 0;
    (v62)(v40, 0, 1, v60);
    outlined assign with take of UUID?(v40, v39 + v63, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
    v38 = v55;
  }

  if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13SignatureItemCSgMd, &_s8PaperKit13SignatureItemCSgMR);
    lazy protocol witness table accessor for type SignatureItem? and conformance <A> A?(&lazy protocol witness table cache variable for type SignatureItem? and conformance <A> A?, MEMORY[0x1E6995530]);
    v42 = v73;
    CRRegister.init(from:)();
    if (v42)
    {
      goto LABEL_14;
    }

    v73 = 0;
    v59(v34, 0, 1, v38);
    outlined assign with take of UUID?(v34, v39 + v37, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGSgMR);
  }

  v43 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
  v44 = v64;
  v45 = v27;
  if (v43)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
    lazy protocol witness table accessor for type Color? and conformance <A> A?(&lazy protocol witness table cache variable for type Color? and conformance <A> A?, MEMORY[0x1E6995530]);
    v46 = v73;
    CRRegister.init(from:)();
    v47 = v54;
    if (v46)
    {
      goto LABEL_14;
    }

    v73 = 0;
    v56(v35, 0, 1, v52);
    outlined assign with take of UUID?(v35, v39 + v57, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
  }

  else
  {
    v47 = v54;
  }

  v48 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
  v49 = v53;
  if (v48)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
    lazy protocol witness table accessor for type Int? and conformance <A> A?(&lazy protocol witness table cache variable for type Int? and conformance <A> A?, MEMORY[0x1E6995530]);
    v50 = v73;
    CRRegister.init(from:)();

    v32 = v39;
    if (v50)
    {
      goto LABEL_3;
    }

    v47(v44, 0, 1, v45);
    outlined assign with take of UUID?(v44, v39 + v49, &_s9Coherence10CRRegisterVySiSgGSgMd, &_s9Coherence10CRRegisterVySiSgGSgMR);
  }

  else
  {
  }
}

uint64_t lazy protocol witness table accessor for type SignatureItem? and conformance <A> A?(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s8PaperKit13SignatureItemCSgMd, &_s8PaperKit13SignatureItemCSgMR);
    lazy protocol witness table accessor for type Color and conformance Color(&lazy protocol witness table cache variable for type SignatureItem and conformance SignatureItem, type metadata accessor for SignatureItem, &protocol conformance descriptor for SignatureItem);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Color and conformance Color(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Signature.Partial.encode(to:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiSgGSgMd, &_s9Coherence10CRRegisterVySiSgGSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v57 = &v46 - v1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiSgGMd, &_s9Coherence10CRRegisterVySiSgGMR);
  v58 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v51 = &v46 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v55 = &v46 - v4;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v61 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v52 = &v46 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v56 = &v46 - v7;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMR);
  v60 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v9 = &v46 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v46 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v59 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v46 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v46 - v21;
  v23 = v64;
  result = dispatch thunk of CREncoder.keyedContainer()();
  if (!v23)
  {
    v48 = v15;
    v49 = v12;
    v50 = v13;
    v47 = v9;
    v26 = v62;
    v25 = v63;
    outlined init with copy of Date?(v63, v18, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    if ((*(v20 + 48))(v18, 1, v19) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v18, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    }

    else
    {
      (*(v20 + 32))(v22, v18, v19);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGRect> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR, MEMORY[0x1E6995080]);
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      (*(v20 + 8))(v22, v19);
    }

    v64 = type metadata accessor for Signature.Partial(0);
    v27 = v49;
    outlined init with copy of Date?(v25 + v64[5], v49, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
    v28 = v59;
    v29 = v50;
    v30 = v26;
    if ((*(v59 + 48))(v27, 1, v50) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v27, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
    }

    else
    {
      v33 = v48;
      (*(v28 + 32))(v48, v27, v29);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGFloat> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR, MEMORY[0x1E6995080]);
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      (*(v28 + 8))(v33, v29);
    }

    v31 = v60;
    v32 = v61;
    v34 = v56;
    outlined init with copy of Date?(v25 + v64[6], v56, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGSgMR);
    v35 = (*(v31 + 48))(v34, 1, v30);
    v36 = v34;
    v37 = v31;
    v38 = v57;
    v39 = v58;
    if (v35 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v36, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGSgMR);
    }

    else
    {
      v40 = v47;
      (*(v37 + 32))(v47, v36, v30);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<SignatureItem?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMR, MEMORY[0x1E6995080]);
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      (*(v37 + 8))(v40, v30);
      v25 = v63;
    }

    v41 = v55;
    outlined init with copy of Date?(v25 + v64[7], v55, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
    v42 = v54;
    if ((*(v32 + 48))(v41, 1, v54) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v41, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
    }

    else
    {
      v43 = v52;
      (*(v32 + 32))(v52, v41, v42);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Color?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR, MEMORY[0x1E6995080]);
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      (*(v32 + 8))(v43, v42);
    }

    outlined init with copy of Date?(v25 + v64[8], v38, &_s9Coherence10CRRegisterVySiSgGSgMd, &_s9Coherence10CRRegisterVySiSgGSgMR);
    v44 = v53;
    if ((*(v39 + 48))(v38, 1, v53) == 1)
    {

      return outlined destroy of StocksKitCurrencyCache.Provider?(v38, &_s9Coherence10CRRegisterVySiSgGSgMd, &_s9Coherence10CRRegisterVySiSgGSgMR);
    }

    else
    {
      v45 = v51;
      (*(v39 + 32))(v51, v38, v44);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Int?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySiSgGMd, &_s9Coherence10CRRegisterVySiSgGMR, MEMORY[0x1E6995080]);
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      (*(v39 + 8))(v45, v44);
    }
  }

  return result;
}

uint64_t Signature.init()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v0);
  v2 = v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v9 - v4;
  type metadata accessor for CGRect(0);
  lazy protocol witness table accessor for type Color and conformance Color(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
  memset(v9, 0, sizeof(v9));
  CRRegister.init(wrappedValue:)();
  type metadata accessor for Signature(0);
  *&v9[0] = 0;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  CRRegister.init(wrappedValue:)();
  *&v9[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13SignatureItemCSgMd, &_s8PaperKit13SignatureItemCSgMR);
  v6 = MEMORY[0x1E6995530];
  lazy protocol witness table accessor for type SignatureItem? and conformance <A> A?(&lazy protocol witness table cache variable for type SignatureItem? and conformance <A> A?, MEMORY[0x1E6995530]);
  CRRegister.init(wrappedValue:)();
  v7 = type metadata accessor for Color(0);
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  outlined init with copy of Date?(v5, v2, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  lazy protocol witness table accessor for type Color? and conformance <A> A?(&lazy protocol witness table cache variable for type Color? and conformance <A> A?, v6);
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  *&v9[0] = 0;
  BYTE8(v9[0]) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
  lazy protocol witness table accessor for type Int? and conformance <A> A?(&lazy protocol witness table cache variable for type Int? and conformance <A> A?, v6);
  CRRegister.init(wrappedValue:)();
  return UnknownProperties.init()();
}

uint64_t protocol witness for SignatureProvider.signatureItem.getter in conformance Signature()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMR);
  CRRegister.wrappedValue.getter();
  return v1;
}

double protocol witness for SignatureProvider.color.getter in conformance Signature()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  CRRegister.wrappedValue.getter();
  return result;
}

uint64_t protocol witness for SignatureProvider.width.getter in conformance Signature()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiSgGMd, &_s9Coherence10CRRegisterVySiSgGMR);
  CRRegister.wrappedValue.getter();
  return v1;
}

uint64_t Signature.shared(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CRKeyPath();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v10[15] = 6;
  (*(v7 + 16))(&v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v5);
  lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
  SharedTagged_10.init(_:id:)();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t Signature.thumbnail.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CRAsset();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t Signature.render<A>(in:id:capsule:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[3] = a4;
  v5[4] = v4;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](Signature.render<A>(in:id:capsule:options:), 0, 0);
}

uint64_t Signature.render<A>(in:id:capsule:options:)()
{
  v1 = v0[2];
  v2 = *(v0[3] + 1);
  v3 = [objc_opt_self() currentTraitCollection];
  [v3 displayScale];
  v5 = v4;

  specialized SignatureProvider.render(in:darkMode:scale:)(v1, v2, v5);
  v6 = v0[1];

  return v6();
}

void Signature.update<A>(use:ref:pdfAnnotation:in:capsule:options:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  type metadata accessor for CanvasElementPDFAnnotation(0);
  v16 = swift_dynamicCastClass();
  if (v16)
  {
    v17 = v16;
    v44 = a6;
    v46 = a8;
    *(v16 + OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_writingAKAnnotation) = 2;
    v18 = *MEMORY[0x1E69780C8];
    v19 = a3;
    [v17 setType_];
    specialized CanvasElement.renderFrame(in:)();
    v21 = v20;
    v23 = v22;
    v25 = v24;
    Height = v26;
    v28 = [v17 page];
    v29 = a7;
    if (v28)
    {
      v30 = v28;
      [v28 boundsForBox_];
      v32 = v31;
      v34 = v33;

      v50.origin.x = v21;
      v50.origin.y = v23;
      v50.size.width = v25;
      v50.size.height = Height;
      MinX = CGRectGetMinX(v50);
      v51.origin.x = v21;
      v51.origin.y = v23;
      v51.size.width = v25;
      v51.size.height = Height;
      v36 = v34 + v32 + v32 - CGRectGetMaxY(v51);
      v52.origin.x = v21;
      v52.origin.y = v23;
      v52.size.width = v25;
      v52.size.height = Height;
      Width = CGRectGetWidth(v52);
      v53.origin.x = v21;
      v53.origin.y = v23;
      v53.size.width = v25;
      v53.size.height = Height;
      Height = CGRectGetHeight(v53);
      v25 = Width;
      v21 = MinX;
      v23 = v36;
    }

    v54.origin.x = v21;
    v54.origin.y = v23;
    v54.size.width = v25;
    v54.size.height = Height;
    v55 = CGRectIntegral(v54);
    [v17 setBounds_];
    v38 = type metadata accessor for Signature(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMR);
    CRRegister.wrappedValue.getter();
    v39 = v48;
    if (!v48)
    {
      v43 = 0;
      goto LABEL_10;
    }

    countAndFlagsBits = *&v48[OBJC_IVAR____TtC8PaperKit13SignatureItem_signatureDescription];
    object = *&v48[OBJC_IVAR____TtC8PaperKit13SignatureItem_signatureDescription + 8];
    if ((object - 1) >= 5)
    {
      if (!object)
      {

        countAndFlagsBits = 0;
        object = 0xE000000000000000;
        goto LABEL_8;
      }

      outlined copy of SignatureDescription(*&v48[OBJC_IVAR____TtC8PaperKit13SignatureItem_signatureDescription], *&v48[OBJC_IVAR____TtC8PaperKit13SignatureItem_signatureDescription + 8]);
    }

    else
    {
      v48 = *&v48[OBJC_IVAR____TtC8PaperKit13SignatureItem_signatureDescription];
      v49 = object;
      v42 = SignatureDescription.localizedTitle()();
      countAndFlagsBits = v42._countAndFlagsBits;
      object = v42._object;
    }

LABEL_8:
    v43 = MEMORY[0x1DA6CCED0](countAndFlagsBits, object);

LABEL_10:
    [v17 setFieldName_];

    CanvasElementPDFAnnotation.setRendered<A, B>(in:element:capsule:options:)(a4, v9, a5, v45, v29, v38, v47, &protocol witness table for Signature);
    [v17 setShouldBurnIn_];
  }
}

Swift::Void __swiftcall Signature.apply(_:)(CGAffineTransform *a1)
{
  ty = a1->ty;
  tx = a1->tx;
  type metadata accessor for Signature(0);
  v34 = *&a1->a;
  v31 = *&a1->c;
  j___s8PaperKit9SignatureVAA0C8ProviderA2aDP5frameSo6CGRectVvgTWTm();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.getter();
  v29 = v5 - v9 * 0.0;
  v30 = v3 - v7 * 0.0;
  v38.origin.x = v3;
  v38.origin.y = v5;
  v38.size.width = v7;
  v27 = v7;
  v28 = v9;
  v38.size.height = v9;
  MidX = CGRectGetMidX(v38);
  v39.origin.x = v3;
  v39.origin.y = v5;
  v39.size.width = v7;
  v39.size.height = v9;
  MidY = CGRectGetMidY(v39);
  CGAffineTransformMakeRotation(&t1, t1.a);
  v12 = t1.tx;
  v13 = t1.ty;
  v23 = *&t1.c;
  v25 = *&t1.a;
  CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
  a = t1.a;
  b = t1.b;
  c = t1.c;
  d = t1.d;
  v18 = t1.tx;
  v19 = t1.ty;
  *&t2.a = v25;
  *&t2.c = v23;
  t2.tx = v12;
  t2.ty = v13;
  CGAffineTransformConcat(&v35, &t1, &t2);
  v20 = v35.tx;
  v21 = v35.ty;
  v24 = *&v35.c;
  v26 = *&v35.a;
  t1.a = a;
  t1.b = b;
  t1.c = c;
  t1.d = d;
  t1.tx = v18;
  t1.ty = v19;
  CGAffineTransformInvert(&t2, &t1);
  *&t1.a = v26;
  *&t1.c = v24;
  t1.tx = v20;
  t1.ty = v21;
  CGAffineTransformConcat(&v35, &t1, &t2);
  t1.a = v27;
  t1.b = 0.0;
  t1.c = 0.0;
  t1.d = v28;
  t1.tx = v30;
  t1.ty = v29;
  t2 = v35;
  CGAffineTransformConcat(&v35, &t1, &t2);
  t2 = v35;
  *&v35.a = v34;
  *&v35.c = v31;
  v35.tx = tx;
  v35.ty = ty;
  CGAffineTransformConcat(&t1, &t2, &v35);
  specialized CanvasElement.coordinateSpace.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiSgGMd, &_s9Coherence10CRRegisterVySiSgGMR);
  CRRegister.wrappedValue.getter();
  if ((LOBYTE(t2.b) & 1) == 0)
  {
    v22 = sqrt(vmuld_n_f64(v34.f64[0], v34.f64[0]) + vmuld_lane_f64(v34.f64[1], v34, 1)) * *&t2.a;
    if (COERCE__INT64(fabs(v22)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v22 > -9.22337204e18)
    {
      if (v22 < 9.22337204e18)
      {
        *&t2.a = v22;
        LOBYTE(t2.b) = 0;
        CRRegister.wrappedValue.setter();
        return;
      }

LABEL_9:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_9;
  }
}

void specialized CanvasElement.coordinateSpace.setter()
{
  type metadata accessor for Signature(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.getter();
  CGAffineTransform.decompose(initialRotation:)(&v20, v20.origin.x);
  x = v20.origin.x;
  y = v20.origin.y;
  v2 = v21;
  width = v20.size.width;
  rect = v20.size.height;
  if (fabs(CGRectGetWidth(v20)) >= 1.0)
  {
    *&v6 = width;
  }

  else
  {
    v22.origin.x = x;
    v22.origin.y = y;
    v22.size.width = width;
    v22.size.height = rect;
    *v3.i64 = CGRectGetWidth(v22);
    v4.f64[0] = NAN;
    v4.f64[1] = NAN;
    v5.i64[0] = 1.0;
    v6 = vbslq_s8(vnegq_f64(v4), v5, v3).u64[0];
  }

  v7 = x;
  v8 = y;
  v18 = *&v6;
  v9 = rect;
  if (fabs(CGRectGetHeight(*(&v6 - 2))) < 1.0)
  {
    v23.origin.x = x;
    v23.origin.y = y;
    v23.size.width = v18;
    v23.size.height = rect;
    *v10.i64 = CGRectGetHeight(v23);
    v11.i64[0] = 1.0;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    *&rect = vbslq_s8(vnegq_f64(v12), v11, v10).u64[0];
  }

  j___s8PaperKit9SignatureVAA0C8ProviderA2aDP5frameSo6CGRectVvgTWTm();
  if (!CGRect.almostEqual(_:threshold:)(x, y, v18, rect, 0.1, v13, v14, v15, v16))
  {
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = v18;
    v20.size.height = rect;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
    CRRegister.wrappedValue.setter();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.getter();
  if (vabdd_f64(v20.origin.x, v2) > 0.00174532925)
  {
    v20.origin.x = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
    CRRegister.wrappedValue.setter();
  }
}

{
  v0 = off_1F4F573C8[0];
  type metadata accessor for GraphElement(0);
  v1 = v0();
  CGAffineTransform.decompose(initialRotation:)(&v23, v1);
  x = v23.origin.x;
  y = v23.origin.y;
  v4 = v24;
  width = v23.size.width;
  rect = v23.size.height;
  if (fabs(CGRectGetWidth(v23)) >= 1.0)
  {
    *&v8 = width;
  }

  else
  {
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = rect;
    *v5.i64 = CGRectGetWidth(v26);
    v6.f64[0] = NAN;
    v6.f64[1] = NAN;
    v7.i64[0] = 1.0;
    v8 = vbslq_s8(vnegq_f64(v6), v7, v5).u64[0];
  }

  v9 = x;
  v10 = y;
  v21 = *&v8;
  v11 = rect;
  if (fabs(CGRectGetHeight(*(&v8 - 2))) < 1.0)
  {
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = v21;
    v27.size.height = rect;
    *v12.i64 = CGRectGetHeight(v27);
    v13.i64[0] = 1.0;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    *&rect = vbslq_s8(vnegq_f64(v14), v13, v12).u64[0];
  }

  v15 = off_1F4F57458();
  if (!CGRect.almostEqual(_:threshold:)(x, y, v21, rect, 0.1, v15, v16, v17, v18))
  {
    (off_1F4F573B8)(x, y, v21, rect);
  }

  if (vabdd_f64(v0(), v4) > 0.00174532925)
  {
    v19 = off_1F4F573D0[0];

    v19(v4);
  }
}

{
  v0 = off_1F4F61220;
  v1 = type metadata accessor for LoupeElement(0);
  v2 = v0();
  CGAffineTransform.decompose(initialRotation:)(&v24, v2);
  x = v24.origin.x;
  y = v24.origin.y;
  v5 = v25;
  width = v24.size.width;
  rect = v24.size.height;
  if (fabs(CGRectGetWidth(v24)) >= 1.0)
  {
    *&v9 = width;
  }

  else
  {
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = width;
    v27.size.height = rect;
    *v6.i64 = CGRectGetWidth(v27);
    v7.f64[0] = NAN;
    v7.f64[1] = NAN;
    v8.i64[0] = 1.0;
    v9 = vbslq_s8(vnegq_f64(v7), v8, v6).u64[0];
  }

  v10 = x;
  v11 = y;
  v22 = *&v9;
  v12 = rect;
  if (fabs(CGRectGetHeight(*(&v9 - 2))) < 1.0)
  {
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = v22;
    v28.size.height = rect;
    *v13.i64 = CGRectGetHeight(v28);
    v14.i64[0] = 1.0;
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    *&rect = vbslq_s8(vnegq_f64(v15), v14, v13).u64[0];
  }

  v16 = off_1F4F612B0(v1, &protocol witness table for LoupeElement);
  if (!CGRect.almostEqual(_:threshold:)(x, y, v22, rect, 0.1, v16, v17, v18, v19))
  {
    (off_1F4F61210)(x, y, v22, rect);
  }

  if (vabdd_f64(v0(), v5) > 0.00174532925)
  {
    v20 = off_1F4F61228[0];

    v20(v5);
  }
}

{
  v0 = off_1F4F68418;
  type metadata accessor for Shape(0);
  v1 = v0();
  CGAffineTransform.decompose(initialRotation:)(&v23, v1);
  x = v23.origin.x;
  y = v23.origin.y;
  v4 = v24;
  width = v23.size.width;
  rect = v23.size.height;
  if (fabs(CGRectGetWidth(v23)) >= 1.0)
  {
    *&v8 = width;
  }

  else
  {
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = rect;
    *v5.i64 = CGRectGetWidth(v26);
    v6.f64[0] = NAN;
    v6.f64[1] = NAN;
    v7.i64[0] = 1.0;
    v8 = vbslq_s8(vnegq_f64(v6), v7, v5).u64[0];
  }

  v9 = x;
  v10 = y;
  v21 = *&v8;
  v11 = rect;
  if (fabs(CGRectGetHeight(*(&v8 - 2))) < 1.0)
  {
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = v21;
    v27.size.height = rect;
    *v12.i64 = CGRectGetHeight(v27);
    v13.i64[0] = 1.0;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    *&rect = vbslq_s8(vnegq_f64(v14), v13, v12).u64[0];
  }

  v15 = off_1F4F684A8();
  if (!CGRect.almostEqual(_:threshold:)(x, y, v21, rect, 0.1, v15, v16, v17, v18))
  {
    (off_1F4F68408)(x, y, v21, rect);
  }

  if (vabdd_f64(v0(), v4) > 0.00174532925)
  {
    v19 = off_1F4F68420[0];

    v19(v4);
  }
}

{
  v0 = off_1F4F5C810[0];
  type metadata accessor for TextBox(0);
  v1 = v0();
  CGAffineTransform.decompose(initialRotation:)(&v23, v1);
  x = v23.origin.x;
  y = v23.origin.y;
  v4 = v24;
  width = v23.size.width;
  rect = v23.size.height;
  if (fabs(CGRectGetWidth(v23)) >= 1.0)
  {
    *&v8 = width;
  }

  else
  {
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = rect;
    *v5.i64 = CGRectGetWidth(v26);
    v6.f64[0] = NAN;
    v6.f64[1] = NAN;
    v7.i64[0] = 1.0;
    v8 = vbslq_s8(vnegq_f64(v6), v7, v5).u64[0];
  }

  v9 = x;
  v10 = y;
  v21 = *&v8;
  v11 = rect;
  if (fabs(CGRectGetHeight(*(&v8 - 2))) < 1.0)
  {
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = v21;
    v27.size.height = rect;
    *v12.i64 = CGRectGetHeight(v27);
    v13.i64[0] = 1.0;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    *&rect = vbslq_s8(vnegq_f64(v14), v13, v12).u64[0];
  }

  v15 = off_1F4F5C8A0();
  if (!CGRect.almostEqual(_:threshold:)(x, y, v21, rect, 0.1, v15, v16, v17, v18))
  {
    (off_1F4F5C800)(x, y, v21, rect);
  }

  if (vabdd_f64(v0(), v4) > 0.00174532925)
  {
    v19 = off_1F4F5C818[0];

    v19(v4);
  }
}

{
  v0 = off_1F4F5EE20;
  v1 = type metadata accessor for Image(0);
  v2 = v0();
  CGAffineTransform.decompose(initialRotation:)(&v25, v2);
  x = v25.origin.x;
  y = v25.origin.y;
  v5 = v26;
  width = v25.size.width;
  rect = v25.size.height;
  if (fabs(CGRectGetWidth(v25)) >= 1.0)
  {
    *&v9 = width;
  }

  else
  {
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = rect;
    *v6.i64 = CGRectGetWidth(v28);
    v7.f64[0] = NAN;
    v7.f64[1] = NAN;
    v8.i64[0] = 1.0;
    v9 = vbslq_s8(vnegq_f64(v7), v8, v6).u64[0];
  }

  v10 = x;
  v11 = y;
  v23 = *&v9;
  v12 = rect;
  if (fabs(CGRectGetHeight(*(&v9 - 2))) < 1.0)
  {
    v29.origin.x = x;
    v29.origin.y = y;
    v29.size.width = v23;
    v29.size.height = rect;
    *v13.i64 = CGRectGetHeight(v29);
    v14.i64[0] = 1.0;
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    *&rect = vbslq_s8(vnegq_f64(v15), v14, v13).u64[0];
  }

  v16 = off_1F4F5EEB0(v1, &protocol witness table for Image);
  if (!CGRect.almostEqual(_:threshold:)(x, y, v23, rect, 0.1, v16, v17, v18, v19))
  {
    (off_1F4F5EE10)();
  }

  if (vabdd_f64(v0(), v5) > 0.00174532925)
  {
    v21 = off_1F4F5EE28[0];
    v20.n128_f64[0] = v5;

    v21(v20);
  }
}

{
  v0 = off_1F4F62980;
  v1 = type metadata accessor for Paper(0);
  v2 = v0();
  CGAffineTransform.decompose(initialRotation:)(&v25, v2);
  x = v25.origin.x;
  y = v25.origin.y;
  v5 = v26;
  width = v25.size.width;
  rect = v25.size.height;
  if (fabs(CGRectGetWidth(v25)) >= 1.0)
  {
    *&v9 = width;
  }

  else
  {
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = rect;
    *v6.i64 = CGRectGetWidth(v28);
    v7.f64[0] = NAN;
    v7.f64[1] = NAN;
    v8.i64[0] = 1.0;
    v9 = vbslq_s8(vnegq_f64(v7), v8, v6).u64[0];
  }

  v10 = x;
  v11 = y;
  v23 = *&v9;
  v12 = rect;
  if (fabs(CGRectGetHeight(*(&v9 - 2))) < 1.0)
  {
    v29.origin.x = x;
    v29.origin.y = y;
    v29.size.width = v23;
    v29.size.height = rect;
    *v13.i64 = CGRectGetHeight(v29);
    v14.i64[0] = 1.0;
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    *&rect = vbslq_s8(vnegq_f64(v15), v14, v13).u64[0];
  }

  v16 = off_1F4F62A10(v1, &protocol witness table for Paper);
  if (!CGRect.almostEqual(_:threshold:)(x, y, v23, rect, 0.1, v16, v17, v18, v19))
  {
    (off_1F4F62970)();
  }

  if (vabdd_f64(v0(), v5) > 0.00174532925)
  {
    v21 = off_1F4F62988[0];
    v20.n128_f64[0] = v5;

    v21(v20);
  }
}

{
  v0 = off_1F4F62B48[0];
  type metadata accessor for Link(0);
  v1 = v0();
  CGAffineTransform.decompose(initialRotation:)(&v23, v1);
  x = v23.origin.x;
  y = v23.origin.y;
  v4 = v24;
  width = v23.size.width;
  rect = v23.size.height;
  if (fabs(CGRectGetWidth(v23)) >= 1.0)
  {
    *&v8 = width;
  }

  else
  {
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = rect;
    *v5.i64 = CGRectGetWidth(v26);
    v6.f64[0] = NAN;
    v6.f64[1] = NAN;
    v7.i64[0] = 1.0;
    v8 = vbslq_s8(vnegq_f64(v6), v7, v5).u64[0];
  }

  v9 = x;
  v10 = y;
  v21 = *&v8;
  v11 = rect;
  if (fabs(CGRectGetHeight(*(&v8 - 2))) < 1.0)
  {
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = v21;
    v27.size.height = rect;
    *v12.i64 = CGRectGetHeight(v27);
    v13.i64[0] = 1.0;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    *&rect = vbslq_s8(vnegq_f64(v14), v13, v12).u64[0];
  }

  v15 = off_1F4F62BD8();
  if (!CGRect.almostEqual(_:threshold:)(x, y, v21, rect, 0.1, v15, v16, v17, v18))
  {
    (off_1F4F62B38)(x, y, v21, rect);
  }

  if (vabdd_f64(v0(), v4) > 0.00174532925)
  {
    v19 = off_1F4F62B50[0];

    v19(v4);
  }
}

{
  v0 = off_1F4F66B40[0];
  type metadata accessor for UnknownCanvasElement(0);
  v1 = v0();
  CGAffineTransform.decompose(initialRotation:)(&v23, v1);
  x = v23.origin.x;
  y = v23.origin.y;
  v4 = v24;
  width = v23.size.width;
  rect = v23.size.height;
  if (fabs(CGRectGetWidth(v23)) >= 1.0)
  {
    *&v8 = width;
  }

  else
  {
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = rect;
    *v5.i64 = CGRectGetWidth(v26);
    v6.f64[0] = NAN;
    v6.f64[1] = NAN;
    v7.i64[0] = 1.0;
    v8 = vbslq_s8(vnegq_f64(v6), v7, v5).u64[0];
  }

  v9 = x;
  v10 = y;
  v21 = *&v8;
  v11 = rect;
  if (fabs(CGRectGetHeight(*(&v8 - 2))) < 1.0)
  {
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = v21;
    v27.size.height = rect;
    *v12.i64 = CGRectGetHeight(v27);
    v13.i64[0] = 1.0;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    *&rect = vbslq_s8(vnegq_f64(v14), v13, v12).u64[0];
  }

  v15 = off_1F4F66BD0();
  if (!CGRect.almostEqual(_:threshold:)(x, y, v21, rect, 0.1, v15, v16, v17, v18))
  {
    (off_1F4F66B30)(x, y, v21, rect);
  }

  if (vabdd_f64(v0(), v4) > 0.00174532925)
  {
    v19 = off_1F4F66B48[0];

    v19(v4);
  }
}

BOOL specialized CanvasElement.coordinateSpace.setter()
{
  CGAffineTransform.decompose(initialRotation:)(&v21, 0.0);
  x = v21.origin.x;
  y = v21.origin.y;
  rect = v21.size.height;
  width = v21.size.width;
  if (fabs(CGRectGetWidth(v21)) >= 1.0)
  {
    *&v5 = width;
  }

  else
  {
    v22.origin.x = x;
    v22.origin.y = y;
    v22.size.height = rect;
    v22.size.width = width;
    *v2.i64 = CGRectGetWidth(v22);
    v3.f64[0] = NAN;
    v3.f64[1] = NAN;
    v4.i64[0] = 1.0;
    v5 = vbslq_s8(vnegq_f64(v3), v4, v2).u64[0];
  }

  v6 = x;
  v7 = y;
  v20 = *&v5;
  v8 = rect;
  Height = CGRectGetHeight(*(&v5 - 2));
  v10 = rect;
  if (fabs(Height) < 1.0)
  {
    v11 = x;
    v12 = y;
    v13 = v20;
    *v14.i64 = CGRectGetHeight(*(&v10 - 3));
    v15.i64[0] = 1.0;
    v16.f64[0] = NAN;
    v16.f64[1] = NAN;
    *&v10 = vbslq_s8(vnegq_f64(v16), v15, v14).u64[0];
  }

  return CGRect.almostEqual(_:threshold:)(x, y, v20, v10, 0.1, 0.0, 0.0, 1.0, 1.0);
}

uint64_t specialized CanvasElement.coordinateSpace.setter()
{
  v0 = off_1F4F5A5D0[0];
  v1 = type metadata accessor for PaperDocumentPage(0);
  v0();
  CGAffineTransform.decompose(initialRotation:)(&v26, v2);
  x = v26.origin.x;
  y = v26.origin.y;
  v5 = v27;
  width = v26.size.width;
  rect = v26.size.height;
  if (fabs(CGRectGetWidth(v26)) >= 1.0)
  {
    *&v9 = width;
  }

  else
  {
    v29.origin.x = x;
    v29.origin.y = y;
    v29.size.width = width;
    v29.size.height = rect;
    *v6.i64 = CGRectGetWidth(v29);
    v7.f64[0] = NAN;
    v7.f64[1] = NAN;
    v8.i64[0] = 1.0;
    v9 = vbslq_s8(vnegq_f64(v7), v8, v6).u64[0];
  }

  v10 = x;
  v11 = y;
  v24 = *&v9;
  v12 = rect;
  if (fabs(CGRectGetHeight(*(&v9 - 2))) < 1.0)
  {
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = v24;
    v30.size.height = rect;
    *v13.i64 = CGRectGetHeight(v30);
    v14.i64[0] = 1.0;
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    *&rect = vbslq_s8(vnegq_f64(v15), v14, v13).u64[0];
  }

  v16 = off_1F4F5A660(v1, &protocol witness table for PaperDocumentPage);
  if (!CGRect.almostEqual(_:threshold:)(x, y, v24, rect, 0.1, v16, v17, v18, v19))
  {
    (off_1F4F5A5C0)();
  }

  result = (v0)();
  if (vabdd_f64(v21.n128_f64[0], v5) > 0.00174532925)
  {
    v22 = off_1F4F5A5D8[0];
    v21.n128_f64[0] = v5;

    return v22(v21);
  }

  return result;
}

double Signature.hdrHeadroom(in:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return specialized Signature.hdrHeadroom(in:)();
}

uint64_t Signature.asyncHdrHeadroom<A>(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a2;
  return MEMORY[0x1EEE6DFA0](Signature.asyncHdrHeadroom<A>(in:), 0, 0);
}

uint64_t Signature.asyncHdrHeadroom<A>(in:)()
{
  type metadata accessor for Capsule();
  swift_getWitnessTable();
  v1.n128_f64[0] = specialized Signature.hdrHeadroom(in:)();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t (*protocol witness for CanvasElement.frame.modify in conformance Signature(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

double protocol witness for SignatureProvider.rotation.getter in conformance Signature()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.getter();
  return v1;
}

uint64_t (*protocol witness for CanvasElement.rotation.modify in conformance Signature(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t protocol witness for CanvasElement.thumbnail.getter in conformance Signature@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CRAsset();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t protocol witness for CanvasElement.shared(_:) in conformance Signature@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CRKeyPath();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v10[15] = 6;
  (*(v7 + 16))(&v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v5);
  lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
  SharedTagged_10.init(_:id:)();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

double protocol witness for SignatureProvider.frame.getter in conformance Signature()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.getter();
  return v1;
}

uint64_t protocol witness for PaperRenderable.render<A>(in:id:capsule:options:) in conformance Signature(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[3] = a4;
  v5[4] = v4;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](protocol witness for PaperRenderable.render<A>(in:id:capsule:options:) in conformance Signature, 0, 0);
}

double protocol witness for PaperRenderable.hdrHeadroom(in:) in conformance Signature(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return specialized Signature.hdrHeadroom(in:)();
}

void SignatureValue.frame.setter(double a1, double a2, double a3, double a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

void *SignatureValue.signatureItem.getter()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

uint64_t SignatureValue.width.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for SignatureValue(0);
  v6 = v2 + *(result + 32);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

void SignatureValue.init(withSignature:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v13 - v5;
  v7 = type metadata accessor for SignatureValue(0);
  v8 = *(v7 + 28);
  v9 = type metadata accessor for Color(0);
  (*(*(v9 - 8) + 56))(a2 + v8, 1, 1, v9);
  v10 = a2 + *(v7 + 32);
  UnknownValueProperties.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.getter();
  v11 = v13[1];
  *a2 = v13[0];
  *(a2 + 16) = v11;
  type metadata accessor for Signature(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.getter();
  *(a2 + 32) = *&v13[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMR);
  CRRegister.wrappedValue.getter();
  *(a2 + 40) = *&v13[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  CRRegister.wrappedValue.getter();
  outlined assign with take of UUID?(v6, a2 + v8, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiSgGMd, &_s9Coherence10CRRegisterVySiSgGMR);
  CRRegister.wrappedValue.getter();
  outlined destroy of Signature.Partial(a1, type metadata accessor for Signature);
  v12 = BYTE8(v13[0]);
  *v10 = *&v13[0];
  *(v10 + 8) = v12;
}

uint64_t SignatureValue.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for Color(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  CGRect.hash(into:)(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  v10 = *(v1 + 32);
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  MEMORY[0x1DA6CE840](*&v10);
  v11 = *(v1 + 40);
  if (v11)
  {
    Hasher._combine(_:)(1u);
    v12 = v11;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v13 = type metadata accessor for SignatureValue(0);
  outlined init with copy of Date?(v2 + *(v13 + 28), v9, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    outlined init with take of Color(v9, v6, type metadata accessor for Color);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type Color and conformance Color(&lazy protocol witness table cache variable for type Color and conformance Color, type metadata accessor for Color, &protocol conformance descriptor for Color);
    dispatch thunk of Hashable.hash(into:)();
    outlined destroy of Signature.Partial(v6, type metadata accessor for Color);
  }

  v14 = (v2 + *(v13 + 32));
  if (*(v14 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v15 = *v14;
    Hasher._combine(_:)(1u);
    MEMORY[0x1DA6CE810](v15);
  }

  type metadata accessor for UnknownValueProperties();
  lazy protocol witness table accessor for type Color and conformance Color(&lazy protocol witness table cache variable for type UnknownValueProperties and conformance UnknownValueProperties, MEMORY[0x1E6995350], MEMORY[0x1E6995358]);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int SignatureValue.hashValue.getter()
{
  Hasher.init(_seed:)();
  SignatureValue.hash(into:)(v1);
  return Hasher._finalize()();
}

void *protocol witness for SignatureProvider.signatureItem.getter in conformance SignatureValue()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SignatureValue()
{
  Hasher.init(_seed:)();
  SignatureValue.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SignatureValue(uint64_t a1)
{
  Hasher.init(_seed:)();
  SignatureValue.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t Signature.merge(_:)(uint64_t a1)
{
  v2 = type metadata accessor for MergeResult();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Signature.merge(_:)(a1, v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t Signature.merge(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a1;
  v86 = a2;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiSgGMd, &_s9Coherence10CRRegisterVySiSgGMR);
  v80 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v79 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v77 = &v60 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v76 = &v60 - v6;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v75 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v74 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v72 = &v60 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v71 = &v60 - v11;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMR);
  v70 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v69 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v67 = &v60 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v66 = &v60 - v16;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v65 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v64 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v62 = &v60 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v61 = &v60 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v60 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v60 - v30;
  v32 = type metadata accessor for MergeResult();
  v84 = *(v32 - 8);
  v85 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v60 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MergeResult.init()();
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v35 = *(v23 + 8);
  v35(v31, v22);
  (*(v23 + 16))(v25, v28, v22);
  CRRegister.projectedValue.setter();
  v35(v28, v22);
  MergeResult.merge(_:)();
  v83 = *(v84 + 8);
  v84 += 8;
  v83(v34, v85);
  v81 = type metadata accessor for Signature(0);
  v36 = v61;
  v37 = v63;
  CRRegister.projectedValue.getter();
  v38 = v62;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v39 = v65;
  v40 = *(v65 + 8);
  v40(v36, v37);
  (*(v39 + 16))(v64, v38, v37);
  CRRegister.projectedValue.setter();
  v40(v38, v37);
  MergeResult.merge(_:)();
  v83(v34, v85);
  v41 = v66;
  v42 = v68;
  CRRegister.projectedValue.getter();
  v43 = v67;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v44 = v70;
  v45 = *(v70 + 8);
  v45(v41, v42);
  (*(v44 + 16))(v69, v43, v42);
  CRRegister.projectedValue.setter();
  v45(v43, v42);
  MergeResult.merge(_:)();
  v83(v34, v85);
  v46 = v71;
  v47 = v73;
  CRRegister.projectedValue.getter();
  v48 = v72;
  CRRegister.projectedValue.getter();
  v49 = v46;
  CRRegister.merge(_:)();
  v50 = v75;
  v51 = *(v75 + 8);
  v51(v49, v47);
  (*(v50 + 16))(v74, v48, v47);
  CRRegister.projectedValue.setter();
  v51(v48, v47);
  MergeResult.merge(_:)();
  v83(v34, v85);
  v52 = v76;
  v53 = v78;
  CRRegister.projectedValue.getter();
  v54 = v77;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v55 = v80;
  v56 = *(v80 + 8);
  v56(v52, v53);
  (*(v55 + 16))(v79, v54, v53);
  CRRegister.projectedValue.setter();
  v56(v54, v53);
  MergeResult.merge(_:)();
  v57 = v85;
  v58 = v83;
  v83(v34, v85);
  UnknownProperties.merge(_:)();
  MergeResult.merge(_:)();
  return v58(v34, v57);
}

uint64_t Signature.actionUndoingDifference(from:)@<X0>(uint64_t a1@<X8>)
{
  v84 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiSgGMd, &_s9Coherence10CRRegisterVySiSgGMR);
  v2 = *(v1 - 8);
  v82 = v1;
  v83 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v81 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v80 = &v66 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySiSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySiSg_GSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v74 = &v66 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v9 = *(v8 - 8);
  v78 = v8;
  v79 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v77 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v76 = &v66 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit5ColorVSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit5ColorVSg_GSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v73 = &v66 - v14;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMR);
  v75 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v71 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v70 = &v66 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit13SignatureItemCSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit13SignatureItemCSg_GSgMR);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v86 = &v66 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v68 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v67 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v66 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v85 = &v66 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v66 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v66 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v69 = &v66 - v35;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v36 = *(v28 + 8);
  v36(v30, v27);
  v36(v33, v27);
  type metadata accessor for Signature(0);
  CRRegister.projectedValue.getter();
  v37 = v67;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v38 = *(v68 + 8);
  v38(v37, v20);
  v39 = v24;
  v40 = v73;
  v38(v39, v20);
  v41 = v70;
  v42 = v72;
  CRRegister.projectedValue.getter();
  v43 = v71;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v44 = *(v75 + 8);
  v44(v43, v42);
  v44(v41, v42);
  v45 = v76;
  v46 = v78;
  CRRegister.projectedValue.getter();
  v47 = v77;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v48 = *(v79 + 8);
  v48(v47, v46);
  v48(v45, v46);
  v49 = v80;
  v50 = v82;
  CRRegister.projectedValue.getter();
  v51 = v85;
  v52 = v81;
  CRRegister.projectedValue.getter();
  v53 = v74;
  CRRegister.actionUndoingDifference(from:)();
  v54 = *(v83 + 8);
  v54(v52, v50);
  v55 = v49;
  v56 = v69;
  v54(v55, v50);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GMR);
  if ((*(*(v57 - 8) + 48))(v56, 1, v57) == 1 && (v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GMR), (*(*(v58 - 8) + 48))(v51, 1, v58) == 1) && (v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit13SignatureItemCSg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit13SignatureItemCSg_GMR), (*(*(v59 - 8) + 48))(v86, 1, v59) == 1) && (v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit5ColorVSg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit5ColorVSg_GMR), (*(*(v60 - 8) + 48))(v40, 1, v60) == 1) && (v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySiSg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVySiSg_GMR), (*(*(v61 - 8) + 48))(v53, 1, v61) == 1))
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v56, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMR);
    v62 = type metadata accessor for Signature.MutatingAction(0);
    (*(*(v62 - 8) + 56))(v84, 1, 1, v62);
  }

  else
  {
    v63 = v84;
    outlined init with copy of Date?(v56, v84, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMR);
    v64 = type metadata accessor for Signature.MutatingAction(0);
    outlined init with copy of Date?(v51, v63 + v64[5], &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMR);
    outlined init with copy of Date?(v86, v63 + v64[6], &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit13SignatureItemCSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit13SignatureItemCSg_GSgMR);
    outlined init with copy of Date?(v40, v63 + v64[7], &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit5ColorVSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit5ColorVSg_GSgMR);
    outlined init with copy of Date?(v53, v63 + v64[8], &_s9Coherence10CRRegisterV14MutatingActionVySiSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySiSg_GSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(v56, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMR);
    (*(*(v64 - 1) + 56))(v63, 0, 1, v64);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v53, &_s9Coherence10CRRegisterV14MutatingActionVySiSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySiSg_GSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v40, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit5ColorVSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit5ColorVSg_GSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v86, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit13SignatureItemCSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit13SignatureItemCSg_GSgMR);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v51, &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMR);
}

double Signature.apply(_:)(uint64_t a1)
{
  v59 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiSgGMd, &_s9Coherence10CRRegisterVySiSgGMR);
  v57 = *(v1 - 8);
  v58 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v56 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v55 = &v43 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v53 = *(v5 - 8);
  v54 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v52 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v51 = &v43 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMR);
  v49 = *(v9 - 8);
  v50 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v48 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v47 = &v43 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v46 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v45 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v44 = &v43 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v43 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v43 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9SignatureV14MutatingActionVSgMd, &_s8PaperKit9SignatureV14MutatingActionVSgMR);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v43 - v24;
  v26 = type metadata accessor for Signature.MutatingAction(0);
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v43 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Date?(v59, v25, &_s8PaperKit9SignatureV14MutatingActionVSgMd, &_s8PaperKit9SignatureV14MutatingActionVSgMR);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v25, &_s8PaperKit9SignatureV14MutatingActionVSgMd, &_s8PaperKit9SignatureV14MutatingActionVSgMR);
  }

  else
  {
    outlined init with take of Color(v25, v29, type metadata accessor for Signature.MutatingAction);
    CRRegister.projectedValue.getter();
    CRRegister.apply(_:)();
    v31 = v43;
    (*(v43 + 16))(v19, v22, v17);
    CRRegister.projectedValue.setter();
    (*(v31 + 8))(v22, v17);
    type metadata accessor for Signature(0);
    v32 = v44;
    CRRegister.projectedValue.getter();
    CRRegister.apply(_:)();
    v33 = v46;
    (*(v46 + 16))(v45, v32, v13);
    CRRegister.projectedValue.setter();
    (*(v33 + 8))(v32, v13);
    v34 = v47;
    v35 = v50;
    CRRegister.projectedValue.getter();
    CRRegister.apply(_:)();
    v36 = v49;
    (*(v49 + 16))(v48, v34, v35);
    CRRegister.projectedValue.setter();
    (*(v36 + 8))(v34, v35);
    v37 = v51;
    v38 = v54;
    CRRegister.projectedValue.getter();
    CRRegister.apply(_:)();
    v39 = v53;
    (*(v53 + 16))(v52, v37, v38);
    CRRegister.projectedValue.setter();
    (*(v39 + 8))(v37, v38);
    v40 = v55;
    v41 = v58;
    CRRegister.projectedValue.getter();
    CRRegister.apply(_:)();
    v42 = v57;
    (*(v57 + 16))(v56, v40, v41);
    CRRegister.projectedValue.setter();
    (*(v42 + 8))(v40, v41);
    outlined destroy of Signature.Partial(v29, type metadata accessor for Signature.MutatingAction);
  }

  return result;
}

uint64_t Signature.hasDelta(from:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiSgGMd, &_s9Coherence10CRRegisterVySiSgGMR);
  v50 = *(v2 - 8);
  v51 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v49 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v48 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v54 = *(v6 - 8);
  v55 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v53 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v48 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMR);
  v58 = *(v10 - 8);
  v59 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v57 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v56 = &v48 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v60 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v48 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v48 - v25;
  CRRegister.projectedValue.getter();
  v61 = a1;
  CRRegister.projectedValue.getter();
  v27 = CRRegister.hasDelta(from:)();
  v28 = *(v21 + 8);
  v28(v23, v20);
  v28(v26, v20);
  if (v27 & 1) != 0 || (type metadata accessor for Signature(0), CRRegister.projectedValue.getter(), CRRegister.projectedValue.getter(), v29 = CRRegister.hasDelta(from:)(), v30 = *(v60 + 8), v30(v16, v14), v30(v19, v14), (v29) || (v31 = v56, v32 = v59, CRRegister.projectedValue.getter(), v33 = v57, CRRegister.projectedValue.getter(), v34 = CRRegister.hasDelta(from:)(), v35 = *(v58 + 8), v35(v33, v32), v35(v31, v32), (v34) || (v36 = v52, v37 = v55, CRRegister.projectedValue.getter(), v38 = v53, CRRegister.projectedValue.getter(), v39 = CRRegister.hasDelta(from:)(), v40 = *(v54 + 8), v40(v38, v37), v40(v36, v37), (v39) || (v41 = v48, v42 = v51, CRRegister.projectedValue.getter(), v43 = v49, CRRegister.projectedValue.getter(), v44 = CRRegister.hasDelta(from:)(), v45 = *(v50 + 8), v45(v43, v42), v45(v41, v42), (v44))
  {
    v46 = 1;
  }

  else
  {
    v46 = UnknownProperties.hasDelta(from:)();
  }

  return v46 & 1;
}

uint64_t Signature.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a1;
  v4 = type metadata accessor for UnknownProperties();
  v73 = *(v4 - 8);
  v74 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v72 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiSgGMd, &_s9Coherence10CRRegisterVySiSgGMR);
  v7 = *(v6 - 8);
  v70 = v6;
  v71 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v69 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v68 = &v57 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v12 = *(v11 - 8);
  v66 = v11;
  v67 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v65 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v64 = &v57 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMR);
  v17 = *(v16 - 8);
  v62 = v16;
  v63 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v61 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v60 = &v57 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v59 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v58 = &v57 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v57 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v57 - v31;
  v57 = v2;
  outlined init with copy of Signature.Partial(v2, a2, type metadata accessor for Signature);
  CRRegister.projectedValue.getter();
  CRRegister.copy(renamingReferences:)();
  v33 = *(v27 + 8);
  v33(v29, v26);
  (*(v27 + 16))(v29, v32, v26);
  v34 = a2;
  CRRegister.projectedValue.setter();
  v33(v32, v26);
  v35 = type metadata accessor for Signature(0);
  CRRegister.projectedValue.getter();
  v36 = v58;
  CRRegister.copy(renamingReferences:)();
  v37 = v59;
  v38 = *(v59 + 8);
  v38(v23, v21);
  (*(v37 + 16))(v23, v36, v21);
  CRRegister.projectedValue.setter();
  v38(v36, v21);
  v39 = v61;
  v40 = v62;
  CRRegister.projectedValue.getter();
  v41 = v60;
  CRRegister.copy(renamingReferences:)();
  v42 = v63;
  v43 = *(v63 + 8);
  v43(v39, v40);
  (*(v42 + 16))(v39, v41, v40);
  v44 = v34;
  CRRegister.projectedValue.setter();
  v43(v41, v40);
  v46 = v65;
  v45 = v66;
  CRRegister.projectedValue.getter();
  v47 = v64;
  CRRegister.copy(renamingReferences:)();
  v48 = v67;
  v49 = *(v67 + 8);
  v49(v46, v45);
  (*(v48 + 16))(v46, v47, v45);
  CRRegister.projectedValue.setter();
  v49(v47, v45);
  v51 = v69;
  v50 = v70;
  CRRegister.projectedValue.getter();
  v52 = v68;
  CRRegister.copy(renamingReferences:)();
  v53 = v71;
  v54 = *(v71 + 8);
  v54(v51, v50);
  (*(v53 + 16))(v51, v52, v50);
  CRRegister.projectedValue.setter();
  v54(v52, v50);
  v55 = v72;
  UnknownProperties.copy(renamingReferences:)();
  return (*(v73 + 40))(v44 + *(v35 + 36), v55, v74);
}

void Signature.init(defaultState:)(uint64_t a1@<X8>)
{
  v43 = type metadata accessor for UnknownProperties();
  v42 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiSgGMd, &_s9Coherence10CRRegisterVySiSgGMR);
  v44 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v50 = &v41 - v3;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v48 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v54 = &v41 - v4;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMR);
  v52 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v63 = &v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v61 = *(v6 - 8);
  v62 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v64 = &v41 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v59 = *(v8 - 8);
  v60 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v67 = &v41 - v9;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v71);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v41 - v13;
  type metadata accessor for CGRect(0);
  v66 = v15;
  v65 = lazy protocol witness table accessor for type Color and conformance Color(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
  v69 = 0u;
  v70 = 0u;
  CRRegister.init(wrappedValue:)();
  v16 = type metadata accessor for Signature(0);
  v17 = v16[5];
  *&v69 = 0;
  v18 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v57 = v17;
  v58 = v18;
  CRRegister.init(wrappedValue:)();
  v19 = v16[6];
  *&v69 = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13SignatureItemCSgMd, &_s8PaperKit13SignatureItemCSgMR);
  v21 = MEMORY[0x1E6995530];
  v22 = lazy protocol witness table accessor for type SignatureItem? and conformance <A> A?(&lazy protocol witness table cache variable for type SignatureItem? and conformance <A> A?, MEMORY[0x1E6995530]);
  v51 = v19;
  v55 = v22;
  v56 = v20;
  CRRegister.init(wrappedValue:)();
  v23 = v16[7];
  v24 = type metadata accessor for Color(0);
  (*(*(v24 - 8) + 56))(v14, 1, 1, v24);
  outlined init with copy of Date?(v14, v11, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  v25 = lazy protocol witness table accessor for type Color? and conformance <A> A?(&lazy protocol witness table cache variable for type Color? and conformance <A> A?, v21);
  v47 = v23;
  CRRegister.init(wrappedValue:)();
  v26 = a1;
  outlined destroy of StocksKitCurrencyCache.Provider?(v14, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  v27 = v16[8];
  *&v69 = 0;
  BYTE8(v69) = 1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
  lazy protocol witness table accessor for type Int? and conformance <A> A?(&lazy protocol witness table cache variable for type Int? and conformance <A> A?, v21);
  CRRegister.init(wrappedValue:)();
  v29 = v16[9];
  UnknownProperties.init()();
  v30 = v67;
  v31 = v68;
  CRRegister.init(defaultState:)();
  if (v31)
  {
    outlined destroy of Signature.Partial(v26, type metadata accessor for Signature);
  }

  else
  {
    v65 = v27;
    v66 = v28;
    v68 = v25;
    v32 = v57;
    v33 = v26;
    v35 = v61;
    v34 = v62;
    v36 = v63;
    (*(v59 + 40))(v33, v30, v60);
    v37 = v64;
    CRRegister.init(defaultState:)();
    (*(v35 + 40))(v33 + v32, v37, v34);
    CRRegister.init(defaultState:)();
    (*(v52 + 40))(v33 + v51, v36, v53);
    v38 = v54;
    CRRegister.init(defaultState:)();
    (*(v48 + 40))(v33 + v47, v38, v49);
    v39 = v50;
    CRRegister.init(defaultState:)();
    (*(v44 + 40))(v33 + v65, v39, v45);
    v40 = v46;
    UnknownProperties.init(defaultState:)();
    (*(v42 + 40))(v33 + v29, v40, v43);
  }
}

uint64_t Signature.isDefaultState.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiSgGMd, &_s9Coherence10CRRegisterVySiSgGMR);
  v27 = *(v0 - 8);
  v28 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v26 = &v26 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v30 = *(v2 - 8);
  v31 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v29 = &v26 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMR);
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - v13;
  type metadata accessor for Signature(0);
  if (UnknownProperties.isDefaultState.getter() & 1) != 0 && (CRRegister.projectedValue.getter(), v15 = CRRegister.isDefaultState.getter(), (*(v12 + 8))(v14, v11), (v15) && (CRRegister.projectedValue.getter(), v16 = CRRegister.isDefaultState.getter(), (*(v8 + 8))(v10, v7), (v16) && (v17 = v33, CRRegister.projectedValue.getter(), v18 = CRRegister.isDefaultState.getter(), (*(v32 + 8))(v6, v17), (v18) && (v19 = v29, v20 = v31, CRRegister.projectedValue.getter(), v21 = CRRegister.isDefaultState.getter(), (*(v30 + 8))(v19, v20), (v21))
  {
    v22 = v26;
    v23 = v28;
    CRRegister.projectedValue.getter();
    v24 = CRRegister.isDefaultState.getter();
    (*(v27 + 8))(v22, v23);
  }

  else
  {
    v24 = 0;
  }

  return v24 & 1;
}

uint64_t Signature.visitReferences(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiSgGMd, &_s9Coherence10CRRegisterVySiSgGMR);
  v2 = *(v1 - 8);
  v31 = v1;
  v32 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v30 = &v25 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v5 = *(v4 - 8);
  v28 = v4;
  v29 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v27 = &v25 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMR);
  v8 = *(v7 - 8);
  v25 = v7;
  v26 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v25 - v17;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v16 + 8))(v18, v15);
  type metadata accessor for Signature(0);
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v12 + 8))(v14, v11);
  v19 = v25;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v26 + 8))(v10, v19);
  v21 = v27;
  v20 = v28;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v29 + 8))(v21, v20);
  v23 = v30;
  v22 = v31;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v32 + 8))(v23, v22);
  return UnknownProperties.visitReferences(_:)();
}

uint64_t Signature.newRefs(from:)(uint64_t a1)
{
  v50[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiSgGMd, &_s9Coherence10CRRegisterVySiSgGMR);
  v2 = *(v1 - 8);
  v62 = v1;
  v63 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v61 = v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v60 = v50 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v7 = *(v6 - 8);
  v58 = v6;
  v59 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v57 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v56 = v50 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMR);
  v12 = *(v11 - 8);
  v54 = v11;
  v55 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v53 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v52 = v50 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v51 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v50 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = v50 - v27;
  v64 = MEMORY[0x1E69E7CD0];
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  v29 = CRRegister.newRefs(from:)();
  v30 = *(v23 + 8);
  v30(v25, v22);
  v30(v28, v22);
  specialized Set.formUnion<A>(_:)(v29);
  type metadata accessor for Signature(0);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  v31 = CRRegister.newRefs(from:)();
  v32 = *(v51 + 8);
  v32(v18, v16);
  v32(v21, v16);
  specialized Set.formUnion<A>(_:)(v31);
  v33 = v52;
  v34 = v54;
  CRRegister.projectedValue.getter();
  v35 = v53;
  CRRegister.projectedValue.getter();
  v36 = CRRegister.newRefs(from:)();
  v37 = *(v55 + 8);
  v37(v35, v34);
  v37(v33, v34);
  specialized Set.formUnion<A>(_:)(v36);
  v38 = v56;
  v39 = v58;
  CRRegister.projectedValue.getter();
  v40 = v57;
  CRRegister.projectedValue.getter();
  v41 = CRRegister.newRefs(from:)();
  v42 = *(v59 + 8);
  v42(v40, v39);
  v42(v38, v39);
  specialized Set.formUnion<A>(_:)(v41);
  v43 = v60;
  v44 = v62;
  CRRegister.projectedValue.getter();
  v45 = v61;
  CRRegister.projectedValue.getter();
  v46 = CRRegister.newRefs(from:)();
  v47 = *(v63 + 8);
  v47(v45, v44);
  v47(v43, v44);
  specialized Set.formUnion<A>(_:)(v46);
  v48 = UnknownProperties.newRefs(from:)();
  specialized Set.formUnion<A>(_:)(v48);
  return v64;
}

Swift::Bool __swiftcall Signature.needToFinalizeTimestamps()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiSgGMd, &_s9Coherence10CRRegisterVySiSgGMR);
  v28 = *(v0 - 8);
  v29 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v27 = &v26 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v30 = &v26 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMR);
  v33 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - v13;
  CRRegister.projectedValue.getter();
  v15 = CRRegister.needToFinalizeTimestamps()();
  (*(v12 + 8))(v14, v11);
  v24 = v15 || (type metadata accessor for Signature(0), CRRegister.projectedValue.getter(), v16 = CRRegister.needToFinalizeTimestamps()(), (*(v8 + 8))(v10, v7), v16) || (CRRegister.projectedValue.getter(), v17 = CRRegister.needToFinalizeTimestamps()(), (*(v33 + 8))(v6, v4), v17) || (v18 = v30, v19 = v32, CRRegister.projectedValue.getter(), v20 = CRRegister.needToFinalizeTimestamps()(), (*(v31 + 8))(v18, v19), v20) || (v21 = v27, v22 = v29, CRRegister.projectedValue.getter(), v23 = CRRegister.needToFinalizeTimestamps()(), (*(v28 + 8))(v21, v22), v23) || UnknownProperties.needToFinalizeTimestamps()();
  return v24;
}

uint64_t Signature.finalizeTimestamps(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiSgGMd, &_s9Coherence10CRRegisterVySiSgGMR);
  v3 = *(v2 - 8);
  v52 = v2;
  v53 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v51 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v50 = &v40 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v8 = *(v7 - 8);
  v48 = v7;
  v49 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v47 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v40 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMR);
  v13 = *(v12 - 8);
  v44 = v12;
  v45 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v43 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v42 = &v40 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v41 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v40 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v40 - v28;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  (*(v24 + 16))(v26, v29, v23);
  CRRegister.projectedValue.setter();
  (*(v24 + 8))(v29, v23);
  type metadata accessor for Signature(0);
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  (*(v18 + 16))(v41, v22, v17);
  CRRegister.projectedValue.setter();
  (*(v18 + 8))(v22, v17);
  v30 = v42;
  v31 = v44;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v32 = v45;
  (*(v45 + 16))(v43, v30, v31);
  CRRegister.projectedValue.setter();
  (*(v32 + 8))(v30, v31);
  v33 = v46;
  v34 = v48;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v35 = v49;
  (*(v49 + 16))(v47, v33, v34);
  CRRegister.projectedValue.setter();
  (*(v35 + 8))(v33, v34);
  v36 = v50;
  v37 = v52;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v38 = v53;
  (*(v53 + 16))(v51, v36, v37);
  CRRegister.projectedValue.setter();
  (*(v38 + 8))(v36, v37);
  return MEMORY[0x1DA6CBA30](a1);
}

uint64_t Signature.minEncodingVersion.getter@<X0>(uint64_t a1@<X8>)
{
  v115 = a1;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiSgGMd, &_s9Coherence10CRRegisterVySiSgGMR);
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v90 = &v89 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v96 = *(v3 - 8);
  v97 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v95 = &v89 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMR);
  v101 = *(v5 - 8);
  v102 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v100 = &v89 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v106 = *(v7 - 8);
  v107 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v105 = &v89 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v110 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v89 - v10;
  v12 = type metadata accessor for CRCodableVersion();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v89 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v93 = &v89 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v94 = &v89 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v98 = &v89 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v99 = &v89 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v103 = &v89 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v104 = &v89 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v89 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v109 = &v89 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v89 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v89 - v36;
  v108 = type metadata accessor for Signature(0);
  v114 = v1;
  UnknownProperties.minEncodingVersion.getter();
  v38 = *(v13 + 104);
  v112 = *MEMORY[0x1E6995288];
  v113 = v13 + 104;
  v111 = v38;
  v38(v34);
  v39 = static CRCodableVersion.== infix(_:_:)();
  v41 = v13 + 8;
  v40 = *(v13 + 8);
  v40(v34, v12);
  if (v39)
  {
    return (*(v13 + 32))(v115, v37, v12);
  }

  CRRegister.projectedValue.getter();
  CRRegister.minEncodingVersion.getter();
  (*(v110 + 8))(v11, v9);
  v110 = lazy protocol witness table accessor for type Color and conformance Color(&lazy protocol witness table cache variable for type CRCodableVersion and conformance CRCodableVersion, MEMORY[0x1E6995298], MEMORY[0x1E69952A0]);
  v43 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v44 = (v43 & 1) == 0;
  if (v43)
  {
    v45 = v37;
  }

  else
  {
    v45 = v29;
  }

  if (v44)
  {
    v46 = v37;
  }

  else
  {
    v46 = v29;
  }

  v40(v45, v12);
  v49 = *(v13 + 32);
  v48 = v13 + 32;
  v47 = v49;
  v50 = v109;
  v49(v109, v46, v12);
  v49(v37, v50, v12);
  v111(v34, v112, v12);
  LOBYTE(v50) = static CRCodableVersion.== infix(_:_:)();
  v40(v34, v12);
  if ((v50 & 1) == 0)
  {
    v52 = v107;
    v109 = v40;
    v53 = v105;
    CRRegister.projectedValue.getter();
    v54 = v103;
    CRRegister.minEncodingVersion.getter();
    v55 = v53;
    v56 = v109;
    (*(v106 + 8))(v55, v52);
    v57 = dispatch thunk of static Comparable.>= infix(_:_:)();
    v58 = (v57 & 1) == 0;
    if (v57)
    {
      v59 = v37;
    }

    else
    {
      v59 = v54;
    }

    if (v58)
    {
      v60 = v37;
    }

    else
    {
      v60 = v54;
    }

    v56(v59, v12);
    v61 = v104;
    v47(v104, v60, v12);
    v47(v37, v61, v12);
    v111(v34, v112, v12);
    v62 = static CRCodableVersion.== infix(_:_:)();
    v56(v34, v12);
    v63 = v115;
    if (v62 & 1) != 0 || ((v106 = v41, v107 = v48, v64 = v100, v65 = v102, CRRegister.projectedValue.getter(), v66 = v98, CRRegister.minEncodingVersion.getter(), (*(v101 + 8))(v64, v65), v67 = dispatch thunk of static Comparable.>= infix(_:_:)(), v68 = (v67 & 1) == 0) ? (v69 = v66) : (v69 = v37), v68 ? (v70 = v37) : (v70 = v66), v71 = v109, (v109)(v69, v12), v72 = v99, v47(v99, v70, v12), v47(v37, v72, v12), v111(v34, v112, v12), v73 = static CRCodableVersion.== infix(_:_:)(), v71(v34, v12), (v73))
    {
      v51 = v63;
      return (v47)(v51, v37, v12);
    }

    v74 = v95;
    v75 = v97;
    CRRegister.projectedValue.getter();
    v76 = v93;
    CRRegister.minEncodingVersion.getter();
    v77 = v109;
    (*(v96 + 8))(v74, v75);
    v78 = dispatch thunk of static Comparable.>= infix(_:_:)();
    v79 = (v78 & 1) == 0;
    if (v78)
    {
      v80 = v37;
    }

    else
    {
      v80 = v76;
    }

    if (v79)
    {
      v81 = v37;
    }

    else
    {
      v81 = v76;
    }

    v77(v80, v12);
    v82 = v94;
    v47(v94, v81, v12);
    v47(v37, v82, v12);
    v111(v34, v112, v12);
    v83 = static CRCodableVersion.== infix(_:_:)();
    v77(v34, v12);
    if ((v83 & 1) == 0)
    {
      v84 = v90;
      v85 = v92;
      CRRegister.projectedValue.getter();
      v86 = v89;
      CRRegister.minEncodingVersion.getter();
      (*(v91 + 8))(v84, v85);
      if (dispatch thunk of static Comparable.>= infix(_:_:)())
      {
        (v109)(v37, v12);
        v87 = v115;
        v88 = v86;
        return (v47)(v87, v88, v12);
      }

      (v109)(v86, v12);
    }

    v87 = v115;
    v88 = v37;
    return (v47)(v87, v88, v12);
  }

  v51 = v115;
  return (v47)(v51, v37, v12);
}

uint64_t Signature.observableDifference(from:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a2;
  v84 = a3;
  v85 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiSgGMd, &_s9Coherence10CRRegisterVySiSgGMR);
  v4 = *(v3 - 8);
  v82 = v3;
  v83 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v81 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v80 = &v66 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v9 = *(v8 - 8);
  v78 = v8;
  v79 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v77 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v76 = &v66 - v12;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMR);
  v75 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v72 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v71 = &v66 - v15;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v86 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v68 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v66 = &v66 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v66 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v67 = &v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v88 = &v66 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v66 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v66 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v70 = &v66 - v37;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v38 = *(v20 + 8);
  v38(v22, v19);
  v39 = v25;
  v40 = v32;
  v38(v39, v19);
  type metadata accessor for Signature(0);
  v41 = v66;
  v42 = v69;
  CRRegister.projectedValue.getter();
  v43 = v68;
  CRRegister.projectedValue.getter();
  v87 = v35;
  CRRegister.observableDifference(from:with:)();
  v44 = *(v86 + 8);
  v44(v43, v42);
  v44(v41, v42);
  v45 = v71;
  v46 = v73;
  CRRegister.projectedValue.getter();
  v47 = v72;
  CRRegister.projectedValue.getter();
  v86 = v40;
  v48 = v47;
  CRRegister.observableDifference(from:with:)();
  v49 = *(v75 + 8);
  v49(v48, v46);
  v49(v45, v46);
  v50 = v76;
  v51 = v78;
  CRRegister.projectedValue.getter();
  v52 = v77;
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v53 = *(v79 + 8);
  v53(v52, v51);
  v53(v50, v51);
  v54 = v80;
  v55 = v82;
  CRRegister.projectedValue.getter();
  v56 = v81;
  CRRegister.projectedValue.getter();
  v57 = v67;
  v58 = v70;
  CRRegister.observableDifference(from:with:)();
  v59 = *(v83 + 8);
  v59(v56, v55);
  v59(v54, v55);
  v60 = type metadata accessor for CRValueObservableDifference();
  v61 = *(*(v60 - 8) + 48);
  if (v61(v58, 1, v60) == 1 && v61(v87, 1, v60) == 1 && v61(v86, 1, v60) == 1 && v61(v88, 1, v60) == 1 && v61(v57, 1, v60) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v58, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
    v62 = type metadata accessor for Signature.ObservableDifference(0);
    (*(*(v62 - 8) + 56))(v84, 1, 1, v62);
  }

  else
  {
    v63 = v84;
    outlined init with copy of Date?(v58, v84, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
    v64 = type metadata accessor for Signature.ObservableDifference(0);
    outlined init with copy of Date?(v87, v63 + v64[5], &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
    outlined init with copy of Date?(v86, v63 + v64[6], &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
    outlined init with copy of Date?(v88, v63 + v64[7], &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
    outlined init with copy of Date?(v57, v63 + v64[8], &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(v58, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
    (*(*(v64 - 1) + 56))(v63, 0, 1, v64);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v57, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v88, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v86, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v87, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
}

uint64_t Signature.encode(to:)()
{
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiSgGMd, &_s9Coherence10CRRegisterVySiSgGMR);
  v28 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v27 = &v22 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v30 = *(v2 - 8);
  v31 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v29 = &v22 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMR);
  v32 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v33 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - v12;
  result = dispatch thunk of CREncoder.keyedContainer()();
  if (!v0)
  {
    v24 = v7;
    v25 = v11;
    v22 = v6;
    v23 = v9;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGRect> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR, MEMORY[0x1E6995080]);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v25 + 8))(v13, v10);
    type metadata accessor for Signature(0);
    v16 = v23;
    v15 = v24;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGFloat> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR, MEMORY[0x1E6995080]);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v33 + 8))(v16, v15);
    v17 = v22;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<SignatureItem?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMR, MEMORY[0x1E6995080]);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v32 + 8))(v17, v4);
    v18 = v29;
    v19 = v31;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Color?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR, MEMORY[0x1E6995080]);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v30 + 8))(v18, v19);
    v20 = v26;
    v21 = v27;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Int?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySiSgGMd, &_s9Coherence10CRRegisterVySiSgGMR, MEMORY[0x1E6995080]);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v28 + 8))(v21, v20);
    UnknownProperties.encode(to:)();
  }

  return result;
}

void Signature.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v125 = a1;
  v94 = type metadata accessor for UnknownProperties();
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v92 = v89 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence7AnyCRDTVtSgMd, &_sSS_9Coherence7AnyCRDTVtSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v102 = (v89 - v5);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
  v97 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v91 = v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v90 = v89 - v8;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiSgGMd, &_s9Coherence10CRRegisterVySiSgGMR);
  v95 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v100 = v89 - v9;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v98 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v104 = v89 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMR);
  v120 = *(v11 - 1);
  v121 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v116 = v89 - v12;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v106 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v115 = v89 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v111 = *(v14 - 8);
  v112 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v119 = v89 - v15;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v123);
  v17 = v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v89 - v19;
  type metadata accessor for CGRect(0);
  v22 = v21;
  v23 = lazy protocol witness table accessor for type Color and conformance Color(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
  v126 = 0u;
  v127 = 0u;
  v117 = v23;
  v118 = v22;
  CRRegister.init(wrappedValue:)();
  v24 = type metadata accessor for Signature(0);
  v25 = v24[5];
  *&v126 = 0;
  v26 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v105 = v25;
  v114 = v26;
  CRRegister.init(wrappedValue:)();
  v27 = v24[6];
  *&v126 = 0;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13SignatureItemCSgMd, &_s8PaperKit13SignatureItemCSgMR);
  v29 = MEMORY[0x1E6995530];
  v30 = lazy protocol witness table accessor for type SignatureItem? and conformance <A> A?(&lazy protocol witness table cache variable for type SignatureItem? and conformance <A> A?, MEMORY[0x1E6995530]);
  v113 = v27;
  v110 = v28;
  v109 = v30;
  CRRegister.init(wrappedValue:)();
  v31 = v24[7];
  v32 = type metadata accessor for Color(0);
  (*(*(v32 - 8) + 56))(v20, 1, 1, v32);
  outlined init with copy of Date?(v20, v17, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  v33 = lazy protocol witness table accessor for type Color? and conformance <A> A?(&lazy protocol witness table cache variable for type Color? and conformance <A> A?, v29);
  v108 = v31;
  v34 = a2;
  v103 = v33;
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v20, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  v35 = v24[8];
  *&v126 = 0;
  BYTE8(v126) = 1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
  v37 = lazy protocol witness table accessor for type Int? and conformance <A> A?(&lazy protocol witness table cache variable for type Int? and conformance <A> A?, v29);
  CRRegister.init(wrappedValue:)();
  v38 = v24[9];
  v124 = v34;
  UnknownProperties.init()();
  v39 = v122;
  v40 = dispatch thunk of CRDecoder.keyedContainer()();
  if (v39)
  {

    v47 = v124;
LABEL_7:
    outlined destroy of Signature.Partial(v47, type metadata accessor for Signature);
  }

  else
  {
    v41 = v40;
    v89[1] = v37;
    v122 = v36;
    v42 = v119;
    v89[0] = v38;
    v43 = v120;
    v44 = v121;
    if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
    {
      CRRegister.init(from:)();
      (*(v111 + 40))(v124, v42, v112);
    }

    if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
    {
      v45 = v115;
      CRRegister.init(from:)();
      v46 = v116;
      v48 = v41;
      v49 = v124;
      (*(v106 + 40))(v124 + v105, v45, v107);
    }

    else
    {
      v48 = v41;
      v46 = v116;
      v49 = v124;
    }

    v50 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
    v51 = v113;
    if (v50)
    {
      CRRegister.init(from:)();
      (*(v43 + 40))(v49 + v51, v46, v44);
    }

    v52 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
    v53 = v108;
    if (v52)
    {
      v54 = v104;
      CRRegister.init(from:)();
      (*(v98 + 40))(v49 + v53, v54, v99);
    }

    if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
    {
      v55 = v100;
      CRRegister.init(from:)();
      (*(v95 + 40))(v124 + v35, v55, v96);
    }

    v56 = dispatch thunk of CRDecoder.CRDTKeyedContainer.allKeys()();
    v122 = 0;
    v123 = v48;
    v57 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v56);

    *&v126 = v57;
    specialized Set._Variant.remove(_:)(0x656D617266, 0xE500000000000000);

    specialized Set._Variant.remove(_:)(0x6E6F697461746F72, 0xE800000000000000);

    specialized Set._Variant.remove(_:)(0x727574616E676973, 0xED00006D65744965);

    specialized Set._Variant.remove(_:)(0x726F6C6F63, 0xE500000000000000);

    specialized Set._Variant.remove(_:)(0x6874646977, 0xE500000000000000);

    v58 = v126;
    v59 = v126 + 56;
    v60 = 1 << *(v126 + 32);
    v61 = -1;
    if (v60 < 64)
    {
      v61 = ~(-1 << v60);
    }

    v62 = v61 & *(v126 + 56);
    v63 = (v60 + 63) >> 6;
    v64 = (v97 + 56);

    v65 = 0;
    v121 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v66 = v65;
      v67 = v124;
      if (!v62)
      {
        break;
      }

LABEL_22:
      v68 = __clz(__rbit64(v62));
      v62 &= v62 - 1;
      v69 = (*(v58 + 48) + ((v65 << 10) | (16 * v68)));
      v71 = *v69;
      v70 = v69[1];

      if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
      {
        v73 = v101;
        v120 = *(v101 + 48);
        v74 = v102;
        *v102 = v71;
        v74[1] = v70;
        v75 = v74;

        v76 = v122;
        AnyCRDT.init(from:)();
        v122 = v76;
        if (v76)
        {
LABEL_37:

          swift_bridgeObjectRelease_n();
          v47 = v124;
          goto LABEL_7;
        }

        (*v64)(v75, 0, 1, v73);
        v77 = v90;
        outlined init with take of Range<AttributedString.Index>(v75, v90, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
        outlined init with take of Range<AttributedString.Index>(v77, v91, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v121 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v121[2] + 1, 1, v121);
        }

        v78 = v97;
        v80 = v121[2];
        v79 = v121[3];
        v81 = v91;
        if (v80 >= v79 >> 1)
        {
          v121 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v79 > 1), v80 + 1, 1, v121);
          v81 = v91;
        }

        v82 = v121;
        v121[2] = v80 + 1;
        outlined init with take of Range<AttributedString.Index>(v81, v82 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v80, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
      }

      else
      {

        v72 = v102;
        (*v64)(v102, 1, 1, v101);
        outlined destroy of StocksKitCurrencyCache.Provider?(v72, &_sSS_9Coherence7AnyCRDTVtSgMd, &_sSS_9Coherence7AnyCRDTVtSgMR);
      }
    }

    while (1)
    {
      v65 = v66 + 1;
      if (__OFADD__(v66, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v65 >= v63)
      {
        break;
      }

      v62 = *(v59 + 8 * v65);
      ++v66;
      if (v62)
      {
        goto LABEL_22;
      }
    }

    v83 = v121;
    if (v121[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS9Coherence7AnyCRDTVGMd, &_ss18_DictionaryStorageCySS9Coherence7AnyCRDTVGMR);
      v84 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v84 = MEMORY[0x1E69E7CC8];
    }

    v85 = v94;
    v86 = v93;
    v87 = v92;
    v128 = v84;
    v88 = v122;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v83, 1, &v128);
    if (v88)
    {

      v47 = v67;
      goto LABEL_7;
    }

    UnknownProperties.init(_:)();

    (*(v86 + 40))(v67 + v89[0], v87, v85);
  }
}

uint64_t Signature.delta(_:from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a1;
  v96 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiSgGMd, &_s9Coherence10CRRegisterVySiSgGMR);
  v103 = *(v2 - 8);
  v104 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v95 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v94 = &v82 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiSgGSgMd, &_s9Coherence10CRRegisterVySiSgGSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v84 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v108 = &v82 - v9;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v105 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v92 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v91 = &v82 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v98 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v109 = &v82 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMR);
  v106 = *(v17 - 8);
  v107 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v90 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v89 = &v82 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGSgMR);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v97 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v110 = &v82 - v24;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v102 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v86 = &v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v82 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v83 = &v82 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v101 = &v82 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v87 = *(v33 - 8);
  v34 = v87;
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v82 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v82 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v82 = &v82 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v99 = &v82 - v43;
  v85 = v33;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v44 = *(v34 + 8);
  v44(v36, v33);
  v44(v39, v33);
  type metadata accessor for Signature(0);
  v45 = v100;
  CRRegister.projectedValue.getter();
  v46 = v86;
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v47 = *(v102 + 8);
  v47(v46, v45);
  v47(v28, v45);
  v48 = v89;
  v49 = v107;
  CRRegister.projectedValue.getter();
  v50 = v90;
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v51 = *(v106 + 8);
  v51(v50, v49);
  v51(v48, v49);
  v52 = v91;
  v53 = v93;
  CRRegister.projectedValue.getter();
  v54 = v92;
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v55 = *(v105 + 8);
  v55(v54, v53);
  v56 = v53;
  v55(v52, v53);
  v57 = v94;
  v58 = v104;
  CRRegister.projectedValue.getter();
  v59 = v95;
  CRRegister.projectedValue.getter();
  v60 = v99;
  v61 = v87;
  v62 = v85;
  CRRegister.delta(_:from:)();
  v63 = *(v103 + 8);
  v64 = v59;
  v65 = v100;
  v63(v64, v58);
  v66 = v57;
  v67 = v102;
  v63(v66, v58);
  v68 = v101;
  if ((*(v61 + 48))(v60, 1, v62) == 1 && (*(v67 + 48))(v68, 1, v65) == 1 && (*(v106 + 48))(v110, 1, v107) == 1 && (*(v105 + 48))(v109, 1, v56) == 1 && (*(v103 + 48))(v108, 1, v104) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v60, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    v69 = type metadata accessor for Signature.Partial(0);
    (*(*(v69 - 8) + 56))(v96, 1, 1, v69);
  }

  else
  {
    v70 = v82;
    outlined init with copy of Date?(v60, v82, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    v71 = v83;
    outlined init with copy of Date?(v68, v83, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
    outlined init with copy of Date?(v110, v97, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGSgMR);
    outlined init with copy of Date?(v109, v98, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
    v72 = v84;
    outlined init with copy of Date?(v108, v84, &_s9Coherence10CRRegisterVySiSgGSgMd, &_s9Coherence10CRRegisterVySiSgGSgMR);
    v73 = v96;
    (*(v61 + 56))(v96, 1, 1, v62);
    v74 = type metadata accessor for Signature.Partial(0);
    v75 = v68;
    v76 = v74[5];
    (*(v67 + 56))(v73 + v76, 1, 1, v65);
    v77 = v74[6];
    (*(v106 + 56))(v73 + v77, 1, 1, v107);
    v78 = v74[7];
    (*(v105 + 56))(v73 + v78, 1, 1, v56);
    v79 = v74[8];
    (*(v103 + 56))(v73 + v79, 1, 1, v104);
    outlined assign with take of UUID?(v70, v73, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    v80 = v73 + v76;
    v68 = v75;
    outlined assign with take of UUID?(v71, v80, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
    outlined assign with take of UUID?(v97, v73 + v77, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGSgMR);
    outlined assign with take of UUID?(v98, v73 + v78, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
    outlined assign with take of UUID?(v72, v73 + v79, &_s9Coherence10CRRegisterVySiSgGSgMd, &_s9Coherence10CRRegisterVySiSgGSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(v99, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    (*(*(v74 - 1) + 56))(v73, 0, 1, v74);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v108, &_s9Coherence10CRRegisterVySiSgGSgMd, &_s9Coherence10CRRegisterVySiSgGSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v109, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v110, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGSgMR);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v68, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
}

BOOL Signature.canMerge(delta:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiSgGSgMd, &_s9Coherence10CRRegisterVySiSgGSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v73 = &v67 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiSgGMd, &_s9Coherence10CRRegisterVySiSgGMR);
  v74 = *(v4 - 8);
  v75 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v68 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v67 = &v67 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v78 = &v67 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v82 = *(v10 - 8);
  v83 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v70 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v69 = &v67 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v79 = &v67 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMR);
  v80 = *(v16 - 8);
  v81 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v72 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v71 = &v67 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v67 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v84 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v77 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v76 = &v67 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v67 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v67 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v67 - v35;
  outlined init with copy of Date?(a1, v29, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v29, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  }

  else
  {
    (*(v31 + 32))(v36, v29, v30);
    CRRegister.projectedValue.getter();
    v37 = CRRegister.canMerge(delta:)();
    v38 = *(v31 + 8);
    v38(v33, v30);
    v38(v36, v30);
    if ((v37 & 1) == 0)
    {
      return 0;
    }
  }

  v39 = type metadata accessor for Signature.Partial(0);
  outlined init with copy of Date?(a1 + v39[5], v22, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  v40 = v84;
  if ((*(v84 + 48))(v22, 1, v23) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v22, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  }

  else
  {
    v41 = v76;
    (*(v40 + 32))(v76, v22, v23);
    type metadata accessor for Signature(0);
    v42 = v77;
    CRRegister.projectedValue.getter();
    v43 = CRRegister.canMerge(delta:)();
    v44 = *(v40 + 8);
    v44(v42, v23);
    v44(v41, v23);
    if ((v43 & 1) == 0)
    {
      return 0;
    }
  }

  v45 = v79;
  outlined init with copy of Date?(a1 + v39[6], v79, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGSgMR);
  v47 = v80;
  v46 = v81;
  if ((*(v80 + 48))(v45, 1, v81) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v45, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGSgMR);
    v49 = v82;
    v48 = v83;
  }

  else
  {
    v50 = v71;
    (*(v47 + 32))(v71, v45, v46);
    type metadata accessor for Signature(0);
    v51 = v72;
    CRRegister.projectedValue.getter();
    v52 = CRRegister.canMerge(delta:)();
    v53 = *(v47 + 8);
    v53(v51, v46);
    v53(v50, v46);
    v49 = v82;
    v48 = v83;
    if ((v52 & 1) == 0)
    {
      return 0;
    }
  }

  v54 = v78;
  outlined init with copy of Date?(a1 + v39[7], v78, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
  if ((*(v49 + 48))(v54, 1, v48) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v54, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
  }

  else
  {
    v55 = v69;
    (*(v49 + 32))(v69, v54, v48);
    type metadata accessor for Signature(0);
    v56 = v70;
    CRRegister.projectedValue.getter();
    v57 = CRRegister.canMerge(delta:)();
    v58 = *(v49 + 8);
    v58(v56, v48);
    v58(v55, v48);
    if ((v57 & 1) == 0)
    {
      return 0;
    }
  }

  v59 = v73;
  outlined init with copy of Date?(a1 + v39[8], v73, &_s9Coherence10CRRegisterVySiSgGSgMd, &_s9Coherence10CRRegisterVySiSgGSgMR);
  v61 = v74;
  v60 = v75;
  if ((*(v74 + 48))(v59, 1, v75) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v59, &_s9Coherence10CRRegisterVySiSgGSgMd, &_s9Coherence10CRRegisterVySiSgGSgMR);
    return 1;
  }

  v62 = v67;
  (*(v61 + 32))(v67, v59, v60);
  type metadata accessor for Signature(0);
  v63 = v68;
  CRRegister.projectedValue.getter();
  v64 = CRRegister.canMerge(delta:)();
  v65 = *(v61 + 8);
  v65(v63, v60);
  v65(v62, v60);
  return (v64 & 1) != 0;
}

BOOL Signature.merge(delta:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiSgGSgMd, &_s9Coherence10CRRegisterVySiSgGSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v97 = v76 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiSgGMd, &_s9Coherence10CRRegisterVySiSgGMR);
  v99 = *(v5 - 8);
  v100 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v89 = v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v88 = v76 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v87 = v76 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v94 = v76 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v95 = *(v13 - 8);
  v96 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v86 = v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v85 = v76 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v84 = v76 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGSgMR);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v92 = v76 - v20;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMR);
  v93 = *(v101 - 1);
  MEMORY[0x1EEE9AC00](v101);
  v83 = v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v82 = v76 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v81 = v76 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v90 = v76 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v91 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v80 = v76 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v79 = v76 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v78 = v76 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v36 = v76 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v38 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v40 = v76 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v43 = v76 - v42;
  MEMORY[0x1EEE9AC00](v44);
  v46 = v76 - v45;
  v47 = Signature.canMerge(delta:)(a1);
  if (v47)
  {
    v77 = v47;
    v98 = a1;
    outlined init with copy of Date?(a1, v36, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    if ((*(v38 + 48))(v36, 1, v37) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v36, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
      v48 = v1;
    }

    else
    {
      (*(v38 + 32))(v46, v36, v37);
      v48 = v1;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v38 + 16))(v40, v43, v37);
      CRRegister.projectedValue.setter();
      v49 = *(v38 + 8);
      v49(v43, v37);
      v49(v46, v37);
    }

    v50 = v101;
    v51 = v93;
    v101 = type metadata accessor for Signature.Partial(0);
    v52 = v98;
    v53 = v90;
    outlined init with copy of Date?(v98 + v101[5], v90, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
    v54 = v91;
    if ((*(v91 + 48))(v53, 1, v28) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v53, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
    }

    else
    {
      v55 = v78;
      (*(v54 + 32))(v78, v53, v28);
      type metadata accessor for Signature(0);
      v56 = v79;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v54 + 16))(v80, v56, v28);
      CRRegister.projectedValue.setter();
      v52 = v98;
      v57 = *(v54 + 8);
      v57(v56, v28);
      v57(v55, v28);
    }

    v58 = v92;
    outlined init with copy of Date?(v52 + v101[6], v92, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGSgMR);
    v59 = (*(v51 + 48))(v58, 1, v50);
    v60 = v95;
    v76[1] = v48;
    if (v59 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v58, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGSgMR);
    }

    else
    {
      v61 = v81;
      (*(v51 + 32))(v81, v58, v50);
      type metadata accessor for Signature(0);
      v62 = v82;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v51 + 16))(v83, v62, v50);
      CRRegister.projectedValue.setter();
      v52 = v98;
      v63 = *(v51 + 8);
      v63(v62, v50);
      v63(v61, v50);
    }

    v64 = v94;
    outlined init with copy of Date?(v52 + v101[7], v94, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
    v65 = v96;
    if ((*(v60 + 48))(v64, 1, v96) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v64, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
    }

    else
    {
      v67 = v84;
      (*(v60 + 32))(v84, v64, v65);
      type metadata accessor for Signature(0);
      v68 = v85;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v60 + 16))(v86, v68, v65);
      CRRegister.projectedValue.setter();
      v52 = v98;
      v69 = *(v60 + 8);
      v69(v68, v65);
      v69(v67, v65);
    }

    v66 = v97;
    outlined init with copy of Date?(v52 + v101[8], v97, &_s9Coherence10CRRegisterVySiSgGSgMd, &_s9Coherence10CRRegisterVySiSgGSgMR);
    if ((*(v99 + 48))(v66, 1, v100) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v66, &_s9Coherence10CRRegisterVySiSgGSgMd, &_s9Coherence10CRRegisterVySiSgGSgMR);
    }

    else
    {
      v70 = v99;
      v71 = v100;
      v72 = v87;
      (*(v99 + 32))(v87, v66, v100);
      type metadata accessor for Signature(0);
      v73 = v88;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v70 + 16))(v89, v73, v71);
      CRRegister.projectedValue.setter();
      v74 = *(v70 + 8);
      v74(v73, v71);
      v74(v72, v71);
    }

    LOBYTE(v47) = v77;
  }

  return v47;
}

uint64_t protocol witness for CRDT.context.getter in conformance Signature(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color and conformance Color(&lazy protocol witness table cache variable for type Signature and conformance Signature, type metadata accessor for Signature, &protocol conformance descriptor for Signature);

  return MEMORY[0x1EEDF5248](a1, v2);
}

uint64_t protocol witness for CRMergeable.merge(_:) in conformance Signature(uint64_t a1)
{
  v2 = type metadata accessor for MergeResult();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Signature.merge(_:)(a1, v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t SignatureValue.copy(renamingReferences:)@<X0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = type metadata accessor for UnknownValueProperties();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  outlined init with copy of Signature.Partial(v2, a2, type metadata accessor for SignatureValue);
  v12 = *(v2 + 16);
  *a2 = *v2;
  *(a2 + 16) = v12;
  *(a2 + 32) = *(v2 + 32);
  v20 = *(v2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13SignatureItemCSgMd, &_s8PaperKit13SignatureItemCSgMR);
  lazy protocol witness table accessor for type Color and conformance Color(&lazy protocol witness table cache variable for type SignatureItem and conformance SignatureItem, type metadata accessor for SignatureItem, &protocol conformance descriptor for SignatureItem);
  Optional<A>.copy(renamingReferences:)();
  v13 = v22;

  *(a2 + 40) = v13;
  v14 = type metadata accessor for SignatureValue(0);
  lazy protocol witness table accessor for type Color and conformance Color(&lazy protocol witness table cache variable for type Color and conformance Color, type metadata accessor for Color, &protocol conformance descriptor for Color);
  Optional<A>.copy(renamingReferences:)();
  outlined assign with take of UUID?(v11, a2 + v14[7], &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  v15 = v3 + v14[8];
  v16 = *v15;
  LOBYTE(v15) = *(v15 + 8);
  v20 = v16;
  v21 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
  Optional<A>.copy(renamingReferences:)();
  v17 = v23;
  v18 = a2 + v14[8];
  *v18 = v22;
  *(v18 + 8) = v17;
  UnknownValueProperties.copy(renamingReferences:)();
  return (*(v6 + 40))(a2 + v14[9], v8, v5);
}

uint64_t SignatureValue.visitReferences(_:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13SignatureItemCSgMd, &_s8PaperKit13SignatureItemCSgMR);
  lazy protocol witness table accessor for type Color and conformance Color(&lazy protocol witness table cache variable for type SignatureItem and conformance SignatureItem, type metadata accessor for SignatureItem, &protocol conformance descriptor for SignatureItem);
  Optional<A>.visitReferences(_:)();
  type metadata accessor for SignatureValue(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  lazy protocol witness table accessor for type Color and conformance Color(&lazy protocol witness table cache variable for type Color and conformance Color, type metadata accessor for Color, &protocol conformance descriptor for Color);
  Optional<A>.visitReferences(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
  Optional<A>.visitReferences(_:)();
  return UnknownValueProperties.visitReferences(_:)();
}

uint64_t SignatureValue.minEncodingVersion.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6995288];
  v3 = type metadata accessor for CRCodableVersion();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void SignatureValue.encode(to:)()
{
  dispatch thunk of CREncoder.keyedValueContainer()();
  if (!v1)
  {
    type metadata accessor for CGRect(0);
    lazy protocol witness table accessor for type Color and conformance Color(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
    dispatch thunk of CREncoder.CRValueKeyedContainer.encode<A>(_:forKey:encodeDefaultValues:)();
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    dispatch thunk of CREncoder.CRValueKeyedContainer.encode<A>(_:forKey:encodeDefaultValues:)();
    v2 = *(v0 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13SignatureItemCSgMd, &_s8PaperKit13SignatureItemCSgMR);
    lazy protocol witness table accessor for type SignatureItem? and conformance <A> A?(&lazy protocol witness table cache variable for type SignatureItem? and conformance <A> A?, MEMORY[0x1E6995538]);
    dispatch thunk of CREncoder.CRValueKeyedContainer.encode<A>(_:forKey:encodeDefaultValues:)();

    type metadata accessor for SignatureValue(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
    lazy protocol witness table accessor for type Color? and conformance <A> A?(&lazy protocol witness table cache variable for type Color? and conformance <A> A?, MEMORY[0x1E6995538]);
    dispatch thunk of CREncoder.CRValueKeyedContainer.encode<A>(_:forKey:encodeDefaultValues:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
    lazy protocol witness table accessor for type Int? and conformance <A> A?(&lazy protocol witness table cache variable for type Int? and conformance <A> A?, MEMORY[0x1E6995538]);
    dispatch thunk of CREncoder.CRValueKeyedContainer.encode<A>(_:forKey:encodeDefaultValues:)();
    UnknownValueProperties.encode(to:)();
  }
}

void SignatureValue.init(from:)(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtSgMd, &_sSi_9Coherence10AnyCRValueVtSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v79 = (&v68 - v5);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd, &_sSi_9Coherence10AnyCRValueVtMR);
  v78 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v76 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v75 = &v68 - v8;
  v81 = type metadata accessor for UnknownValueProperties();
  v77 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v68 - v12;
  v14 = type metadata accessor for SignatureValue(0);
  *a2 = 0u;
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  v15 = v14[7];
  v16 = type metadata accessor for Color(0);
  (*(*(v16 - 8) + 56))(&v15[a2], 1, 1, v16);
  v17 = &a2[v14[8]];
  *v17 = 0;
  v17[8] = 1;
  v18 = v14[9];
  v83 = a2;
  UnknownValueProperties.init()();
  v19 = v82;
  v20 = dispatch thunk of CRDecoder.keyedValueContainer()();
  if (!v19)
  {
    v22 = v20;
    v72 = v13;
    v73 = v15;
    v70 = v10;
    v71 = v17;
    v82 = 0;
    v69 = v18;
    v23 = dispatch thunk of CRDecoder.CRValueKeyedContainer.decoder(forKey:)();
    v74 = a1;
    if (v23)
    {
      type metadata accessor for CGRect(0);
      lazy protocol witness table accessor for type Color and conformance Color(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
      lazy protocol witness table accessor for type Color and conformance Color(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
      v24 = v82;
      CRValue<>.init(from:)();
      v21 = v83;
      if (v24)
      {
        goto LABEL_19;
      }

      v82 = 0;
      v25 = v85;
      *v83 = v84;
      *(v21 + 16) = v25;
    }

    else
    {
      v21 = v83;
    }

    v26 = dispatch thunk of CRDecoder.CRValueKeyedContainer.decoder(forKey:)();
    v28 = v72;
    v27 = v73;
    if (v26)
    {
      v29 = v82;
      dispatch thunk of CRDecoder.valueContainer()();
      if (v29)
      {
LABEL_9:

        goto LABEL_20;
      }

      dispatch thunk of CRDecoder.CRValueContainer.decode(_:)();
      v82 = 0;
      v31 = v30;

      *(v21 + 32) = v31;
    }

    v32 = dispatch thunk of CRDecoder.CRValueKeyedContainer.decoder(forKey:)();
    v33 = v71;
    if (v32)
    {
      type metadata accessor for SignatureItem(0);
      lazy protocol witness table accessor for type Color and conformance Color(&lazy protocol witness table cache variable for type SignatureItem and conformance SignatureItem, type metadata accessor for SignatureItem, &protocol conformance descriptor for SignatureItem);
      v34 = v82;
      Optional<A>.init(from:)();
      if (v34)
      {
        goto LABEL_19;
      }

      v82 = 0;
      *(v21 + 40) = v84;
      v27 = v73;
    }

    if (!dispatch thunk of CRDecoder.CRValueKeyedContainer.decoder(forKey:)())
    {
      goto LABEL_17;
    }

    lazy protocol witness table accessor for type Color and conformance Color(&lazy protocol witness table cache variable for type Color and conformance Color, type metadata accessor for Color, &protocol conformance descriptor for Color);
    v35 = v82;
    Optional<A>.init(from:)();
    if (!v35)
    {
      v82 = 0;
      outlined assign with take of UUID?(v28, v27 + v21, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
LABEL_17:
      if (dispatch thunk of CRDecoder.CRValueKeyedContainer.decoder(forKey:)())
      {
        v36 = v82;
        Optional<A>.init(from:)();
        if (v36)
        {
          goto LABEL_19;
        }

        v82 = 0;
        v37 = BYTE8(v84);
        *v33 = v84;
        v33[8] = v37;
      }

      v83 = v22;
      v38 = dispatch thunk of CRDecoder.CRValueKeyedContainer.allKeys()();
      v39 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSi_SaySiGTt0g5Tf4g_n(v38);

      *&v84 = v39;
      specialized Set._Variant.remove(_:)(0);
      specialized Set._Variant.remove(_:)(1);
      specialized Set._Variant.remove(_:)(2);
      specialized Set._Variant.remove(_:)(3);
      specialized Set._Variant.remove(_:)(5);
      v40 = v84;
      v41 = v84 + 56;
      v42 = 1 << *(v84 + 32);
      v43 = -1;
      if (v42 < 64)
      {
        v43 = ~(-1 << v42);
      }

      v44 = v43 & *(v84 + 56);
      v45 = (v42 + 63) >> 6;
      v46 = (v78 + 56);

      v47 = 0;
      v73 = MEMORY[0x1E69E7CC0];
LABEL_25:
      v48 = v81;
      v49 = v47;
      if (!v44)
      {
        goto LABEL_27;
      }

      do
      {
        v47 = v49;
LABEL_30:
        v50 = __clz(__rbit64(v44));
        v44 &= v44 - 1;
        v51 = *(*(v40 + 48) + ((v47 << 9) | (8 * v50)));
        if (dispatch thunk of CRDecoder.CRValueKeyedContainer.decoder(forKey:)())
        {
          v53 = v79;
          *v79 = v51;
          v54 = v82;
          AnyCRValue.init(from:)();
          v82 = v54;
          if (v54)
          {
LABEL_45:

            goto LABEL_20;
          }

          (*v46)(v53, 0, 1, v80);
          v55 = v53;
          v56 = v75;
          outlined init with take of Range<AttributedString.Index>(v55, v75, &_sSi_9Coherence10AnyCRValueVtMd, &_sSi_9Coherence10AnyCRValueVtMR);
          outlined init with take of Range<AttributedString.Index>(v56, v76, &_sSi_9Coherence10AnyCRValueVtMd, &_sSi_9Coherence10AnyCRValueVtMR);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v73[2] + 1, 1, v73);
          }

          v57 = v78;
          v59 = v73[2];
          v58 = v73[3];
          if (v59 >= v58 >> 1)
          {
            v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1, v73);
            v57 = v78;
            v73 = v61;
          }

          v60 = v73;
          v73[2] = v59 + 1;
          outlined init with take of Range<AttributedString.Index>(v76, v60 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v59, &_sSi_9Coherence10AnyCRValueVtMd, &_sSi_9Coherence10AnyCRValueVtMR);
          goto LABEL_25;
        }

        v52 = v79;
        (*v46)(v79, 1, 1, v80);
        outlined destroy of StocksKitCurrencyCache.Provider?(v52, &_sSi_9Coherence10AnyCRValueVtSgMd, &_sSi_9Coherence10AnyCRValueVtSgMR);
        v49 = v47;
        v48 = v81;
      }

      while (v44);
      while (1)
      {
LABEL_27:
        v47 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
          __break(1u);
          goto LABEL_45;
        }

        if (v47 >= v45)
        {
          break;
        }

        v44 = *(v41 + 8 * v47);
        ++v49;
        if (v44)
        {
          goto LABEL_30;
        }
      }

      v62 = v73;
      if (v73[2])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi9Coherence10AnyCRValueVGMd, &_ss18_DictionaryStorageCySi9Coherence10AnyCRValueVGMR);
        v63 = static _DictionaryStorage.allocate(capacity:)();
      }

      else
      {
        v63 = MEMORY[0x1E69E7CC8];
      }

      v64 = v77;
      v65 = v82;
      v66 = v69;
      v67 = v70;
      v86 = v63;
      specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v62, 1, &v86);
      if (!v65)
      {
        UnknownValueProperties.init(_:)();

        (*(v64 + 40))(v21 + v66, v67, v48);
        return;
      }

      goto LABEL_9;
    }

LABEL_19:

    goto LABEL_20;
  }

  v21 = v83;
LABEL_20:
  outlined destroy of Signature.Partial(v21, type metadata accessor for SignatureValue);
}

uint64_t protocol witness for CRType.observableDifference(from:with:) in conformance SignatureValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type Color and conformance Color(&lazy protocol witness table cache variable for type SignatureValue and conformance SignatureValue, type metadata accessor for SignatureValue, &protocol conformance descriptor for SignatureValue);
  lazy protocol witness table accessor for type Color and conformance Color(&lazy protocol witness table cache variable for type SignatureValue and conformance SignatureValue, type metadata accessor for SignatureValue, &protocol conformance descriptor for SignatureValue);

  return CRValue<>.observableDifference(from:with:)();
}

uint64_t protocol witness for CRType.visitReferences(_:) in conformance SignatureValue(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13SignatureItemCSgMd, &_s8PaperKit13SignatureItemCSgMR);
  lazy protocol witness table accessor for type Color and conformance Color(&lazy protocol witness table cache variable for type SignatureItem and conformance SignatureItem, type metadata accessor for SignatureItem, &protocol conformance descriptor for SignatureItem);
  Optional<A>.visitReferences(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  lazy protocol witness table accessor for type Color and conformance Color(&lazy protocol witness table cache variable for type Color and conformance Color, type metadata accessor for Color, &protocol conformance descriptor for Color);
  Optional<A>.visitReferences(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
  Optional<A>.visitReferences(_:)();
  return UnknownValueProperties.visitReferences(_:)();
}

uint64_t protocol witness for CRCodable.minEncodingVersion.getter in conformance SignatureValue@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6995288];
  v3 = type metadata accessor for CRCodableVersion();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t CGRect.hash(into:)(double a1, double a2, double a3, double a4)
{
  v11 = CGRectStandardize(*&a1);
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  if (v11.origin.x == 0.0)
  {
    v11.origin.x = 0.0;
  }

  MEMORY[0x1DA6CE840](*&v11.origin.x);
  if (y == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = y;
  }

  MEMORY[0x1DA6CE840](*&v7);
  if (width == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = width;
  }

  MEMORY[0x1DA6CE840](*&v8);
  if (height == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = height;
  }

  return MEMORY[0x1DA6CE840](*&v9);
}

uint64_t specialized static Signature.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v63 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiSgGMd, &_s9Coherence10CRRegisterVySiSgGMR);
  v51 = *(v3 - 8);
  v52 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v50 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v49 = &v48 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v55 = *(v7 - 8);
  v56 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v54 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v53 = &v48 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMR);
  v59 = *(v11 - 8);
  v60 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v58 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v57 = &v48 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v61 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v48 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v48 - v26;
  v62 = a1;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGRect> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR, MEMORY[0x1E6995090]);
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v28 = *(v22 + 8);
  v28(v24, v21);
  v28(v27, v21);
  if ((a1 & 1) != 0
    && (type metadata accessor for Signature(0), CRRegister.projectedValue.getter(), CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGFloat> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR, MEMORY[0x1E6995090]), v29 = dispatch thunk of static Equatable.== infix(_:_:)(), v30 = *(v61 + 8), v30(v17, v15), v30(v20, v15), (v29 & 1) != 0)
    && (v31 = v57, v32 = v60, CRRegister.projectedValue.getter(), v33 = v58, CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<SignatureItem?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMR, MEMORY[0x1E6995090]), v34 = dispatch thunk of static Equatable.== infix(_:_:)(), v35 = *(v59 + 8), v35(v33, v32), v35(v31, v32), (v34 & 1) != 0)
    && (v36 = v53, v37 = v56, CRRegister.projectedValue.getter(), v38 = v54, CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Color?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR, MEMORY[0x1E6995090]), v39 = dispatch thunk of static Equatable.== infix(_:_:)(), v40 = *(v55 + 8), v40(v38, v37), v40(v36, v37), (v39 & 1) != 0)
    && (v41 = v49, v42 = v52, CRRegister.projectedValue.getter(), v43 = v50, CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Int?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySiSgGMd, &_s9Coherence10CRRegisterVySiSgGMR, MEMORY[0x1E6995090]), v44 = dispatch thunk of static Equatable.== infix(_:_:)(), v45 = *(v51 + 8), v45(v43, v42), v45(v41, v42), (v44 & 1) != 0))
  {
    v46 = static UnknownProperties.== infix(_:_:)();
  }

  else
  {
    v46 = 0;
  }

  return v46 & 1;
}

uint64_t specialized static SignatureValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Color(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v30 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSg_ADtMd, &_s8PaperKit5ColorVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  v14 = CGRectEqualToRect(*a1, *a2);
  if (v14)
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      goto LABEL_14;
    }

    v15 = *(a1 + 40);
    v16 = *(a2 + 40);
    if (v15)
    {
      if (!v16)
      {
        goto LABEL_14;
      }

      v31 = v5;
      type metadata accessor for SignatureItem(0);
      v17 = v16;
      v18 = v15;
      v19 = static NSObject.== infix(_:_:)();

      if ((v19 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v31 = v5;
      if (v16)
      {
        goto LABEL_14;
      }
    }

    v30 = type metadata accessor for SignatureValue(0);
    v20 = *(v30 + 28);
    v21 = *(v11 + 48);
    outlined init with copy of Date?(a1 + v20, v13, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
    outlined init with copy of Date?(a2 + v20, &v13[v21], &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
    v22 = *(v31 + 48);
    if (v22(v13, 1, v4) == 1)
    {
      if (v22(&v13[v21], 1, v4) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v13, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
LABEL_17:
        v25 = *(v30 + 32);
        v26 = (a1 + v25);
        v27 = *(a1 + v25 + 8);
        v28 = (a2 + v25);
        v29 = *(a2 + v25 + 8);
        if ((v27 & 1) == 0)
        {
          if (*v26 != *v28)
          {
            LOBYTE(v29) = 1;
          }

          if (v29)
          {
            goto LABEL_14;
          }

LABEL_23:
          LOBYTE(v14) = static UnknownValueProperties.== infix(_:_:)();
          return v14 & 1;
        }

        if (v29)
        {
          goto LABEL_23;
        }

LABEL_14:
        LOBYTE(v14) = 0;
        return v14 & 1;
      }
    }

    else
    {
      outlined init with copy of Date?(v13, v10, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
      if (v22(&v13[v21], 1, v4) != 1)
      {
        outlined init with take of Color(&v13[v21], v7, type metadata accessor for Color);
        v24 = specialized static Color.== infix(_:_:)(v10, v7);
        outlined destroy of Signature.Partial(v7, type metadata accessor for Color);
        outlined destroy of Signature.Partial(v10, type metadata accessor for Color);
        outlined destroy of StocksKitCurrencyCache.Provider?(v13, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
        if (!v24)
        {
          goto LABEL_14;
        }

        goto LABEL_17;
      }

      outlined destroy of Signature.Partial(v10, type metadata accessor for Color);
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v13, &_s8PaperKit5ColorVSg_ADtMd, &_s8PaperKit5ColorVSg_ADtMR);
    goto LABEL_14;
  }

  return v14 & 1;
}

void specialized CanvasElement.renderFrame(in:)()
{
  v0 = off_1F4F62A10;
  v1 = type metadata accessor for Paper(0);
  v2 = v0();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = off_1F4F62980(v1, &protocol witness table for Paper);
  v28 = v4 - v8 * 0.0;
  v29 = v2 - v6 * 0.0;
  v33.origin.x = v2;
  v33.origin.y = v4;
  v33.size.width = v6;
  v26 = v6;
  v27 = v8;
  v33.size.height = v8;
  MidX = CGRectGetMidX(v33);
  v34.origin.x = v2;
  v34.origin.y = v4;
  v34.size.width = v6;
  v34.size.height = v8;
  MidY = CGRectGetMidY(v34);
  CGAffineTransformMakeRotation(&t1, v9);
  tx = t1.tx;
  ty = t1.ty;
  v22 = *&t1.c;
  v24 = *&t1.a;
  CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
  a = t1.a;
  b = t1.b;
  c = t1.c;
  d = t1.d;
  v18 = t1.tx;
  v19 = t1.ty;
  *&t2.a = v24;
  *&t2.c = v22;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v30, &t1, &t2);
  v20 = v30.tx;
  v21 = v30.ty;
  v23 = *&v30.c;
  v25 = *&v30.a;
  t1.a = a;
  t1.b = b;
  t1.c = c;
  t1.d = d;
  t1.tx = v18;
  t1.ty = v19;
  CGAffineTransformInvert(&t2, &t1);
  *&t1.a = v25;
  *&t1.c = v23;
  t1.tx = v20;
  t1.ty = v21;
  CGAffineTransformConcat(&v30, &t1, &t2);
  t1.a = v26;
  t1.b = 0.0;
  t1.c = 0.0;
  t1.d = v27;
  t1.tx = v29;
  t1.ty = v28;
  t2 = v30;
  CGAffineTransformConcat(&v30, &t1, &t2);
  t1 = v30;
  v35.origin.x = 0.0;
  v35.origin.y = 0.0;
  v35.size.width = 1.0;
  v35.size.height = 1.0;
  CGRectApplyAffineTransform(v35, &t1);
}

{
  v0 = off_1F4F5A660;
  type metadata accessor for PaperDocumentPage(0);
  v1 = v0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  off_1F4F5A5D0[0]();
  v9 = v8;
  v28 = v3 - v7 * 0.0;
  v29 = v1 - v5 * 0.0;
  v33.origin.x = v1;
  v33.origin.y = v3;
  v33.size.width = v5;
  v26 = v5;
  v27 = v7;
  v33.size.height = v7;
  MidX = CGRectGetMidX(v33);
  v34.origin.x = v1;
  v34.origin.y = v3;
  v34.size.width = v5;
  v34.size.height = v7;
  MidY = CGRectGetMidY(v34);
  CGAffineTransformMakeRotation(&t1, v9);
  tx = t1.tx;
  ty = t1.ty;
  v22 = *&t1.c;
  v24 = *&t1.a;
  CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
  a = t1.a;
  b = t1.b;
  c = t1.c;
  d = t1.d;
  v18 = t1.tx;
  v19 = t1.ty;
  *&t2.a = v24;
  *&t2.c = v22;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v30, &t1, &t2);
  v20 = v30.tx;
  v21 = v30.ty;
  v23 = *&v30.c;
  v25 = *&v30.a;
  t1.a = a;
  t1.b = b;
  t1.c = c;
  t1.d = d;
  t1.tx = v18;
  t1.ty = v19;
  CGAffineTransformInvert(&t2, &t1);
  *&t1.a = v25;
  *&t1.c = v23;
  t1.tx = v20;
  t1.ty = v21;
  CGAffineTransformConcat(&v30, &t1, &t2);
  t1.a = v26;
  t1.b = 0.0;
  t1.c = 0.0;
  t1.d = v27;
  t1.tx = v29;
  t1.ty = v28;
  t2 = v30;
  CGAffineTransformConcat(&v30, &t1, &t2);
  t1 = v30;
  v35.origin.x = 0.0;
  v35.origin.y = 0.0;
  v35.size.width = 1.0;
  v35.size.height = 1.0;
  CGRectApplyAffineTransform(v35, &t1);
}

{
  v0 = off_1F4F57458;
  type metadata accessor for GraphElement(0);
  v1 = v0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = (off_1F4F573C8[0])();
  v27 = v3 - v7 * 0.0;
  v28 = v1 - v5 * 0.0;
  v32.origin.x = v1;
  v32.origin.y = v3;
  v32.size.width = v5;
  v25 = v5;
  v26 = v7;
  v32.size.height = v7;
  MidX = CGRectGetMidX(v32);
  v33.origin.x = v1;
  v33.origin.y = v3;
  v33.size.width = v5;
  v33.size.height = v7;
  MidY = CGRectGetMidY(v33);
  CGAffineTransformMakeRotation(&t1, v8);
  tx = t1.tx;
  ty = t1.ty;
  v21 = *&t1.c;
  v23 = *&t1.a;
  CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
  a = t1.a;
  b = t1.b;
  c = t1.c;
  d = t1.d;
  v17 = t1.tx;
  v18 = t1.ty;
  *&t2.a = v23;
  *&t2.c = v21;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v29, &t1, &t2);
  v19 = v29.tx;
  v20 = v29.ty;
  v22 = *&v29.c;
  v24 = *&v29.a;
  t1.a = a;
  t1.b = b;
  t1.c = c;
  t1.d = d;
  t1.tx = v17;
  t1.ty = v18;
  CGAffineTransformInvert(&t2, &t1);
  *&t1.a = v24;
  *&t1.c = v22;
  t1.tx = v19;
  t1.ty = v20;
  CGAffineTransformConcat(&v29, &t1, &t2);
  t1.a = v25;
  t1.b = 0.0;
  t1.c = 0.0;
  t1.d = v26;
  t1.tx = v28;
  t1.ty = v27;
  t2 = v29;
  CGAffineTransformConcat(&v29, &t1, &t2);
  t1 = v29;
  v34.origin.x = 0.0;
  v34.origin.y = 0.0;
  v34.size.width = 1.0;
  v34.size.height = 1.0;
  CGRectApplyAffineTransform(v34, &t1);
}

{
  v0 = off_1F4F612B0;
  v1 = type metadata accessor for LoupeElement(0);
  v2 = v0();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = off_1F4F61220(v1, &protocol witness table for LoupeElement);
  v28 = v4 - v8 * 0.0;
  v29 = v2 - v6 * 0.0;
  v33.origin.x = v2;
  v33.origin.y = v4;
  v33.size.width = v6;
  v26 = v6;
  v27 = v8;
  v33.size.height = v8;
  MidX = CGRectGetMidX(v33);
  v34.origin.x = v2;
  v34.origin.y = v4;
  v34.size.width = v6;
  v34.size.height = v8;
  MidY = CGRectGetMidY(v34);
  CGAffineTransformMakeRotation(&t1, v9);
  tx = t1.tx;
  ty = t1.ty;
  v22 = *&t1.c;
  v24 = *&t1.a;
  CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
  a = t1.a;
  b = t1.b;
  c = t1.c;
  d = t1.d;
  v18 = t1.tx;
  v19 = t1.ty;
  *&t2.a = v24;
  *&t2.c = v22;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v30, &t1, &t2);
  v20 = v30.tx;
  v21 = v30.ty;
  v23 = *&v30.c;
  v25 = *&v30.a;
  t1.a = a;
  t1.b = b;
  t1.c = c;
  t1.d = d;
  t1.tx = v18;
  t1.ty = v19;
  CGAffineTransformInvert(&t2, &t1);
  *&t1.a = v25;
  *&t1.c = v23;
  t1.tx = v20;
  t1.ty = v21;
  CGAffineTransformConcat(&v30, &t1, &t2);
  t1.a = v26;
  t1.b = 0.0;
  t1.c = 0.0;
  t1.d = v27;
  t1.tx = v29;
  t1.ty = v28;
  t2 = v30;
  CGAffineTransformConcat(&v30, &t1, &t2);
  t1 = v30;
  v35.origin.x = 0.0;
  v35.origin.y = 0.0;
  v35.size.width = 1.0;
  v35.size.height = 1.0;
  CGRectApplyAffineTransform(v35, &t1);
}

{
  v0 = off_1F4F66BD0;
  type metadata accessor for UnknownCanvasElement(0);
  v1 = v0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = (off_1F4F66B40[0])();
  v27 = v3 - v7 * 0.0;
  v28 = v1 - v5 * 0.0;
  v32.origin.x = v1;
  v32.origin.y = v3;
  v32.size.width = v5;
  v25 = v5;
  v26 = v7;
  v32.size.height = v7;
  MidX = CGRectGetMidX(v32);
  v33.origin.x = v1;
  v33.origin.y = v3;
  v33.size.width = v5;
  v33.size.height = v7;
  MidY = CGRectGetMidY(v33);
  CGAffineTransformMakeRotation(&t1, v8);
  tx = t1.tx;
  ty = t1.ty;
  v21 = *&t1.c;
  v23 = *&t1.a;
  CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
  a = t1.a;
  b = t1.b;
  c = t1.c;
  d = t1.d;
  v17 = t1.tx;
  v18 = t1.ty;
  *&t2.a = v23;
  *&t2.c = v21;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v29, &t1, &t2);
  v19 = v29.tx;
  v20 = v29.ty;
  v22 = *&v29.c;
  v24 = *&v29.a;
  t1.a = a;
  t1.b = b;
  t1.c = c;
  t1.d = d;
  t1.tx = v17;
  t1.ty = v18;
  CGAffineTransformInvert(&t2, &t1);
  *&t1.a = v24;
  *&t1.c = v22;
  t1.tx = v19;
  t1.ty = v20;
  CGAffineTransformConcat(&v29, &t1, &t2);
  t1.a = v25;
  t1.b = 0.0;
  t1.c = 0.0;
  t1.d = v26;
  t1.tx = v28;
  t1.ty = v27;
  t2 = v29;
  CGAffineTransformConcat(&v29, &t1, &t2);
  t1 = v29;
  v34.origin.x = 0.0;
  v34.origin.y = 0.0;
  v34.size.width = 1.0;
  v34.size.height = 1.0;
  CGRectApplyAffineTransform(v34, &t1);
}

{
  v0 = off_1F4F62BD8;
  type metadata accessor for Link(0);
  v1 = v0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = (off_1F4F62B48[0])();
  v27 = v3 - v7 * 0.0;
  v28 = v1 - v5 * 0.0;
  v32.origin.x = v1;
  v32.origin.y = v3;
  v32.size.width = v5;
  v25 = v5;
  v26 = v7;
  v32.size.height = v7;
  MidX = CGRectGetMidX(v32);
  v33.origin.x = v1;
  v33.origin.y = v3;
  v33.size.width = v5;
  v33.size.height = v7;
  MidY = CGRectGetMidY(v33);
  CGAffineTransformMakeRotation(&t1, v8);
  tx = t1.tx;
  ty = t1.ty;
  v21 = *&t1.c;
  v23 = *&t1.a;
  CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
  a = t1.a;
  b = t1.b;
  c = t1.c;
  d = t1.d;
  v17 = t1.tx;
  v18 = t1.ty;
  *&t2.a = v23;
  *&t2.c = v21;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v29, &t1, &t2);
  v19 = v29.tx;
  v20 = v29.ty;
  v22 = *&v29.c;
  v24 = *&v29.a;
  t1.a = a;
  t1.b = b;
  t1.c = c;
  t1.d = d;
  t1.tx = v17;
  t1.ty = v18;
  CGAffineTransformInvert(&t2, &t1);
  *&t1.a = v24;
  *&t1.c = v22;
  t1.tx = v19;
  t1.ty = v20;
  CGAffineTransformConcat(&v29, &t1, &t2);
  t1.a = v25;
  t1.b = 0.0;
  t1.c = 0.0;
  t1.d = v26;
  t1.tx = v28;
  t1.ty = v27;
  t2 = v29;
  CGAffineTransformConcat(&v29, &t1, &t2);
  t1 = v29;
  v34.origin.x = 0.0;
  v34.origin.y = 0.0;
  v34.size.width = 1.0;
  v34.size.height = 1.0;
  CGRectApplyAffineTransform(v34, &t1);
}

{
  v0 = off_1F4F5EEB0;
  v1 = type metadata accessor for Image(0);
  v2 = v0();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = off_1F4F5EE20(v1, &protocol witness table for Image);
  v28 = v4 - v8 * 0.0;
  v29 = v2 - v6 * 0.0;
  v33.origin.x = v2;
  v33.origin.y = v4;
  v33.size.width = v6;
  v26 = v6;
  v27 = v8;
  v33.size.height = v8;
  MidX = CGRectGetMidX(v33);
  v34.origin.x = v2;
  v34.origin.y = v4;
  v34.size.width = v6;
  v34.size.height = v8;
  MidY = CGRectGetMidY(v34);
  CGAffineTransformMakeRotation(&t1, v9);
  tx = t1.tx;
  ty = t1.ty;
  v22 = *&t1.c;
  v24 = *&t1.a;
  CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
  a = t1.a;
  b = t1.b;
  c = t1.c;
  d = t1.d;
  v18 = t1.tx;
  v19 = t1.ty;
  *&t2.a = v24;
  *&t2.c = v22;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v30, &t1, &t2);
  v20 = v30.tx;
  v21 = v30.ty;
  v23 = *&v30.c;
  v25 = *&v30.a;
  t1.a = a;
  t1.b = b;
  t1.c = c;
  t1.d = d;
  t1.tx = v18;
  t1.ty = v19;
  CGAffineTransformInvert(&t2, &t1);
  *&t1.a = v25;
  *&t1.c = v23;
  t1.tx = v20;
  t1.ty = v21;
  CGAffineTransformConcat(&v30, &t1, &t2);
  t1.a = v26;
  t1.b = 0.0;
  t1.c = 0.0;
  t1.d = v27;
  t1.tx = v29;
  t1.ty = v28;
  t2 = v30;
  CGAffineTransformConcat(&v30, &t1, &t2);
  t1 = v30;
  v35.origin.x = 0.0;
  v35.origin.y = 0.0;
  v35.size.width = 1.0;
  v35.size.height = 1.0;
  CGRectApplyAffineTransform(v35, &t1);
}

{
  type metadata accessor for Signature(0);
  j___s8PaperKit9SignatureVAA0C8ProviderA2aDP5frameSo6CGRectVvgTWTm();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.getter();
  v26 = v3 - v7 * 0.0;
  v27 = v1 - v5 * 0.0;
  v31.origin.x = v1;
  v31.origin.y = v3;
  v31.size.width = v5;
  v24 = v5;
  v25 = v7;
  v31.size.height = v7;
  MidX = CGRectGetMidX(v31);
  v32.origin.x = v1;
  v32.origin.y = v3;
  v32.size.width = v5;
  v32.size.height = v7;
  MidY = CGRectGetMidY(v32);
  CGAffineTransformMakeRotation(&t1, t1.a);
  tx = t1.tx;
  ty = t1.ty;
  v20 = *&t1.c;
  v22 = *&t1.a;
  CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
  a = t1.a;
  b = t1.b;
  c = t1.c;
  d = t1.d;
  v16 = t1.tx;
  v17 = t1.ty;
  *&t2.a = v22;
  *&t2.c = v20;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v28, &t1, &t2);
  v18 = v28.tx;
  v19 = v28.ty;
  v21 = *&v28.c;
  v23 = *&v28.a;
  t1.a = a;
  t1.b = b;
  t1.c = c;
  t1.d = d;
  t1.tx = v16;
  t1.ty = v17;
  CGAffineTransformInvert(&t2, &t1);
  *&t1.a = v23;
  *&t1.c = v21;
  t1.tx = v18;
  t1.ty = v19;
  CGAffineTransformConcat(&v28, &t1, &t2);
  t1.a = v24;
  t1.b = 0.0;
  t1.c = 0.0;
  t1.d = v25;
  t1.tx = v27;
  t1.ty = v26;
  t2 = v28;
  CGAffineTransformConcat(&v28, &t1, &t2);
  t1 = v28;
  v33.origin.x = 0.0;
  v33.origin.y = 0.0;
  v33.size.width = 1.0;
  v33.size.height = 1.0;
  CGRectApplyAffineTransform(v33, &t1);
}

uint64_t outlined copy of SignatureDescription(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
  }

  return result;
}

double specialized Signature.hdrHeadroom(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  type metadata accessor for Signature(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  CRRegister.wrappedValue.getter();
  v3 = type metadata accessor for Color(0);
  if ((*(*(v3 - 8) + 48))(v2, 1, v3) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v2, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
    return 1.0;
  }

  else
  {
    CGColorGetContentHeadroom();
    v4 = v5;
    outlined destroy of Signature.Partial(v2, type metadata accessor for Color);
  }

  return v4;
}

uint64_t outlined destroy of Signature.Partial(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of Color(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of Signature.Partial(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type Color? and conformance <A> A?(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
    lazy protocol witness table accessor for type Color and conformance Color(&lazy protocol witness table cache variable for type Color and conformance Color, type metadata accessor for Color, &protocol conformance descriptor for Color);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Int? and conformance <A> A?(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSiSgMd, &_sSiSgMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata completion function for Signature(uint64_t a1)
{
  type metadata accessor for CRRegister<CGRect>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CRRegister<CGFloat>(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CRRegister<SignatureItem?>(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for CRRegister<Color?>(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for CRRegister<Int?>(319);
          if (v5 <= 0x3F)
          {
            type metadata accessor for UnknownProperties();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for CRRegister<CGFloat>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CRRegister<CGFloat>)
  {
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v1 = type metadata accessor for CRRegister();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for CRRegister<CGFloat>);
    }
  }
}

void type metadata accessor for CRRegister<SignatureItem?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CRRegister<SignatureItem?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s8PaperKit13SignatureItemCSgMd, &_s8PaperKit13SignatureItemCSgMR);
    lazy protocol witness table accessor for type SignatureItem? and conformance <A> A?(&lazy protocol witness table cache variable for type SignatureItem? and conformance <A> A?, MEMORY[0x1E6995530]);
    v1 = type metadata accessor for CRRegister();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for CRRegister<SignatureItem?>);
    }
  }
}

void type metadata accessor for CRRegister<Color?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CRRegister<Color?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
    lazy protocol witness table accessor for type Color? and conformance <A> A?(&lazy protocol witness table cache variable for type Color? and conformance <A> A?, MEMORY[0x1E6995530]);
    v1 = type metadata accessor for CRRegister();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for CRRegister<Color?>);
    }
  }
}

void type metadata accessor for CRRegister<Int?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CRRegister<Int?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSiSgMd, &_sSiSgMR);
    lazy protocol witness table accessor for type Int? and conformance <A> A?(&lazy protocol witness table cache variable for type Int? and conformance <A> A?, MEMORY[0x1E6995530]);
    v1 = type metadata accessor for CRRegister();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for CRRegister<Int?>);
    }
  }
}

void type metadata completion function for Signature.ObservableDifference(uint64_t a1)
{
  type metadata accessor for CRValueObservableDifference?(319, &lazy cache variable for type metadata for CRValueObservableDifference?, MEMORY[0x1E6995380]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata completion function for Signature.MutatingAction(uint64_t a1)
{
  type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CGRect>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GMR);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CGFloat>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GMR);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<SignatureItem?>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit13SignatureItemCSg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit13SignatureItemCSg_GMR);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<Color?>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit5ColorVSg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit5ColorVSg_GMR);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<Int?>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVySiSg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVySiSg_GMR);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata completion function for Signature.Partial(uint64_t a1)
{
  type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CGRect>?, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CGFloat>?, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<SignatureItem?>?, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMR);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<Color?>?, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<Int?>?, &_s9Coherence10CRRegisterVySiSgGMd, &_s9Coherence10CRRegisterVySiSgGMR);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata completion function for SignatureValue(uint64_t a1)
{
  type metadata accessor for CGRect(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CRValueObservableDifference?(319, &lazy cache variable for type metadata for SignatureItem?, type metadata accessor for SignatureItem);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CRValueObservableDifference?(319, &lazy cache variable for type metadata for Color?, type metadata accessor for Color);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Int?();
        if (v4 <= 0x3F)
        {
          type metadata accessor for UnknownValueProperties();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for CRValueObservableDifference?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for Int?()
{
  if (!lazy cache variable for type metadata for Int?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Int?);
    }
  }
}

id one-time initialization function for maskAlphaVector()
{
  result = [objc_allocWithZone(MEMORY[0x1E695F688]) initWithX:0.0 Y:0.0 Z:0.0 W:1.0];
  static UIImage.maskAlphaVector = result;
  return result;
}

UIImage_optional __swiftcall UIImage.alphaMaskForSketch()()
{
  v1 = [v0 CIImage];
  v2 = v1;
  if (!v1)
  {
    v33 = [v0 CGImage];
    if (!v33 || (v34 = v33, v35 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCGImage_], v34, !v35))
    {
      if (one-time initialization token for generativeLogger != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      __swift_project_value_buffer(v40, generativeLogger);
      v2 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v2, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_1D38C4000, v2, v41, "Sketch conversion to CIImage failed", v42, 2u);
        MEMORY[0x1DA6D0660](v42, -1, -1);
      }

      goto LABEL_34;
    }

    v2 = v35;
    v1 = 0;
  }

  v3 = v1;

  v4 = specialized _toMonochrome #1 (_:) in UIImage.alphaMaskForSketch()(v2);
  if (!v4)
  {
    if (one-time initialization token for generativeLogger != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, generativeLogger);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1D38C4000, v37, v38, "Sketch processing failed (monochrome)", v39, 2u);
      MEMORY[0x1DA6D0660](v39, -1, -1);
    }

    goto LABEL_34;
  }

  v5 = v4;
  v6 = objc_opt_self();
  v7 = [v6 colorThresholdFilter];
  [v7 setInputImage_];
  LODWORD(v8) = 981668463;
  [v7 setThreshold_];
  v9 = [v7 outputImage];

  if (!v9)
  {
    if (one-time initialization token for generativeLogger != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, generativeLogger);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_1D38C4000, v44, v45, "Sketch processing failed (colorThreshold)", v46, 2u);
      MEMORY[0x1DA6D0660](v46, -1, -1);
    }

    goto LABEL_34;
  }

  v10 = [v6 morphologyMaximumFilter];
  [v10 setInputImage_];
  LODWORD(v11) = 30.0;
  [v10 setRadius_];
  v12 = [v10 outputImage];

  if (!v12)
  {
    if (one-time initialization token for generativeLogger != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    __swift_project_value_buffer(v47, generativeLogger);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_1D38C4000, v48, v49, "Sketch processing failed (morphologyMaximum)", v50, 2u);
      MEMORY[0x1DA6D0660](v50, -1, -1);
    }

    goto LABEL_34;
  }

  v13 = [v6 morphologyMinimumFilter];
  [v13 setInputImage_];
  LODWORD(v14) = 20.0;
  [v13 setRadius_];
  v15 = [v13 outputImage];

  if (!v15)
  {
    if (one-time initialization token for generativeLogger != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    __swift_project_value_buffer(v51, generativeLogger);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_1D38C4000, v52, v53, "Sketch processing failed (morphologyMinimum)", v54, 2u);
      MEMORY[0x1DA6D0660](v54, -1, -1);
    }

LABEL_34:
    v32 = 0;
    goto LABEL_35;
  }

  [v15 extent];
  Width = CGRectGetWidth(v59);
  [v2 extent];
  v17 = (Width - CGRectGetWidth(v60)) * 0.5;
  [v15 extent];
  Height = CGRectGetHeight(v61);
  [v2 extent];
  v19 = (Height - CGRectGetHeight(v62)) * 0.5;
  [v2 extent];
  v20 = CGRectGetWidth(v63);
  [v2 extent];
  v21 = CGRectGetHeight(v64);
  v65.origin.x = v17;
  v65.origin.y = v19;
  v65.size.width = v20;
  v65.size.height = v21;
  v22 = -CGRectGetMinX(v65);
  v66.origin.x = v17;
  v66.origin.y = v19;
  v66.size.width = v20;
  v66.size.height = v21;
  MinY = CGRectGetMinY(v66);
  CGAffineTransformMakeTranslation(&v57, v22, -MinY);
  tx = v57.tx;
  ty = v57.ty;
  v55 = *&v57.c;
  v56 = *&v57.a;
  v26 = [v15 imageByCroppingToRect_];
  *&v57.a = v56;
  *&v57.c = v55;
  v57.tx = tx;
  v57.ty = ty;
  v27 = [v26 imageByApplyingTransform_];

  [v2 extent];
  v28 = CGRectGetWidth(v67);
  [v0 size];
  v30 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCIImage:v27 scale:0 orientation:v28 / v29];

  v32 = v30;
LABEL_35:
  result.value.super.isa = v32;
  result.is_nil = v31;
  return result;
}

id UIImage.padAndResizeImageToSquareOfLength(_:fillColor:)(void *a1, double a2)
{
  [v2 size];
  [v2 size];
  [v2 size];
  [v2 size];
  UnknownCanvasElementView.flags.modify();
  v6 = v5;
  v8 = v7;
  UnknownCanvasElementView.flags.modify();
  v11 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = v6;
  *(v12 + 40) = v8;
  *(v12 + 48) = v2;
  v13 = swift_allocObject();
  *(v13 + 16) = partial apply for closure #1 in UIImage.padAndResizeImageToSquareOfLength(_:fillColor:);
  *(v13 + 24) = v12;
  v20[4] = partial apply for thunk for @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
  v20[5] = v13;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 1107296256;
  v20[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
  v20[3] = &block_descriptor_2;
  v14 = _Block_copy(v20);
  v15 = a1;
  v16 = v2;

  v17 = [v11 imageWithActions_];

  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return v17;
  }

  __break(1u);
  return result;
}

id closure #1 in UIImage.padAndResizeImageToSquareOfLength(_:fillColor:)(void *a1, id a2, void *a3)
{
  [a2 setFill];
  UnknownCanvasElementView.flags.modify();
  [a1 fillRect_];
  UnknownCanvasElementView.flags.modify();

  return [a3 drawInRect_];
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id specialized _toMonochrome #1 (_:) in UIImage.alphaMaskForSketch()(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = [v2 colorMatrixFilter];
  if (one-time initialization token for maskAlphaVector != -1)
  {
    swift_once();
  }

  v4 = static UIImage.maskAlphaVector;
  [v3 setRVector_];
  [v3 setGVector_];
  [v3 setBVector_];
  [v3 setAVector_];
  [v3 setInputImage_];
  v5 = [v3 outputImage];
  if (v5)
  {
    v6 = v5;
    v7 = [v2 colorInvertFilter];
    [v7 setInputImage_];
    v8 = [v7 outputImage];
  }

  else
  {

    return 0;
  }

  return v8;
}

void *TextBoxLayout.createView<A>(in:canvas:parent:)(char *a1, void *a2, void *a3, uint64_t a4, char *a5)
{
  v63 = a5;
  v58[1] = a4;
  v60 = a3;
  v62 = a2;
  v64 = a1;
  v6 = type metadata accessor for CRKeyPath();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit7TextBoxVGMd, &_s9Coherence3RefVy8PaperKit7TextBoxVGMR);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v58 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMd, &_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMR);
  v59 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v61 = v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v58 - v17;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = v58 - v21;
  (*(v7 + 16))(v9, v5, v6, v20);
  v23 = type metadata accessor for TextBox(0);
  v24 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type TextBox and conformance TextBox, type metadata accessor for TextBox, &protocol conformance descriptor for TextBox);
  Ref.init(id:)();
  type metadata accessor for Capsule();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<TextBox> and conformance Ref<A>, &_s9Coherence3RefVy8PaperKit7TextBoxVGMd, &_s9Coherence3RefVy8PaperKit7TextBoxVGMR, MEMORY[0x1E69953B8]);
  Capsule.encapsulate<A>(_:)();
  (*(v11 + 8))(v13, v10);
  v65 = v23;
  v66 = v24;
  v67 = &protocol witness table for TextBox;
  swift_getKeyPath();
  Capsule.subscript.getter();

  x = v73.origin.x;
  y = v73.origin.y;
  width = v73.size.width;
  height = v73.size.height;
  CGRectGetMinX(v73);
  v75.origin.x = x;
  v75.origin.y = y;
  v75.size.width = width;
  v75.size.height = height;
  CGRectGetMinY(v75);
  v76.origin.x = x;
  v76.origin.y = y;
  v76.size.width = width;
  v76.size.height = height;
  CGRectGetWidth(v76);
  v77.origin.x = x;
  v77.origin.y = y;
  v77.size.width = width;
  v77.size.height = height;
  v29 = CGRectGetHeight(v77);
  v30 = v59;
  v31 = *(v59 + 16);
  v63 = v22;
  v31(v18, v22, v14, v29);
  v32 = objc_allocWithZone(type metadata accessor for TextBoxCanvasElementView(0));
  *&v32[direct field offset for TextBoxCanvasElementView._textBoxView] = 0;
  swift_getKeyPath();
  v64 = v18;
  Capsule.subscript.getter();
  v33 = v60;

  v34 = v69;
  v35 = v70;
  v36 = v71;
  v37 = v72;
  if (v33)
  {
    AnyCanvasElementView.paperBoundsTransform()(&v74);
    v39 = *&v74.a;
    v38 = *&v74.c;
    v40 = *&v74.tx;
  }

  else
  {
    v38 = xmmword_1D4059310;
    v39 = xmmword_1D4059320;
    v40 = 0uLL;
  }

  *&v68.a = v39;
  *&v68.c = v38;
  *&v68.tx = v40;
  v78.origin.x = v34;
  v78.origin.y = v35;
  v78.size.width = v36;
  v78.size.height = v37;
  v79 = CGRectApplyAffineTransform(v78, &v68);
  v41 = v79.origin.x;
  v42 = v79.origin.y;
  v43 = v79.size.width;
  v44 = v79.size.height;
  v45 = v61;
  (v31)(v61, v64, v14);
  v46 = MEMORY[0x1E69E7D40];
  (*(v30 + 56))(&v32[*((*MEMORY[0x1E69E7D40] & *v32) + 0x3F8)], 1, 1, v14);
  *&v32[*((*v46 & *v32) + 0x400)] = 0;
  *&v32[*((*v46 & *v32) + 0x408)] = 0;
  *&v32[*((*v46 & *v32) + 0x410)] = 0;
  *&v32[*((*v46 & *v32) + 0x418)] = 0;
  *&v32[*((*v46 & *v32) + 0x420)] = 0;
  (v31)(&v32[*((*v46 & *v32) + 0x3F0)], v45, v14);
  v47 = v62;
  v48 = v62;
  v49 = v33;
  v50 = AnyCanvasElementView.init(frame:canvas:parentCanvasElement:)(v47, v33, v41, v42, v43, v44);
  specialized CanvasElementView.setupAccessibility()();
  if (v47)
  {
    (*((*v46 & *v50) + 0x520))();

    v51 = *(v30 + 8);
    v51(v45, v14);
  }

  else
  {
    v51 = *(v30 + 8);
    v51(v45, v14);
  }

  v52 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11TextBoxViewCyAA0cD0VGMd, &_s8PaperKit11TextBoxViewCyAA0cD0VGMR));
  v53 = v50;
  v54 = specialized TextBoxView.init(canvasElementView:delegate:shouldAddTextboxView:analytics_inputSource:analytics_documentType:)(v53, v53, 1, 68, 68, v52);
  v55 = *&v53[direct field offset for TextBoxCanvasElementView._textBoxView];
  *&v53[direct field offset for TextBoxCanvasElementView._textBoxView] = v54;
  v56 = v54;

  [v53 addSubview_];
  v51(v64, v14);
  v51(v63, v14);

  return v50;
}

uint64_t closure #1 in static TextBoxLayout.loadItemProvider(_:canvasFrame:frame:rotation:anchor:offset:assetManager:dragItem:completion:)(uint64_t *a1, void *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7, void (*a8)(char *), CGFloat a9, CGFloat a10, CGFloat a11, CGFloat a12, double a13, uint64_t a14)
{
  v50 = *&a6;
  v51 = a2;
  v52 = a14;
  v53 = a8;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGSgMR);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v49 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGMR);
  v31 = *(v30 - 8);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v49 - v33;
  v35 = a1[1];
  if (v35)
  {
    v36 = *a1;
    LOBYTE(v54) = a4;
    static TextBoxLayout.load(_:canvasFrame:frame:rotation:anchor:offset:)(v36, v35, a3, &v54, *&a5, v50, a7 & 1, *&v29, a9, a10, a11, a12, a13);
    if ((*(v31 + 48))(v29, 1, v30) != 1)
    {
      (*(v31 + 32))(v34, v29, v30);
      (*(v31 + 16))(v26, v34, v30);
      (*(v31 + 56))(v26, 0, 1, v30);
      v53(v26);
      outlined destroy of StocksKitCurrencyCache.Provider?(v26, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGSgMR);
      return (*(v31 + 8))(v34, v30);
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v29, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGSgMR);
  }

  v37 = v51;
  if (v51)
  {
    v38 = v51;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, logger);
    v40 = v37;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v54 = v44;
      *v43 = 136315138;
      swift_getErrorValue();
      v45 = Error.localizedDescription.getter();
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, &v54);

      *(v43 + 4) = v47;
      _os_log_impl(&dword_1D38C4000, v41, v42, "Unable to decode string representation %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x1DA6D0660](v44, -1, -1);
      MEMORY[0x1DA6D0660](v43, -1, -1);
    }

    else
    {
    }
  }

  (*(v31 + 56))(v26, 1, 1, v30, v32);
  v53(v26);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v26, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGSgMR);
}

CGColorRef static TextBoxLayout.load(_:canvasFrame:frame:rotation:anchor:offset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, double a5@<X4>, double a6@<X5>, int a7@<W6>, double a8@<X8>, CGFloat a9@<D0>, CGFloat a10@<D1>, CGFloat a11@<D2>, CGFloat a12@<D3>, double a13@<D4>)
{
  LODWORD(v161) = a7;
  v160 = a6;
  v132 = a2;
  v159 = a13;
  v128.size.height = a12;
  v128.size.width = a11;
  v128.origin.y = a10;
  v128.origin.x = a9;
  v131 = a1;
  v17 = *a3;
  v18 = *(a3 + 8);
  v19 = *(a3 + 16);
  v20 = *(a3 + 24);
  v21 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v120 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd, &_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMR);
  v158 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v157 = &v120 - v25;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  v163 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164);
  v121 = &v120 - v26;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v155 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v154 = &v120 - v27;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v153 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v152 = &v120 - v28;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd, &_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMR);
  v150 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v149 = &v120 - v29;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v145 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v143 = &v120 - v30;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6ShadowVSgMd, &_s8PaperKit6ShadowVSgMR);
  MEMORY[0x1EEE9AC00](v142);
  v141 = &v120 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v140 = &v120 - v33;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11StrokeStyleOSgMd, &_s8PaperKit11StrokeStyleOSgMR);
  MEMORY[0x1EEE9AC00](v139);
  v138 = &v120 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v137 = &v120 - v36;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
  MEMORY[0x1EEE9AC00](v135);
  v134 = &v120 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v133 = &v120 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMR);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v144 = &v120 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v167 = &v120 - v43;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v162);
  v129 = &v120 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v47 = (&v120 - v46);
  MEMORY[0x1EEE9AC00](v48);
  v50 = (&v120 - v49);
  MEMORY[0x1EEE9AC00](v51);
  v170 = (&v120 - v52);
  v168 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v168);
  v130 = &v120 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v136 = &v120 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v169 = &v120 - v57;
  v58 = type metadata accessor for Shape(0);
  MEMORY[0x1EEE9AC00](v58);
  v148 = &v120 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v120 - v61;
  MEMORY[0x1EEE9AC00](v63);
  v147 = &v120 - v64;
  v65 = *a4;
  x = 0.0;
  y = 0.0;
  v68 = 0.0;
  v69 = 0.0;
  if ((*(a3 + 32) & 1) == 0)
  {
    x = v17;
    y = v18;
    v68 = v19;
    v69 = v20;
  }

  v174.origin.x = x;
  v174.origin.y = y;
  v174.size.width = v68;
  v174.size.height = v69;
  CGRectIsEmpty(v174);
  v166 = v50;
  if (v65 != 9)
  {
    LOBYTE(v171) = v65;
    v175 = CGRect.position(in:anchor:)(v128, &v171);
    x = v175.origin.x;
    y = v175.origin.y;
  }

  if (v161)
  {
    v70 = x;
  }

  else
  {
    v70 = x + a5;
  }

  if (v161)
  {
    v71 = y;
  }

  else
  {
    v71 = y + v160;
  }

  swift_storeEnumTagMultiPayload();
  v72 = type metadata accessor for Color(0);
  v73 = *(v72 + 20);
  v74 = type metadata accessor for UnknownValueProperties();
  v75 = v170;
  (*(*(v74 - 8) + 56))(v170 + v73, 1, 1, v74);
  if (one-time initialization token for extendedSRGBColorSpace != -1)
  {
    swift_once();
  }

  result = CGColorCreate(static Color.extendedSRGBColorSpace, dbl_1F4F51320);
  if (!result)
  {
    __break(1u);
    goto LABEL_24;
  }

  v77 = result;
  v161 = v58;
  CGColorRef.calculateMinimumHeadroom.getter();
  result = CGColorCreateWithContentHeadroom();
  if (!result)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  v78 = result;
  v79 = v47;
  *&v128.size.width = v24;
  *&v128.size.height = v23;
  v160 = a8;

  v80 = v70 + -0.5;
  v81 = v71 + -0.5;
  *v75 = v78;
  v82 = *(*(v72 - 8) + 56);
  v82(v75, 0, 1, v72);
  v82(v166, 1, 1, v72);
  if (one-time initialization token for defaultTextBoxAttributes != -1)
  {
    swift_once();
  }

  v83 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v84 = MEMORY[0x1DA6CCED0](v131, v132);
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, &protocol conformance descriptor for NSAttributedStringKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  [v83 initWithString:v84 attributes:isa];

  MEMORY[0x1EEE9AC00](v86);
  *(&v120 - 2) = 0x3FF0000000000000;
  v123 = lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
  v87 = v167;
  CRAttributedString.init(_:transformAttributes:)();
  (*(v163 + 56))(v87, 0, 1, v164);
  type metadata accessor for CGRect(0);
  v131 = v88;
  *&v128.origin.y = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
  v171 = 0u;
  v172 = 0u;
  CRRegister.init(wrappedValue:)();
  v89 = v161;
  *&v171 = 0;
  v122 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  CRRegister.init(_:)();
  v132 = v89[6];
  v82(v47, 1, 1, v72);
  v90 = v129;
  outlined init with copy of Date?(v79, v129, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  v127 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v79, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  *&v128.origin.x = v89[7];
  v82(v79, 1, 1, v72);
  outlined init with copy of Date?(v79, v90, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v79, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  v129 = v89[8];
  *&v171 = 0x4014000000000000;
  CRRegister.init(wrappedValue:)();
  v126 = v89[9];
  v91 = v136;
  swift_storeEnumTagMultiPayload();
  v124 = type metadata accessor for ShapeType;
  _s8PaperKit9ShapeTypeOWOcTm_0(v91, v130, type metadata accessor for ShapeType);
  v125 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, type metadata accessor for ShapeType, &protocol conformance descriptor for ShapeType);
  CRRegister.init(wrappedValue:)();
  outlined destroy of ShapeType(v91, type metadata accessor for ShapeType);
  *&v171 = 0x3FF0000000000000;
  CRRegister.init(wrappedValue:)();
  *&v171 = 0;
  BYTE8(v171) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMR);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMR, MEMORY[0x1E69950E8]);
  CRRegister.init(wrappedValue:)();
  *&v171 = 0;
  BYTE8(v171) = 0;
  CRRegister.init(wrappedValue:)();
  v130 = v89[13];
  CRAttributedString.init(_:)();
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMR);
  v93 = v133;
  (*(*(v92 - 8) + 56))(v133, 1, 1, v92);
  outlined init with copy of Date?(v93, v134, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
  lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v93, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
  v94 = v89[15];
  *&v171 = 0;
  v95 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
  v135 = v94;
  v134 = v95;
  CRRegister.init(wrappedValue:)();
  *&v171 = 0;
  lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
  CRRegister.init(wrappedValue:)();
  v96 = type metadata accessor for StrokeStyle(0);
  v97 = v137;
  (*(*(v96 - 8) + 56))(v137, 1, 1, v96);
  outlined init with copy of Date?(v97, v138, &_s8PaperKit11StrokeStyleOSgMd, &_s8PaperKit11StrokeStyleOSgMR);
  lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v97, &_s8PaperKit11StrokeStyleOSgMd, &_s8PaperKit11StrokeStyleOSgMR);
  v98 = type metadata accessor for Shadow(0);
  v99 = v140;
  (*(*(v98 - 8) + 56))(v140, 1, 1, v98);
  outlined init with copy of Date?(v99, v141, &_s8PaperKit6ShadowVSgMd, &_s8PaperKit6ShadowVSgMR);
  lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v99, &_s8PaperKit6ShadowVSgMd, &_s8PaperKit6ShadowVSgMR);
  v172 = 0u;
  v173 = 0u;
  v171 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd, &_s8PaperKit18ShapeAuxiliaryInfoVSgMR);
  lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  UnknownProperties.init()();
  *&v171 = v80;
  *(&v171 + 1) = v81;
  __asm { FMOV            V0.2D, #1.0 }

  v172 = _Q0;
  v105 = v143;
  CRRegister.init(_:)();
  (*(v145 + 40))(v62, v105, v146);
  _s8PaperKit9ShapeTypeOWOcTm_0(v169, v91, v124);
  v106 = v149;
  CRRegister.init(_:)();
  (*(v150 + 40))(&v62[v126], v106, v151);
  *&v171 = 0x4014000000000000;
  v107 = v152;
  CRRegister.init(_:)();
  (*(v153 + 40))(&v62[v129], v107, v165);
  outlined init with copy of Date?(v170, v79, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  v108 = v154;
  CRRegister.init(_:)();
  v109 = *(v155 + 40);
  v110 = v156;
  v109(&v62[*&v128.origin.x], v108, v156);
  outlined init with copy of Date?(v166, v79, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  CRRegister.init(_:)();
  v109(&v62[v132], v108, v110);
  v111 = v163;
  v112 = v164;
  v113 = v144;
  outlined init with copy of Date?(v167, v144, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMR);
  if ((*(v111 + 48))(v113, 1, v112) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v113, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMR);
  }

  else
  {
    v114 = v121;
    (*(v111 + 32))(v121, v113, v112);
    (*(v111 + 40))(&v62[v130], v114, v112);
  }

  v115 = v160;
  width = v128.size.width;
  *&v171 = 3;
  v117 = v157;
  CRRegister.init(_:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v167, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v166, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v170, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  outlined destroy of ShapeType(v169, type metadata accessor for ShapeType);
  (*(v158 + 40))(&v62[v135], v117, COERCE_CGFLOAT(*&width));
  v118 = v147;
  outlined init with take of Shape(v62, v147);
  CRRegister.value.getter();
  if (vabdd_f64(*&v171, v159) > 0.01)
  {
    *&v171 = v159;
    CRRegister.value.setter();
  }

  _s8PaperKit9ShapeTypeOWOcTm_0(v118, v148, type metadata accessor for Shape);
  static CRKeyPath.unique.getter();
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type Shape and conformance Shape, type metadata accessor for Shape, &protocol conformance descriptor for Shape);
  Capsule.init(_:id:)();
  outlined destroy of ShapeType(v118, type metadata accessor for Shape);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGMR);
  return (*(*(v119 - 8) + 56))(COERCE_DOUBLE(*&v115), 0, 1, v119);
}

id protocol witness for static Layout.canHandle(itemProvider:) in conformance TextBoxLayout(void *a1)
{
  v2 = type metadata accessor for UTType();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UTType.utf8PlainText.getter();
  v6 = UTType.identifier.getter();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v9 = MEMORY[0x1DA6CCED0](v6, v8);

  v10 = [a1 hasItemConformingToTypeIdentifier_];

  return v10;
}

uint64_t outlined init with take of Shape(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Shape(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s8PaperKit9ShapeTypeOWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ShapeType(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for TextBoxLayout(uint64_t a1)
{
  result = type metadata singleton initialization cache for TextBoxLayout;
  if (!type metadata singleton initialization cache for TextBoxLayout)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for TextBoxLayout(uint64_t a1)
{
  result = type metadata accessor for CRKeyPath();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *specialized TextBoxView.init(canvasElementView:delegate:shouldAddTextboxView:analytics_inputSource:analytics_documentType:)(char *a1, void *a2, char a3, int a4, int a5, _BYTE *a6)
{
  v80 = a5;
  v79 = a4;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  v76 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v75 = &v73 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMd, &_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMR);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v73 - v13);
  swift_unknownObjectWeakInit();
  v15 = &a6[direct field offset for TextBoxView.delegate];
  *&a6[direct field offset for TextBoxView.delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a6[direct field offset for TextBoxView.currentUndoAction] = 0;
  *&a6[direct field offset for TextBoxView.scribbleDebugView] = 0;
  v16 = direct field offset for TextBoxView.shouldAddTextboxView;
  a6[direct field offset for TextBoxView.shouldAddTextboxView] = 0;
  a6[direct field offset for TextBoxView.hideText] = 0;
  swift_unknownObjectWeakInit();
  *&a6[direct field offset for TextBoxView.cancellables] = MEMORY[0x1E69E7CD0];
  swift_unknownObjectWeakAssign();
  *(v15 + 1) = &protocol witness table for AnyCanvasElementView;
  v78 = a2;
  swift_unknownObjectWeakAssign();
  a6[v16] = a3;
  v17 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x3F0);
  v81 = a1;
  swift_beginAccess();
  v86 = *(v12 + 16);
  v87 = v12 + 16;
  v18 = v17;
  v85 = v17;
  v86(v14, &a1[v17], v11);
  v19 = type metadata accessor for TextBox(0);
  v94 = v19;
  v84 = v19;
  v20 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type TextBox and conformance TextBox, type metadata accessor for TextBox, &protocol conformance descriptor for TextBox);
  v95 = v20;
  v96 = &protocol witness table for TextBox;
  v82 = v20;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v21 = *(v12 + 8);
  v21(v14, v11);
  v83 = v21;
  v22 = [objc_allocWithZone(MEMORY[0x1E69DB800]) initWithSize_];
  v74 = direct field offset for TextBoxView.textContainer;
  *&a6[direct field offset for TextBoxView.textContainer] = v22;
  v23 = [objc_allocWithZone(MEMORY[0x1E69DB828]) init];
  v73 = direct field offset for TextBoxView.textLayoutManager;
  *&a6[direct field offset for TextBoxView.textLayoutManager] = v23;
  v86(v14, &v81[v18], v11);
  v91 = v19;
  v92 = v20;
  v93 = &protocol witness table for TextBox;
  swift_getKeyPath();
  v24 = v75;
  Capsule.subscript.getter();

  v21(v14, v11);
  v25 = v12 + 8;
  v26 = type metadata accessor for CRTextStorage(0);
  v27 = objc_allocWithZone(v26);
  v27[OBJC_IVAR____TtC8PaperKit13CRTextStorage_darkMode] = 0;
  v27[OBJC_IVAR____TtC8PaperKit13CRTextStorage_isFixingAttributes] = 0;
  v28 = v76;
  v29 = v77;
  v76[2](&v27[OBJC_IVAR____TtC8PaperKit13CRTextStorage_mergeableString], v24, v77);
  v30 = specialized static CRTextStorage.viewAttributedString(from:darkMode:)(v24, 0);
  *&v27[OBJC_IVAR____TtC8PaperKit13CRTextStorage_viewAttributedString] = v30;
  v31 = v30;
  [v31 fixAttributesInRange_];

  v99.receiver = v27;
  v99.super_class = v26;
  v32 = objc_msgSendSuper2(&v99, sel_init);
  (v28[1])(v24, v29);
  v33 = direct field offset for TextBoxView.textStorage;
  *&a6[direct field offset for TextBoxView.textStorage] = v32;
  v34 = v73;
  [*&a6[v73] setTextContainer_];
  v35 = [objc_allocWithZone(MEMORY[0x1E69DB808]) init];
  v36 = direct field offset for TextBoxView.textContentStorage;
  *&a6[direct field offset for TextBoxView.textContentStorage] = v35;
  [v35 setTextStorage_];
  [*&a6[v36] addTextLayoutManager_];
  v37 = v81;
  v86(v14, &v81[v85], v11);
  v88 = v84;
  v89 = v82;
  v90 = &protocol witness table for TextBox;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v76 = v14;
  v38 = v14;
  v39 = v11;
  v77 = v25;
  v83(v38, v11);
  v40 = v101;
  v41 = v102;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11TextBoxViewCyAA0cD0VGMd, &_s8PaperKit11TextBoxViewCyAA0cD0VGMR);
  v98.receiver = a6;
  v98.super_class = v42;
  v43 = objc_msgSendSuper2(&v98, sel_initWithFrame_, 0.0, 0.0, v40, v41);
  v44 = objc_opt_self();
  v45 = v43;
  v46 = [v44 clearColor];
  [v45 setBackgroundColor_];

  v47 = [v45 layer];
  [v47 setAnchorPoint_];

  v48 = objc_opt_self();
  v49 = [v48 defaultCenter];
  [v49 addObserver:v45 selector:sel_keyboardWillShowNotification_ name:*MEMORY[0x1E69DE080] object:0];

  v50 = [v48 defaultCenter];
  [v50 addObserver:v45 selector:sel_keyboardWillHideNotification_ name:*MEMORY[0x1E69DE078] object:0];

  v51 = [v48 defaultCenter];
  [v51 addObserver:v45 selector:sel_breakUndoCoalescing_ name:*MEMORY[0x1E696AA20] object:0];

  v52 = [v48 defaultCenter];
  [v52 addObserver:v45 selector:sel_breakUndoCoalescing_ name:*MEMORY[0x1E696AA48] object:0];

  if ((*((*MEMORY[0x1E69E7D40] & *v37) + 0x120))())
  {
    v53 = v37;
    [v53 setIsAccessibilityElement_];
    if (one-time initialization token for paperKitBundle != -1)
    {
      swift_once();
    }

    v103._object = 0x80000001D4082230;
    v54._countAndFlagsBits = 0x786F422074786554;
    v55.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v55.value._object = 0xEB00000000656C62;
    v54._object = 0xE800000000000000;
    v56._countAndFlagsBits = 0;
    v56._object = 0xE000000000000000;
    v103._countAndFlagsBits = 0xD000000000000023;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v54, v55, paperKitBundle, v56, v103)._countAndFlagsBits;
    v58 = MEMORY[0x1DA6CCED0](countAndFlagsBits);

    [v53 setAccessibilityLabel_];
  }

  v59 = *&v45[direct field offset for TextBoxView.textStorage];
  v60 = v37;
  v61 = [v59 string];
  if (!v61)
  {
    v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v61 = MEMORY[0x1DA6CCED0](v62);
  }

  [v60 setAccessibilityValue_];

  v63 = OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_analytics;
  v64 = *&v45[OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_analytics];
  v65 = v76;
  v66 = (v86)(v76, v37 + v85, v39);
  MEMORY[0x1EEE9AC00](v66);
  v67 = v82;
  *(&v73 - 4) = v84;
  *(&v73 - 3) = v67;
  v103._object = &protocol witness table for TextBox;
  swift_getKeyPath();
  v68 = v45;

  Capsule.subscript.getter();

  v83(v65, v39);
  v97 = v100;
  v69 = specialized FormContentType.uiTextContentType.getter();

  v70 = *(v64 + 24);
  *(v64 + 24) = v69;

  v71 = *&v45[v63];
  *(v71 + 17) = v79;

  *(v71 + 16) = v80;

  return v68;
}

{
  v80 = a5;
  v79 = a4;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  v76 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v75 = &v72 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGMR);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v72 - v13;
  swift_unknownObjectWeakInit();
  v15 = &a6[direct field offset for TextBoxView.delegate];
  *&a6[direct field offset for TextBoxView.delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a6[direct field offset for TextBoxView.currentUndoAction] = 0;
  *&a6[direct field offset for TextBoxView.scribbleDebugView] = 0;
  v16 = direct field offset for TextBoxView.shouldAddTextboxView;
  a6[direct field offset for TextBoxView.shouldAddTextboxView] = 0;
  a6[direct field offset for TextBoxView.hideText] = 0;
  swift_unknownObjectWeakInit();
  *&a6[direct field offset for TextBoxView.cancellables] = MEMORY[0x1E69E7CD0];
  swift_unknownObjectWeakAssign();
  *(v15 + 1) = &protocol witness table for AnyCanvasElementView;
  v78 = a2;
  swift_unknownObjectWeakAssign();
  a6[v16] = a3;
  v86 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x3F0);
  v17 = v86;
  swift_beginAccess();
  v84 = *(v12 + 16);
  v74 = a1;
  v84(v14, &a1[v17], v11);
  v85 = v12 + 16;
  v18 = type metadata accessor for Shape(0);
  v93 = v18;
  v82 = v18;
  v19 = lazy protocol witness table accessor for type Signature and conformance Signature(&lazy protocol witness table cache variable for type Shape and conformance Shape, type metadata accessor for Shape, &protocol conformance descriptor for Shape);
  v94 = v19;
  v95 = &protocol witness table for Shape;
  v81 = v19;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v83 = *(v12 + 8);
  v83(v14, v11);
  v20 = [objc_allocWithZone(MEMORY[0x1E69DB800]) initWithSize_];
  v73 = direct field offset for TextBoxView.textContainer;
  *&a6[direct field offset for TextBoxView.textContainer] = v20;
  v21 = [objc_allocWithZone(MEMORY[0x1E69DB828]) init];
  v72 = direct field offset for TextBoxView.textLayoutManager;
  *&a6[direct field offset for TextBoxView.textLayoutManager] = v21;
  v84(v14, &a1[v86], v11);
  v90 = v18;
  v91 = v19;
  v92 = &protocol witness table for Shape;
  swift_getKeyPath();
  v22 = v75;
  Capsule.subscript.getter();

  v83(v14, v11);
  v23 = type metadata accessor for CRTextStorage(0);
  v24 = objc_allocWithZone(v23);
  v24[OBJC_IVAR____TtC8PaperKit13CRTextStorage_darkMode] = 0;
  v24[OBJC_IVAR____TtC8PaperKit13CRTextStorage_isFixingAttributes] = 0;
  v25 = v76;
  v26 = v77;
  (*(v76 + 16))(&v24[OBJC_IVAR____TtC8PaperKit13CRTextStorage_mergeableString], v22, v77);
  v27 = specialized static CRTextStorage.viewAttributedString(from:darkMode:)(v22, 0);
  *&v24[OBJC_IVAR____TtC8PaperKit13CRTextStorage_viewAttributedString] = v27;
  v28 = v27;
  [v28 fixAttributesInRange_];

  v98.receiver = v24;
  v98.super_class = v23;
  v29 = objc_msgSendSuper2(&v98, sel_init);
  (*(v25 + 8))(v22, v26);
  v30 = direct field offset for TextBoxView.textStorage;
  *&a6[direct field offset for TextBoxView.textStorage] = v29;
  v31 = v72;
  [*&a6[v72] setTextContainer_];
  v32 = [objc_allocWithZone(MEMORY[0x1E69DB808]) init];
  v33 = direct field offset for TextBoxView.textContentStorage;
  *&a6[direct field offset for TextBoxView.textContentStorage] = v32;
  [v32 setTextStorage_];
  [*&a6[v33] addTextLayoutManager_];
  v34 = v74;
  v84(v14, &v74[v86], v11);
  v87 = v82;
  v88 = v81;
  v89 = &protocol witness table for Shape;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v83(v14, v11);
  v35 = v100;
  v36 = v101;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11TextBoxViewCyAA5ShapeVGMd, &_s8PaperKit11TextBoxViewCyAA5ShapeVGMR);
  v97.receiver = a6;
  v97.super_class = v37;
  v38 = objc_msgSendSuper2(&v97, sel_initWithFrame_, 0.0, 0.0, v35, v36);
  v39 = objc_opt_self();
  v40 = v38;
  v41 = [v39 clearColor];
  [v40 setBackgroundColor_];

  v42 = [v40 layer];
  [v42 setAnchorPoint_];

  v43 = objc_opt_self();
  v44 = [v43 defaultCenter];
  [v44 addObserver:v40 selector:sel_keyboardWillShowNotification_ name:*MEMORY[0x1E69DE080] object:0];

  v45 = [v43 defaultCenter];
  [v45 addObserver:v40 selector:sel_keyboardWillHideNotification_ name:*MEMORY[0x1E69DE078] object:0];

  v46 = [v43 defaultCenter];
  [v46 addObserver:v40 selector:sel_breakUndoCoalescing_ name:*MEMORY[0x1E696AA20] object:0];

  v47 = v34;
  v48 = [v43 defaultCenter];
  [v48 addObserver:v40 selector:sel_breakUndoCoalescing_ name:*MEMORY[0x1E696AA48] object:0];

  v49 = &v34[v86];
  v50 = v84;
  v84(v14, v49, v11);
  LOBYTE(v48) = specialized Capsule<>.isTextBox.getter();
  v77 = v12 + 8;
  v51 = v83;
  v83(v14, v11);
  v52 = v51;
  if (v48)
  {
    v53 = v47;
    [v53 setIsAccessibilityElement_];
    if (one-time initialization token for paperKitBundle != -1)
    {
      swift_once();
    }

    v102._object = 0x80000001D4082230;
    v54._countAndFlagsBits = 0x786F422074786554;
    v55.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v55.value._object = 0xEB00000000656C62;
    v54._object = 0xE800000000000000;
    v56._countAndFlagsBits = 0;
    v56._object = 0xE000000000000000;
    v102._countAndFlagsBits = 0xD000000000000023;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v54, v55, paperKitBundle, v56, v102)._countAndFlagsBits;
    v58 = MEMORY[0x1DA6CCED0](countAndFlagsBits);

    [v53 setAccessibilityLabel_];
  }

  v59 = *&v40[direct field offset for TextBoxView.textStorage];
  v60 = v47;
  v61 = [v59 string];
  if (!v61)
  {
    v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v61 = MEMORY[0x1DA6CCED0](v62);
  }

  [v60 setAccessibilityValue_];

  v63 = OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_analytics;
  v64 = *&v40[OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_analytics];
  v65 = v50(v14, &v47[v86], v11);
  MEMORY[0x1EEE9AC00](v65);
  v66 = v81;
  *(&v72 - 4) = v82;
  *(&v72 - 3) = v66;
  v102._object = &protocol witness table for Shape;
  swift_getKeyPath();
  v67 = v40;

  Capsule.subscript.getter();

  v52(v14, v11);
  v96 = v99;
  v68 = specialized FormContentType.uiTextContentType.getter();

  v69 = *(v64 + 24);
  *(v64 + 24) = v68;

  v70 = *&v40[v63];
  *(v70 + 17) = v79;

  *(v70 + 16) = v80;

  return v67;
}

void ValueStepper.init(minValue:maxValue:unit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v9 = MEMORY[0x1DA6CCED0](0x73756E696DLL, 0xE500000000000000);
  v10 = objc_opt_self();
  v11 = [v10 systemImageNamed_];

  if (!v11)
  {
    __break(1u);
    goto LABEL_8;
  }

  v12 = OBJC_IVAR____TtC8PaperKit12ValueStepper_decreaseButton;
  v13 = type metadata accessor for StepperButton();
  v14 = objc_allocWithZone(v13);
  *&v5[v12] = StepperButton.init(image:)(v11);
  v15 = MEMORY[0x1DA6CCED0](1937075312, 0xE400000000000000);
  v16 = [v10 systemImageNamed_];

  if (!v16)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v17 = OBJC_IVAR____TtC8PaperKit12ValueStepper_increaseButton;
  v18 = objc_allocWithZone(v13);
  *&v5[v17] = StepperButton.init(image:)(v16);
  v19 = OBJC_IVAR____TtC8PaperKit12ValueStepper_valueLabel;
  *&v5[v19] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v20 = OBJC_IVAR____TtC8PaperKit12ValueStepper_contentStackView;
  *&v5[v20] = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  *&v5[OBJC_IVAR____TtC8PaperKit12ValueStepper_interItemSpacing] = 0x4024000000000000;
  *&v5[OBJC_IVAR____TtC8PaperKit12ValueStepper_cornerRadius] = 0x4020000000000000;
  *&v5[OBJC_IVAR____TtC8PaperKit12ValueStepper_valueLabelWidth] = 0x405A000000000000;
  *&v5[OBJC_IVAR____TtC8PaperKit12ValueStepper_valueLabelBorderWidth] = 0x4008000000000000;
  v21 = &v5[OBJC_IVAR____TtC8PaperKit12ValueStepper____lazy_storage___currentValue];
  *v21 = 0;
  v21[8] = 1;
  *&v5[OBJC_IVAR____TtC8PaperKit12ValueStepper_minValue] = a1;
  *&v5[OBJC_IVAR____TtC8PaperKit12ValueStepper_maxValue] = a2;
  v22 = &v5[OBJC_IVAR____TtC8PaperKit12ValueStepper_unit];
  *v22 = a3;
  *(v22 + 1) = a4;
  v110.receiver = v5;
  v110.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v110, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v24 = OBJC_IVAR____TtC8PaperKit12ValueStepper_contentStackView;
  v25 = *&v23[OBJC_IVAR____TtC8PaperKit12ValueStepper_contentStackView];
  v26 = v23;
  [v25 setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v23[v24] setAxis_];
  [*&v23[v24] setAlignment_];
  [*&v23[v24] setDistribution_];
  [*&v23[v24] setSpacing_];
  v27 = *&v23[v24];
  v28 = v26;
  [v28 addSubview_];
  v29 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1D405B630;
  v31 = [*&v23[v24] topAnchor];
  v32 = [v28 topAnchor];
  v33 = [v31 constraintEqualToAnchor_];

  *(v30 + 32) = v33;
  v34 = [*&v23[v24] leadingAnchor];
  v35 = [v28 leadingAnchor];

  v36 = [v34 constraintEqualToAnchor_];
  *(v30 + 40) = v36;
  v37 = [*&v23[v24] bottomAnchor];
  v38 = [v28 bottomAnchor];

  v39 = [v37 constraintEqualToAnchor_];
  *(v30 + 48) = v39;
  v40 = [*&v23[v24] trailingAnchor];
  v41 = [v28 trailingAnchor];

  v42 = [v40 constraintEqualToAnchor_];
  *(v30 + 56) = v42;
  type metadata accessor for NSLayoutConstraint();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v106 = v29;
  [v29 activateConstraints_];

  v44 = OBJC_IVAR____TtC8PaperKit12ValueStepper_decreaseButton;
  v45 = *&v28[OBJC_IVAR____TtC8PaperKit12ValueStepper_decreaseButton];
  v46 = MEMORY[0x1DA6CCED0](0xD00000000000001ALL, 0x80000001D4082350);
  [v45 setAccessibilityIdentifier_];

  v47 = one-time initialization token for paperKitBundle;
  v48 = *&v28[v44];
  if (v47 != -1)
  {
    swift_once();
  }

  v49.value._object = 0xEB00000000656C62;
  v49.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v111._object = 0x80000001D4082370;
  v111._countAndFlagsBits = 0xD000000000000039;
  v50._countAndFlagsBits = 0x73756E694DLL;
  v50._object = 0xE500000000000000;
  bundle = paperKitBundle.super.isa;
  v51._countAndFlagsBits = 0;
  v51._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v50, v49, paperKitBundle, v51, v111)._countAndFlagsBits;
  v53 = MEMORY[0x1DA6CCED0](countAndFlagsBits);

  [v48 setAccessibilityLabel_];

  v103 = *MEMORY[0x1E69DD9B8];
  [*&v28[v44] setAccessibilityTraits_];
  [*&v28[v44] setIsAccessibilityElement_];
  v54 = [*&v28[v44] layer];
  [v54 setCornerRadius_];

  v55 = [*&v28[v44] layer];
  v56 = *MEMORY[0x1E69796E8];
  [v55 setCornerCurve_];

  [*&v23[v24] addArrangedSubview_];
  v57 = OBJC_IVAR____TtC8PaperKit12ValueStepper_valueLabel;
  v58 = *&v28[OBJC_IVAR____TtC8PaperKit12ValueStepper_valueLabel];
  v59 = objc_opt_self();
  v60 = v58;
  v61 = [v59 labelColor];
  [v60 setTextColor_];

  v62 = *&v28[v57];
  v63 = *MEMORY[0x1E69DDCF8];
  v64 = *MEMORY[0x1E69DB978];
  v65 = *MEMORY[0x1E69DDC78];
  v66 = objc_opt_self();
  v67 = v62;
  v68 = [v66 traitCollectionWithPreferredContentSizeCategory_];
  v69 = [objc_opt_self() _preferredFontForTextStyle_weight_];
  if (v69)
  {
    v70 = v69;
    v71 = [v69 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection_];

    [v67 setFont_];
    v72 = *&v28[v57];
    v73 = MEMORY[0x1DA6CCED0](0xD000000000000016, 0x80000001D40823B0);
    [v72 setAccessibilityIdentifier_];

    [*&v28[v57] setAccessibilityTraits_];
    [*&v28[v57] setTextAlignment_];
    v74 = [*&v28[v57] layer];
    [v74 setCornerRadius_];

    v75 = [*&v28[v57] &selRef_influxRecipe];
    [v75 setCornerCurve_];

    v76 = [*&v28[v57] &selRef_influxRecipe];
    [v76 setBorderWidth_];

    [*&v28[v57] setClipsToBounds_];
    [*&v23[v24] addArrangedSubview_];
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_1D405B640;
    v78 = [*&v28[v57] widthAnchor];
    v79 = [v78 constraintEqualToConstant_];

    *(v77 + 32) = v79;
    v80 = [*&v28[v57] centerXAnchor];
    v81 = [v28 centerXAnchor];
    v82 = [v80 constraintEqualToAnchor_];

    *(v77 + 40) = v82;
    v83 = Array._bridgeToObjectiveC()().super.isa;

    [v106 activateConstraints_];

    v84 = OBJC_IVAR____TtC8PaperKit12ValueStepper_increaseButton;
    v85 = *&v28[OBJC_IVAR____TtC8PaperKit12ValueStepper_increaseButton];
    v86 = MEMORY[0x1DA6CCED0](0xD00000000000001ALL, 0x80000001D40823D0);
    [v85 setAccessibilityIdentifier_];

    v87 = *&v28[v84];
    v112._object = 0x80000001D40823F0;
    v112._countAndFlagsBits = 0xD000000000000039;
    v88._countAndFlagsBits = 1937075280;
    v88._object = 0xE400000000000000;
    v89.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v89.value._object = 0xEB00000000656C62;
    v90._countAndFlagsBits = 0;
    v90._object = 0xE000000000000000;
    v91 = NSLocalizedString(_:tableName:bundle:value:comment:)(v88, v89, bundle, v90, v112)._countAndFlagsBits;
    v92 = MEMORY[0x1DA6CCED0](v91);

    [v87 setAccessibilityLabel_];

    [*&v28[v84] setAccessibilityTraits_];
    [*&v28[v84] setIsAccessibilityElement_];
    v93 = [*&v28[v84] layer];
    [v93 setCornerRadius_];

    v94 = [*&v28[v84] layer];
    [v94 setCornerCurve_];

    [*&v23[v24] addArrangedSubview_];
    v95 = *&v28[v44];
    v109 = ObjectType;
    v108[0] = v28;
    v96 = v28;
    v97 = v95;
    StepperButton.addTarget(_:action:for:)(v108, sel_didTapLeftButton, 64);

    outlined destroy of Any?(v108);
    v98 = *&v28[v84];
    v109 = ObjectType;
    v108[0] = v96;
    v99 = v98;
    StepperButton.addTarget(_:action:for:)(v108, sel_didTapRightButton, 64);

    outlined destroy of Any?(v108);
    ValueStepper.updateUI()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd, &_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMR);
    v100 = swift_allocObject();
    *(v100 + 16) = xmmword_1D4058CF0;
    v101 = type metadata accessor for UITraitUserInterfaceStyle();
    v102 = MEMORY[0x1E69DC0F8];
    *(v100 + 32) = v101;
    *(v100 + 40) = v102;
    MEMORY[0x1DA6CDBA0](v100, sel_updateUI);

    swift_unknownObjectRelease();

    return;
  }

LABEL_9:
  __break(1u);
}

void ValueStepper.updateUI()()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC8PaperKit12ValueStepper_valueLabel);
  v15 = ValueStepper.currentValue.getter();
  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  v17 = v3;
  MEMORY[0x1DA6CD010](32, 0xE100000000000000);
  MEMORY[0x1DA6CD010](*(v1 + OBJC_IVAR____TtC8PaperKit12ValueStepper_unit), *(v1 + OBJC_IVAR____TtC8PaperKit12ValueStepper_unit + 8));
  v4 = MEMORY[0x1DA6CCED0](v16, v17);

  [v2 setText_];

  v5 = *(v0 + OBJC_IVAR____TtC8PaperKit12ValueStepper____lazy_storage___currentValue);
  v6 = v5 < *(v0 + OBJC_IVAR____TtC8PaperKit12ValueStepper_maxValue);
  v7 = *(v0 + OBJC_IVAR____TtC8PaperKit12ValueStepper_minValue) < v5;
  v8 = *(v0 + OBJC_IVAR____TtC8PaperKit12ValueStepper_increaseButton);
  v9 = type metadata accessor for StepperButton();
  v14.receiver = v8;
  v14.super_class = v9;
  objc_msgSendSuper2(&v14, sel_setEnabled_, v6);
  StepperButton.updateUI()();
  v13.receiver = *(v1 + OBJC_IVAR____TtC8PaperKit12ValueStepper_decreaseButton);
  v13.super_class = v9;
  objc_msgSendSuper2(&v13, sel_setEnabled_, v7);
  StepperButton.updateUI()();
  v10 = [v2 layer];
  v11 = [objc_opt_self() quaternarySystemFillColor];
  v12 = [v11 CGColor];

  [v10 setBorderColor_];
}

char *ValueStepper.didTapLeftButton()()
{
  result = ValueStepper.currentValue.getter();
  v2 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    if (*&v0[OBJC_IVAR____TtC8PaperKit12ValueStepper_minValue] > v2)
    {
      v2 = *&v0[OBJC_IVAR____TtC8PaperKit12ValueStepper_minValue];
    }

    if (v2 >= *&v0[OBJC_IVAR____TtC8PaperKit12ValueStepper_maxValue])
    {
      v2 = *&v0[OBJC_IVAR____TtC8PaperKit12ValueStepper_maxValue];
    }

    v3 = &v0[OBJC_IVAR____TtC8PaperKit12ValueStepper____lazy_storage___currentValue];
    *v3 = v2;
    v3[8] = 0;
    ValueStepper.updateUI()();

    return [v0 sendActionsForControlEvents_];
  }

  return result;
}

uint64_t ValueStepper.currentValue.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC8PaperKit12ValueStepper____lazy_storage___currentValue);
  if (*(v0 + OBJC_IVAR____TtC8PaperKit12ValueStepper____lazy_storage___currentValue + 8) != 1)
  {
    return *v1;
  }

  result = *(v0 + OBJC_IVAR____TtC8PaperKit12ValueStepper_minValue);
  *v1 = result;
  v1[8] = 0;
  return result;
}

char *ValueStepper.didTapRightButton()()
{
  result = ValueStepper.currentValue.getter();
  v2 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    if (*&v0[OBJC_IVAR____TtC8PaperKit12ValueStepper_minValue] > v2)
    {
      v2 = *&v0[OBJC_IVAR____TtC8PaperKit12ValueStepper_minValue];
    }

    if (v2 >= *&v0[OBJC_IVAR____TtC8PaperKit12ValueStepper_maxValue])
    {
      v2 = *&v0[OBJC_IVAR____TtC8PaperKit12ValueStepper_maxValue];
    }

    v3 = &v0[OBJC_IVAR____TtC8PaperKit12ValueStepper____lazy_storage___currentValue];
    *v3 = v2;
    v3[8] = 0;
    ValueStepper.updateUI()();

    return [v0 sendActionsForControlEvents_];
  }

  return result;
}

id ValueStepper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t type metadata accessor for NSLayoutConstraint()
{
  result = lazy cache variable for type metadata for NSLayoutConstraint;
  if (!lazy cache variable for type metadata for NSLayoutConstraint)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSLayoutConstraint);
  }

  return result;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void specialized ValueStepper.init(coder:)()
{
  v1 = v0;
  v2 = MEMORY[0x1DA6CCED0](0x73756E696DLL, 0xE500000000000000);
  v3 = objc_opt_self();
  v4 = [v3 systemImageNamed_];

  if (!v4)
  {
    __break(1u);
  }

  v5 = OBJC_IVAR____TtC8PaperKit12ValueStepper_decreaseButton;
  v6 = type metadata accessor for StepperButton();
  v7 = objc_allocWithZone(v6);
  *(v1 + v5) = StepperButton.init(image:)(v4);
  v8 = MEMORY[0x1DA6CCED0](1937075312, 0xE400000000000000);
  v9 = [v3 systemImageNamed_];

  if (!v9)
  {
    __break(1u);
  }

  v10 = OBJC_IVAR____TtC8PaperKit12ValueStepper_increaseButton;
  v11 = objc_allocWithZone(v6);
  *(v1 + v10) = StepperButton.init(image:)(v9);
  v12 = OBJC_IVAR____TtC8PaperKit12ValueStepper_valueLabel;
  *(v1 + v12) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v13 = OBJC_IVAR____TtC8PaperKit12ValueStepper_contentStackView;
  *(v1 + v13) = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  *(v1 + OBJC_IVAR____TtC8PaperKit12ValueStepper_interItemSpacing) = 0x4024000000000000;
  *(v1 + OBJC_IVAR____TtC8PaperKit12ValueStepper_cornerRadius) = 0x4020000000000000;
  *(v1 + OBJC_IVAR____TtC8PaperKit12ValueStepper_valueLabelWidth) = 0x405A000000000000;
  *(v1 + OBJC_IVAR____TtC8PaperKit12ValueStepper_valueLabelBorderWidth) = 0x4008000000000000;
  v14 = v1 + OBJC_IVAR____TtC8PaperKit12ValueStepper____lazy_storage___currentValue;
  *v14 = 0;
  *(v14 + 8) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void type metadata completion function for ToggleButton(uint64_t a1)
{
  type metadata accessor for Image?();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UIRectCorner(319);
    if (v2 <= 0x3F)
    {
      v3 = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        v5 = v3;
        type metadata accessor for Optional();
        if (v8 <= 0x3F)
        {
          type metadata accessor for Inspected(255, v5, v6, v7);
          type metadata accessor for Binding();
          if (v9 <= 0x3F)
          {
            type metadata accessor for Environment<ColorScheme>(319);
            if (v10 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for ToggleButton(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(type metadata accessor for ColorScheme() - 8);
  v10 = 8;
  if (*(v9 + 64) > 8uLL)
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v6 + 80);
  v12 = *(v6 + 64);
  if (v7)
  {
    v13 = *(v6 + 64);
  }

  else
  {
    v13 = v12 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v8)
  {
    goto LABEL_31;
  }

  v14 = *(v9 + 80) & 0xF8 | 7;
  v15 = v10 + ((-2 - (((-17 - v11) | v11) - (v12 + 1 + v14)) - ((((((-33 - v11) | v11) - (v12 + v11)) | v11) - ((v11 | 7) + v13)) | v11 | 7)) & ~v14) + 1;
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((a2 - v8 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v19 < 2)
    {
LABEL_31:
      if ((v7 & 0x80000000) != 0)
      {
        v22 = *(v6 + 48);

        return v22((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v11 + 24) & ~v11, v7, v5);
      }

      else
      {
        v21 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v21) = -1;
        }

        return (v21 + 1);
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_31;
  }

LABEL_20:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 > 3)
    {
      LODWORD(v15) = 4;
    }

    if (v15 > 2)
    {
      if (v15 == 3)
      {
        LODWORD(v15) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v15) = *a1;
      }
    }

    else if (v15 == 1)
    {
      LODWORD(v15) = *a1;
    }

    else
    {
      LODWORD(v15) = *a1;
    }
  }

  return v8 + (v15 | v20) + 1;
}

void storeEnumTagSinglePayload for ToggleButton(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v27 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(type metadata accessor for ColorScheme() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 80);
  v14 = *(v8 + 64);
  v15 = v14 + v13;
  v16 = v14 + 1;
  if (!v9)
  {
    ++v14;
  }

  v17 = *(v11 + 80) & 0xF8 | 7;
  v18 = v12 + ((-2 - (((-17 - v13) | v13) - (v16 + v17)) - ((((((-33 - v13) | v13) - v15) | v13) - ((v13 | 7) + v14)) | v13 | 7)) & ~v17) + 1;
  if (a3 <= v10)
  {
    v19 = 0;
  }

  else if (v18 <= 3)
  {
    v22 = ((a3 - v10 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
    if (HIWORD(v22))
    {
      v19 = 4;
    }

    else
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
        v19 = v23;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 1;
  }

  if (v10 < a2)
  {
    v20 = ~v10 + a2;
    if (v18 < 4)
    {
      v21 = (v20 >> (8 * v18)) + 1;
      if (v18)
      {
        v24 = v20 & ~(-1 << (8 * v18));
        bzero(a1, v18);
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *a1 = v24;
            if (v19 > 1)
            {
LABEL_51:
              if (v19 == 2)
              {
                *&a1[v18] = v21;
              }

              else
              {
                *&a1[v18] = v21;
              }

              return;
            }
          }

          else
          {
            *a1 = v20;
            if (v19 > 1)
            {
              goto LABEL_51;
            }
          }

          goto LABEL_48;
        }

        *a1 = v24;
        a1[2] = BYTE2(v24);
      }

      if (v19 > 1)
      {
        goto LABEL_51;
      }
    }

    else
    {
      bzero(a1, v18);
      *a1 = v20;
      v21 = 1;
      if (v19 > 1)
      {
        goto LABEL_51;
      }
    }

LABEL_48:
    if (v19)
    {
      a1[v18] = v21;
    }

    return;
  }

  if (v19 > 1)
  {
    if (v19 != 2)
    {
      *&a1[v18] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *&a1[v18] = 0;
  }

  else if (v19)
  {
    a1[v18] = 0;
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
  if ((v9 & 0x80000000) != 0)
  {
    v26 = *(v27 + 56);

    v26((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v13 + 24) & ~v13, a2, v9, v7);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v25 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v25 = (a2 - 1);
    }

    *a1 = v25;
  }
}

void type metadata accessor for Image?()
{
  if (!lazy cache variable for type metadata for Image?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Image?);
    }
  }
}

void type metadata accessor for Environment<ColorScheme>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Environment<ColorScheme>)
  {
    type metadata accessor for ColorScheme();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Environment<ColorScheme>);
    }
  }
}

uint64_t ToggleButton.binding.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Inspected(255, *(a1 + 16), a3, a4);
  v4 = type metadata accessor for Binding();
  return MEMORY[0x1DA6CA790](v4);
}

uint64_t ToggleButton.colorScheme.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  outlined init with copy of Environment<ColorScheme>.Content(v2 + *(a1 + 60), &v15 - v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for ColorScheme();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t ToggleButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v28 = a2;
  v5 = type metadata accessor for PlainButtonStyle();
  v6 = *(v5 - 8);
  v26 = v5;
  v27 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA5ImageVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy8PaperKit13RoundedCornerVGGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA5ImageVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy8PaperKit13RoundedCornerVGGGMR);
  v24 = *(v12 - 8);
  v25 = v12;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - v14;
  (*(v9 + 16))(&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1, v13);
  v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v17 = swift_allocObject();
  v19 = *(a1 + 16);
  v18 = *(a1 + 24);
  *(v17 + 16) = v19;
  *(v17 + 24) = v18;
  (*(v9 + 32))(v17 + v16, &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v29 = v19;
  v30 = v18;
  v31 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy8PaperKit13RoundedCornerVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy8PaperKit13RoundedCornerVGGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>> and conformance <> ModifiedContent<A, B>();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA5ImageVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy8PaperKit13RoundedCornerVGGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA5ImageVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy8PaperKit13RoundedCornerVGGGMR, MEMORY[0x1E697D680]);
  lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle();
  v21 = v25;
  v20 = v26;
  View.buttonStyle<A>(_:)();
  (*(v27 + 8))(v8, v20);
  return (*(v24 + 8))(v15, v21);
}

uint64_t closure #1 in ToggleButton.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Inspected(0, a2, a3, a4);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v30 = a3;
  v31 = &v28 - v19;
  v21 = type metadata accessor for ToggleButton(0, a2, a3, v20);
  (*(v11 + 16))(v13, a1 + *(v21 + 52), v10);
  if ((*(v14 + 48))(v13, 1, a2) == 1)
  {
    (*(v11 + 8))(v13, v10);
  }

  else
  {
    (*(v14 + 32))(v31, v13, a2);
    ToggleButton.binding.getter(v21, v22, v23, v24);
    Inspected.value.getter(v7, v17);
    (*(v29 + 8))(v9, v7);
    v25 = dispatch thunk of static Equatable.== infix(_:_:)();
    v26 = *(v14 + 8);
    v26(v17, a2);
    if (v25)
    {
      (*(v14 + 16))(v17, v31, a2);
      type metadata accessor for Binding();
      MEMORY[0x1DA6CA790]();
      Inspected.value.setter(v17, v7);
      Binding.wrappedValue.setter();
      return (v26)(v31, a2);
    }

    v26(v31, a2);
  }

  (*(v14 + 16))(v17, a1 + *(v21 + 48), a2);
  type metadata accessor for Binding();
  MEMORY[0x1DA6CA790]();
  Inspected.value.setter(v17, v7);
  return Binding.wrappedValue.setter();
}

double closure #2 in ToggleButton.body.getter@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v55 = type metadata accessor for ColorScheme();
  v52 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v54 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v53 = &v51 - v10;
  v56 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Inspected(0, a2, v14, v15);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v51 - v19;
  v57 = a1[1];
  if (!v57 || (v21 = type metadata accessor for ToggleButton(0, a2, a3, v18), ToggleButton.binding.getter(v21, v22, v23, v24), Inspected.value.getter(v16, v13), (*(v17 + 8))(v20, v16), v25 = dispatch thunk of static Equatable.== infix(_:_:)(), (*(v56 + 8))(v13, a2), (v25 & 1) == 0))
  {
    v57 = *a1;
  }

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v26 = *(a1 + 16);
  v28 = type metadata accessor for ToggleButton(0, a2, a3, v27);
  v32 = v28;
  if (v26 == 1 && (ToggleButton.binding.getter(v28, v29, v30, v31), Inspected.value.getter(v16, v13), (*(v17 + 8))(v20, v16), v33 = dispatch thunk of static Equatable.== infix(_:_:)(), (*(v56 + 8))(v13, a2), (v33 & 1) != 0))
  {
    v34 = static Color.accentColor.getter();
  }

  else
  {
    v35 = v53;
    ToggleButton.colorScheme.getter(v32, v53);
    v36 = v52;
    v38 = v54;
    v37 = v55;
    (*(v52 + 104))(v54, *MEMORY[0x1E697DBB8], v55);
    v39 = static ColorScheme.== infix(_:_:)();
    v40 = *(v36 + 8);
    v40(v38, v37);
    v40(v35, v37);
    v41 = objc_opt_self();
    v42 = &selRef_secondarySystemBackgroundColor;
    if ((v39 & 1) == 0)
    {
      v42 = &selRef_tertiarySystemBackgroundColor;
    }

    v43 = [v41 *v42];
    v34 = Color.init(uiColor:)();
  }

  v44 = v34;
  v45 = static Edge.Set.all.getter();
  v46 = v60;
  *(a4 + 56) = v61;
  v47 = v63;
  *(a4 + 72) = v62;
  *(a4 + 88) = v47;
  *(a4 + 104) = v64;
  result = *&v58;
  v49 = v59;
  *(a4 + 8) = v58;
  *(a4 + 24) = v49;
  v50 = a1[3];
  *a4 = v57;
  *(a4 + 40) = v46;
  *(a4 + 120) = v44;
  *(a4 + 128) = v45;
  *(a4 + 136) = 0x4014000000000000;
  *(a4 + 144) = v50;
  *(a4 + 152) = 256;
  return result;
}

uint64_t partial apply for closure #1 in ToggleButton.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8 = *(type metadata accessor for ToggleButton(0, v5, v6, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return closure #1 in ToggleButton.body.getter(v9, v5, v6, v7);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy8PaperKit13RoundedCornerVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy8PaperKit13RoundedCornerVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _ClipEffect<RoundedCorner> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVy8PaperKit13RoundedCornerVGMd, &_s7SwiftUI11_ClipEffectVy8PaperKit13RoundedCornerVGMR, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Image, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMd, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMR, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA16_FlexFrameLayoutVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle()
{
  result = lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle;
  if (!lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle)
  {
    type metadata accessor for PlainButtonStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle);
  }

  return result;
}

uint64_t outlined init with copy of Environment<ColorScheme>.Content(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata completion function for Inspected(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Inspected(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
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
    goto LABEL_25;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) > 3)
  {
    goto LABEL_7;
  }

  v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_25;
      }

LABEL_7:
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_25;
      }

LABEL_14:
      v13 = (v11 - 1) << v10;
      if (v9 > 3)
      {
        v13 = 0;
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

      return v7 + (v9 | v13) + 1;
    }

    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_14;
    }
  }

LABEL_25:
  if (v5 >= 0xFE)
  {
    return (*(v4 + 48))();
  }

  v15 = *(a1 + v6);
  if (v15 < 2)
  {
    return 0;
  }

  return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
}

unsigned int *storeEnumTagSinglePayload for Inspected(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v9 = v8 + 1;
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
        *(result + v8) = a2 + 1;
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
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
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
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

uint64_t Inspected.value.setter(uint64_t a1, uint64_t a2)
{
  result = (*(*(*(a2 + 16) - 8) + 40))(v2, a1);
  *(v2 + *(a2 + 28)) = 0;
  return result;
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance MagicPaperUsageInsertSpaceEvent.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized MagicPaperUsageInsertSpaceEvent.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance MagicPaperUsageInsertSpaceEvent.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00646572696150;
  v4 = 0x6C69636E65507369;
  v5 = 0xEE00646574726573;
  v6 = 0x6E695F6563617073;
  if (v2 != 6)
  {
    v6 = 1868852853;
    v5 = 0xE400000000000000;
  }

  v7 = 0xEB0000000073656BLL;
  v8 = 0x6F7274735F6D756ELL;
  if (v2 != 4)
  {
    v8 = 0x747865745F6D756ELL;
    v7 = 0xEF7370756F72675FLL;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x6874616D5F6D756ELL;
  v10 = 0x80000001D40804E0;
  if (v2 == 2)
  {
    v10 = 0xEF7370756F72675FLL;
  }

  else
  {
    v9 = 0xD000000000000012;
  }

  if (*v1)
  {
    v4 = 0x656C61636F6CLL;
    v3 = 0xE600000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v9;
    v3 = v10;
  }

  if (*v1 <= 3u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance MagicPaperUsageInsertSpaceEvent.CodingKeys()
{
  v1 = *v0;
  v2 = 0x6C69636E65507369;
  v3 = 0x6E695F6563617073;
  if (v1 != 6)
  {
    v3 = 1868852853;
  }

  v4 = 0x6F7274735F6D756ELL;
  if (v1 != 4)
  {
    v4 = 0x747865745F6D756ELL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6874616D5F6D756ELL;
  if (v1 != 2)
  {
    v5 = 0xD000000000000012;
  }

  if (*v0)
  {
    v2 = 0x656C61636F6CLL;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance MagicPaperUsageInsertSpaceEvent.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized MagicPaperUsageInsertSpaceEvent.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MagicPaperUsageInsertSpaceEvent.CodingKeys(uint64_t a1)
{
  inserted = lazy protocol witness table accessor for type MagicPaperUsageInsertSpaceEvent.CodingKeys and conformance MagicPaperUsageInsertSpaceEvent.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, inserted);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MagicPaperUsageInsertSpaceEvent.CodingKeys(uint64_t a1)
{
  inserted = lazy protocol witness table accessor for type MagicPaperUsageInsertSpaceEvent.CodingKeys and conformance MagicPaperUsageInsertSpaceEvent.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, inserted);
}

uint64_t MagicPaperUsageInsertSpaceEvent.calculateInsertedSpace(in:)(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC8PaperKit14ReflowTextView_layoutManager);
  swift_beginAccess();
  v2 = *(v1 + 160);
  if (!v2)
  {
    return 0;
  }

  if (*(v1 + 216))
  {
    return 0;
  }

  v3 = *(v1 + 176);
  v4 = *(v1 + 192);
  v5 = *(v1 + 208);
  result = swift_beginAccess();
  v7 = *(v1 + 88);
  if (v5 >= *(v7 + 16))
  {
    return 0;
  }

  if (v5 < 0)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v8 = v7 + 168 * v5;
  v9 = *(v8 + 72);
  v10 = *(v8 + 88);
  v11 = *(v2 + 120);
  v12 = v4 - v3;
  if (v11 < v5)
  {
    v12 = v4 - v9;
  }

  if (v5 < v11)
  {
    v12 = v10 - v4;
  }

  v13 = v12 / (v10 - v9);
  v14 = -1.0;
  if (v13 > -1.0)
  {
    v14 = v13;
  }

  v15 = v14 * 100.0;
  v16 = v13 <= 1.0;
  if (v13 > 1.0)
  {
    v17 = 100.0;
  }

  else
  {
    v17 = v15;
  }

  if (v16 && (*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_22;
  }

  if (v17 > -9.22337204e18)
  {
    if (v17 < 9.22337204e18)
    {
      return v17;
    }

    goto LABEL_24;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for MagicPaperUsageInsertSpaceEvent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 88))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for MagicPaperUsageInsertSpaceEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t MagicPaperUsageInsertSpaceEvent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8PaperKit05MagicD21UsageInsertSpaceEventV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy8PaperKit05MagicD21UsageInsertSpaceEventV10CodingKeysOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MagicPaperUsageInsertSpaceEvent.CodingKeys and conformance MagicPaperUsageInsertSpaceEvent.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[11] = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[10] = 5;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[9] = 6;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[8] = 7;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

void protocol witness for AnalyticsEvent.finalize() in conformance MagicPaperUsageInsertSpaceEvent()
{
  if ((*(v0 + 72) & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    specialized MagicPaperUsageAnalyticsEvent.initMagicPaperUsageAnalyticsEvent(from:)(Strong);

    *(v0 + 72) = 1;
  }
}

uint64_t protocol witness for AnalyticsEvent.undoEvent() in conformance MagicPaperUsageInsertSpaceEvent@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 24) == 1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0u;
  }

  else
  {
    result = outlined init with copy of MagicPaperUsageInsertSpaceEvent(v1, v7);
    v9 = 0;
    v7[24] = 1;
    v4 = *(v1 + 64);
    v5 = __OFSUB__(0, v4);
    v6 = -v4;
    if (v5)
    {
      __break(1u);
    }

    else
    {
      v8 = v6;
      return outlined init with take of MagicPaperUsageInsertSpaceEvent(v7, a1);
    }
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for MagicPaperUsageInsertSpaceEvent(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MagicPaperUsageInsertSpaceEvent and conformance MagicPaperUsageInsertSpaceEvent();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type MagicPaperUsageInsertSpaceEvent and conformance MagicPaperUsageInsertSpaceEvent();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type MagicPaperUsageInsertSpaceEvent and conformance MagicPaperUsageInsertSpaceEvent()
{
  result = lazy protocol witness table cache variable for type MagicPaperUsageInsertSpaceEvent and conformance MagicPaperUsageInsertSpaceEvent;
  if (!lazy protocol witness table cache variable for type MagicPaperUsageInsertSpaceEvent and conformance MagicPaperUsageInsertSpaceEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MagicPaperUsageInsertSpaceEvent and conformance MagicPaperUsageInsertSpaceEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MagicPaperUsageInsertSpaceEvent and conformance MagicPaperUsageInsertSpaceEvent;
  if (!lazy protocol witness table cache variable for type MagicPaperUsageInsertSpaceEvent and conformance MagicPaperUsageInsertSpaceEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MagicPaperUsageInsertSpaceEvent and conformance MagicPaperUsageInsertSpaceEvent);
  }

  return result;
}