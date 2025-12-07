void specialized static GraphicsContext.renderingTo(cgContext:environment:deviceScale:content:)(CGContext *a1, uint64_t *a2, uint64_t a3, char a4, uint64_t a5, void *a6, unint64_t a7, double a8, double a9, double a10)
{
  v10 = a7;
  v54 = *MEMORY[0x1E69E9840];
  v19 = HIDWORD(a7);
  v21 = *a2;
  v20 = a2[1];
  v50 = 0;
  v51 = 1.0;
  v22 = MEMORY[0x193AC3360](a1, &v51, &v50);
  if (!v22)
  {
    v37 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
    [v37 setProfile_];
    [v37 setDefaultColorSpace_];
    ClipBoundingBox = CGContextGetClipBoundingBox(a1);
    [v37 setContentRect_];
    if (a4)
    {
      if (v20)
      {

        v38 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012DisplayScaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v21);

        v39 = v38;
      }

      else
      {
        v48 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v21);
        if (v48)
        {
          v39 = v48[9];
        }

        else
        {
          v39 = 1.0;
        }
      }
    }

    else
    {
      v39 = *&a3;
    }

    [v37 setDeviceScale_];
    type metadata accessor for GraphicsContext.Storage();
    v40 = swift_allocObject();
    *(v40 + 32) = xmmword_18DD85500;
    *(v40 + 48) = 1065353216;
    *(v40 + 56) = 0x7FF8000000000000;
    v52 = v21;
    v53 = v20;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();

    v41 = v37;

    *(v40 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v41, &v52);
    *(v40 + 24) = RBDisplayListGetState();
    *(v40 + 64) = 0;
    v49 = v40;
    if (a8 == 0.0 && a9 == 0.0)
    {
      v42 = *(a5 + 8);
      if (v42)
      {
LABEL_19:
        v43 = *(v42 + 64);
        *(v42 + 72) = a10;
        *(v42 + 80) = 0x7FF0000000000000;
        v52 = a6;
        LOWORD(v53) = v10;
        HIDWORD(v53) = v19;

        v44 = *(v42 + 48);
        v45 = *(v42 + 56);
        DisplayList.GraphicsRenderer.render(list:in:)(&v52, &v49);
        swift_beginAccess();

        v46 = MEMORY[0x1E69E7CC8];
        *(v42 + 16) = MEMORY[0x1E69E7CC8];

        swift_beginAccess();
        v47 = *(v42 + 32);
        *(v42 + 32) = v46;
        *(v42 + 40) = v46;
        *(v42 + 16) = v47;
        swift_endAccess();
        *(v42 + 48) = v44;
        *(v42 + 56) = v45;
        *(v42 + 64) = v43;

        [v41 renderInContext:a1 options:0];

        goto LABEL_20;
      }
    }

    else
    {
      GraphicsContext.copyOnWrite()();
      RBDrawingStateTranslateCTM();
      v42 = *(a5 + 8);
      if (v42)
      {
        goto LABEL_19;
      }
    }

    LOBYTE(v52) = *a5;
    type metadata accessor for DisplayList.GraphicsRenderer();
    swift_allocObject();
    v42 = DisplayList.GraphicsRenderer.init(platformViewMode:)(&v52);
    *(a5 + 8) = v42;
    goto LABEL_19;
  }

  v23 = v22;
  type metadata accessor for GraphicsContext.Storage();
  v24 = swift_allocObject();
  *(v24 + 32) = xmmword_18DD85500;
  *(v24 + 48) = 1065353216;
  *(v24 + 56) = 0x7FF8000000000000;
  v25 = RBDrawingStateGetDisplayList();
  v52 = v21;
  v53 = v20;
  type metadata accessor for GraphicsContext.Storage.Shared();
  swift_allocObject();

  v26 = GraphicsContext.Storage.Shared.init(list:environment:)(v25, &v52);
  v27 = 0;
  *(v24 + 16) = v26;
  *(v24 + 24) = v23;
  *(v24 + 64) = 0;
  v49 = v24;
  v28 = v51;
  if (v51 != 1.0)
  {
    GraphicsContext.copyOnWrite()();
    v29 = v49;
    *(v49 + 48) = v28;
    v27 = *(v29 + 52);
  }

  v30 = v50;
  if (v27 != v50)
  {
    GraphicsContext.copyOnWrite()();
    *(v49 + 52) = v30;
  }

  if (a8 != 0.0 || a9 != 0.0)
  {
    GraphicsContext.copyOnWrite()();
    RBDrawingStateTranslateCTM();
    v31 = *(a5 + 8);
    if (v31)
    {
      goto LABEL_9;
    }

LABEL_14:
    LOBYTE(v52) = *a5;
    type metadata accessor for DisplayList.GraphicsRenderer();
    swift_allocObject();
    v31 = DisplayList.GraphicsRenderer.init(platformViewMode:)(&v52);
    *(a5 + 8) = v31;
    goto LABEL_9;
  }

  v31 = *(a5 + 8);
  if (!v31)
  {
    goto LABEL_14;
  }

LABEL_9:
  v32 = *(v31 + 64);
  *(v31 + 72) = a10;
  *(v31 + 80) = 0x7FF0000000000000;
  v52 = a6;
  LOWORD(v53) = v10;
  HIDWORD(v53) = v19;

  v33 = *(v31 + 48);
  v34 = *(v31 + 56);
  DisplayList.GraphicsRenderer.render(list:in:)(&v52, &v49);
  swift_beginAccess();

  v35 = MEMORY[0x1E69E7CC8];
  *(v31 + 16) = MEMORY[0x1E69E7CC8];

  swift_beginAccess();
  v36 = *(v31 + 32);
  *(v31 + 32) = v35;
  *(v31 + 40) = v35;
  *(v31 + 16) = v36;
  swift_endAccess();
  *(v31 + 48) = v33;
  *(v31 + 56) = v34;
  *(v31 + 64) = v32;

LABEL_20:
}

void specialized static GraphicsContext.renderingTo(cgContext:environment:deviceScale:content:)(CGContext *a1, float **a2, uint64_t a3, char a4, void *a5, double a6, double a7, float a8)
{
  v35 = *MEMORY[0x1E69E9840];
  v16 = *a2;
  v15 = a2[1];
  v31 = 0;
  v32 = 1.0;
  v17 = MEMORY[0x193AC3360](a1, &v32, &v31);
  if (v17)
  {
    v18 = v17;
    type metadata accessor for GraphicsContext.Storage();
    inited = swift_initStackObject();
    *(inited + 32) = xmmword_18DD85500;
    *(inited + 48) = 1065353216;
    *(inited + 56) = 0x7FF8000000000000;
    v20 = RBDrawingStateGetDisplayList();
    v33 = v16;
    v34 = v15;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();

    *(inited + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v20, &v33);
    *(inited + 24) = v18;
    *(inited + 64) = 0;
    v33 = inited;
    v21 = v32;
    if (v32 != 1.0)
    {
      GraphicsContext.copyOnWrite()();
      inited = v33;
      v33[12] = v21;
    }

    v22 = v31;
    if (*(inited + 52) != v31)
    {
      GraphicsContext.copyOnWrite()();
      *(v33 + 13) = v22;
    }

    if (a6 != 0.0 || a7 != 0.0)
    {
      GraphicsContext.copyOnWrite()();
      RBDrawingStateTranslateCTM();
    }

    GraphicsContext.copyOnWrite()();
    *&v23 = a8;
    [a5 drawInState:*(v33 + 3) by:v23];
  }

  else
  {
    v24 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
    [v24 setProfile_];
    [v24 setDefaultColorSpace_];
    ClipBoundingBox = CGContextGetClipBoundingBox(a1);
    [v24 setContentRect_];
    if (a4)
    {
      if (v15)
      {

        v25 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012DisplayScaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v16);

        v26 = v25;
      }

      else
      {
        v30 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v16);
        if (v30)
        {
          v26 = v30[9];
        }

        else
        {
          v26 = 1.0;
        }
      }
    }

    else
    {
      v26 = *&a3;
    }

    [v24 setDeviceScale_];
    type metadata accessor for GraphicsContext.Storage();
    v27 = swift_initStackObject();
    *(v27 + 32) = xmmword_18DD85500;
    *(v27 + 48) = 1065353216;
    *(v27 + 56) = 0x7FF8000000000000;
    v33 = v16;
    v34 = v15;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();

    v28 = v24;

    *(v27 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v28, &v33);
    *(v27 + 24) = RBDisplayListGetState();
    *(v27 + 64) = 0;
    v33 = v27;
    if (a6 != 0.0 || a7 != 0.0)
    {
      GraphicsContext.copyOnWrite()();
      RBDrawingStateTranslateCTM();
    }

    GraphicsContext.copyOnWrite()();
    *&v29 = a8;
    [a5 drawInState:*(v33 + 3) by:v29];
    [v28 renderInContext:a1 options:0];
  }
}

void specialized GraphicsContext.drawLayer(flags:content:)(uint64_t a1, uint64_t a2, void *a3, CGFloat a4)
{
  v7 = a1;
  v8 = RBDrawingStateBeginLayer();
  type metadata accessor for GraphicsContext.Storage();
  inited = swift_initStackObject();
  *(inited + 32) = xmmword_18DD85500;
  *(inited + 48) = 1065353216;
  *(inited + 56) = 0x7FF8000000000000;
  v10 = *(a2 + 16);
  v11 = *(v10 + 64);
  if (v11 == RBDrawingStateGetDefaultColorSpace())
  {
    *(inited + 16) = v10;
  }

  else
  {
    v17 = a3;
    v16 = RBDrawingStateGetDisplayList();
    v13 = *(a2 + 32);
    v12 = *(a2 + 40);
    v14 = v13;
    v15 = v12;
    if (v13 == 1)
    {
      v14 = *(v10 + 48);
      v15 = *(v10 + 56);
    }

    v18[0] = v14;
    v18[1] = v15;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();
    outlined copy of EnvironmentValues?(v13, v12);
    *(inited + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v16, v18);
    a3 = v17;
  }

  *(inited + 24) = v8;
  *(inited + 64) = 0;
  if ((v7 & 0x20) != 0)
  {
    *(inited + 48) = *(a2 + 48);
    *(inited + 52) = *(a2 + 52);
  }

  v18[0] = inited;

  specialized closure #1 in DisplayList.GraphicsRenderer.drawPlatformLayer(_:in:size:update:)(v18, a3, a4);

  RBDrawingStateDrawLayer();
}

double specialized GraphicsContext.drawLayer(flags:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a5;
  v7 = a1;
  v8 = RBDrawingStateBeginLayer();
  type metadata accessor for GraphicsContext.Storage();
  v9 = swift_allocObject();
  *(v9 + 32) = xmmword_18DD85500;
  *(v9 + 48) = 1065353216;
  *(v9 + 56) = 0x7FF8000000000000;
  v10 = *(a2 + 16);
  v11 = *(v10 + 64);
  if (v11 == RBDrawingStateGetDefaultColorSpace())
  {
    *(v9 + 16) = v10;
  }

  else
  {
    v18 = a4;
    v17 = RBDrawingStateGetDisplayList();
    v13 = *(a2 + 32);
    v12 = *(a2 + 40);
    v14 = v13;
    v15 = v12;
    if (v13 == 1)
    {
      v14 = *(v10 + 48);
      v15 = *(v10 + 56);
    }

    v20[0] = v14;
    v20[1] = v15;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();
    outlined copy of EnvironmentValues?(v13, v12);
    *(v9 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v17, v20);
    a4 = v18;
  }

  *(v9 + 24) = v8;
  *(v9 + 64) = 0;
  if ((v7 & 0x20) != 0)
  {
    *(v9 + 48) = *(a2 + 48);
    *(v9 + 52) = *(a2 + 52);
  }

  v20[0] = v9;

  closure #1 in closure #1 in SDFLayer.update(list:size:style:options:in:backdropGroupID:)(v20, a3, a4, v21 & 0xFFFFFFFF0000FFFFLL);

  RBDrawingStateDrawLayer();

  return result;
}

void specialized static GraphicsContext.renderingTo(cgContext:environment:deviceScale:content:)(CGContext *a1, float **a2, uint64_t a3, char a4, uint64_t a5)
{
  v30 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  v9 = a2[1];
  v26 = 0;
  v27 = 1.0;
  v11 = MEMORY[0x193AC3360](a1, &v27, &v26);
  if (v11)
  {
    v12 = v11;
    type metadata accessor for GraphicsContext.Storage();
    v13 = swift_allocObject();
    *(v13 + 32) = xmmword_18DD85500;
    *(v13 + 48) = 1065353216;
    *(v13 + 56) = 0x7FF8000000000000;
    v14 = RBDrawingStateGetDisplayList();
    v28 = v10;
    v29 = v9;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();

    v15 = GraphicsContext.Storage.Shared.init(list:environment:)(v14, &v28);
    v16 = 0;
    *(v13 + 16) = v15;
    *(v13 + 24) = v12;
    *(v13 + 64) = 0;
    v28 = v13;
    v17 = v27;
    if (v27 != 1.0)
    {
      GraphicsContext.copyOnWrite()();
      v18 = v28;
      v28[12] = v17;
      v16 = *(v18 + 52);
    }

    v19 = v26;
    if (v16 != v26)
    {
      GraphicsContext.copyOnWrite()();
      *(v28 + 13) = v19;
    }

    closure #1 in PaintShapeLayer.draw(in:)(&v28, a5);
  }

  else
  {
    v20 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
    [v20 setProfile_];
    [v20 setDefaultColorSpace_];
    ClipBoundingBox = CGContextGetClipBoundingBox(a1);
    [v20 setContentRect_];
    if (a4)
    {
      if (v9)
      {

        v21 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012DisplayScaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v10);

        v22 = v21;
      }

      else
      {
        v25 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v10);
        if (v25)
        {
          v22 = v25[9];
        }

        else
        {
          v22 = 1.0;
        }
      }
    }

    else
    {
      v22 = *&a3;
    }

    [v20 setDeviceScale_];
    type metadata accessor for GraphicsContext.Storage();
    v23 = swift_allocObject();
    *(v23 + 32) = xmmword_18DD85500;
    *(v23 + 48) = 1065353216;
    *(v23 + 56) = 0x7FF8000000000000;
    v28 = v10;
    v29 = v9;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();

    v24 = v20;

    *(v23 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v24, &v28);
    *(v23 + 24) = RBDisplayListGetState();
    *(v23 + 64) = 0;
    v28 = v23;
    closure #1 in PaintShapeLayer.draw(in:)(&v28, a5);
    [v24 renderInContext:a1 options:0];
  }
}

void specialized static GraphicsContext.renderingTo(cgContext:environment:deviceScale:content:)(CGContext *a1, float **a2, uint64_t a3, char a4, void *a5)
{
  v33 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  v9 = a2[1];
  v29 = 0;
  v30 = 1.0;
  v11 = MEMORY[0x193AC3360](a1, &v30, &v29);
  if (v11)
  {
    v12 = v11;
    type metadata accessor for GraphicsContext.Storage();
    v13 = swift_allocObject();
    *(v13 + 32) = xmmword_18DD85500;
    *(v13 + 48) = 1065353216;
    *(v13 + 56) = 0x7FF8000000000000;
    v14 = RBDrawingStateGetDisplayList();
    v31 = v10;
    v32 = v9;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();

    *(v13 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v14, &v31);
    *(v13 + 24) = v12;
    *(v13 + 64) = 0;
    v31 = v13;
    v15 = v30;
    if (v30 == 1.0)
    {
      v16 = 0;
    }

    else
    {
      GraphicsContext.copyOnWrite()();
      v20 = v31;
      v31[12] = v15;
      v16 = *(v20 + 52);
    }

    v21 = v29;
    if (v16 != v29)
    {
      GraphicsContext.copyOnWrite()();
      *(v31 + 13) = v21;
    }

    [a5 bounds];
    GraphicsContext.renderMissingPlatformView(size:)(__PAIR128__(v23, v22));
  }

  else
  {
    v17 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
    [v17 setProfile_];
    [v17 setDefaultColorSpace_];
    ClipBoundingBox = CGContextGetClipBoundingBox(a1);
    [v17 setContentRect_];
    if (a4)
    {
      if (v9)
      {

        v18 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012DisplayScaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v10);

        v19 = v18;
      }

      else
      {
        v28 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v10);
        if (v28)
        {
          v19 = v28[9];
        }

        else
        {
          v19 = 1.0;
        }
      }
    }

    else
    {
      v19 = *&a3;
    }

    [v17 setDeviceScale_];
    type metadata accessor for GraphicsContext.Storage();
    v24 = swift_allocObject();
    *(v24 + 32) = xmmword_18DD85500;
    *(v24 + 48) = 1065353216;
    *(v24 + 56) = 0x7FF8000000000000;
    v31 = v10;
    v32 = v9;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();

    v25 = v17;

    *(v24 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v25, &v31);
    *(v24 + 24) = RBDisplayListGetState();
    *(v24 + 64) = 0;
    [a5 bounds];
    GraphicsContext.renderMissingPlatformView(size:)(__PAIR128__(v27, v26));
    [v25 renderInContext:a1 options:0];
  }
}

void specialized closure #1 in GraphicsContext.withPlatformContext(content:)(uint64_t a1, uint64_t a2, void *a3, double a4, double a5, double a6, double a7)
{
  v13 = *(a2 + 56);
  v14 = (v13 & 0xFFFFFFFFFFFFFLL) == 0 || (~v13 & 0x7FF0000000000000) != 0;
  if (v14)
  {
    _CGContextSetShapeDistance(a1, *(a2 + 56));
  }

  v15 = [objc_allocWithZone(CoreGraphicsContext) initWithCGContext_];
  [v15 push];
  if (one-time initialization token for _textDrawingContext != -1)
  {
    swift_once();
  }

  v16 = static GraphicsContext.Storage.Shared._textDrawingContext;
  if (a3[27])
  {
    v17 = NSAttributedString.isDynamic.getter();
  }

  else
  {
    v17 = 0;
  }

  (*(*a3 + 296))(0, v17, v16, 0, a4, a5, a6, a7, a6, a7);
  [v15 pop];

  if (v14)
  {
    _CGContextSetShapeDistance(a1, NAN);
  }
}

void lazy protocol witness table accessor for type GraphicsContext._ShapeRenderingMode and conformance GraphicsContext._ShapeRenderingMode()
{
  if (!lazy protocol witness table cache variable for type GraphicsContext._ShapeRenderingMode and conformance GraphicsContext._ShapeRenderingMode)
  {
    swift_getWitnessTable(protocol conformance descriptor for GraphicsContext._ShapeRenderingMode, &type metadata for GraphicsContext._ShapeRenderingMode, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GraphicsContext._ShapeRenderingMode and conformance GraphicsContext._ShapeRenderingMode);
  }
}

void lazy protocol witness table accessor for type GraphicsContext.ClipOptions and conformance GraphicsContext.ClipOptions()
{
  if (!lazy protocol witness table cache variable for type GraphicsContext.ClipOptions and conformance GraphicsContext.ClipOptions)
  {
    swift_getWitnessTable(protocol conformance descriptor for GraphicsContext.ClipOptions, &type metadata for GraphicsContext.ClipOptions, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GraphicsContext.ClipOptions and conformance GraphicsContext.ClipOptions);
  }
}

{
  if (!lazy protocol witness table cache variable for type GraphicsContext.ClipOptions and conformance GraphicsContext.ClipOptions)
  {
    swift_getWitnessTable(protocol conformance descriptor for GraphicsContext.ClipOptions, &type metadata for GraphicsContext.ClipOptions, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GraphicsContext.ClipOptions and conformance GraphicsContext.ClipOptions);
  }
}

{
  if (!lazy protocol witness table cache variable for type GraphicsContext.ClipOptions and conformance GraphicsContext.ClipOptions)
  {
    swift_getWitnessTable(protocol conformance descriptor for GraphicsContext.ClipOptions, &type metadata for GraphicsContext.ClipOptions, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GraphicsContext.ClipOptions and conformance GraphicsContext.ClipOptions);
  }
}

{
  if (!lazy protocol witness table cache variable for type GraphicsContext.ClipOptions and conformance GraphicsContext.ClipOptions)
  {
    swift_getWitnessTable(protocol conformance descriptor for GraphicsContext.ClipOptions, &type metadata for GraphicsContext.ClipOptions, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GraphicsContext.ClipOptions and conformance GraphicsContext.ClipOptions);
  }
}

void lazy protocol witness table accessor for type GraphicsContext.ShadowOptions and conformance GraphicsContext.ShadowOptions()
{
  if (!lazy protocol witness table cache variable for type GraphicsContext.ShadowOptions and conformance GraphicsContext.ShadowOptions)
  {
    swift_getWitnessTable(protocol conformance descriptor for GraphicsContext.ShadowOptions, &type metadata for GraphicsContext.ShadowOptions, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GraphicsContext.ShadowOptions and conformance GraphicsContext.ShadowOptions);
  }
}

{
  if (!lazy protocol witness table cache variable for type GraphicsContext.ShadowOptions and conformance GraphicsContext.ShadowOptions)
  {
    swift_getWitnessTable(protocol conformance descriptor for GraphicsContext.ShadowOptions, &type metadata for GraphicsContext.ShadowOptions, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GraphicsContext.ShadowOptions and conformance GraphicsContext.ShadowOptions);
  }
}

{
  if (!lazy protocol witness table cache variable for type GraphicsContext.ShadowOptions and conformance GraphicsContext.ShadowOptions)
  {
    swift_getWitnessTable(protocol conformance descriptor for GraphicsContext.ShadowOptions, &type metadata for GraphicsContext.ShadowOptions, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GraphicsContext.ShadowOptions and conformance GraphicsContext.ShadowOptions);
  }
}

{
  if (!lazy protocol witness table cache variable for type GraphicsContext.ShadowOptions and conformance GraphicsContext.ShadowOptions)
  {
    swift_getWitnessTable(protocol conformance descriptor for GraphicsContext.ShadowOptions, &type metadata for GraphicsContext.ShadowOptions, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GraphicsContext.ShadowOptions and conformance GraphicsContext.ShadowOptions);
  }
}

void lazy protocol witness table accessor for type GraphicsContext.BlurOptions and conformance GraphicsContext.BlurOptions()
{
  if (!lazy protocol witness table cache variable for type GraphicsContext.BlurOptions and conformance GraphicsContext.BlurOptions)
  {
    swift_getWitnessTable(protocol conformance descriptor for GraphicsContext.BlurOptions, &type metadata for GraphicsContext.BlurOptions, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GraphicsContext.BlurOptions and conformance GraphicsContext.BlurOptions);
  }
}

{
  if (!lazy protocol witness table cache variable for type GraphicsContext.BlurOptions and conformance GraphicsContext.BlurOptions)
  {
    swift_getWitnessTable(protocol conformance descriptor for GraphicsContext.BlurOptions, &type metadata for GraphicsContext.BlurOptions, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GraphicsContext.BlurOptions and conformance GraphicsContext.BlurOptions);
  }
}

{
  if (!lazy protocol witness table cache variable for type GraphicsContext.BlurOptions and conformance GraphicsContext.BlurOptions)
  {
    swift_getWitnessTable(protocol conformance descriptor for GraphicsContext.BlurOptions, &type metadata for GraphicsContext.BlurOptions, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GraphicsContext.BlurOptions and conformance GraphicsContext.BlurOptions);
  }
}

{
  if (!lazy protocol witness table cache variable for type GraphicsContext.BlurOptions and conformance GraphicsContext.BlurOptions)
  {
    swift_getWitnessTable(protocol conformance descriptor for GraphicsContext.BlurOptions, &type metadata for GraphicsContext.BlurOptions, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GraphicsContext.BlurOptions and conformance GraphicsContext.BlurOptions);
  }
}

void lazy protocol witness table accessor for type GraphicsContext.FilterOptions and conformance GraphicsContext.FilterOptions()
{
  if (!lazy protocol witness table cache variable for type GraphicsContext.FilterOptions and conformance GraphicsContext.FilterOptions)
  {
    swift_getWitnessTable(protocol conformance descriptor for GraphicsContext.FilterOptions, &type metadata for GraphicsContext.FilterOptions, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GraphicsContext.FilterOptions and conformance GraphicsContext.FilterOptions);
  }
}

{
  if (!lazy protocol witness table cache variable for type GraphicsContext.FilterOptions and conformance GraphicsContext.FilterOptions)
  {
    swift_getWitnessTable(protocol conformance descriptor for GraphicsContext.FilterOptions, &type metadata for GraphicsContext.FilterOptions, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GraphicsContext.FilterOptions and conformance GraphicsContext.FilterOptions);
  }
}

{
  if (!lazy protocol witness table cache variable for type GraphicsContext.FilterOptions and conformance GraphicsContext.FilterOptions)
  {
    swift_getWitnessTable(protocol conformance descriptor for GraphicsContext.FilterOptions, &type metadata for GraphicsContext.FilterOptions, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GraphicsContext.FilterOptions and conformance GraphicsContext.FilterOptions);
  }
}

{
  if (!lazy protocol witness table cache variable for type GraphicsContext.FilterOptions and conformance GraphicsContext.FilterOptions)
  {
    swift_getWitnessTable(protocol conformance descriptor for GraphicsContext.FilterOptions, &type metadata for GraphicsContext.FilterOptions, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GraphicsContext.FilterOptions and conformance GraphicsContext.FilterOptions);
  }
}

void lazy protocol witness table accessor for type GraphicsContext.GradientOptions and conformance GraphicsContext.GradientOptions()
{
  if (!lazy protocol witness table cache variable for type GraphicsContext.GradientOptions and conformance GraphicsContext.GradientOptions)
  {
    swift_getWitnessTable(protocol conformance descriptor for GraphicsContext.GradientOptions, &type metadata for GraphicsContext.GradientOptions, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GraphicsContext.GradientOptions and conformance GraphicsContext.GradientOptions);
  }
}

{
  if (!lazy protocol witness table cache variable for type GraphicsContext.GradientOptions and conformance GraphicsContext.GradientOptions)
  {
    swift_getWitnessTable(protocol conformance descriptor for GraphicsContext.GradientOptions, &type metadata for GraphicsContext.GradientOptions, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GraphicsContext.GradientOptions and conformance GraphicsContext.GradientOptions);
  }
}

{
  if (!lazy protocol witness table cache variable for type GraphicsContext.GradientOptions and conformance GraphicsContext.GradientOptions)
  {
    swift_getWitnessTable(protocol conformance descriptor for GraphicsContext.GradientOptions, &type metadata for GraphicsContext.GradientOptions, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GraphicsContext.GradientOptions and conformance GraphicsContext.GradientOptions);
  }
}

