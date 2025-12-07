@interface GeometryUtilities
+ (void)getTransformCropRectFromSensorCoordsToValidBufferCoordsWithMetadata:(CGFloat)metadata@<D0> validBufferRect:(CGFloat)rect@<D1>;
+ (void)initialize;
@end

@implementation GeometryUtilities

+ (void)initialize
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();

  fig_note_initialize_category_with_default_work_cf();
}

+ (void)getTransformCropRectFromSensorCoordsToValidBufferCoordsWithMetadata:(CGFloat)metadata@<D0> validBufferRect:(CGFloat)rect@<D1>
{
  v13 = a2;
  objc_opt_self();
  v39 = 0;
  v14 = MEMORY[0x1E695EFD0];
  v15 = *(MEMORY[0x1E695EFD0] + 16);
  *a3 = *MEMORY[0x1E695EFD0];
  *(a3 + 16) = v15;
  *(a3 + 32) = *(v14 + 32);
  v16 = *(MEMORY[0x1E695F058] + 16);
  v38.origin = *MEMORY[0x1E695F058];
  v38.size = v16;
  v17 = [v13 cmi_intValueForKey:*MEMORY[0x1E69910C8] defaultValue:0 found:&v39];
  if ((v39 & 1) != 0 && (v18 = v17, v19 = [v13 cmi_intValueForKey:*MEMORY[0x1E69910C0] defaultValue:0 found:&v39], v39 == 1) && (v20 = v19, FigCFDictionaryGetCGRectIfPresent()) && (!CGRectIsEmpty(v38) ? (v21 = v38.origin.x / v18, v23 = v38.origin.y / v20, v22 = v38.size.width / v18, v24 = v38.size.height / v20) : (v21 = 0.0, v22 = 1.0, v23 = 0.0, v24 = 1.0), (v40.origin.x = v21, v40.origin.y = v23, v40.size.width = v22, v40.size.height = v24, !CGRectIsEmpty(v40)) && ((v41.origin.x = metadata, v41.origin.y = rect, v41.size.width = a6, v41.size.height = a7, !CGRectIsEmpty(v41)) ? (v25 = metadata / a6, v27 = rect / a7, v26 = a6 / a6, v28 = a7 / a7) : (v25 = 0.0, v26 = 1.0, v27 = 0.0, v28 = 1.0), v42.origin.x = v25, v42.origin.y = v27, v42.size.width = v26, v42.size.height = v28, !CGRectIsEmpty(v42))))
  {
    v29 = *(a3 + 16);
    *&v37.a = *a3;
    *&v37.c = v29;
    *&v37.tx = *(a3 + 32);
    CGAffineTransformTranslate(a3, &v37, v25, v27);
    v30 = *(a3 + 16);
    *&v36.a = *a3;
    *&v36.c = v30;
    *&v36.tx = *(a3 + 32);
    CGAffineTransformScale(&v37, &v36, v26, v28);
    v31 = *&v37.c;
    *a3 = *&v37.a;
    *(a3 + 16) = v31;
    *(a3 + 32) = *&v37.tx;
    v32 = *(a3 + 16);
    *&v36.a = *a3;
    *&v36.c = v32;
    *&v36.tx = *(a3 + 32);
    CGAffineTransformScale(&v37, &v36, 1.0 / v22, 1.0 / v24);
    v33 = *&v37.c;
    *a3 = *&v37.a;
    *(a3 + 16) = v33;
    *(a3 + 32) = *&v37.tx;
    v34 = *(a3 + 16);
    *&v36.a = *a3;
    *&v36.c = v34;
    *&v36.tx = *(a3 + 32);
    CGAffineTransformTranslate(&v37, &v36, -v21, -v23);
    v35 = *&v37.c;
    *a3 = *&v37.a;
    *(a3 + 16) = v35;
    *(a3 + 32) = *&v37.tx;
  }

  else
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v7, *&v36.a, *&v36.b, LODWORD(v36.c), *&v36.d, *&v36.tx, LODWORD(v36.ty));
  }
}

@end