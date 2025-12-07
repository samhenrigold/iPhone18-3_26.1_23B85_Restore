@interface TSCEFunction___CHART
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction___CHART

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  if (*(arguments + 1) == *arguments)
  {
    v7 = objc_msgSend_nilValue(TSCENilValue, a2, context, spec);
    goto LABEL_9;
  }

  v7 = **arguments;
  if (!objc_msgSend_isReferenceValue(v7, v8, v9, v10))
  {
    v16 = 0;
    v18 = v7;
LABEL_7:
    v18 = v18;
    v7 = v18;
    goto LABEL_8;
  }

  v71 = 0;
  v12 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v7, v11, context, spec, 0, &v71);
  v16 = v71;
  if (!v16)
  {
    v20 = objc_msgSend_tractRef(v12, v13, v14, v15);
    *&v68 |= 3u;
    *&v21.f64[0] = 0x8000000080000000;
    *&v21.f64[1] = 0x8000000080000000;
    v68._singleRange = vnegq_f64(v21);
    v68._multipleRanges = 0;
    TSUIndexSet::operator=();
    *&v69 |= 3u;
    v69._singleRange = v68._singleRange;
    v69._multipleRanges = 0;
    TSUIndexSet::operator=();
    v22 = *(v20 + 64);
    *&v70[13] = *(v20 + 77);
    *v70 = v22;
    v26 = objc_msgSend_evalRef(v12, v23, v24, v25);
    v30 = objc_msgSend_tableResolver(v26, v27, v28, v29);

    if (v30 && (TSCETableResolverWrapper::isPivotTable(v30, v31, v32, v33) & 1) == 0 && (objc_msgSend_evalRef(v12, v34, v35, v36), v37 = objc_claimAutoreleasedReturnValue(), v41 = objc_msgSend_tableRangeOfTable(v37, v38, v39, v40), v57 = v42, v43 = v41, v37, TSCETableResolverWrapper::apparentTractRefForTractRef(v30, &v68, 0, &v65), TSUIndexSet::operator=(), TSUIndexSet::operator=(), *v70 = *v67, *&v70[13] = *&v67[13], TSUIndexSet::~TSUIndexSet(&v66), TSUIndexSet::~TSUIndexSet(&v65), sub_2210EE8F8(&v68)))
    {
      v64 = 0;
      v45 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v7, v44, context, spec, 0, 0, &v64);
      v46 = v64;
      v50 = v46 == 0;
      if (v46)
      {
        v51 = v46;
        v18 = v7;
        v16 = v51;
      }

      else
      {
        v63 = objc_msgSend_dimensions(v45, v47, v48, v49);
        *&v65 = 0;
        v65._singleRange._begin = &v65;
        v65._singleRange._end = 0x4812000000;
        v65._multipleRanges = sub_2213EC198;
        *&v66 = sub_2213EC1BC;
        v66._singleRange._begin = &unk_22188E88F;
        v66._multipleRanges = 0;
        *v67 = 0;
        v66._singleRange._end = 0;
        sub_2213EC640(&v58, &v68);
        v61 = v43;
        v62 = v57;
        v60 = v30;
        TSUIndexSet::enumerateRangesUsingBlock();
        v52 = [TSCEDenseGrid alloc];
        isFlattened_dimensions = objc_msgSend_initWithValues_gridKind_isFlattened_dimensions_(v52, v53, v65._singleRange._begin + 48, 0, 0, &v63);
        v18 = objc_msgSend_gridValue_(TSCEGridValue, v55, isFlattened_dimensions, v56);

        TSUIndexSet::~TSUIndexSet(&v59);
        TSUIndexSet::~TSUIndexSet(&v58);
        _Block_object_dispose(&v65, 8);
        p_end = &v66._singleRange._end;
        sub_22107C2C0(&p_end);
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
      v50 = 1;
      v18 = v7;
    }

    TSUIndexSet::~TSUIndexSet(&v69);
    TSUIndexSet::~TSUIndexSet(&v68);

    if (!v50)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v17 = objc_msgSend_raiseErrorOrConvert_(context, v13, v16, v15);

  v18 = v7;
  v7 = v17;
LABEL_8:

LABEL_9:

  return v7;
}

@end