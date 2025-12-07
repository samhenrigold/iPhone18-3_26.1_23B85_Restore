void type metadata completion function for TextEditor.Storage.AttributedText(uint64_t a1)
{
  _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(319, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
  if (v1 <= 0x3F)
  {
    _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(319, &lazy cache variable for type metadata for Binding<AttributedTextSelection>?, type metadata accessor for Binding<AttributedTextSelection>, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

char *initializeBufferWithCopyOfBuffer for TextEditor.Storage(char *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v19 = *a2;
    *a1 = *a2;
    a1 = (v19 + ((v5 + 16) & ~v5));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v7 = a2[1];
    *a1 = *a2;
    *(a1 + 1) = v7;
    if (EnumCaseMultiPayload == 1)
    {
      _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
      v9 = *(v8 + 32);
      v10 = type metadata accessor for AttributedString();
      v11 = *(*(v10 - 8) + 16);

      v11(&a1[v9], a2 + v9, v10);
      v12 = *(type metadata accessor for TextEditor.Storage.AttributedText(0) + 20);
      v13 = &a1[v12];
      v14 = (a2 + v12);
      type metadata accessor for Binding<AttributedTextSelection>(0);
      v16 = v15;
      v17 = *(v15 - 8);
      if ((*(v17 + 48))(v14, 1, v15))
      {
        _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for Binding<AttributedTextSelection>?, type metadata accessor for Binding<AttributedTextSelection>, MEMORY[0x1E69E6720]);
        memcpy(v13, v14, *(*(v18 - 8) + 64));
      }

      else
      {
        v60 = v13;
        v30 = v14[1];
        *v13 = *v14;
        *(v13 + 1) = v30;
        v31 = *(v16 + 32);
        __dst = &v13[v31];
        v32 = v14 + v31;
        v33 = type metadata accessor for AttributedTextSelection.Indices(0);
        v34 = *(v33 - 8);
        v35 = *(v34 + 48);

        if (v35(v32, 1, v33))
        {
          _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for AttributedTextSelection.Indices?, type metadata accessor for AttributedTextSelection.Indices, MEMORY[0x1E69E6720]);
          v37 = __dst;
          memcpy(__dst, v32, *(*(v36 - 8) + 64));
        }

        else
        {
          v37 = __dst;
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            type metadata accessor for RangeSet<AttributedString.Index>(0);
            v49 = v48;
          }

          else
          {
            v49 = type metadata accessor for AttributedString.Index();
          }

          (*(*(v49 - 8) + 16))(__dst, v32);
          swift_storeEnumTagMultiPayload();
          (*(v34 + 56))(__dst, 0, 1, v33);
        }

        v52 = type metadata accessor for AttributedTextSelection(0);
        v53 = *(v52 + 20);
        v54 = type metadata accessor for AttributeContainer();
        v55 = *(v54 - 8);
        if ((*(v55 + 48))(&v32[v53], 1, v54))
        {
          v56 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
          memcpy(&v37[v53], &v32[v53], *(*(v56 - 8) + 64));
        }

        else
        {
          (*(v55 + 16))(&v37[v53], &v32[v53], v54);
          (*(v55 + 56))(&v37[v53], 0, 1, v54);
        }

        v37[*(v52 + 24)] = v32[*(v52 + 24)];
        (*(v17 + 56))(v60, 0, 1, v16);
      }
    }

    else
    {
      v20 = a2[3];
      *(a1 + 2) = a2[2];
      *(a1 + 3) = v20;
      type metadata accessor for (Binding<String>, Binding<TextSelection?>?)(0);
      v22 = *(v21 + 48);
      v23 = &a1[v22];
      v24 = (a2 + v22);
      type metadata accessor for Binding<TextSelection?>(0);
      v26 = v25;
      v27 = *(v25 - 1);
      v28 = *(v27 + 48);

      if (v28(v24, 1, v26))
      {
        type metadata accessor for Binding<TextSelection?>?(0);
        memcpy(v23, v24, *(*(v29 - 8) + 64));
      }

      else
      {
        v38 = v24[1];
        *v23 = *v24;
        *(v23 + 1) = v38;
        __dsta = v26;
        v61 = v23;
        v39 = v26[8];
        v40 = &v23[v39];
        v41 = v24 + v39;
        v42 = type metadata accessor for TextSelection(0);
        v43 = *(v42 - 8);
        v44 = *(v43 + 48);

        if (v44(v41, 1, v42))
        {
          type metadata accessor for TextSelection?(0);
          memcpy(v40, v41, *(*(v45 - 8) + 64));
          v47 = __dsta;
          v46 = v61;
        }

        else
        {
          v50 = type metadata accessor for TextSelection.Indices(0);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            type metadata accessor for RangeSet<String.Index>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
            (*(*(v51 - 8) + 16))(v40, v41, v51);
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            memcpy(v40, v41, *(*(v50 - 8) + 64));
          }

          v47 = __dsta;
          v46 = v61;
          v40[*(v42 + 20)] = v41[*(v42 + 20)];
          (*(v43 + 56))(v40, 0, 1, v42);
        }

        (*(v27 + 56))(v46, 0, 1, v47);
      }
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t destroy for TextEditor.Storage(char *a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload != 1)
  {

    type metadata accessor for (Binding<String>, Binding<TextSelection?>?)(0);
    v15 = &a1[*(v14 + 48)];
    type metadata accessor for Binding<TextSelection?>(0);
    v17 = v16;
    result = (*(*(v16 - 8) + 48))(v15, 1, v16);
    if (result)
    {
      return result;
    }

    v18 = *(v17 + 32);
    v19 = type metadata accessor for TextSelection(0);
    result = (*(*(v19 - 8) + 48))(&v15[v18], 1, v19);
    if (result)
    {
      return result;
    }

    type metadata accessor for TextSelection.Indices(0);
    result = swift_getEnumCaseMultiPayload();
    if (result != 1)
    {
      return result;
    }

    type metadata accessor for RangeSet<String.Index>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
    v21 = v20;
    v22 = *(*(v20 - 8) + 8);
    v23 = &v15[v18];
    goto LABEL_15;
  }

  _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
  v5 = *(v4 + 32);
  v6 = type metadata accessor for AttributedString();
  (*(*(v6 - 8) + 8))(&a1[v5], v6);
  v7 = &a1[*(type metadata accessor for TextEditor.Storage.AttributedText(0) + 20)];
  type metadata accessor for Binding<AttributedTextSelection>(0);
  v9 = v8;
  result = (*(*(v8 - 8) + 48))(v7, 1, v8);
  if (!result)
  {

    v11 = &v7[*(v9 + 32)];
    v12 = type metadata accessor for AttributedTextSelection.Indices(0);
    if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for RangeSet<AttributedString.Index>(0);
      }

      else
      {
        v13 = type metadata accessor for AttributedString.Index();
      }

      (*(*(v13 - 8) + 8))(v11, v13);
    }

    v24 = *(type metadata accessor for AttributedTextSelection(0) + 20);
    v25 = type metadata accessor for AttributeContainer();
    v26 = *(v25 - 8);
    result = (*(v26 + 48))(&v11[v24], 1, v25);
    if (!result)
    {
      v22 = *(v26 + 8);
      v23 = &v11[v24];
      v21 = v25;
LABEL_15:

      return v22(v23, v21);
    }
  }

  return result;
}

char *initializeWithCopy for TextEditor.Storage(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  if (EnumCaseMultiPayload == 1)
  {
    _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
    v8 = *(v7 + 32);
    v9 = type metadata accessor for AttributedString();
    v10 = *(*(v9 - 8) + 16);

    v10(&a1[v8], &a2[v8], v9);
    v11 = *(type metadata accessor for TextEditor.Storage.AttributedText(0) + 20);
    v12 = &a1[v11];
    v13 = &a2[v11];
    type metadata accessor for Binding<AttributedTextSelection>(0);
    v15 = v14;
    v16 = *(v14 - 8);
    if ((*(v16 + 48))(v13, 1, v14))
    {
      _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for Binding<AttributedTextSelection>?, type metadata accessor for Binding<AttributedTextSelection>, MEMORY[0x1E69E6720]);
      memcpy(v12, v13, *(*(v17 - 8) + 64));
    }

    else
    {
      v55 = v12;
      v28 = *(v13 + 1);
      *v12 = *v13;
      *(v12 + 1) = v28;
      v29 = *(v15 + 32);
      __dst = &v12[v29];
      v30 = &v13[v29];
      v31 = type metadata accessor for AttributedTextSelection.Indices(0);
      v32 = *(v31 - 8);
      v33 = *(v32 + 48);

      if (v33(v30, 1, v31))
      {
        _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for AttributedTextSelection.Indices?, type metadata accessor for AttributedTextSelection.Indices, MEMORY[0x1E69E6720]);
        v35 = __dst;
        memcpy(__dst, v30, *(*(v34 - 8) + 64));
      }

      else
      {
        v35 = __dst;
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for RangeSet<AttributedString.Index>(0);
          v44 = v43;
        }

        else
        {
          v44 = type metadata accessor for AttributedString.Index();
        }

        (*(*(v44 - 8) + 16))(__dst, v30);
        swift_storeEnumTagMultiPayload();
        (*(v32 + 56))(__dst, 0, 1, v31);
      }

      v47 = type metadata accessor for AttributedTextSelection(0);
      v48 = *(v47 + 20);
      v49 = type metadata accessor for AttributeContainer();
      v50 = *(v49 - 8);
      if ((*(v50 + 48))(&v30[v48], 1, v49))
      {
        v51 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
        memcpy(&v35[v48], &v30[v48], *(*(v51 - 8) + 64));
      }

      else
      {
        (*(v50 + 16))(&v35[v48], &v30[v48], v49);
        (*(v50 + 56))(&v35[v48], 0, 1, v49);
      }

      v35[*(v47 + 24)] = v30[*(v47 + 24)];
      (*(v16 + 56))(v55, 0, 1, v15);
    }
  }

  else
  {
    v18 = *(a2 + 3);
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 3) = v18;
    type metadata accessor for (Binding<String>, Binding<TextSelection?>?)(0);
    v20 = *(v19 + 48);
    v21 = &a1[v20];
    v22 = &a2[v20];
    type metadata accessor for Binding<TextSelection?>(0);
    v24 = v23;
    v25 = *(v23 - 8);
    v26 = *(v25 + 48);

    if (v26(v22, 1, v24))
    {
      type metadata accessor for Binding<TextSelection?>?(0);
      memcpy(v21, v22, *(*(v27 - 8) + 64));
    }

    else
    {
      v36 = *(v22 + 1);
      *v21 = *v22;
      *(v21 + 1) = v36;
      v37 = *(v24 + 32);
      __dsta = &v21[v37];
      v56 = v21;
      v38 = &v22[v37];
      v39 = type metadata accessor for TextSelection(0);
      v40 = *(v39 - 8);
      v41 = *(v40 + 48);

      if (v41(v38, 1, v39))
      {
        type metadata accessor for TextSelection?(0);
        memcpy(__dsta, v38, *(*(v42 - 8) + 64));
      }

      else
      {
        v45 = type metadata accessor for TextSelection.Indices(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for RangeSet<String.Index>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
          (*(*(v46 - 8) + 16))(__dsta, v38, v46);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(__dsta, v38, *(*(v45 - 8) + 64));
        }

        __dsta[*(v39 + 20)] = v38[*(v39 + 20)];
        (*(v40 + 56))(__dsta, 0, 1, v39);
      }

      (*(v25 + 56))(v56, 0, 1, v24);
    }
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

char *assignWithCopy for TextEditor.Storage(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    outlined destroy of Binding<TextSelection?>?(a1, type metadata accessor for TextEditor.Storage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *a1 = *a2;
    *(a1 + 1) = *(a2 + 1);
    if (EnumCaseMultiPayload == 1)
    {
      _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
      v7 = *(v6 + 32);
      v8 = type metadata accessor for AttributedString();
      v9 = *(*(v8 - 8) + 16);

      v9(&a1[v7], &a2[v7], v8);
      v10 = *(type metadata accessor for TextEditor.Storage.AttributedText(0) + 20);
      v11 = &a1[v10];
      v12 = &a2[v10];
      type metadata accessor for Binding<AttributedTextSelection>(0);
      v14 = v13;
      v15 = *(v13 - 8);
      if ((*(v15 + 48))(v12, 1, v13))
      {
        _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for Binding<AttributedTextSelection>?, type metadata accessor for Binding<AttributedTextSelection>, MEMORY[0x1E69E6720]);
        memcpy(v11, v12, *(*(v16 - 8) + 64));
      }

      else
      {
        v51 = v11;
        *v11 = *v12;
        *(v11 + 1) = *(v12 + 1);
        v26 = *(v14 + 32);
        __dst = &v11[v26];
        v27 = &v12[v26];
        v28 = type metadata accessor for AttributedTextSelection.Indices(0);
        v29 = *(v28 - 8);
        v30 = *(v29 + 48);

        if (v30(v27, 1, v28))
        {
          _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for AttributedTextSelection.Indices?, type metadata accessor for AttributedTextSelection.Indices, MEMORY[0x1E69E6720]);
          v32 = __dst;
          memcpy(__dst, v27, *(*(v31 - 8) + 64));
        }

        else
        {
          v32 = __dst;
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            type metadata accessor for RangeSet<AttributedString.Index>(0);
            v40 = v39;
          }

          else
          {
            v40 = type metadata accessor for AttributedString.Index();
          }

          (*(*(v40 - 8) + 16))(__dst, v27);
          swift_storeEnumTagMultiPayload();
          (*(v29 + 56))(__dst, 0, 1, v28);
        }

        v43 = type metadata accessor for AttributedTextSelection(0);
        v44 = *(v43 + 20);
        v45 = type metadata accessor for AttributeContainer();
        v46 = *(v45 - 8);
        if ((*(v46 + 48))(&v27[v44], 1, v45))
        {
          v47 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
          memcpy(&v32[v44], &v27[v44], *(*(v47 - 8) + 64));
        }

        else
        {
          (*(v46 + 16))(&v32[v44], &v27[v44], v45);
          (*(v46 + 56))(&v32[v44], 0, 1, v45);
        }

        v32[*(v43 + 24)] = v27[*(v43 + 24)];
        (*(v15 + 56))(v51, 0, 1, v14);
      }
    }

    else
    {
      *(a1 + 2) = *(a2 + 2);
      *(a1 + 3) = *(a2 + 3);
      type metadata accessor for (Binding<String>, Binding<TextSelection?>?)(0);
      v18 = *(v17 + 48);
      v19 = &a1[v18];
      v20 = &a2[v18];
      type metadata accessor for Binding<TextSelection?>(0);
      v22 = v21;
      v23 = *(v21 - 8);
      v24 = *(v23 + 48);

      if (v24(v20, 1, v22))
      {
        type metadata accessor for Binding<TextSelection?>?(0);
        memcpy(v19, v20, *(*(v25 - 8) + 64));
      }

      else
      {
        *v19 = *v20;
        *(v19 + 1) = *(v20 + 1);
        v33 = *(v22 + 32);
        __dsta = &v19[v33];
        v52 = v19;
        v34 = &v20[v33];
        v35 = type metadata accessor for TextSelection(0);
        v36 = *(v35 - 8);
        v37 = *(v36 + 48);

        if (v37(v34, 1, v35))
        {
          type metadata accessor for TextSelection?(0);
          memcpy(__dsta, v34, *(*(v38 - 8) + 64));
        }

        else
        {
          v41 = type metadata accessor for TextSelection.Indices(0);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            type metadata accessor for RangeSet<String.Index>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
            (*(*(v42 - 8) + 16))(__dsta, v34, v42);
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            memcpy(__dsta, v34, *(*(v41 - 8) + 64));
          }

          __dsta[*(v35 + 20)] = v34[*(v35 + 20)];
          (*(v36 + 56))(__dsta, 0, 1, v35);
        }

        (*(v23 + 56))(v52, 0, 1, v22);
      }
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t initializeWithTake for TextEditor.Storage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v5;
    _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
    v7 = *(v6 + 32);
    v8 = type metadata accessor for AttributedString();
    (*(*(v8 - 8) + 32))(a1 + v7, a2 + v7, v8);
    v9 = *(type metadata accessor for TextEditor.Storage.AttributedText(0) + 20);
    v10 = (a1 + v9);
    v11 = (a2 + v9);
    type metadata accessor for Binding<AttributedTextSelection>(0);
    v13 = v12;
    v14 = *(v12 - 8);
    if ((*(v14 + 48))(v11, 1, v12))
    {
      _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for Binding<AttributedTextSelection>?, type metadata accessor for Binding<AttributedTextSelection>, MEMORY[0x1E69E6720]);
      memcpy(v10, v11, *(*(v15 - 8) + 64));
    }

    else
    {
      v25 = v11[1];
      *v10 = *v11;
      v10[1] = v25;
      v26 = *(v13 + 32);
      v27 = v10 + v26;
      v28 = v11 + v26;
      v29 = type metadata accessor for AttributedTextSelection.Indices(0);
      v30 = *(v29 - 8);
      v50 = v27;
      if ((*(v30 + 48))(v28, 1, v29))
      {
        _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for AttributedTextSelection.Indices?, type metadata accessor for AttributedTextSelection.Indices, MEMORY[0x1E69E6720]);
        memcpy(v27, v28, *(*(v31 - 8) + 64));
      }

      else
      {
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for RangeSet<AttributedString.Index>(0);
          v40 = v39;
        }

        else
        {
          v40 = type metadata accessor for AttributedString.Index();
        }

        (*(*(v40 - 8) + 32))(v27, v28);
        swift_storeEnumTagMultiPayload();
        (*(v30 + 56))(v27, 0, 1, v29);
      }

      v43 = type metadata accessor for AttributedTextSelection(0);
      v44 = *(v43 + 20);
      v45 = type metadata accessor for AttributeContainer();
      v46 = *(v45 - 8);
      if ((*(v46 + 48))(&v28[v44], 1, v45))
      {
        v47 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
        v48 = v50;
        memcpy(&v50[v44], &v28[v44], *(*(v47 - 8) + 64));
      }

      else
      {
        (*(v46 + 32))(&v50[v44], &v28[v44], v45);
        (*(v46 + 56))(&v50[v44], 0, 1, v45);
        v48 = v50;
      }

      v48[*(v43 + 24)] = v28[*(v43 + 24)];
      (*(v14 + 56))(v10, 0, 1, v13);
    }
  }

  else
  {
    v16 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v16;
    type metadata accessor for (Binding<String>, Binding<TextSelection?>?)(0);
    v18 = *(v17 + 48);
    v19 = (a1 + v18);
    v20 = (a2 + v18);
    type metadata accessor for Binding<TextSelection?>(0);
    v22 = v21;
    v23 = *(v21 - 8);
    if ((*(v23 + 48))(v20, 1, v21))
    {
      type metadata accessor for Binding<TextSelection?>?(0);
      memcpy(v19, v20, *(*(v24 - 8) + 64));
    }

    else
    {
      v32 = v20[1];
      *v19 = *v20;
      v19[1] = v32;
      v33 = *(v22 + 32);
      v34 = v19 + v33;
      v35 = v20 + v33;
      v36 = type metadata accessor for TextSelection(0);
      v37 = *(v36 - 8);
      if ((*(v37 + 48))(v35, 1, v36))
      {
        type metadata accessor for TextSelection?(0);
        memcpy(v34, v35, *(*(v38 - 8) + 64));
      }

      else
      {
        v41 = type metadata accessor for TextSelection.Indices(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for RangeSet<String.Index>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
          (*(*(v42 - 8) + 32))(v34, v35, v42);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(v34, v35, *(*(v41 - 8) + 64));
        }

        v34[*(v36 + 20)] = v35[*(v36 + 20)];
        (*(v37 + 56))(v34, 0, 1, v36);
      }

      (*(v23 + 56))(v19, 0, 1, v22);
    }
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t assignWithTake for TextEditor.Storage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    outlined destroy of Binding<TextSelection?>?(a1, type metadata accessor for TextEditor.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v5;
      _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
      v7 = *(v6 + 32);
      v8 = type metadata accessor for AttributedString();
      (*(*(v8 - 8) + 32))(a1 + v7, a2 + v7, v8);
      v9 = *(type metadata accessor for TextEditor.Storage.AttributedText(0) + 20);
      v10 = (a1 + v9);
      v11 = (a2 + v9);
      type metadata accessor for Binding<AttributedTextSelection>(0);
      v13 = v12;
      v14 = *(v12 - 8);
      if ((*(v14 + 48))(v11, 1, v12))
      {
        _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for Binding<AttributedTextSelection>?, type metadata accessor for Binding<AttributedTextSelection>, MEMORY[0x1E69E6720]);
        memcpy(v10, v11, *(*(v15 - 8) + 64));
      }

      else
      {
        v25 = v11[1];
        *v10 = *v11;
        v10[1] = v25;
        v26 = *(v13 + 32);
        v27 = v10 + v26;
        v28 = v11 + v26;
        v29 = type metadata accessor for AttributedTextSelection.Indices(0);
        v30 = *(v29 - 8);
        v50 = v27;
        if ((*(v30 + 48))(v28, 1, v29))
        {
          _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for AttributedTextSelection.Indices?, type metadata accessor for AttributedTextSelection.Indices, MEMORY[0x1E69E6720]);
          memcpy(v27, v28, *(*(v31 - 8) + 64));
        }

        else
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            type metadata accessor for RangeSet<AttributedString.Index>(0);
            v40 = v39;
          }

          else
          {
            v40 = type metadata accessor for AttributedString.Index();
          }

          (*(*(v40 - 8) + 32))(v27, v28);
          swift_storeEnumTagMultiPayload();
          (*(v30 + 56))(v27, 0, 1, v29);
        }

        v43 = type metadata accessor for AttributedTextSelection(0);
        v44 = *(v43 + 20);
        v45 = type metadata accessor for AttributeContainer();
        v46 = *(v45 - 8);
        if ((*(v46 + 48))(&v28[v44], 1, v45))
        {
          v47 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
          v48 = v50;
          memcpy(&v50[v44], &v28[v44], *(*(v47 - 8) + 64));
        }

        else
        {
          (*(v46 + 32))(&v50[v44], &v28[v44], v45);
          (*(v46 + 56))(&v50[v44], 0, 1, v45);
          v48 = v50;
        }

        v48[*(v43 + 24)] = v28[*(v43 + 24)];
        (*(v14 + 56))(v10, 0, 1, v13);
      }
    }

    else
    {
      v16 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v16;
      type metadata accessor for (Binding<String>, Binding<TextSelection?>?)(0);
      v18 = *(v17 + 48);
      v19 = (a1 + v18);
      v20 = (a2 + v18);
      type metadata accessor for Binding<TextSelection?>(0);
      v22 = v21;
      v23 = *(v21 - 8);
      if ((*(v23 + 48))(v20, 1, v21))
      {
        type metadata accessor for Binding<TextSelection?>?(0);
        memcpy(v19, v20, *(*(v24 - 8) + 64));
      }

      else
      {
        v32 = v20[1];
        *v19 = *v20;
        v19[1] = v32;
        v33 = *(v22 + 32);
        v34 = v19 + v33;
        v35 = v20 + v33;
        v36 = type metadata accessor for TextSelection(0);
        v37 = *(v36 - 8);
        if ((*(v37 + 48))(v35, 1, v36))
        {
          type metadata accessor for TextSelection?(0);
          memcpy(v34, v35, *(*(v38 - 8) + 64));
        }

        else
        {
          v41 = type metadata accessor for TextSelection.Indices(0);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            type metadata accessor for RangeSet<String.Index>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
            (*(*(v42 - 8) + 32))(v34, v35, v42);
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            memcpy(v34, v35, *(*(v41 - 8) + 64));
          }

          v34[*(v36 + 20)] = v35[*(v36 + 20)];
          (*(v37 + 56))(v34, 0, 1, v36);
        }

        (*(v23 + 56))(v19, 0, 1, v22);
      }
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void type metadata completion function for TextEditor.Storage(uint64_t a1)
{
  type metadata accessor for Binding<TextSelection?>?(319);
  if (v1 <= 0x3F)
  {
    swift_getTupleTypeLayout2();
    v4[4] = v4;
    v2 = type metadata accessor for TextEditor.Storage.AttributedText(319);
    if (v3 <= 0x3F)
    {
      v4[5] = *(v2 - 8) + 64;
      swift_initEnumMetadataMultiPayload();
    }
  }
}