{
  if (!lazy protocol witness table cache variable for type GraphicsContext.GradientOptions and conformance GraphicsContext.GradientOptions)
  {
    swift_getWitnessTable(protocol conformance descriptor for GraphicsContext.GradientOptions, &type metadata for GraphicsContext.GradientOptions, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GraphicsContext.GradientOptions and conformance GraphicsContext.GradientOptions);
  }
}

void lazy protocol witness table accessor for type GraphicsContext.LayerOptions and conformance GraphicsContext.LayerOptions()
{
  if (!lazy protocol witness table cache variable for type GraphicsContext.LayerOptions and conformance GraphicsContext.LayerOptions)
  {
    swift_getWitnessTable(protocol conformance descriptor for GraphicsContext.LayerOptions, &type metadata for GraphicsContext.LayerOptions, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GraphicsContext.LayerOptions and conformance GraphicsContext.LayerOptions);
  }
}

{
  if (!lazy protocol witness table cache variable for type GraphicsContext.LayerOptions and conformance GraphicsContext.LayerOptions)
  {
    swift_getWitnessTable(protocol conformance descriptor for GraphicsContext.LayerOptions, &type metadata for GraphicsContext.LayerOptions, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GraphicsContext.LayerOptions and conformance GraphicsContext.LayerOptions);
  }
}

{
  if (!lazy protocol witness table cache variable for type GraphicsContext.LayerOptions and conformance GraphicsContext.LayerOptions)
  {
    swift_getWitnessTable(protocol conformance descriptor for GraphicsContext.LayerOptions, &type metadata for GraphicsContext.LayerOptions, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GraphicsContext.LayerOptions and conformance GraphicsContext.LayerOptions);
  }
}

{
  if (!lazy protocol witness table cache variable for type GraphicsContext.LayerOptions and conformance GraphicsContext.LayerOptions)
  {
    swift_getWitnessTable(protocol conformance descriptor for GraphicsContext.LayerOptions, &type metadata for GraphicsContext.LayerOptions, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GraphicsContext.LayerOptions and conformance GraphicsContext.LayerOptions);
  }
}

uint64_t assignWithCopy for PathDrawingStyle(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  outlined copy of PathDrawingStyle(*a2, v4, v5, v6, v7, v8);
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  outlined consume of PathDrawingStyle(v9, v10, v11, v12, v13, v14);
  return a1;
}

uint64_t assignWithTake for PathDrawingStyle(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *(a2 + 40);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v11;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  outlined consume of PathDrawingStyle(v5, v7, v6, v8, v9, v10);
  return a1;
}

uint64_t getEnumTagSinglePayload for PathDrawingStyle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
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

uint64_t assignWithCopy for GraphicsContext.Shading(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  outlined copy of GraphicsContext.Shading.Storage(*a2, v4, v5, v6, v7, v8, v9, v10, v11, *(a2 + 72));
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  v21 = *(a1 + 72);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v23;
  outlined consume of GraphicsContext.Shading.Storage(v12, v13, v14, v15, v16, v17, v18, v19, v20, v21);
  return a1;
}

uint64_t assignWithTake for GraphicsContext.Shading(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 64);
  v4 = *(a2 + 72);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v14 = *(a1 + 72);
  v15 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v15;
  v16 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v16;
  *(a1 + 64) = v3;
  *(a1 + 72) = v4;
  outlined consume of GraphicsContext.Shading.Storage(v5, v7, v6, v8, v9, v10, v11, v12, v13, v14);
  return a1;
}

uint64_t getEnumTagSinglePayload for GraphicsContext.Shading(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF6 && *(a1 + 73))
  {
    return (*a1 + 246);
  }

  v3 = *(a1 + 72);
  if (v3 <= 0xA)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for GraphicsContext.Shading(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF5)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 246;
    if (a3 >= 0xF6)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF6)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for GraphicsContext.Shading.Storage(uint64_t a1)
{
  if (*(a1 + 72) <= 9u)
  {
    return *(a1 + 72);
  }

  else
  {
    return (*a1 + 10);
  }
}

uint64_t destructiveInjectEnumTag for GraphicsContext.Shading.Storage(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xA)
  {
    *result = a2 - 10;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    LOBYTE(a2) = 10;
  }

  *(result + 72) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for GraphicsContext.GradientGeometry(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 49))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 48);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for GraphicsContext.GradientGeometry(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t assignWithCopy for GraphicsContext.ResolvedShading(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  v25 = *(a2 + 72);
  v26 = *(a2 + 80);
  v27 = *(a2 + 88);
  v28 = *(a2 + 96);
  v29 = *(a2 + 104);
  v30 = *(a2 + 112);
  v31 = *(a2 + 120);
  v32 = *(a2 + 128);
  v33 = *(a2 + 136);
  v34 = *(a2 + 144);
  v35 = *(a2 + 152);
  v36 = *(a2 + 160);
  outlined copy of GraphicsContext.ResolvedShading(*a2, v4, v5, v6, v7, v8, v9, v10, v11, v25, v26, v27, v28, v29, v30);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  v21 = *(a1 + 80);
  v22 = *(a1 + 96);
  v23 = *(a1 + 112);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v25;
  *(a1 + 80) = v26;
  *(a1 + 88) = v27;
  *(a1 + 96) = v28;
  *(a1 + 104) = v29;
  *(a1 + 112) = v30;
  *(a1 + 120) = v31;
  *(a1 + 128) = v32;
  *(a1 + 136) = v33;
  *(a1 + 144) = v34;
  *(a1 + 152) = v35;
  *(a1 + 160) = v36;
  outlined consume of GraphicsContext.ResolvedShading(v12, v13, v14, v15, v16, v17, v18, v19, v20, *(&v20 + 1), v21, *(&v21 + 1), v22, *(&v22 + 1), v23);
  return a1;
}

uint64_t assignWithTake for GraphicsContext.ResolvedShading(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 160);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v13 = *(a1 + 80);
  v14 = *(a1 + 96);
  v15 = *(a1 + 112);
  v16 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v16;
  v17 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v17;
  v18 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v18;
  v19 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v19;
  v20 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v20;
  *(a1 + 160) = v3;
  outlined consume of GraphicsContext.ResolvedShading(v4, v6, v5, v7, v8, v9, v10, v11, v12, *(&v12 + 1), v13, *(&v13 + 1), v14, *(&v14 + 1), v15);
  return a1;
}

double storeEnumTagSinglePayload for GraphicsContext.ResolvedShading(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 136) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 168) = 1;
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
      result = 0.0;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 96) = 0;
      *(a1 + 104) = (-a2 << 11) & 0xFC0000 | ((-a2 & 0x7FLL) << 9) & 0xFFFFE00003FFFFFFLL | ((-a2 >> 13) << 26);
      *(a1 + 112) = 0u;
      *(a1 + 128) = 0u;
      *(a1 + 144) = 0u;
      *(a1 + 160) = 0;
      return result;
    }

    *(a1 + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void destroy for GraphicsContext.ResolvedImage(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 != 255)
  {
    outlined consume of GraphicsImage.Contents(*a1, v2);
  }

  if (*(a1 + 192) != 255)
  {
    outlined consume of GraphicsContext.Shading.Storage(*(a1 + 120), *(a1 + 128), *(a1 + 136), *(a1 + 144), *(a1 + 152), *(a1 + 160), *(a1 + 168), *(a1 + 176), *(a1 + 184), *(a1 + 192));
  }
}

uint64_t initializeWithCopy for GraphicsContext.ResolvedImage(uint64_t a1, uint64_t *a2)
{
  v4 = *(a2 + 8);
  if (v4 == 255)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
  }

  else
  {
    v5 = *a2;
    outlined copy of GraphicsImage.Contents(*a2, *(a2 + 8));
    *a1 = v5;
    *(a1 + 8) = v4;
  }

  *(a1 + 16) = a2[2];
  *(a1 + 24) = *(a2 + 3);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 72) = *(a2 + 9);
  *(a1 + 88) = *(a2 + 11);
  *(a1 + 104) = *(a2 + 52);
  *(a1 + 106) = *(a2 + 106);
  *(a1 + 107) = *(a2 + 107);
  *(a1 + 112) = a2[14];
  v6 = *(a2 + 192);
  if (v6 == 255)
  {
    *(a1 + 136) = *(a2 + 17);
    *(a1 + 152) = *(a2 + 19);
    *(a1 + 168) = *(a2 + 21);
    *(a1 + 177) = *(a2 + 177);
    *(a1 + 120) = *(a2 + 15);
  }

  else
  {
    v7 = a2[15];
    v8 = a2[16];
    v17 = v7;
    v9 = a2[17];
    v10 = a2[18];
    v11 = a2[19];
    v12 = a2[20];
    v13 = a2[21];
    v14 = a2[22];
    v15 = a2[23];
    outlined copy of GraphicsContext.Shading.Storage(v7, v8, v9, v10, v11, v12, v13, v14, v15, v6);
    *(a1 + 120) = v17;
    *(a1 + 128) = v8;
    *(a1 + 136) = v9;
    *(a1 + 144) = v10;
    *(a1 + 152) = v11;
    *(a1 + 160) = v12;
    *(a1 + 168) = v13;
    *(a1 + 176) = v14;
    *(a1 + 184) = v15;
    *(a1 + 192) = v6;
  }

  return a1;
}

uint64_t assignWithCopy for GraphicsContext.ResolvedImage(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*(a1 + 8) == 255)
  {
    if (v4 == 255)
    {
      v10 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *a1 = v10;
    }

    else
    {
      v8 = *a2;
      outlined copy of GraphicsImage.Contents(*a2, *(a2 + 8));
      *a1 = v8;
      *(a1 + 8) = v4;
    }
  }

  else if (v4 == 255)
  {
    outlined destroy of GraphicsImage.Contents(a1);
    v9 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v9;
  }

  else
  {
    v5 = *a2;
    outlined copy of GraphicsImage.Contents(*a2, *(a2 + 8));
    v6 = *a1;
    *a1 = v5;
    v7 = *(a1 + 8);
    *(a1 + 8) = v4;
    outlined consume of GraphicsImage.Contents(v6, v7);
  }

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v11 = *(a2 + 44);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 44) = v11;
  v12 = *(a2 + 72);
  v13 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v13;
  *(a1 + 72) = v12;
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 106) = *(a2 + 106);
  *(a1 + 107) = *(a2 + 107);
  *(a1 + 112) = *(a2 + 112);
  v14 = *(a2 + 192);
  if (*(a1 + 192) == 255)
  {
    if (v14 == 255)
    {
      *(a1 + 120) = *(a2 + 120);
      v46 = *(a2 + 136);
      v47 = *(a2 + 152);
      v48 = *(a2 + 168);
      *(a1 + 177) = *(a2 + 177);
      *(a1 + 168) = v48;
      *(a1 + 152) = v47;
      *(a1 + 136) = v46;
    }

    else
    {
      v34 = *(a2 + 120);
      v35 = *(a2 + 128);
      v51 = v34;
      v36 = *(a2 + 136);
      v37 = *(a2 + 144);
      v38 = *(a2 + 152);
      v39 = *(a2 + 160);
      v40 = *(a2 + 168);
      v41 = *(a2 + 176);
      v42 = *(a2 + 184);
      outlined copy of GraphicsContext.Shading.Storage(v34, v35, v36, v37, v38, v39, v40, v41, v42, v14);
      *(a1 + 120) = v51;
      *(a1 + 128) = v35;
      *(a1 + 136) = v36;
      *(a1 + 144) = v37;
      *(a1 + 152) = v38;
      *(a1 + 160) = v39;
      *(a1 + 168) = v40;
      *(a1 + 176) = v41;
      *(a1 + 184) = v42;
      *(a1 + 192) = v14;
    }
  }

  else if (v14 == 255)
  {
    outlined destroy of GraphicsContext.Shading(a1 + 120);
    *(a1 + 120) = *(a2 + 120);
    v43 = *(a2 + 152);
    v44 = *(a2 + 168);
    v45 = *(a2 + 177);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 177) = v45;
    *(a1 + 168) = v44;
    *(a1 + 152) = v43;
  }

  else
  {
    v15 = *(a2 + 120);
    v16 = *(a2 + 128);
    v50 = v15;
    v17 = *(a2 + 136);
    v18 = *(a2 + 144);
    v19 = *(a2 + 152);
    v20 = *(a2 + 160);
    v21 = *(a2 + 168);
    v22 = *(a2 + 176);
    v23 = *(a2 + 184);
    outlined copy of GraphicsContext.Shading.Storage(v15, v16, v17, v18, v19, v20, v21, v22, v23, v14);
    v24 = *(a1 + 120);
    v25 = *(a1 + 128);
    v26 = *(a1 + 136);
    v27 = *(a1 + 144);
    v28 = *(a1 + 152);
    v29 = *(a1 + 160);
    v30 = *(a1 + 168);
    v31 = *(a1 + 176);
    v32 = *(a1 + 184);
    v33 = *(a1 + 192);
    *(a1 + 120) = v50;
    *(a1 + 128) = v16;
    *(a1 + 136) = v17;
    *(a1 + 144) = v18;
    *(a1 + 152) = v19;
    *(a1 + 160) = v20;
    *(a1 + 168) = v21;
    *(a1 + 176) = v22;
    *(a1 + 184) = v23;
    *(a1 + 192) = v14;
    outlined consume of GraphicsContext.Shading.Storage(v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
  }

  return a1;
}

__n128 __swift_memcpy193_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t assignWithTake for GraphicsContext.ResolvedImage(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 != 255)
  {
    v5 = *(a2 + 8);
    if (v5 != 255)
    {
      v6 = *a1;
      *a1 = *a2;
      *(a1 + 8) = v5;
      outlined consume of GraphicsImage.Contents(v6, v4);
      goto LABEL_6;
    }

    outlined destroy of GraphicsImage.Contents(a1);
  }

  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
LABEL_6:
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 106) = *(a2 + 106);
  *(a1 + 112) = *(a2 + 112);
  v7 = *(a1 + 192);
  if (v7 == 255)
  {
LABEL_10:
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 177) = *(a2 + 177);
    *(a1 + 120) = *(a2 + 120);
    return a1;
  }

  v8 = *(a2 + 192);
  if (v8 == 255)
  {
    outlined destroy of GraphicsContext.Shading(a1 + 120);
    goto LABEL_10;
  }

  v9 = *(a2 + 184);
  v10 = *(a1 + 120);
  v11 = *(a1 + 128);
  v12 = *(a1 + 136);
  v13 = *(a1 + 144);
  v14 = *(a1 + 152);
  v15 = *(a1 + 160);
  v16 = *(a1 + 168);
  v17 = *(a1 + 176);
  v18 = *(a1 + 184);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = v9;
  *(a1 + 192) = v8;
  outlined consume of GraphicsContext.Shading.Storage(v10, v11, v12, v13, v14, v15, v16, v17, v18, v7);
  return a1;
}

uint64_t getEnumTagSinglePayload for GraphicsContext.ResolvedImage(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 193))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 105);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for GraphicsContext.ResolvedImage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 184) = 0;
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
    *(result + 192) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 193) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 193) = 0;
    }

    if (a2)
    {
      *(result + 105) = a2 + 1;
    }
  }

  return result;
}

void destroy for GraphicsContext.ResolvedText(uint64_t a1)
{

  outlined consume of GraphicsContext.Shading.Storage(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88));
}

uint64_t initializeWithCopy for GraphicsContext.ResolvedText(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  v8 = a2[7];
  v9 = a2[8];
  v14 = a2[9];
  v15 = a2[2];
  v10 = a2[10];
  v11 = *(a2 + 88);

  outlined copy of GraphicsContext.Shading.Storage(v15, v4, v5, v6, v7, v8, v9, v14, v10, v11);
  *(a1 + 16) = v15;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
  *(a1 + 56) = v8;
  *(a1 + 64) = v9;
  *(a1 + 72) = v14;
  *(a1 + 80) = v10;
  *(a1 + 88) = v13;
  return a1;
}

uint64_t *assignWithCopy for GraphicsContext.ResolvedText(uint64_t *a1, uint64_t *a2)
{
  v2 = a2;
  *a1 = *a2;

  a1[1] = v2[1];

  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];
  v10 = v2[8];
  v11 = v2[9];
  v23 = v2[10];
  LOBYTE(v2) = *(v2 + 88);
  outlined copy of GraphicsContext.Shading.Storage(v4, v5, v6, v7, v8, v9, v10, v11, v23, v2);
  v12 = a1[2];
  v13 = a1[3];
  v14 = a1[4];
  v15 = a1[5];
  v16 = a1[6];
  v17 = a1[7];
  v18 = a1[8];
  v19 = a1[9];
  v20 = a1[10];
  v21 = *(a1 + 88);
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  a1[7] = v9;
  a1[8] = v10;
  a1[9] = v11;
  a1[10] = v23;
  *(a1 + 88) = v2;
  outlined consume of GraphicsContext.Shading.Storage(v12, v13, v14, v15, v16, v17, v18, v19, v20, v21);
  return a1;
}

uint64_t assignWithTake for GraphicsContext.ResolvedText(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  v4 = *(a2 + 80);
  v5 = *(a2 + 88);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  v14 = *(a1 + 80);
  v15 = *(a1 + 88);
  v16 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v16;
  v17 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v17;
  *(a1 + 80) = v4;
  *(a1 + 88) = v5;
  outlined consume of GraphicsContext.Shading.Storage(v6, v7, v8, v9, v10, v11, v12, v13, v14, v15);
  return a1;
}

uint64_t getEnumTagSinglePayload for GraphicsContext.ResolvedText(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
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

uint64_t storeEnumTagSinglePayload for GraphicsContext.ResolvedText(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t *assignWithCopy for GraphicsContext.ResolvedSymbol(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[1] = a2[1];
  a1[2] = a2[2];
  return a1;
}

uint64_t *assignWithTake for GraphicsContext.ResolvedSymbol(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  swift_unknownObjectRelease();
  *(a1 + 1) = *(a2 + 1);
  return a1;
}

uint64_t assignWithCopy for GraphicsContext.Filter(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  v23 = *(a2 + 72);
  v24 = *(a2 + 80);
  outlined copy of GraphicsContext.Filter.Storage(*a2, v4, v5, v6, v7, v8, v9, v10, v11, v23, v24);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  v21 = *(a1 + 80);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v23;
  *(a1 + 80) = v24;
  outlined consume of GraphicsContext.Filter.Storage(v12, v13, v14, v15, v16, v17, v18, v19, v20, *(&v20 + 1), v21);
  return a1;
}

uint64_t assignWithTake for GraphicsContext.Filter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v13 = *(a1 + 80);
  v14 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v14;
  v15 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v15;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v3;
  outlined consume of GraphicsContext.Filter.Storage(v4, v6, v5, v7, v8, v9, v10, v11, v12, *(&v12 + 1), v13);
  return a1;
}

uint64_t getEnumTagSinglePayload for GraphicsContext.Filter(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0xFFFFFE6 && *(a1 + 88))
  {
    return (*a1 + 268435431);
  }

  if ((((*(a1 + 80) >> 27) & 0xF000001F | (32 * ((*(a1 + 80) >> 4) & 0x7FFFFF))) ^ 0xFFFFFFF) >= 0xFFFFFE6)
  {
    v3 = -1;
  }

  else
  {
    v3 = ((*(a1 + 80) >> 27) & 0xF000001F | (32 * ((*(a1 + 80) >> 4) & 0x7FFFFF))) ^ 0xFFFFFFF;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for GraphicsContext.Filter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0xFFFFFE7)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 268435431;
    if (a3 > 0xFFFFFE6)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 > 0xFFFFFE6)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 48) = 0u;
      *(result + 64) = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 80) = 16 * ((-a2 >> 5) & 0x7FFFFF) - (a2 << 27);
    }
  }

  return result;
}

uint64_t getEnumTag for GraphicsContext.Filter.Storage(_DWORD *a1)
{
  v1 = a1[20] >> 27;
  if (v1 <= 0x18)
  {
    return v1;
  }

  else
  {
    return (*a1 + 25);
  }
}

uint64_t destructiveInjectEnumTag for GraphicsContext.Filter.Storage(uint64_t result, unsigned int a2)
{
  if (a2 < 0x19)
  {
    *(result + 80) = *(result + 80) & 0xFFFFFFFF0000000FLL | (a2 << 27);
  }

  else
  {
    *result = a2 - 25;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0;
    *(result + 80) = 3355443200;
  }

  return result;
}

unint64_t type metadata accessor for NSStringDrawingContext()
{
  result = lazy cache variable for type metadata for NSStringDrawingContext;
  if (!lazy cache variable for type metadata for NSStringDrawingContext)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSStringDrawingContext);
  }

  return result;
}

uint64_t outlined consume of ResolvedMulticolorStyle?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    return MEMORY[0x1EEE66C30](a1, a2, a3);
  }

  return a1;
}

uint64_t partial apply for closure #2 in withGradient(_:in:do:)(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 24))
  {
    if (*(v2 + 24) == 1)
    {
      if (*(v2 + 33))
      {
        v3 = 576;
      }

      else
      {
        v3 = 64;
      }
    }

    else if (*(v2 + 33))
    {
      v3 = 704;
    }

    else
    {
      v3 = 192;
    }
  }

  else if (*(v2 + 33))
  {
    v3 = 640;
  }

  else
  {
    v3 = 128;
  }

  *(&v4 + 1) = *(v2 + 32);
  *&v4 = *(v2 + 28) << 32;
  return (*(v2 + 40))(*(v2 + 56), a1, v4 >> 32, a2, v3);
}

__n128 __swift_memcpy60_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for GraphicsContext.Filter.ResolvedShadow(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 60))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GraphicsContext.Filter.ResolvedShadow(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 60) = v3;
  return result;
}

uint64_t initializeWithCopy for GraphicsContext.Filter.Shadow(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 1);
  *(a1 + 32) = a2[4];

  return a1;
}

uint64_t *assignWithCopy for GraphicsContext.Filter.Shadow(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  return a1;
}

uint64_t *assignWithTake for GraphicsContext.Filter.Shadow(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);
  v4 = a2[4];
  a1[3] = a2[3];
  a1[4] = v4;
  return a1;
}

__C::CGRect __swiftcall CGSize.centeredIn(_:)(CGSize a1)
{
  v3 = (a1.width - v1) * 0.5 + 0.0;
  v4 = (a1.height - v2) * 0.5 + 0.0;
  result.size.height = v2;
  result.size.width = v1;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

Swift::Int ContentMode.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](a1 & 1);
  return Hasher._finalize()();
}

uint64_t _AspectRatioLayout.aspectRatio.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

double CGSize.scaleThatFits(_:)(uint64_t a1, double a2, double a3)
{
  if ((*(a1 + 8) & 1) != 0 || (v3 = *a1, a2 == 0.0) && v3 == 0.0)
  {
    result = INFINITY;
    if (*(a1 + 24))
    {
      goto LABEL_9;
    }
  }

  else
  {
    result = v3 / a2;
    if (*(a1 + 24))
    {
LABEL_9:
      v6 = INFINITY;
      goto LABEL_11;
    }
  }

  v5 = *(a1 + 16);
  if (a3 == 0.0 && v5 == 0.0)
  {
    goto LABEL_9;
  }

  v6 = v5 / a3;
LABEL_11:
  if (v6 < result)
  {
    return v6;
  }

  return result;
}

double CGSize.scaleThatFills(_:)(uint64_t a1, double a2, double a3)
{
  if ((*(a1 + 8) & 1) != 0 || (v3 = *a1, a2 == 0.0) && v3 == 0.0)
  {
    result = -INFINITY;
    if (*(a1 + 24))
    {
      goto LABEL_9;
    }
  }

  else
  {
    result = v3 / a2;
    if (*(a1 + 24))
    {
LABEL_9:
      v6 = -INFINITY;
      goto LABEL_11;
    }
  }

  v5 = *(a1 + 16);
  if (a3 == 0.0 && v5 == 0.0)
  {
    goto LABEL_9;
  }

  v6 = v5 / a3;
LABEL_11:
  if (result <= v6)
  {
    return v6;
  }

  return result;
}

__C::CGRect __swiftcall CGSize.centeredIn(_:)(__C::CGRect a1)
{
  v3 = (a1.size.width - v1) * 0.5 + a1.origin.x;
  v4 = (a1.size.height - v2) * 0.5 + a1.origin.y;
  v5 = v1;
  v6 = v2;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

uint64_t View.aspectRatio(_:contentMode:)()
{
  return View.modifier<A>(_:)();
}

{
  return View.modifier<A>(_:)();
}

void lazy protocol witness table accessor for type ContentMode and conformance ContentMode()
{
  if (!lazy protocol witness table cache variable for type ContentMode and conformance ContentMode)
  {
    swift_getWitnessTable(protocol conformance descriptor for ContentMode, &type metadata for ContentMode, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ContentMode and conformance ContentMode);
  }
}

void lazy protocol witness table accessor for type [ContentMode] and conformance [A]()
{
  if (!lazy protocol witness table cache variable for type [ContentMode] and conformance [A])
  {
    type metadata accessor for [ContentMode]();
    swift_getWitnessTable(MEMORY[0x1E69E6340], v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type [ContentMode] and conformance [A]);
  }
}

void type metadata accessor for [ContentMode]()
{
  if (!lazy cache variable for type metadata for [ContentMode])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [ContentMode]);
    }
  }
}

uint64_t getEnumTagSinglePayload for _AspectRatioLayout(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 9);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for _AspectRatioLayout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 1;
    }
  }

  return result;
}

CAFrameRateRange __swiftcall CAFrameRateRange.init(interval:)(Swift::Double interval)
{
  if (interval == 0.0)
  {
    goto LABEL_2;
  }

  v4 = interval;
  v5 = roundf(1.0 / v4);
  if (v5 <= 40.0)
  {
    v6 = LODWORD(v5);
    v7 = 60.0;
    goto LABEL_7;
  }

  if (v5 >= 80.0)
  {
    v6 = LODWORD(v5);
    v7 = v5;
    v5 = 80.0;
LABEL_7:
    *&v1 = CAFrameRateRange.init(minimum:maximum:preferred:)(v5, v7, v6);
    goto LABEL_8;
  }

LABEL_2:
  v1 = *MEMORY[0x1E69792B8];
  v2 = *(MEMORY[0x1E69792B8] + 4);
  v3 = *(MEMORY[0x1E69792B8] + 8);
LABEL_8:
  result.preferred = v3;
  result.maximum = v2;
  result.minimum = v1;
  return result;
}

