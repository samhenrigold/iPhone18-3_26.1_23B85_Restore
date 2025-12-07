@interface IPv4AddressFormatter
- (BOOL)isPartialStringValid:(id)valid newEditingString:(id *)string errorDescription:(id *)description;
@end

@implementation IPv4AddressFormatter

- (BOOL)isPartialStringValid:(id)valid newEditingString:(id *)string errorDescription:(id *)description
{
  v92.receiver = self;
  v92.super_class = IPv4AddressFormatter;
  v8 = [APFormatter isPartialStringValid:sel_isPartialStringValid_newEditingString_errorDescription_ newEditingString:? errorDescription:?];
  if (v8)
  {
    if (!objc_msgSend_length(valid, v9, v10, v11))
    {
      goto LABEL_12;
    }

    v14 = objc_msgSend_componentsSeparatedByString_(valid, v12, @".", v13);
    v18 = objc_msgSend_count(v14, v15, v16, v17);
    if (v18 > 4)
    {
      if (string)
      {
        v21 = MEMORY[0x277CCACA8];
        v22 = objc_msgSend_objectAtIndex_(v14, v19, 0, v20);
        v25 = objc_msgSend_objectAtIndex_(v14, v23, 1, v24);
        v28 = objc_msgSend_objectAtIndex_(v14, v26, 2, v27);
        v31 = objc_msgSend_objectAtIndex_(v14, v29, 3, v30);
        *string = objc_msgSend_stringWithFormat_(v21, v32, @"%@.%@.%@.%@", v33, v22, v25, v28, v31);
      }

      if (description)
      {
        goto LABEL_7;
      }

      goto LABEL_46;
    }

    v34 = v18;
    if (!v18)
    {
LABEL_12:
      LOBYTE(v8) = 1;
      return v8;
    }

    v35 = 0;
    while (1)
    {
      v36 = objc_msgSend_objectAtIndex_(v14, v19, v35, v20);
      if (objc_msgSend_integerValue(v36, v37, v38, v39) >= 256)
      {
        break;
      }

      if (v34 == ++v35)
      {
        goto LABEL_12;
      }
    }

    if (!string)
    {
LABEL_45:
      if (description)
      {
LABEL_7:
        LOBYTE(v8) = 0;
        *description = @"gErE";
        return v8;
      }

LABEL_46:
      LOBYTE(v8) = 0;
      return v8;
    }

    if (objc_msgSend_UTF8ByteCount(v36, v19, v40, v20) >= 4)
    {
      v36 = objc_msgSend_substringToIndex_(v36, v41, 3, v43);
    }

    if (objc_msgSend_integerValue(v36, v41, v42, v43) >= 256)
    {
      v36 = objc_msgSend_substringToIndex_(v36, v44, 2, v45);
    }

    if (v34 == 4)
    {
      v46 = MEMORY[0x277CCACA8];
      if (v35 > 1)
      {
        if (v35 == 2)
        {
          v59 = objc_msgSend_objectAtIndex_(v14, v44, 0, v45);
          v62 = objc_msgSend_objectAtIndex_(v14, v60, 1, v61);
          v89 = v36;
          v91 = objc_msgSend_objectAtIndex_(v14, v63, 3, v64);
        }

        else
        {
          v59 = objc_msgSend_objectAtIndex_(v14, v44, 0, v45);
          v62 = objc_msgSend_objectAtIndex_(v14, v72, 1, v73);
          v89 = objc_msgSend_objectAtIndex_(v14, v74, 2, v75);
          v91 = v36;
        }

        v86 = v62;
      }

      else
      {
        if (!v35)
        {
          v47 = objc_msgSend_objectAtIndex_(v14, v44, 1, v45);
          v89 = objc_msgSend_objectAtIndex_(v14, v48, 2, v49);
          v91 = objc_msgSend_objectAtIndex_(v14, v50, 3, v51);
          v83 = v36;
          v86 = v47;
LABEL_36:
          v76 = objc_msgSend_stringWithFormat_(v46, v52, @"%@.%@.%@.%@", v53, v83, v86, v89, v91);
          goto LABEL_43;
        }

        v59 = objc_msgSend_objectAtIndex_(v14, v44, 0, v45);
        v89 = objc_msgSend_objectAtIndex_(v14, v68, 2, v69);
        v91 = objc_msgSend_objectAtIndex_(v14, v70, 3, v71);
        v86 = v36;
      }

      v83 = v59;
      goto LABEL_36;
    }

    if (v34 < 3)
    {
      if (v34 != 2)
      {
LABEL_44:
        *string = v36;
        goto LABEL_45;
      }

      v65 = MEMORY[0x277CCACA8];
      if (v35)
      {
        v85 = objc_msgSend_objectAtIndex_(v14, v44, 0, v45);
        v88 = v36;
      }

      else
      {
        v85 = v36;
        v88 = objc_msgSend_objectAtIndex_(v14, v44, 1, v45);
      }

      v76 = objc_msgSend_stringWithFormat_(v65, v66, @"%@.%@", v67, v85, v88);
LABEL_43:
      v36 = v76;
      goto LABEL_44;
    }

    if (v35 == 2)
    {
      v54 = MEMORY[0x277CCACA8];
      v77 = objc_msgSend_objectAtIndex_(v14, v44, 0, v45);
      v87 = objc_msgSend_objectAtIndex_(v14, v80, 1, v81);
      v90 = v36;
    }

    else
    {
      if (v35 != 1)
      {
        if (v35)
        {
          goto LABEL_45;
        }

        v54 = MEMORY[0x277CCACA8];
        v87 = objc_msgSend_objectAtIndex_(v14, v44, 1, v45);
        v90 = objc_msgSend_objectAtIndex_(v14, v55, 2, v56);
        v84 = v36;
        goto LABEL_40;
      }

      v54 = MEMORY[0x277CCACA8];
      v77 = objc_msgSend_objectAtIndex_(v14, v44, 0, v45);
      v87 = v36;
      v90 = objc_msgSend_objectAtIndex_(v14, v78, 2, v79);
    }

    v84 = v77;
LABEL_40:
    v76 = objc_msgSend_stringWithFormat_(v54, v57, @"%@.%@.%@", v58, v84, v87, v90);
    goto LABEL_43;
  }

  return v8;
}

@end