void (*ToggleStyleConfiguration.isOn.modify(uint64_t *a1))(uint64_t a1)
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
  v4 = *v1;
  v5 = v1[1];
  *(v3 + 24) = *v1;
  *(v3 + 32) = v5;
  v6 = *(v1 + 16);
  *v3 = v4;
  *(v3 + 8) = v5;
  *(v3 + 16) = v6;
  _s7SwiftUI7BindingVySbGMaTm_1(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0]();
  return ToggleStyleConfiguration.isOn.modify;
}

void ToggleStyleConfiguration.isOn.modify(uint64_t a1)
{
  v1 = *a1;
  *(*a1 + 18) = *(*a1 + 17);
  dispatch thunk of AnyLocation.set(_:transaction:)();

  free(v1);
}

uint64_t ToggleStyleConfiguration.isOn.getter()
{
  v1 = v0[1];
  v2 = *(v0 + 16);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  _s7SwiftUI7BindingVySbGMaTm_1(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v4);
  return v4;
}

void *key path getter for ToggleStyleConfiguration.isOn : ToggleStyleConfiguration@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[1];
  v4 = *(a1 + 16);
  v7 = *a1;
  v8 = v3;
  v9 = v4;
  _s7SwiftUI7BindingVySbGMaTm_1(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  result = MEMORY[0x18D00ACC0](&v6);
  *a2 = v6;
  return result;
}

void key path setter for ToggleStyleConfiguration.isOn : ToggleStyleConfiguration(char *a1, uint64_t *a2)
{
  v2 = a2[6];
  v3 = a2[7];
  v4 = a2[8];
  v5 = a2[9];
  v6 = a2[10];
  v7 = a2[11];

  outlined copy of ToggleStyleConfiguration.Effect(v2, v3, v4, v5, v6, v7);
  dispatch thunk of AnyLocation.set(_:transaction:)();

  outlined consume of ToggleStyleConfiguration.Effect(v2, v3, v4, v5, v6, v7);
}

uint64_t ToggleStyleConfiguration.$isOn.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t closure #2 in ResolvedToggleStyle.body.getter(uint64_t *a1)
{
  _s7SwiftUI7BindingVySbGMaTm_1(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v2);
  return dispatch thunk of AnyLocation.set(_:transaction:)();
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ResolvedToggleStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedToggleStyle and conformance ResolvedToggleStyle();

  return MEMORY[0x1EEDDE4C0](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ResolvedToggleStyleBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedToggleStyleBody and conformance ResolvedToggleStyleBody();

  return MEMORY[0x1EEDE2370](a1, a2, a3, v6);
}

void ResolvedToggleStyleBody.ArchiveBody.body.getter(uint64_t a1@<X8>)
{
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 72);
  if (v8)
  {
    v27 = *(v1 + 104);
    v23 = *(v1 + 88);
    v25 = *(v1 + 96);
    v26 = *(v1 + 80);
    v10 = *(v1 + 48);
    v9 = *(v1 + 56);
    v2 = *(v1 + 64) & 1;
    outlined copy of Environment<AppIntentExecutor?>.Content(v10, v9, v2);
    v24 = v8;

    v11 = static Alignment.center.getter();
    v13 = v12;
    _s7SwiftUI7BindingVySbGMaTm_1(0, &lazy cache variable for type metadata for Binding<ToggleState>, MEMORY[0x1E697DD58], MEMORY[0x1E6981948]);
    MEMORY[0x18D00ACC0](&v28);
    v14 = v28;
    v15 = specialized Environment.wrappedValue.getter(v25, v27);
    v16 = v26;
    v17 = v15 & 1;
    v18 = v10;
    v3 = v23;
    v19 = v24;
    v20 = 1;
    v21 = v13 & 0xFFFFFFFFFFFFFF00;
    v22 = closure #1 in ResolvedToggleStyleBody.ArchiveBody.body.getter;
    v5 = &outlined read-only object #0 of ResolvedToggleStyleBody.ArchiveBody.body.getter;
    v7 = v13;
  }

  else
  {

    v22 = 0;
    v18 = 0;
    v9 = 0;
    v20 = 0;
    v14 = 0;
    v21 = 0;
    v11 = v6;
  }

  *a1 = v5;
  *(a1 + 8) = v11;
  *(a1 + 16) = v21 | v7;
  *(a1 + 24) = v22;
  *(a1 + 32) = 0;
  *(a1 + 40) = v14;
  *(a1 + 48) = 0;
  *(a1 + 56) = v18;
  *(a1 + 64) = v9;
  *(a1 + 72) = v2;
  *(a1 + 80) = v19;
  *(a1 + 88) = v16;
  *(a1 + 96) = v3;
  *(a1 + 104) = v17;
  *(a1 + 105) = v20;
}

uint64_t closure #1 in ResolvedToggleStyleBody.ArchiveBody.body.getter@<X0>(uint64_t a2@<X8>)
{
  static Binding.constant(_:)();
  v13[0] = v16[0];
  v13[1] = v16[1];
  v14 = v17;
  memset(v15, 0, sizeof(v15));
  ToggleStyleConfiguration.init(toggleState:appIntentAction:)(v13, v15, v16);
  v3 = v18;
  v4 = v19;
  v5 = v20;
  v6 = v24;
  if (v24)
  {
    v7 = v23 & 1;
    v8 = v21;
    v9 = v22;
    v10 = v25;
    v11 = v26;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v7 = 0;
    v10 = 0;
    v11 = 0;
  }

  outlined copy of ToggleStyleConfiguration.Effect(v21, v22, v23, v24, v25, v26);

  result = outlined destroy of ToggleStyleConfiguration(v16);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;
  *(a2 + 40) = v7;
  *(a2 + 48) = v6;
  *(a2 + 56) = v10;
  *(a2 + 64) = v11;
  return result;
}

uint64_t ResolvedToggleStyleBody.archivedBody.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v12[2] = v1[2];
  v12[3] = v3;
  v4 = v1[5];
  v12[4] = v1[4];
  v12[5] = v4;
  v5 = v1[1];
  v12[0] = *v1;
  v12[1] = v5;
  KeyPath = swift_getKeyPath();
  v11[0] = 0;
  v7 = v1[3];
  *(a1 + 32) = v1[2];
  *(a1 + 48) = v7;
  v8 = v1[5];
  *(a1 + 64) = v1[4];
  *(a1 + 80) = v8;
  v9 = v1[1];
  *a1 = *v1;
  *(a1 + 16) = v9;
  *(a1 + 96) = KeyPath;
  *(a1 + 104) = 0;
  return outlined init with copy of ToggleStyleConfiguration(v12, v11);
}

void closure #1 in ArchivableToggleAppIntentModifier.body(content:)(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  outlined init with copy of ArchivableToggleAppIntentModifier(a1, v4);
  if (static Update.threadIsUpdating.getter())
  {
    if (v3)
    {
      dispatch thunk of AnyLocation.wasRead.setter();
LABEL_6:
      v4[0] = v2 == 0;

      dispatch thunk of AnyLocation.set(_:transaction:)();
      outlined destroy of ArchivableToggleAppIntentModifier(a1);

      return;
    }
  }

  else if (v3)
  {
    dispatch thunk of AnyLocation.get()();
    v2 = v4[0];
    goto LABEL_6;
  }

  static Log.internalError(_:)();
  outlined destroy of ArchivableToggleAppIntentModifier(a1);
}

uint64_t closure #2 in ArchivableToggleAppIntentModifier.body(content:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1;
  v5 = *a2;
  v6 = *(a2 + 1);
  if (static Update.threadIsUpdating.getter())
  {
    if (v6)
    {
      dispatch thunk of AnyLocation.wasRead.setter();
    }
  }

  else if (v6)
  {
    dispatch thunk of AnyLocation.get()();
    v5 = v9;
  }

  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *a3 = v5;
  *(a3 + 8) = v3 & 1;
  *(a3 + 16) = KeyPath;
  *(a3 + 24) = 0;
  *(a3 + 32) = result;
  *(a3 + 104) = 0;
  return result;
}

uint64_t ArchivableToggleAppIntentModifier.encode(to:)(void *a1)
{
  type metadata accessor for ToggleStyleModifier<DefaultToggleStyle>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<ArchivableToggleAppIntentModifier.CodingKeys>, lazy protocol witness table accessor for type ArchivableToggleAppIntentModifier.CodingKeys and conformance ArchivableToggleAppIntentModifier.CodingKeys, &unk_1EFFA4C48, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v12 - v6;
  v8 = v1[1];
  v20 = *v1;
  v21 = v8;
  v9 = v1[3];
  v22 = v1[2];
  v23 = v9;
  v12[2] = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  outlined init with copy of ArchivableAppIntentToggle(&v20, &v16);
  lazy protocol witness table accessor for type ArchivableToggleAppIntentModifier.CodingKeys and conformance ArchivableToggleAppIntentModifier.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = v20;
  v17 = v21;
  v18 = v22;
  v19 = v23;
  v15 = 0;
  lazy protocol witness table accessor for type ArchivableAppIntentToggle and conformance ArchivableAppIntentToggle();
  v10 = v24;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v14[0] = v16;
  v14[1] = v17;
  v14[2] = v18;
  v14[3] = v19;
  outlined destroy of ArchivableAppIntentToggle(v14);
  if (!v10)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t ArchivableToggleAppIntentModifier.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  type metadata accessor for ToggleStyleModifier<DefaultToggleStyle>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<ArchivableToggleAppIntentModifier.CodingKeys>, lazy protocol witness table accessor for type ArchivableToggleAppIntentModifier.CodingKeys and conformance ArchivableToggleAppIntentModifier.CodingKeys, &unk_1EFFA4C48, MEMORY[0x1E69E6F48]);
  v18 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ArchivableToggleAppIntentModifier.CodingKeys and conformance ArchivableToggleAppIntentModifier.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v8 = v5;
  v9 = v17;
  v32 = 0;
  lazy protocol witness table accessor for type ArchivableAppIntentToggle and conformance ArchivableAppIntentToggle();
  v10 = v18;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v27 = v23;
  v28 = v24;
  v29 = v25;
  v30 = v26;
  v31 = 1;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v8 + 8))(v7, v10);
  v12 = v27;
  v13 = v28;
  v19[0] = v27;
  v19[1] = v28;
  v14 = v29;
  v15 = v30;
  v19[2] = v29;
  v19[3] = v30;
  v11 &= 1u;
  v20 = v11;
  *(v9 + 64) = v11;
  *(v9 + 32) = v14;
  *(v9 + 48) = v15;
  *v9 = v12;
  *(v9 + 16) = v13;
  outlined init with copy of ArchivableToggleAppIntentModifier(v19, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v21[0] = v27;
  v21[1] = v28;
  v21[2] = v29;
  v21[3] = v30;
  v22 = v11;
  return outlined destroy of ArchivableToggleAppIntentModifier(v21);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ArchivableToggleAppIntentModifier.CodingKeys()
{
  if (*v0)
  {
    return 0x656C62616E457369;
  }

  else
  {
    return 0x7453656C67676F74;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ArchivableToggleAppIntentModifier.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7453656C67676F74 && a2 == 0xEB00000000657461;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C62616E457369 && a2 == 0xE900000000000064)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ArchivableToggleAppIntentModifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ArchivableToggleAppIntentModifier.CodingKeys and conformance ArchivableToggleAppIntentModifier.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ArchivableToggleAppIntentModifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ArchivableToggleAppIntentModifier.CodingKeys and conformance ArchivableToggleAppIntentModifier.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance ArchivableToggleAppIntentModifier@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v15[2] = *(v1 + 32);
  v15[3] = v3;
  v16 = *(v1 + 64);
  v4 = *(v1 + 16);
  v15[0] = *v1;
  v15[1] = v4;
  v5 = swift_allocObject();
  v6 = *(v1 + 48);
  *(v5 + 48) = *(v1 + 32);
  *(v5 + 64) = v6;
  *(v5 + 80) = *(v1 + 64);
  v7 = *(v1 + 16);
  *(v5 + 16) = *v1;
  *(v5 + 32) = v7;
  v8 = swift_allocObject();
  v9 = *(v1 + 48);
  *(v8 + 48) = *(v1 + 32);
  *(v8 + 64) = v9;
  *(v8 + 80) = *(v1 + 64);
  v10 = *(v1 + 16);
  *(v8 + 16) = *v1;
  *(v8 + 32) = v10;
  v17 = 0;
  KeyPath = swift_getKeyPath();
  v12 = v16;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = partial apply for closure #1 in ArchivableToggleAppIntentModifier.body(content:);
  *(a1 + 24) = v5;
  *(a1 + 32) = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  *(a1 + 40) = 0;
  *(a1 + 48) = partial apply for closure #2 in ArchivableToggleAppIntentModifier.body(content:);
  *(a1 + 56) = v8;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 2;
  *(a1 + 82) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = KeyPath;
  *(a1 + 104) = v12;
  outlined init with copy of ArchivableToggleAppIntentModifier(v15, v14);
  return outlined init with copy of ArchivableToggleAppIntentModifier(v15, v14);
}

BOOL ArchivableAppIntentToggle.Box.update(property:phase:)(char *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  v5 = v4 == 0;
  if (!v4)
  {
    v6 = *a1;
    type metadata accessor for GraphHost();
    MEMORY[0x18D00B7D0]();
    LOBYTE(v28) = v6;
    _s7SwiftUI7BindingVySbGMaTm_1(0, &lazy cache variable for type metadata for StoredLocation<ToggleState>, MEMORY[0x1E697DD58], MEMORY[0x1E697E540]);
    swift_allocObject();
    v7 = StoredLocation.init(initialValue:host:signal:)();
    v8 = *(v1 + 24);
    v9 = *(a1 + 2);
    v10 = *(a1 + 3);
    v11 = *(a1 + 7);
    v27[0] = a1[32];
    *&v28 = v7;
    *(&v28 + 1) = v8;
    *&v29 = v9;
    *(&v29 + 1) = v10;
    v30[0] = v27[0];
    *&v30[8] = *(a1 + 40);
    *&v30[24] = v11;
    type metadata accessor for ToggleStyleModifier<DefaultToggleStyle>(0, &lazy cache variable for type metadata for LocationBox<ArchivableAppIntentToggle.AppIntentLocation>, lazy protocol witness table accessor for type ArchivableAppIntentToggle.AppIntentLocation and conformance ArchivableAppIntentToggle.AppIntentLocation, &unk_1EFFA4CC0, MEMORY[0x1E697DCF0]);
    swift_allocObject();

    outlined copy of Environment<AppIntentExecutor?>.Content(v9, v10, v27[0]);
    v12 = *&v30[8];

    v4 = LocationBox.init(_:)();
    *(v2 + 16) = v4;
  }

  _s7SwiftUI7BindingVySbGMaTm_1(0, &lazy cache variable for type metadata for AppIntentExecutor?, &type metadata for AppIntentExecutor, MEMORY[0x1E69E6720]);
  Value = AGGraphGetValue();
  v15 = v14;
  v16 = *Value;
  v17 = Value[1];
  v18 = *(v2 + 24);
  swift_beginAccess();
  v19 = *(v18 + 16);
  v20 = *(v18 + 24);
  *(v18 + 16) = v16;
  *(v18 + 24) = v17;
  outlined copy of AppIntentExecutor?(v16, v17);
  outlined copy of AppIntentExecutor?(v16, v17);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v19, v20);
  swift_beginAccess();
  v21 = v4[2];
  v28 = v4[1];
  v29 = v21;
  v22 = v4[4];
  *v30 = v4[3];
  *&v30[16] = v22;
  v23 = lazy protocol witness table accessor for type ArchivableAppIntentToggle.AppIntentLocation and conformance ArchivableAppIntentToggle.AppIntentLocation();
  LOBYTE(v19) = (*(v23 + 64))(&v26, &unk_1EFFA4CC0, v23);
  *a1 = v26;

  *(a1 + 1) = v4;
  if (v19)
  {
    swift_beginAccess();
    v24 = (*(v23 + 24))(&unk_1EFFA4CC0, v23);
    swift_endAccess();
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v16, v17);
    if (v24 & 1) != 0 || (v15)
    {
      return 1;
    }
  }

  else
  {
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v16, v17);
    if (v15)
    {
      return 1;
    }
  }

  return v5;
}

uint64_t ArchivableAppIntentToggle.AppIntentLocation.set(_:transaction:)(unsigned __int8 *a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *a1;
  LOBYTE(v30) = v27;
  StoredLocationBase.set(_:transaction:)();
  type metadata accessor for MainActor();
  static Semantics.v7.getter();
  v28 = v2;
  _s7SwiftUI7BindingVySbGMaTm_1(0, &lazy cache variable for type metadata for ()?, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6720]);
  static MainActor.assumeIsolatedIfLinkedOnOrAfter<A>(_:context:_:file:line:)();
  static Log.archivedToggle.getter();
  v9 = *(v2 + 40);
  v30 = *(v3 + 16);
  v31 = *(v3 + 32);

  outlined init with copy of Environment<AppIntentExecutor?>(&v30, v29);
  v10 = v9;

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  outlined destroy of Environment<AppIntentExecutor?>(&v30);

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v29[0] = v14;
    *v13 = 136315394;
    v15 = [v10 debugDescription];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, v29);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = 0xE300000000000000;
    v21 = 6710895;
    if (v27 != 1)
    {
      v21 = 0x646578696DLL;
      v20 = 0xE500000000000000;
    }

    if (v27)
    {
      v22 = v21;
    }

    else
    {
      v22 = 28271;
    }

    if (v27)
    {
      v23 = v20;
    }

    else
    {
      v23 = 0xE200000000000000;
    }

    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v29);

    *(v13 + 14) = v24;
    _os_log_impl(&dword_18BD4A000, v11, v12, "Executed LNAction %s when setting value %s.", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x18D0110E0](v14, -1, -1);
    MEMORY[0x18D0110E0](v13, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

void closure #1 in ArchivableAppIntentToggle.AppIntentLocation.set(_:transaction:)(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = *(a1 + 8);
  swift_beginAccess();
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = *(v4 + 24);
    v7 = *(a1 + 40);

    v5(v7);
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v5, v6);
  }

  *a2 = v5 == 0;
}

uint64_t (*protocol witness for Location.wasRead.modify in conformance ArchivableAppIntentToggle.AppIntentLocation(uint64_t a1))(uint64_t a1)
{
  *a1 = *v1;
  *(a1 + 8) = StoredLocationBase.wasRead.getter() & 1;
  return protocol witness for Location.wasRead.modify in conformance ArchivableAppIntentToggle.AppIntentLocation;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ArchivableAppIntentToggle.CodingKeys()
{
  if (*v0)
  {
    return 0x6E65746E49707061;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ArchivableAppIntentToggle.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E65746E49707061 && a2 == 0xEF6E6F6974634174)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ArchivableAppIntentToggle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ArchivableAppIntentToggle.CodingKeys and conformance ArchivableAppIntentToggle.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ArchivableAppIntentToggle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ArchivableAppIntentToggle.CodingKeys and conformance ArchivableAppIntentToggle.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ArchivableAppIntentToggle.encode(to:)(void *a1)
{
  type metadata accessor for ToggleStyleModifier<DefaultToggleStyle>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<ArchivableAppIntentToggle.CodingKeys>, lazy protocol witness table accessor for type ArchivableAppIntentToggle.CodingKeys and conformance ArchivableAppIntentToggle.CodingKeys, &type metadata for ArchivableAppIntentToggle.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = *(v1 + 2);
  v14 = *(v1 + 3);
  v15 = v9;
  v23 = v1[32];
  v16 = *(v1 + 40);
  v13 = *(v1 + 7);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ArchivableAppIntentToggle.CodingKeys and conformance ArchivableAppIntentToggle.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v18) = v8;
  v24 = 0;
  lazy protocol witness table accessor for type ToggleState and conformance ToggleState();
  v10 = v17;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v10)
  {
    v18 = v15;
    v19 = v14;
    v20 = v23;
    v21 = v16;
    v22 = v13;
    v24 = 1;
    lazy protocol witness table accessor for type AppIntentAction and conformance AppIntentAction();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t ArchivableAppIntentToggle.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v42 = a2;
  type metadata accessor for ToggleStyleModifier<DefaultToggleStyle>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<ArchivableAppIntentToggle.CodingKeys>, lazy protocol witness table accessor for type ArchivableAppIntentToggle.CodingKeys and conformance ArchivableAppIntentToggle.CodingKeys, &type metadata for ArchivableAppIntentToggle.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ArchivableAppIntentToggle.CodingKeys and conformance ArchivableAppIntentToggle.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v6;
  v10 = v42;
  LOBYTE(v21[0]) = 0;
  lazy protocol witness table accessor for type ToggleState and conformance ToggleState();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v25;
  v34 = 1;
  lazy protocol witness table accessor for type AppIntentAction and conformance AppIntentAction();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v9 + 8))(v8, v5);
  v12 = v35;
  v13 = v36;
  v14 = v38;
  v20 = v37;
  v19 = *(&v38 + 1);
  v40 = v36;
  LOBYTE(v21[0]) = v11;
  *(v21 + 1) = v41[0];
  HIDWORD(v21[0]) = *(v41 + 3);
  v21[1] = 0;
  v22 = v35;
  LOBYTE(v23) = v36;
  DWORD1(v23) = *&v39[3];
  *(&v23 + 1) = *v39;
  *(&v23 + 1) = v37;
  v24 = v38;
  v15 = v21[0];
  v16 = v35;
  v17 = v38;
  v10[2] = v23;
  v10[3] = v17;
  *v10 = v15;
  v10[1] = v16;
  outlined init with copy of ArchivableAppIntentToggle(v21, &v25);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v25 = v11;
  *v26 = v41[0];
  *&v26[3] = *(v41 + 3);
  v27 = 0;
  v28 = v12;
  v29 = v13;
  *v30 = *v39;
  *&v30[3] = *&v39[3];
  v31 = v20;
  v32 = v14;
  v33 = v19;
  return outlined destroy of ArchivableAppIntentToggle(&v25);
}

double destroy for ToggleStyleConfiguration.Effect(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*a1, *(a1 + 8), *(a1 + 16));
  }

  return result;
}

uint64_t assignWithCopy for ToggleStyleConfiguration.Effect(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 3);
  if (*(a1 + 24) < 0xFFFFFFFFuLL)
  {
    if (v4 >= 0xFFFFFFFF)
    {
      v15 = *a2;
      v16 = *(a2 + 1);
      v17 = *(a2 + 16);
      outlined copy of Environment<AppIntentExecutor?>.Content(*a2, v16, v17);
      *a1 = v15;
      *(a1 + 8) = v16;
      *(a1 + 16) = v17;
      v18 = *(a2 + 3);
      *(a1 + 24) = v18;
      v19 = *(a2 + 4);
      v20 = *(a2 + 5);
      *(a1 + 32) = v19;
      *(a1 + 40) = v20;
      v21 = v18;

      return a1;
    }

LABEL_7:
    v22 = *a2;
    v23 = a2[2];
    *(a1 + 16) = a2[1];
    *(a1 + 32) = v23;
    *a1 = v22;
    return a1;
  }

  if (v4 < 0xFFFFFFFF)
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*a1, *(a1 + 8), *(a1 + 16));

    goto LABEL_7;
  }

  v5 = *a2;
  v6 = *(a2 + 1);
  v7 = *(a2 + 16);
  outlined copy of Environment<AppIntentExecutor?>.Content(*a2, v6, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  outlined consume of Environment<AppIntentExecutor?>.Content(v8, v9, v10);
  v11 = *(a2 + 3);
  v12 = *(a1 + 24);
  *(a1 + 24) = v11;
  v13 = v11;

  v14 = *(a2 + 5);
  *(a1 + 32) = *(a2 + 4);
  *(a1 + 40) = v14;

  return a1;
}