void VariableBlurStyle.Mask.setCAFilterInput(of:)(void *a1)
{
  v3 = *(v1 + 104) >> 30;
  if (v3)
  {
    if (v3 == 1 && (*v1 & 0x8000000000000000) == 0)
    {
      v4 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x193ABEDD0](v4);

      v5 = MEMORY[0x193ABEC20](64, 0xE100000000000000);

      _CAFilterSetInput(a1, v5, 23);
    }
  }

  else
  {
    v6 = *(v1 + 16);
    v7 = *(v1 + 40);
    v8 = 0.0;
    v9 = 0.0;
    if (v6 != 0.0)
    {
      v10 = *(v1 + 24);
      if (v7 <= 3u)
      {
        v11 = *(v1 + 32);
      }

      else
      {
        v11 = *(v1 + 24);
      }

      if (v7 > 3u)
      {
        v10 = *(v1 + 32);
      }

      v8 = 1.0 / v6 * v10;
      v9 = 1.0 / v6 * v11;
    }

    v12.value = GraphicsImage.render(at:prefersMask:)(__PAIR128__(*&v9, *&v8), 0).value;
    if (v12.value)
    {
      value = v12.value;
      _CAFilterSetInput(a1, v12.value, 15);
    }
  }
}

void _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV17updateFilterValue_2at4from2toyxm_Si0K0QzAMtAA01_cd1_ef1_gH8PropertyRzSQAMRQlFAE16InputColorMatrixO_Ttg5(uint64_t a1, float *a2, float *a3)
{
  if (specialized static _ColorMatrix.== infix(_:_:)(a3, a2))
  {
    return;
  }

  v6 = v3[1];
  v7 = objc_opt_self();
  v8 = *(a3 + 1);
  v30[0] = *a3;
  v30[1] = v8;
  v9 = *(a3 + 3);
  v30[2] = *(a3 + 2);
  v30[3] = v9;
  v30[4] = *(a3 + 4);
  v10 = [v7 valueWithCAColorMatrix_];
  if (!v10)
  {
    __break(1u);
    goto LABEL_19;
  }

  v11 = v10;
  *&v30[0] = 0;
  *(&v30[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(21);

  *&v30[0] = 0x2E737265746C6966;
  *(&v30[0] + 1) = 0xEF287865646E6940;
  v12 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v12);

  MEMORY[0x193ABEDD0](11817, 0xE200000000000000);
  MEMORY[0x193ABEDD0](0xD000000000000010, 0x800000018DD7A4B0);
  v13 = v30[0];
  v14 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v30[0] = *(v6 + 40);
  v16 = *&v30[0];
  *(v6 + 40) = 0x8000000000000000;
  v18 = specialized __RawDictionaryStorage.find<A>(_:)(v14);
  v19 = *(v16 + 2);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (!__OFADD__(v19, v20))
  {
    v22 = v17;
    if (*(v16 + 3) >= v21)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
        v16 = *&v30[0];
      }

LABEL_9:
      *(v6 + 40) = v16;

      v25 = *(v6 + 40);
      if ((v22 & 1) == 0)
      {
        specialized _NativeDictionary._insert(at:key:value:)(v18, v14, MEMORY[0x1E69E7CC0], *(v6 + 40));
      }

      v4 = *(v25 + 56);
      v16 = *(v4 + 8 * v18);
      v11 = v11;
      v26 = swift_isUniquelyReferenced_nonNull_native();
      *(v4 + 8 * v18) = v16;
      if (v26)
      {
        goto LABEL_12;
      }

      goto LABEL_17;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v21, isUniquelyReferenced_nonNull_native);
    v16 = *&v30[0];
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(v14);
    if ((v22 & 1) == (v24 & 1))
    {
      v18 = v23;
      goto LABEL_9;
    }

LABEL_19:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  __break(1u);
LABEL_17:
  v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
  *(v4 + 8 * v18) = v16;
LABEL_12:
  v28 = *(v16 + 2);
  v27 = *(v16 + 3);
  if (v28 >= v27 >> 1)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v16);
    *(v4 + 8 * v18) = v16;
  }

  *(v16 + 2) = v28 + 1;
  v29 = &v16[32 * v28];
  *(v29 + 2) = v13;
  *(v29 + 6) = v11;
  v29[56] = 1;
}

void _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV17updateFilterValue_2at4from2toyxm_Si0K0QzAMtAA01_cd1_ef1_gH8PropertyRzSQAMRQlFAE10InputColorO_Ttg5(uint64_t a1, float *a2, uint64_t a3)
{
  if (*a3 != *a2 || (*(a3 + 4) == a2[1] ? (v5 = *(a3 + 8) == a2[2]) : (v5 = 0), v5 ? (v6 = *(a3 + 12) == a2[3]) : (v6 = 0), !v6 || *(a3 + 16) != a2[4]))
  {
    v7 = v3[1];
    if (one-time initialization token for cache != -1)
    {
      v26 = a3;
      swift_once();
      a3 = v26;
    }

    v8 = specialized ObjectCache.subscript.getter(a3);
    _StringGuts.grow(_:)(21);

    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x193ABEDD0](v9);

    MEMORY[0x193ABEDD0](11817, 0xE200000000000000);
    MEMORY[0x193ABEDD0](0x6C6F437475706E69, 0xEA0000000000726FLL);
    v10 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v7 + 40);
    *(v7 + 40) = 0x8000000000000000;
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(v10);
    v15 = *(v12 + 2);
    v16 = (v13 & 1) == 0;
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      __break(1u);
    }

    else
    {
      v18 = v13;
      if (*(v12 + 3) >= v17)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized _NativeDictionary.copy()();
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, isUniquelyReferenced_nonNull_native);
        v19 = specialized __RawDictionaryStorage.find<A>(_:)(v10);
        if ((v18 & 1) != (v20 & 1))
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return;
        }

        v14 = v19;
      }

      *(v7 + 40) = v12;

      v21 = *(v7 + 40);
      if ((v18 & 1) == 0)
      {
        specialized _NativeDictionary._insert(at:key:value:)(v14, v10, MEMORY[0x1E69E7CC0], *(v7 + 40));
      }

      v4 = *(v21 + 56);
      v12 = *(v4 + 8 * v14);
      v8 = v8;
      v22 = swift_isUniquelyReferenced_nonNull_native();
      *(v4 + 8 * v14) = v12;
      if (v22)
      {
        goto LABEL_22;
      }
    }

    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
    *(v4 + 8 * v14) = v12;
LABEL_22:
    v24 = *(v12 + 2);
    v23 = *(v12 + 3);
    if (v24 >= v23 >> 1)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v12);
      *(v4 + 8 * v14) = v12;
    }

    *(v12 + 2) = v24 + 1;
    v25 = &v12[32 * v24];
    *(v25 + 4) = 0x2E737265746C6966;
    *(v25 + 5) = 0xEF287865646E6940;
    *(v25 + 6) = v8;
    v25[56] = 1;
  }
}

void _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV17updateFilterValue_2at4from2toyxm_Si0K0QzAMtAA01_cd1_ef1_gH8PropertyRzSQAMRQlFAE11InputRadiusO_Ttg5Tm(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 == a1)
  {
    return;
  }

  v8 = v5[1];
  v9 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  _StringGuts.grow(_:)(21);

  v10 = dispatch thunk of CustomStringConvertible.description.getter();
  v12 = v11;
  MEMORY[0x193ABEDD0](v10);

  MEMORY[0x193ABEDD0](11817, 0xE200000000000000);
  MEMORY[0x193ABEDD0](a4, a5);
  v13 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v8 + 40);
  *(v8 + 40) = 0x8000000000000000;
  v17 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
  v18 = *(v15 + 2);
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
  }

  else
  {
    v21 = v16;
    if (*(v15 + 3) >= v20)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, isUniquelyReferenced_nonNull_native);
      v22 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if ((v21 & 1) != (v23 & 1))
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }

      v17 = v22;
    }

    *(v8 + 40) = v15;

    v24 = *(v8 + 40);
    if ((v21 & 1) == 0)
    {
      specialized _NativeDictionary._insert(at:key:value:)(v17, v13, MEMORY[0x1E69E7CC0], *(v8 + 40));
    }

    v12 = *(v24 + 56);
    v15 = *(v12 + 8 * v17);
    v9 = v9;
    v25 = swift_isUniquelyReferenced_nonNull_native();
    *(v12 + 8 * v17) = v15;
    if (v25)
    {
      goto LABEL_11;
    }
  }

  v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
  *(v12 + 8 * v17) = v15;
LABEL_11:
  v27 = *(v15 + 2);
  v26 = *(v15 + 3);
  if (v27 >= v26 >> 1)
  {
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v15);
    *(v12 + 8 * v17) = v15;
  }

  *(v15 + 2) = v27 + 1;
  v28 = &v15[32 * v27];
  *(v28 + 4) = 0x2E737265746C6966;
  *(v28 + 5) = 0xEF287865646E6940;
  *(v28 + 6) = v9;
  v28[56] = 1;
}

void _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV17updateFilterValue_2at4from2toyxm_Si0K0QzAMtAA01_cd1_ef1_gH8PropertyRzSQAMRQlFAE11InputAmountO_Ttg5Tm(float a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 == a1)
  {
    return;
  }

  v9 = v5[1];
  v10 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  *&v11 = a2;
  v12 = [v10 initWithFloat_];
  _StringGuts.grow(_:)(21);

  v13 = dispatch thunk of CustomStringConvertible.description.getter();
  v15 = v14;
  MEMORY[0x193ABEDD0](v13);

  MEMORY[0x193ABEDD0](11817, 0xE200000000000000);
  MEMORY[0x193ABEDD0](a4, a5);
  v16 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v9 + 40);
  *(v9 + 40) = 0x8000000000000000;
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(v16);
  v21 = *(v18 + 2);
  v22 = (v19 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
    __break(1u);
  }

  else
  {
    v24 = v19;
    if (*(v18 + 3) >= v23)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, isUniquelyReferenced_nonNull_native);
      v25 = specialized __RawDictionaryStorage.find<A>(_:)(v16);
      if ((v24 & 1) != (v26 & 1))
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }

      v20 = v25;
    }

    *(v9 + 40) = v18;

    v27 = *(v9 + 40);
    if ((v24 & 1) == 0)
    {
      specialized _NativeDictionary._insert(at:key:value:)(v20, v16, MEMORY[0x1E69E7CC0], *(v9 + 40));
    }

    v15 = *(v27 + 56);
    v18 = *(v15 + 8 * v20);
    v12 = v12;
    v28 = swift_isUniquelyReferenced_nonNull_native();
    *(v15 + 8 * v20) = v18;
    if (v28)
    {
      goto LABEL_11;
    }
  }

  v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 2) + 1, 1, v18);
  *(v15 + 8 * v20) = v18;
LABEL_11:
  v30 = *(v18 + 2);
  v29 = *(v18 + 3);
  if (v30 >= v29 >> 1)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v18);
    *(v15 + 8 * v20) = v18;
  }

  *(v18 + 2) = v30 + 1;
  v31 = &v18[32 * v30];
  *(v31 + 4) = 0x2E737265746C6966;
  *(v31 + 5) = 0xEF287865646E6940;
  *(v31 + 6) = v12;
  v31[56] = 1;
}

void specialized static GraphicsFilter.updateAsync(layer:oldFilters:newFilters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  if (v3 == *(a3 + 16) && v3)
  {
    v4 = 0;
    v5 = (a2 + 32);
    v6 = (a3 + 32);
    while (2)
    {
      v7 = v5[5];
      v75[4] = v5[4];
      v75[5] = v7;
      v76[0] = v5[6];
      *(v76 + 12) = *(v5 + 108);
      v8 = v5[1];
      v75[0] = *v5;
      v75[1] = v8;
      v9 = v5[3];
      v75[2] = v5[2];
      v75[3] = v9;
      if (v3 != v4)
      {
        v10 = v6[3];
        v11 = v6[5];
        v81 = v6[4];
        v82 = v11;
        v12 = v6[5];
        v83[0] = v6[6];
        *(v83 + 12) = *(v6 + 108);
        v13 = v6[1];
        v77 = *v6;
        v78 = v13;
        v14 = v6[3];
        v16 = *v6;
        v15 = v6[1];
        v79 = v6[2];
        v80 = v14;
        v17 = *v5;
        v18 = v5[1];
        v19 = v5[3];
        v84[2] = v5[2];
        v84[3] = v19;
        v20 = v5[1];
        v21 = v5[2];
        v22 = *v5;
        v84[0] = v17;
        v84[1] = v20;
        *(v87 + 12) = *(v5 + 108);
        v23 = v5[5];
        v87[0] = v5[6];
        v24 = v5[3];
        v25 = v5[5];
        v85 = v5[4];
        v86 = v25;
        v87[4] = v79;
        v87[5] = v10;
        v87[2] = v16;
        v87[3] = v15;
        *(v88 + 12) = *(v6 + 108);
        v26 = v6[6];
        v87[7] = v12;
        v88[0] = v26;
        v87[6] = v81;
        v89[2] = v21;
        v89[3] = v24;
        v89[0] = v22;
        v89[1] = v18;
        v27 = v5[6];
        *(v90 + 12) = *(v5 + 108);
        v89[5] = v23;
        v90[0] = v27;
        v89[4] = v85;
        switch(_s7SwiftUI14GraphicsFilterOWOg(v89))
        {
          case 0u:
            v28 = _s7SwiftUI14GraphicsFilterOWOj6_(v89);
            v29 = *v28;
            v30 = *(v28 + 8);
            v72 = v81;
            v73 = v82;
            v74[0] = v83[0];
            *(v74 + 12) = *(v83 + 12);
            v68 = v77;
            v69 = v78;
            v70 = v79;
            v71 = v80;
            if (_s7SwiftUI14GraphicsFilterOWOg(&v68))
            {
              goto LABEL_38;
            }

            v31 = _s7SwiftUI14GraphicsFilterOWOj6_(&v68);
            if (v30 != *(v31 + 8))
            {
              goto LABEL_39;
            }

            _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV17updateFilterValue_2at4from2toyxm_Si0K0QzAMtAA01_cd1_ef1_gH8PropertyRzSQAMRQlFAE11InputRadiusO_Ttg5Tm(v29, *v31, v4, 0x6461527475706E69, 0xEB00000000737569);
            goto LABEL_5;
          case 4u:
            _s7SwiftUI14GraphicsFilterOWOj6_(v89);
            v72 = v81;
            v73 = v82;
            v74[0] = v83[0];
            *(v74 + 12) = *(v83 + 12);
            v68 = v77;
            v69 = v78;
            v70 = v79;
            v71 = v80;
            if (_s7SwiftUI14GraphicsFilterOWOg(&v68) != 4)
            {
              goto LABEL_38;
            }

            goto LABEL_42;
          case 5u:
            _s7SwiftUI14GraphicsFilterOWOj6_(v89);
            v72 = v81;
            v73 = v82;
            v74[0] = v83[0];
            *(v74 + 12) = *(v83 + 12);
            v68 = v77;
            v69 = v78;
            v70 = v79;
            v71 = v80;
            if (_s7SwiftUI14GraphicsFilterOWOg(&v68) != 5)
            {
              goto LABEL_38;
            }

LABEL_42:
            _s7SwiftUI14GraphicsFilterOWOj6_(&v68);
            outlined init with copy of GraphicsFilter(v75, &v68);
            outlined init with copy of GraphicsFilter(&v77, &v68);
            outlined destroy of (GraphicsFilter, GraphicsFilter)(v84);
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            break;
          case 6u:
            v47 = _s7SwiftUI14GraphicsFilterOWOj6_(v89);
            v72 = v81;
            v73 = v82;
            v74[0] = v83[0];
            *(v74 + 12) = *(v83 + 12);
            v68 = v77;
            v69 = v78;
            v70 = v79;
            v71 = v80;
            if (_s7SwiftUI14GraphicsFilterOWOg(&v68) != 6)
            {
              goto LABEL_38;
            }

            v48 = _s7SwiftUI14GraphicsFilterOWOj6_(&v68);
            v49 = *(v47 + 48);
            v91[2] = *(v47 + 32);
            v91[3] = v49;
            v50 = *(v47 + 64);
            v51 = *(v47 + 16);
            v91[0] = *v47;
            v91[1] = v51;
            v52 = *(v47 + 80);
            v53 = *(v48 + 48);
            v92[2] = *(v48 + 32);
            v92[3] = v53;
            v92[4] = *(v48 + 64);
            v54 = *v48;
            v92[1] = *(v48 + 16);
            v91[4] = v50;
            v92[0] = v54;
            if (v52 != *(v48 + 80))
            {
              goto LABEL_39;
            }

            v44 = v91;
            v45 = v92;
            goto LABEL_27;
          case 7u:
            v32 = _s7SwiftUI14GraphicsFilterOWOj6_(v89);
            v33 = *(v32 + 16);
            v93 = *v32;
            v94 = v33;
            v70 = v79;
            v71 = v80;
            *(v74 + 12) = *(v83 + 12);
            v68 = v77;
            v69 = v78;
            v73 = v82;
            v74[0] = v83[0];
            v72 = v81;
            if (_s7SwiftUI14GraphicsFilterOWOg(&v68) != 7)
            {
              goto LABEL_38;
            }

            v34 = _s7SwiftUI14GraphicsFilterOWOj6_(&v68);
            v35 = *(v34 + 16);
            v95 = *v34;
            v96 = v35;
            _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV17updateFilterValue_2at4from2toyxm_Si0K0QzAMtAA01_cd1_ef1_gH8PropertyRzSQAMRQlFAE10InputColorO_Ttg5(v4, &v93, &v95);
            goto LABEL_5;
          case 9u:
            v36 = *_s7SwiftUI14GraphicsFilterOWOj6_(v89);
            v70 = v79;
            v71 = v80;
            v68 = v77;
            v69 = v78;
            *(v74 + 12) = *(v83 + 12);
            v73 = v82;
            v74[0] = v83[0];
            v72 = v81;
            if (_s7SwiftUI14GraphicsFilterOWOg(&v68) != 9)
            {
              goto LABEL_38;
            }

            v37 = _s7SwiftUI14GraphicsFilterOWOj6_(&v68);
            _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV17updateFilterValue_2at4from2toyxm_Si0K0QzAMtAA01_cd1_ef1_gH8PropertyRzSQAMRQlFAE11InputRadiusO_Ttg5Tm(v36, *v37, v4, 0x676E417475706E69, 0xEA0000000000656CLL);
            goto LABEL_5;
          case 0xAu:
            v46 = *_s7SwiftUI14GraphicsFilterOWOj6_(v89);
            v70 = v79;
            v71 = v80;
            v68 = v77;
            v69 = v78;
            *(v74 + 12) = *(v83 + 12);
            v73 = v82;
            v74[0] = v83[0];
            v72 = v81;
            if (_s7SwiftUI14GraphicsFilterOWOg(&v68) != 10)
            {
              goto LABEL_38;
            }

            goto LABEL_31;
          case 0xBu:
            v46 = *_s7SwiftUI14GraphicsFilterOWOj6_(v89);
            v70 = v79;
            v71 = v80;
            v68 = v77;
            v69 = v78;
            *(v74 + 12) = *(v83 + 12);
            v73 = v82;
            v74[0] = v83[0];
            v72 = v81;
            if (_s7SwiftUI14GraphicsFilterOWOg(&v68) != 11)
            {
              goto LABEL_38;
            }

            goto LABEL_31;
          case 0xCu:
            v46 = *_s7SwiftUI14GraphicsFilterOWOj6_(v89);
            v70 = v79;
            v71 = v80;
            v68 = v77;
            v69 = v78;
            *(v74 + 12) = *(v83 + 12);
            v73 = v82;
            v74[0] = v83[0];
            v72 = v81;
            if (_s7SwiftUI14GraphicsFilterOWOg(&v68) != 12)
            {
              goto LABEL_38;
            }

            goto LABEL_31;
          case 0xDu:
            v46 = *_s7SwiftUI14GraphicsFilterOWOj6_(v89);
            v70 = v79;
            v71 = v80;
            v68 = v77;
            v69 = v78;
            *(v74 + 12) = *(v83 + 12);
            v73 = v82;
            v74[0] = v83[0];
            v72 = v81;
            if (_s7SwiftUI14GraphicsFilterOWOg(&v68) != 13)
            {
              goto LABEL_38;
            }

LABEL_31:
            v55 = *_s7SwiftUI14GraphicsFilterOWOj6_(&v68);
            outlined init with copy of GraphicsFilter(v75, &v68);
            outlined init with copy of GraphicsFilter(&v77, &v68);
            outlined destroy of (GraphicsFilter, GraphicsFilter)(v84);
            v56 = v46;
            v57 = v55;
            _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV17updateFilterValue_2at4from2toyxm_Si0K0QzAMtAA01_cd1_ef1_gH8PropertyRzSQAMRQlFAE11InputAmountO_Ttg5Tm(v56, v57, v4, 0x6F6D417475706E69, 0xEB00000000746E75);
            goto LABEL_6;
          case 0xEu:
            v58 = _s7SwiftUI14GraphicsFilterOWOj6_(v89);
            v59 = *v58;
            v61 = *(v58 + 16);
            v60 = *(v58 + 20);
            v62 = *(v58 + 24);
            v70 = v79;
            v71 = v80;
            v67 = v59;
            v68 = v77;
            v69 = v78;
            *(v74 + 12) = *(v83 + 12);
            v73 = v82;
            v74[0] = v83[0];
            v72 = v81;
            if (_s7SwiftUI14GraphicsFilterOWOg(&v68) != 14)
            {
              goto LABEL_38;
            }

            v63 = _s7SwiftUI14GraphicsFilterOWOj6_(&v68);
            v64 = *(v63 + 16);
            v65 = *(v63 + 20);
            v66 = *(v63 + 24);
            v97 = v67;
            v98 = v61;
            v99 = *v63;
            v100 = v64;
            _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV17updateFilterValue_2at4from2toyxm_Si0K0QzAMtAA01_cd1_ef1_gH8PropertyRzSQAMRQlFAE10InputColorO_Ttg5(v4, &v97, &v99);
            _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV17updateFilterValue_2at4from2toyxm_Si0K0QzAMtAA01_cd1_ef1_gH8PropertyRzSQAMRQlFAE11InputAmountO_Ttg5Tm(v60, v65, v4, 0x6F6D417475706E69, 0xEB00000000746E75);
            _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV17updateFilterValue_2at4from2toyxm_Si0K0QzAMtAA01_cd1_ef1_gH8PropertyRzSQAMRQlFAE11InputAmountO_Ttg5Tm(v62, v66, v4, 0x6169427475706E69, 0xE900000000000073);
            goto LABEL_5;
          case 0xFu:
            v38 = _s7SwiftUI14GraphicsFilterOWOj6_(v89);
            v72 = v81;
            v73 = v82;
            v74[0] = v83[0];
            *(v74 + 12) = *(v83 + 12);
            v68 = v77;
            v69 = v78;
            v70 = v79;
            v71 = v80;
            if (_s7SwiftUI14GraphicsFilterOWOg(&v68) != 15)
            {
              goto LABEL_38;
            }

            v39 = _s7SwiftUI14GraphicsFilterOWOj6_(&v68);
            if (*(v38 + 84) != *(v39 + 84) || *(v38 + 80) != *(v39 + 80))
            {
              goto LABEL_39;
            }

            v40 = *(v38 + 48);
            v101[2] = *(v38 + 32);
            v101[3] = v40;
            v101[4] = *(v38 + 64);
            v41 = *v38;
            v101[1] = *(v38 + 16);
            v101[0] = v41;
            v42 = *(v39 + 48);
            v102[2] = *(v39 + 32);
            v102[3] = v42;
            v102[4] = *(v39 + 64);
            v43 = *(v39 + 16);
            v102[0] = *v39;
            v102[1] = v43;
            v44 = v101;
            v45 = v102;
LABEL_27:
            _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV17updateFilterValue_2at4from2toyxm_Si0K0QzAMtAA01_cd1_ef1_gH8PropertyRzSQAMRQlFAE16InputColorMatrixO_Ttg5(v4, v44, v45);
LABEL_5:
            outlined destroy of (GraphicsFilter, GraphicsFilter)(v84);
LABEL_6:
            ++v4;
            v5 += 8;
            v6 += 8;
            if (v3 != v4)
            {
              continue;
            }

            return;
          case 0x18u:
            v72 = v81;
            v73 = v82;
            v74[0] = v83[0];
            *(v74 + 12) = *(v83 + 12);
            v68 = v77;
            v69 = v78;
            v70 = v79;
            v71 = v80;
            if (_s7SwiftUI14GraphicsFilterOWOg(&v68) == 24)
            {
              goto LABEL_5;
            }

            goto LABEL_38;
          case 0x19u:
            v72 = v81;
            v73 = v82;
            v74[0] = v83[0];
            *(v74 + 12) = *(v83 + 12);
            v68 = v77;
            v69 = v78;
            v70 = v79;
            v71 = v80;
            if (_s7SwiftUI14GraphicsFilterOWOg(&v68) != 25)
            {
              goto LABEL_38;
            }

            goto LABEL_5;
          default:
LABEL_38:
            outlined init with copy of GraphicsFilter(v75, &v68);
            outlined init with copy of GraphicsFilter(&v77, &v68);
LABEL_39:
            outlined destroy of (GraphicsFilter, GraphicsFilter)(v84);
            return;
        }
      }

      break;
    }

    __break(1u);
  }
}

void specialized EffectAnimation.init(from:)(char *a1@<X0>, void *a2@<X8>)
{
  _s7SwiftUI15EffectAnimation33_25E61DBD3DDB4AD4C9A82B4C3137A7B6LLPAAE4fromxAA15ProtobufDecoderVz_tKcfCAA11DisplayListV08RotationD0V_Tt1g5Tm(a1, a2);
}

{
  _s7SwiftUI15EffectAnimation33_25E61DBD3DDB4AD4C9A82B4C3137A7B6LLPAAE4fromxAA15ProtobufDecoderVz_tKcfCAA11DisplayListV06OffsetD0V_Tt1g5Tm(a1, a2);
}

