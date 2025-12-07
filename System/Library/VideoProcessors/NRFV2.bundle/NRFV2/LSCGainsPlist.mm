@interface LSCGainsPlist
- (LSCGainsPlist)initWithDictionary:(id)dictionary metal:(id)metal;
- (id)getTextureMaxValueForPortType:(id)type;
- (int)fillLSCGainsTextureFrom:(id *)from tex:(id)tex maxValuesRGBA:(float *)a;
@end

@implementation LSCGainsPlist

- (LSCGainsPlist)initWithDictionary:(id)dictionary metal:(id)metal
{
  dictionaryCopy = dictionary;
  metalCopy = metal;
  v91.receiver = self;
  v91.super_class = LSCGainsPlist;
  v8 = [(LSCGainsPlist *)&v91 init];
  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = objc_alloc(MEMORY[0x29EDB8E00]);
  v13 = objc_msgSend_count(dictionaryCopy, v10, v11, v12);
  v16 = objc_msgSend_initWithCapacity_(v9, v14, v13, v15);
  lscGainsByPortType = v8->_lscGainsByPortType;
  v8->_lscGainsByPortType = v16;

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v76 = dictionaryCopy;
  v18 = dictionaryCopy;
  v81 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v87, v86, 16);
  if (!v81)
  {
LABEL_13:

    dictionaryCopy = v76;
LABEL_14:
    v72 = v8;
    goto LABEL_15;
  }

  v80 = *v88;
  v79 = *MEMORY[0x29EDBFF10];
LABEL_4:
  v22 = 0;
  while (1)
  {
    if (*v88 != v80)
    {
      objc_enumerationMutation(v18);
    }

    v23 = *(*(&v87 + 1) + 8 * v22);
    v24 = objc_msgSend_objectForKeyedSubscript_(v18, v20, v23, v21);
    v27 = objc_msgSend_objectForKeyedSubscript_(v24, v25, v79, v26);

    if (v27)
    {
      break;
    }

LABEL_11:

    if (v81 == ++v22)
    {
      v81 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v20, &v87, v86, 16);
      if (v81)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  v28 = v27;
  v32 = objc_msgSend_bytes(v28, v29, v30, v31);
  v34 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x29EDBB670], v33, 115, *(v32 + 20), *(v32 + 24), 0);
  v38 = objc_msgSend_device(metalCopy, v35, v36, v37);
  v41 = objc_msgSend_newTextureWithDescriptor_(v38, v39, v34, v40);

  if (v41)
  {
    v43 = objc_msgSend_fillLSCGainsTextureFrom_tex_maxValuesRGBA_(v8, v42, v32, v41, v85);
    if (v43)
    {
      LODWORD(v75) = v43;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v75, v4, v4, v76, metalCopy, v79, v80, v81);

      v72 = 0;
      dictionaryCopy = v77;
      goto LABEL_15;
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8->_lscGainsByPortType, v44, v41, v23);
    v82 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v45, @"%@#max", v46, v23);
    v83 = v27;
    LODWORD(v47) = v85[0];
    v51 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v48, v49, v50, v47);
    v84[0] = v51;
    LODWORD(v52) = v85[1];
    v56 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v53, v54, v55, v52);
    v84[1] = v56;
    LODWORD(v57) = v85[2];
    v61 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v58, v59, v60, v57);
    v84[2] = v61;
    LODWORD(v62) = v85[3];
    v66 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v63, v64, v65, v62);
    v84[3] = v66;
    objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v67, v84, 4);
    v68 = v34;
    v70 = v69 = v18;

    v27 = v83;
    objc_msgSend_setObject_forKeyedSubscript_(v8->_lscGainsByPortType, v71, v70, v82);

    v18 = v69;
    goto LABEL_11;
  }

  dictionaryCopy = v76;
  if (sub_29589D4CC(v34, v27, v18))
  {
    goto LABEL_14;
  }

  v72 = 0;
LABEL_15:
  v73 = v72;

  return v73;
}

- (int)fillLSCGainsTextureFrom:(id *)from tex:(id)tex maxValuesRGBA:(float *)a
{
  texCopy = tex;
  var4 = from->var1.var0.var4;
  var5 = from->var1.var0.var5;
  var6 = from->var1.var0.var6;
  var7 = from->var1.var0.var7;
  var8 = from->var1.var0.var8;
  var9 = from->var1.var0.var9;
  v13 = (var5 * var4);
  v14 = malloc_type_malloc(8 * v13, 0x1000040BDFB0063uLL);
  if (v14)
  {
    v15 = v14;
    memset_pattern16(a, &unk_2959D5F30, 0x10uLL);
    if (v13)
    {
      v17 = 0;
      v18 = &from->var1.var1.var10 + var6;
      v19 = &from->var1.var1.var10 + var9;
      v21 = *a;
      v22 = a[1];
      v23 = a[2];
      v24 = a[3];
      v25 = &from->var1.var1.var10 + var8;
      do
      {
        v20 = &from->var1.var1.var10 + var7;
        v26.i32[0] = v20[v17];
        if (v21 <= v26.f32[0])
        {
          v21 = *&v20[v17];
        }

        v26.i32[1] = v18[v17];
        v26.i32[2] = v25[v17];
        v26.i32[3] = v19[v17];
        *&v15[2 * ((v17 * 4) & 0xFFFFFFFC)] = vcvt_f16_f32(v26);
        *a = v21;
        if (v22 <= *&v18[v17])
        {
          v22 = *&v18[v17];
        }

        a[1] = v22;
        if (v23 <= *&v25[v17])
        {
          v23 = *&v25[v17];
        }

        a[2] = v23;
        if (v24 <= *&v19[v17])
        {
          v24 = *&v19[v17];
        }

        a[3] = v24;
        ++v17;
      }

      while (v13 != v17);
    }

    memset(v31, 0, 24);
    v31[3] = var4;
    v31[4] = var5;
    v31[5] = 1;
    v27 = texCopy;
    objc_msgSend_replaceRegion_mipmapLevel_withBytes_bytesPerRow_(texCopy, v16, v31, 0, v15, 8 * var4);
    free(v15);
    v28 = 0;
  }

  else
  {
    sub_29589D598();
    v28 = -12786;
    v27 = texCopy;
  }

  return v28;
}

- (id)getTextureMaxValueForPortType:(id)type
{
  v5 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], a2, @"%@#max", v3, type);
  v8 = objc_msgSend_objectForKeyedSubscript_(self->_lscGainsByPortType, v6, v5, v7);

  return v8;
}

@end