uint64_t assignWithTake for ToggleStyleConfiguration.Effect(uint64_t result, uint64_t a2)
{
  v3 = *(result + 24);
  if (v3 < 0xFFFFFFFF)
  {
    v10 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v10;
    *(result + 32) = *(a2 + 32);
  }

  else
  {
    v4 = *(a2 + 24);
    if (v4 < 0xFFFFFFFF)
    {
      v9 = result;
      outlined consume of Environment<AppIntentExecutor?>.Content(*result, *(result + 8), *(result + 16));

      v11 = *(a2 + 16);
      *v9 = *a2;
      *(v9 + 16) = v11;
      *(v9 + 32) = *(a2 + 32);
    }

    else
    {
      v5 = *(a2 + 16);
      v7 = *result;
      v6 = *(result + 8);
      v8 = *(result + 16);
      *result = *a2;
      *(result + 16) = v5;
      v9 = result;
      outlined consume of Environment<AppIntentExecutor?>.Content(v7, v6, v8);
      *(v9 + 24) = v4;

      *(v9 + 32) = *(a2 + 32);
    }

    return v9;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ToggleStyleConfiguration.Effect(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ToggleStyleConfiguration.Effect(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

double destructiveInjectEnumTag for ToggleStyleConfiguration.Effect(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 40) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance ToggleStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ToggleStyleModifier<A>, a5);

  return MEMORY[0x1EEDDE4B8](a1, a2, a3, a4, a5, WitnessTable);
}

unint64_t lazy protocol witness table accessor for type ArchivableAppIntentToggle.CodingKeys and conformance ArchivableAppIntentToggle.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ArchivableAppIntentToggle.CodingKeys and conformance ArchivableAppIntentToggle.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivableAppIntentToggle.CodingKeys and conformance ArchivableAppIntentToggle.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivableAppIntentToggle.CodingKeys, &type metadata for ArchivableAppIntentToggle.CodingKeys, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableAppIntentToggle.CodingKeys and conformance ArchivableAppIntentToggle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivableAppIntentToggle.CodingKeys and conformance ArchivableAppIntentToggle.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivableAppIntentToggle.CodingKeys and conformance ArchivableAppIntentToggle.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivableAppIntentToggle.CodingKeys, &type metadata for ArchivableAppIntentToggle.CodingKeys, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableAppIntentToggle.CodingKeys and conformance ArchivableAppIntentToggle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivableAppIntentToggle.CodingKeys and conformance ArchivableAppIntentToggle.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivableAppIntentToggle.CodingKeys and conformance ArchivableAppIntentToggle.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivableAppIntentToggle.CodingKeys, &type metadata for ArchivableAppIntentToggle.CodingKeys, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableAppIntentToggle.CodingKeys and conformance ArchivableAppIntentToggle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivableAppIntentToggle.CodingKeys and conformance ArchivableAppIntentToggle.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivableAppIntentToggle.CodingKeys and conformance ArchivableAppIntentToggle.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivableAppIntentToggle.CodingKeys, &type metadata for ArchivableAppIntentToggle.CodingKeys, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableAppIntentToggle.CodingKeys and conformance ArchivableAppIntentToggle.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ToggleState and conformance ToggleState()
{
  result = lazy protocol witness table cache variable for type ToggleState and conformance ToggleState;
  if (!lazy protocol witness table cache variable for type ToggleState and conformance ToggleState)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697DD70], MEMORY[0x1E697DD58], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToggleState and conformance ToggleState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToggleState and conformance ToggleState;
  if (!lazy protocol witness table cache variable for type ToggleState and conformance ToggleState)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697DD60], MEMORY[0x1E697DD58], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToggleState and conformance ToggleState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToggleState and conformance ToggleState;
  if (!lazy protocol witness table cache variable for type ToggleState and conformance ToggleState)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697DD68], MEMORY[0x1E697DD58], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToggleState and conformance ToggleState);
  }

  return result;
}

void outlined consume of ToggleStyleConfiguration.Effect(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(a1, a2, a3 & 1);
  }
}

uint64_t initializeWithCopy for ArchivableToggleAppIntentModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);

  outlined copy of Environment<AppIntentExecutor?>.Content(v4, v5, v6);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  v7 = *(a2 + 56);
  v8 = *(a2 + 40);
  *(a1 + 40) = v8;
  *(a1 + 56) = v7;
  *(a1 + 64) = *(a2 + 64);
  v9 = v8;

  return a1;
}

uint64_t assignWithCopy for ArchivableToggleAppIntentModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  outlined copy of Environment<AppIntentExecutor?>.Content(v4, v5, v6);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  outlined consume of Environment<AppIntentExecutor?>.Content(v7, v8, v9);
  v10 = *(a2 + 40);
  v11 = *(a1 + 40);
  *(a1 + 40) = v10;
  v12 = v10;

  v13 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v13;

  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t assignWithTake for ArchivableToggleAppIntentModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 32);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  outlined consume of Environment<AppIntentExecutor?>.Content(v5, v6, v7);

  v8 = *(a2 + 56);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = v8;

  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t getEnumTagSinglePayload for ArchivableToggleAppIntentModifier(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ArchivableToggleAppIntentModifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t *assignWithTake for ToggleStyleConfiguration(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  *(a1 + 16) = *(a2 + 16);
  a1[3] = a2[3];

  a1[4] = a2[4];

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 41) = *(a2 + 41);
  v4 = a1[9];
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = a2[9];
  if (!v5)
  {
    outlined destroy of AppIntentAction((a1 + 6));
LABEL_5:
    v10 = *(a2 + 4);
    *(a1 + 3) = *(a2 + 3);
    *(a1 + 4) = v10;
    *(a1 + 5) = *(a2 + 5);
    return a1;
  }

  v6 = *(a2 + 64);
  v7 = a1[6];
  v8 = a1[7];
  v9 = *(a1 + 64);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 64) = v6;
  outlined consume of Environment<AppIntentExecutor?>.Content(v7, v8, v9);
  a1[9] = v5;

  *(a1 + 5) = *(a2 + 5);

  return a1;
}

uint64_t getEnumTagSinglePayload for ToggleStyleConfiguration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ToggleStyleConfiguration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for ResolvedToggleStyleBody.ArchiveBody(uint64_t a1)
{

  v2 = *(a1 + 72);
  if (v2)
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*(a1 + 48), *(a1 + 56), *(a1 + 64));
  }

  v3 = *(a1 + 96);
  v4 = *(a1 + 104);

  return outlined consume of Environment<Bool>.Content(v3, v4);
}

uint64_t initializeWithCopy for ResolvedToggleStyleBody.ArchiveBody(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  v5 = a2[4];
  *(a1 + 24) = a2[3];
  *(a1 + 32) = v5;
  *(a1 + 40) = *(a2 + 20);
  v6 = a2[9];

  if (v6)
  {
    v7 = a2[6];
    v8 = a2[7];
    v9 = *(a2 + 64);
    outlined copy of Environment<AppIntentExecutor?>.Content(v7, v8, v9);
    *(a1 + 48) = v7;
    *(a1 + 56) = v8;
    *(a1 + 64) = v9;
    v10 = a2[10];
    v11 = a2[11];
    *(a1 + 72) = v6;
    *(a1 + 80) = v10;
    *(a1 + 88) = v11;
    v12 = v6;
  }

  else
  {
    v13 = *(a2 + 4);
    *(a1 + 48) = *(a2 + 3);
    *(a1 + 64) = v13;
    *(a1 + 80) = *(a2 + 5);
  }

  v14 = a2[12];
  v15 = *(a2 + 104);
  outlined copy of Environment<Bool>.Content();
  *(a1 + 96) = v14;
  *(a1 + 104) = v15;
  return a1;
}

uint64_t *assignWithCopy for ResolvedToggleStyleBody.ArchiveBody(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  *(a1 + 16) = *(a2 + 16);
  a1[3] = a2[3];

  a1[4] = a2[4];

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 41) = *(a2 + 41);
  v4 = a2[9];
  if (a1[9])
  {
    if (v4)
    {
      v5 = a2[6];
      v6 = a2[7];
      v7 = *(a2 + 64);
      outlined copy of Environment<AppIntentExecutor?>.Content(v5, v6, v7);
      v8 = a1[6];
      v9 = a1[7];
      v10 = *(a1 + 64);
      a1[6] = v5;
      a1[7] = v6;
      *(a1 + 64) = v7;
      outlined consume of Environment<AppIntentExecutor?>.Content(v8, v9, v10);
      v11 = a2[9];
      v12 = a1[9];
      a1[9] = v11;
      v13 = v11;

      v14 = a2[11];
      a1[10] = a2[10];
      a1[11] = v14;
    }

    else
    {
      outlined destroy of AppIntentAction((a1 + 6));
      v22 = *(a2 + 4);
      v21 = *(a2 + 5);
      *(a1 + 3) = *(a2 + 3);
      *(a1 + 4) = v22;
      *(a1 + 5) = v21;
    }
  }

  else if (v4)
  {
    v15 = a2[6];
    v16 = a2[7];
    v17 = *(a2 + 64);
    outlined copy of Environment<AppIntentExecutor?>.Content(v15, v16, v17);
    a1[6] = v15;
    a1[7] = v16;
    *(a1 + 64) = v17;
    v18 = a2[9];
    a1[9] = v18;
    v19 = a2[11];
    a1[10] = a2[10];
    a1[11] = v19;
    v20 = v18;
  }

  else
  {
    v23 = *(a2 + 3);
    v24 = *(a2 + 5);
    *(a1 + 4) = *(a2 + 4);
    *(a1 + 5) = v24;
    *(a1 + 3) = v23;
  }

  v25 = a2[12];
  v26 = *(a2 + 104);
  outlined copy of Environment<Bool>.Content();
  v27 = a1[12];
  v28 = *(a1 + 104);
  a1[12] = v25;
  *(a1 + 104) = v26;
  outlined consume of Environment<Bool>.Content(v27, v28);
  return a1;
}

uint64_t *assignWithTake for ResolvedToggleStyleBody.ArchiveBody(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  *(a1 + 16) = *(a2 + 16);
  a1[3] = a2[3];

  a1[4] = a2[4];

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 41) = *(a2 + 41);
  v4 = a1[9];
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = a2[9];
  if (!v5)
  {
    outlined destroy of AppIntentAction((a1 + 6));
LABEL_5:
    v10 = *(a2 + 4);
    *(a1 + 3) = *(a2 + 3);
    *(a1 + 4) = v10;
    *(a1 + 5) = *(a2 + 5);
    goto LABEL_6;
  }

  v6 = *(a2 + 64);
  v7 = a1[6];
  v8 = a1[7];
  v9 = *(a1 + 64);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 64) = v6;
  outlined consume of Environment<AppIntentExecutor?>.Content(v7, v8, v9);
  a1[9] = v5;

  *(a1 + 5) = *(a2 + 5);

LABEL_6:
  v11 = *(a2 + 104);
  v12 = a1[12];
  v13 = *(a1 + 104);
  a1[12] = a2[12];
  *(a1 + 104) = v11;
  outlined consume of Environment<Bool>.Content(v12, v13);
  return a1;
}

uint64_t getEnumTagSinglePayload for ResolvedToggleStyleBody.ArchiveBody(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ResolvedToggleStyleBody.ArchiveBody(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double destroy for ArchivableToggleAppIntentModifier(uint64_t a1)
{

  outlined consume of Environment<AppIntentExecutor?>.Content(*(a1 + 16), *(a1 + 24), *(a1 + 32));

  return result;
}

uint64_t initializeWithCopy for ArchivableAppIntentToggle(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);

  outlined copy of Environment<AppIntentExecutor?>.Content(v4, v5, v6);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  v7 = *(a2 + 56);
  v8 = *(a2 + 40);
  *(a1 + 40) = v8;
  *(a1 + 56) = v7;
  v9 = v8;

  return a1;
}

uint64_t assignWithCopy for ArchivableAppIntentToggle(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  outlined copy of Environment<AppIntentExecutor?>.Content(v4, v5, v6);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  outlined consume of Environment<AppIntentExecutor?>.Content(v7, v8, v9);
  v10 = *(a2 + 40);
  v11 = *(a1 + 40);
  *(a1 + 40) = v10;
  v12 = v10;

  v13 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v13;

  return a1;
}

uint64_t assignWithTake for ArchivableAppIntentToggle(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 32);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  outlined consume of Environment<AppIntentExecutor?>.Content(v5, v6, v7);

  v8 = *(a2 + 56);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = v8;

  return a1;
}