void _s7SwiftUI15EffectAnimation33_25E61DBD3DDB4AD4C9A82B4C3137A7B6LLPAAE4fromxAA15ProtobufDecoderVz_tKcfCAA11DisplayListV08RotationD0V_Tt1g5Tm(char *a1@<X0>, void *a2@<X8>)
{
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  if (v5 < v6)
  {
    v7 = 0;
    v8 = 1;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 1;
    v15 = 0;
    while (1)
    {
      v19 = *(a1 + 3);
      if (v19)
      {
        v20 = *(a1 + 4);
        if (v5 < v20)
        {
          goto LABEL_15;
        }

        if (v20 < v5)
        {
          goto LABEL_4;
        }

        *(a1 + 3) = 0;
      }

      v19 = ProtobufDecoder.decodeVarint()(v19);
      if (v2)
      {
        goto LABEL_73;
      }

      if (v19 < 8)
      {
        goto LABEL_4;
      }

LABEL_15:
      v21 = v19 >> 3;
      v22 = v19 & 7;
      if (v19 >> 3 == 3)
      {
        if (v22 != 2)
        {
          goto LABEL_4;
        }

        v39 = *(a1 + 5);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v39 + 16) + 1, 1, v39);
          v39 = isUniquelyReferenced_nonNull_native;
        }

        v3 = *(v39 + 16);
        v41 = *(v39 + 24);
        if (v3 >= v41 >> 1)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v3 + 1, 1, v39);
          v39 = isUniquelyReferenced_nonNull_native;
        }

        *(v39 + 16) = v3 + 1;
        *(v39 + 8 * v3 + 32) = v6;
        *(a1 + 5) = v39;
        v42 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
        if (v2)
        {
          goto LABEL_73;
        }

        if (v42 < 0)
        {
          goto LABEL_86;
        }

        v43 = *(a1 + 1) + v42;
        if (v6 < v43)
        {
          goto LABEL_4;
        }

        *(a1 + 2) = v43;
        v44 = specialized CodableAnimation.init(from:)(a1);
        v45 = *(a1 + 5);
        if (!*(v45 + 2))
        {
          goto LABEL_88;
        }

        v46 = v44;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v47 = *(v45 + 2);
          if (!v47)
          {
            goto LABEL_91;
          }
        }

        else
        {
          v45 = specialized _ArrayBuffer._consumeAndCreateNew()(v45);
          v47 = *(v45 + 2);
          if (!v47)
          {
            goto LABEL_91;
          }
        }

        v48 = v47 - 1;
        v6 = *&v45[8 * v48 + 32];
        *(v45 + 2) = v48;

        *(a1 + 5) = v45;
        *(a1 + 2) = v6;
        v7 = v46;
        goto LABEL_8;
      }

      if (v21 == 2)
      {
        if (v22 != 2)
        {
          goto LABEL_4;
        }

        v31 = *(a1 + 5);
        v32 = swift_isUniquelyReferenced_nonNull_native();
        if ((v32 & 1) == 0)
        {
          v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 16) + 1, 1, v31);
          v31 = v32;
        }

        v3 = *(v31 + 16);
        v33 = *(v31 + 24);
        if (v3 >= v33 >> 1)
        {
          v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v3 + 1, 1, v31);
          v31 = v32;
        }

        *(v31 + 16) = v3 + 1;
        *(v31 + 8 * v3 + 32) = v6;
        *(a1 + 5) = v31;
        v34 = ProtobufDecoder.decodeVarint()(v32);
        if (v2)
        {
          goto LABEL_73;
        }

        if (v34 < 0)
        {
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
          __break(1u);
LABEL_93:
          __break(1u);
          do
          {
            __break(1u);
            v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
            v51 = *(v3 + 16);
            if (v51)
            {
              goto LABEL_83;
            }

            __break(1u);
            v3 = *(a1 + 5);
            if (!*(v3 + 16))
            {
              goto LABEL_93;
            }

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v51 = *(v3 + 16);
              if (v51)
              {
                goto LABEL_83;
              }
            }

            else
            {
              v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
              v51 = *(v3 + 16);
              if (v51)
              {
                goto LABEL_83;
              }
            }

            __break(1u);
            v3 = *(a1 + 5);
          }

          while (!*(v3 + 16));
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v51 = *(v3 + 16);
            if (v51)
            {
LABEL_83:
              v52 = v51 - 1;
              v53 = *(v3 + 8 * v52 + 32);
              *(v3 + 16) = v52;

              *(a1 + 5) = v3;
              *(a1 + 2) = v53;
              return;
            }
          }

          else
          {
            v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
            v51 = *(v3 + 16);
            if (v51)
            {
              goto LABEL_83;
            }
          }

          __break(1u);
          return;
        }

        v35 = *(a1 + 1) + v34;
        if (v6 < v35)
        {
          goto LABEL_4;
        }

        *(a1 + 2) = v35;
        specialized _RotationEffect.init(from:)(a1);
        v16 = *(a1 + 5);
        if (!*(v16 + 2))
        {
          goto LABEL_87;
        }

        v9 = v36;
        v10 = v37;
        v11 = v38;
        v3 = 0;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v17 = *(v16 + 2);
          if (!v17)
          {
            goto LABEL_90;
          }
        }

        else
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
          v17 = *(v16 + 2);
          if (!v17)
          {
            goto LABEL_90;
          }
        }

        v8 = 0;
        goto LABEL_7;
      }

      if (v21 == 1)
      {
        if (v22 != 2)
        {
          goto LABEL_4;
        }

        v23 = *(a1 + 5);
        v24 = swift_isUniquelyReferenced_nonNull_native();
        if ((v24 & 1) == 0)
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 16) + 1, 1, v23);
          v23 = v24;
        }

        v3 = *(v23 + 16);
        v25 = *(v23 + 24);
        if (v3 >= v25 >> 1)
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v3 + 1, 1, v23);
          v23 = v24;
        }

        *(v23 + 16) = v3 + 1;
        *(v23 + 8 * v3 + 32) = v6;
        *(a1 + 5) = v23;
        v26 = ProtobufDecoder.decodeVarint()(v24);
        if (v2)
        {
          goto LABEL_73;
        }

        if (v26 < 0)
        {
          goto LABEL_85;
        }

        v27 = *(a1 + 1) + v26;
        if (v6 < v27)
        {
          goto LABEL_4;
        }

        *(a1 + 2) = v27;
        specialized _RotationEffect.init(from:)(a1);
        v16 = *(a1 + 5);
        if (!*(v16 + 2))
        {
          goto LABEL_89;
        }

        v12 = v28;
        v13 = v29;
        v15 = v30;
        v3 = 0;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v17 = *(v16 + 2);
          if (!v17)
          {
            goto LABEL_72;
          }
        }

        else
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
          v17 = *(v16 + 2);
          if (!v17)
          {
LABEL_72:
            __break(1u);
LABEL_73:

            return;
          }
        }

        v14 = 0;
LABEL_7:
        v18 = v17 - 1;
        v6 = *&v16[8 * v18 + 32];
        *(v16 + 2) = v18;
        *(a1 + 5) = v16;
        *(a1 + 2) = v6;
        goto LABEL_8;
      }

      if ((v19 & 7) > 1)
      {
        if (v22 == 2)
        {
          v50 = ProtobufDecoder.decodeVarint()(v19);
          if (v2)
          {
            goto LABEL_73;
          }

          if (v50 < 0)
          {
            goto LABEL_92;
          }

          v49 = *(a1 + 1) + v50;
          if (v6 < v49)
          {
            goto LABEL_4;
          }
        }

        else
        {
          if (v22 != 5)
          {
            goto LABEL_4;
          }

          v49 = *(a1 + 1) + 4;
          if (v6 < v49)
          {
            goto LABEL_4;
          }
        }
      }

      else
      {
        if ((v19 & 7) == 0)
        {
          ProtobufDecoder.decodeVarint()(v19);
          if (v2)
          {
            goto LABEL_73;
          }

          goto LABEL_8;
        }

        if (v22 != 1)
        {
          goto LABEL_4;
        }

        v49 = *(a1 + 1) + 8;
        if (v6 < v49)
        {
          goto LABEL_4;
        }
      }

      *(a1 + 1) = v49;
LABEL_8:
      v5 = *(a1 + 1);
      if (v5 >= v6)
      {
        *(a1 + 3) = 0;
        if (((v14 | v8) & 1) == 0 && v7)
        {
          *a2 = v12;
          a2[1] = v13;
          a2[2] = v15;
          a2[3] = v9;
          a2[4] = v10;
          a2[5] = v11;
          a2[6] = v7;
          return;
        }

        goto LABEL_4;
      }
    }
  }

  *(a1 + 3) = 0;
LABEL_4:
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  swift_willThrow();
}

uint64_t DisplayList.encode(to:)(uint64_t result)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (v4)
  {
    v5 = result;
    v6 = 0;
    v7 = (v3 + 32);
    v25 = v4 - 1;
    while (1)
    {
      v21 = *v7;
      v8 = v7[1];
      v9 = v7[2];
      v10 = v7[3];
      *(v24 + 12) = *(v7 + 60);
      v23 = v9;
      v24[0] = v10;
      v22 = v8;
      v11 = v5[1];
      v12 = v5[2];
      if (v11 >= v12)
      {
        v17 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_23;
        }

        if (v12 < v17)
        {
          outlined init with copy of DisplayList.Item(&v21, v19);
          v18 = ProtobufEncoder.growBufferSlow(to:)(v17);
        }

        else
        {
          v5[1] = v17;
          v18 = (*v5 + v11);
          outlined init with copy of DisplayList.Item(&v21, v19);
        }

        *v18 = 10;
      }

      else
      {
        *(*v5 + v11) = 10;
        v5[1] = v11 + 1;
        outlined init with copy of DisplayList.Item(&v21, v19);
      }

      v19[2] = v23;
      v20[0] = v24[0];
      *(v20 + 12) = *(v24 + 12);
      v19[0] = v21;
      v19[1] = v22;
      v13 = v5[1];
      v14 = v5[3];
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 16) + 1, 1, v14);
        v14 = result;
      }

      v16 = *(v14 + 16);
      v15 = *(v14 + 24);
      if (v16 >= v15 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v14);
        v14 = result;
      }

      *(v14 + 16) = v16 + 1;
      *(v14 + 8 * v16 + 32) = v13;
      v5[3] = v14;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v5[1] = v13 + 1;
      DisplayList.Item.encode(to:)(v5);
      if (v2)
      {
        return outlined destroy of DisplayList.Item(&v21);
      }

      ProtobufEncoder.endLengthDelimited()();
      result = outlined destroy of DisplayList.Item(&v21);
      if (v25 == v6)
      {
        return result;
      }

      ++v6;
      v7 += 5;
      if (v6 >= *(v3 + 16))
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  return result;
}

void DisplayList.Item.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = *(v3 + 40);
  v9 = *(v3 + 48);
  v11 = *(v3 + 56);
  v12 = *(v3 + 64);
  v13 = *(v3 + 72);
  v14 = v12 >> 30;
  if (v12 >> 30 <= 1)
  {
    v26 = v13;
    v27 = v11;
    if (v14)
    {
      v25 = HIDWORD(v9);
      outlined copy of DisplayList.Effect(v10, v9, SBYTE4(v9));

      ProtobufEncoder.encodeVarint(_:)(0x12uLL);
      v16 = a1[1];
      v19 = a1[3];
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_18:
        v24 = *(v19 + 2);
        v23 = *(v19 + 3);
        if (v24 >= v23 >> 1)
        {
          v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v19);
        }

        *(v19 + 2) = v24 + 1;
        *&v19[8 * v24 + 32] = v16;
        a1[3] = v19;
        if (__OFADD__(v16, 1))
        {
          __break(1u);
          return;
        }

        a1[1] = v16 + 1;
        if (BYTE4(v9) != 20 || v10 || v9)
        {
          specialized ProtobufEncoder.messageField<A>(_:_:)(1);
          v13 = v26;
          if (v2)
          {

            outlined consume of DisplayList.Effect(v10, v9, v25);
            return;
          }
        }

        else
        {
          v13 = v26;
        }

        specialized ProtobufEncoder.messageField<A>(_:_:)(2);
        if (v2)
        {
          outlined consume of DisplayList.Effect(v10, v9, v25);

          return;
        }

        ProtobufEncoder.endLengthDelimited()();
        outlined consume of DisplayList.Effect(v10, v9, v25);
        goto LABEL_33;
      }

LABEL_40:
      v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 2) + 1, 1, v19);
      goto LABEL_18;
    }

    outlined copy of DisplayList.Content.Value(v10);
    ProtobufEncoder.encodeVarint(_:)(0xAuLL);
    v15 = a1[1];
    v16 = a1[3];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
    }

    v18 = *(v16 + 2);
    v17 = *(v16 + 3);
    v19 = (v18 + 1);
    if (v18 >= v17 >> 1)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v16);
    }

    *(v16 + 2) = v19;
    *&v16[8 * v18 + 32] = v15;
    a1[3] = v16;
    if (!__OFADD__(v15, 1))
    {
      a1[1] = v15 + 1;
      v20 = outlined copy of DisplayList.Content.Value(v10);
      specialized ProtobufEncoder.messageField<A>(_:_:)(1, v10, v20);
      outlined consume of DisplayList.Item.Value(v10, v9, v27, v12);
      if (v2)
      {
        outlined consume of DisplayList.Item.Value(v10, v9, v27, v12);
        return;
      }

      if (v9)
      {
        ProtobufEncoder.encodeVarint(_:)(0x10uLL);
        ProtobufEncoder.encodeVarint(_:)(v9);
      }

      ProtobufEncoder.endLengthDelimited()();
      outlined consume of DisplayList.Item.Value(v10, v9, v27, v12);
      v13 = v26;
      goto LABEL_33;
    }

    __break(1u);
    goto LABEL_38;
  }

  if (v14 != 2)
  {
    goto LABEL_33;
  }

  ProtobufEncoder.encodeVarint(_:)(0x2AuLL);
  v19 = a1[1];
  v16 = a1[3];
  v26 = v13;
  v27 = v11;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_38:
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
  }

  v22 = *(v16 + 2);
  v21 = *(v16 + 3);
  if (v22 >= v21 >> 1)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v16);
  }

  *(v16 + 2) = v22 + 1;
  *&v16[8 * v22 + 32] = v19;
  a1[3] = v16;
  if (__OFADD__(v19, 1))
  {
    __break(1u);
    goto LABEL_40;
  }

  a1[1] = v19 + 1;
  closure #3 in DisplayList.Item.encode(to:)(a1, v10);
  outlined consume of DisplayList.Item.Value(v10, v9, v27, v12);
  if (v2)
  {
    return;
  }

  ProtobufEncoder.endLengthDelimited()();
  v13 = v26;
LABEL_33:
  ProtobufEncoder.encodeVarint(_:)(0x1AuLL);
  specialized ProtobufEncoder.encodeMessage<A>(_:)(v5, v6, v7, v8);
  if (!v2)
  {
    if (v13)
    {
      ProtobufEncoder.encodeVarint(_:)(0x20uLL);
      ProtobufEncoder.encodeVarint(_:)(v13);
    }
  }
}

void closure #3 in DisplayList.Item.encode(to:)(void *a1, uint64_t a2)
{
  v4 = v2;
  v5 = *(a2 + 16);
  if (v5)
  {
    v7 = a2 + 68;
    while (1)
    {
      v8 = *(v7 - 4);
      v9 = a1[1];
      v10 = a1[2];
      if (v9 >= v10)
      {
        v19 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_26;
        }

        if (v10 < v19)
        {

          v20 = ProtobufEncoder.growBufferSlow(to:)(v19);
        }

        else
        {
          a1[1] = v19;
          v20 = (*a1 + v9);
        }

        *v20 = 10;
        v11 = a1[1];
      }

      else
      {
        *(*a1 + v9) = 10;
        v11 = v9 + 1;
        a1[1] = v9 + 1;
      }

      v12 = a1[3];
      v21 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
      }

      v14 = *(v12 + 2);
      v13 = *(v12 + 3);
      if (v14 >= v13 >> 1)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v12);
      }

      *(v12 + 2) = v14 + 1;
      *&v12[8 * v14 + 32] = v11;
      a1[3] = v12;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      a1[1] = v11 + 1;
      ProtobufEncoder.encodeVarint(_:)(0xAuLL);
      v15 = a1[1];
      v16 = a1[3];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
      }

      v18 = *(v16 + 2);
      v17 = *(v16 + 3);
      if (v18 >= v17 >> 1)
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v16);
      }

      *(v16 + 2) = v18 + 1;
      *&v16[8 * v18 + 32] = v15;
      a1[3] = v16;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_25;
      }

      a1[1] = v15 + 1;
      StrongHash.encode(to:)(a1);
      ProtobufEncoder.endLengthDelimited()();
      v3 = v3 & 0xFFFF0000 | v21;
      specialized ProtobufEncoder.messageField<A>(_:_:)(2);

      if (!v4)
      {
        ProtobufEncoder.endLengthDelimited()();
        v7 += 40;
        if (--v5)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

void DisplayList.Content.Value.encode(to:)(uint64_t a1)
{
  v8 = v95;
  v9 = *v1;
  switch(*v1 >> 60)
  {
    case 1uLL:
      v95[2] = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v96 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      LOBYTE(v47) = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x24);
      v48 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x25);
      ProtobufEncoder.encodeVarint(_:)(0xAuLL);
      v3 = *(a1 + 8);
      v39 = *(a1 + 24);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_116;
      }

      goto LABEL_55;
    case 2uLL:
      goto LABEL_34;
    case 3uLL:
      v42 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
      v98[3] = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
      v98[4] = v42;
      v99[0] = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
      *(v99 + 12) = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x6C);
      v43 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v98[0] = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v98[1] = v43;
      v98[2] = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      outlined init with copy of GraphicsImage(v98, v89);
      specialized ProtobufEncoder.messageField<A>(_:_:)(2);
      outlined destroy of GraphicsImage(v98);
      return;
    case 4uLL:
      v22 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v100[0] = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v100[1] = v22;
      v101 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v21 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
      v12 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
      LODWORD(v15) = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x41);
      ProtobufEncoder.encodeVarint(_:)(0x1AuLL);
      v4 = *(a1 + 8);
      v13 = *(a1 + 24);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      goto LABEL_108;
    case 5uLL:
      v56 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v102[0] = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v102[1] = v56;
      v102[2] = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v103 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
      outlined init with copy of SDFShape(v102, v89);
      specialized ProtobufEncoder.messageField<A>(_:_:)(14);
      outlined destroy of SDFShape(v102);
      return;
    case 6uLL:
      goto LABEL_69;
    case 7uLL:
      v44 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v106[2] = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v106[3] = v44;
      v107 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v45 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x48);
      v104 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
      v105 = v45;
      v106[0] = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x58);
      *(v106 + 13) = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x65);
      ProtobufEncoder.encodeVarint(_:)(0x2AuLL);
      v38 = *(a1 + 8);
      v39 = *(a1 + 24);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_43;
      }

      goto LABEL_114;
    case 8uLL:
      outlined init with copy of AnyTrackedValue((v9 & 0xFFFFFFFFFFFFFFFLL) + 16, v89);
      v76 = v90;
      v77 = v91;
      v78 = __swift_project_boxed_opaque_existential_1(v89, v90);
      v93 = v76;
      v94 = *(v77 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v92);
      (*(*(v76 - 8) + 16))(boxed_opaque_existential_1, v78, v76);
      ProtobufEncoder.encodeVarint(_:)(0x4AuLL);
      v49 = *(a1 + 8);
      v50 = *(a1 + 24);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_92;
      }

      goto LABEL_122;
    case 9uLL:
      outlined init with copy of AnyTrackedValue((v9 & 0xFFFFFFFFFFFFFFFLL) + 16, v89);
      v31 = v90;
      v32 = v91;
      v33 = __swift_project_boxed_opaque_existential_1(v89, v90);
      v93 = v31;
      v94 = *(v32 + 8);
      v34 = __swift_allocate_boxed_opaque_existential_1(v92);
      (*(*(v31 - 8) + 16))(v34, v33, v31);
      ProtobufEncoder.encodeVarint(_:)(0x52uLL);
      v9 = *(a1 + 8);
      v13 = *(a1 + 24);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_29;
      }

      goto LABEL_112;
    case 0xAuLL:
      v53 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v6 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      v7 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      ProtobufEncoder.encodeVarint(_:)(0x22uLL);
      v64 = *(a1 + 8);
      v50 = *(a1 + 24);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_82;
      }

      goto LABEL_120;
    case 0xBuLL:
      v16 = v9 & 0xFFFFFFFFFFFFFFFLL;
      v12 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v5 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v15 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
      v6 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v7 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      v17 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v18 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x34);
      v87 = *(v16 + 53);
      v85 = *(v16 + 60);
      v86 = *(v16 + 56);
      ProtobufEncoder.encodeVarint(_:)(0x32uLL);
      v4 = *(a1 + 8);
      v13 = *(a1 + 24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v108 = v17;
      v88 = v18;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_11;
      }

      goto LABEL_106;
    case 0xCuLL:
      v26 = v9 & 0xFFFFFFFFFFFFFFFLL;
      v4 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v6 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v7 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v24 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      v21 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x2C);
      v27 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x2D);
      v28 = *(v26 + 48);
      v87 = *(v26 + 52);
      ProtobufEncoder.encodeVarint(_:)(0x6AuLL);
      v12 = *(a1 + 8);
      v13 = *(a1 + 24);
      v29 = swift_isUniquelyReferenced_nonNull_native();
      v108 = v27;
      v88 = v28;
      if (v29)
      {
        goto LABEL_24;
      }

      goto LABEL_110;
    case 0xDuLL:
      outlined init with copy of AnyTrackedValue((v9 & 0xFFFFFFFFFFFFFFFLL) + 16, v89);
      v57 = v90;
      v58 = v91;
      v59 = __swift_project_boxed_opaque_existential_1(v89, v90);
      v93 = v57;
      v94 = *(v58 + 8);
      v60 = __swift_allocate_boxed_opaque_existential_1(v92);
      (*(*(v57 - 8) + 16))(v60, v59, v57);
      ProtobufEncoder.encodeVarint(_:)(0x3AuLL);
      v9 = *(a1 + 8);
      v39 = *(a1 + 24);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_64;
      }

      goto LABEL_118;
    case 0xEuLL:
      ProtobufEncoder.encodeVarint(_:)(0x42uLL);
      v12 = *(a1 + 8);
      v13 = *(a1 + 24);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
      }

      v15 = *(v13 + 2);
      v14 = *(v13 + 3);
      if (v15 >= v14 >> 1)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v13);
      }

      *(v13 + 2) = v15 + 1;
      *&v13[8 * v15 + 32] = v12;
      *(a1 + 24) = v13;
      if (!__OFADD__(v12, 1))
      {
        *(a1 + 8) = v12 + 1;
        if (v9)
        {
          ProtobufEncoder.encodeVarint(_:)(8uLL);
          ProtobufEncoder.encodeVarint(_:)(v9);
        }

LABEL_53:
        ProtobufEncoder.endLengthDelimited()();
        return;
      }

      __break(1u);
LABEL_106:
      v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
LABEL_11:
      v21 = *(v13 + 2);
      v20 = *(v13 + 3);
      if (v21 >= v20 >> 1)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v13);
      }

      *(v13 + 2) = v21 + 1;
      *&v13[8 * v21 + 32] = v4;
      *(a1 + 24) = v13;
      if (!__OFADD__(v4, 1))
      {
        *(a1 + 8) = v4 + 1;
        closure #6 in DisplayList.Content.Value.encode(to:)(a1, v6, v7, v12, v5 | (v15 << 32), v108 | (v88 << 32) | (v87 << 40), v86 | (v85 << 32));
        goto LABEL_52;
      }

      __break(1u);
LABEL_108:
      v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
LABEL_16:
      v24 = *(v13 + 2);
      v23 = *(v13 + 3);
      if (v24 >= v23 >> 1)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v13);
      }

      *(v13 + 2) = v24 + 1;
      *&v13[8 * v24 + 32] = v4;
      *(a1 + 24) = v13;
      if (!__OFADD__(v4, 1))
      {
        *(a1 + 8) = v4 + 1;
        if (v15)
        {
          v25 = 256;
        }

        else
        {
          v25 = 0;
        }

        closure #2 in DisplayList.Content.Value.encode(to:)(a1, v100, v21, v25 | v12);
        goto LABEL_52;
      }

      __break(1u);
LABEL_110:
      v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
LABEL_24:
      v3 = *(v13 + 2);
      v30 = *(v13 + 3);
      v9 = v3 + 1;
      if (v3 >= v30 >> 1)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v3 + 1, 1, v13);
      }

      *(v13 + 2) = v9;
      *&v13[8 * v3 + 32] = v12;
      *(a1 + 24) = v13;
      if (!__OFADD__(v12, 1))
      {
        *(a1 + 8) = v12 + 1;
        closure #7 in DisplayList.Content.Value.encode(to:)(a1, v6, v7, v4, v24 | (v21 << 32) | (v108 << 40), v88 | (v87 << 32));
        goto LABEL_52;
      }

      __break(1u);
LABEL_112:
      v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
LABEL_29:
      v36 = *(v13 + 2);
      v35 = *(v13 + 3);
      if (v36 >= v35 >> 1)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v13);
      }

      *(v13 + 2) = v36 + 1;
      *&v13[8 * v36 + 32] = v9;
      *(a1 + 24) = v13;
      v8 = (v9 + 1);
      if (!__OFADD__(v9, 1))
      {
        goto LABEL_95;
      }

      __break(1u);
LABEL_34:
      v37 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v8[4] = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v8[5] = v37;
      outlined init with copy of DisplayList.ChameleonColor(v97, v89);
      ProtobufEncoder.encodeVarint(_:)(0x62uLL);
      v38 = *(a1 + 8);
      v39 = *(a1 + 24);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v39 + 2) + 1, 1, v39);
      }

      v41 = *(v39 + 2);
      v40 = *(v39 + 3);
      if (v41 >= v40 >> 1)
      {
        v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v39);
      }

      *(v39 + 2) = v41 + 1;
      *&v39[8 * v41 + 32] = v38;
      *(a1 + 24) = v39;
      if (!__OFADD__(v38, 1))
      {
        *(a1 + 8) = v38 + 1;
        closure #1 in DisplayList.Content.Value.encode(to:)(a1, v97);
        outlined destroy of DisplayList.ChameleonColor(v97);
        if (v2)
        {
          return;
        }

        goto LABEL_53;
      }

      __break(1u);
LABEL_114:
      v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v39 + 2) + 1, 1, v39);
