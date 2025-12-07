@interface TSCEFunction_UNIQUE
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_UNIQUE

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v80 = 0;
  v9 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v8, a2, context, spec, 0, 0, &v80);
  v10 = v80;
  if (v10)
  {
    v14 = v10;
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v11, v10, v13);
    goto LABEL_31;
  }

  if (*(arguments + 1) - *arguments < 9uLL)
  {
    v30 = 0;
    v31 = 1;
LABEL_23:
    v51 = objc_msgSend_dimensions(v9, v11, v12, v13);
    if (!(HIDWORD(v51) * v51))
    {
      v16 = objc_msgSend_emptyArrayError(TSCEError, v48, v49, v50);
      v15 = objc_msgSend_raiseErrorOrConvert_(context, v55, v16, v56);
      v14 = 0;
      goto LABEL_30;
    }

    v16 = objc_msgSend_uniqueIndexesFor2DGrid_functionSpec_argumentIndex_byRowProcessing_uniqueMode_(v9, v48, context, spec, 0, v31, v30);
    v43 = objc_opt_new();
    v69[0] = 0;
    v69[1] = v69;
    v69[2] = 0x7812000000;
    v69[3] = sub_2212163F4;
    v69[4] = sub_221216428;
    contextCopy = context;
    v71 = 0;
    v72 = 0;
    v73[0] = 0xFFFFFFFFLL;
    *(v73 + 7) = 0;
    v74 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v75 = 0;
    v76 = 0;
    v68[0] = 0;
    v68[1] = v68;
    v68[2] = 0x3812000000;
    v68[3] = sub_221216464;
    v68[4] = nullsub_30;
    v68[5] = &unk_22188E88F;
    v68[6] = 0;
    if (v31)
    {
      v52 = v67;
      v67[0] = MEMORY[0x277D85DD0];
      v67[1] = 3221225472;
      v67[2] = sub_221216474;
      v67[3] = &unk_278461630;
      v67[8] = v51;
      v67[4] = v9;
      v67[6] = v69;
      v67[5] = v43;
      v67[7] = v68;
      v67[9] = 1;
      objc_msgSend_enumerateIndexesUsingBlock_(v16, v53, v67, v54);
    }

    else
    {
      v52 = v66;
      v66[0] = MEMORY[0x277D85DD0];
      v66[1] = 3221225472;
      v66[2] = sub_221216538;
      v66[3] = &unk_278461630;
      v66[8] = v51;
      v66[4] = v9;
      v66[6] = v69;
      v66[5] = v43;
      v66[7] = v68;
      v66[9] = 0x100000000;
      objc_msgSend_enumerateIndexesUsingBlock_(v16, v57, v66, v58);
    }

    v59 = [TSCEDenseGrid alloc];
    v62 = objc_msgSend_initWithValueGrid_(v59, v60, v43, v61);
    v15 = objc_msgSend_gridValue_(TSCEGridValue, v63, v62, v64);

    _Block_object_dispose(v68, 8);
    _Block_object_dispose(v69, 8);

    v14 = 0;
LABEL_29:

    goto LABEL_30;
  }

  v16 = *(*arguments + 8);
  if ((objc_msgSend_isTokenOrEmptyArg(v16, v17, v18, v19) & 1) != 0 || (v22 = objc_msgSend_deepType_(v16, v20, context, v21), v22 == 10))
  {
    v28 = 0;
LABEL_11:

    v31 = v28 == 0;
    if (*(arguments + 1) - *arguments < 0x11uLL)
    {
      v30 = 0;
    }

    else
    {
      v16 = *(*arguments + 16);
      if (objc_msgSend_isTokenOrEmptyArg(v16, v32, v33, v34))
      {
        v30 = 0;
      }

      else
      {
        v77 = 0;
        LODWORD(v30) = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v16, v35, context, spec, 2, &v77);
        v36 = v77;
        if (v36)
        {
          v14 = v36;
          v29 = objc_msgSend_raiseErrorOrConvert_(context, v37, v36, v38);
          goto LABEL_17;
        }

        v30 = v30;
      }
    }

    goto LABEL_23;
  }

  if (v22 != 2)
  {
    v78 = 0;
    v39 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v16, v23, context, spec, 1, &v78);
    v14 = v78;
    v28 = objc_msgSend_integer(v39, v40, v41, v42);

    if (v14)
    {
      goto LABEL_8;
    }

LABEL_19:
    if (v28 >= 2)
    {
      v43 = objc_msgSend_functionName(spec, v25, v26, v27);
      v45 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v44, v43, 2);
      v15 = objc_msgSend_raiseErrorOrConvert_(context, v46, v45, v47);

      goto LABEL_29;
    }

    goto LABEL_11;
  }

  v79 = 0;
  v24 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v16, v23, context, spec, 1, &v79);
  v14 = v79;
  v28 = v24;
  if (!v14)
  {
    goto LABEL_19;
  }

LABEL_8:
  v29 = objc_msgSend_raiseErrorOrConvert_(context, v25, v14, v27);
LABEL_17:
  v15 = v29;
LABEL_30:

LABEL_31:

  return v15;
}

@end