unint64_t instantiation function for generic protocol witness table for ArchivableToggleAppIntentModifier(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type ArchivableToggleAppIntentModifier and conformance ArchivableToggleAppIntentModifier();
  a1[2] = lazy protocol witness table accessor for type ArchivableToggleAppIntentModifier and conformance ArchivableToggleAppIntentModifier();
  result = lazy protocol witness table accessor for type ArchivableToggleAppIntentModifier and conformance ArchivableToggleAppIntentModifier();
  a1[3] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ArchivableToggleAppIntentModifier.CodingKeys and conformance ArchivableToggleAppIntentModifier.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ArchivableToggleAppIntentModifier.CodingKeys and conformance ArchivableToggleAppIntentModifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivableToggleAppIntentModifier.CodingKeys and conformance ArchivableToggleAppIntentModifier.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivableToggleAppIntentModifier.CodingKeys, &unk_1EFFA4C48, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableToggleAppIntentModifier.CodingKeys and conformance ArchivableToggleAppIntentModifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivableToggleAppIntentModifier.CodingKeys and conformance ArchivableToggleAppIntentModifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivableToggleAppIntentModifier.CodingKeys and conformance ArchivableToggleAppIntentModifier.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivableToggleAppIntentModifier.CodingKeys, &unk_1EFFA4C48, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableToggleAppIntentModifier.CodingKeys and conformance ArchivableToggleAppIntentModifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivableToggleAppIntentModifier.CodingKeys and conformance ArchivableToggleAppIntentModifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivableToggleAppIntentModifier.CodingKeys and conformance ArchivableToggleAppIntentModifier.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivableToggleAppIntentModifier.CodingKeys, &unk_1EFFA4C48, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableToggleAppIntentModifier.CodingKeys and conformance ArchivableToggleAppIntentModifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivableToggleAppIntentModifier.CodingKeys and conformance ArchivableToggleAppIntentModifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivableToggleAppIntentModifier.CodingKeys and conformance ArchivableToggleAppIntentModifier.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivableToggleAppIntentModifier.CodingKeys, &unk_1EFFA4C48, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableToggleAppIntentModifier.CodingKeys and conformance ArchivableToggleAppIntentModifier.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ArchivableAppIntentToggle and conformance ArchivableAppIntentToggle()
{
  result = lazy protocol witness table cache variable for type ArchivableAppIntentToggle and conformance ArchivableAppIntentToggle;
  if (!lazy protocol witness table cache variable for type ArchivableAppIntentToggle and conformance ArchivableAppIntentToggle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivableAppIntentToggle, &type metadata for ArchivableAppIntentToggle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableAppIntentToggle and conformance ArchivableAppIntentToggle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivableAppIntentToggle and conformance ArchivableAppIntentToggle;
  if (!lazy protocol witness table cache variable for type ArchivableAppIntentToggle and conformance ArchivableAppIntentToggle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivableAppIntentToggle, &type metadata for ArchivableAppIntentToggle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableAppIntentToggle and conformance ArchivableAppIntentToggle);
  }

  return result;
}

uint64_t objectdestroy_29Tm()
{

  outlined consume of Environment<AppIntentExecutor?>.Content(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

double specialized static ArchivableAppIntentToggle._makeProperty<A>(in:container:fieldOffset:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Attribute.init<A>(body:value:flags:update:)();
  AGCreateWeakAttribute();
  if (one-time initialization token for appIntentExecutor != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  _s7SwiftUI7BindingVySbGMaTm_1(0, &lazy cache variable for type metadata for AppIntentExecutor?, &type metadata for AppIntentExecutor, MEMORY[0x1E69E6720]);
  CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  type metadata accessor for MutableBox<AppIntentExecutor?>(0, &lazy cache variable for type metadata for MutableBox<AppIntentExecutor?>, MEMORY[0x1E697DAC0]);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  lazy protocol witness table accessor for type ArchivableAppIntentToggle.Box and conformance ArchivableAppIntentToggle.Box();
  _DynamicPropertyBuffer.append<A>(_:fieldOffset:)();

  return result;
}

unint64_t lazy protocol witness table accessor for type ArchivableAppIntentToggle.Box and conformance ArchivableAppIntentToggle.Box()
{
  result = lazy protocol witness table cache variable for type ArchivableAppIntentToggle.Box and conformance ArchivableAppIntentToggle.Box;
  if (!lazy protocol witness table cache variable for type ArchivableAppIntentToggle.Box and conformance ArchivableAppIntentToggle.Box)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivableAppIntentToggle.Box, &unk_1EFFA4BA8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableAppIntentToggle.Box and conformance ArchivableAppIntentToggle.Box);
  }

  return result;
}

uint64_t initializeWithCopy for ArchivableAppIntentToggle.Box(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;

  return a1;
}

uint64_t assignWithCopy for ArchivableAppIntentToggle.Box(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithTake for ArchivableAppIntentToggle.Box(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t getEnumTagSinglePayload for ArchivableAppIntentToggle.Box(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ArchivableAppIntentToggle.Box(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ButtonBehavior<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>>, _EnvironmentKeyWritingModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ButtonBehavior<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>>, _EnvironmentKeyWritingModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ButtonBehavior<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>>, _EnvironmentKeyWritingModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ButtonBehavior<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>>, _EnvironmentKeyWritingModifier<Bool>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ButtonBehavior<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>> and conformance ButtonBehavior<A>(&lazy protocol witness table cache variable for type ButtonBehavior<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>> and conformance ButtonBehavior<A>, type metadata accessor for ButtonBehavior<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>>, protocol conformance descriptor for ButtonBehavior<A>);
    v5[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ButtonBehavior<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>>, _EnvironmentKeyWritingModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ButtonBehavior<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>>, _EnvironmentKeyWritingModifier<Bool>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ButtonBehavior<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>>, _EnvironmentKeyWritingModifier<Bool>>)
  {
    type metadata accessor for ButtonBehavior<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>>(255);
    _s7SwiftUI7BindingVySbGMaTm_1(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ButtonBehavior<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>>, _EnvironmentKeyWritingModifier<Bool>>);
    }
  }
}

void type metadata accessor for ButtonBehavior<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ButtonBehavior<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>(255);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ResolvedToggleStyleBody.ArchiveBody, ArchivesInteractiveControlsEffect>, HandGestureShortcutInteractiveControl> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>, OpacityButtonHighlightModifier> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type _ContentShapeModifier<Rectangle> and conformance _ContentShapeModifier<A>);
    v6 = type metadata accessor for ButtonBehavior(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for ButtonBehavior<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>)
  {
    type metadata accessor for ModifiedContent<TemporalStack<[ToggleState], Toggle<ToggleStyleConfiguration.Label>>, ArchivableToggleAppIntentModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>, OpacityButtonHighlightModifier>, type metadata accessor for ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>);
    type metadata accessor for ToggleStyleModifier<DefaultToggleStyle>(255, &lazy cache variable for type metadata for _ContentShapeModifier<Rectangle>, lazy protocol witness table accessor for type Rectangle and conformance Rectangle, MEMORY[0x1E6981EF8], MEMORY[0x1E697FD48]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<TemporalStack<[ToggleState], Toggle<ToggleStyleConfiguration.Label>>, ArchivableToggleAppIntentModifier>(uint64_t a1, unint64_t *a2, double (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>)
  {
    type metadata accessor for ToggleStyleModifier<DefaultToggleStyle>(255, &lazy cache variable for type metadata for _ViewModifier_Content<ArchivableToggleAppIntentModifier>, lazy protocol witness table accessor for type ArchivableToggleAppIntentModifier and conformance ArchivableToggleAppIntentModifier, &type metadata for ArchivableToggleAppIntentModifier, MEMORY[0x1E697FDE8]);
    type metadata accessor for ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>(255, &lazy cache variable for type metadata for TemporalStateViewModifier<ToggleState>, MEMORY[0x1E697DD58], MEMORY[0x1E697DD50], type metadata accessor for TemporalStateViewModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>, OpacityButtonHighlightModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>, OpacityButtonHighlightModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>, OpacityButtonHighlightModifier> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<TemporalStack<[ToggleState], Toggle<ToggleStyleConfiguration.Label>>, ArchivableToggleAppIntentModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>, OpacityButtonHighlightModifier>, type metadata accessor for ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>, lazy protocol witness table accessor for type _ViewModifier_Content<ArchivableToggleAppIntentModifier> and conformance _ViewModifier_Content<A>, &protocol witness table for TemporalStateViewModifier<A>);
    v5[1] = lazy protocol witness table accessor for type OpacityButtonHighlightModifier and conformance OpacityButtonHighlightModifier();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>, OpacityButtonHighlightModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<ArchivableToggleAppIntentModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<ArchivableToggleAppIntentModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<ArchivableToggleAppIntentModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for ToggleStyleModifier<DefaultToggleStyle>(255, &lazy cache variable for type metadata for _ViewModifier_Content<ArchivableToggleAppIntentModifier>, lazy protocol witness table accessor for type ArchivableToggleAppIntentModifier and conformance ArchivableToggleAppIntentModifier, &type metadata for ArchivableToggleAppIntentModifier, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable(MEMORY[0x1E697FDF8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<ArchivableToggleAppIntentModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<Toggle<ToggleStyleConfiguration.Label>, ModifiedContent<TemporalStack<[ToggleState], Toggle<ToggleStyleConfiguration.Label>>, ArchivableToggleAppIntentModifier>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<Toggle<ToggleStyleConfiguration.Label>, ModifiedContent<TemporalStack<[ToggleState], Toggle<ToggleStyleConfiguration.Label>>, ArchivableToggleAppIntentModifier>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<Toggle<ToggleStyleConfiguration.Label>, ModifiedContent<TemporalStack<[ToggleState], Toggle<ToggleStyleConfiguration.Label>>, ArchivableToggleAppIntentModifier>> and conformance <> _ConditionalContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for _ConditionalContent<Toggle<ToggleStyleConfiguration.Label>, ModifiedContent<TemporalStack<[ToggleState], Toggle<ToggleStyleConfiguration.Label>>, ArchivableToggleAppIntentModifier>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type Toggle<ToggleStyleConfiguration.Label> and conformance Toggle<A>();
    v5[1] = lazy protocol witness table accessor for type ModifiedContent<TemporalStack<[ToggleState], Toggle<ToggleStyleConfiguration.Label>>, ArchivableToggleAppIntentModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable(MEMORY[0x1E697F968], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<Toggle<ToggleStyleConfiguration.Label>, ModifiedContent<TemporalStack<[ToggleState], Toggle<ToggleStyleConfiguration.Label>>, ArchivableToggleAppIntentModifier>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

void type metadata accessor for _ConditionalContent<Toggle<ToggleStyleConfiguration.Label>, ModifiedContent<TemporalStack<[ToggleState], Toggle<ToggleStyleConfiguration.Label>>, ArchivableToggleAppIntentModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ConditionalContent<Toggle<ToggleStyleConfiguration.Label>, ModifiedContent<TemporalStack<[ToggleState], Toggle<ToggleStyleConfiguration.Label>>, ArchivableToggleAppIntentModifier>>)
  {
    type metadata accessor for ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>(255, &lazy cache variable for type metadata for Toggle<ToggleStyleConfiguration.Label>, &type metadata for ToggleStyleConfiguration.Label, &protocol witness table for ToggleStyleConfiguration.Label, type metadata accessor for Toggle);
    type metadata accessor for ModifiedContent<TemporalStack<[ToggleState], Toggle<ToggleStyleConfiguration.Label>>, ArchivableToggleAppIntentModifier>(255, &lazy cache variable for type metadata for ModifiedContent<TemporalStack<[ToggleState], Toggle<ToggleStyleConfiguration.Label>>, ArchivableToggleAppIntentModifier>, type metadata accessor for TemporalStack<[ToggleState], Toggle<ToggleStyleConfiguration.Label>>);
    v1 = type metadata accessor for _ConditionalContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ConditionalContent<Toggle<ToggleStyleConfiguration.Label>, ModifiedContent<TemporalStack<[ToggleState], Toggle<ToggleStyleConfiguration.Label>>, ArchivableToggleAppIntentModifier>>);
    }
  }
}

void type metadata accessor for TemporalStack<[ToggleState], Toggle<ToggleStyleConfiguration.Label>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TemporalStack<[ToggleState], Toggle<ToggleStyleConfiguration.Label>>)
  {
    _s7SwiftUI7BindingVySbGMaTm_1(255, &lazy cache variable for type metadata for [ToggleState], MEMORY[0x1E697DD58], MEMORY[0x1E69E62F8]);
    v3 = v2;
    type metadata accessor for ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>(255, &lazy cache variable for type metadata for Toggle<ToggleStyleConfiguration.Label>, &type metadata for ToggleStyleConfiguration.Label, &protocol witness table for ToggleStyleConfiguration.Label, type metadata accessor for Toggle);
    v7[0] = v3;
    v7[1] = v4;
    v7[2] = lazy protocol witness table accessor for type [ToggleState] and conformance [A]();
    v7[3] = lazy protocol witness table accessor for type Toggle<ToggleStyleConfiguration.Label> and conformance Toggle<A>();
    v7[4] = lazy protocol witness table accessor for type ToggleState and conformance ToggleState();
    v7[5] = MEMORY[0x1E697DD50];
    v5 = type metadata accessor for TemporalStack(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for TemporalStack<[ToggleState], Toggle<ToggleStyleConfiguration.Label>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type [ToggleState] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [ToggleState] and conformance [A];
  if (!lazy protocol witness table cache variable for type [ToggleState] and conformance [A])
  {
    _s7SwiftUI7BindingVySbGMaTm_1(255, &lazy cache variable for type metadata for [ToggleState], MEMORY[0x1E697DD58], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type [ToggleState] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<TemporalStack<[ToggleState], Toggle<ToggleStyleConfiguration.Label>>, ArchivableToggleAppIntentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<TemporalStack<[ToggleState], Toggle<ToggleStyleConfiguration.Label>>, ArchivableToggleAppIntentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<TemporalStack<[ToggleState], Toggle<ToggleStyleConfiguration.Label>>, ArchivableToggleAppIntentModifier> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<TemporalStack<[ToggleState], Toggle<ToggleStyleConfiguration.Label>>, ArchivableToggleAppIntentModifier>(255, &lazy cache variable for type metadata for ModifiedContent<TemporalStack<[ToggleState], Toggle<ToggleStyleConfiguration.Label>>, ArchivableToggleAppIntentModifier>, type metadata accessor for TemporalStack<[ToggleState], Toggle<ToggleStyleConfiguration.Label>>);
    v4 = v3;
    v5[0] = &protocol witness table for TemporalStack<A, B>;
    v5[1] = lazy protocol witness table accessor for type ArchivableToggleAppIntentModifier and conformance ArchivableToggleAppIntentModifier();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<TemporalStack<[ToggleState], Toggle<ToggleStyleConfiguration.Label>>, ArchivableToggleAppIntentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ArchivableAppIntentToggle.AppIntentLocation and conformance ArchivableAppIntentToggle.AppIntentLocation()
{
  result = lazy protocol witness table cache variable for type ArchivableAppIntentToggle.AppIntentLocation and conformance ArchivableAppIntentToggle.AppIntentLocation;
  if (!lazy protocol witness table cache variable for type ArchivableAppIntentToggle.AppIntentLocation and conformance ArchivableAppIntentToggle.AppIntentLocation)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivableAppIntentToggle.AppIntentLocation, &unk_1EFFA4CC0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableAppIntentToggle.AppIntentLocation and conformance ArchivableAppIntentToggle.AppIntentLocation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivableAppIntentToggle.AppIntentLocation and conformance ArchivableAppIntentToggle.AppIntentLocation;
  if (!lazy protocol witness table cache variable for type ArchivableAppIntentToggle.AppIntentLocation and conformance ArchivableAppIntentToggle.AppIntentLocation)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivableAppIntentToggle.AppIntentLocation, &unk_1EFFA4CC0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableAppIntentToggle.AppIntentLocation and conformance ArchivableAppIntentToggle.AppIntentLocation);
  }

  return result;
}

double destroy for ArchivableAppIntentToggle.AppIntentLocation(uint64_t a1)
{

  outlined consume of Environment<AppIntentExecutor?>.Content(*(a1 + 16), *(a1 + 24), *(a1 + 32));

  return result;
}

uint64_t initializeWithCopy for ArchivableAppIntentToggle.AppIntentLocation(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = a2[2];
  v6 = a2[3];
  v7 = *(a2 + 32);

  outlined copy of Environment<AppIntentExecutor?>.Content(v5, v6, v7);
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  v8 = a2[7];
  v9 = *(a2 + 5);
  *(a1 + 40) = v9;
  *(a1 + 56) = v8;
  v10 = v9;

  return a1;
}

uint64_t *assignWithCopy for ArchivableAppIntentToggle.AppIntentLocation(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  v4 = a2[2];
  v5 = a2[3];
  v6 = *(a2 + 32);
  outlined copy of Environment<AppIntentExecutor?>.Content(v4, v5, v6);
  v7 = a1[2];
  v8 = a1[3];
  v9 = *(a1 + 32);
  a1[2] = v4;
  a1[3] = v5;
  *(a1 + 32) = v6;
  outlined consume of Environment<AppIntentExecutor?>.Content(v7, v8, v9);
  v10 = a2[5];
  v11 = a1[5];
  a1[5] = v10;
  v12 = v10;

  v13 = a2[7];
  a1[6] = a2[6];
  a1[7] = v13;

  return a1;
}

uint64_t assignWithTake for ArchivableAppIntentToggle.AppIntentLocation(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  v4 = *(a2 + 32);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  outlined consume of Environment<AppIntentExecutor?>.Content(v5, v6, v7);

  v8 = *(a2 + 56);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = v8;

  return a1;
}

uint64_t outlined init with copy of Environment<AppIntentExecutor?>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MutableBox<AppIntentExecutor?>(0, &lazy cache variable for type metadata for Environment<AppIntentExecutor?>, MEMORY[0x1E697DCC0]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for MutableBox<AppIntentExecutor?>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    _s7SwiftUI7BindingVySbGMaTm_1(255, &lazy cache variable for type metadata for AppIntentExecutor?, &type metadata for AppIntentExecutor, MEMORY[0x1E69E6720]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t outlined destroy of Environment<AppIntentExecutor?>(uint64_t a1)
{
  type metadata accessor for MutableBox<AppIntentExecutor?>(0, &lazy cache variable for type metadata for Environment<AppIntentExecutor?>, MEMORY[0x1E697DCC0]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double SegmentedButtonStepperStyle.makeBody(configuration:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  *(a2 + 48) = v7;
  *(a2 + 56) = 257;
  *(a2 + 58) = 2;

  outlined copy of AppIntentExecutor?(v2, v3);
  outlined copy of AppIntentExecutor?(v4, v6);

  return result;
}

double UIKitStepper.updateUIView(_:context:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v6 = *v2;
  v5 = v2[1];
  v7 = v2[3];
  v8 = v2[4];
  v18 = v2[2];
  v19 = v2[5];
  v9 = v2[6];
  [a1 setValue_];
  v10 = -2.0;
  if (!v7)
  {
    v10 = 0.0;
  }

  [a1 setMinimumValue_];
  v11 = 2.0;
  if (!v5)
  {
    v11 = 0.0;
  }

  [a1 setMaximumValue_];
  [a1 setStepValue_];
  v12 = (v4 + OBJC_IVAR____TtC7SwiftUIP33_F1E9485F33A623EEFA647AA5EC4AE09411Coordinator_configuration);
  v13 = *(v4 + OBJC_IVAR____TtC7SwiftUIP33_F1E9485F33A623EEFA647AA5EC4AE09411Coordinator_configuration + 8);
  v14 = *(v4 + OBJC_IVAR____TtC7SwiftUIP33_F1E9485F33A623EEFA647AA5EC4AE09411Coordinator_configuration + 16);
  v15 = *(v4 + OBJC_IVAR____TtC7SwiftUIP33_F1E9485F33A623EEFA647AA5EC4AE09411Coordinator_configuration + 24);
  v17 = *(v4 + OBJC_IVAR____TtC7SwiftUIP33_F1E9485F33A623EEFA647AA5EC4AE09411Coordinator_configuration + 32);
  *v12 = v6;
  v12[1] = v5;
  v12[2] = v18;
  v12[3] = v7;
  v12[4] = v8;
  v12[5] = v19;
  v12[6] = v9;

  outlined copy of AppIntentExecutor?(v5, v18);
  outlined copy of AppIntentExecutor?(v7, v8);

  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v13, v14);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v15, v17);

  return result;
}

id protocol witness for UIViewRepresentable.makeUIView(context:) in conformance UIKitStepper(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCFB0]) init];
  [v2 addTarget:v1 action:sel_valueChanged_ forControlEvents:4096];
  [v2 addTarget:v1 action:sel_editingBegan_ forControlEvents:1];
  [v2 addTarget:v1 action:sel_editingEnded_ forControlEvents:448];
  return v2;
}

void *protocol witness for UIViewRepresentable.makeCoordinator() in conformance UIKitStepper@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = type metadata accessor for Coordinator();
  v11 = objc_allocWithZone(v10);
  v12 = &v11[OBJC_IVAR____TtC7SwiftUIP33_F1E9485F33A623EEFA647AA5EC4AE09411Coordinator_configuration];
  *v12 = v3;
  *(v12 + 1) = v4;
  *(v12 + 2) = v5;
  *(v12 + 3) = v6;
  *(v12 + 4) = v7;
  *(v12 + 5) = v8;
  *(v12 + 6) = v9;

  outlined copy of AppIntentExecutor?(v4, v5);
  outlined copy of AppIntentExecutor?(v6, v7);
  v14.receiver = v11;
  v14.super_class = v10;

  result = objc_msgSendSuper2(&v14, sel_init);
  *a1 = result;
  return result;
}

id Coordinator.valueChanged(_:)(void *a1)
{
  v3 = [a1 value];
  if (v4 > 0.0)
  {
    v5 = *(v1 + OBJC_IVAR____TtC7SwiftUIP33_F1E9485F33A623EEFA647AA5EC4AE09411Coordinator_configuration + 8);
    if (v5)
    {
      v6 = *(v1 + OBJC_IVAR____TtC7SwiftUIP33_F1E9485F33A623EEFA647AA5EC4AE09411Coordinator_configuration + 16);
      MEMORY[0x1EEE9AC00](v3);

      static Update.dispatchImmediately<A>(reason:_:)();
      v7 = v5;
      v8 = v6;
LABEL_7:
      outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v7, v8);
      return [a1 setValue_];
    }
  }

  v9 = [a1 value];
  if (v10 < 0.0)
  {
    v11 = v1 + OBJC_IVAR____TtC7SwiftUIP33_F1E9485F33A623EEFA647AA5EC4AE09411Coordinator_configuration;
    v12 = *(v1 + OBJC_IVAR____TtC7SwiftUIP33_F1E9485F33A623EEFA647AA5EC4AE09411Coordinator_configuration + 24);
    if (v12)
    {
      v13 = *(v11 + 32);
      MEMORY[0x1EEE9AC00](v9);

      static Update.dispatchImmediately<A>(reason:_:)();
      v7 = v12;
      v8 = v13;
      goto LABEL_7;
    }
  }

  return [a1 setValue_];
}

void @objc Coordinator.editingBegan(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1;
  static Update.dispatchImmediately<A>(reason:_:)();
}

double Coordinator.__ivar_destroyer()
{
  v1 = v0 + OBJC_IVAR____TtC7SwiftUIP33_F1E9485F33A623EEFA647AA5EC4AE09411Coordinator_configuration;
  v2 = *(v0 + OBJC_IVAR____TtC7SwiftUIP33_F1E9485F33A623EEFA647AA5EC4AE09411Coordinator_configuration + 8);
  v3 = *(v0 + OBJC_IVAR____TtC7SwiftUIP33_F1E9485F33A623EEFA647AA5EC4AE09411Coordinator_configuration + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);

  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v2, v3);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v4, v5);

  return result;
}

{
  v1 = *(v0 + OBJC_IVAR____TtC7SwiftUIP33_8AA246B2E0E916EFA5AD706DCC8A0FE811Coordinator_configuration + 112);
  v6[6] = *(v0 + OBJC_IVAR____TtC7SwiftUIP33_8AA246B2E0E916EFA5AD706DCC8A0FE811Coordinator_configuration + 96);
  v6[7] = v1;
  v6[8] = *(v0 + OBJC_IVAR____TtC7SwiftUIP33_8AA246B2E0E916EFA5AD706DCC8A0FE811Coordinator_configuration + 128);
  v2 = *(v0 + OBJC_IVAR____TtC7SwiftUIP33_8AA246B2E0E916EFA5AD706DCC8A0FE811Coordinator_configuration + 48);
  v6[2] = *(v0 + OBJC_IVAR____TtC7SwiftUIP33_8AA246B2E0E916EFA5AD706DCC8A0FE811Coordinator_configuration + 32);
  v6[3] = v2;
  v3 = *(v0 + OBJC_IVAR____TtC7SwiftUIP33_8AA246B2E0E916EFA5AD706DCC8A0FE811Coordinator_configuration + 80);
  v6[4] = *(v0 + OBJC_IVAR____TtC7SwiftUIP33_8AA246B2E0E916EFA5AD706DCC8A0FE811Coordinator_configuration + 64);
  v6[5] = v3;
  v4 = *(v0 + OBJC_IVAR____TtC7SwiftUIP33_8AA246B2E0E916EFA5AD706DCC8A0FE811Coordinator_configuration + 16);
  v6[0] = *(v0 + OBJC_IVAR____TtC7SwiftUIP33_8AA246B2E0E916EFA5AD706DCC8A0FE811Coordinator_configuration);
  v6[1] = v4;
  outlined destroy of SliderStyleConfiguration(v6);

  return result;
}

id Coordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

{
  return Coordinator.__deallocating_deinit(type metadata accessor for Coordinator);
}

{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Coordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for Coordinator()
{
  return objc_opt_self();
}

{
  return objc_opt_self();
}

{
  return objc_opt_self();
}

{
  return objc_opt_self();
}

double partial apply for closure #1 in Coordinator.editingEnded(_:)()
{
  return partial apply for closure #1 in Coordinator.editingEnded(_:)(0);
}

{
  return partial apply for closure #1 in Coordinator.valueChanged(_:)(0);
}

double partial apply for closure #1 in Coordinator.editingEnded(_:)(uint64_t a1)
{
  v3 = *(*(v1 + 16) + OBJC_IVAR____TtC7SwiftUIP33_F1E9485F33A623EEFA647AA5EC4AE09411Coordinator_configuration + 40);

  v3(a1);

  return result;
}

double destroy for UIKitStepper(void *a1)
{

  if (a1[1])
  {
  }

  if (a1[3])
  {
  }

  return result;
}

void *initializeWithCopy for UIKitStepper(void *a1, void *a2)
{
  *a1 = *a2;
  v5 = a2 + 1;
  v4 = a2[1];

  if (v4)
  {
    v6 = a2[2];
    a1[1] = v4;
    a1[2] = v6;
  }

  else
  {
    *(a1 + 1) = *v5;
  }

  v7 = a2[3];
  if (v7)
  {
    v8 = a2[4];
    a1[3] = v7;
    a1[4] = v8;
  }

  else
  {
    *(a1 + 3) = *(a2 + 3);
  }

  v9 = a2[6];
  a1[5] = a2[5];
  a1[6] = v9;

  return a1;
}

void *assignWithCopy for UIKitStepper(void *a1, void *a2)
{
  *a1 = *a2;

  v4 = a2[1];
  if (a1[1])
  {
    if (v4)
    {
      v5 = a2[2];
      a1[1] = v4;
      a1[2] = v5;

      goto LABEL_8;
    }
  }

  else if (v4)
  {
    v6 = a2[2];
    a1[1] = v4;
    a1[2] = v6;

    goto LABEL_8;
  }

  *(a1 + 1) = *(a2 + 1);
LABEL_8:
  v7 = a2[3];
  if (!a1[3])
  {
    if (v7)
    {
      v9 = a2[4];
      a1[3] = v7;
      a1[4] = v9;

      goto LABEL_15;
    }

LABEL_14:
    *(a1 + 3) = *(a2 + 3);
    goto LABEL_15;
  }

  if (!v7)
  {

    goto LABEL_14;
  }

  v8 = a2[4];
  a1[3] = v7;
  a1[4] = v8;

LABEL_15:
  v10 = a2[6];
  a1[5] = a2[5];
  a1[6] = v10;

  return a1;
}

uint64_t *assignWithTake for UIKitStepper(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  v4 = a2[1];
  if (a1[1])
  {
    if (v4)
    {
      v5 = a2[2];
      a1[1] = v4;
      a1[2] = v5;

      goto LABEL_8;
    }
  }

  else if (v4)
  {
    v6 = a2[2];
    a1[1] = v4;
    a1[2] = v6;
    goto LABEL_8;
  }

  *(a1 + 1) = *(a2 + 1);
LABEL_8:
  v7 = a2[3];
  if (!a1[3])
  {
    if (v7)
    {
      v9 = a2[4];
      a1[3] = v7;
      a1[4] = v9;
      goto LABEL_15;
    }

LABEL_14:
    *(a1 + 3) = *(a2 + 3);
    goto LABEL_15;
  }

  if (!v7)
  {

    goto LABEL_14;
  }

  v8 = a2[4];
  a1[3] = v7;
  a1[4] = v8;

LABEL_15:
  *(a1 + 5) = *(a2 + 5);

  return a1;
}

uint64_t getEnumTagSinglePayload for UIKitStepper(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for UIKitStepper(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>> and conformance <> ModifiedContent<A, B>(double a1)
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>> and conformance <> ModifiedContent<A, B>)
  {
    v7[4] = v1;
    v7[5] = v2;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>(255, a1);
    v5 = v4;
    v7[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>> and conformance <> ModifiedContent<A, B>(v6);
    v7[1] = lazy protocol witness table accessor for type ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type ViewInputFlagModifier<AccessibilityCombinedLabeledContent> and conformance ViewInputFlagModifier<A>, &lazy cache variable for type metadata for ViewInputFlagModifier<AccessibilityCombinedLabeledContent>, lazy protocol witness table accessor for type AccessibilityCombinedLabeledContent and conformance AccessibilityCombinedLabeledContent, &type metadata for AccessibilityCombinedLabeledContent);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>(uint64_t a1, double a2)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>(255, a2);
    type metadata accessor for ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<AccessibilityCombinedLabeledContent>, lazy protocol witness table accessor for type AccessibilityCombinedLabeledContent and conformance AccessibilityCombinedLabeledContent, &type metadata for AccessibilityCombinedLabeledContent);
    v2 = type metadata accessor for ModifiedContent();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>(uint64_t a1, double a2)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>)
  {
    type metadata accessor for ModifiedContent<LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>(255, a2);
    type metadata accessor for ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>, lazy protocol witness table accessor for type ListLabeledContentAllowsOutsetting and conformance ListLabeledContentAllowsOutsetting, &type metadata for ListLabeledContentAllowsOutsetting);
    v2 = type metadata accessor for ModifiedContent();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>);
    }
  }
}

void type metadata accessor for ModifiedContent<LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>(uint64_t a1, double a2)
{
  if (!lazy cache variable for type metadata for ModifiedContent<LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>)
  {
    type metadata accessor for LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>(255, a2);
    type metadata accessor for ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>, lazy protocol witness table accessor for type ListLabeledContentPrefersHorizontalLayout and conformance ListLabeledContentPrefersHorizontalLayout, &type metadata for ListLabeledContentPrefersHorizontalLayout);
    v2 = type metadata accessor for ModifiedContent();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for ModifiedContent<LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>);
    }
  }
}

void type metadata accessor for LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>(uint64_t a1, double a2)
{
  if (!lazy cache variable for type metadata for LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>)
  {
    type metadata accessor for ModifiedContent<UIKitStepper, _FixedSizeLayout>(a2);
    v5 = type metadata accessor for LabeledContent(a1, &type metadata for StepperStyleConfiguration.Label, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>);
    }
  }
}

void type metadata accessor for ModifiedContent<UIKitStepper, _FixedSizeLayout>(double a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<UIKitStepper, _FixedSizeLayout>)
  {
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<UIKitStepper, _FixedSizeLayout>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>> and conformance <> ModifiedContent<A, B>(double a1)
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>> and conformance <> ModifiedContent<A, B>)
  {
    v7[4] = v1;
    v7[5] = v2;
    type metadata accessor for ModifiedContent<ModifiedContent<LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>(255, a1);
    v5 = v4;
    v7[0] = lazy protocol witness table accessor for type ModifiedContent<LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>> and conformance <> ModifiedContent<A, B>(v6);
    v7[1] = lazy protocol witness table accessor for type ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type ViewInputFlagModifier<ListLabeledContentAllowsOutsetting> and conformance ViewInputFlagModifier<A>, &lazy cache variable for type metadata for ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>, lazy protocol witness table accessor for type ListLabeledContentAllowsOutsetting and conformance ListLabeledContentAllowsOutsetting, &type metadata for ListLabeledContentAllowsOutsetting);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>> and conformance <> ModifiedContent<A, B>(double a1)
{
  result = lazy protocol witness table cache variable for type ModifiedContent<LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>> and conformance <> ModifiedContent<A, B>)
  {
    v7[4] = v1;
    v7[5] = v2;
    type metadata accessor for ModifiedContent<LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>(255, a1);
    v5 = v4;
    v7[0] = lazy protocol witness table accessor for type LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>> and conformance <> LabeledContent<A, B>(v6);
    v7[1] = lazy protocol witness table accessor for type ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout> and conformance ViewInputFlagModifier<A>, &lazy cache variable for type metadata for ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>, lazy protocol witness table accessor for type ListLabeledContentPrefersHorizontalLayout and conformance ListLabeledContentPrefersHorizontalLayout, &type metadata for ListLabeledContentPrefersHorizontalLayout);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>> and conformance <> LabeledContent<A, B>(double a1)
{
  result = lazy protocol witness table cache variable for type LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>> and conformance <> LabeledContent<A, B>;
  if (!lazy protocol witness table cache variable for type LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>> and conformance <> LabeledContent<A, B>)
  {
    v7[4] = v1;
    v7[5] = v2;
    type metadata accessor for LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>(255, a1);
    v5 = v4;
    v7[0] = &protocol witness table for StepperStyleConfiguration.Label;
    v7[1] = lazy protocol witness table accessor for type ModifiedContent<UIKitStepper, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>(v6);
    result = swift_getWitnessTable(protocol conformance descriptor for <> LabeledContent<A, B>, v5, v7);
    atomic_store(result, &lazy protocol witness table cache variable for type LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>> and conformance <> LabeledContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<UIKitStepper, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>(double a1)
{
  result = lazy protocol witness table cache variable for type ModifiedContent<UIKitStepper, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<UIKitStepper, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>)
  {
    v5[2] = v1;
    v5[3] = v2;
    type metadata accessor for ModifiedContent<UIKitStepper, _FixedSizeLayout>(a1);
    v5[0] = &protocol witness table for UIKitStepper;
    v5[1] = MEMORY[0x1E697EBE0];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<UIKitStepper, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout> and conformance ViewInputFlagModifier<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>(255, a2, a3, a4);
    result = swift_getWitnessTable(MEMORY[0x1E697FD30], v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RemoteScenes.VersionNegotiation(unsigned __int16 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if ((a2 + 0xFFFF) < 0xFF0000)
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
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (*(a1 + 2))
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }
  }

  return 0;
}

_WORD *storeEnumTagSinglePayload for RemoteScenes.VersionNegotiation(_WORD *result, int a2, int a3)
{
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if ((a3 + 0xFFFF) < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    v5 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 2) = 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RemoteScenes.DeploymentVersion and conformance RemoteScenes.DeploymentVersion()
{
  result = lazy protocol witness table cache variable for type RemoteScenes.DeploymentVersion and conformance RemoteScenes.DeploymentVersion;
  if (!lazy protocol witness table cache variable for type RemoteScenes.DeploymentVersion and conformance RemoteScenes.DeploymentVersion)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RemoteScenes.DeploymentVersion, &type metadata for RemoteScenes.DeploymentVersion, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type RemoteScenes.DeploymentVersion and conformance RemoteScenes.DeploymentVersion);
  }

  return result;
}

uint64_t _ScrollableContentProvider.root(scrollView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v7 = type metadata accessor for _ScrollView.Main(0, a2, a3, a5);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v13 - v10;
  (*(v8 + 16))(&v13 - v10, a1, v7, v9);
  return (*(v8 + 32))(a4, v11, v7);
}

uint64_t one-time initialization function for indicatorColor(double a1, __n128 a2)
{
  result = Color.init(_:white:opacity:)();
  indicatorColor = result;
  return result;
}

uint64_t _ScrollViewRoot.body.getter(uint64_t a1)
{
  static Alignment.center.getter();
  type metadata accessor for _ScrollView.Main(0, *(a1 + 16), *(a1 + 24), v2);
  lazy protocol witness table accessor for type _ScrollOverlayView and conformance _ScrollOverlayView();
  return View.overlayPreferenceValue<A, B>(_:alignment:_:)();
}

void closure #1 in _ScrollViewRoot.body.getter(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    v4 = *(a1 + 2);
    *a2 = v3;
    *(a2 + 8) = v4;
  }

  else
  {
    __break(1u);
  }
}