LABEL_43:
      v47 = *(v39 + 2);
      v46 = *(v39 + 3);
      v48 = v47 + 1;
      if (v47 >= v46 >> 1)
      {
        v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v39);
      }

      *(v39 + 2) = v48;
      *&v39[8 * v47 + 32] = v38;
      *(a1 + 24) = v39;
      if (!__OFADD__(v38, 1))
      {
        *(a1 + 8) = v38 + 1;
        ProtobufEncoder.encodeVarint(_:)(0xAuLL);
        v49 = *(a1 + 8);
        v50 = *(a1 + 24);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_47:
          v52 = *(v50 + 2);
          v51 = *(v50 + 3);
          v53 = v52 + 1;
          if (v52 >= v51 >> 1)
          {
            v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v50);
          }

          *(v50 + 2) = v53;
          *&v50[8 * v52 + 32] = v49;
          *(a1 + 24) = v50;
          if (!__OFADD__(v49, 1))
          {
            *(a1 + 8) = v49 + 1;
            Path.encode(to:)(a1);
            if (v2)
            {
              return;
            }

            ProtobufEncoder.endLengthDelimited()();
            specialized ProtobufEncoder.messageField<A>(_:_:)(2);
LABEL_52:
            if (v2)
            {
              return;
            }

            goto LABEL_53;
          }

          __break(1u);
          goto LABEL_126;
        }

LABEL_124:
        v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v50 + 2) + 1, 1, v50);
        goto LABEL_47;
      }

      __break(1u);
LABEL_116:
      v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v39 + 2) + 1, 1, v39);
LABEL_55:
      v55 = *(v39 + 2);
      v54 = *(v39 + 3);
      v9 = v55 + 1;
      if (v55 >= v54 >> 1)
      {
        v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1, v39);
      }

      *(v39 + 2) = v9;
      *&v39[8 * v55 + 32] = v3;
      *(a1 + 24) = v39;
      if (!__OFADD__(v3, 1))
      {
        *(a1 + 8) = v3 + 1;
        Color.ResolvedHDR.encode(to:)(a1);
        ProtobufEncoder.endLengthDelimited()();
        if (v48)
        {
          ProtobufEncoder.encodeVarint(_:)(0x80uLL);
          ProtobufEncoder.encodeVarint(_:)(v48);
        }

        if ((v47 & 1) == 0)
        {
          ProtobufEncoder.encodeVarint(_:)(0x88uLL);
          ProtobufEncoder.encodeVarint(_:)(0);
        }

        return;
      }

      __break(1u);
LABEL_118:
      v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v39 + 2) + 1, 1, v39);
LABEL_64:
      v62 = *(v39 + 2);
      v61 = *(v39 + 3);
      if (v62 >= v61 >> 1)
      {
        v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v62 + 1, 1, v39);
      }

      *(v39 + 2) = v62 + 1;
      *&v39[8 * v62 + 32] = v9;
      *(a1 + 24) = v39;
      v8 = (v9 + 1);
      if (!__OFADD__(v9, 1))
      {
        goto LABEL_95;
      }

      __break(1u);
LABEL_69:
      v63 = v9 & 0xFFFFFFFFFFFFFFFLL;
      v64 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v65 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v108 = *(v63 + 40);
      ProtobufEncoder.encodeVarint(_:)(0x7AuLL);
      v66 = *(a1 + 8);
      v50 = *(a1 + 24);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v50 + 2) + 1, 1, v50);
      }

      v53 = *(v50 + 2);
      v67 = *(v50 + 3);
      v68 = v53 + 1;
      if (v53 >= v67 >> 1)
      {
        v84 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v67 > 1), v53 + 1, 1, v50);
        v68 = v53 + 1;
        v50 = v84;
      }

      *(v50 + 2) = v68;
      *&v50[8 * v53 + 32] = v66;
      *(a1 + 24) = v50;
      if (__OFADD__(v66, 1))
      {
        __break(1u);
LABEL_120:
        v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v50 + 2) + 1, 1, v50);
LABEL_82:
        v73 = *(v50 + 2);
        v72 = *(v50 + 3);
        v49 = v73 + 1;
        if (v73 >= v72 >> 1)
        {
          v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v72 > 1), v73 + 1, 1, v50);
        }

        *(v50 + 2) = v49;
        *&v50[8 * v73 + 32] = v64;
        *(a1 + 24) = v50;
        if (!__OFADD__(v64, 1))
        {
          *(a1 + 8) = v64 + 1;

          ProtobufEncoder.encodeVarint(_:)(0xAuLL);
          v52 = *(a1 + 8);
          v50 = *(a1 + 24);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_86:
            v69 = *(v50 + 2);
            v75 = *(v50 + 3);
            v65 = v69 + 1;
            if (v69 >= v75 >> 1)
            {
              v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v75 > 1), v69 + 1, 1, v50);
            }

            *(v50 + 2) = v65;
            *&v50[8 * v69 + 32] = v52;
            *(a1 + 24) = v50;
            if (!__OFADD__(v52, 1))
            {
              *(a1 + 8) = v52 + 1;
              CodableResolvedStyledText.encode(to:)(a1, v53, v74);
              if (v2)
              {
LABEL_90:

                return;
              }

              ProtobufEncoder.endLengthDelimited()();

              ProtobufEncoder.encodeVarint(_:)(0x12uLL);
              v65 = *(a1 + 8);
              v50 = *(a1 + 24);
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                goto LABEL_100;
              }

              goto LABEL_130;
            }

            __break(1u);
            goto LABEL_128;
          }

LABEL_126:
          v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v50 + 2) + 1, 1, v50);
          goto LABEL_86;
        }

        __break(1u);
LABEL_122:
        v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v50 + 2) + 1, 1, v50);
LABEL_92:
        v81 = *(v50 + 2);
        v80 = *(v50 + 3);
        if (v81 >= v80 >> 1)
        {
          v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v80 > 1), v81 + 1, 1, v50);
        }

        *(v50 + 2) = v81 + 1;
        *&v50[8 * v81 + 32] = v49;
        *(a1 + 24) = v50;
        v8 = (v49 + 1);
        if (__OFADD__(v49, 1))
        {
          __break(1u);
          goto LABEL_124;
        }

LABEL_95:
        *(a1 + 8) = v8;
        CodableViewFactory.encode(to:)(a1);
        if (!v2)
        {
          ProtobufEncoder.endLengthDelimited()();
        }

        outlined destroy of CodableViewFactory(v92);
        __swift_destroy_boxed_opaque_existential_1(v89);
        return;
      }

      *(a1 + 8) = v66 + 1;
      specialized ProtobufEncoder.messageField<A>(_:_:)(1);
      if (v2)
      {
        return;
      }

      ProtobufEncoder.encodeVarint(_:)(0x12uLL);
      v69 = *(a1 + 8);
      v50 = *(a1 + 24);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_128:
        v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v50 + 2) + 1, 1, v50);
      }

      v71 = *(v50 + 2);
      v70 = *(v50 + 3);
      if (v71 >= v70 >> 1)
      {
        v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v70 > 1), v71 + 1, 1, v50);
      }

      *(v50 + 2) = v71 + 1;
      *&v50[8 * v71 + 32] = v69;
      *(a1 + 24) = v50;
      if (__OFADD__(v69, 1))
      {
        __break(1u);
LABEL_130:
        v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v50 + 2) + 1, 1, v50);
LABEL_100:
        v83 = *(v50 + 2);
        v82 = *(v50 + 3);
        if (v83 >= v82 >> 1)
        {
          v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v82 > 1), v83 + 1, 1, v50);
        }

        *(v50 + 2) = v83 + 1;
        *&v50[8 * v83 + 32] = v65;
        *(a1 + 24) = v50;
        if (__OFADD__(v65, 1))
        {
          __break(1u);
        }

        else
        {
          *(a1 + 8) = v65 + 1;
          CGSize.encode(to:)(a1, v6, v7);
          ProtobufEncoder.endLengthDelimited()();
          ProtobufEncoder.endLengthDelimited()();
        }

        return;
      }

      *(a1 + 8) = v69 + 1;
      SDFStyle.encode(to:)(a1, v65);
      if (v2)
      {
        goto LABEL_90;
      }

      ProtobufEncoder.endLengthDelimited()();

      ProtobufEncoder.encodeVarint(_:)(0x18uLL);
      ProtobufEncoder.encodeVarint(_:)(v108);
      ProtobufEncoder.endLengthDelimited()();
      return;
    default:
      v11 = *(v9 + 32);
      v95[0] = *(v9 + 16);
      v95[1] = v11;
      outlined init with copy of BackdropEffect(v95, v89);
      specialized ProtobufEncoder.messageField<A>(_:_:)(11);
      outlined destroy of BackdropEffect(v95);
      return;
  }
}

void closure #1 in DisplayList.Content.Value.encode(to:)(float *a1, __int128 *a2)
{
  v3 = a2;
  v34[2] = *a2;
  v35 = *(a2 + 4);
  ProtobufEncoder.encodeVarint(_:)(0xAuLL);
  v5 = *(a1 + 1);
  v6 = *(a1 + 3);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v8 = *(v6 + 2);
    v7 = *(v6 + 3);
    if (v8 >= v7 >> 1)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v6);
    }

    *(v6 + 2) = v8 + 1;
    *&v6[8 * v8 + 32] = v5;
    *(a1 + 3) = v6;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    *(a1 + 1) = v5 + 1;
    Color.ResolvedHDR.encode(to:)(a1);
    ProtobufEncoder.endLengthDelimited()();
    v9 = *(v3 + 3);
    v10 = *(v9 + 16);
    if (!v10)
    {
LABEL_24:
      v25 = *(v3 + 20);
      if (*(v3 + 20))
      {
        ProtobufEncoder.encodeVarint(_:)(0x18uLL);
        ProtobufEncoder.encodeVarint(_:)(v25);
      }

      return;
    }

    v36 = v3;
    v5 = &v28;
    v3 = (v9 + 32);
    for (i = v10 - 1; ; --i)
    {
      v12 = *v3;
      v13 = v3[1];
      v14 = v3[3];
      v30 = v3[2];
      v31 = v14;
      v28 = v12;
      v29 = v13;
      v15 = v3[4];
      v16 = v3[5];
      v17 = v3[6];
      *(v34 + 12) = *(v3 + 108);
      v33 = v16;
      v34[0] = v17;
      v32 = v15;
      v18 = *(a1 + 1);
      v19 = *(a1 + 2);
      if (v18 >= v19)
      {
        v23 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_30;
        }

        if (v19 < v23)
        {
          outlined init with copy of GraphicsFilter(&v28, v26);
          v24 = ProtobufEncoder.growBufferSlow(to:)(v23);
        }

        else
        {
          *(a1 + 1) = v23;
          v24 = (*a1 + v18);
          outlined init with copy of GraphicsFilter(&v28, v26);
        }

        *v24 = 18;
      }

      else
      {
        *(*a1 + v18) = 18;
        *(a1 + 1) = v18 + 1;
        outlined init with copy of GraphicsFilter(&v28, v26);
      }

      v26[4] = v32;
      v26[5] = v33;
      v27[0] = v34[0];
      *(v27 + 12) = *(v34 + 12);
      v26[0] = v28;
      v26[1] = v29;
      v26[2] = v30;
      v26[3] = v31;
      v20 = *(a1 + 1);
      v6 = *(a1 + 3);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
      }

      v22 = *(v6 + 2);
      v21 = *(v6 + 3);
      if (v22 >= v21 >> 1)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v6);
      }

      *(v6 + 2) = v22 + 1;
      *&v6[8 * v22 + 32] = v20;
      *(a1 + 3) = v6;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      *(a1 + 1) = v20 + 1;
      GraphicsFilter.encode(to:)(a1);
      if (v2)
      {
        outlined destroy of GraphicsFilter(&v28);
        return;
      }

      ProtobufEncoder.endLengthDelimited()();
      outlined destroy of GraphicsFilter(&v28);
      if (!i)
      {
        v3 = v36;
        goto LABEL_24;
      }

      v3 += 8;
    }

    __break(1u);
LABEL_28:
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
  }

  __break(1u);
LABEL_30:
  __break(1u);
}

void closure #2 in DisplayList.Content.Value.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  ProtobufEncoder.encodeVarint(_:)(0xAuLL);
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
  }

  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  if (v11 >= v10 >> 1)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v9);
  }

  *(v9 + 2) = v11 + 1;
  *&v9[8 * v11 + 32] = v8;
  *(a1 + 24) = v9;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
  }

  else
  {
    *(a1 + 8) = v8 + 1;
    Path.encode(to:)(a1);
    if (!v4)
    {
      ProtobufEncoder.endLengthDelimited()();
      specialized ProtobufEncoder.messageField<A>(_:_:)(2, a3);
      if (a4 & 0x100) == 0 || (a4)
      {
        ProtobufEncoder.encodeVarint(_:)(0x1AuLL);
        specialized ProtobufEncoder.encodeMessage<A>(_:)(a4 & 0x101);
      }
    }
  }
}

uint64_t closure #6 in DisplayList.Content.Value.encode(to:)(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = specialized ProtobufEncoder.messageField<A>(_:_:)(1);
  if (v7)
  {
    return result;
  }

  if (a2 != 0.0 || a3 != 0.0)
  {
    ProtobufEncoder.encodeVarint(_:)(0x12uLL);
    v14 = *(a1 + 8);
    v15 = *(a1 + 24);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
    }

    v16 = *(v15 + 2);
    v17 = *(v15 + 3);
    v18 = v16 + 1;
    if (v16 >= v17 >> 1)
    {
      v33 = v16 + 1;
      v21 = v15;
      v22 = v16;
      v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v16 + 1, 1, v21);
      v16 = v22;
      v18 = v33;
      v15 = v23;
    }

    *(v15 + 2) = v18;
    *&v15[8 * v16 + 32] = v14;
    *(a1 + 24) = v15;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_20;
    }

    *(a1 + 8) = v14 + 1;
    CGPoint.encode(to:)(a1, a2, a3);
    ProtobufEncoder.endLengthDelimited()();
  }

  if (one-time initialization token for defaultFlags != -1)
  {
    swift_once();
  }

  v28 = a6;
  v29 = BYTE4(a6);
  v30 = BYTE5(a6);
  v31 = a7;
  v32 = BYTE4(a7);
  v24 = -1;
  v25 = 768;
  v26 = static RasterizationOptions.Flags.defaultFlags;
  v27 = 3;
  result = specialized static RasterizationOptions.== infix(_:_:)(&v28, &v24);
  if ((result & 1) == 0)
  {
    ProtobufEncoder.encodeVarint(_:)(0x1AuLL);
    a6 = *(a1 + 8);
    v15 = *(a1 + 24);
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_14:
      v20 = *(v15 + 2);
      v19 = *(v15 + 3);
      if (v20 >= v19 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v15);
        v15 = result;
      }

      *(v15 + 2) = v20 + 1;
      *&v15[8 * v20 + 32] = a6;
      *(a1 + 24) = v15;
      if (__OFADD__(a6, 1))
      {
        __break(1u);
      }

      else
      {
        *(a1 + 8) = a6 + 1;
        RasterizationOptions.encode(to:)();
        return ProtobufEncoder.endLengthDelimited()();
      }

      return result;
    }

LABEL_20:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
    v15 = result;
    goto LABEL_14;
  }

  return result;
}

void closure #7 in DisplayList.Content.Value.encode(to:)(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  specialized ProtobufEncoder.messageField<A>(_:_:)(1);
  if (v6)
  {
    return;
  }

  if (a2 != 0.0 || a3 != 0.0)
  {
    ProtobufEncoder.encodeVarint(_:)(0x12uLL);
    v12 = *(a1 + 8);
    v13 = *(a1 + 24);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
    }

    v14 = *(v13 + 2);
    v15 = *(v13 + 3);
    v16 = v14 + 1;
    if (v14 >= v15 >> 1)
    {
      v31 = v14 + 1;
      v19 = v13;
      v20 = v14;
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v14 + 1, 1, v19);
      v14 = v20;
      v16 = v31;
      v13 = v21;
    }

    *(v13 + 2) = v16;
    *&v13[8 * v14 + 32] = v12;
    *(a1 + 24) = v13;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_20;
    }

    *(a1 + 8) = v12 + 1;
    CGPoint.encode(to:)(a1, a2, a3);
    ProtobufEncoder.endLengthDelimited()();
  }

  if (one-time initialization token for defaultFlags != -1)
  {
    swift_once();
  }

  v26 = a5;
  v27 = BYTE4(a5);
  v28 = BYTE5(a5);
  v29 = a6;
  v30 = BYTE4(a6);
  v22 = -1;
  v23 = 768;
  v24 = static RasterizationOptions.Flags.defaultFlags;
  v25 = 3;
  if (!specialized static RasterizationOptions.== infix(_:_:)(&v26, &v22))
  {
    ProtobufEncoder.encodeVarint(_:)(0x1AuLL);
    a5 = *(a1 + 8);
    v13 = *(a1 + 24);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_14:
      v18 = *(v13 + 2);
      v17 = *(v13 + 3);
      if (v18 >= v17 >> 1)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v13);
      }

      *(v13 + 2) = v18 + 1;
      *&v13[8 * v18 + 32] = a5;
      *(a1 + 24) = v13;
      if (__OFADD__(a5, 1))
      {
        __break(1u);
      }

      else
      {
        *(a1 + 8) = a5 + 1;
        RasterizationOptions.encode(to:)();
        ProtobufEncoder.endLengthDelimited()();
      }

      return;
    }

LABEL_20:
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
    goto LABEL_14;
  }
}

void closure #1 in DisplayList.Content.Value.init(from:)(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v7 = "nsform";
  if (v5 >= v6)
  {
LABEL_67:
    v8 = 0;
    v39 = *(v7 + 84);
    v9 = MEMORY[0x1E69E7CC0];
    v10 = 2143289344;
LABEL_68:
    *(a1 + 3) = 0;
    v34 = swift_allocObject();
    *(v34 + 16) = v39;
    *(v34 + 32) = v10;
    *(v34 + 36) = v8;
    *(v34 + 40) = v9;
    *a2 = v34 | 0x2000000000000000;
    return;
  }

  v8 = 0;
  v39 = xmmword_18DD85540;
  v9 = MEMORY[0x1E69E7CC0];
  v10 = 2143289344;
  while (1)
  {
    v11 = *(a1 + 3);
    if (v11)
    {
      v12 = *(a1 + 4);
      if (v5 < v12)
      {
        goto LABEL_11;
      }

      if (v12 < v5)
      {
        goto LABEL_69;
      }

      *(a1 + 3) = 0;
    }

    v11 = ProtobufDecoder.decodeVarint()(v11);
    if (v2)
    {
      goto LABEL_70;
    }

    if (v11 < 8)
    {
      goto LABEL_69;
    }

LABEL_11:
    v13 = v11 >> 3;
    if (v11 >> 3 != 3)
    {
      break;
    }

    if ((v11 & 7) != 0)
    {
      if ((v11 & 7) != 2)
      {
        goto LABEL_69;
      }

      v11 = ProtobufDecoder.decodeVarint()(v11);
      if (v2)
      {
        goto LABEL_70;
      }

      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_79;
      }

      v29 = *(a1 + 1) + v11;
      if (v6 < v29)
      {
LABEL_69:
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        swift_willThrow();
LABEL_70:

        return;
      }

      *(a1 + 3) = 24;
      *(a1 + 4) = v29;
    }

    v30 = ProtobufDecoder.decodeVarint()(v11);
    if (v2)
    {
      goto LABEL_70;
    }

    if (v30 == 1)
    {
      v8 = 1;
    }

    else if (v30 == 2)
    {
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }

LABEL_4:
    v5 = *(a1 + 1);
    if (v5 >= v6)
    {
      goto LABEL_68;
    }
  }

  if (v13 == 2)
  {
    if ((v11 & 7) != 2)
    {
      goto LABEL_69;
    }

    ProtobufDecoder.beginMessage()();
    if (v2)
    {
      goto LABEL_70;
    }

    GraphicsFilter.init(from:)(a1, v47);
    v23 = *(a1 + 5);
    if (!*(v23 + 2))
    {
      goto LABEL_76;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v24 = *(v23 + 2);
      if (!v24)
      {
        goto LABEL_77;
      }
    }

    else
    {
      v23 = specialized _ArrayBuffer._consumeAndCreateNew()(v23);
      v24 = *(v23 + 2);
      if (!v24)
      {
        goto LABEL_77;
      }
    }

    v25 = v24 - 1;
    v6 = *&v23[8 * v25 + 32];
    *(v23 + 2) = v25;
    *(a1 + 5) = v23;
    *(a1 + 2) = v6;
    v44 = v47[4];
    v45 = v47[5];
    *v46 = v48[0];
    *&v46[12] = *(v48 + 12);
    v40 = v47[0];
    v41 = v47[1];
    v42 = v47[2];
    v43 = v47[3];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
    }

    v27 = *(v9 + 2);
    v26 = *(v9 + 3);
    if (v27 >= v26 >> 1)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v9);
    }

    *(v9 + 2) = v27 + 1;
    v28 = &v9[128 * v27];
    *(v28 + 4) = v42;
    *(v28 + 5) = v43;
    *(v28 + 2) = v40;
    *(v28 + 3) = v41;
    *(v28 + 140) = *&v46[12];
    *(v28 + 7) = v45;
    *(v28 + 8) = *v46;
    *(v28 + 6) = v44;
    goto LABEL_4;
  }

  if (v13 != 1)
  {
    v31 = v11 & 7;
    if (v31 > 1)
    {
      if (v31 == 2)
      {
        v33 = ProtobufDecoder.decodeVarint()(v11);
        if (v2)
        {
          goto LABEL_70;
        }

        if (v33 < 0)
        {
          goto LABEL_80;
        }

        v32 = *(a1 + 1) + v33;
        if (v6 < v32)
        {
          goto LABEL_69;
        }
      }

      else
      {
        if (v31 != 5)
        {
          goto LABEL_69;
        }

        v32 = *(a1 + 1) + 4;
        if (v6 < v32)
        {
          goto LABEL_69;
        }
      }
    }

    else
    {
      if ((v11 & 7) == 0)
      {
        ProtobufDecoder.decodeVarint()(v11);
        if (v2)
        {
          goto LABEL_70;
        }

        goto LABEL_4;
      }

      if (v31 != 1)
      {
        goto LABEL_69;
      }

      v32 = *(a1 + 1) + 8;
      if (v6 < v32)
      {
        goto LABEL_69;
      }
    }

    *(a1 + 1) = v32;
    goto LABEL_4;
  }

  if ((v11 & 7) != 2)
  {
    goto LABEL_69;
  }

  v14 = *(a1 + 5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 16) + 1, 1, v14);
    v14 = isUniquelyReferenced_nonNull_native;
  }

  v17 = *(v14 + 16);
  v16 = *(v14 + 24);
  if (v17 >= v16 >> 1)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v14);
    v14 = isUniquelyReferenced_nonNull_native;
  }

  *(v14 + 16) = v17 + 1;
  *(v14 + 8 * v17 + 32) = v6;
  *(a1 + 5) = v14;
  v18 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
  if (v2)
  {
    goto LABEL_70;
  }

  if ((v18 & 0x8000000000000000) == 0)
  {
    v19 = *(a1 + 1) + v18;
    if (v6 < v19)
    {
      goto LABEL_69;
    }

    *(a1 + 2) = v19;
    specialized Color.ResolvedHDR.init(from:)(a1, &v49);
    v20 = *(a1 + 5);
    if (!*(v20 + 2))
    {
      goto LABEL_78;
    }

    v39 = v49;
    v10 = v50;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v21 = *(v20 + 2);
      if (!v21)
      {
        goto LABEL_66;
      }
    }

    else
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
      v21 = *(v20 + 2);
      if (!v21)
      {
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }
    }

    v22 = v21 - 1;
    v6 = *&v20[8 * v22 + 32];
    *(v20 + 2) = v22;
    *(a1 + 5) = v20;
    *(a1 + 2) = v6;
    goto LABEL_4;
  }

  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
  __break(1u);
  v35 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
  v36 = *(v35 + 2);
  if (v36)
  {
LABEL_74:
    v37 = v36 - 1;
    v38 = *&v35[8 * v37 + 32];
    *(v35 + 2) = v37;

    *(a1 + 5) = v35;
    *(a1 + 2) = v38;
    return;
  }

  __break(1u);
  v35 = *(a1 + 5);
  if (!*(v35 + 2))
  {
    __break(1u);
LABEL_83:
    v35 = specialized _ArrayBuffer._consumeAndCreateNew()(v35);
    v36 = *(v35 + 2);
    if (!v36)
    {
      goto LABEL_84;
    }

    goto LABEL_74;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_83;
  }

  v36 = *(v35 + 2);
  if (v36)
  {
    goto LABEL_74;
  }

LABEL_84:
  __break(1u);
}

void closure #3 in DisplayList.Content.Value.init(from:)(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 16) = 0;
  *(v5 + 40) = 2143289344;
  v6 = *(a1 + 1);
  v7 = *(a1 + 2);
  if (v6 < v7)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v12 = *(a1 + 3);
      if (v12)
      {
        v13 = *(a1 + 4);
        if (v6 < v13)
        {
          goto LABEL_11;
        }

        if (v13 < v6)
        {
          goto LABEL_69;
        }

        *(a1 + 3) = 0;
      }

      v12 = ProtobufDecoder.decodeVarint()(v12);
      if (v2)
      {
        goto LABEL_71;
      }

      if (v12 < 8)
      {
        goto LABEL_69;
      }

