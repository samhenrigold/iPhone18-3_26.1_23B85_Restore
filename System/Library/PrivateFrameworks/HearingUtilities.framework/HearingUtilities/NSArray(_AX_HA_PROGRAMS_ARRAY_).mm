@interface NSArray(_AX_HA_PROGRAMS_ARRAY_)
- (id)programThatMatchesProgram:()_AX_HA_PROGRAMS_ARRAY_;
- (void)setProgram:()_AX_HA_PROGRAMS_ARRAY_ withOtherSidePrograms:selected:;
@end

@implementation NSArray(_AX_HA_PROGRAMS_ARRAY_)

- (void)setProgram:()_AX_HA_PROGRAMS_ARRAY_ withOtherSidePrograms:selected:
{
  v70 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [self programThatMatchesProgram:v8];
  v11 = HCLogHearingAids();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v8;
    *&buf[12] = 2112;
    *&buf[14] = v10;
    _os_log_impl(&dword_1DA5E2000, v11, OS_LOG_TYPE_DEFAULT, "Selecting program %@ - %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v67 = __Block_byref_object_copy__7;
  v68 = __Block_byref_object_dispose__7;
  v69 = 0;
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = __Block_byref_object_copy__7;
  v64 = __Block_byref_object_dispose__7;
  v65 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy__7;
  v58 = __Block_byref_object_dispose__7;
  v59 = 0;
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __77__NSArray__AX_HA_PROGRAMS_ARRAY___setProgram_withOtherSidePrograms_selected___block_invoke;
  v53[3] = &unk_1E85CC8F8;
  v53[4] = &v54;
  v53[5] = buf;
  v53[6] = &v60;
  [v9 enumerateObjectsUsingBlock:v53];
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__7;
  v51 = __Block_byref_object_dispose__7;
  v52 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__7;
  v45 = __Block_byref_object_dispose__7;
  v46 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__7;
  v39 = __Block_byref_object_dispose__7;
  v40 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__7;
  v33 = __Block_byref_object_dispose__7;
  v34 = 0;
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __77__NSArray__AX_HA_PROGRAMS_ARRAY___setProgram_withOtherSidePrograms_selected___block_invoke_2;
  v23 = &unk_1E85CC920;
  v25 = &v29;
  v12 = v10;
  v24 = v12;
  v26 = &v35;
  v27 = &v47;
  v28 = &v41;
  [self enumerateObjectsUsingBlock:&v20];
  if (*(*&buf[8] + 40))
  {
    if ([v12 isStreamOrMixingStream])
    {
      if ([*(*&buf[8] + 40) isStreamOrMixingStream])
      {
        index = [*(*&buf[8] + 40) index];
        if (index != [v12 index])
        {
          [*(*&buf[8] + 40) setIsSelected:0];
          if (!v61[5])
          {
            [v55[5] setIsSelected:1];
          }
        }
      }
    }
  }

  if (!v42[5] && !v48[5])
  {
    goto LABEL_26;
  }

  if ([v12 isMixingStream])
  {
    v14 = v48[5];
    if (v14)
    {
      [v14 setIsSelected:0];
      v15 = v30[5];
      if (v15)
      {
        [v15 setIsSelected:1];
        v16 = v12;
LABEL_28:
        [v16 setIsSelected:{a5, v20, v21, v22, v23}];
        goto LABEL_29;
      }
    }

LABEL_27:
    v16 = v12;
    goto LABEL_28;
  }

  if (([v12 isMixingStream] & 1) == 0 && objc_msgSend(v12, "isStream"))
  {
    v17 = v48[5];
    if (v17)
    {
      [v17 setIsSelected:0];
    }

    v18 = v42[5];
    if (!v18)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if (!v36[5])
  {
    v18 = v48[5];
    if (!v18)
    {
      if (!v42[5])
      {
        goto LABEL_29;
      }

      [v12 setIsSelected:1];
      a5 = 0;
      v16 = v42[5];
      goto LABEL_28;
    }

LABEL_25:
    [v18 setIsSelected:0];
LABEL_26:
    a5 = 1;
    goto LABEL_27;
  }

  [v12 setIsSelected:1];
  v19 = v42[5];
  if (v19)
  {
    [v19 setIsSelected:0];
  }

LABEL_29:

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v35, 8);

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v47, 8);

  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(&v60, 8);

  _Block_object_dispose(buf, 8);
}

- (id)programThatMatchesProgram:()_AX_HA_PROGRAMS_ARRAY_
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__7;
  v15 = __Block_byref_object_dispose__7;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__NSArray__AX_HA_PROGRAMS_ARRAY___programThatMatchesProgram___block_invoke;
  v8[3] = &unk_1E85CC948;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [self enumerateObjectsUsingBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

@end