unint64_t lazy protocol witness table accessor for type _ScrollOverlayView and conformance _ScrollOverlayView()
{
  result = lazy protocol witness table cache variable for type _ScrollOverlayView and conformance _ScrollOverlayView;
  if (!lazy protocol witness table cache variable for type _ScrollOverlayView and conformance _ScrollOverlayView)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _ScrollOverlayView, &unk_1EFFA4EE8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ScrollOverlayView and conformance _ScrollOverlayView);
  }

  return result;
}

uint64_t type metadata completion function for _ScrollViewRoot(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for _ScrollView(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for _ScrollViewRoot(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 168 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    v15 = *(v11 + 24);
    v16 = *(v11 + 32);
    outlined copy of _ScrollViewConfig.ContentOffset(*v11, v13, v14, v15, v16);
    *v10 = v12;
    *(v10 + 8) = v13;
    *(v10 + 16) = v14;
    *(v10 + 24) = v15;
    *(v10 + 32) = v16;
    v17 = *(v11 + 40);
    *(v10 + 56) = *(v11 + 56);
    *(v10 + 40) = v17;
    *(v10 + 72) = *(v11 + 72);
    *(v10 + 80) = *(v11 + 80);
    *(v10 + 81) = *(v11 + 81);
    v18 = *(v11 + 112);
    *(v10 + 112) = v18;
    *(v10 + 120) = *(v11 + 120);
    (**(v18 - 8))(v10 + 88, v11 + 88);
    *(v10 + 128) = *(v11 + 128);
    *(v10 + 129) = *(v11 + 129);
    *(v10 + 130) = *(v11 + 130);
    *(v10 + 131) = *(v11 + 131);
    v19 = *(v11 + 136);
    *(v10 + 152) = *(v11 + 152);
    *(v10 + 136) = v19;
  }

  return v3;
}

double outlined copy of _ScrollViewConfig.ContentOffset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  return result;
}

uint64_t destroy for _ScrollViewRoot(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = (a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;
  outlined consume of _ScrollViewConfig.ContentOffset(*v4, *(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32));

  return __swift_destroy_boxed_opaque_existential_1((v4 + 88));
}

double outlined consume of _ScrollViewConfig.ContentOffset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  return result;
}

uint64_t initializeWithCopy for _ScrollViewRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  v12 = *(v8 + 24);
  v13 = *(v8 + 32);
  outlined copy of _ScrollViewConfig.ContentOffset(*v8, v10, v11, v12, v13);
  *v7 = v9;
  *(v7 + 8) = v10;
  *(v7 + 16) = v11;
  *(v7 + 24) = v12;
  *(v7 + 32) = v13;
  v14 = *(v8 + 40);
  *(v7 + 56) = *(v8 + 56);
  *(v7 + 40) = v14;
  *(v7 + 72) = *(v8 + 72);
  *(v7 + 80) = *(v8 + 80);
  *(v7 + 81) = *(v8 + 81);
  v15 = *(v8 + 112);
  *(v7 + 112) = v15;
  *(v7 + 120) = *(v8 + 120);
  (**(v15 - 8))(v7 + 88, v8 + 88);
  *(v7 + 128) = *(v8 + 128);
  *(v7 + 129) = *(v8 + 129);
  *(v7 + 130) = *(v8 + 130);
  *(v7 + 131) = *(v8 + 131);
  v16 = *(v8 + 136);
  *(v7 + 152) = *(v8 + 152);
  *(v7 + 136) = v16;
  return a1;
}

uint64_t assignWithCopy for _ScrollViewRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  v12 = *(v8 + 24);
  v13 = *(v8 + 32);
  outlined copy of _ScrollViewConfig.ContentOffset(*v8, v10, v11, v12, v13);
  v14 = *v7;
  v15 = *(v7 + 8);
  v16 = *(v7 + 16);
  v17 = *(v7 + 24);
  v18 = *(v7 + 32);
  *v7 = v9;
  *(v7 + 8) = v10;
  *(v7 + 16) = v11;
  *(v7 + 24) = v12;
  *(v7 + 32) = v13;
  outlined consume of _ScrollViewConfig.ContentOffset(v14, v15, v16, v17, v18);
  *(v7 + 40) = *(v8 + 40);
  *(v7 + 48) = *(v8 + 48);
  *(v7 + 56) = *(v8 + 56);
  *(v7 + 64) = *(v8 + 64);
  *(v7 + 72) = *(v8 + 72);
  *(v7 + 80) = *(v8 + 80);
  *(v7 + 81) = *(v8 + 81);
  __swift_assign_boxed_opaque_existential_1((v7 + 88), (v8 + 88));
  *(v7 + 128) = *(v8 + 128);
  *(v7 + 129) = *(v8 + 129);
  *(v7 + 130) = *(v8 + 130);
  *(v7 + 131) = *(v8 + 131);
  *(v7 + 136) = *(v8 + 136);
  *(v7 + 144) = *(v8 + 144);
  *(v7 + 152) = *(v8 + 152);
  *(v7 + 160) = *(v8 + 160);
  return a1;
}

uint64_t initializeWithTake for _ScrollViewRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v8 + 16);
  v9 = *(v8 + 32);
  *v7 = *v8;
  *(v7 + 16) = v10;
  *(v7 + 32) = v9;
  v11 = *(v8 + 96);
  v13 = *(v8 + 48);
  v12 = *(v8 + 64);
  *(v7 + 80) = *(v8 + 80);
  *(v7 + 96) = v11;
  *(v7 + 48) = v13;
  *(v7 + 64) = v12;
  v15 = *(v8 + 128);
  v14 = *(v8 + 144);
  v16 = *(v8 + 112);
  *(v7 + 160) = *(v8 + 160);
  *(v7 + 128) = v15;
  *(v7 + 144) = v14;
  *(v7 + 112) = v16;
  return a1;
}

uint64_t assignWithTake for _ScrollViewRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v7 + 32);
  v9 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  v13 = *(v9 + 24);
  v14 = *(v9 + 32);
  v15 = *(v7 + 16);
  *v9 = *v7;
  *(v9 + 16) = v15;
  *(v9 + 32) = v8;
  outlined consume of _ScrollViewConfig.ContentOffset(v10, v11, v12, v13, v14);
  *(v9 + 40) = *(v7 + 40);
  *(v9 + 48) = *(v7 + 48);
  *(v9 + 56) = *(v7 + 56);
  *(v9 + 64) = *(v7 + 64);
  *(v9 + 72) = *(v7 + 72);
  *(v9 + 80) = *(v7 + 80);
  *(v9 + 81) = *(v7 + 81);
  __swift_destroy_boxed_opaque_existential_1((v9 + 88));
  v16 = *(v7 + 88);
  v17 = *(v7 + 104);
  *(v9 + 120) = *(v7 + 120);
  *(v9 + 104) = v17;
  *(v9 + 88) = v16;
  *(v9 + 128) = *(v7 + 128);
  *(v9 + 129) = *(v7 + 129);
  *(v9 + 130) = *(v7 + 130);
  *(v9 + 131) = *(v7 + 131);
  *(v9 + 136) = *(v7 + 136);
  *(v9 + 144) = *(v7 + 144);
  *(v9 + 152) = *(v7 + 152);
  *(v9 + 160) = *(v7 + 160);
  return a1;
}

uint64_t getEnumTagSinglePayload for _ScrollViewRoot(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 168;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 112);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

double storeEnumTagSinglePayload for _ScrollViewRoot(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 168;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFF58)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFF58)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFF58)
    {
      v15 = ~v7 + a2;
      v16 = a1;
      bzero(a1, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 168);
      a1 = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(a1 + v9) = v14;
      }

      else
      {
        *(a1 + v9) = v14;
      }
    }

    else if (v13)
    {
      *(a1 + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(a1 + v9) = 0;
  }

  else if (v13)
  {
    *(a1 + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v19 = (a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 0x80000000) != 0)
    {
      result = 0.0;
      *(v19 + 136) = 0u;
      *(v19 + 152) = 0u;
      *(v19 + 120) = 0u;
      *(v19 + 104) = 0u;
      *(v19 + 88) = 0u;
      *(v19 + 72) = 0u;
      *(v19 + 56) = 0u;
      *(v19 + 40) = 0u;
      *(v19 + 24) = 0u;
      *(v19 + 8) = 0u;
      *v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      *(v19 + 112) = a2 - 1;
    }
  }

  else
  {
    v18 = *(v5 + 56);

    v18();
  }

  return result;
}

void type metadata accessor for _OverlayPreferenceModifier<_ContainedScrollViewKey, _ScrollOverlayView>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _OverlayPreferenceModifier<_ContainedScrollViewKey, _ScrollOverlayView>)
  {
    lazy protocol witness table accessor for type _ScrollOverlayView and conformance _ScrollOverlayView();
    v1 = type metadata accessor for _OverlayPreferenceModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _OverlayPreferenceModifier<_ContainedScrollViewKey, _ScrollOverlayView>);
    }
  }
}

uint64_t _ScrollOverlayView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 2);
  swift_beginAccess();
  outlined init with copy of _ScrollViewConfig(v3 + 168, v30);
  v6 = *(v3 + 336);
  v5 = *(v3 + 344);
  CGSize.inset(by:)();
  v8 = v7;
  v10 = v9;
  *a1 = v3;
  *(a1 + 8) = v4;

  v11 = static HorizontalAlignment.center.getter();
  if (v30[130] != 1)
  {
LABEL_9:
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    goto LABEL_10;
  }

  swift_beginAccess();
  v12 = *(v3 + 146) >> 6;
  if (v12)
  {
    if (v12 != 1)
    {
      goto LABEL_9;
    }

    v13 = *(v3 + 136);
    if (*(v13 + 16) < 2uLL)
    {
      __break(1u);
      goto LABEL_36;
    }

    if (fabs(*(v13 + 48)) <= 2.5 || v8 >= v6)
    {
      goto LABEL_9;
    }

LABEL_22:
    if (one-time initialization token for indicatorColor == -1)
    {
      goto LABEL_23;
    }

    goto LABEL_37;
  }

  v15 = 0;
  if (*(v3 + 145))
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    if (v8 >= v6)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

  v16 = 0;
  v17 = 0;
  v18 = 0;
  while (1)
  {
LABEL_10:
    v29 = static HorizontalAlignment.center.getter();
    if ((v30[131] & 1) == 0)
    {
      goto LABEL_18;
    }

    swift_beginAccess();
    v19 = *(v3 + 145) >> 14;
    if (!v19)
    {
      break;
    }

    if (v19 != 1)
    {
      goto LABEL_18;
    }

    v20 = *(v3 + 136);
    if (*(v20 + 16) >= 2uLL)
    {
      if (fabs(*(v20 + 136)) <= 2.5 || v10 >= v5)
      {
LABEL_18:
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v25 = 0;
        goto LABEL_19;
      }

      goto LABEL_28;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    swift_once();
LABEL_23:
    v16 = indicatorColor;
    v27 = one-time initialization token for visibleIndicatorTransition;

    if (v27 != -1)
    {
      swift_once();
    }

    v18 = visibleIndicatorTransition;

    v17 = 256;
    v15 = 1;
  }

  v22 = 0;
  if ((*(v3 + 144) & 1) == 0)
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    goto LABEL_19;
  }

  v23 = 0;
  v24 = 0;
  v25 = 0;
  if (v10 >= v5)
  {
    goto LABEL_19;
  }

LABEL_28:
  if (one-time initialization token for indicatorColor != -1)
  {
    swift_once();
  }

  v23 = indicatorColor;
  v28 = one-time initialization token for visibleIndicatorTransition;

  if (v28 != -1)
  {
    swift_once();
  }

  v25 = visibleIndicatorTransition;

  v24 = 256;
  v22 = 1;
LABEL_19:
  outlined copy of ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?(v15, v16, v17, v18);
  outlined copy of ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?(v22, v23, v24, v25);
  outlined consume of ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?(v22, v23, v24, v25);
  outlined consume of ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?(v15, v16, v17, v18);
  *(a1 + 16) = v11;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = v15;
  *(a1 + 48) = v16;
  *(a1 + 56) = v17;
  *(a1 + 64) = v18;
  *(a1 + 72) = v29;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  *(a1 + 96) = v22;
  *(a1 + 104) = v23;
  *(a1 + 112) = v24;
  *(a1 + 120) = v25;
  return outlined destroy of _ScrollViewConfig(v30);
}

double outlined copy of ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

double outlined consume of ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

double protocol witness for Layout.sizeThatFits(proposal:subviews:cache:) in conformance ScrollOverlayLayout(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    return 10.0;
  }

  return result;
}

void one-time initialization function for visibleIndicatorTransition(uint64_t a1)
{
  static AnyTransition.opacity.getter();
  v1 = AnyTransition.transaction(_:)();

  visibleIndicatorTransition = v1;
}

uint64_t closure #1 in variable initialization expression of visibleIndicatorTransition(uint64_t a1, char a2, __n128 a3)
{
  if (a2 == 2)
  {
    static Animation.easeInOut(duration:)();
  }

  return Transaction.animation.setter();
}

unint64_t lazy protocol witness table accessor for type _VariadicView.Tree<_LayoutRoot<ScrollOverlayLayout>, TupleView<(VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>, VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>)>> and conformance <> _VariadicView.Tree<A, B>()
{
  result = lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<ScrollOverlayLayout>, TupleView<(VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>, VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>)>> and conformance <> _VariadicView.Tree<A, B>;
  if (!lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<ScrollOverlayLayout>, TupleView<(VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>, VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>)>> and conformance <> _VariadicView.Tree<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for _VariadicView.Tree<_LayoutRoot<ScrollOverlayLayout>, TupleView<(VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>, VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>)>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _OverlayPreferenceModifier<_ContainedScrollViewKey, _ScrollOverlayView> and conformance _OverlayPreferenceModifier<A, B>(&lazy protocol witness table cache variable for type _LayoutRoot<ScrollOverlayLayout> and conformance _LayoutRoot<A>, type metadata accessor for _LayoutRoot<ScrollOverlayLayout>, MEMORY[0x1E697DDD0]);
    v5[1] = lazy protocol witness table accessor for type TupleView<(VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>, VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>)> and conformance TupleView<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E308], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<ScrollOverlayLayout>, TupleView<(VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>, VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>)>> and conformance <> _VariadicView.Tree<A, B>);
  }

  return result;
}

void type metadata accessor for _VariadicView.Tree<_LayoutRoot<ScrollOverlayLayout>, TupleView<(VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>, VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>)>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _VariadicView.Tree<_LayoutRoot<ScrollOverlayLayout>, TupleView<(VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>, VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>)>>)
  {
    type metadata accessor for _LayoutRoot<ScrollOverlayLayout>(255);
    type metadata accessor for TupleView<(VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>, VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>)>(255, &lazy cache variable for type metadata for TupleView<(VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>, VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>)>, type metadata accessor for (VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>, VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>), MEMORY[0x1E6981F40]);
    lazy protocol witness table accessor for type _OverlayPreferenceModifier<_ContainedScrollViewKey, _ScrollOverlayView> and conformance _OverlayPreferenceModifier<A, B>(&lazy protocol witness table cache variable for type _LayoutRoot<ScrollOverlayLayout> and conformance _LayoutRoot<A>, type metadata accessor for _LayoutRoot<ScrollOverlayLayout>, MEMORY[0x1E697DDC8]);
    v1 = type metadata accessor for _VariadicView.Tree();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _VariadicView.Tree<_LayoutRoot<ScrollOverlayLayout>, TupleView<(VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>, VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>)>>);
    }
  }
}

void type metadata accessor for _LayoutRoot<ScrollOverlayLayout>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _LayoutRoot<ScrollOverlayLayout>)
  {
    lazy protocol witness table accessor for type ScrollOverlayLayout and conformance ScrollOverlayLayout();
    v1 = type metadata accessor for _LayoutRoot();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _LayoutRoot<ScrollOverlayLayout>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ScrollOverlayLayout and conformance ScrollOverlayLayout()
{
  result = lazy protocol witness table cache variable for type ScrollOverlayLayout and conformance ScrollOverlayLayout;
  if (!lazy protocol witness table cache variable for type ScrollOverlayLayout and conformance ScrollOverlayLayout)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollOverlayLayout, &unk_1EFFA4F68, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollOverlayLayout and conformance ScrollOverlayLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrollOverlayLayout and conformance ScrollOverlayLayout;
  if (!lazy protocol witness table cache variable for type ScrollOverlayLayout and conformance ScrollOverlayLayout)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollOverlayLayout, &unk_1EFFA4F68, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollOverlayLayout and conformance ScrollOverlayLayout);
  }

  return result;
}

void type metadata accessor for (VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>, VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>, VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>))
  {
    type metadata accessor for VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>, VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>));
    }
  }
}

void type metadata accessor for VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>)
  {
    type metadata accessor for TupleView<(VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>, VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>)>(255, &lazy cache variable for type metadata for ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?, type metadata accessor for ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>, MEMORY[0x1E69E6720]);
    lazy protocol witness table accessor for type ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>? and conformance <A> A?();
    v1 = type metadata accessor for VStack();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>);
    }
  }
}

void type metadata accessor for TupleView<(VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>, VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>)>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>)
  {
    type metadata accessor for _ShapeView<Capsule, Color>(255);
    type metadata accessor for _TraitWritingModifier<TransitionTraitKey>();
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>);
    }
  }
}

void type metadata accessor for _ShapeView<Capsule, Color>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ShapeView<Capsule, Color>)
  {
    lazy protocol witness table accessor for type Capsule and conformance Capsule();
    v1 = type metadata accessor for _ShapeView();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ShapeView<Capsule, Color>);
    }
  }
}