LABEL_11:
      v14 = v12 >> 3;
      if (v12 >> 3 == 3)
      {
        if ((v12 & 7) != 0)
        {
          if ((v12 & 7) != 2)
          {
            goto LABEL_69;
          }

          v12 = ProtobufDecoder.decodeVarint()(v12);
          if (v2)
          {
LABEL_71:

LABEL_72:

            return;
          }

          if ((v12 & 0x8000000000000000) != 0)
          {
            goto LABEL_84;
          }

          v37 = *(a1 + 1) + v12;
          if (v7 < v37)
          {
LABEL_69:

LABEL_70:
            lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
            swift_allocError();
            swift_willThrow();
            goto LABEL_72;
          }

          *(a1 + 3) = 24;
          *(a1 + 4) = v37;
        }

        v38 = ProtobufDecoder.decodeVarint()(v12);
        if (v2)
        {
          goto LABEL_71;
        }

        if (HIDWORD(v38))
        {
          v10 = 0;
        }

        else
        {
          v10 = v38;
        }
      }

      else if (v14 == 2)
      {
        if ((v12 & 7) != 2)
        {
          goto LABEL_69;
        }

        v49 = v8;
        v53 = v11;
        v8 = a2;
        v25 = *(a1 + 5);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 16) + 1, 1, v25);
          v25 = isUniquelyReferenced_nonNull_native;
        }

        v29 = *(v25 + 16);
        v28 = *(v25 + 24);
        if (v29 >= v28 >> 1)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v25);
          v25 = isUniquelyReferenced_nonNull_native;
        }

        *(v25 + 16) = v29 + 1;
        *(v25 + 8 * v29 + 32) = v7;
        *(a1 + 5) = v25;
        v30 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
        if (v2)
        {
          goto LABEL_71;
        }

        if (v30 < 0)
        {
          goto LABEL_80;
        }

        v31 = *(a1 + 1) + v30;
        if (v7 < v31)
        {

          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          swift_willThrow();
          goto LABEL_72;
        }

        *(a1 + 2) = v31;
        v32 = specialized SDFStyle.init(from:)(a1);
        v33 = *(a1 + 5);
        if (!*(v33 + 2))
        {
          goto LABEL_81;
        }

        v5 = v32;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v34 = *(v33 + 2);
          if (!v34)
          {
            goto LABEL_83;
          }
        }

        else
        {
          v33 = specialized _ArrayBuffer._consumeAndCreateNew()(v33);
          v34 = *(v33 + 2);
          if (!v34)
          {
            goto LABEL_83;
          }
        }

        v35 = v34 - 1;
        v7 = *&v33[8 * v35 + 32];
        *(v33 + 2) = v35;

        *(a1 + 5) = v33;
        *(a1 + 2) = v7;
        v36 = v8;
        v11 = v53;
        v8 = v49;
        v9 = v27;
        a2 = v36;
      }

      else if (v14 == 1)
      {
        v8 = v2;
        v15 = v12;

        if ((v15 & 7) != 2)
        {
          goto LABEL_70;
        }

        v16 = *(a1 + 5);
        v17 = swift_isUniquelyReferenced_nonNull_native();
        if ((v17 & 1) == 0)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 16) + 1, 1, v16);
          v16 = v17;
        }

        v19 = *(v16 + 16);
        v18 = *(v16 + 24);
        if (v19 >= v18 >> 1)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v16);
          v16 = v17;
        }

        *(v16 + 16) = v19 + 1;
        *(v16 + 8 * v19 + 32) = v7;
        *(a1 + 5) = v16;
        v20 = ProtobufDecoder.decodeVarint()(v17);
        if (v2)
        {
          goto LABEL_72;
        }

        if (v20 < 0)
        {
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
          __break(1u);
          __break(1u);
          v46 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
          v47 = *(v46 + 2);
          if (v47)
          {
            v43 = v47 - 1;
            v44 = *&v46[8 * v43 + 32];
            *(v46 + 2) = v43;
          }

          else
          {
            __break(1u);
            v46 = specialized _ArrayBuffer._consumeAndCreateNew()(v46);
            v48 = *(v46 + 2);
            if (!v48)
            {
              __break(1u);
              return;
            }

            v45 = v48 - 1;
            v44 = *&v46[8 * v45 + 32];
            *(v46 + 2) = v45;
          }

          *(a1 + 5) = v46;
          *(a1 + 2) = v44;
          return;
        }

        v21 = *(a1 + 1) + v20;
        if (v7 < v21)
        {
          goto LABEL_70;
        }

        *(a1 + 2) = v21;
        DisplayList.init(from:)(a1, &v50);
        v22 = *(a1 + 5);
        if (!*(v22 + 2))
        {
          goto LABEL_82;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v23 = *(v22 + 2);
          if (!v23)
          {
            goto LABEL_66;
          }
        }

        else
        {
          v22 = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
          v23 = *(v22 + 2);
          if (!v23)
          {
LABEL_66:
            __break(1u);
            break;
          }
        }

        v24 = v23 - 1;
        v7 = *&v22[8 * v24 + 32];
        *(v22 + 2) = v24;
        *(a1 + 5) = v22;
        *(a1 + 2) = v7;
        v11 = v50;
        v9 = v51;
        v8 = v52;
      }

      else
      {
        v39 = v12 & 7;
        if (v39 > 1)
        {
          if (v39 == 2)
          {
            v41 = ProtobufDecoder.decodeVarint()(v12);
            if (v2)
            {
              goto LABEL_71;
            }

            if (v41 < 0)
            {
              goto LABEL_85;
            }

            v40 = *(a1 + 1) + v41;
            if (v7 < v40)
            {
              goto LABEL_69;
            }
          }

          else
          {
            if (v39 != 5)
            {
              goto LABEL_69;
            }

            v40 = *(a1 + 1) + 4;
            if (v7 < v40)
            {
              goto LABEL_69;
            }
          }

          goto LABEL_3;
        }

        if ((v12 & 7) != 0)
        {
          if (v39 != 1)
          {
            goto LABEL_69;
          }

          v40 = *(a1 + 1) + 8;
          if (v7 < v40)
          {
            goto LABEL_69;
          }

LABEL_3:
          *(a1 + 1) = v40;
          goto LABEL_4;
        }

        ProtobufDecoder.decodeVarint()(v12);
        if (v2)
        {
          goto LABEL_71;
        }
      }

LABEL_4:
      v6 = *(a1 + 1);
      if (v6 >= v7)
      {
        goto LABEL_68;
      }
    }
  }

  LODWORD(v8) = 0;
  LOWORD(v9) = 0;
  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
LABEL_68:
  *(a1 + 3) = 0;
  v42 = swift_allocObject();
  *(v42 + 16) = v11;
  *(v42 + 24) = v9;
  *(v42 + 28) = v8;
  *(v42 + 32) = v5;
  *(v42 + 40) = v10;
  *(v42 + 44) = 0;
  *a2 = v42 | 0x6000000000000000;
}

void closure #4 in DisplayList.Content.Value.init(from:)(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[1];
  v6 = a1[2];
  v7 = "nsform";
  if (v5 >= v6)
  {
    goto LABEL_56;
  }

  v8 = 0;
  v52 = 0;
  v53 = 0;
  v9 = 0;
  v10 = 0;
  v51 = xmmword_18DD85540;
  v11 = 6;
  v12 = 0;
  v13 = 0.5;
  v14 = 2143289344;
  v15 = 0;
  v16 = 0;
  while (1)
  {
    v17 = a1[3];
    if (v17)
    {
      v18 = a1[4];
      if (v5 < v18)
      {
        goto LABEL_11;
      }

      if (v18 < v5)
      {
        goto LABEL_58;
      }

      a1[3] = 0;
    }

    v17 = ProtobufDecoder.decodeVarint()(v17);
    if (v2)
    {
      goto LABEL_59;
    }

    if (v17 < 8)
    {
      goto LABEL_58;
    }

LABEL_11:
    if (v17 >> 3 == 2)
    {
      break;
    }

    if (v17 >> 3 == 1)
    {
      if ((v17 & 7) != 2)
      {
        goto LABEL_58;
      }

      v3 = v2;
      v19 = a1[5];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 2) + 1, 1, v19);
        v19 = isUniquelyReferenced_nonNull_native;
      }

      v22 = *(v19 + 2);
      v21 = *(v19 + 3);
      if (v22 >= v21 >> 1)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v19);
        v19 = isUniquelyReferenced_nonNull_native;
      }

      *(v19 + 2) = v22 + 1;
      *&v19[8 * v22 + 32] = v6;
      a1[5] = v19;
      v23 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
      if (v2)
      {
        goto LABEL_59;
      }

      if (v23 < 0)
      {
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
        __break(1u);
        do
        {
          __break(1u);
          v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
          v43 = *(v9 + 2);
          if (v43)
          {
            goto LABEL_63;
          }

          __break(1u);
          v3 = v9;
          v9 = a1[5];
        }

        while (!*(v9 + 2));
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v43 = *(v9 + 2);
          if (v43)
          {
LABEL_63:
            v44 = v43 - 1;
            v45 = *&v9[8 * v44 + 32];
            *(v9 + 2) = v44;
            outlined consume of Path.Storage(v52, v53, v3, v10, v11);
            a1[5] = v9;
            a1[2] = v45;
            return;
          }
        }

        else
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
          v43 = *(v9 + 2);
          if (v43)
          {
            goto LABEL_63;
          }
        }

        __break(1u);
        return;
      }

      v24 = a1[1] + v23;
      if (v6 < v24)
      {
        goto LABEL_58;
      }

      a1[2] = v24;
      specialized Path.init(from:)(a1, v62);
      v25 = a1[5];
      if (!*(v25 + 2))
      {
        goto LABEL_66;
      }

      v26 = v9;
      v48 = v10;
      v49 = v11;
      v3 = v62[0];
      v27 = v62[1];
      v9 = v62[2];
      v10 = v62[3];
      v11 = v63;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v28 = *(v25 + 2);
        if (!v28)
        {
          goto LABEL_68;
        }
      }

      else
      {
        v25 = specialized _ArrayBuffer._consumeAndCreateNew()(v25);
        v28 = *(v25 + 2);
        if (!v28)
        {
          goto LABEL_68;
        }
      }

      v29 = v28 - 1;
      v6 = *&v25[8 * v29 + 32];
      *(v25 + 2) = v29;
      outlined consume of Path.Storage(v52, v53, v26, v48, v49);
      v52 = v3;
      v53 = v27;
      a1[5] = v25;
      a1[2] = v6;
      v8 = v50;
    }

    else
    {
      v39 = v17 & 7;
      if (v39 > 1)
      {
        if (v39 == 2)
        {
          v41 = ProtobufDecoder.decodeVarint()(v17);
          if (v2)
          {
            goto LABEL_59;
          }

          if (v41 < 0)
          {
            goto LABEL_69;
          }

          v40 = a1[1] + v41;
          if (v6 < v40)
          {
            goto LABEL_58;
          }
        }

        else
        {
          if (v39 != 5)
          {
            goto LABEL_58;
          }

          v40 = a1[1] + 4;
          if (v6 < v40)
          {
            goto LABEL_58;
          }
        }

        goto LABEL_3;
      }

      if ((v17 & 7) != 0)
      {
        if (v39 != 1)
        {
          goto LABEL_58;
        }

        v40 = a1[1] + 8;
        if (v6 < v40)
        {
          goto LABEL_58;
        }

LABEL_3:
        a1[1] = v40;
        goto LABEL_4;
      }

      ProtobufDecoder.decodeVarint()(v17);
      if (v2)
      {
        goto LABEL_59;
      }
    }

LABEL_4:
    v5 = a1[1];
    if (v5 >= v6)
    {
      goto LABEL_57;
    }
  }

  if ((v17 & 7) != 2)
  {
    goto LABEL_58;
  }

  v3 = v2;
  v30 = a1[5];
  v31 = swift_isUniquelyReferenced_nonNull_native();
  if ((v31 & 1) == 0)
  {
    v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 2) + 1, 1, v30);
    v30 = v31;
  }

  v33 = *(v30 + 2);
  v32 = *(v30 + 3);
  if (v33 >= v32 >> 1)
  {
    v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v30);
    v30 = v31;
  }

  *(v30 + 2) = v33 + 1;
  *&v30[8 * v33 + 32] = v6;
  a1[5] = v30;
  v34 = ProtobufDecoder.decodeVarint()(v31);
  if (v2)
  {
    goto LABEL_59;
  }

  if (v34 < 0)
  {
    goto LABEL_65;
  }

  v35 = a1[1] + v34;
  if (v6 >= v35)
  {
    a1[2] = v35;
    ResolvedShadowStyle.init(from:)(a1, &v54);
    v36 = a1[5];
    if (!*(v36 + 2))
    {
      goto LABEL_67;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v37 = *(v36 + 2);
      if (!v37)
      {
        goto LABEL_55;
      }

      goto LABEL_36;
    }

    v36 = specialized _ArrayBuffer._consumeAndCreateNew()(v36);
    v37 = *(v36 + 2);
    if (v37)
    {
LABEL_36:
      v38 = v37 - 1;
      v6 = *&v36[8 * v38 + 32];
      *(v36 + 2) = v38;
      a1[5] = v36;
      a1[2] = v6;
      v51 = v54;
      v14 = v55;
      v46 = v56;
      v16 = v57;
      v15 = v58;
      v12 = v59;
      v13 = v60;
      v8 = v61;
      goto LABEL_4;
    }

LABEL_55:
    __break(1u);
LABEL_56:
    LOBYTE(v8) = 0;
    v52 = 0;
    v53 = 0;
    v9 = 0;
    v10 = 0;
    v51 = *(v7 + 84);
    v11 = 6;
    v13 = 0.5;
    v16 = 0;
    v14 = 2143289344;
    v15 = 0;
    v12 = 0;
LABEL_57:
    a1[3] = 0;
    v42 = swift_allocObject();
    *(v42 + 16) = v52;
    *(v42 + 24) = v53;
    *(v42 + 32) = v9;
    *(v42 + 40) = v10;
    *(v42 + 48) = v11;
    *(v42 + 56) = v51;
    *(v42 + 72) = v14;
    *(v42 + 76) = v46;
    *(v42 + 80) = v16;
    *(v42 + 88) = v15;
    *(v42 + 96) = v12;
    *(v42 + 104) = v13;
    *(v42 + 108) = v8;
    *a2 = v42 | 0x7000000000000000;
    return;
  }

LABEL_58:
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  swift_willThrow();
LABEL_59:
  outlined consume of Path.Storage(v52, v53, v9, v10, v11);
}

void closure #6 in DisplayList.Content.Value.init(from:)(void *a1@<X0>, unint64_t *a2@<X8>)
{
  if (one-time initialization token for defaultFlags != -1)
  {
    v2 = v3;
    swift_once();
  }

  v6 = static RasterizationOptions.Flags.defaultFlags;
  v7 = a1[1];
  v8 = a1[2];
  if (v7 >= v8)
  {
    v59 = 0;
    v9 = 0;
    v58 = 3;
    v53 = -1;
    v54 = 0;
    v10 = 0;
    v11 = MEMORY[0x1E69E7CC0];
    v12 = 0;
    v52 = 3;
LABEL_6:
    a1[3] = 0;
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    *(v13 + 24) = v59;
    *(v13 + 28) = v54;
    *(v13 + 32) = v10;
    *(v13 + 40) = v12;
    *(v13 + 48) = v53;
    *(v13 + 52) = v9;
    *(v13 + 53) = v58;
    *(v13 + 56) = v6;
    *(v13 + 60) = v52;
    *a2 = v13 | 0xB000000000000000;
    return;
  }

  v59 = 0;
  v9 = 0;
  v58 = 3;
  v53 = -1;
  v54 = 0;
  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  v12 = 0;
  v52 = 3;
  while (1)
  {
    v14 = a1[3];
    if (v14)
    {
      v15 = a1[4];
      if (v7 < v15)
      {
        goto LABEL_15;
      }

      if (v15 < v7)
      {
        goto LABEL_74;
      }

      a1[3] = 0;
    }

    v14 = ProtobufDecoder.decodeVarint()(v14);
    if (v3)
    {
      goto LABEL_76;
    }

    if (v14 < 8)
    {
      goto LABEL_74;
    }

LABEL_15:
    v16 = v14 >> 3;
    if (v14 >> 3 == 3)
    {
      if ((v14 & 7) != 2)
      {
        goto LABEL_74;
      }

      v37 = a1[5];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v37 + 16) + 1, 1, v37);
        v37 = isUniquelyReferenced_nonNull_native;
      }

      v40 = *(v37 + 16);
      v39 = *(v37 + 24);
      if (v40 >= v39 >> 1)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v37);
        v37 = isUniquelyReferenced_nonNull_native;
      }

      *(v37 + 16) = v40 + 1;
      *(v37 + 8 * v40 + 32) = v8;
      a1[5] = v37;
      v41 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
      if (v3)
      {
LABEL_76:

        return;
      }

      if (v41 < 0)
      {
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
        __break(1u);
LABEL_98:
        __break(1u);
        do
        {
          __break(1u);
          v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
          v49 = *(v2 + 16);
          if (v49)
          {
            goto LABEL_88;
          }

          __break(1u);

          v2 = a1[5];
          if (!*(v2 + 16))
          {
            goto LABEL_98;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
          }

          v49 = *(v2 + 16);
          if (v49)
          {
            goto LABEL_88;
          }

          __break(1u);
          v2 = a1[5];
        }

        while (!*(v2 + 16));
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v49 = *(v2 + 16);
          if (v49)
          {
LABEL_88:
            v50 = v49 - 1;
            v51 = *(v2 + 8 * v50 + 32);
            *(v2 + 16) = v50;
            a1[5] = v2;
            a1[2] = v51;
            return;
          }
        }

        else
        {
          v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
          v49 = *(v2 + 16);
          if (v49)
          {
            goto LABEL_88;
          }
        }

        __break(1u);
        return;
      }

      v42 = a1[1] + v41;
      if (v8 < v42)
      {
        goto LABEL_74;
      }

      a1[2] = v42;
      RasterizationOptions.init(from:)(a1, &v55);
      v43 = a1[5];
      if (!*(v43 + 2))
      {
        goto LABEL_93;
      }

      v2 = 0;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v44 = *(v43 + 2);
        if (!v44)
        {
          goto LABEL_95;
        }
      }

      else
      {
        v43 = specialized _ArrayBuffer._consumeAndCreateNew()(v43);
        v44 = *(v43 + 2);
        if (!v44)
        {
          goto LABEL_95;
        }
      }

      v45 = v44 - 1;
      v8 = *&v43[8 * v45 + 32];
      *(v43 + 2) = v45;
      a1[5] = v43;
      a1[2] = v8;
      v9 = BYTE4(v55);
      v58 = BYTE5(v55);
      v6 = v56;
      v52 = v57;
      v53 = v55;
      goto LABEL_8;
    }

    if (v16 == 2)
    {
      if ((v14 & 7) != 2)
      {
        goto LABEL_74;
      }

      v27 = a1[5];
      v28 = swift_isUniquelyReferenced_nonNull_native();
      if ((v28 & 1) == 0)
      {
        v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 16) + 1, 1, v27);
        v27 = v28;
      }

      v2 = *(v27 + 16);
      v29 = *(v27 + 24);
      if (v2 >= v29 >> 1)
      {
        v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v2 + 1, 1, v27);
        v27 = v28;
      }

      *(v27 + 16) = v2 + 1;
      *(v27 + 8 * v2 + 32) = v8;
      a1[5] = v27;
      v30 = ProtobufDecoder.decodeVarint()(v28);
      if (v3)
      {
        goto LABEL_76;
      }

      if (v30 < 0)
      {
        goto LABEL_91;
      }

      v31 = a1[1] + v30;
      if (v8 < v31)
      {
        goto LABEL_74;
      }

      a1[2] = v31;
      specialized CGPoint.init(from:)(a1);
      v34 = a1[5];
      if (!*(v34 + 2))
      {
        goto LABEL_92;
      }

      v10 = v32;
      v12 = v33;
      v2 = 0;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = specialized _ArrayBuffer._consumeAndCreateNew()(v34);
      }

      v35 = *(v34 + 2);
      if (!v35)
      {
        goto LABEL_96;
      }

      v36 = v35 - 1;
      v8 = *&v34[8 * v36 + 32];
      *(v34 + 2) = v36;
      a1[5] = v34;
      a1[2] = v8;
      goto LABEL_8;
    }

    if (v16 == 1)
    {
      break;
    }

    v46 = v14 & 7;
    if (v46 > 1)
    {
      if (v46 == 2)
      {
        v48 = ProtobufDecoder.decodeVarint()(v14);
        if (v3)
        {
          goto LABEL_76;
        }

        if (v48 < 0)
        {
          goto LABEL_97;
        }

        v47 = a1[1] + v48;
        if (v8 < v47)
        {
          goto LABEL_74;
        }
      }

      else
      {
        if (v46 != 5)
        {
          goto LABEL_74;
        }

        v47 = a1[1] + 4;
        if (v8 < v47)
        {
          goto LABEL_74;
        }
      }

      goto LABEL_7;
    }

    if ((v14 & 7) != 0)
    {
      if (v46 != 1)
      {
        goto LABEL_74;
      }

      v47 = a1[1] + 8;
      if (v8 < v47)
      {
        goto LABEL_74;
      }

LABEL_7:
      a1[1] = v47;
      goto LABEL_8;
    }

    ProtobufDecoder.decodeVarint()(v14);
    if (v3)
    {
      goto LABEL_76;
    }

LABEL_8:
    v7 = a1[1];
    if (v7 >= v8)
    {
      goto LABEL_6;
    }
  }

  v2 = v3;
  v17 = v14;

  if ((v17 & 7) != 2)
  {
    goto LABEL_75;
  }

  v18 = a1[5];
  v19 = swift_isUniquelyReferenced_nonNull_native();
  if ((v19 & 1) == 0)
  {
    v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 16) + 1, 1, v18);
    v18 = v19;
  }

  v21 = *(v18 + 16);
  v20 = *(v18 + 24);
  if (v21 >= v20 >> 1)
  {
    v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v18);
    v18 = v19;
  }

  *(v18 + 16) = v21 + 1;
  *(v18 + 8 * v21 + 32) = v8;
  a1[5] = v18;
  v22 = ProtobufDecoder.decodeVarint()(v19);
  if (v3)
  {
    return;
  }

  if (v22 < 0)
  {
    goto LABEL_90;
  }

  v23 = a1[1] + v22;
  if (v8 < v23)
  {
    goto LABEL_75;
  }

  a1[2] = v23;
  DisplayList.init(from:)(a1, &v55);
  v24 = a1[5];
  if (!*(v24 + 2))
  {
    goto LABEL_94;
  }

  v2 = 0;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v25 = *(v24 + 2);
    if (!v25)
    {
      goto LABEL_73;
    }

    goto LABEL_29;
  }

  v24 = specialized _ArrayBuffer._consumeAndCreateNew()(v24);
  v25 = *(v24 + 2);
  if (v25)
  {
LABEL_29:
    v26 = v25 - 1;
    v8 = *&v24[8 * v26 + 32];
    *(v24 + 2) = v26;
    a1[5] = v24;
    a1[2] = v8;
    v11 = v55;
    v59 = v56;
    v54 = v57;
    goto LABEL_8;
  }

LABEL_73:
  __break(1u);
LABEL_74:

LABEL_75:
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  swift_willThrow();
}

unint64_t closure #8 in DisplayList.Content.Value.init(from:)@<X0>(unint64_t result@<X0>, unint64_t *a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  if (v5 >= v6)
  {
    v12 = 0xE000000000000000;
LABEL_36:
    v3[3] = 0;
    *a2 = v12;
    return result;
  }

  v7 = 0;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v8 = v3[4];
      if (v5 < v8)
      {
        goto LABEL_11;
      }

      if (v8 < v5)
      {
        goto LABEL_34;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()(result);
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
LABEL_34:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_11:
    v9 = result & 7;
    if ((result & 0xFFFFFFFFFFFFFFF8) == 8)
    {
      break;
    }

    if ((result & 7) > 1)
    {
      if (v9 == 2)
      {
        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_40;
        }

        v11 = v3[1] + result;
        if (v6 < v11)
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (v9 != 5)
        {
          goto LABEL_34;
        }

        v11 = v3[1] + 4;
        if (v6 < v11)
        {
          goto LABEL_34;
        }
      }
    }

    else
    {
      if ((result & 7) == 0)
      {
        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

        goto LABEL_4;
      }

      if (v9 != 1)
      {
        goto LABEL_34;
      }

      v11 = v3[1] + 8;
      if (v6 < v11)
      {
        goto LABEL_34;
      }
    }

    v3[1] = v11;