void type metadata accessor for _TraitWritingModifier<TransitionTraitKey>()
{
  if (!lazy cache variable for type metadata for _TraitWritingModifier<TransitionTraitKey>)
  {
    v0 = type metadata accessor for _TraitWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _TraitWritingModifier<TransitionTraitKey>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>? and conformance <A> A?)
  {
    v5[3] = v0;
    v5[4] = v1;
    type metadata accessor for TupleView<(VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>, VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>)>(255, &lazy cache variable for type metadata for ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?, type metadata accessor for ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>, MEMORY[0x1E69E6720]);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable(MEMORY[0x1E6982090], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _OverlayPreferenceModifier<_ContainedScrollViewKey, _ScrollOverlayView> and conformance _OverlayPreferenceModifier<A, B>(&lazy protocol witness table cache variable for type _ShapeView<Capsule, Color> and conformance _ShapeView<A, B>, type metadata accessor for _ShapeView<Capsule, Color>, MEMORY[0x1E697DB78]);
    v5[1] = lazy protocol witness table accessor for type _OverlayPreferenceModifier<_ContainedScrollViewKey, _ScrollOverlayView> and conformance _OverlayPreferenceModifier<A, B>(&lazy protocol witness table cache variable for type _TraitWritingModifier<TransitionTraitKey> and conformance _TraitWritingModifier<A>, type metadata accessor for _TraitWritingModifier<TransitionTraitKey>, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _OverlayPreferenceModifier<_ContainedScrollViewKey, _ScrollOverlayView> and conformance _OverlayPreferenceModifier<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TupleView<(VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>, VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>)> and conformance TupleView<A>()
{
  result = lazy protocol witness table cache variable for type TupleView<(VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>, VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>)> and conformance TupleView<A>;
  if (!lazy protocol witness table cache variable for type TupleView<(VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>, VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>)> and conformance TupleView<A>)
  {
    type metadata accessor for TupleView<(VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>, VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>)>(255, &lazy cache variable for type metadata for TupleView<(VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>, VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>)>, type metadata accessor for (VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>, VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>), MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable(MEMORY[0x1E6981F48], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TupleView<(VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>, VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>)> and conformance TupleView<A>);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for ScrollOverlayLayout(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ScrollOverlayLayout and conformance ScrollOverlayLayout();
  *(a1 + 8) = result;
  return result;
}

uint64_t specialized ScrollOverlayLayout.placeSubviews(in:proposal:subviews:cache:)(int *a1, double a2, double a3, double a4, double a5)
{
  swift_beginAccess();
  swift_beginAccess();
  CGSize.inset(by:)();
  EdgeInsets.init(_all:)();
  LayoutSubviews.subscript.getter();
  static UnitPoint.topLeading.getter();
  LayoutSubview.place(at:anchor:proposal:)();
  LayoutSubviews.subscript.getter();
  static UnitPoint.topLeading.getter();
  return LayoutSubview.place(at:anchor:proposal:)();
}

uint64_t protocol witness for MenuStyle.makeBody(configuration:) in conformance _BorderedButtonMenuStyle@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  KeyPath = swift_getKeyPath();
  v10 = swift_getKeyPath();
  *a2 = KeyPath;
  *(a2 + 8) = 0;
  *(a2 + 16) = v10;
  *(a2 + 24) = 0;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  *(a2 + 48) = v7;
  *(a2 + 56) = v8;
  *(a2 + 64) = v4;
  outlined copy of AppIntentExecutor?(v5, v6);

  return outlined copy of AppIntentExecutor?(v7, v8);
}

double BorderedButtonMenuStyleBody.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = specialized Environment.wrappedValue.getter(*(v1 + 16), *(v1 + 24));
  outlined copy of AppIntentExecutor?(v3, v4);
  outlined copy of AppIntentExecutor?(v5, v6);
  KeyPath = swift_getKeyPath();
  v10 = swift_getKeyPath();
  outlined consume of Glass?(0, 0, 0, 1);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = 0;
  *(a1 + 18) = v8;
  *(a1 + 19) = 2;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = 0;
  *(a1 + 48) = v7;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0;
  *&result = 1;
  *(a1 + 80) = xmmword_18CD6A6D0;
  *(a1 + 96) = 0;
  *(a1 + 104) = KeyPath;
  *(a1 + 112) = 0;
  *(a1 + 120) = v10;
  *(a1 + 128) = 0;
  return result;
}

SwiftUI::BorderedButtonMenuStyle __swiftcall BorderedButtonMenuStyle.init()()
{
  result.isProminent = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for _ServicesButtonMenuStyle(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Bool>.Content();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = a2[2];
  return a1;
}

uint64_t assignWithCopy for _ServicesButtonMenuStyle(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Bool>.Content();
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Bool>.Content(v6, v7);
  *(a1 + 16) = a2[2];
  return a1;
}

uint64_t assignWithTake for _ServicesButtonMenuStyle(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Bool>.Content(v6, v7);
  *(a1 + 16) = a2[2];
  return a1;
}

uint64_t getEnumTagSinglePayload for _ServicesButtonMenuStyle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 24))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for _ServicesButtonMenuStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BorderedButtonMenuStyleBody and conformance BorderedButtonMenuStyleBody()
{
  result = lazy protocol witness table cache variable for type BorderedButtonMenuStyleBody and conformance BorderedButtonMenuStyleBody;
  if (!lazy protocol witness table cache variable for type BorderedButtonMenuStyleBody and conformance BorderedButtonMenuStyleBody)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BorderedButtonMenuStyleBody, &unk_1EFFA5168, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BorderedButtonMenuStyleBody and conformance BorderedButtonMenuStyleBody);
  }

  return result;
}

double destroy for BorderedButtonMenuStyleBody(uint64_t a1)
{
  outlined consume of Environment<Bool>.Content(*a1, *(a1 + 8));
  outlined consume of Environment<Bool>.Content(*(a1 + 16), *(a1 + 24));
  if (*(a1 + 32))
  {
  }

  if (*(a1 + 48))
  {
  }

  return result;
}

uint64_t initializeWithCopy for BorderedButtonMenuStyleBody(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Bool>.Content();
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = a2[2];
  v7 = *(a2 + 24);
  outlined copy of Environment<Bool>.Content();
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v8 = a2[4];
  if (v8)
  {
    v9 = a2[5];
    *(a1 + 32) = v8;
    *(a1 + 40) = v9;
  }

  else
  {
    *(a1 + 32) = *(a2 + 2);
  }

  v10 = a2[6];
  if (v10)
  {
    v11 = a2[7];
    *(a1 + 48) = v10;
    *(a1 + 56) = v11;
  }

  else
  {
    *(a1 + 48) = *(a2 + 3);
  }

  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t assignWithCopy for BorderedButtonMenuStyleBody(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Bool>.Content();
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Bool>.Content(v6, v7);
  v8 = a2[2];
  v9 = *(a2 + 24);
  outlined copy of Environment<Bool>.Content();
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  outlined consume of Environment<Bool>.Content(v10, v11);
  v12 = a2[4];
  if (*(a1 + 32))
  {
    if (v12)
    {
      v13 = a2[5];
      *(a1 + 32) = v12;
      *(a1 + 40) = v13;

      goto LABEL_8;
    }
  }

  else if (v12)
  {
    v14 = a2[5];
    *(a1 + 32) = v12;
    *(a1 + 40) = v14;

    goto LABEL_8;
  }

  *(a1 + 32) = *(a2 + 2);
LABEL_8:
  v15 = a2[6];
  if (!*(a1 + 48))
  {
    if (v15)
    {
      v17 = a2[7];
      *(a1 + 48) = v15;
      *(a1 + 56) = v17;

      goto LABEL_15;
    }

LABEL_14:
    *(a1 + 48) = *(a2 + 3);
    goto LABEL_15;
  }

  if (!v15)
  {

    goto LABEL_14;
  }

  v16 = a2[7];
  *(a1 + 48) = v15;
  *(a1 + 56) = v16;

LABEL_15:
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t assignWithTake for BorderedButtonMenuStyleBody(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Bool>.Content(v6, v7);
  v8 = *(a2 + 24);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  *(a1 + 16) = a2[2];
  *(a1 + 24) = v8;
  outlined consume of Environment<Bool>.Content(v9, v10);
  v11 = a2[4];
  if (*(a1 + 32))
  {
    if (v11)
    {
      v12 = a2[5];
      *(a1 + 32) = v11;
      *(a1 + 40) = v12;

      goto LABEL_8;
    }
  }

  else if (v11)
  {
    v13 = a2[5];
    *(a1 + 32) = v11;
    *(a1 + 40) = v13;
    goto LABEL_8;
  }

  *(a1 + 32) = *(a2 + 2);
LABEL_8:
  v14 = a2[6];
  if (!*(a1 + 48))
  {
    if (v14)
    {
      v16 = a2[7];
      *(a1 + 48) = v14;
      *(a1 + 56) = v16;
      goto LABEL_15;
    }

LABEL_14:
    *(a1 + 48) = *(a2 + 3);
    goto LABEL_15;
  }

  if (!v14)
  {

    goto LABEL_14;
  }

  v15 = a2[7];
  *(a1 + 48) = v14;
  *(a1 + 56) = v15;

LABEL_15:
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t getEnumTagSinglePayload for BorderedButtonMenuStyleBody(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 65))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t storeEnumTagSinglePayload for BorderedButtonMenuStyleBody(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<UIKitMenuButton<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, UIKitButtonStyleModifier<BorderedButtonStyle_Phone>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<UIKitMenuButton<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, UIKitButtonStyleModifier<BorderedButtonStyle_Phone>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<UIKitMenuButton<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, UIKitButtonStyleModifier<BorderedButtonStyle_Phone>> and conformance <> ModifiedContent<A, B>)
  {
    v4[2] = v0;
    v4[3] = v1;
    type metadata accessor for ModifiedContent<UIKitMenuButton<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, UIKitButtonStyleModifier<BorderedButtonStyle_Phone>>(255);
    v4[0] = &protocol witness table for UIKitMenuButton<A, B>;
    v4[1] = &protocol witness table for UIKitButtonStyleModifier<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<UIKitMenuButton<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, UIKitButtonStyleModifier<BorderedButtonStyle_Phone>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<UIKitMenuButton<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, UIKitButtonStyleModifier<BorderedButtonStyle_Phone>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<UIKitMenuButton<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, UIKitButtonStyleModifier<BorderedButtonStyle_Phone>>)
  {
    type metadata accessor for UIKitMenuButton<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>();
    type metadata accessor for UIKitButtonStyleModifier<BorderedButtonStyle_Phone>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<UIKitMenuButton<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, UIKitButtonStyleModifier<BorderedButtonStyle_Phone>>);
    }
  }
}

void type metadata accessor for UIKitMenuButton<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>()
{
  if (!lazy cache variable for type metadata for UIKitMenuButton<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>)
  {
    v4[4] = v0;
    v4[5] = v1;
    v4[0] = &type metadata for MenuStyleConfiguration.Label;
    v4[1] = &type metadata for MenuStyleConfiguration.Content;
    v4[2] = &protocol witness table for MenuStyleConfiguration.Label;
    v4[3] = &protocol witness table for MenuStyleConfiguration.Content;
    v2 = type metadata accessor for UIKitMenuButton(0, v4);
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for UIKitMenuButton<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>);
    }
  }
}

void type metadata accessor for UIKitButtonStyleModifier<BorderedButtonStyle_Phone>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for UIKitButtonStyleModifier<BorderedButtonStyle_Phone>)
  {
    v2 = lazy protocol witness table accessor for type BorderedButtonStyle_Phone and conformance BorderedButtonStyle_Phone();
    v4 = type metadata accessor for UIKitButtonStyleModifier(a1, &type metadata for BorderedButtonStyle_Phone, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for UIKitButtonStyleModifier<BorderedButtonStyle_Phone>);
    }
  }
}

uint64_t AttributedTextFormatting.Transferable.init(text:in:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  type metadata accessor for (AttributedString, EnvironmentValues)(0, &lazy cache variable for type metadata for (AttributedString, EnvironmentValues), MEMORY[0x1E6968848], MEMORY[0x1E697F230]);
  v8 = (a3 + *(v7 + 48));
  v9 = type metadata accessor for AttributedString();
  (*(*(v9 - 8) + 32))(a3, a1, v9);
  *v8 = v5;
  v8[1] = v6;
  type metadata accessor for AttributedTextFormatting.Transferable.Storage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t static AttributedTextFormatting.Transferable.transferRepresentation.getter@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v27 = a1;
  type metadata accessor for (DataRepresentation<AttributedTextFormatting.Transferable>, DataRepresentation<AttributedTextFormatting.Transferable>)(0, a2);
  v3 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UTType();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DataRepresentation<AttributedTextFormatting.Transferable>(0);
  v26 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  static UTType.rtfd.getter();
  v16 = type metadata accessor for AttributedTextFormatting.Transferable(0);
  v17 = lazy protocol witness table accessor for type AttributedTextFormatting.Transferable and conformance AttributedTextFormatting.Transferable(&lazy protocol witness table cache variable for type AttributedTextFormatting.Transferable and conformance AttributedTextFormatting.Transferable, type metadata accessor for AttributedTextFormatting.Transferable, protocol conformance descriptor for AttributedTextFormatting.Transferable);
  v25 = v15;
  MEMORY[0x18D000CA0](v8, &async function pointer to closure #1 in static AttributedTextFormatting.Transferable.transferRepresentation.getter, 0, &async function pointer to closure #2 in static AttributedTextFormatting.Transferable.transferRepresentation.getter, 0, v16, v17);
  static UTType.rtf.getter();
  MEMORY[0x18D000CA0](v8, &async function pointer to closure #3 in static AttributedTextFormatting.Transferable.transferRepresentation.getter, 0, &async function pointer to closure #4 in static AttributedTextFormatting.Transferable.transferRepresentation.getter, 0, v16, v17);
  v18 = *(v3 + 48);
  v19 = *(v10 + 16);
  v20 = v15;
  v21 = v26;
  v19(v5, v20, v26);
  v19(&v5[v18], v12, v21);
  TupleTransferRepresentation.init(_:)();
  v22 = *(v10 + 8);
  v22(v12, v21);
  return (v22)(v25, v21);
}

void type metadata accessor for (DataRepresentation<AttributedTextFormatting.Transferable>, DataRepresentation<AttributedTextFormatting.Transferable>)(uint64_t a1, double a2)
{
  if (!lazy cache variable for type metadata for (DataRepresentation<AttributedTextFormatting.Transferable>, DataRepresentation<AttributedTextFormatting.Transferable>))
  {
    type metadata accessor for DataRepresentation<AttributedTextFormatting.Transferable>(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (DataRepresentation<AttributedTextFormatting.Transferable>, DataRepresentation<AttributedTextFormatting.Transferable>));
    }
  }
}

void type metadata accessor for DataRepresentation<AttributedTextFormatting.Transferable>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for DataRepresentation<AttributedTextFormatting.Transferable>)
  {
    type metadata accessor for AttributedTextFormatting.Transferable(255);
    lazy protocol witness table accessor for type AttributedTextFormatting.Transferable and conformance AttributedTextFormatting.Transferable(&lazy protocol witness table cache variable for type AttributedTextFormatting.Transferable and conformance AttributedTextFormatting.Transferable, type metadata accessor for AttributedTextFormatting.Transferable, protocol conformance descriptor for AttributedTextFormatting.Transferable);
    v1 = type metadata accessor for DataRepresentation();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for DataRepresentation<AttributedTextFormatting.Transferable>);
    }
  }
}