LABEL_4:
    v5 = v3[1];
    if (v5 >= v6)
    {
      v12 = v7 | 0xE000000000000000;
      goto LABEL_36;
    }
  }

  if ((result & 7) == 0)
  {
LABEL_18:
    result = ProtobufDecoder.decodeVarint()(result);
    if (v2)
    {
      return result;
    }

    v7 = result;
    goto LABEL_4;
  }

  if (v9 != 2)
  {
    goto LABEL_34;
  }

  result = ProtobufDecoder.decodeVarint()(result);
  if (v2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v10 = v3[1] + result;
    if (v6 < v10)
    {
      goto LABEL_34;
    }

    v3[3] = 8;
    v3[4] = v10;
    goto LABEL_18;
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

void DisplayList.Effect.encode(to:)(char *a1)
{
  v6 = *v1;
  v7 = *(v1 + 8);
  switch(*(v1 + 12))
  {
    case 1:
      goto LABEL_30;
    case 2:
      v6 = v6;
      v9 = 80;
      goto LABEL_15;
    case 3:
      goto LABEL_48;
    case 4:
      v49 = a1;
      ProtobufEncoder.encodeVarint(_:)(0x1DuLL);
      v56 = *(a1 + 1);
      isUniquelyReferenced_nonNull_native = v56 + 4;
      if (__OFADD__(v56, 4))
      {
        goto LABEL_102;
      }

      if (*(a1 + 2) < isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_107;
      }

      *(a1 + 1) = isUniquelyReferenced_nonNull_native;
      *(*a1 + v56) = v6;
      return;
    case 5:
      ProtobufEncoder.encodeVarint(_:)(0x22uLL);
      specialized ProtobufEncoder.encodeMessage<A>(_:)(v6, v7 & 1);
      return;
    case 6:
      v62 = *(v6 + 32);
      v80[0] = *(v6 + 16);
      v80[1] = v62;
      v81 = *(v6 + 48);
      LOWORD(v60) = *(v6 + 49);
      v3 = *(v6 + 50);
      LODWORD(v6) = *(v6 + 52);
      ProtobufEncoder.encodeVarint(_:)(0x2AuLL);
      v4 = *(a1 + 1);
      v49 = *(a1 + 3);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_73;
      }

      goto LABEL_105;
    case 7:
      v15 = *(v6 + 16);
      v71 = *(v6 + 32);
      ProtobufEncoder.encodeVarint(_:)(0x32uLL);
      v5 = *(a1 + 1);
      v12 = *(a1 + 3);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_18;
      }

      goto LABEL_96;
    case 8:
      v61 = *(v6 + 32);
      v82[0] = *(v6 + 16);
      v82[1] = v61;
      v82[2] = *(v6 + 48);
      v83 = *(v6 + 64);
      outlined init with copy of SDFShape(v82, &v73);
      specialized ProtobufEncoder.messageField<A>(_:_:)(24);
      outlined destroy of SDFShape(v82);
      return;
    case 9:
      v20 = *(v6 + 16);
      v19 = *(v6 + 24);
      v22 = *(v6 + 32);
      v21 = *(v6 + 40);
      v24 = *(v6 + 48);
      v23 = *(v6 + 56);
      if (*(v6 + 88) > 1u)
      {
        if (*(v6 + 88) == 2)
        {
          ProtobufEncoder.encodeVarint(_:)(0xAAuLL);
          specialized ProtobufEncoder.encodeMessage<A>(_:)(v20, v19, v22);
        }

        else
        {
          v92 = *(v6 + 16);
          v93 = v19;
          v94 = v22;
          v95 = v21;
          v96 = v24;
          v97 = v23;
          v98 = *(v6 + 64);
          v99 = *(v6 + 80);
          specialized ProtobufEncoder.messageField<A>(_:_:)(22);
        }
      }

      else if (*(v6 + 88))
      {
        v89[0] = *(v6 + 16);
        *&v89[1] = v19;
        *&v89[2] = v22;
        v89[3] = v21;
        v89[4] = v24;
        v89[5] = v23;
        v90 = *(v6 + 64);
        v91 = *(v6 + 80);
        ProtobufEncoder.encodeVarint(_:)(0x42uLL);
        specialized ProtobufEncoder.encodeMessage<A>(_:)(v89);
      }

      else
      {
        *&v84 = *(v6 + 16);
        *(&v84 + 1) = v19;
        v85 = v22;
        v86 = v21;
        v87 = v24;
        v88 = v23;
        ProtobufEncoder.encodeVarint(_:)(0x3AuLL);
        specialized ProtobufEncoder.encodeMessage<A>(_:)(&v84);
      }

      return;
    case 0xA:
      v25 = *(v6 + 96);
      v100[4] = *(v6 + 80);
      v100[5] = v25;
      v101[0] = *(v6 + 112);
      *(v101 + 12) = *(v6 + 124);
      v26 = *(v6 + 32);
      v100[0] = *(v6 + 16);
      v100[1] = v26;
      v27 = *(v6 + 64);
      v100[2] = *(v6 + 48);
      v100[3] = v27;
      outlined init with copy of GraphicsFilter(v100, &v73);
      specialized ProtobufEncoder.messageField<A>(_:_:)(9);
      outlined destroy of GraphicsFilter(v100);
      return;
    case 0xB:
      outlined init with copy of AnyTrackedValue(v6 + 16, &v73);
      outlined init with copy of AnyTrackedValue(&v73, v77);
      ProtobufEncoder.encodeVarint(_:)(0x5AuLL);
      v7 = *(a1 + 1);
      v49 = *(a1 + 3);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_57;
      }

      goto LABEL_100;
    case 0xC:
      v16 = *(v6 + 16);
      v17 = *(v6 + 24) | (*(v6 + 28) << 32);
      v18 = *(v6 + 29);
      outlined copy of ContentTransition.Storage(v16, v17, v18);

      specialized ProtobufEncoder.messageField<A>(_:_:)(16);
      outlined consume of ContentTransition.Storage(v16, v17, v18);

      return;
    case 0xD:
      outlined init with copy of AnyTrackedValue(v6 + 16, &v73);
      v30 = v75;
      v31 = v76;
      v32 = __swift_project_boxed_opaque_existential_1(&v73, v75);
      v78 = v30;
      v79 = *(v31 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v77);
      (*(*(v30 - 8) + 16))(boxed_opaque_existential_1, v32, v30);
      ProtobufEncoder.encodeVarint(_:)(0x62uLL);
      v15 = *(a1 + 1);
      v12 = *(a1 + 3);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_25;
      }

      goto LABEL_98;
    case 0xE:
      v10 = *(v6 + 16);

      ProtobufEncoder.encodeVarint(_:)(0x72uLL);
      v11 = *(a1 + 1);
      v12 = *(a1 + 3);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
      }

      v14 = *(v12 + 2);
      v13 = *(v12 + 3);
      v15 = v14 + 1;
      if (v14 >= v13 >> 1)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v12);
      }

      *(v12 + 2) = v15;
      *&v12[8 * v14 + 32] = v11;
      *(a1 + 3) = v12;
      if (!__OFADD__(v11, 1))
      {
        *(a1 + 1) = v11 + 1;
        closure #3 in DisplayList.Effect.encode(to:)(a1, v10);
        if (v2)
        {

          return;
        }

        goto LABEL_91;
      }

      __break(1u);
LABEL_96:
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
LABEL_18:
      v29 = *(v12 + 2);
      v28 = *(v12 + 3);
      if (v29 >= v28 >> 1)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v12);
      }

      *(v12 + 2) = v29 + 1;
      *&v12[8 * v29 + 32] = v5;
      *(a1 + 3) = v12;
      if (!__OFADD__(v5, 1))
      {
        *(a1 + 1) = v5 + 1;
        specialized ProtobufEncoder.messageField<A>(_:_:)(1);
        if (v2)
        {
          return;
        }

        if (v71)
        {
          ProtobufEncoder.encodeVarint(_:)(0x10uLL);
          ProtobufEncoder.encodeVarint(_:)(v71);
        }

        goto LABEL_91;
      }

      __break(1u);
LABEL_98:
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
LABEL_25:
      v35 = *(v12 + 2);
      v34 = *(v12 + 3);
      if (v35 >= v34 >> 1)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v12);
      }

      *(v12 + 2) = v35 + 1;
      *&v12[8 * v35 + 32] = v15;
      *(a1 + 3) = v12;
      v36 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_30:
        lazy protocol witness table accessor for type ProtobufEncoder.EncodingError and conformance ProtobufEncoder.EncodingError();
        swift_allocError();
        swift_willThrow();
        return;
      }

      goto LABEL_53;
    case 0xF:
      ProtobufEncoder.encodeVarint(_:)(0x8AuLL);
      v7 = *(a1 + 1);
      v37 = *(a1 + 3);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v37 + 2) + 1, 1, v37);
      }

      v39 = *(v37 + 2);
      v38 = *(v37 + 3);
      v6 = v39 + 1;
      if (v39 >= v38 >> 1)
      {
        v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v37);
      }

      *(v37 + 2) = v6;
      *&v37[8 * v39 + 32] = v7;
      *(a1 + 3) = v37;
      v40 = v7 + 1;
      if (!__OFADD__(v7, 1))
      {
        goto LABEL_90;
      }

      __break(1u);
LABEL_39:
      if (!(v6 | v7))
      {
        return;
      }

      if (v6 ^ 1 | v7)
      {
        ProtobufEncoder.encodeVarint(_:)(0x12uLL);
        v67 = *(a1 + 1);
        v68 = *(a1 + 3);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v68 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v68 + 2) + 1, 1, v68);
        }

        v70 = *(v68 + 2);
        v69 = *(v68 + 3);
        if (v70 >= v69 >> 1)
        {
          v68 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v69 > 1), v70 + 1, 1, v68);
        }

        *(v68 + 2) = v70 + 1;
        *&v68[8 * v70 + 32] = v67;
        *(a1 + 3) = v68;
        v40 = v67 + 1;
        if (!__OFADD__(v67, 1))
        {
          goto LABEL_90;
        }

        __break(1u);
      }

      else
      {
        ProtobufEncoder.encodeVarint(_:)(0xAuLL);
        v41 = *(a1 + 1);
        v42 = *(a1 + 3);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v42 + 2) + 1, 1, v42);
        }

        v44 = *(v42 + 2);
        v43 = *(v42 + 3);
        v6 = v44 + 1;
        if (v44 >= v43 >> 1)
        {
          v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v42);
        }

        *(v42 + 2) = v6;
        *&v42[8 * v44 + 32] = v41;
        *(a1 + 3) = v42;
        v40 = v41 + 1;
        if (!__OFADD__(v41, 1))
        {
LABEL_90:
          *(a1 + 1) = v40;
          goto LABEL_91;
        }

        __break(1u);
LABEL_48:
        outlined init with copy of AnyTrackedValue(v6 + 16, &v73);
        v45 = v75;
        v46 = v76;
        v47 = __swift_project_boxed_opaque_existential_1(&v73, v75);
        v78 = v45;
        v79 = *(v46 + 8);
        v48 = __swift_allocate_boxed_opaque_existential_1(v77);
        (*(*(v45 - 8) + 16))(v48, v47, v45);
        ProtobufEncoder.encodeVarint(_:)(0x6AuLL);
        v7 = *(a1 + 1);
        v49 = *(a1 + 3);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v49 + 2) + 1, 1, v49);
        }

        v51 = *(v49 + 2);
        v50 = *(v49 + 3);
        if (v51 >= v50 >> 1)
        {
          v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v49);
        }

        *(v49 + 2) = v51 + 1;
        *&v49[8 * v51 + 32] = v7;
        *(a1 + 3) = v49;
        v36 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_100:
          v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v49 + 2) + 1, 1, v49);
LABEL_57:
          v53 = *(v49 + 2);
          v52 = *(v49 + 3);
          if (v53 >= v52 >> 1)
          {
            v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1, v49);
          }

          *(v49 + 2) = v53 + 1;
          *&v49[8 * v53 + 32] = v7;
          *(a1 + 3) = v49;
          if (__OFADD__(v7, 1))
          {
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v49 + 2) + 1, 1, v49);
LABEL_67:
            v60 = *(v49 + 2);
            v59 = *(v49 + 3);
            v6 = v60 + 1;
            if (v60 >= v59 >> 1)
            {
              v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1, v49);
            }

            *(v49 + 2) = v6;
            *&v49[8 * v60 + 32] = v7;
            *(a1 + 3) = v49;
            if (!__OFADD__(v7, 1))
            {
              *(a1 + 1) = v7 + 1;
              StrongHash.encode(to:)(a1);
LABEL_91:
              ProtobufEncoder.endLengthDelimited()();
              return;
            }

            __break(1u);
LABEL_105:
            isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v49 + 2) + 1, 1, v49);
            v49 = isUniquelyReferenced_nonNull_native;
LABEL_73:
            v64 = *(v49 + 2);
            v63 = *(v49 + 3);
            if (v64 >= v63 >> 1)
            {
              isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1, v49);
              v49 = isUniquelyReferenced_nonNull_native;
            }

            *(v49 + 2) = v64 + 1;
            *&v49[8 * v64 + 32] = v4;
            *(a1 + 3) = v49;
            if (__OFADD__(v4, 1))
            {
              __break(1u);
LABEL_107:
              *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = v6;
            }

            else
            {
              *(a1 + 1) = v4 + 1;
              if (v3)
              {
                v65 = 256;
              }

              else
              {
                v65 = 0;
              }

              closure #1 in DisplayList.Effect.encode(to:)(a1, v80, v65 | v60, v6);
              if (!v2)
              {
                goto LABEL_91;
              }
            }
          }

          else
          {
            *(a1 + 1) = v7 + 1;
            v54 = v78;
            v55 = v79;
            __swift_project_boxed_opaque_existential_1(v77, v78);
            _DisplayList_AnyEffectAnimation.encodeAnimation(to:)(a1, v54, v55);
            if (!v2)
            {
              ProtobufEncoder.endLengthDelimited()();
            }

            __swift_destroy_boxed_opaque_existential_1(&v73);
            outlined destroy of CodableEffectAnimation(v77);
          }
        }

        else
        {
LABEL_53:
          *(a1 + 1) = v36;
          CodableViewFactory.encode(to:)(a1);
          if (!v2)
          {
            ProtobufEncoder.endLengthDelimited()();
          }

          outlined destroy of CodableViewFactory(v77);
          __swift_destroy_boxed_opaque_existential_1(&v73);
        }
      }

      return;
    case 0x10:
      v58 = *(v6 + 32);
      v72 = *(v6 + 16);
      ProtobufEncoder.encodeVarint(_:)(0x9AuLL);
      v73 = v72;
      v74 = v58;
      v7 = *(a1 + 1);
      v49 = *(a1 + 3);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_67;
      }

      goto LABEL_103;
    case 0x11:
    case 0x12:
      return;
    case 0x13:
      v66 = *(v6 + 36);

      LOBYTE(v73) = v66;
      specialized ProtobufEncoder.messageField<A>(_:_:)(20);

      return;
    case 0x14:
      goto LABEL_39;
    default:
      v6 = *(v6 + 16);
      v9 = 120;
LABEL_15:
      ProtobufEncoder.encodeVarint(_:)(v9);
      ProtobufEncoder.encodeVarint(_:)(v6);
      return;
  }
}

void closure #1 in DisplayList.Effect.encode(to:)(uint64_t a1, uint64_t a2, __int16 a3, unsigned int a4)
{
  ProtobufEncoder.encodeVarint(_:)(0xAuLL);
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
  }

  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  if (v11 >= v10 >> 1)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v9);
  }

  *(v9 + 2) = v11 + 1;
  *&v9[8 * v11 + 32] = v8;
  *(a1 + 24) = v9;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
  }

  else
  {
    *(a1 + 8) = v8 + 1;
    Path.encode(to:)(a1);
    if (!v4)
    {
      ProtobufEncoder.endLengthDelimited()();
      if (a3 & 0x100) == 0 || (a3)
      {
        ProtobufEncoder.encodeVarint(_:)(0x12uLL);
        specialized ProtobufEncoder.encodeMessage<A>(_:)(a3 & 0x101);
      }

      if (a4)
      {
        ProtobufEncoder.encodeVarint(_:)(0x18uLL);
        ProtobufEncoder.encodeVarint(_:)(a4);
      }
    }
  }
}

void closure #3 in DisplayList.Effect.encode(to:)(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for AccessibilityNodeAttachment(0) - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  if (v9)
  {
    v10 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v20 = *(v6 + 72);
    while (1)
    {
      outlined init with copy of AccessibilityNodeAttachment(v10, v8);
      v11 = a1[1];
      v12 = a1[2];
      if (v11 >= v12)
      {
        v17 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_21;
        }

        if (v12 < v17)
        {
          v18 = ProtobufEncoder.growBufferSlow(to:)(v17);
        }

        else
        {
          a1[1] = v17;
          v18 = (*a1 + v11);
        }

        *v18 = 10;
        v13 = a1[1];
      }

      else
      {
        *(*a1 + v11) = 10;
        v13 = v11 + 1;
        a1[1] = v11 + 1;
      }

      v14 = a1[3];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
      }

      v16 = *(v14 + 2);
      v15 = *(v14 + 3);
      if (v16 >= v15 >> 1)
      {
        v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v14);
      }

      *(v14 + 2) = v16 + 1;
      *&v14[8 * v16 + 32] = v13;
      a1[3] = v14;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      a1[1] = v13 + 1;
      AccessibilityNodeAttachment.encode(to:)(a1);
      if (v2)
      {
        outlined destroy of AccessibilityNodeAttachment(v8);
        return;
      }

      ProtobufEncoder.endLengthDelimited()();
      outlined destroy of AccessibilityNodeAttachment(v8);
      v10 += v20;
      if (!--v9)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }
}

uint64_t _DisplayList_AnyEffectAnimation.encodeAnimation(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 24))(&v8, a2, a3);
  if (v9)
  {
    return (*(*(a3 + 16) + 8))(a1, a2);
  }

  else
  {
    return ProtobufEncoder.messageField<A>(_:_:)(v8, v3, a2, *(a3 + 16));
  }
}

uint64_t CodableEffectAnimation.encode(to:)(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return _DisplayList_AnyEffectAnimation.encodeAnimation(to:)(a1, v3, v4);
}

uint64_t CodableEffectAnimation.init(from:)@<X0>(unint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v4 = a1;
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6 >= v7)
  {
LABEL_64:
    *(v4 + 24) = 0;
    outlined init with copy of _DisplayList_AnyEffectAnimation?(&v44, &v39);
    if (v40)
    {
      outlined destroy of _DisplayList_AnyEffectAnimator?(&v44, &lazy cache variable for type metadata for _DisplayList_AnyEffectAnimation?, &lazy cache variable for type metadata for _DisplayList_AnyEffectAnimation, &protocol descriptor for _DisplayList_AnyEffectAnimation);
      outlined init with take of AnyTrackedValue(&v39, &v41);
      return outlined init with take of AnyTrackedValue(&v41, a2);
    }

    else
    {
      outlined destroy of _DisplayList_AnyEffectAnimator?(&v39, &lazy cache variable for type metadata for _DisplayList_AnyEffectAnimation?, &lazy cache variable for type metadata for _DisplayList_AnyEffectAnimation, &protocol descriptor for _DisplayList_AnyEffectAnimation);
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
      return outlined destroy of _DisplayList_AnyEffectAnimator?(&v44, &lazy cache variable for type metadata for _DisplayList_AnyEffectAnimation?, &lazy cache variable for type metadata for _DisplayList_AnyEffectAnimation, &protocol descriptor for _DisplayList_AnyEffectAnimation);
    }
  }

  while (1)
  {
    v8 = *(v4 + 24);
    if (v8)
    {
      v9 = *(v4 + 32);
      if (v6 < v9)
      {
        goto LABEL_8;
      }

      if (v9 < v6)
      {
        goto LABEL_67;
      }

      *(v4 + 24) = 0;
    }

    a1 = ProtobufDecoder.decodeVarint()(a1);
    if (v3)
    {
      return outlined destroy of _DisplayList_AnyEffectAnimator?(&v44, &lazy cache variable for type metadata for _DisplayList_AnyEffectAnimation?, &lazy cache variable for type metadata for _DisplayList_AnyEffectAnimation, &protocol descriptor for _DisplayList_AnyEffectAnimation);
    }

    v8 = a1;
    if (a1 < 8)
    {
LABEL_67:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
      return outlined destroy of _DisplayList_AnyEffectAnimator?(&v44, &lazy cache variable for type metadata for _DisplayList_AnyEffectAnimation?, &lazy cache variable for type metadata for _DisplayList_AnyEffectAnimation, &protocol descriptor for _DisplayList_AnyEffectAnimation);
    }

LABEL_8:
    v10 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      if (v10 == 1)
      {
        *(&v42 + 1) = &type metadata for DisplayList.OffsetAnimation;
        v43 = &protocol witness table for DisplayList.OffsetAnimation;
        v26 = swift_allocObject();
        *&v41 = v26;
        if ((v8 & 7) != 2)
        {
          goto LABEL_69;
        }

        v27 = v26;
        ProtobufDecoder.beginMessage()();
        if (v3)
        {
          goto LABEL_70;
        }

        _s7SwiftUI15EffectAnimation33_25E61DBD3DDB4AD4C9A82B4C3137A7B6LLPAAE4fromxAA15ProtobufDecoderVz_tKcfCAA11DisplayListV06OffsetD0V_Tt1g5Tm(v4, v47);
        v3 = 0;
        v28 = *(v4 + 40);
        if (!*(v28 + 2))
        {
          goto LABEL_85;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v29 = *(v28 + 2);
          if (!v29)
          {
            goto LABEL_87;
          }
        }

        else
        {
          v28 = specialized _ArrayBuffer._consumeAndCreateNew()(v28);
          v29 = *(v28 + 2);
          if (!v29)
          {
            goto LABEL_87;
          }
        }

        v30 = v29 - 1;
        v7 = *&v28[8 * v30 + 32];
        *(v28 + 2) = v30;
        *(v4 + 40) = v28;
        *(v4 + 16) = v7;
        v31 = v47[1];
        *(v27 + 16) = v47[0];
        *(v27 + 32) = v31;
        *(v27 + 48) = v48;
LABEL_36:
        a1 = outlined destroy of _DisplayList_AnyEffectAnimator?(&v44, &lazy cache variable for type metadata for _DisplayList_AnyEffectAnimation?, &lazy cache variable for type metadata for _DisplayList_AnyEffectAnimation, &protocol descriptor for _DisplayList_AnyEffectAnimation);
LABEL_43:
        v44 = v41;
        v45 = v42;
        v46 = v43;
        goto LABEL_44;
      }

      if (v10 == 2)
      {
        *(&v42 + 1) = &type metadata for DisplayList.ScaleAnimation;
        v43 = &protocol witness table for DisplayList.ScaleAnimation;
        v11 = swift_allocObject();
        *&v41 = v11;
        if ((v8 & 7) != 2)
        {
          goto LABEL_69;
        }

        v12 = v11;
        ProtobufDecoder.beginMessage()();
        if (v3)
        {
          goto LABEL_70;
        }

        sub_18D3AF000(v4, (v12 + 16));
        v3 = 0;
        v13 = *(v4 + 40);
        if (!*(v13 + 2))
        {
          goto LABEL_84;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v14 = *(v13 + 2);
          if (!v14)
          {
            goto LABEL_88;
          }
        }

        else
        {
          v13 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
          v14 = *(v13 + 2);
          if (!v14)
          {
            goto LABEL_88;
          }
        }

LABEL_42:
        v34 = v14 - 1;
        v7 = *&v13[8 * v34 + 32];
        *(v13 + 2) = v34;
        *(v4 + 40) = v13;
        a1 = outlined destroy of _DisplayList_AnyEffectAnimator?(&v44, &lazy cache variable for type metadata for _DisplayList_AnyEffectAnimation?, &lazy cache variable for type metadata for _DisplayList_AnyEffectAnimation, &protocol descriptor for _DisplayList_AnyEffectAnimation);
        *(v4 + 16) = v7;
        goto LABEL_43;
      }

      goto LABEL_25;
    }

    if (v10 == 3)
    {
      *(&v42 + 1) = &type metadata for DisplayList.RotationAnimation;
      v43 = &protocol witness table for DisplayList.RotationAnimation;
      v32 = swift_allocObject();
      *&v41 = v32;
      if ((v8 & 7) != 2)
      {
LABEL_69:
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        swift_willThrow();
LABEL_70:
        outlined destroy of _DisplayList_AnyEffectAnimator?(&v44, &lazy cache variable for type metadata for _DisplayList_AnyEffectAnimation?, &lazy cache variable for type metadata for _DisplayList_AnyEffectAnimation, &protocol descriptor for _DisplayList_AnyEffectAnimation);
        return __swift_deallocate_boxed_opaque_existential_1(&v41);
      }

      v33 = v32;
      ProtobufDecoder.beginMessage()();
      if (v3)
      {
        goto LABEL_70;
      }

      _s7SwiftUI15EffectAnimation33_25E61DBD3DDB4AD4C9A82B4C3137A7B6LLPAAE4fromxAA15ProtobufDecoderVz_tKcfCAA11DisplayListV08RotationD0V_Tt1g5Tm(v4, (v33 + 16));
      v3 = 0;
      v13 = *(v4 + 40);
      if (!*(v13 + 2))
      {
        goto LABEL_83;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v14 = *(v13 + 2);
        if (!v14)
        {
          goto LABEL_63;
        }
      }

      else
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
        v14 = *(v13 + 2);
        if (!v14)
        {
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }
      }

      goto LABEL_42;
    }

    if (v10 == 4)
    {
      break;
    }

LABEL_25:
    v24 = v8 & 7;
    if (v24 > 1)
    {
      if (v24 == 2)
      {
        a1 = ProtobufDecoder.decodeVarint()(a1);
        if (v3)
        {
          return outlined destroy of _DisplayList_AnyEffectAnimator?(&v44, &lazy cache variable for type metadata for _DisplayList_AnyEffectAnimation?, &lazy cache variable for type metadata for _DisplayList_AnyEffectAnimation, &protocol descriptor for _DisplayList_AnyEffectAnimation);
        }

        if ((a1 & 0x8000000000000000) != 0)
        {
          goto LABEL_89;
        }

        v25 = *(v4 + 8) + a1;
        if (v7 < v25)
        {
          goto LABEL_67;
        }
      }

      else
      {
        if (v24 != 5)
        {
          goto LABEL_67;
        }

        v25 = *(v4 + 8) + 4;
        if (v7 < v25)
        {
          goto LABEL_67;
        }
      }

      goto LABEL_55;
    }

    if ((v8 & 7) != 0)
    {
      if (v24 != 1)
      {
        goto LABEL_67;
      }

      v25 = *(v4 + 8) + 8;
      if (v7 < v25)
      {
        goto LABEL_67;
      }

LABEL_55:
      *(v4 + 8) = v25;
      goto LABEL_44;
    }

    a1 = ProtobufDecoder.decodeVarint()(a1);
    if (v3)
    {
      return outlined destroy of _DisplayList_AnyEffectAnimator?(&v44, &lazy cache variable for type metadata for _DisplayList_AnyEffectAnimation?, &lazy cache variable for type metadata for _DisplayList_AnyEffectAnimation, &protocol descriptor for _DisplayList_AnyEffectAnimation);
    }

LABEL_44:
    v6 = *(v4 + 8);
    if (v6 >= v7)
    {
      goto LABEL_64;
    }
  }

  *(&v42 + 1) = &type metadata for DisplayList.OpacityAnimation;
  v43 = &protocol witness table for DisplayList.OpacityAnimation;
  if ((v8 & 7) != 2)
  {
    goto LABEL_69;
  }

  ProtobufDecoder.beginMessage()();
  if (v3)
  {
    goto LABEL_70;
  }

  v15 = _s7SwiftUI15EffectAnimation33_25E61DBD3DDB4AD4C9A82B4C3137A7B6LLPAAE4fromxAA15ProtobufDecoderVz_tKcfCAA11DisplayListV07OpacityD0V_Tt1g5Tm(v4);
  v3 = 0;
  v18 = *(v4 + 40);
  if (*(v18 + 2))
  {
    v19 = v16;
    v20 = v17;
    v21 = v15;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v22 = *(v18 + 2);
      if (!v22)
      {
        goto LABEL_86;
      }
    }

    else
    {
      v18 = specialized _ArrayBuffer._consumeAndCreateNew()(v18);
      v22 = *(v18 + 2);
      if (!v22)
      {
        goto LABEL_86;
      }
    }

    v23 = v22 - 1;
    v7 = *&v18[8 * v23 + 32];
    *(v18 + 2) = v23;
    *(v4 + 40) = v18;
    *(v4 + 16) = v7;
    *&v41 = v19;
    *(&v41 + 1) = v20;
    *&v42 = v21;
    goto LABEL_36;
  }

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
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
  do
  {
    __break(1u);
    a2 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
    v36 = *(a2 + 2);
    if (v36)
    {
      goto LABEL_80;
    }

    __break(1u);
    a2 = *(v4 + 40);
    if (!*(a2 + 2))
    {
      goto LABEL_90;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v36 = *(a2 + 2);
      if (v36)
      {
        goto LABEL_80;
      }
    }

    else
    {
      a2 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
      v36 = *(a2 + 2);
      if (v36)
      {
        goto LABEL_80;
      }
    }

    __break(1u);
    a2 = *(v4 + 40);
    if (!*(a2 + 2))
    {
      goto LABEL_91;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v36 = *(a2 + 2);
      if (v36)
      {
        goto LABEL_80;
      }
    }

    else
    {
      a2 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
      v36 = *(a2 + 2);
      if (v36)
      {
        goto LABEL_80;
      }
    }

    __break(1u);
    a2 = *(v4 + 40);
  }

  while (!*(a2 + 2));
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v36 = *(a2 + 2);
    if (v36)
    {
LABEL_80:
      v37 = v36 - 1;
      v38 = *&a2[8 * v37 + 32];
      *(a2 + 2) = v37;
      *(v4 + 40) = a2;
      outlined destroy of _DisplayList_AnyEffectAnimator?(&v44, &lazy cache variable for type metadata for _DisplayList_AnyEffectAnimation?, &lazy cache variable for type metadata for _DisplayList_AnyEffectAnimation, &protocol descriptor for _DisplayList_AnyEffectAnimation);
      *(v4 + 16) = v38;
      return __swift_deallocate_boxed_opaque_existential_1(&v41);
    }
  }

  else
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
    a2 = result;
    v36 = *(result + 16);
    if (v36)
    {
      goto LABEL_80;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for ProtobufEncodableMessage.encode(to:) in conformance CodableEffectAnimation(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return _DisplayList_AnyEffectAnimation.encodeAnimation(to:)(a1, v3, v4);
}

void DisplayList.InterpolatorAnimation.encode(to:)(void *a1)
{
  v4 = *(v1 + 20);
  v5 = *(v1 + 24);
  if (v5)
  {

    ProtobufEncoder.encodeVarint(_:)(0xAuLL);
    v6 = a1[1];
    v7 = a1[3];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
    }

    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    v10 = v9 + 1;
    if (v9 >= v8 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v7);
    }

    *(v7 + 2) = v10;
    *&v7[8 * v9 + 32] = v6;
    a1[3] = v7;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_18:
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
      goto LABEL_12;
    }

    a1[1] = v6 + 1;
    CodableAnimation.encode(to:)(a1, v5);
    if (v2)
    {

      return;
    }

    ProtobufEncoder.endLengthDelimited()();
  }

  if (v4)
  {
    return;
  }

  ProtobufEncoder.encodeVarint(_:)(0x12uLL);
  v10 = a1[1];
  v7 = a1[3];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_12:
  v12 = *(v7 + 2);
  v11 = *(v7 + 3);
  if (v12 >= v11 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v7);
  }

  *(v7 + 2) = v12 + 1;
  *&v7[8 * v12 + 32] = v10;
  a1[3] = v7;
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else
  {
    a1[1] = v10 + 1;
    StrongHash.encode(to:)(a1);
    ProtobufEncoder.endLengthDelimited()();
  }
}

void lazy protocol witness table accessor for type CodableViewFactory.Error and conformance CodableViewFactory.Error()
{
  if (!lazy protocol witness table cache variable for type CodableViewFactory.Error and conformance CodableViewFactory.Error)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableViewFactory.Error, &type metadata for CodableViewFactory.Error, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableViewFactory.Error and conformance CodableViewFactory.Error);
  }
}

uint64_t outlined init with copy of _DisplayList_AnyEffectAnimation?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ScrollStateRequest?(0, &lazy cache variable for type metadata for _DisplayList_AnyEffectAnimation?, &lazy cache variable for type metadata for _DisplayList_AnyEffectAnimation, &protocol descriptor for _DisplayList_AnyEffectAnimation);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x193AC4820);
  }

  return result;
}

void lazy protocol witness table accessor for type CodableEffectAnimation.Tag and conformance CodableEffectAnimation.Tag()
{
  if (!lazy protocol witness table cache variable for type CodableEffectAnimation.Tag and conformance CodableEffectAnimation.Tag)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableEffectAnimation.Tag, &type metadata for CodableEffectAnimation.Tag, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableEffectAnimation.Tag and conformance CodableEffectAnimation.Tag);
  }
}

void _s7SwiftUI15EffectAnimation33_25E61DBD3DDB4AD4C9A82B4C3137A7B6LLPAAE4fromxAA15ProtobufDecoderVz_tKcfCAA11DisplayListV06OffsetD0V_Tt1g5Tm(char *a1@<X0>, void *a2@<X8>)
{
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  if (v5 < v6)
  {
    v7 = 0;
    v8 = 1;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 1;
    v13 = 0;
    while (1)
    {
      v17 = *(a1 + 3);
      if (v17)
      {
        v18 = *(a1 + 4);
        if (v5 < v18)
        {
          goto LABEL_15;
        }

        if (v18 < v5)
        {
          goto LABEL_4;
        }

        *(a1 + 3) = 0;
      }

      v17 = ProtobufDecoder.decodeVarint()(v17);
      if (v2)
      {
        goto LABEL_73;
      }

      if (v17 < 8)
      {
        goto LABEL_4;
      }

LABEL_15:
      v19 = v17 >> 3;
      v20 = v17 & 7;
      if (v17 >> 3 == 3)
      {
        if (v20 != 2)
        {
          goto LABEL_4;
        }

        v35 = *(a1 + 5);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v35 + 16) + 1, 1, v35);
          v35 = isUniquelyReferenced_nonNull_native;
        }

        v3 = *(v35 + 16);
        v37 = *(v35 + 24);
        if (v3 >= v37 >> 1)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v3 + 1, 1, v35);
          v35 = isUniquelyReferenced_nonNull_native;
        }

        *(v35 + 16) = v3 + 1;
        *(v35 + 8 * v3 + 32) = v6;
        *(a1 + 5) = v35;
        v38 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
        if (v2)
        {
          goto LABEL_73;
        }

        if (v38 < 0)
        {
          goto LABEL_86;
        }

        v39 = *(a1 + 1) + v38;
        if (v6 < v39)
        {
          goto LABEL_4;
        }

        *(a1 + 2) = v39;
        v40 = specialized CodableAnimation.init(from:)(a1);
        v41 = *(a1 + 5);
        if (!*(v41 + 2))
        {
          goto LABEL_88;
        }

        v42 = v40;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v43 = *(v41 + 2);
          if (!v43)
          {
            goto LABEL_91;
          }
        }

        else
        {
          v41 = specialized _ArrayBuffer._consumeAndCreateNew()(v41);
          v43 = *(v41 + 2);
          if (!v43)
          {
            goto LABEL_91;
          }
        }

        v44 = v43 - 1;
        v6 = *&v41[8 * v44 + 32];
        *(v41 + 2) = v44;

        *(a1 + 5) = v41;
        *(a1 + 2) = v6;
        v7 = v42;
        goto LABEL_8;
      }

      if (v19 == 2)
      {
        if (v20 != 2)
        {
          goto LABEL_4;
        }

        v28 = *(a1 + 5);
        v29 = swift_isUniquelyReferenced_nonNull_native();
        if ((v29 & 1) == 0)
        {
          v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 16) + 1, 1, v28);
          v28 = v29;
        }

        v3 = *(v28 + 16);
        v30 = *(v28 + 24);
        if (v3 >= v30 >> 1)
        {
          v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v3 + 1, 1, v28);
          v28 = v29;
        }

        *(v28 + 16) = v3 + 1;
        *(v28 + 8 * v3 + 32) = v6;
        *(a1 + 5) = v28;
        v31 = ProtobufDecoder.decodeVarint()(v29);
        if (v2)
        {
          goto LABEL_73;
        }

        if (v31 < 0)
        {
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
          __break(1u);
LABEL_93:
          __break(1u);
          do
          {
            __break(1u);
            v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
            v47 = *(v3 + 16);
            if (v47)
            {
              goto LABEL_83;
            }

            __break(1u);
            v3 = *(a1 + 5);
            if (!*(v3 + 16))
            {
              goto LABEL_93;
            }

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v47 = *(v3 + 16);
              if (v47)
              {
                goto LABEL_83;
              }
            }

            else
            {
              v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
              v47 = *(v3 + 16);
              if (v47)
              {
                goto LABEL_83;
              }
            }

            __break(1u);
            v3 = *(a1 + 5);
          }

          while (!*(v3 + 16));
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v47 = *(v3 + 16);
            if (v47)
            {
LABEL_83:
              v48 = v47 - 1;
              v49 = *(v3 + 8 * v48 + 32);
              *(v3 + 16) = v48;

              *(a1 + 5) = v3;
              *(a1 + 2) = v49;
              return;
            }
          }

          else
          {
            v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
            v47 = *(v3 + 16);
            if (v47)
            {
              goto LABEL_83;
            }
          }

          __break(1u);
          return;
        }

        v32 = *(a1 + 1) + v31;
        if (v6 < v32)
        {
          goto LABEL_4;
        }

        *(a1 + 2) = v32;
        specialized _OffsetEffect.init(from:)(a1);
        v14 = *(a1 + 5);
        if (!*(v14 + 2))
        {
          goto LABEL_87;
        }

        v9 = v33;
        v10 = v34;
        v3 = 0;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v15 = *(v14 + 2);
          if (!v15)
          {
            goto LABEL_90;
          }
        }

        else
        {
          v14 = specialized _ArrayBuffer._consumeAndCreateNew()(v14);
          v15 = *(v14 + 2);
          if (!v15)
          {
            goto LABEL_90;
          }
        }

        v8 = 0;
        goto LABEL_7;
      }

      if (v19 == 1)
      {
        if (v20 != 2)
        {
          goto LABEL_4;
        }

        v21 = *(a1 + 5);
        v22 = swift_isUniquelyReferenced_nonNull_native();
        if ((v22 & 1) == 0)
        {
          v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 16) + 1, 1, v21);
          v21 = v22;
        }

        v3 = *(v21 + 16);
        v23 = *(v21 + 24);
        if (v3 >= v23 >> 1)
        {
          v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v3 + 1, 1, v21);
          v21 = v22;
        }

        *(v21 + 16) = v3 + 1;
        *(v21 + 8 * v3 + 32) = v6;
        *(a1 + 5) = v21;
        v24 = ProtobufDecoder.decodeVarint()(v22);
        if (v2)
        {
          goto LABEL_73;
        }

        if (v24 < 0)
        {
          goto LABEL_85;
        }

        v25 = *(a1 + 1) + v24;
        if (v6 < v25)
        {
          goto LABEL_4;
        }

        *(a1 + 2) = v25;
        specialized _OffsetEffect.init(from:)(a1);
        v14 = *(a1 + 5);
        if (!*(v14 + 2))
        {
          goto LABEL_89;
        }

        v11 = v26;
        v13 = v27;
        v3 = 0;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v15 = *(v14 + 2);
          if (!v15)
          {
            goto LABEL_72;
          }
        }

        else
        {
          v14 = specialized _ArrayBuffer._consumeAndCreateNew()(v14);
          v15 = *(v14 + 2);
          if (!v15)
          {
LABEL_72:
            __break(1u);
LABEL_73:

            return;
          }
        }

        v12 = 0;
LABEL_7:
        v16 = v15 - 1;
        v6 = *&v14[8 * v16 + 32];
        *(v14 + 2) = v16;
        *(a1 + 5) = v14;
        *(a1 + 2) = v6;
        goto LABEL_8;
      }

      if ((v17 & 7) > 1)
      {
        if (v20 == 2)
        {
          v46 = ProtobufDecoder.decodeVarint()(v17);
          if (v2)
          {
            goto LABEL_73;
          }

          if (v46 < 0)
          {
            goto LABEL_92;
          }

          v45 = *(a1 + 1) + v46;
          if (v6 < v45)
          {
            goto LABEL_4;
          }
        }

        else
        {
          if (v20 != 5)
          {
            goto LABEL_4;
          }

          v45 = *(a1 + 1) + 4;
          if (v6 < v45)
          {
            goto LABEL_4;
          }
        }
      }

      else
      {
        if ((v17 & 7) == 0)
        {
          ProtobufDecoder.decodeVarint()(v17);
          if (v2)
          {
            goto LABEL_73;
          }

          goto LABEL_8;
        }

        if (v20 != 1)
        {
          goto LABEL_4;
        }

        v45 = *(a1 + 1) + 8;
        if (v6 < v45)
        {
          goto LABEL_4;
        }
      }

      *(a1 + 1) = v45;
LABEL_8:
      v5 = *(a1 + 1);
      if (v5 >= v6)
      {
        *(a1 + 3) = 0;
        if (((v12 | v8) & 1) == 0 && v7)
        {
          *a2 = v11;
          a2[1] = v13;
          a2[2] = v9;
          a2[3] = v10;
          a2[4] = v7;
          return;
        }

        goto LABEL_4;
      }
    }
  }

  *(a1 + 3) = 0;
LABEL_4:
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  swift_willThrow();
}

char *_s7SwiftUI15EffectAnimation33_25E61DBD3DDB4AD4C9A82B4C3137A7B6LLPAAE4fromxAA15ProtobufDecoderVz_tKcfCAA11DisplayListV07OpacityD0V_Tt1g5Tm(char *a1)
{
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  if (v4 >= v5)
  {
    v6 = 0;
    *(a1 + 3) = 0;
    goto LABEL_4;
  }

  v6 = 0;
  v7 = 1;
  v8 = 1;
  do
  {
    v12 = *(a1 + 3);
    if (v12)
    {
      v13 = *(a1 + 4);
      if (v4 < v13)
      {
        goto LABEL_16;
      }

      if (v13 < v4)
      {
        goto LABEL_4;
      }

      *(a1 + 3) = 0;
    }

    v12 = ProtobufDecoder.decodeVarint()(v12);
    if (v1)
    {
      goto LABEL_74;
    }

    if (v12 < 8)
    {
      goto LABEL_4;
    }

LABEL_16:
    v14 = v12 >> 3;
    v15 = v12 & 7;
    if (v12 >> 3 == 3)
    {
      if (v15 != 2)
      {
        goto LABEL_4;
      }

      v2 = *(a1 + 5);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
        v2 = isUniquelyReferenced_nonNull_native;
      }

      v28 = *(v2 + 2);
      v27 = *(v2 + 3);
      if (v28 >= v27 >> 1)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v2);
        v2 = isUniquelyReferenced_nonNull_native;
      }

      *(v2 + 2) = v28 + 1;
      *&v2[8 * v28 + 32] = v5;
      *(a1 + 5) = v2;
      v29 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
      if (v1)
      {
        goto LABEL_74;
      }

      if (v29 < 0)
      {
        goto LABEL_87;
      }

      v30 = *(a1 + 1) + v29;
      if (v5 < v30)
      {
        goto LABEL_4;
      }

      *(a1 + 2) = v30;
      v31 = specialized CodableAnimation.init(from:)(a1);
      v32 = *(a1 + 5);
      if (!*(v32 + 2))
      {
        goto LABEL_89;
      }

      v2 = v31;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v33 = *(v32 + 2);
        if (!v33)
        {
          goto LABEL_92;
        }
      }

      else
      {
        v32 = specialized _ArrayBuffer._consumeAndCreateNew()(v32);
        v33 = *(v32 + 2);
        if (!v33)
        {
          goto LABEL_92;
        }
      }

      v34 = v33 - 1;
      v5 = *&v32[8 * v34 + 32];
      *(v32 + 2) = v34;

      *(a1 + 5) = v32;
      *(a1 + 2) = v5;
      v6 = v2;
    }

    else
    {
      if (v14 == 2)
      {
        if (v15 != 2)
        {
          goto LABEL_4;
        }

        v2 = *(a1 + 5);
        v21 = swift_isUniquelyReferenced_nonNull_native();
        if ((v21 & 1) == 0)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
          v2 = v21;
        }

        v23 = *(v2 + 2);
        v22 = *(v2 + 3);
        if (v23 >= v22 >> 1)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v2);
          v2 = v21;
        }

        *(v2 + 2) = v23 + 1;
        *&v2[8 * v23 + 32] = v5;
        *(a1 + 5) = v2;
        v24 = ProtobufDecoder.decodeVarint()(v21);
        if (v1)
        {
          goto LABEL_74;
        }

        if (v24 < 0)
        {
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
LABEL_93:
          __break(1u);
          __break(1u);
LABEL_94:
          __break(1u);
          do
          {
            __break(1u);
            v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
            v37 = *(v2 + 2);
            if (v37)
            {
              goto LABEL_84;
            }

            __break(1u);
            v2 = *(a1 + 5);
            if (!*(v2 + 2))
            {
              goto LABEL_94;
            }

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v37 = *(v2 + 2);
              if (v37)
              {
                goto LABEL_84;
              }
            }

            else
            {
              v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
              v37 = *(v2 + 2);
              if (v37)
              {
                goto LABEL_84;
              }
            }

            __break(1u);
            v2 = *(a1 + 5);
          }

          while (!*(v2 + 2));
          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
            v37 = *(v2 + 2);
            if (v37)
            {
LABEL_84:
              v38 = v37 - 1;
              v39 = *&v2[8 * v38 + 32];
              *(v2 + 2) = v38;

              *(a1 + 5) = v2;
              *(a1 + 2) = v39;
              return v6;
            }
          }

          else
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
            v2 = result;
            v37 = *(result + 2);
            if (v37)
            {
              goto LABEL_84;
            }
          }

          __break(1u);
          return result;
        }

        v25 = *(a1 + 1) + v24;
        if (v5 < v25)
        {
          goto LABEL_4;
        }

        *(a1 + 2) = v25;
        specialized _OpacityEffect.init(from:)(a1);
        v2 = *(a1 + 5);
        if (!*(v2 + 2))
        {
          goto LABEL_88;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v10 = *(v2 + 2);
          if (!v10)
          {
            goto LABEL_91;
          }
        }

        else
        {
          v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
          v10 = *(v2 + 2);
          if (!v10)
          {
            goto LABEL_91;
          }
        }

        v7 = 0;
        goto LABEL_8;
      }

      if (v14 == 1)
      {
        if (v15 != 2)
        {
          goto LABEL_4;
        }

        v2 = *(a1 + 5);
        v16 = swift_isUniquelyReferenced_nonNull_native();
        if ((v16 & 1) == 0)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
          v2 = v16;
        }

        v18 = *(v2 + 2);
        v17 = *(v2 + 3);
        if (v18 >= v17 >> 1)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v2);
          v2 = v16;
        }

        *(v2 + 2) = v18 + 1;
        *&v2[8 * v18 + 32] = v5;
        *(a1 + 5) = v2;
        v19 = ProtobufDecoder.decodeVarint()(v16);
        if (v1)
        {
          goto LABEL_74;
        }

        if (v19 < 0)
        {
          goto LABEL_86;
        }

        v20 = *(a1 + 1) + v19;
        if (v5 < v20)
        {
          goto LABEL_4;
        }

        *(a1 + 2) = v20;
        specialized _OpacityEffect.init(from:)(a1);
        v2 = *(a1 + 5);
        if (!*(v2 + 2))
        {
          goto LABEL_90;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v10 = *(v2 + 2);
          if (!v10)
          {
            goto LABEL_73;
          }
        }

        else
        {
          v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
          v10 = *(v2 + 2);
          if (!v10)
          {
LABEL_73:
            __break(1u);
LABEL_74:
            v6 = v1;

            return v6;
          }
        }

        v8 = 0;
LABEL_8:
        v11 = v10 - 1;
        v5 = *&v2[8 * v11 + 32];
        *(v2 + 2) = v11;
        *(a1 + 5) = v2;
        *(a1 + 2) = v5;
        goto LABEL_9;
      }

      if ((v12 & 7) > 1)
      {
        if (v15 == 2)
        {
          v36 = ProtobufDecoder.decodeVarint()(v12);
          if (v1)
          {
            goto LABEL_74;
          }

          if (v36 < 0)
          {
            goto LABEL_93;
          }

          v35 = *(a1 + 1) + v36;
          if (v5 < v35)
          {
            goto LABEL_4;
          }
        }

        else
        {
          if (v15 != 5)
          {
            goto LABEL_4;
          }

          v35 = *(a1 + 1) + 4;
          if (v5 < v35)
          {
            goto LABEL_4;
          }
        }

        goto LABEL_69;
      }

      if ((v12 & 7) != 0)
      {
        if (v15 != 1)
        {
          goto LABEL_4;
        }

        v35 = *(a1 + 1) + 8;
        if (v5 < v35)
        {
          goto LABEL_4;
        }

LABEL_69:
        *(a1 + 1) = v35;
        goto LABEL_9;
      }

      ProtobufDecoder.decodeVarint()(v12);
      if (v1)
      {
        goto LABEL_74;
      }
    }

LABEL_9:
    v4 = *(a1 + 1);
  }

  while (v4 < v5);
  *(a1 + 3) = 0;
  if (((v8 | v7) & 1) == 0 && v6)
  {
    return v6;
  }

LABEL_4:
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  swift_willThrow();

  return v6;
}

uint64_t outlined init with copy of AccessibilityNodeAttachment(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessibilityNodeAttachment(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AccessibilityNodeAttachment(uint64_t a1)
{
  v2 = type metadata accessor for AccessibilityNodeAttachment(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *GraphicsFilter.VibrantColorMatrix.init(_:maxColorComponent:options:)@<X0>(_OWORD *result@<X0>, char *a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  v4 = *a2;
  v5 = result[3];
  *(a3 + 32) = result[2];
  *(a3 + 48) = v5;
  *(a3 + 64) = result[4];
  v6 = result[1];
  *a3 = *result;
  *(a3 + 16) = v6;
  *(a3 + 80) = a4;
  *(a3 + 84) = v4;
  return result;
}

uint64_t GraphicsFilter.ColorMonochrome.init(color:amount:bias:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, float a3@<S0>, float a4@<S1>)
{
  v4 = *(result + 16);
  *a2 = *result;
  *(a2 + 16) = v4;
  *(a2 + 20) = a3;
  *(a2 + 24) = a4;
  return result;
}

uint64_t GraphicsFilter.AlphaThreshold.init(color:amount:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v3 = *(result + 16);
  *a2 = *result;
  *(a2 + 16) = v3;
  *(a2 + 20) = a3;
  return result;
}

uint64_t GraphicsFilter.ShaderFilter.init(shader:size:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v4 = *(result + 24);
  *a2 = *result;
  *(a2 + 8) = *(result + 8);
  *(a2 + 24) = v4;
  *(a2 + 32) = a3;
  *(a2 + 40) = a4;
  return result;
}

__n128 GraphicsFilter.DisplacementMap.mask.setter(uint64_t a1)
{
  v3 = *(v1 + 56);
  v4 = *(v1 + 88);
  v10[4] = *(v1 + 72);
  v11[0] = v4;
  *(v11 + 12) = *(v1 + 100);
  v5 = *(v1 + 24);
  v10[0] = *(v1 + 8);
  v10[1] = v5;
  v10[2] = *(v1 + 40);
  v10[3] = v3;
  outlined destroy of VariableBlurStyle.Mask(v10);
  v6 = *(a1 + 32);
  *(v1 + 56) = *(a1 + 48);
  v7 = *(a1 + 80);
  *(v1 + 72) = *(a1 + 64);
  *(v1 + 88) = v7;
  *(v1 + 100) = *(a1 + 92);
  result = *a1;
  v9 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v9;
  *(v1 + 40) = v6;
  return result;
}

float GraphicsFilter.ColorMonochrome.color.getter@<S0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

__n128 GraphicsFilter.ColorMonochrome.color.setter(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u32[0] = a1[1].n128_u32[0];
  return result;
}

__n128 GraphicsFilter.VibrantColorMatrix.matrix.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 64);
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

__n128 GraphicsFilter.VibrantColorMatrix.matrix.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v2;
  *(v1 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = result;
  return result;
}

BOOL static GraphicsFilter.VibrantColorMatrix.== infix(_:_:)(uint64_t a1, float *a2)
{
  v2 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v2;
  v3 = *(a1 + 64);
  v4 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v4;
  v5 = *(a1 + 80);
  v6 = *(a1 + 84);
  v7 = *(a2 + 3);
  v14[2] = *(a2 + 2);
  v14[3] = v7;
  v14[4] = *(a2 + 4);
  v8 = *a2;
  v14[1] = *(a2 + 1);
  v13[4] = v3;
  v14[0] = v8;
  v9 = a2[20];
  v10 = *(a2 + 84);
  v11 = specialized static _ColorMatrix.== infix(_:_:)(v13, v14);
  result = 0;
  if (v11 && v5 == v9)
  {
    return v6 == v10;
  }

  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance GraphicsFilter.VibrantColorMatrix(uint64_t a1, float *a2)
{
  v2 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v2;
  v3 = *(a1 + 64);
  v4 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v4;
  v5 = *(a1 + 80);
  v6 = *(a1 + 84);
  v7 = *(a2 + 3);
  v14[2] = *(a2 + 2);
  v14[3] = v7;
  v14[4] = *(a2 + 4);
  v8 = *a2;
  v14[1] = *(a2 + 1);
  v13[4] = v3;
  v14[0] = v8;
  v9 = a2[20];
  v10 = *(a2 + 84);
  v11 = specialized static _ColorMatrix.== infix(_:_:)(v13, v14);
  result = 0;
  if (v11 && v5 == v9)
  {
    return v6 == v10;
  }

  return result;
}

void GraphicsFilter.Curve.values.setter(float a1, float a2, float a3, float a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

__n128 GraphicsFilter.LuminanceCurve.curve.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 GraphicsFilter.LuminanceCurve.curve.setter(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

__n128 GraphicsFilter.ColorCurves.redCurve.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 GraphicsFilter.ColorCurves.redCurve.setter(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

__n128 GraphicsFilter.ColorCurves.greenCurve.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

__n128 GraphicsFilter.ColorCurves.greenCurve.setter(__n128 *a1)
{
  result = *a1;
  v1[1] = *a1;
  return result;
}

__n128 GraphicsFilter.ColorCurves.blueCurve.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[2];
  *a1 = result;
  return result;
}

__n128 GraphicsFilter.ColorCurves.blueCurve.setter(__n128 *a1)
{
  result = *a1;
  v1[2] = *a1;
  return result;
}

__n128 GraphicsFilter.ColorCurves.opacityCurve.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[3];
  *a1 = result;
  return result;
}

__n128 GraphicsFilter.ColorCurves.opacityCurve.setter(__n128 *a1)
{
  result = *a1;
  v1[3] = *a1;
  return result;
}

void __swiftcall GraphicsFilter.ColorCurves.init(redCurve:greenCurve:blueCurve:opacityCurve:)(SwiftUI::GraphicsFilter::ColorCurves *__return_ptr retstr, SwiftUI::GraphicsFilter::Curve redCurve, SwiftUI::GraphicsFilter::Curve greenCurve, SwiftUI::GraphicsFilter::Curve blueCurve, SwiftUI::GraphicsFilter::Curve opacityCurve)
{
  v9 = *v6;
  retstr->redCurve = *v5;
  retstr->greenCurve = v9;
  v10 = *v8;
  retstr->blueCurve = *v7;
  retstr->opacityCurve = v10;
}

id GraphicsFilter.ShaderFilter.shader.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = v3;
  return v2;
}

__n128 GraphicsFilter.ShaderFilter.shader.setter(uint64_t *a1)
{
  v3 = *a1;
  v4 = *(a1 + 6);

  *v1 = v3;
  result = *(a1 + 1);
  *(v1 + 8) = result;
  *(v1 + 24) = v4;
  return result;
}