uint64_t closure #1 in static AttributedTextFormatting.Transferable.transferRepresentation.getter()
{
  v1 = AttributedTextFormatting.Transferable.dataRepresentation(for:)(*MEMORY[0x1E69DB698]);
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t AttributedTextFormatting.Transferable.dataRepresentation(for:)(void *a1)
{
  v3 = v1;
  v45 = a1;
  v53 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for AttributedString();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41 - v9;
  v11 = type metadata accessor for AttributedTextFormatting.Transferable.Storage(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of AttributedTextFormatting.Transferable.Storage(v3, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v13;
  }

  else
  {
    type metadata accessor for (AttributedString, EnvironmentValues)(0, &lazy cache variable for type metadata for (AttributedString, EnvironmentValues), MEMORY[0x1E6968848], MEMORY[0x1E697F230]);
    v16 = (v13 + *(v15 + 48));
    v18 = *v16;
    v17 = v16[1];
    (*(v5 + 32))(v10, v13, v4);
    AttributedString.init(stringLiteral:)();
    v52[2] = v18;
    v52[3] = v17;
    v42 = v18;
    v43 = v17;
    EnvironmentValues.attributeScopeContext.getter();
    v44 = v2;
    v46 = v49;
    v41 = v50;
    v47 = v50;
    v48 = v51;
    v19 = AttributeScopeContext.scope.getter();
    v20 = v10;
    v22 = v21;

    v52[0] = v18;
    v52[1] = v17;
    v14 = static AttributeScope.storage(wrapping:in:)(v7, v52, v19, v22);
    v24 = v23;
    v25 = *(v5 + 8);
    v25(v7, v4);
    ObjectType = swift_getObjectType();
    (*(v5 + 16))(v7, v20, v4);
    (*(v24 + 24))(v7, ObjectType, v24);

    v25(v20, v4);
  }

  v27 = v14;
  v28 = [v27 length];
  type metadata accessor for _ContiguousArrayStorage<(NSAttributedStringDocumentReadingOptionKey, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(NSAttributedStringDocumentAttributeKey, Any)>, &lazy cache variable for type metadata for (NSAttributedStringDocumentAttributeKey, Any), type metadata accessor for NSAttributedStringDocumentAttributeKey);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18CD63400;
  v30 = *MEMORY[0x1E69DB628];
  *(inited + 32) = *MEMORY[0x1E69DB628];
  type metadata accessor for NSAttributedStringDocumentType(0);
  *(inited + 64) = v31;
  v32 = v45;
  *(inited + 40) = v45;
  v33 = v30;
  v34 = v32;
  v35 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo38NSAttributedStringDocumentAttributeKeya_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (NSAttributedStringDocumentAttributeKey, Any)(inited + 32, &lazy cache variable for type metadata for (NSAttributedStringDocumentAttributeKey, Any), type metadata accessor for NSAttributedStringDocumentAttributeKey);
  type metadata accessor for NSAttributedStringDocumentAttributeKey(0);
  lazy protocol witness table accessor for type AttributedTextFormatting.Transferable and conformance AttributedTextFormatting.Transferable(&lazy protocol witness table cache variable for type NSAttributedStringDocumentAttributeKey and conformance NSAttributedStringDocumentAttributeKey, type metadata accessor for NSAttributedStringDocumentAttributeKey, protocol conformance descriptor for NSAttributedStringDocumentAttributeKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v49 = 0;
  v37 = [v27 dataFromRange:0 documentAttributes:v28 error:{isa, &v49}];

  v38 = v49;
  if (v37)
  {
    v35 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v39 = v38;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v35;
}

uint64_t closure #2 in static AttributedTextFormatting.Transferable.transferRepresentation.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  return MEMORY[0x1EEE6DFA0](closure #2 in static AttributedTextFormatting.Transferable.transferRepresentation.getter, 0, 0);
}

uint64_t closure #2 in static AttributedTextFormatting.Transferable.transferRepresentation.getter()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = *MEMORY[0x1E69DB698];
  type metadata accessor for _ContiguousArrayStorage<(NSAttributedStringDocumentReadingOptionKey, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(NSAttributedStringDocumentReadingOptionKey, Any)>, &lazy cache variable for type metadata for (NSAttributedStringDocumentReadingOptionKey, Any), type metadata accessor for NSAttributedStringDocumentReadingOptionKey);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18CD63400;
  v5 = *MEMORY[0x1E69DB630];
  *(inited + 32) = *MEMORY[0x1E69DB630];
  type metadata accessor for NSAttributedStringDocumentType(0);
  *(inited + 64) = v6;
  *(inited + 40) = v3;
  v7 = v5;
  v8 = v3;
  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo42NSAttributedStringDocumentReadingOptionKeya_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (NSAttributedStringDocumentAttributeKey, Any)(inited + 32, &lazy cache variable for type metadata for (NSAttributedStringDocumentReadingOptionKey, Any), type metadata accessor for NSAttributedStringDocumentReadingOptionKey);
  v10 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  outlined copy of Data._Representation(v1, v2);
  v11 = specialized @nonobjc NSAttributedString.init(data:options:documentAttributes:)(v1, v2, v9, 0);
  v12 = v0[11];
  outlined consume of Data._Representation(v0[12], v0[13]);
  *v12 = v11;
  type metadata accessor for AttributedTextFormatting.Transferable.Storage(0);
  swift_storeEnumTagMultiPayload();
  v14 = v0[1];

  return v14(v13);
}

uint64_t closure #3 in static AttributedTextFormatting.Transferable.transferRepresentation.getter()
{
  v1 = AttributedTextFormatting.Transferable.dataRepresentation(for:)(*MEMORY[0x1E69DB6A0]);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t closure #4 in static AttributedTextFormatting.Transferable.transferRepresentation.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  return MEMORY[0x1EEE6DFA0](closure #4 in static AttributedTextFormatting.Transferable.transferRepresentation.getter, 0, 0);
}

uint64_t closure #4 in static AttributedTextFormatting.Transferable.transferRepresentation.getter()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = *MEMORY[0x1E69DB6A0];
  type metadata accessor for _ContiguousArrayStorage<(NSAttributedStringDocumentReadingOptionKey, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(NSAttributedStringDocumentReadingOptionKey, Any)>, &lazy cache variable for type metadata for (NSAttributedStringDocumentReadingOptionKey, Any), type metadata accessor for NSAttributedStringDocumentReadingOptionKey);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18CD63400;
  v5 = *MEMORY[0x1E69DB630];
  *(inited + 32) = *MEMORY[0x1E69DB630];
  type metadata accessor for NSAttributedStringDocumentType(0);
  *(inited + 64) = v6;
  *(inited + 40) = v3;
  v7 = v5;
  v8 = v3;
  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo42NSAttributedStringDocumentReadingOptionKeya_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (NSAttributedStringDocumentAttributeKey, Any)(inited + 32, &lazy cache variable for type metadata for (NSAttributedStringDocumentReadingOptionKey, Any), type metadata accessor for NSAttributedStringDocumentReadingOptionKey);
  v10 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  outlined copy of Data._Representation(v1, v2);
  v11 = specialized @nonobjc NSAttributedString.init(data:options:documentAttributes:)(v1, v2, v9, 0);
  v12 = v0[11];
  outlined consume of Data._Representation(v0[12], v0[13]);
  *v12 = v11;
  type metadata accessor for AttributedTextFormatting.Transferable.Storage(0);
  swift_storeEnumTagMultiPayload();
  v14 = v0[1];

  return v14(v13);
}

void AttributedTextFormatting.Transferable.export(in:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for AttributedString();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  *&v47 = &v41 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v41 - v12;
  v14 = type metadata accessor for AttributedTextFormatting.Transferable.Storage(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *a1;
  v18 = a1[1];
  outlined init with copy of AttributedTextFormatting.Transferable.Storage(v2, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v16;
    AttributedString.init(stringLiteral:)();
    *v50 = v17;
    *&v50[8] = v18;
    EnvironmentValues.attributeScopeContext.getter();
    *v55 = *v57;
    v47 = *&v57[8];
    *&v55[8] = *&v57[8];
    v56 = v58;
    v20 = AttributeScopeContext.scope.getter();
    v21 = v18;
    v23 = v22;

    *v48 = v17;
    *&v48[8] = v21;
    v24 = static AttributeScope.storage(wrapping:in:)(v8, v48, v20, v23);
    v26 = v25;
    (*(v6 + 8))(v8, v5);
    ObjectType = swift_getObjectType();
    [v24 appendAttributedString_];
    (*(v26 + 16))(ObjectType, v26);
  }

  else
  {
    v46 = a2;
    type metadata accessor for (AttributedString, EnvironmentValues)(0, &lazy cache variable for type metadata for (AttributedString, EnvironmentValues), MEMORY[0x1E6968848], MEMORY[0x1E697F230]);
    v29 = (v16 + *(v28 + 48));
    v31 = *v29;
    v30 = v29[1];
    v32 = v18;
    v45 = *(v6 + 32);
    v44 = v6 + 32;
    v45(v13, v16, v5);
    v43 = v31;
    v53 = v31;
    v54 = v30;
    v33 = v30;
    EnvironmentValues.attributeScopeContext.getter();
    *v55 = *v57;
    v41 = *&v57[8];
    *&v55[8] = *&v57[8];
    v56 = v58;
    v34 = AttributeScopeContext.scope.getter();

    *&v52 = v17;
    *(&v52 + 1) = v32;
    EnvironmentValues.attributeScopeContext.getter();
    *v48 = *v50;
    v41 = *&v50[8];
    *&v48[8] = *&v50[8];
    v49 = v51;
    v35 = AttributeScopeContext.scope.getter();

    v42 = v5;
    if (v34 == v35)
    {
      (*(v6 + 16))(v47, v13, v5);
    }

    else
    {
      *v50 = v17;
      *&v50[8] = v32;
      EnvironmentValues.attributeScopeContext.getter();
      *v55 = *v57;
      v41 = *&v57[8];
      *&v55[8] = *&v57[8];
      v56 = v58;
      AttributeScopeContext.scope.getter();

      (*(v6 + 16))(v8, v13, v5);
      lazy protocol witness table accessor for type AttributedTextFormatting.Transferable and conformance AttributedTextFormatting.Transferable(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
      AttributedString.init<A, B>(_:including:)();
    }

    v36 = v6;
    *v50 = v43;
    *&v50[8] = v33;
    EnvironmentValues.attributeScopeContext.getter();
    *v48 = *v57;
    v53 = v17;
    v54 = v32;
    EnvironmentValues.attributeScopeContext.getter();
    v52 = *v55;
    v37 = static AttributedTextFormatting.Constraints.== infix(_:_:)();

    v38 = v46;
    if (v37)
    {
      v39 = v42;
      (*(v6 + 8))(v13, v42);

      v40 = v47;
    }

    else
    {
      *v55 = v17;
      *&v55[8] = v32;
      EnvironmentValues.attributeScopeContext.getter();
      *v50 = *v57;
      v40 = v47;
      AttributedTextFormatting.Constraints.constrain(_:)();

      v39 = v42;
      (*(v36 + 8))(v13, v42);
    }

    v45(v38, v40, v39);
  }
}

double AttributedString.init(transferable:in:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2[1];
  v6[0] = *a2;
  v6[1] = v4;
  AttributedTextFormatting.Transferable.export(in:)(v6, a3);
  outlined destroy of AttributedTextFormatting.Transferable(a1, type metadata accessor for AttributedTextFormatting.Transferable);

  return result;
}

char *initializeBufferWithCopyOfBuffer for AttributedTextFormatting.Transferable(char *a1, char **a2)
{
  v4 = *(*(type metadata accessor for AttributedTextFormatting.Transferable.Storage(0) - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v7 = *a2;
    *a1 = *a2;
    a1 = &v7[(v4 + 16) & ~v4];
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = *a2;
      *a1 = *a2;
      v6 = v5;
    }

    else
    {
      v8 = type metadata accessor for AttributedString();
      (*(*(v8 - 8) + 16))(a1, a2, v8);
      type metadata accessor for (AttributedString, EnvironmentValues)(0, &lazy cache variable for type metadata for (AttributedString, EnvironmentValues), MEMORY[0x1E6968848], MEMORY[0x1E697F230]);
      v10 = *(v9 + 48);
      v11 = &a1[v10];
      v12 = (a2 + v10);
      v13 = v12[1];
      *v11 = *v12;
      *(v11 + 1) = v13;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

double destroy for AttributedTextFormatting.Transferable(void **a1)
{
  type metadata accessor for AttributedTextFormatting.Transferable.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = *a1;
  }

  else
  {
    v4 = type metadata accessor for AttributedString();
    (*(*(v4 - 8) + 8))(a1, v4);
    type metadata accessor for (AttributedString, EnvironmentValues)(0, &lazy cache variable for type metadata for (AttributedString, EnvironmentValues), MEMORY[0x1E6968848], MEMORY[0x1E697F230]);
  }

  return result;
}

void **initializeWithCopy for AttributedTextFormatting.Transferable(void **a1, void **a2)
{
  type metadata accessor for AttributedTextFormatting.Transferable.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *a2;
    *a1 = *a2;
    v5 = v4;
  }

  else
  {
    v6 = type metadata accessor for AttributedString();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    type metadata accessor for (AttributedString, EnvironmentValues)(0, &lazy cache variable for type metadata for (AttributedString, EnvironmentValues), MEMORY[0x1E6968848], MEMORY[0x1E697F230]);
    v8 = *(v7 + 48);
    v9 = (a1 + v8);
    v10 = (a2 + v8);
    v11 = v10[1];
    *v9 = *v10;
    v9[1] = v11;
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

void **assignWithCopy for AttributedTextFormatting.Transferable(void **a1, void **a2)
{
  if (a1 != a2)
  {
    outlined destroy of AttributedTextFormatting.Transferable(a1, type metadata accessor for AttributedTextFormatting.Transferable.Storage);
    type metadata accessor for AttributedTextFormatting.Transferable.Storage(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v4 = *a2;
      *a1 = *a2;
      v5 = v4;
    }

    else
    {
      v6 = type metadata accessor for AttributedString();
      (*(*(v6 - 8) + 16))(a1, a2, v6);
      type metadata accessor for (AttributedString, EnvironmentValues)(0, &lazy cache variable for type metadata for (AttributedString, EnvironmentValues), MEMORY[0x1E6968848], MEMORY[0x1E697F230]);
      v8 = *(v7 + 48);
      v9 = (a1 + v8);
      v10 = (a2 + v8);
      *v9 = *v10;
      v9[1] = v10[1];
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t outlined destroy of AttributedTextFormatting.Transferable(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *initializeWithTake for AttributedTextFormatting.Transferable(char *a1, char *a2)
{
  v4 = type metadata accessor for AttributedTextFormatting.Transferable.Storage(0);
  if (swift_getEnumCaseMultiPayload())
  {
    v5 = *(*(v4 - 8) + 64);

    return memcpy(a1, a2, v5);
  }

  else
  {
    v7 = type metadata accessor for AttributedString();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    type metadata accessor for (AttributedString, EnvironmentValues)(0, &lazy cache variable for type metadata for (AttributedString, EnvironmentValues), MEMORY[0x1E6968848], MEMORY[0x1E697F230]);
    *&a1[*(v8 + 48)] = *&a2[*(v8 + 48)];
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

char *assignWithTake for AttributedTextFormatting.Transferable(char *a1, char *a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of AttributedTextFormatting.Transferable(a1, type metadata accessor for AttributedTextFormatting.Transferable.Storage);
  v4 = type metadata accessor for AttributedTextFormatting.Transferable.Storage(0);
  if (!swift_getEnumCaseMultiPayload())
  {
    v7 = type metadata accessor for AttributedString();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    type metadata accessor for (AttributedString, EnvironmentValues)(0, &lazy cache variable for type metadata for (AttributedString, EnvironmentValues), MEMORY[0x1E6968848], MEMORY[0x1E697F230]);
    *&a1[*(v8 + 48)] = *&a2[*(v8 + 48)];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v5 = *(*(v4 - 8) + 64);

  return memcpy(a1, a2, v5);
}

uint64_t type metadata completion function for AttributedTextFormatting.Transferable(uint64_t a1)
{
  result = type metadata accessor for AttributedTextFormatting.Transferable.Storage(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata accessor for TupleTransferRepresentation<AttributedTextFormatting.Transferable, (DataRepresentation<AttributedTextFormatting.Transferable>, DataRepresentation<AttributedTextFormatting.Transferable>)>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TupleTransferRepresentation<AttributedTextFormatting.Transferable, (DataRepresentation<AttributedTextFormatting.Transferable>, DataRepresentation<AttributedTextFormatting.Transferable>)>)
  {
    type metadata accessor for AttributedTextFormatting.Transferable(255);
    type metadata accessor for (DataRepresentation<AttributedTextFormatting.Transferable>, DataRepresentation<AttributedTextFormatting.Transferable>)(255, v1);
    lazy protocol witness table accessor for type AttributedTextFormatting.Transferable and conformance AttributedTextFormatting.Transferable(&lazy protocol witness table cache variable for type AttributedTextFormatting.Transferable and conformance AttributedTextFormatting.Transferable, type metadata accessor for AttributedTextFormatting.Transferable, protocol conformance descriptor for AttributedTextFormatting.Transferable);
    v2 = type metadata accessor for TupleTransferRepresentation();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for TupleTransferRepresentation<AttributedTextFormatting.Transferable, (DataRepresentation<AttributedTextFormatting.Transferable>, DataRepresentation<AttributedTextFormatting.Transferable>)>);
    }
  }
}

char *initializeBufferWithCopyOfBuffer for AttributedTextFormatting.Transferable.Storage(char *a1, char **a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = &v8[(v5 + 16) & ~v5];
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = *a2;
      *a1 = *a2;
      v7 = v6;
    }

    else
    {
      v9 = type metadata accessor for AttributedString();
      (*(*(v9 - 8) + 16))(a1, a2, v9);
      type metadata accessor for (AttributedString, EnvironmentValues)(0, &lazy cache variable for type metadata for (AttributedString, EnvironmentValues), MEMORY[0x1E6968848], MEMORY[0x1E697F230]);
      v11 = *(v10 + 48);
      v12 = &a1[v11];
      v13 = (a2 + v11);
      v14 = v13[1];
      *v12 = *v13;
      *(v12 + 1) = v14;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

double destroy for AttributedTextFormatting.Transferable.Storage(void **a1, uint64_t a2)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = *a1;
  }

  else
  {
    v5 = type metadata accessor for AttributedString();
    (*(*(v5 - 8) + 8))(a1, v5);
    type metadata accessor for (AttributedString, EnvironmentValues)(0, &lazy cache variable for type metadata for (AttributedString, EnvironmentValues), MEMORY[0x1E6968848], MEMORY[0x1E697F230]);
  }

  return result;
}

void **initializeWithCopy for AttributedTextFormatting.Transferable.Storage(void **a1, void **a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *a2;
    *a1 = *a2;
    v6 = v5;
  }

  else
  {
    v7 = type metadata accessor for AttributedString();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    type metadata accessor for (AttributedString, EnvironmentValues)(0, &lazy cache variable for type metadata for (AttributedString, EnvironmentValues), MEMORY[0x1E6968848], MEMORY[0x1E697F230]);
    v9 = *(v8 + 48);
    v10 = (a1 + v9);
    v11 = (a2 + v9);
    v12 = v11[1];
    *v10 = *v11;
    v10[1] = v12;
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

void **assignWithCopy for AttributedTextFormatting.Transferable.Storage(void **a1, void **a2, uint64_t a3)
{
  if (a1 != a2)
  {
    outlined destroy of AttributedTextFormatting.Transferable(a1, type metadata accessor for AttributedTextFormatting.Transferable.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = *a2;
      *a1 = *a2;
      v6 = v5;
    }

    else
    {
      v7 = type metadata accessor for AttributedString();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
      type metadata accessor for (AttributedString, EnvironmentValues)(0, &lazy cache variable for type metadata for (AttributedString, EnvironmentValues), MEMORY[0x1E6968848], MEMORY[0x1E697F230]);
      v9 = *(v8 + 48);
      v10 = (a1 + v9);
      v11 = (a2 + v9);
      *v10 = *v11;
      v10[1] = v11[1];
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

char *initializeWithTake for AttributedTextFormatting.Transferable.Storage(char *a1, char *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    v8 = type metadata accessor for AttributedString();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    type metadata accessor for (AttributedString, EnvironmentValues)(0, &lazy cache variable for type metadata for (AttributedString, EnvironmentValues), MEMORY[0x1E6968848], MEMORY[0x1E697F230]);
    *&a1[*(v9 + 48)] = *&a2[*(v9 + 48)];
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

char *assignWithTake for AttributedTextFormatting.Transferable.Storage(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of AttributedTextFormatting.Transferable(a1, type metadata accessor for AttributedTextFormatting.Transferable.Storage);
  if (!swift_getEnumCaseMultiPayload())
  {
    v8 = type metadata accessor for AttributedString();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    type metadata accessor for (AttributedString, EnvironmentValues)(0, &lazy cache variable for type metadata for (AttributedString, EnvironmentValues), MEMORY[0x1E6968848], MEMORY[0x1E697F230]);
    *&a1[*(v9 + 48)] = *&a2[*(v9 + 48)];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

uint64_t type metadata completion function for AttributedTextFormatting.Transferable.Storage(uint64_t a1)
{
  result = type metadata accessor for AttributedString();
  if (v2 <= 0x3F)
  {
    swift_getTupleTypeLayout2();
    v3[4] = v3;
    v3[5] = MEMORY[0x1E69E5CE0] + 64;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t outlined init with copy of AttributedTextFormatting.Transferable.Storage(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributedTextFormatting.Transferable.Storage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of (NSAttributedStringDocumentAttributeKey, Any)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for (AttributedString, EnvironmentValues)(0, a2, a3, MEMORY[0x1E69E7CA0] + 8);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id specialized @nonobjc NSAttributedString.init(data:options:documentAttributes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v13[1] = *MEMORY[0x1E69E9840];
  isa = Data._bridgeToObjectiveC()().super.isa;
  type metadata accessor for NSAttributedStringDocumentReadingOptionKey(0);
  lazy protocol witness table accessor for type AttributedTextFormatting.Transferable and conformance AttributedTextFormatting.Transferable(&lazy protocol witness table cache variable for type NSAttributedStringDocumentReadingOptionKey and conformance NSAttributedStringDocumentReadingOptionKey, type metadata accessor for NSAttributedStringDocumentReadingOptionKey, protocol conformance descriptor for NSAttributedStringDocumentReadingOptionKey);
  v8 = Dictionary._bridgeToObjectiveC()().super.isa;

  v13[0] = 0;
  v9 = [v5 initWithData:isa options:v8 documentAttributes:a4 error:v13];

  if (v9)
  {
    v10 = v13[0];
  }

  else
  {
    v11 = v13[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v9;
}

void type metadata accessor for _ContiguousArrayStorage<(NSAttributedStringDocumentReadingOptionKey, Any)>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for (AttributedString, EnvironmentValues)(255, a3, a4, MEMORY[0x1E69E7CA0] + 8);
    v5 = type metadata accessor for _ContiguousArrayStorage();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void *UIKitEventBindingBridge.eventSources.getter()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = v1;
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v5 = v3[2];
    v4 = v3[3];
    if (v5 >= v4 >> 1)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
    }

    v6 = lazy protocol witness table accessor for type UIKitHoverGestureRecognizer and conformance UIKitHoverGestureRecognizer(&lazy protocol witness table cache variable for type UIKitGestureRecognizer and conformance UIKitGestureRecognizer, type metadata accessor for UIKitGestureRecognizer, protocol conformance descriptor for UIKitGestureRecognizer);
    v3[2] = v5 + 1;
    v7 = &v3[2 * v5];
    v7[4] = v2;
    v7[5] = v6;
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v8 = *(v0 + 40);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
  }

  v10 = v3[2];
  v9 = v3[3];
  if (v10 >= v9 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v3);
  }

  v11 = lazy protocol witness table accessor for type UIKitHoverGestureRecognizer and conformance UIKitHoverGestureRecognizer(&lazy protocol witness table cache variable for type UIKitHoverGestureRecognizer and conformance UIKitHoverGestureRecognizer, type metadata accessor for UIKitHoverGestureRecognizer, protocol conformance descriptor for UIKitHoverGestureRecognizer);
  v3[2] = v10 + 1;
  v12 = &v3[2 * v10];
  v12[4] = v8;
  v12[5] = v11;
  return v3;
}

void *UIKitEventBindingBridge.source(for:)(_BYTE *a1)
{
  if (!*a1)
  {
    v2 = *(v1 + 32);
    if (!v2)
    {
      return v2;
    }

    v3 = &lazy protocol witness table cache variable for type UIKitGestureRecognizer and conformance UIKitGestureRecognizer;
    v4 = type metadata accessor for UIKitGestureRecognizer;
    v5 = protocol conformance descriptor for UIKitGestureRecognizer;
LABEL_6:
    lazy protocol witness table accessor for type UIKitHoverGestureRecognizer and conformance UIKitHoverGestureRecognizer(v3, v4, v5);
    v6 = v2;
    return v2;
  }

  if (*a1 == 1)
  {
    v2 = *(v1 + 40);
    v3 = &lazy protocol witness table cache variable for type UIKitHoverGestureRecognizer and conformance UIKitHoverGestureRecognizer;
    v4 = type metadata accessor for UIKitHoverGestureRecognizer;
    v5 = protocol conformance descriptor for UIKitHoverGestureRecognizer;
    goto LABEL_6;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void UIKitEventBindingBridge.__ivar_destroyer()
{
  v1 = *(v0 + 48);
}

uint64_t lazy protocol witness table accessor for type UIKitHoverGestureRecognizer and conformance UIKitHoverGestureRecognizer(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t FetchController.refreshResults()()
{
  v1 = *v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  v9 = type metadata accessor for Binding();
  v10 = type metadata accessor for Optional();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - v12;
  (*(v14 + 16))(&v17 - v12, &v0[*((v3 & v1) + 0x88)], v11);
  v15 = *(v9 - 8);
  result = (*(v15 + 48))(v13, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*&v0[*((*v2 & *v0) + 0x68)])(v0);
    (*(*(v4 - 8) + 56))(v8, 0, 1, v4);
    specialized Binding.wrappedValue.setter(v8);
    (*(v6 + 8))(v8, v5);
    return (*(v15 + 8))(v13, v9);
  }

  return result;
}

void FetchController.controllerDidChangeContent(_:)(uint64_t a1)
{
  v2 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x80));
  if (v2)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
    v3 = v2;
    v4 = static NSObject.== infix(_:_:)();

    if (v4)
    {

      FetchController.refreshResults()();
    }
  }
}

void @objc FetchController.controllerDidChangeContent(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  FetchController.controllerDidChangeContent(_:)(v4);
}

uint64_t @objc FetchController.__ivar_destroyer(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];

  v3 = *((*v2 & *a1) + 0x88);
  type metadata accessor for Optional();
  type metadata accessor for Binding();
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 8);

  return v5(&a1[v3], v4);
}

uint64_t partial apply for closure #1 in FetchController.update(in:)()
{
  result = FetchController.fetchIfNeeded()();
  if (result)
  {
    return FetchController.refreshResults()();
  }

  return result;
}

Swift::Int _sSh2eeoiySbShyxG_ABtFZ7SwiftUI8UniqueIDV_Tt1g5(Swift::Int result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + 8 * (v10 | (v4 << 6)));
    Hasher.init(_seed:)();
    MEMORY[0x18D00F6F0](v13);
    result = Hasher._finalize()();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + 8 * v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSh2eeoiySbShyxG_ABtFZ7SwiftUI16ToolbarPlacementV4RoleO_Tt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v18 = result;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v10 = __clz(__rbit64(v7));
    v19 = (v7 - 1) & v7;
LABEL_13:
    outlined init with copy of ToolbarPlacement.Role(*(result + 48) + 40 * (v10 | (v3 << 6)), v31);
    v29[0] = v31[0];
    v29[1] = v31[1];
    v30 = v32;
    Hasher.init(_seed:)();
    ToolbarPlacement.Role.hash(into:)(v23);
    v13 = Hasher._finalize()();
    v14 = -1 << *(a2 + 32);
    v15 = v13 & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
LABEL_46:
      outlined destroy of ToolbarPlacement.Role(v29);
      return 0;
    }

    v16 = ~v14;
    while (1)
    {
      outlined init with copy of ToolbarPlacement.Role(*(a2 + 48) + 40 * v15, v28);
      outlined init with copy of ToolbarPlacement.Role(v28, v23);
      outlined init with copy of ToolbarPlacement.Role(v29, &v25);
      if (v24 <= 2)
      {
        switch(v24)
        {
          case 0:
            outlined destroy of ToolbarPlacement.Role(v28);
            if (!*(&v26 + 1))
            {
              goto LABEL_43;
            }

            goto LABEL_38;
          case 1:
            outlined destroy of ToolbarPlacement.Role(v28);
            if (*(&v26 + 1) == 1)
            {
              goto LABEL_43;
            }

            goto LABEL_38;
          case 2:
            outlined destroy of ToolbarPlacement.Role(v28);
            if (*(&v26 + 1) == 2)
            {
              goto LABEL_43;
            }

            goto LABEL_38;
        }
      }

      else
      {
        if (v24 <= 4)
        {
          if (v24 == 3)
          {
            outlined destroy of ToolbarPlacement.Role(v28);
            if (*(&v26 + 1) == 3)
            {
              goto LABEL_43;
            }
          }

          else
          {
            outlined destroy of ToolbarPlacement.Role(v28);
            if (*(&v26 + 1) == 4)
            {
              goto LABEL_43;
            }
          }

          goto LABEL_38;
        }

        if (v24 == 5)
        {
          outlined destroy of ToolbarPlacement.Role(v28);
          if (*(&v26 + 1) == 5)
          {
            goto LABEL_43;
          }

          goto LABEL_38;
        }

        if (v24 == 6)
        {
          outlined destroy of ToolbarPlacement.Role(v28);
          if (*(&v26 + 1) == 6)
          {
            goto LABEL_43;
          }

          goto LABEL_38;
        }
      }

      outlined init with copy of ToolbarPlacement.Role(v23, v22);
      if (*(&v26 + 1) >= 7uLL)
      {
        break;
      }

      outlined destroy of ToolbarPlacement.Role(v28);
      outlined destroy of AnyHashable(v22);
LABEL_38:
      outlined destroy of (ToolbarPlacement.Role, ToolbarPlacement.Role)(v23, type metadata accessor for (ToolbarPlacement.Role, ToolbarPlacement.Role));
LABEL_39:
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    v20[0] = v25;
    v20[1] = v26;
    v21 = v27;
    v17 = MEMORY[0x18D00E7E0](v22, v20);
    outlined destroy of AnyHashable(v20);
    outlined destroy of ToolbarPlacement.Role(v28);
    outlined destroy of AnyHashable(v22);
    if ((v17 & 1) == 0)
    {
      outlined destroy of ToolbarPlacement.Role(v23);
      goto LABEL_39;
    }

LABEL_43:
    outlined destroy of ToolbarPlacement.Role(v23);
    outlined destroy of ToolbarPlacement.Role(v29);
    result = v18;
    v7 = v19;
  }

  while (v19);
LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v19 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSh2eeoiySbShyxG_ABtFZSo21NSAttributedStringKeya_Tt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v24 = v8;
  v25 = result;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v26 = (v7 - 1) & v7;
LABEL_13:
      v13 = *(*(result + 48) + 8 * (v10 | (v3 << 6)));
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v27 = v13;
      String.hash(into:)();
      v14 = Hasher._finalize()();

      v15 = -1 << *(a2 + 32);
      v16 = v14 & ~v15;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        break;
      }

      v17 = ~v15;
      while (1)
      {
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;
        if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
        {

          goto LABEL_24;
        }

        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v23)
        {
          break;
        }

        v16 = (v16 + 1) & v17;
        if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {
          goto LABEL_27;
        }
      }

LABEL_24:
      v8 = v24;
      result = v25;
      v7 = v26;
      if (!v26)
      {
        goto LABEL_8;
      }
    }

LABEL_27:

    return 0;
  }

LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v26 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

Swift::Int _sSh2eeoiySbShyxG_ABtFZ7SwiftUI7EventIDV_Tt1g5(Swift::Int result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = (*(v3 + 48) + 16 * (v10 | (v4 << 6)));
    v14 = *v13;
    v15 = v13[1];
    Hasher.init(_seed:)();
    MEMORY[0x18D00F6F0](v14);
    MEMORY[0x18D00F6F0](v15);
    result = Hasher._finalize()();
    v16 = -1 << *(a2 + 32);
    v17 = result & ~v16;
    if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
      return 0;
    }

    v18 = ~v16;
    while (1)
    {
      v19 = (*(a2 + 48) + 16 * v17);
      if (v19[1] == v15 && *v19 == v14)
      {
        break;
      }

      v17 = (v17 + 1) & v18;
      if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSh2eeoiySbShyxG_ABtFZ7SwiftUI18PresentationDetentV_Tt1g5(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(result + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(result + 56);
    v8 = (v5 + 63) >> 6;
    v9 = a2 + 56;
LABEL_7:
    if (v7)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      goto LABEL_14;
    }

    v11 = v4;
    do
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        return result;
      }

      if (v4 >= v8)
      {
        return 1;
      }

      v12 = *(v3 + 56 + 8 * v4);
      ++v11;
    }

    while (!v12);
    v10 = __clz(__rbit64(v12));
    v7 = (v12 - 1) & v12;
LABEL_14:
    v13 = *(v3 + 48) + 16 * (v10 | (v4 << 6));
    v14 = *v13;
    v15 = *(v13 + 8);
    Hasher.init(_seed:)();
    PresentationDetent.Identifier.hash(into:)(v31, v14, v15);
    v16 = Hasher._finalize()();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if ((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
    {
      v19 = ~v17;
      v20 = v15 != 0xC000000000000000 || v14 != 2;
      v21 = v15 != 0xC000000000000000 || v14 != 1;
      v22 = v15 != 0xC000000000000000 || v14 != 0;
      v23 = v15 & 0xC000000000000000;
      v24 = v15 >> 62 != 3 || v20;
      v25 = v15 >> 62 != 3 || v21;
      v26 = v15 >> 62 != 3 || v22;
      do
      {
        v27 = *(a2 + 48) + 16 * v18;
        v28 = *v27;
        v29 = *(v27 + 8);
        result = v29 >> 62;
        if ((v29 >> 62) > 1)
        {
          if (result == 2)
          {
            if (v23 == 0x8000000000000000 && *&v28 == v14)
            {
              goto LABEL_7;
            }
          }

          else
          {
            result = *&v28 | v29 ^ 0xC000000000000000;
            if (result)
            {
              if (v29 == 0xC000000000000000 && *&v28 == 1)
              {
                if ((v25 & 1) == 0)
                {
                  goto LABEL_7;
                }
              }

              else if (!v24)
              {
                goto LABEL_7;
              }
            }

            else if ((v26 & 1) == 0)
            {
              goto LABEL_7;
            }
          }
        }

        else if (result)
        {
          if (v23 == 0x4000000000000000)
          {
LABEL_34:
            if (v28 == *&v14)
            {
              goto LABEL_7;
            }
          }
        }

        else if (!(v15 >> 62))
        {
          goto LABEL_34;
        }

        v18 = (v18 + 1) & v19;
      }

      while (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) != 0);
    }
  }

  return 0;
}

Swift::Int _sSh2eeoiySbShyxG_ABtFZ7SwiftUI22ToolbarDefaultItemKindV0G0O_Tt1g5(Swift::Int result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    Hasher.init(_seed:)();
    MEMORY[0x18D00F6F0](v13);
    result = Hasher._finalize()();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

Swift::Int one-time initialization function for defaultValue()
{
  result = specialized static ViewGraphBridgeProperties.defaultRequestedBars.getter();
  static ViewGraphBridgeProperties.defaultValue = 0uLL;
  qword_1ED5A7320 = MEMORY[0x1E69E7CD0];
  unk_1ED5A7328 = result;
  return result;
}

{
  result = specialized static ViewGraphBridgeProperties.defaultRequestedBars.getter();
  static EnvironmentValues.BridgePropertiesEnvironmentKey.defaultValue = 0uLL;
  qword_1ED57B3E0 = MEMORY[0x1E69E7CD0];
  unk_1ED57B3E8 = result;
  return result;
}

uint64_t protocol witness for static Feature.isEnabled.getter in conformance ViewGraphBridgePropertiesAreInput(uint64_t a1)
{
  lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();

  return static UserDefaultKeyedFeature.isEnabled.getter();
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance ViewGraphBridgePropertiesAreInput(uint64_t *a1, uint64_t a2)
{
  lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
  PropertyList.subscript.getter();
  return v3;
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance ViewGraphBridgePropertiesAreInput@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
  result = (*(v4 + 16))(a1, v4);
  *a2 = result & 1;
  return result;
}

double protocol witness for static EnvironmentKey.defaultValue.getter in conformance EnvironmentValues.BridgePropertiesEnvironmentKey@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = qword_1ED57B3E0;
  v2 = unk_1ED57B3E8;
  *a1 = static EnvironmentValues.BridgePropertiesEnvironmentKey.defaultValue;
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ViewGraphBridgeProperties(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v3 = a2[3];
  v4 = a1[3];
  if ((_sSh2eeoiySbShyxG_ABtFZ7SwiftUI16ToolbarPlacementV4RoleO_Tt1g5(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  return _sSh2eeoiySbShyxG_ABtFZ7SwiftUI16ToolbarPlacementV4RoleO_Tt1g5(v4, v3);
}

uint64_t specialized Set._Variant.insert(_:)(_OWORD *a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  AnyHashable.hash(into:)();
  v6 = *(a2 + 40);
  MEMORY[0x18D00F6F0](v6);
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    do
    {
      outlined init with copy of AccessibilityRelationshipScope.Key(*(v5 + 48) + 48 * v9, v16);
      if (MEMORY[0x18D00E7E0](v16, a2))
      {
        v11 = v16[5];
        outlined destroy of AccessibilityRelationshipScope.Key(v16);
        if (v11 == v6)
        {
          outlined destroy of AccessibilityRelationshipScope.Key(a2);
          outlined init with copy of AccessibilityRelationshipScope.Key(*(v5 + 48) + 48 * v9, a1);
          return 0;
        }
      }

      else
      {
        outlined destroy of AccessibilityRelationshipScope.Key(v16);
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  outlined init with copy of AccessibilityRelationshipScope.Key(a2, v16);
  v15 = *v2;
  specialized _NativeSet.insertNew(_:at:isUnique:)(v16, v9, isUniquelyReferenced_nonNull_native);
  *v2 = v15;
  v14 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v14;
  a1[2] = *(a2 + 32);
  return 1;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  v8 = *v2;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v4);
  v25 = v5;
  if (v7 == 6)
  {
    v9 = v6;
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x18D00F6F0](v5);
    MEMORY[0x18D00F6F0](v7);
    v9 = v6;
    MEMORY[0x18D00F6F0](v6);
  }

  v10 = *(a2 + 32);
  Hasher._combine(_:)(v10 & 1);
  v11 = Hasher._finalize()();
  v12 = -1 << *(v8 + 32);
  v13 = v11 & ~v12;
  if (((*(v8 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_23:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v13, isUniquelyReferenced_nonNull_native);
    *v2 = v27;
    v22 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v22;
    *(a1 + 32) = *(a2 + 2);
    return 1;
  }

  v14 = ~v12;
  v15 = v25;
  while (1)
  {
    v16 = *(v8 + 48) + 48 * v13;
    if (*v16 != v4)
    {
      goto LABEL_6;
    }

    v17 = *(v16 + 16);
    v18 = *(v16 + 32);
    if (v17 == 6)
    {
      break;
    }

    if (v7 != 6)
    {
      v19 = *(v16 + 8) == v25 && (v17 ^ v7) == 0;
      v20 = v19 && *(v16 + 24) == v9;
      if (v20 && ((v18 ^ v10) & 1) == 0)
      {
        goto LABEL_25;
      }
    }

LABEL_6:
    v13 = (v13 + 1) & v14;
    if (((*(v8 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  if (v7 != 6 || ((v18 ^ v10) & 1) != 0)
  {
    goto LABEL_6;
  }

  v15 = *(v16 + 8);
  v9 = *(v16 + 24);
LABEL_25:
  result = 0;
  v24 = *(v16 + 40);
  *a1 = v4;
  *(a1 + 8) = v15;
  *(a1 + 16) = v17;
  *(a1 + 24) = v9;
  *(a1 + 32) = v18;
  *(a1 + 40) = v24;
  return result;
}

{
  v4 = *v2;
  Hasher.init(_seed:)();
  v5 = *a2;
  v6 = a2[1];
  String.hash(into:)();
  AnyHashable.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(v4 + 32);
  v9 = v7 & ~v8;
  if ((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      outlined init with copy of SceneRequestCache.Item(*(v4 + 48) + 56 * v9, v17);
      v11 = v17[0] == v5 && v17[1] == v6;
      if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (MEMORY[0x18D00E7E0](&v18, a2 + 2))
      {
        break;
      }

      outlined destroy of SceneRequestCache.Item(v17);
      v9 = (v9 + 1) & v10;
      if (((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    outlined destroy of SceneRequestCache.Item(v17);
    outlined destroy of SceneRequestCache.Item(a2);
    outlined init with copy of SceneRequestCache.Item(*(v4 + 48) + 56 * v9, a1);
    return 0;
  }

  else
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    outlined init with copy of SceneRequestCache.Item(a2, v17);
    v16 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v17, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v16;
    v13 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v13;
    *(a1 + 32) = *(a2 + 2);
    *(a1 + 48) = a2[6];
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(_BYTE *a1, Swift::Int a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](a2);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UTType();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  lazy protocol witness table accessor for type HashableCommandGroupPlacementWrapper and conformance HashableCommandGroupPlacementWrapper(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x1E69E8450], MEMORY[0x1E69E8460]);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      lazy protocol witness table accessor for type HashableCommandGroupPlacementWrapper and conformance HashableCommandGroupPlacementWrapper(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x1E69E8450], MEMORY[0x1E69E8468]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

{
  v3 = v2;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  lazy protocol witness table accessor for type HashableCommandGroupPlacementWrapper and conformance HashableCommandGroupPlacementWrapper(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      lazy protocol witness table accessor for type HashableCommandGroupPlacementWrapper and conformance HashableCommandGroupPlacementWrapper(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

{
  v3 = v2;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  lazy protocol witness table accessor for type HashableCommandGroupPlacementWrapper and conformance HashableCommandGroupPlacementWrapper(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x1E6969C28], MEMORY[0x1E6969C38]);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      lazy protocol witness table accessor for type HashableCommandGroupPlacementWrapper and conformance HashableCommandGroupPlacementWrapper(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x1E6969C28], MEMORY[0x1E6969C50]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(_DWORD *a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v9 = HIDWORD(a2);
  v10 = HIDWORD(a3);
  v11 = HIDWORD(a4);
  v12 = *v4;
  Hasher.init(_seed:)();
  Hasher.combine(bytes:)();
  Hasher._combine(_:)(v11);
  v13 = Hasher._finalize()();
  v14 = -1 << *(v12 + 32);
  v15 = v13 & ~v14;
  if ((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    while (1)
    {
      v17 = (*(v12 + 48) + 24 * v15);
      v18 = *v17;
      v19 = v17[1];
      v20 = v17[2];
      v21 = v17[3];
      v23 = v17[4];
      v22 = v17[5];
      v24 = v18 == a2 && v19 == v9;
      v25 = v24 && v20 == a3;
      v26 = v25 && v21 == v10;
      v27 = v26 && v23 == a4;
      if (v27 && v22 == v11)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
      if (((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    result = 0;
  }

  else
  {
LABEL_20:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = *v31;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, a4, v15, isUniquelyReferenced_nonNull_native);
    *v31 = v32;
    result = 1;
  }

  *a1 = a2;
  a1[1] = v9;
  a1[2] = a3;
  a1[3] = v10;
  a1[4] = a4;
  a1[5] = v11;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, char *a2, double a3)
{
  v4 = v3;
  v7 = type metadata accessor for DateComponents();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  lazy protocol witness table accessor for type HashableCommandGroupPlacementWrapper and conformance HashableCommandGroupPlacementWrapper(&lazy protocol witness table cache variable for type DateComponents and conformance DateComponents, MEMORY[0x1E6968278], MEMORY[0x1E6968288]);
  v35 = a2;
  v12 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v13 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v30 = v3;
    v31 = a1;
    v32 = ~v14;
    v29 = v8;
    v18 = *(v8 + 16);
    v17 = v8 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v28[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v34 + 48) + v19 * v15, v7);
      lazy protocol witness table accessor for type HashableCommandGroupPlacementWrapper and conformance HashableCommandGroupPlacementWrapper(&lazy protocol witness table cache variable for type DateComponents and conformance DateComponents, MEMORY[0x1E6968278], MEMORY[0x1E6968290]);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      v23 = *v20;
      (*v20)(v10, v7);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v32;
      v16 = v21;
      if (((*(v33 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v4 = v30;
        a1 = v31;
        v8 = v29;
        goto LABEL_7;
      }
    }

    v23(v35, v7);
    v21(v31, *(v34 + 48) + v19 * v15, v7);
    return 0;
  }

  else
  {
    v16 = *(v8 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v35;
    v26 = (v16)(v10, v35, v7);
    v36 = *v4;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v10, v15, isUniquelyReferenced_nonNull_native, v26);
    *v4 = v36;
    (*(v8 + 32))(a1, v25, v7);
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();

  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;
      if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
      {

        goto LABEL_12;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20 = *(*(v6 + 48) + 8 * v9);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    v18 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v18, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = v18;
    return 1;
  }
}

{
  v4 = *v2;
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(1u);
    v5 = a2;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v6 = Hasher._finalize()();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_12:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v19;
    v16 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v19 = v21;
    *a1 = a2;
    return 1;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = *(*(v4 + 48) + 8 * v8);
    if (!v10)
    {
      break;
    }

    if (a2)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor, 0x1E69DC888);
      v11 = a2;
      v12 = v10;
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {

        v14 = *(*(v4 + 48) + 8 * v8);
        goto LABEL_14;
      }
    }

LABEL_7:
    v8 = (v8 + 1) & v9;
    if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  if (a2)
  {
    goto LABEL_7;
  }

  v14 = 0;
LABEL_14:
  *a1 = v14;
  v18 = v14;
  return 0;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v23 = a2;
  v24 = a3;
  v6 = *v3;
  Hasher.init(_seed:)();
  _ViewList_ID.Canonical.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = (*(v6 + 48) + 16 * v9);
      v12 = v11[1];
      v22[0] = *v11;
      v22[1] = v12;

      v13 = MEMORY[0x18D003E10](v22, &v23);

      if (v13)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v20 = (*(v6 + 48) + 16 * v9);
    v21 = v20[1];
    *a1 = *v20;
    *(a1 + 8) = v21;

    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = v24;
    v16 = v23;
    v17 = HIDWORD(v23);
    v22[0] = *v4;
    v18 = v23 | (HIDWORD(v23) << 32);

    specialized _NativeSet.insertNew(_:at:isUnique:)(v18, v15, v9, isUniquelyReferenced_nonNull_native);
    *v4 = v22[0];
    *a1 = v16;
    *(a1 + 4) = v17;
    *(a1 + 8) = v15;
    return 1;
  }
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC7SwiftUI32NavigationStackHostingControllerCyAG7AnyViewVG_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    type metadata accessor for _SetStorage<NavigationStackHostingController<AnyView>>(0);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_0(0, &lazy cache variable for type metadata for NavigationStackHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for NavigationStackHostingController);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          specialized _NativeSet.resize(capacity:)(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo16UIOpenURLContextC_Tt1g5Tm(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, void *a5, unint64_t *a6)
{
  if (a2)
  {
    type metadata accessor for _SetStorage<UIScene>(0, a3, a4, a5, a6);
    v10 = static _SetStorage.convert(_:capacity:)();
    v23 = v10;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for NSObject(0, a4, a5);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          specialized _NativeSet.resize(capacity:)(v17 + 1, a3, a4, a5, a6);
        }

        v10 = v23;
        result = NSObject._rawHashValue(seed:)(*(v23 + 40));
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v10;
}

void specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for _SetStorage<ToolbarPlacement.Role>(0, &lazy cache variable for type metadata for _SetStorage<AccessibilityRelationshipScope.Key>, lazy protocol witness table accessor for type AccessibilityRelationshipScope.Key and conformance AccessibilityRelationshipScope.Key, &type metadata for AccessibilityRelationshipScope.Key);
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
      v18 = (*(v3 + 48) + 48 * (v15 | (v6 << 6)));
      v28 = *v18;
      v29 = v18[1];
      v30 = v18[2];
      Hasher.init(_seed:)();
      AnyHashable.hash(into:)();
      MEMORY[0x18D00F6F0](*(&v30 + 1));
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

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 48 * v13);
      *v14 = v28;
      v14[1] = v29;
      v14[2] = v30;
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
  type metadata accessor for _SetStorage<ToolbarPlacement.Role>(0, &lazy cache variable for type metadata for _SetStorage<EventID>, lazy protocol witness table accessor for type EventID and conformance EventID, MEMORY[0x1E69819B0]);
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
      MEMORY[0x18D00F6F0](v19);
      MEMORY[0x18D00F6F0](v20);
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
  type metadata accessor for _SetStorage<ToolbarPlacement.Role>(0, &lazy cache variable for type metadata for _SetStorage<NavigationState.ListKey>, lazy protocol witness table accessor for type NavigationState.ListKey and conformance NavigationState.ListKey, &type metadata for NavigationState.ListKey);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v34 = v2;
    v35 = v3;
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
    v36 = v4;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v38 = (v10 - 1) & v10;
LABEL_15:
      v18 = *(v3 + 48) + 48 * (v15 | (v6 << 6));
      v20 = *v18;
      v19 = *(v18 + 8);
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      v23 = *(v18 + 32);
      v37 = *(v18 + 40);
      Hasher.init(_seed:)();
      v39 = v20;
      MEMORY[0x18D00F6F0](v20);
      if (v22 == 6)
      {
        v24 = v19;
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        v24 = v19;
        MEMORY[0x18D00F6F0](v19);
        MEMORY[0x18D00F6F0](v22);
        MEMORY[0x18D00F6F0](v21);
      }

      Hasher._combine(_:)(v23);
      v25 = Hasher._finalize()();
      v5 = v36;
      v26 = -1 << *(v36 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v12 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v12 + 8 * v28);
          if (v32 != -1)
          {
            v13 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v27) & ~*(v12 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v36 + 48) + 48 * v13;
      *v14 = v39;
      *(v14 + 8) = v24;
      *(v14 + 16) = v22;
      *(v14 + 24) = v21;
      *(v14 + 32) = v23;
      v10 = v38;
      *(v14 + 40) = v37;
      ++*(v36 + 16);
      v3 = v35;
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
        v38 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v33 = 1 << *(v3 + 32);
    if (v33 >= 64)
    {
      bzero(v7, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v33;
    }

    v2 = v34;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for _SetStorage<ToolbarPlacement.Role>(0, &lazy cache variable for type metadata for _SetStorage<ToolbarDefaultItemKind.Kind>, lazy protocol witness table accessor for type ToolbarDefaultItemKind.Kind and conformance ToolbarDefaultItemKind.Kind, &type metadata for ToolbarDefaultItemKind.Kind);
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
      MEMORY[0x18D00F6F0](v17);
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
  v37 = type metadata accessor for UTType();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  type metadata accessor for _SetStorage<UTType>(0);
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
      lazy protocol witness table accessor for type HashableCommandGroupPlacementWrapper and conformance HashableCommandGroupPlacementWrapper(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x1E69E8450], MEMORY[0x1E69E8460]);
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
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_0(0, &lazy cache variable for type metadata for _SetStorage<String>, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], MEMORY[0x1E69E6A10]);
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
  v3 = type metadata accessor for HashableCommandGroupPlacementWrapper(0);
  v32 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  type metadata accessor for _SetStorage<HashableCommandGroupPlacementWrapper>(0);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v31 = v1;
    v9 = 0;
    v10 = (v6 + 56);
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
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      outlined init with take of HashableCommandGroupPlacementWrapper(*(v6 + 48) + v20 * (v17 | (v9 << 6)), v5);
      Hasher.init(_seed:)();
      type metadata accessor for CommandGroupPlacement(0);
      UUID.hash(into:)();
      v21 = Hasher._finalize()();
      v22 = -1 << *(v8 + 32);
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

LABEL_30:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      outlined init with take of HashableCommandGroupPlacementWrapper(v5, *(v8 + 48) + v16 * v20);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero((v6 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v31;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
}

{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for _SetStorage<ToolbarPlacement.Role>(0, &lazy cache variable for type metadata for _SetStorage<SceneRequestCache.Item>, lazy protocol witness table accessor for type SceneRequestCache.Item and conformance SceneRequestCache.Item, &type metadata for SceneRequestCache.Item);
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
      v18 = *(v3 + 48) + 56 * (v15 | (v6 << 6));
      v28 = *v18;
      v29 = *(v18 + 16);
      v30 = *(v18 + 32);
      v31 = *(v18 + 48);
      Hasher.init(_seed:)();
      String.hash(into:)();
      AnyHashable.hash(into:)();
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

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 56 * v13;
      *v14 = v28;
      *(v14 + 16) = v29;
      *(v14 + 32) = v30;
      *(v14 + 48) = v31;
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
  v2 = *v1;
  type metadata accessor for _SetStorage<HashableWeakBox<Swift.AnyObject>>(0);
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
      outlined init with take of HashableWeakBox<Swift.AnyObject>(*(v2 + 48) + 16 * (v13 | (v5 << 6)), v25);
      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v26);
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
      outlined init with take of HashableWeakBox<Swift.AnyObject>(v25, *(v4 + 48) + 16 * v12);
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
  specialized _NativeSet.resize(capacity:)(a1, &lazy cache variable for type metadata for _SetStorage<UIOpenURLContext>, &lazy cache variable for type metadata for UIOpenURLContext, 0x1E69DCD08, &lazy protocol witness table cache variable for type UIOpenURLContext and conformance NSObject);
}

{
  v2 = v1;
  v37 = type metadata accessor for URL();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  type metadata accessor for _SetStorage<URL>(0);
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
      lazy protocol witness table accessor for type HashableCommandGroupPlacementWrapper and conformance HashableCommandGroupPlacementWrapper(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
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
  specialized _NativeSet.resize(capacity:)(a1, &lazy cache variable for type metadata for _SetStorage<UIScene>, &lazy cache variable for type metadata for UIScene, 0x1E69DCE70, &lazy protocol witness table cache variable for type UIScene and conformance NSObject);
}

{
  v2 = v1;
  v3 = *v1;
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_0(0, &lazy cache variable for type metadata for _SetStorage<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540], MEMORY[0x1E69E6A10]);
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
      v18 = MEMORY[0x18D00F6C0](*(v5 + 40), v17);
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
  v37 = type metadata accessor for IndexPath();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  type metadata accessor for _SetStorage<IndexPath>(0);
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
      lazy protocol witness table accessor for type HashableCommandGroupPlacementWrapper and conformance HashableCommandGroupPlacementWrapper(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x1E6969C28], MEMORY[0x1E6969C38]);
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
  type metadata accessor for _SetStorage<ToolbarPlacement.Role>(0, &lazy cache variable for type metadata for _SetStorage<ArchivedViewState.ID>, lazy protocol witness table accessor for type ArchivedViewState.ID and conformance ArchivedViewState.ID, &type metadata for ArchivedViewState.ID);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v33 = v1;
    v34 = (v3 + 56);
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
    v35 = v3;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v36 = (v9 - 1) & v9;
LABEL_15:
      v17 = (*(v3 + 48) + 24 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      v20 = v17[2];
      v21 = v17[3];
      v23 = v17[4];
      v22 = v17[5];
      Hasher.init(_seed:)();
      Hasher.combine(bytes:)();
      Hasher._combine(_:)(v22);
      v24 = Hasher._finalize()();
      v25 = -1 << *(v5 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v11 + 8 * (v26 >> 6))) != 0)
      {
        v12 = __clz(__rbit64((-1 << v26) & ~*(v11 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        do
        {
          if (++v27 == v29 && (v28 & 1) != 0)
          {
            goto LABEL_30;
          }

          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v11 + 8 * v27);
        }

        while (v31 == -1);
        v12 = __clz(__rbit64(~v31)) + (v27 << 6);
      }

      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 24 * v12);
      *v13 = v18;
      v13[1] = v19;
      v13[2] = v20;
      v13[3] = v21;
      v13[4] = v23;
      v13[5] = v22;
      ++*(v5 + 16);
      v3 = v35;
      v9 = v36;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
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
        v36 = (v16 - 1) & v16;
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
  type metadata accessor for _SetStorage<ToolbarPlacement.Role>(0, &lazy cache variable for type metadata for _SetStorage<ToolbarItemPlacement.Role>, lazy protocol witness table accessor for type ToolbarItemPlacement.Role and conformance ToolbarItemPlacement.Role, &type metadata for ToolbarItemPlacement.Role);
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
      v16 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v19 = (*(v3 + 48) + 48 * (v16 | (v6 << 6)));
      v20 = v19[1];
      v31 = *v19;
      v32[0] = v20;
      *(v32 + 9) = *(v19 + 25);
      Hasher.init(_seed:)();
      ToolbarItemPlacement.Role.hash(into:)(v30);
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
      v14 = (*(v5 + 48) + 48 * v13);
      v15 = v32[0];
      *v14 = v31;
      v14[1] = v15;
      *(v14 + 25) = *(v32 + 9);
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v18 = v7[v6];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v10 = (v18 - 1) & v18;
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
  type metadata accessor for _SetStorage<NavigationStackHostingController<AnyView>>(0);
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
      v18 = NSObject._rawHashValue(seed:)(*(v5 + 40));
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

    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for _SetStorage<UITextFormattingViewControllerComponentKey>(0);
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
  type metadata accessor for _SetStorage<ToolbarPlacement.Role>(0, &lazy cache variable for type metadata for _SetStorage<Color>, lazy protocol witness table accessor for type Color and conformance Color, MEMORY[0x1E69815C0]);
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
      dispatch thunk of AnyColorBox.hash(into:)();
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
  type metadata accessor for _SetStorage<UIColor?>(0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v28 = v1;
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
      if (v17)
      {
        Hasher._combine(_:)(1u);
        v18 = v17;
        NSObject.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

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

LABEL_33:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
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

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

{
  v2 = *v1;
  type metadata accessor for _SetStorage<ToolbarPlacement.Role>(0, &lazy cache variable for type metadata for _SetStorage<_ViewList_ID.Canonical>, lazy protocol witness table accessor for type _ViewList_ID.Canonical and conformance _ViewList_ID.Canonical, MEMORY[0x1E697E088]);
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
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v27 = *v17;
      v28 = v17[1];
      Hasher.init(_seed:)();
      _ViewList_ID.Canonical.hash(into:)();
      v18 = Hasher._finalize()();
      v19 = -1 << *(v4 + 32);
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

LABEL_30:
        __break(1u);
        return;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v27;
      v13[1] = v28;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v2 + 32);
    if (v26 >= 64)
    {
      bzero((v2 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v26;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
}

{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for _SetStorage<ObjectIdentifier>();
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
      v18 = MEMORY[0x18D00F6C0](*(v5 + 40), v17);
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